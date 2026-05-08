`timescale 1ns / 1ps

// ============================================================================
// Module: conv_engine (HYBRID: per-group weight cache + streaming fallback)
//
// Two paths, one runtime switch (use_cache = cfg_in_channels <= MAX_CACHE_CIN):
//
//   CACHED PATH (use_cache=1):
//     At start of each group, AXI-fill weight_cache with Cin*9 blocks.
//     Inner MAC loop reads weights combinationally from cache (zero AXI wait).
//     Producer FSM is idle (prod_armed=0). Inner loop ~6 cyc/kpos.
//
//   STREAMING PATH (use_cache=0):
//     Original prefetch-FIFO design. Producer FSM issues weight requests
//     ahead of consumer; consumer pops from FIFO when needed.
//     Cache is unused. Inner loop ~12 cyc/kpos (AXI bound).
//
// MAX_CACHE_CIN = 128 sized so the cache (1152 entries x 512 bits = ~32 BRAM
// tiles) fits in the Pynq-Z2 BRAM budget alongside activation BRAMs and the
// AXI datamover. Layers with Cin > 128 (conv7, conv9, conv10 in this network)
// automatically fall back to streaming.
//
// Timing pipeline carried throughout:
//   - Stage 1: cfg_in_w_r/cfg_in_h_r/in_plane_size_r registered (layer-stable)
//   - Stage 2: channel_base_r/row_offset_r registered (per-iter multiplies)
//   - Stage 3: addr_in_calc = combinational add only
//   - C_PREP_ADDR state gives Stage 2 one cycle to settle after iter update
// ============================================================================

module conv_engine #(
    parameter MAX_IN_CHANNELS  = 512,
    parameter MAX_OUT_CHANNELS = 512,
    parameter MAX_IN_W         = 48,
    parameter MAX_IN_H         = 48,
    parameter KERNEL_SIZE      = 3,
    parameter TILE_SIZE        = 64,
    parameter PAD              = 1,

    parameter FIFO_DEPTH       = 16,
    parameter FIFO_AW          = $clog2(FIFO_DEPTH),

    // Weight cache: holds Cin*9 entries when Cin <= MAX_CACHE_CIN. Sized to
    // fit the Pynq-Z2 BRAM budget. Layers with cfg_in_channels > MAX_CACHE_CIN
    // fall back to the streaming prefetch FIFO path automatically (use_cache=0).
    parameter MAX_CACHE_CIN    = 128,

    parameter MAX_CIN_PIXELS  = MAX_IN_CHANNELS * MAX_IN_W * MAX_IN_H,
    parameter ACT_AW          = $clog2(MAX_CIN_PIXELS),
    parameter FILTER_IDX_W    = $clog2(TILE_SIZE),
    parameter CHAN_IDX_W      = $clog2(MAX_IN_CHANNELS + 1),
    parameter WH_IDX_W        = $clog2(MAX_IN_W + 1),
    parameter KERNEL_TOTAL    = KERNEL_SIZE * KERNEL_SIZE,
    parameter KPOS_W          = $clog2(KERNEL_TOTAL),

    parameter CACHE_DEPTH     = MAX_CACHE_CIN * KERNEL_TOTAL,  // 128*9 = 1152
    parameter CACHE_AW        = $clog2(CACHE_DEPTH)
)(
    input  wire                     clk,
    input  wire                     rst,
    input  wire                     go,
    output reg                      done,

    input  wire [CHAN_IDX_W-1:0]    cfg_in_channels,
    input  wire [CHAN_IDX_W-1:0]    cfg_out_channels,
    input  wire [WH_IDX_W-1:0]      cfg_in_w,
    input  wire [WH_IDX_W-1:0]      cfg_in_h,
    input  wire [31:0]              cfg_weight_base_addr,
    input  wire [4:0]               cfg_out_shift,
    input  wire [4:0]               cfg_bias_shift,

    output reg  [ACT_AW-1:0]        addra_in,
    input  wire signed [7:0]        data_in,
    output reg                      ena_in,

    output reg  [ACT_AW-1:0]        addra_out,
    output reg  signed [7:0]        data_out,
    output reg                      we_out,

    output reg  [31:0]              weight_addr,
    output reg                      weight_en,
    output reg  [9:0]               no_bytes,
    input  wire [1023:0]            weight_data,
    input  wire                     weight_valid
);

    // =========================================================================
    // MAC units
    // =========================================================================
    reg signed [7:0]  bias_reg   [0:TILE_SIZE-1];
    reg signed [7:0]  weight_reg [0:TILE_SIZE-1];
    reg mac_init, mac_en, mac_out_valid;
    reg signed [7:0] pixel_r;
    wire signed [7:0] filter_result [0:TILE_SIZE-1];

    genvar gg;
    generate
        for (gg = 0; gg < TILE_SIZE; gg = gg + 1) begin : mac_units
            wire signed [31:0] bias_shifted =
                $signed({{24{bias_reg[gg][7]}}, bias_reg[gg]}) <<< cfg_bias_shift;
            filter_mac_unit mac (
                .clk(clk), .rst(rst),
                .init(mac_init), .mac_en(mac_en), .out_valid(mac_out_valid),
                .shift_amt(cfg_out_shift),
                .bias(bias_shifted),
                .img_pixel(pixel_r),
                .kern_weight(weight_reg[gg]),
                .result(filter_result[gg])
            );
        end
    endgenerate

    // =========================================================================
    // Consumer position trackers
    // =========================================================================
    reg [CHAN_IDX_W-1:0] group_idx;
    reg [CHAN_IDX_W-1:0] cur_channel;
    reg [1:0]            k_x, k_y;
    reg [WH_IDX_W-1:0]   out_x, out_y;
    reg [FILTER_IDX_W:0] write_filter;

    wire [CHAN_IDX_W:0] num_groups = (cfg_out_channels + TILE_SIZE - 1) >> $clog2(TILE_SIZE);
    wire [WH_IDX_W-1:0] out_w = cfg_in_w;
    wire [WH_IDX_W-1:0] out_h = cfg_in_h;

    wire signed [WH_IDX_W:0] src_y = $signed({1'b0, out_y}) + $signed({1'b0, k_y}) - PAD;
    wire signed [WH_IDX_W:0] src_x = $signed({1'b0, out_x}) + $signed({1'b0, k_x}) - PAD;
    wire is_padding = (src_y < 0) || (src_y >= $signed({1'b0, cfg_in_h})) ||
                      (src_x < 0) || (src_x >= $signed({1'b0, cfg_in_w}));

    // =========================================================================
    // Activation BRAM addr gen - PIPELINED, NO PREP cycle
    //
    // Same 3-stage pipeline as before:
    //   Stage 1: register cfg_in_w_r, cfg_in_h_r, in_plane_size_r (layer-stable)
    //   Stage 2: register channel_base_r, row_offset_r (per-iter multiplies)
    //   Stage 3: combinational add  channel_base_r + row_offset_r + src_x
    //
    // Key trick: Stage 2 multiplies fire from STATE-DEPENDENT inputs that
    // already reflect the about-to-update iterator values. So at C_NEXT_KPOS,
    // channel_base_r registers the NEW (next iter's) multiply; by C_POP_WEIGHT
    // one cycle later, addr_in_calc has the correct values without needing
    // an extra wait state.
    //
    // Inner loop is therefore 5 cyc/kpos (cached) instead of 6.
    // =========================================================================

    // Stage 1: layer-stable registered config
    reg [WH_IDX_W-1:0] cfg_in_w_r;
    reg [WH_IDX_W-1:0] cfg_in_h_r;
    reg [ACT_AW-1:0]   in_plane_size_r;
    reg [WH_IDX_W-1:0] out_w_r;
    reg [WH_IDX_W-1:0] out_h_r;

    always @(posedge clk) begin
        cfg_in_w_r      <= cfg_in_w;
        cfg_in_h_r      <= cfg_in_h;
        in_plane_size_r <= cfg_in_w_r * cfg_in_h_r;
        out_w_r         <= cfg_in_w_r;
        out_h_r         <= cfg_in_h_r;
    end

    // =========================================================================
    // FSM states (declared early so Stage 2 multiplier inputs can reference them)
    // =========================================================================
    localparam C_IDLE         = 0,
               C_LOAD_BIAS    = 1,
               C_WAIT_BIAS    = 2,
               C_INIT_MAC     = 3,
               C_POP_WEIGHT   = 4,
               C_READ_PIXEL   = 6,
               C_WAIT_PIXEL   = 7,
               C_LATCH_PIXEL  = 8,
               C_DO_MAC       = 9,
               C_NEXT_KPOS    = 10,
               C_COMPUTE_OUT  = 11,
               C_WAIT_RESULT  = 12,
               C_WRITE_SETUP  = 13,
               C_WRITE_ASSERT = 14,
               C_WRITE_NEXT   = 15,
               C_NEXT_PIXEL   = 16,
               C_NEXT_GROUP   = 17,
               C_FINISH       = 18,
               C_BIAS_SETTLE  = 20,
               C_WAIT_BIAS_DRAIN = 22,
               C_PREP_ADDR    = 23,    // *** kept for state-encoding compatibility, unused ***
               C_FILL_REQ     = 24,    // *** cache mode: fire AXI request ***
               C_FILL_WAIT1   = 25,    // *** cache mode: wait !valid ***
               C_FILL_WAIT2   = 26;    // *** cache mode: wait valid, store ***

    (* MARK_DEBUG = "TRUE" *) reg [4:0] state;

    // Stage 2: per-iteration registered multiplies.
    //
    // Multiplier inputs are STATE-DEPENDENT: when the FSM is in C_INIT_MAC or
    // C_NEXT_KPOS (iterator about to update), we feed the multipliers the
    // ABOUT-TO-COMMIT iterator values (computed combinationally below). This
    // way the multiplies register the correct NEW value at end of cycle, and
    // by the next cycle (C_POP_WEIGHT) addr_in_calc is ready - no PREP cycle.
    reg [ACT_AW-1:0] channel_base_r;
    reg [ACT_AW-1:0] row_offset_r;
    reg [ACT_AW-1:0] out_plane_size_r;
    reg [ACT_AW-1:0] out_row_offset_r;

    // Combinational "what will the iterator become at end of this cycle".
    // Mirrors the increment logic inside C_NEXT_KPOS exactly.
    wire kx_at_max = (k_x == KERNEL_SIZE - 1);
    wire ky_at_max = (k_y == KERNEL_SIZE - 1);
    wire ch_at_max = (cur_channel == cfg_in_channels - 1);

    wire [1:0] k_x_advanced = kx_at_max ? 2'd0 : (k_x + 2'd1);
    wire [1:0] k_y_advanced = (kx_at_max && !ky_at_max) ? (k_y + 2'd1)
                            : (kx_at_max && ky_at_max)  ? 2'd0
                            : k_y;
    wire [CHAN_IDX_W-1:0] cur_channel_advanced =
        (kx_at_max && ky_at_max && !ch_at_max) ? (cur_channel + 1'b1)
                                               : cur_channel;

    // State-dependent multiplier inputs
    wire [CHAN_IDX_W-1:0] cur_channel_use =
        (state == C_INIT_MAC)  ? {CHAN_IDX_W{1'b0}} :
        (state == C_NEXT_KPOS) ? cur_channel_advanced :
                                 cur_channel;

    wire [1:0] k_y_use =
        (state == C_INIT_MAC)  ? 2'd0 :
        (state == C_NEXT_KPOS) ? k_y_advanced :
                                 k_y;

    wire signed [WH_IDX_W:0] src_y_use =
        $signed({1'b0, out_y}) + $signed({1'b0, k_y_use}) - PAD;

    always @(posedge clk) begin
        if (rst) begin
            channel_base_r   <= 0;
            row_offset_r     <= 0;
            out_plane_size_r <= 0;
            out_row_offset_r <= 0;
        end else begin
            channel_base_r   <= cur_channel_use * in_plane_size_r;
            row_offset_r     <= $unsigned(src_y_use) * cfg_in_w_r;
            out_plane_size_r <= out_w_r * out_h_r;
            out_row_offset_r <= out_y * out_w_r;
        end
    end

    // Stage 3: combinational add only (no multiplies)
    wire [ACT_AW-1:0] addr_in_calc = channel_base_r + row_offset_r + $unsigned(src_x);

    // =========================================================================
    // *** WEIGHT CACHE *** (used only when use_cache=1)
    // Holds Cin * KERNEL_TOTAL entries when Cin <= MAX_CACHE_CIN. Filled once
    // per group from DDR. Inner MAC loop reads combinationally.
    // =========================================================================
    (* ram_style = "block" *)
    reg [TILE_SIZE*8-1:0] weight_cache [0:CACHE_DEPTH-1];

    reg [CACHE_AW:0] fill_idx;

    wire [CACHE_AW-1:0] cache_read_addr =
        cur_channel * KERNEL_TOTAL + (k_y * KERNEL_SIZE + k_x);
    wire [TILE_SIZE*8-1:0] cache_read_data = weight_cache[cache_read_addr];

    // Runtime decision: cache fits if cfg_in_channels * 9 <= CACHE_DEPTH.
    // Equivalent to cfg_in_channels <= MAX_CACHE_CIN.
    wire use_cache = (cfg_in_channels <= MAX_CACHE_CIN);

    // =========================================================================
    // Producer position trackers
    // =========================================================================
    reg [CHAN_IDX_W-1:0] prod_group_idx;
    reg [CHAN_IDX_W-1:0] prod_channel;
    reg [1:0]            prod_k_x, prod_k_y;
    wire [KPOS_W:0]      prod_kpos = prod_k_y * KERNEL_SIZE + prod_k_x;

    reg  [31:0] per_group_bytes_r;
    wire [31:0] per_group_bytes_raw = 32'd128 * (32'd1 + cfg_in_channels * KERNEL_TOTAL);

    reg  [31:0] cons_group_base_r;
    wire [31:0] cons_group_base_raw = cfg_weight_base_addr + group_idx * per_group_bytes_r;

    reg  [31:0] prod_group_base_r;
    wire [31:0] prod_group_base_raw = cfg_weight_base_addr + prod_group_idx * per_group_bytes_r;

    reg  [31:0] prod_weight_addr_r;
    wire [31:0] prod_weight_addr_raw =
        prod_group_base_r
      + (32'd1 + prod_channel * KERNEL_TOTAL + {28'b0, prod_kpos}) * 32'd128;

    always @(posedge clk) begin
        if (rst) begin
            per_group_bytes_r   <= 0;
            cons_group_base_r   <= 0;
            prod_group_base_r   <= 0;
            prod_weight_addr_r  <= 0;
        end else begin
            per_group_bytes_r   <= per_group_bytes_raw;
            cons_group_base_r   <= cons_group_base_raw;
            prod_group_base_r   <= prod_group_base_raw;
            prod_weight_addr_r  <= prod_weight_addr_raw;
        end
    end

    wire [31:0] bias_block_addr = cons_group_base_r;

    // =========================================================================
    // FIFO 4-deep × 1024-bit
    // =========================================================================
    reg [1023:0] fifo_mem [0:FIFO_DEPTH-1];
    reg [FIFO_AW:0]   fifo_count;
    reg [FIFO_AW-1:0] fifo_wr_ptr;
    reg [FIFO_AW-1:0] fifo_rd_ptr;
    wire fifo_empty = (fifo_count == 0);
    wire fifo_full  = (fifo_count == FIFO_DEPTH);

    reg fifo_push;
    reg fifo_pop;
    reg [1023:0] fifo_push_data;
    wire [1023:0] fifo_head = fifo_mem[fifo_rd_ptr];

    integer fi;
    initial begin
        for (fi = 0; fi < FIFO_DEPTH; fi = fi + 1) fifo_mem[fi] = 1024'h0;
    end

    always @(posedge clk) begin
        if (rst) begin
            fifo_count  <= 0;
            fifo_wr_ptr <= 0;
            fifo_rd_ptr <= 0;
        end else begin
            if (fifo_push) begin
                fifo_mem[fifo_wr_ptr] <= fifo_push_data;
                fifo_wr_ptr <= fifo_wr_ptr + 1;
            end
            if (fifo_pop) begin
                fifo_rd_ptr <= fifo_rd_ptr + 1;
            end
            case ({fifo_push, fifo_pop})
                2'b10: fifo_count <= fifo_count + 1;
                2'b01: fifo_count <= fifo_count - 1;
                default: ;
            endcase
        end
    end

    // =========================================================================
    // FSM states (declared earlier, above Stage 2 pipeline)
    // =========================================================================
    // FSM localparams and `state` register are declared earlier so that
    // Stage 2 of the addr pipeline can reference them.

    reg [2:0] loadTimer;
    integer   bi, wi;

    localparam P_IDLE   = 0,
               P_REQ    = 1,
               P_WAIT   = 2,
               P_WAIT2  = 3,
               P_SETTLE = 4;

    (* MARK_DEBUG = "TRUE" *) reg [2:0] prod_state;

    // Producer is "armed for current group" (level signal, not pulse).
    // In cache mode prod_armed stays 0; producer never runs.
    reg prod_armed;

    wire cons_owns_axi = (state == C_LOAD_BIAS) || (state == C_WAIT_BIAS) ||
                         (state == C_BIAS_SETTLE) ||
                         (state == C_FILL_REQ)    || (state == C_FILL_WAIT1) ||
                         (state == C_FILL_WAIT2);

    // =========================================================================
    // Diagnostic - prints on every state change (only after first 'go')
    // =========================================================================
    // synthesis translate_off
    integer dbg_cyc;
    integer dbg_print_count;
    reg [4:0] last_state_seen;
    reg [2:0] last_prod_state_seen;
    reg dbg_seen_go;
    initial begin
        dbg_cyc = 0;
        dbg_print_count = 0;
        last_state_seen = 5'h1F;
        last_prod_state_seen = 3'h7;
        dbg_seen_go = 0;
    end
    always @(posedge clk) begin
        if (!rst) begin
            dbg_cyc <= dbg_cyc + 1;
            if (go) dbg_seen_go <= 1;
            // Print on state change, after we've seen go, for first 200 transitions
            if (dbg_seen_go && dbg_print_count < 200) begin
                if (state !== last_state_seen || prod_state !== last_prod_state_seen) begin
                    $display("[CONV %0t] cyc=%0d  cons=%0d  prod=%0d  fifo=%0d  armed=%0b  wv=%0b  we=%0b  fpush=%0b  fpop=%0b",
                             $time, dbg_cyc, state, prod_state, fifo_count, prod_armed,
                             weight_valid, weight_en, fifo_push, fifo_pop);
                    dbg_print_count <= dbg_print_count + 1;
                end
            end
            last_state_seen <= state;
            last_prod_state_seen <= prod_state;
        end
    end
    // synthesis translate_on

    // =========================================================================
    // Main FSM block - both consumer and producer
    // =========================================================================
    always @(posedge clk) begin
        // Defaults
        mac_init      <= 0;
        mac_en        <= 0;
        mac_out_valid <= 0;
        we_out        <= 0;
        weight_en     <= 0;
        fifo_push     <= 0;
        fifo_pop      <= 0;

        if (rst) begin
            state         <= C_IDLE;
            prod_state    <= P_IDLE;
            done          <= 0;
            no_bytes      <= 10'd128;
            ena_in        <= 0;
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
            prod_group_idx <= 0;
            prod_channel   <= 0;
            prod_k_x       <= 0;
            prod_k_y       <= 0;
            fifo_push_data <= 0;
            prod_armed     <= 0;
            fill_idx       <= 0;
        end else begin

            // ============== CONSUMER FSM ==============
            case (state)
                C_IDLE: begin
                    done <= 0;
                    if (go) begin
                        group_idx      <= 0;
                        prod_group_idx <= 0;
                        state          <= C_BIAS_SETTLE;
                    end
                end

                C_BIAS_SETTLE: state <= C_LOAD_BIAS;

                C_LOAD_BIAS: begin
                    weight_addr <= bias_block_addr;
                    no_bytes    <= 10'd128;
                    weight_en   <= 1;
                    if (!weight_valid)
                        state <= C_WAIT_BIAS;
                end

                C_WAIT_BIAS: begin
                    if (weight_valid) begin
                        for (bi = 0; bi < TILE_SIZE; bi = bi + 1)
                            bias_reg[bi] <= weight_data[bi*8 +: 8];
                        out_x <= 0;
                        out_y <= 0;
                        // Branch on cache feasibility for this layer:
                        if (use_cache) begin
                            // CACHED PATH: fill cache before starting pixels
                            fill_idx <= 0;
                            state    <= C_FILL_REQ;
                        end else begin
                            // STREAMING PATH: producer/FIFO will feed inner loop
                            state <= C_INIT_MAC;
                        end
                    end
                end

                // -----------------------------------------------------------------
                // *** CACHE FILL *** (only entered when use_cache=1)
                // Sequentially fetch Cin*9 weight blocks into weight_cache[].
                // Same single-issue handshake pattern as bias fetch.
                // -----------------------------------------------------------------
                C_FILL_REQ: begin
                    if (fill_idx >= cfg_in_channels * KERNEL_TOTAL) begin
                        // Cache fully populated for this group
                        state <= C_INIT_MAC;
                    end else begin
                        weight_addr <= cons_group_base_r
                                     + (32'd1 + fill_idx) * 32'd128;
                        no_bytes    <= 10'd128;
                        weight_en   <= 1;
                        if (!weight_valid)
                            state <= C_FILL_WAIT1;
                        else
                            state <= C_FILL_WAIT2;
                    end
                end

                C_FILL_WAIT1: begin
                    if (!weight_valid) state <= C_FILL_WAIT2;
                end

                C_FILL_WAIT2: begin
                    if (weight_valid) begin
                        weight_cache[fill_idx] <= weight_data[TILE_SIZE*8-1:0];
                        fill_idx <= fill_idx + 1;
                        state    <= C_FILL_REQ;
                    end
                end

                // (DEPRECATED - kept for state-encoding compatibility, never entered)
                C_WAIT_BIAS_DRAIN: begin
                    state <= C_INIT_MAC;
                end

                C_INIT_MAC: begin
                    mac_init    <= 1;
                    cur_channel <= 0;
                    k_x         <= 0;
                    k_y         <= 0;
                    // Producer only runs in streaming mode. In cached mode,
                    // weights come from weight_cache[] (filled in C_FILL_*).
                    prod_armed  <= !use_cache;
                    // NB: with state-aware multiplier inputs (cur_channel_use
                    // and src_y_use), channel_base_r and row_offset_r register
                    // the new (zeroed) multiplies at end of THIS cycle. By the
                    // time we reach C_POP_WEIGHT they are valid. No PREP cycle.
                    state       <= C_POP_WEIGHT;
                end

                // C_PREP_ADDR is left defined (state encoding compatibility)
                // but never entered. State-aware multiplier inputs make the
                // pipeline self-correcting at iter transitions.
                C_PREP_ADDR: begin
                    state <= C_POP_WEIGHT;
                end

                C_POP_WEIGHT: begin
                    if (use_cache) begin
                        // === CACHED PATH ===
                        // Combinational read from weight_cache. No FIFO, no AXI wait.
                        for (wi = 0; wi < TILE_SIZE; wi = wi + 1)
                            weight_reg[wi] <= cache_read_data[wi*8 +: 8];

                        if (is_padding) begin
                            ena_in <= 0;
                            state  <= C_LATCH_PIXEL;
                        end else begin
                            addra_in  <= addr_in_calc;
                            ena_in    <= 1;
                            loadTimer <= 0;     // BRAM 1-cycle latency
                            state     <= C_WAIT_PIXEL;
                        end
                    end else begin
                        // === STREAMING PATH ===
                        if (!fifo_empty) begin
                            // Pop the weight FIFO into weight_reg[]
                            for (wi = 0; wi < TILE_SIZE; wi = wi + 1)
                                weight_reg[wi] <= fifo_head[wi*8 +: 8];
                            fifo_pop <= 1;

                            // OPTIMIZATION: also kick off the pixel BRAM read
                            // in the SAME cycle. The BRAM and the FIFO are
                            // independent paths so we can drive them in parallel.
                            //
                            // is_padding/addr_in_calc are combinational off the
                            // current k_x/k_y/cur_channel. With the eager
                            // multiply scheduling (Stage 2 uses cur_channel_use),
                            // addr_in_calc is correct at this cycle without
                            // any PREP cycle needed.
                            if (is_padding) begin
                                ena_in <= 0;
                                state <= C_LATCH_PIXEL;
                            end else begin
                                addra_in  <= addr_in_calc;
                                ena_in    <= 1;
                                loadTimer <= 0;     // BRAM 1-cycle latency
                                state     <= C_WAIT_PIXEL;
                            end
                        end
                    end
                end

                // (DEPRECATED - kept for state-encoding compatibility)
                // C_POP_WEIGHT now starts the BRAM read directly.
                C_READ_PIXEL: begin
                    state <= C_WAIT_PIXEL;
                end

                C_WAIT_PIXEL: begin
                    if (loadTimer == 0) state <= C_LATCH_PIXEL;
                    else loadTimer <= loadTimer - 1;
                end

                C_LATCH_PIXEL: begin
                    pixel_r <= is_padding ? 8'sd0 : data_in;
                    state   <= C_DO_MAC;
                end

                C_DO_MAC: begin
                    mac_en <= 1;
                    state  <= C_NEXT_KPOS;
                end

                C_NEXT_KPOS: begin
                    if (k_x == KERNEL_SIZE - 1) begin
                        k_x <= 0;
                        if (k_y == KERNEL_SIZE - 1) begin
                            k_y <= 0;
                            if (cur_channel == cfg_in_channels - 1) begin
                                state <= C_COMPUTE_OUT;
                            end else begin
                                cur_channel <= cur_channel + 1;
                                state       <= C_POP_WEIGHT;
                            end
                        end else begin
                            k_y   <= k_y + 1;
                            state <= C_POP_WEIGHT;
                        end
                    end else begin
                        k_x   <= k_x + 1;
                        state <= C_POP_WEIGHT;
                    end
                end

                C_COMPUTE_OUT: begin
                    mac_out_valid <= 1;
                    write_filter  <= 0;
                    state         <= C_WAIT_RESULT;
                end

                C_WAIT_RESULT: state <= C_WRITE_SETUP;

                C_WRITE_SETUP: begin
                    data_out  <= filter_result[write_filter];
                    addra_out <= (group_idx * TILE_SIZE + write_filter) * out_plane_size_r
                               + out_row_offset_r + out_x;
                    state     <= C_WRITE_ASSERT;
                end

                C_WRITE_ASSERT: begin
                    we_out <= 1;
                    state  <= C_WRITE_NEXT;
                end

                C_WRITE_NEXT: begin
                    if (write_filter == TILE_SIZE - 1)
                        state <= C_NEXT_PIXEL;
                    else begin
                        write_filter <= write_filter + 1;
                        state        <= C_WRITE_SETUP;
                    end
                end

                C_NEXT_PIXEL: begin
                    if (out_x == out_w - 1) begin
                        out_x <= 0;
                        if (out_y == out_h - 1) begin
                            state <= C_NEXT_GROUP;
                        end else begin
                            out_y <= out_y + 1;
                            state <= C_INIT_MAC;
                        end
                    end else begin
                        out_x <= out_x + 1;
                        state <= C_INIT_MAC;
                    end
                end

                C_NEXT_GROUP: begin
                    if ({23'b0, group_idx + 1} >= num_groups)
                        state <= C_FINISH;
                    else begin
                        group_idx      <= group_idx + 1;
                        prod_group_idx <= prod_group_idx + 1;
                        state          <= C_BIAS_SETTLE;
                    end
                end

                C_FINISH: begin
                    done       <= 1;
                    prod_armed <= 0;
                    state      <= C_IDLE;
                end

                default: state <= C_IDLE;
            endcase

            // ============== PRODUCER FSM ==============
            case (prod_state)
                P_IDLE: begin
                    if (prod_armed && !cons_owns_axi) begin
                        prod_channel <= 0;
                        prod_k_x     <= 0;
                        prod_k_y     <= 0;
                        prod_state   <= P_SETTLE;
                    end
                end

                // One-cycle slot so prod_weight_addr_r catches up with the
                // newly-assigned prod_channel/prod_k_x/prod_k_y. Mirrors the
                // ADDR_SETTLE state in the original consumer FSM.
                P_SETTLE: begin
                    prod_state <= P_REQ;
                end

                P_REQ: begin
                    if (cons_owns_axi) begin
                        // Hold off
                    end else if (fifo_full) begin
                        // Hold off
                    end else begin
                        // Issue the request. axi_driver will handle clearing
                        // any stale weight_valid when it sees this new request.
                        weight_addr <= prod_weight_addr_r;
                        no_bytes    <= 10'd128;
                        weight_en   <= 1;
                        prod_state  <= P_WAIT;
                    end
                end

                P_WAIT: begin
                    // Wait for valid to first go LOW (acknowledging our request),
                    // then HIGH (data ready). This handles the case where
                    // weight_valid was still high from a previous transaction.
                    if (!weight_valid) begin
                        prod_state <= P_WAIT2;
                    end
                end

                P_WAIT2: begin
                    if (weight_valid) begin
                        fifo_push      <= 1;
                        fifo_push_data <= weight_data;
                        if (prod_k_x == KERNEL_SIZE - 1) begin
                            prod_k_x <= 0;
                            if (prod_k_y == KERNEL_SIZE - 1) begin
                                prod_k_y <= 0;
                                if (prod_channel == cfg_in_channels - 1) begin
                                    prod_channel <= 0;
                                    prod_armed   <= 0;
                                    prod_state   <= P_IDLE;
                                end else begin
                                    prod_channel <= prod_channel + 1;
                                    prod_state   <= P_SETTLE;
                                end
                            end else begin
                                prod_k_y   <= prod_k_y + 1;
                                prod_state <= P_SETTLE;
                            end
                        end else begin
                            prod_k_x   <= prod_k_x + 1;
                            prod_state <= P_SETTLE;
                        end
                    end
                end

                default: prod_state <= P_IDLE;
            endcase

        end
    end

endmodule