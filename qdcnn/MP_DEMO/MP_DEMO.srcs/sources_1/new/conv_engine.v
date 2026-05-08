`timescale 1ns / 1ps

// ============================================================================
// Module: conv_engine
// Author: Yahia Wael, V. E. Dementyev
//
// Time-multiplexed convolution engine for VGG-style networks.
// Replaces the per-layer conv3x3_parallel / conv2_multichannel modules of the
// earlier MNIST design with a single reusable compute engine.
//
// ----------------------------------------------------------------------------
// ARCHITECTURE
// ----------------------------------------------------------------------------
// TILE_SIZE parallel MAC units (default 64).
// Each MAC computes one OUTPUT filter's partial sum for the current pixel.
// For a layer with OUT_CHANNELS filters, the engine processes them in
// ceil(OUT_CHANNELS / TILE_SIZE) groups, sequentially. Per group:
//
//   for each output pixel (out_y, out_x) in 0..OUT_H, 0..OUT_W:
//     load TILE_SIZE biases into MAC accumulators
//     for each input channel c in 0..C_in-1:
//       for each kernel pos (ky, kx) in 3x3:
//         read 1 pixel from input activation BRAM (all MACs share it)
//         read TILE_SIZE weights from DDR (one per MAC)
//         pulse mac_en -> all MACs accumulate in parallel
//     finalise: ReLU + shift + clamp
//     write TILE_SIZE output values to output activation BRAM (sequential)
//
// ----------------------------------------------------------------------------
// PADDING
// ----------------------------------------------------------------------------
// "Same" padding with zero fill. When the kernel would read outside the input,
// pixel value 0 is supplied instead of a BRAM read. This keeps OUT_W = IN_W
// and OUT_H = IN_H, matching the VGG spatial progression (48->24->12->6->3
// via pooling only, with convs preserving size).
//
// ----------------------------------------------------------------------------
// RUNTIME DIMENSIONS
// ----------------------------------------------------------------------------
// Verilog parameters are compile-time. But conv layers have DIFFERENT sizes.
// So we instantiate conv_engine ONCE, sized for the worst case (IN_CHANNELS
// and OUT_CHANNELS both = 512, IN_W = IN_H = 48). Runtime INPUTS provide the
// actual dimensions of the current layer. Internal address generators use
// these runtime values. This trades some LUTs for flexibility.
//
// ----------------------------------------------------------------------------
// WEIGHT LAYOUT IN DDR (per conv layer)
// ----------------------------------------------------------------------------
// For each filter group g in 0..ceil(OUT_CHANNELS/TILE_SIZE)-1:
//     [128 bytes: TILE_SIZE int8 biases for group g, padded to 128 bytes]
//     for in_ch c in 0..C_in-1:
//         for kernel pos kpos in 0..8:
//             [128 bytes: TILE_SIZE int8 weights, padded to 128 bytes]
// Each 128-byte block matches one AXI DataMover read (1024 bits).
//
// Bias scheme: raw int8, accumulator pre-seeded as (bias <<< cfg_bias_shift).
// Matches friend's dense engine scheme but with per-layer shifts chosen to match
// each layer's weight scale. bias_shift = log2(IN_SCALE * W_SCALE[L]) where
// W_SCALE[L] is selected per layer by the training script.
// ============================================================================

module conv_engine #(
    parameter MAX_IN_CHANNELS  = 512,
    parameter MAX_OUT_CHANNELS = 512,
    parameter MAX_IN_W         = 48,
    parameter MAX_IN_H         = 48,
    parameter KERNEL_SIZE      = 3,
    parameter TILE_SIZE        = 64,        // parallel MAC units
    parameter PAD              = 1,         // "same" padding for 3x3

    // Derived
    parameter MAX_CIN_PIXELS  = MAX_IN_CHANNELS * MAX_IN_W * MAX_IN_H,
    parameter ACT_AW          = $clog2(MAX_CIN_PIXELS),
    parameter FILTER_IDX_W    = $clog2(TILE_SIZE),
    parameter CHAN_IDX_W      = $clog2(MAX_IN_CHANNELS + 1),
    parameter WH_IDX_W        = $clog2(MAX_IN_W + 1),
    parameter KERNEL_TOTAL    = KERNEL_SIZE * KERNEL_SIZE,
    parameter KPOS_W          = $clog2(KERNEL_TOTAL)
)(
    input  wire                     clk,
    input  wire                     rst,
    input  wire                     go,
    output reg                      done,

    // Runtime layer dimensions (valid while go asserted -> until done)
    input  wire [CHAN_IDX_W-1:0]    cfg_in_channels,
    input  wire [CHAN_IDX_W-1:0]    cfg_out_channels,
    input  wire [WH_IDX_W-1:0]      cfg_in_w,
    input  wire [WH_IDX_W-1:0]      cfg_in_h,
    input  wire [31:0]              cfg_weight_base_addr,  // byte offset in DDR
    input  wire [4:0]               cfg_out_shift,         // per-layer: log2(W_SCALE[L])
    input  wire [4:0]               cfg_bias_shift,        // per-layer: log2(32 * W_SCALE[L])

    // Input activation BRAM read port
    output reg  [ACT_AW-1:0]        addra_in,
    input  wire signed [7:0]        data_in,
    output reg                      ena_in,

    // Output activation BRAM write port
    output reg  [ACT_AW-1:0]        addra_out,
    output reg  signed [7:0]        data_out,
    output reg                      we_out,

    // AXI DataMover request interface (same as friend's axi_driver)
    output reg  [31:0]              weight_addr,
    output reg                      weight_en,
    output reg  [9:0]               no_bytes,          // always 128 for us
    input  wire [1023:0]            weight_data,
    input  wire                     weight_valid
);

    // =========================================================================
    // Per-MAC storage: biases and weights held in register arrays
    // =========================================================================
    reg signed [7:0]  bias_reg   [0:TILE_SIZE-1];
    reg signed [7:0]  weight_reg [0:TILE_SIZE-1];

    // Broadcast control to all MAC units
    reg mac_init;
    reg mac_en;
    reg mac_out_valid;

    // Shared input pixel (broadcast to all MACs)
    reg signed [7:0] pixel_r;

    // Per-MAC results
    wire signed [7:0] filter_result [0:TILE_SIZE-1];

    // =========================================================================
    // TILE_SIZE parallel MAC units (reusing the existing filter_mac_unit)
    // =========================================================================
    genvar g;
    generate
        for (g = 0; g < TILE_SIZE; g = g + 1) begin : mac_units
            // filter_mac_unit takes a 32-bit bias, but we pass it bias_reg[g] <<< cfg_bias_shift
            // Sign-extend then shift: {{24{bias_reg[g][7]}}, bias_reg[g]} << cfg_bias_shift
            wire signed [31:0] bias_shifted =
                $signed({{24{bias_reg[g][7]}}, bias_reg[g]}) <<< cfg_bias_shift;

            filter_mac_unit mac (
                .clk         (clk),
                .rst         (rst),
                .init        (mac_init),
                .mac_en      (mac_en),
                .out_valid   (mac_out_valid),
                .shift_amt   (cfg_out_shift),
                .bias        (bias_shifted),
                .img_pixel   (pixel_r),
                .kern_weight (weight_reg[g]),
                .result      (filter_result[g])
            );
        end
    endgenerate

    // =========================================================================
    // Position tracking
    // =========================================================================
    reg [CHAN_IDX_W-1:0] group_idx;       // which output-filter group (0..G-1)
    reg [CHAN_IDX_W-1:0] cur_channel;     // which input channel (0..C_in-1)
    reg [1:0]            k_x, k_y;        // kernel position (0..KERNEL_SIZE-1)
    reg [WH_IDX_W-1:0]   out_x, out_y;    // output pixel position

    // Write phase
    reg [FILTER_IDX_W:0] write_filter;    // which filter in group to write (0..TILE_SIZE-1)

    // Runtime derived values (recomputed each cycle - cheap)
    wire [CHAN_IDX_W:0] num_groups;
    wire [WH_IDX_W-1:0] out_w;
    wire [WH_IDX_W-1:0] out_h;
    // "same" padding: OUT_W = IN_W, OUT_H = IN_H
    assign num_groups = (cfg_out_channels + TILE_SIZE - 1) >> $clog2(TILE_SIZE);
    assign out_w = cfg_in_w;
    assign out_h = cfg_in_h;

    // Signed kernel offsets (allow negative when padding)
    wire signed [WH_IDX_W:0] src_y = $signed({1'b0, out_y}) + $signed({1'b0, k_y}) - PAD;
    wire signed [WH_IDX_W:0] src_x = $signed({1'b0, out_x}) + $signed({1'b0, k_x}) - PAD;
    wire is_padding = (src_y < 0) || (src_y >= $signed({1'b0, cfg_in_h})) ||
                      (src_x < 0) || (src_x >= $signed({1'b0, cfg_in_w}));

    // Input BRAM address for the current read (only valid when !is_padding)
    // Address = cur_channel * (in_w * in_h) + src_y * in_w + src_x
    //
    // Timing note: after registering the weight address path, the next worst
    // timing path (WNS -1.8 ns) became layer_idx -> addra_in_reg via these
    // multiplies. Same fix: register the slow-changing intermediates.
    //   in_plane_size changes once per layer (on cfg_in_w/cfg_in_h).
    //   channel_base  changes once per input channel (on cur_channel).
    //   row_offset    changes once per kernel row (on src_y).
    reg  [ACT_AW-1:0] in_plane_size_r;   // cfg_in_w * cfg_in_h
    reg  [ACT_AW-1:0] channel_base_r;    // cur_channel * in_plane_size (RAW, depth-1 flop)
    reg  [ACT_AW-1:0] row_offset_r;      // src_y * cfg_in_w
    reg  [ACT_AW-1:0] out_plane_size_r;  // out_w * out_h  (for addra_out)
    reg  [ACT_AW-1:0] out_row_offset_r;  // out_y * out_w  (for addra_out)

    // Raw combinational plane sizes - used to feed the flops so each stays
    // at depth 1. Do NOT chain channel_base_r off in_plane_size_r; that would
    // make channel_base_r 2-deep and need >1 ADDR_SETTLE cycle.
    wire [ACT_AW-1:0] in_plane_size_raw  = cfg_in_w * cfg_in_h;
    wire [ACT_AW-1:0] out_plane_size_raw = out_w * out_h;

    always @(posedge clk) begin
        if (rst) begin
            in_plane_size_r  <= 0;
            channel_base_r   <= 0;
            row_offset_r     <= 0;
            out_plane_size_r <= 0;
            out_row_offset_r <= 0;
        end else begin
            in_plane_size_r  <= in_plane_size_raw;
            channel_base_r   <= cur_channel * in_plane_size_raw;   // depth-1 from cur_channel
            // src_y may be negative in padding cases, but is_padding will gate
            // the read so the value doesn't matter then.
            row_offset_r     <= $unsigned(src_y) * cfg_in_w;
            out_plane_size_r <= out_plane_size_raw;
            out_row_offset_r <= out_y * out_w;
        end
    end

    wire [ACT_AW-1:0] addr_in_calc = channel_base_r + row_offset_r + $unsigned(src_x);

    // =========================================================================
    // DDR address generation for weights
    // =========================================================================
    // Layout per layer: for each group g:
    //   offset 0         : 128-byte bias block
    //   offset 128       : weight block for (c=0, kpos=0)
    //   offset 256       : weight block for (c=0, kpos=1)
    //   ...
    //   offset 128*(1+c*9+kpos) : weight block for (c, kpos)
    // Total per group: 128 * (1 + C_in * 9) bytes
    //
    // Timing note: these expressions involve several multiplies and a long
    // carry chain feeding weight_addr.  Implementation saw ~12.4 ns worst path
    // at 100 MHz (2.6 ns failure).  The values change slowly (per-layer or
    // per-group), so we register the expensive intermediates here.
    wire [KPOS_W:0] kpos = k_y * KERNEL_SIZE + k_x;

    // Slow-changing registered values (recomputed once per layer/group)
    // IMPORTANT: Each of these depends on *raw* combinational values, NOT on
    // other registered values in this block. This keeps each flop at depth 1
    // from the source counters, so a single ADDR_SETTLE / BIAS_SETTLE cycle is
    // enough for them to catch up. A previous version chained them and needed
    // 3 cycles for weight_block_addr_r to settle.
    reg  [31:0] per_group_bytes_r;   // 128 * (1 + Cin*9)
    reg  [31:0] group_base_r;        // base + group_idx * per_group_bytes (combinational, NOT _r)
    wire [31:0] bias_block_addr  = group_base_r;

    reg  [31:0] weight_block_addr_r;
    wire [31:0] weight_block_idx = 32'd1 + cur_channel * KERNEL_TOTAL + {28'b0, kpos};

    wire [31:0] per_group_bytes_raw = 32'd128 * (32'd1 + cfg_in_channels * KERNEL_TOTAL);
    wire [31:0] group_base_raw      = cfg_weight_base_addr + group_idx * per_group_bytes_r;
    wire [31:0] weight_block_addr_raw =
                cfg_weight_base_addr
              + group_idx * per_group_bytes_r
              + weight_block_idx * 32'd128;

    always @(posedge clk) begin
        if (rst) begin
            per_group_bytes_r   <= 0;
            group_base_r        <= 0;
            weight_block_addr_r <= 0;
        end else begin
            per_group_bytes_r   <= per_group_bytes_raw;
            group_base_r        <= group_base_raw;
            weight_block_addr_r <= weight_block_addr_raw;
        end
    end

    // =========================================================================
    // FSM
    // =========================================================================
    localparam IDLE         = 0,
               LOAD_BIAS    = 1,   // issue AXI for bias block
               WAIT_BIAS    = 2,   // wait for weight_valid, latch into bias_reg
               INIT_MAC     = 3,   // mac_init pulse, start new output pixel
               LOAD_WEIGHT  = 4,   // issue AXI for current (c, ky, kx) weight block
               WAIT_WEIGHT  = 5,   // wait for weight_valid, latch into weight_reg
               READ_PIXEL   = 6,   // issue read to input BRAM (or prepare to zero)
               WAIT_PIXEL   = 7,   // wait 1 cycle for BRAM
               LATCH_PIXEL  = 8,   // latch pixel (or 0 if padding) into pixel_r
               DO_MAC       = 9,   // mac_en pulse
               NEXT_KPOS    = 10,  // advance kernel position or channel
               COMPUTE_OUT  = 11,  // mac_out_valid pulse
               WAIT_RESULT  = 12,  // give MACs one cycle to update result
               WRITE_SETUP  = 13,  // latch output BRAM write
               WRITE_ASSERT = 14,  // pulse we_out
               WRITE_NEXT   = 15,  // advance write_filter or move to next pixel
               NEXT_PIXEL   = 16,  // advance out_x / out_y
               NEXT_GROUP   = 17,  // advance group_idx
               FINISH       = 18,
               ADDR_SETTLE  = 19,  // 1-cycle slot so registered weight_block_addr_r catches up before LOAD_WEIGHT
               BIAS_SETTLE  = 20;  // same idea, one slot before LOAD_BIAS so group_base_r catches up

    (* MARK_DEBUG = "TRUE" *) reg [4:0] state;

    reg [2:0] loadTimer;
    integer   bi, wi;   // loop variables for bias/weight unpacking

    always @(posedge clk) begin
        if (rst) begin
            state         <= IDLE;
            done          <= 0;
            we_out        <= 0;
            mac_init      <= 0;
            mac_en        <= 0;
            mac_out_valid <= 0;
            weight_en     <= 0;
            no_bytes      <= 10'd128;
            ena_in        <= 0;
            // Reset output registers so they don't propagate X in sim
            addra_in      <= 0;
            addra_out     <= 0;
            data_out      <= 0;
            weight_addr   <= 0;
            pixel_r       <= 0;
            group_idx     <= 0;
            cur_channel   <= 0;
            k_x           <= 0;
            k_y           <= 0;
            out_x         <= 0;
            out_y         <= 0;
            write_filter  <= 0;
            loadTimer     <= 0;
        end else begin
            // Default: deassert single-cycle pulses
            mac_init      <= 0;
            mac_en        <= 0;
            mac_out_valid <= 0;
            we_out        <= 0;
            weight_en     <= 0;      // axi request is one-shot; re-assert per read

            case (state)
                // =============================================================
                IDLE: begin
                    done <= 0;
                    if (go) begin
                        group_idx <= 0;
                        state     <= BIAS_SETTLE;
                    end
                end

                // =============================================================
                // Phase 1 per group: fetch biases
                // =============================================================
                LOAD_BIAS: begin
                    weight_addr <= bias_block_addr;
                    no_bytes    <= 10'd128;
                    weight_en   <= 1;
                    // Wait for previous transaction's valid to clear
                    if (!weight_valid)
                        state <= WAIT_BIAS;
                end

                WAIT_BIAS: begin
                    if (weight_valid) begin
                        // Unpack TILE_SIZE int8 biases from weight_data
                        for (bi = 0; bi < TILE_SIZE; bi = bi + 1) begin
                            bias_reg[bi] <= weight_data[bi*8 +: 8];
                        end
                        out_x <= 0;
                        out_y <= 0;
                        state <= INIT_MAC;
                    end
                end

                // =============================================================
                // Phase 2 per output pixel: init accumulators with biases
                // =============================================================
                INIT_MAC: begin
                    mac_init    <= 1;
                    cur_channel <= 0;
                    k_x         <= 0;
                    k_y         <= 0;
                    state       <= ADDR_SETTLE;
                end

                // One-cycle slot: lets the registered weight_block_addr_r update
                // with whatever cur_channel/k_x/k_y were just assigned.
                ADDR_SETTLE: begin
                    state <= LOAD_WEIGHT;
                end

                // One-cycle slot: lets the registered group_base_r update
                // with whatever group_idx was just assigned before LOAD_BIAS
                // reads bias_block_addr (= group_base_r).
                BIAS_SETTLE: begin
                    state <= LOAD_BIAS;
                end

                // =============================================================
                // Phase 3 per (c, kpos): fetch TILE_SIZE weights
                // =============================================================
                LOAD_WEIGHT: begin
                    weight_addr <= weight_block_addr_r;
                    no_bytes    <= 10'd128;
                    weight_en   <= 1;
                    // Stay in LOAD_WEIGHT an extra cycle if valid is still high
                    // from the previous transaction. This guarantees the axi_driver
                    // has cleared its valid register before we enter WAIT_WEIGHT.
                    if (!weight_valid)
                        state <= WAIT_WEIGHT;
                    // else: stay in LOAD_WEIGHT for one more cycle
                end

                WAIT_WEIGHT: begin
                    if (weight_valid) begin
                        for (wi = 0; wi < TILE_SIZE; wi = wi + 1) begin
                            weight_reg[wi] <= weight_data[wi*8 +: 8];
                        end
                        state <= READ_PIXEL;
                    end
                end

                // =============================================================
                // Phase 4 per (c, kpos): read the shared pixel from input BRAM
                // (or supply 0 if padding region)
                // =============================================================
                READ_PIXEL: begin
                    if (is_padding) begin
                        // No BRAM read; just proceed with pixel_r = 0
                        ena_in    <= 0;
                        state     <= LATCH_PIXEL;  // skip WAIT_PIXEL, pixel is 0
                    end else begin
                        addra_in  <= addr_in_calc;
                        ena_in    <= 1;
                        loadTimer <= 2;            // small BRAM read latency buffer
                        state     <= WAIT_PIXEL;
                    end
                end

                WAIT_PIXEL: begin
                    if (loadTimer == 0) state <= LATCH_PIXEL;
                    else loadTimer <= loadTimer - 1;
                end

                LATCH_PIXEL: begin
                    pixel_r <= is_padding ? 8'sd0 : data_in;
                    state   <= DO_MAC;
                end

                DO_MAC: begin
                    mac_en <= 1;
                    state  <= NEXT_KPOS;
                end

                NEXT_KPOS: begin
                    if (k_x == KERNEL_SIZE - 1) begin
                        k_x <= 0;
                        if (k_y == KERNEL_SIZE - 1) begin
                            k_y <= 0;
                            // Done with this channel's 3x3 patch
                            if (cur_channel == cfg_in_channels - 1) begin
                                state <= COMPUTE_OUT;
                            end else begin
                                cur_channel <= cur_channel + 1;
                                state       <= ADDR_SETTLE;
                            end
                        end else begin
                            k_y   <= k_y + 1;
                            state <= ADDR_SETTLE;
                        end
                    end else begin
                        k_x   <= k_x + 1;
                        state <= ADDR_SETTLE;
                    end
                end

                // =============================================================
                // Phase 5 per output pixel: finalise MAC outputs
                // =============================================================
                COMPUTE_OUT: begin
                    mac_out_valid <= 1;
                    write_filter  <= 0;
                    state         <= WAIT_RESULT;
                end

                WAIT_RESULT: begin
                    // Let MACs register the shifted/clamped result
                    state <= WRITE_SETUP;
                end

                // =============================================================
                // Phase 6 per output pixel: sequentially write TILE_SIZE results
                // Address in output BRAM: filter_idx * (out_w*out_h) + out_y*out_w + out_x
                // where filter_idx = group_idx * TILE_SIZE + write_filter
                // =============================================================
                WRITE_SETUP: begin
                    data_out  <= filter_result[write_filter];
                    // Uses registered out_plane_size_r and out_row_offset_r to
                    // break the multiplier chain that was the next-worst
                    // timing path. (group_idx, write_filter, out_x are still
                    // small counters so the remaining logic is cheap.)
                    addra_out <= (group_idx * TILE_SIZE + write_filter) * out_plane_size_r
                               + out_row_offset_r + out_x;
                    state     <= WRITE_ASSERT;
                end

                WRITE_ASSERT: begin
                    we_out <= 1;
                    state  <= WRITE_NEXT;
                end

                WRITE_NEXT: begin
                    if (write_filter == TILE_SIZE - 1)
                        state <= NEXT_PIXEL;
                    else begin
                        write_filter <= write_filter + 1;
                        state        <= WRITE_SETUP;
                    end
                end

                // =============================================================
                // Advance (out_x, out_y)
                // =============================================================
                NEXT_PIXEL: begin
                    if (out_x == out_w - 1) begin
                        out_x <= 0;
                        if (out_y == out_h - 1) begin
                            state <= NEXT_GROUP;
                        end else begin
                            out_y <= out_y + 1;
                            state <= INIT_MAC;
                        end
                    end else begin
                        out_x <= out_x + 1;
                        state <= INIT_MAC;
                    end
                end

                // =============================================================
                // Advance group_idx
                // =============================================================
                NEXT_GROUP: begin
                    if ({23'b0, group_idx + 1} >= num_groups)
                        state <= FINISH;
                    else begin
                        group_idx <= group_idx + 1;
                        state     <= BIAS_SETTLE;
                    end
                end

                FINISH: begin
                    done  <= 1;
                    state <= IDLE;
                end

                default: state <= IDLE;
            endcase
        end
    end

endmodule