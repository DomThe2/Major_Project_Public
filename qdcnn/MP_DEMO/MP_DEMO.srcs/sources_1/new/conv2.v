// Module: Multi-channel Convolution Layer (Conv2)
// Author: V. E. Dementyev
//
// HOW IT WORKS:
//   Conv1 had 1 input channel (the grayscale image).
//   Conv2 has IN_CHANNELS=10 input channels (the pooled feature maps).
//
//   For each output pixel at position (out_y, out_x):
//     For each of the 16 output filters (IN PARALLEL via generate):
//       acc = bias[filter]
//       For each input channel 0..9 (SEQUENTIAL - one at a time):
//         For each kernel position (ky, kx) in 3x3 (SEQUENTIAL):
//           acc += pool_input[channel][out_y+ky][out_x+kx] 
//                  * kernel[filter][channel][ky][kx]
//       output[filter][out_y][out_x] = relu(acc) >> SHIFT
//
//   Total multiplies per output pixel: 10 channels × 9 positions = 90
//   All 16 filters do this simultaneously = 16 × 90 = 1440 multiplies
//   But we only need 90 BRAM reads (pixel is shared across filters)
//
// KERNEL STORAGE (in ROM, loaded into registers at startup):
//   Stored as: [filter][channel][ky*3+kx]
//   filter 0, channel 0, positions 0..8  → addresses 0..8
//   filter 0, channel 1, positions 0..8  → addresses 9..17
//   ...
//   filter 0, channel 9, positions 0..8  → addresses 81..89
//   filter 1, channel 0, positions 0..8  → addresses 90..98
//   ...
//   Total: 16 filters × 10 channels × 9 = 1440 entries
//
// INPUT LAYOUT (pool output BRAM):
//   channel 0: addresses 0..168      (13×13 = 169 values)
//   channel 1: addresses 169..337
//   ...
//   channel 9: addresses 1521..1689
//
// OUTPUT LAYOUT (inter2 BRAM):
//   filter 0: addresses 0..120       (11×11 = 121 values)
//   filter 1: addresses 121..241
//   ...
//   filter 15: addresses 1815..1935

module conv2_multichannel #(
    parameter IN_W        = 13,       // pool output width
    parameter IN_H        = 13,       // pool output height
    parameter IN_CHANNELS = 10,       // number of input channels (= conv1 filters)
    parameter KERNEL_SIZE = 3,
    parameter NUM_FILTERS = 16,       // number of output filters
    parameter SHIFT       = 7,

    // Derived
    parameter OUT_W          = IN_W - KERNEL_SIZE + 1,                      // 11
    parameter OUT_H          = IN_H - KERNEL_SIZE + 1,                      // 11
    parameter KERNEL_TOTAL   = KERNEL_SIZE * KERNEL_SIZE,                   // 9
    parameter KERN_PER_FILT  = IN_CHANNELS * KERNEL_TOTAL,                  // 90
    parameter KERNEL_COUNT   = NUM_FILTERS * KERN_PER_FILT,                 // 1440
    parameter IN_SIZE        = IN_CHANNELS * IN_W * IN_H,                   // 1690
    parameter OUT_SIZE_TOTAL = NUM_FILTERS * OUT_W * OUT_H,                 // 1936
    parameter KERNEL_ADDR_W  = $clog2(KERNEL_COUNT),                        // 11
    parameter BIAS_ADDR_W    = $clog2(NUM_FILTERS),                         // 4
    parameter IN_ADDR_W      = $clog2(IN_SIZE),                             // 11
    parameter OUT_ADDR_W     = $clog2(OUT_SIZE_TOTAL),                      // 11
    parameter FILTER_IDX_W   = $clog2(NUM_FILTERS),                         // 4
    parameter CHAN_IDX_W      = $clog2(IN_CHANNELS)                         // 4
)(
    input  wire clk,
    input  wire rst,
    input  wire go,
    output reg  done,

    // Read from pool output BRAM (Port B)
    output reg [IN_ADDR_W-1:0]     addra_in,
    input  wire signed [7:0]       data_in,
    output reg                     ena_in,

    // Kernel weight ROM
    output reg [KERNEL_ADDR_W-1:0] addra_kernel,
    input  wire signed [7:0]       data_kernel,

    // Bias ROM
    output reg [BIAS_ADDR_W-1:0]   addra_bias,
    input  wire signed [31:0]      data_bias,

    // Write to inter2 BRAM (Port A)
    output reg [OUT_ADDR_W-1:0]    addra_out,
    output reg signed [7:0]        data_out,
    output reg                     we_out
);

    // =========================================================================
    // Kernel weights and biases - loaded into registers at startup
    // so all 16 filters can access their weights simultaneously
    // =========================================================================
    reg signed [7:0]  kern_reg [0:KERNEL_COUNT-1];
    reg signed [31:0] bias_reg [0:NUM_FILTERS-1];
    
    reg [IN_ADDR_W-1:0] channel_base;    // cur_channel * IN_W * IN_H
    reg [IN_ADDR_W-1:0] row_base;        // (out_y + k_y) * IN_W

    // =========================================================================
    // Broadcast control signals (same as conv1's filter_mac_unit interface)
    // =========================================================================
    reg mac_init;
    reg mac_en;
    reg mac_out_valid;
    
    reg [OUT_ADDR_W-1:0] pixel_offset;

    // =========================================================================
    // Shared input pixel - one pixel read from BRAM, used by all 16 filters
    // =========================================================================
    reg signed [7:0] pixel_r;

    // =========================================================================
    // Position tracking
    // =========================================================================
    reg [CHAN_IDX_W:0] cur_channel;    // which input channel (0..9)
    reg [1:0]          k_x, k_y;       // kernel position within 3×3
    reg [4:0]          out_x, out_y;   // output pixel position

    wire [3:0] kern_pos;
    assign kern_pos = k_y * KERNEL_SIZE + k_x;

    // =========================================================================
    // Per-filter kernel weight selection and results
    // Each filter reads: kern_reg[filter * 90 + channel * 9 + kern_pos]
    // =========================================================================
    wire signed [7:0] filter_kern_weight [0:NUM_FILTERS-1];
    wire signed [7:0] filter_result      [0:NUM_FILTERS-1];

    // =========================================================================
    // GENERATE: 16 parallel MAC units - one per output filter
    // Each has its own multiplier and accumulator.
    // They all receive the same pixel but different kernel weights.
    // =========================================================================
    genvar g;
    generate
        for (g = 0; g < NUM_FILTERS; g = g + 1) begin : filter_units
            // This wire selects the right kernel weight for this filter,
            // current channel, and current kernel position
            assign filter_kern_weight[g] = 
                kern_reg[g * KERN_PER_FILT + cur_channel * KERNEL_TOTAL + kern_pos];

            // Reuse the same MAC unit as conv1
            filter_mac_unit #(
                .SHIFT(SHIFT)
            ) mac (
                .clk(clk),
                .rst(rst),
                .init(mac_init),
                .mac_en(mac_en),
                .out_valid(mac_out_valid),
                .bias(bias_reg[g]),
                .img_pixel(pixel_r),
                .kern_weight(filter_kern_weight[g]),
                .result(filter_result[g])
            );
        end
    endgenerate

    // =========================================================================
    // Loading and write counters
    // =========================================================================
    reg [KERNEL_ADDR_W:0] load_counter;
    reg [FILTER_IDX_W:0]  write_filter;
    reg [2:0]             loadTimer;

    // =========================================================================
    // State machine
    // =========================================================================
    localparam IDLE            = 0,
               LOAD_KERN_REQ   = 1,   // Phase 1: load all kernel weights
               LOAD_KERN_WAIT  = 2,
               LOAD_KERN_SAVE  = 3,
               LOAD_BIAS_REQ   = 4,   // Phase 2: load all biases
               LOAD_BIAS_WAIT  = 5,
               LOAD_BIAS_SAVE  = 6,
               INIT_MAC        = 7,   // Phase 3: init accumulators for new pixel
               REQ_PIXEL       = 8,   // request one pixel from pool BRAM
               WAIT_PIXEL      = 9,   // wait for BRAM
               LATCH_PIXEL     = 10,  // latch the pixel value
               DO_MAC          = 11,  // all filters MAC in parallel
               NEXT_KPOS       = 12,  // advance kernel pos / channel
               COMPUTE_OUT     = 13,  // all filters compute relu+shift+clamp
               WAIT_RESULT     = 14,  // NEW: wait one cycle for MAC result to settle
               WRITE_SETUP     = 15,  // Phase 4: write results sequentially
               WRITE_ASSERT    = 16,
               WRITE_NEXT      = 17,
               NEXT_PIXEL      = 18,
               FINISH          = 19;

    reg [4:0] state;

    always @(posedge clk) begin
        if (rst) begin
            state         <= IDLE;
            done          <= 0;
            we_out        <= 0;
            ena_in        <= 1;
            mac_init      <= 0;
            mac_en        <= 0;
            mac_out_valid <= 0;
            load_counter  <= 0;
        end else begin
            // Default: deassert pulses
            mac_init      <= 0;
            mac_en        <= 0;
            mac_out_valid <= 0;
            we_out        <= 0;

            case (state)

                // =============================================
                IDLE: begin
                    done <= 0;
                    if (go) begin
                        load_counter <= 0;
                        state <= LOAD_KERN_REQ;
                    end
                end

                // =============================================
                // PHASE 1: Load 1440 kernel weights into registers
                // (16 filters × 10 channels × 9 positions)
                // =============================================
                LOAD_KERN_REQ: begin
                    addra_kernel <= load_counter[KERNEL_ADDR_W-1:0];
                    loadTimer    <= 3;
                    state        <= LOAD_KERN_WAIT;
                end

                LOAD_KERN_WAIT: begin
                    if (loadTimer == 0) state <= LOAD_KERN_SAVE;
                    else loadTimer <= loadTimer - 1;
                end

                LOAD_KERN_SAVE: begin
                    kern_reg[load_counter[KERNEL_ADDR_W-1:0]] <= data_kernel;
                    if (load_counter == KERNEL_COUNT - 1) begin
                        load_counter <= 0;
                        state <= LOAD_BIAS_REQ;
                    end else begin
                        load_counter <= load_counter + 1;
                        state <= LOAD_KERN_REQ;
                    end
                end

                // =============================================
                // PHASE 2: Load 16 biases into registers
                // =============================================
                LOAD_BIAS_REQ: begin
                    addra_bias <= load_counter[BIAS_ADDR_W-1:0];
                    loadTimer  <= 3;
                    state      <= LOAD_BIAS_WAIT;
                end

                LOAD_BIAS_WAIT: begin
                    if (loadTimer == 0) state <= LOAD_BIAS_SAVE;
                    else loadTimer <= loadTimer - 1;
                end

                LOAD_BIAS_SAVE: begin
                    bias_reg[load_counter[BIAS_ADDR_W-1:0]] <= data_bias;
                    if (load_counter == NUM_FILTERS - 1) begin
                        out_x <= 0;
                        out_y <= 0;
                        state <= INIT_MAC;
                    end else begin
                        load_counter <= load_counter + 1;
                        state <= LOAD_BIAS_REQ;
                    end
                end

                // =============================================
                // PHASE 3: Process each output pixel
                // =============================================

                // All 16 accumulators load their bias
                INIT_MAC: begin
                    mac_init    <= 1;
                    cur_channel <= 0;
                    k_x         <= 0;
                    k_y         <= 0;
                    channel_base <= 0;
                    row_base <= out_y * IN_W;
                    pixel_offset <= out_y * OUT_W + out_x;
                    state       <= REQ_PIXEL;
                end

                // Read one pixel from pool BRAM
                // Address: channel * (13*13) + (out_y + k_y) * 13 + (out_x + k_x)
                REQ_PIXEL: begin
                    addra_in  <= channel_base + row_base + k_y * IN_W + (out_x + k_x);
                    loadTimer <= 3;
                    state     <= WAIT_PIXEL;
                end

                WAIT_PIXEL: begin
                    if (loadTimer == 0) state <= LATCH_PIXEL;
                    else loadTimer <= loadTimer - 1;
                end

                // Latch the pixel - all 16 filters will use this same value
                LATCH_PIXEL: begin
                    pixel_r <= data_in;
                    state   <= DO_MAC;
                end

                // ALL 16 FILTERS MULTIPLY-ACCUMULATE IN PARALLEL
                // Each uses pixel_r × its own kernel weight
                DO_MAC: begin
                    mac_en <= 1;
                    state  <= NEXT_KPOS;
                end

                // Advance: kernel position → channel → done
                NEXT_KPOS: begin
                    if (k_x == KERNEL_SIZE - 1) begin
                        k_x <= 0;
                        if (k_y == KERNEL_SIZE - 1) begin
                            k_y <= 0;
                            // Finished this channel's 3×3 patch
                            if (cur_channel == IN_CHANNELS - 1) begin
                                // Finished ALL channels - pixel complete
                                state <= COMPUTE_OUT;
                            end else begin
                                // Next channel, same pixel position
                                cur_channel <= cur_channel + 1;
                                channel_base <= channel_base + (IN_W * IN_H);
                                state <= REQ_PIXEL;
                            end
                        end else begin
                            k_y <= k_y + 1;
                            state <= REQ_PIXEL;
                        end
                    end else begin
                        k_x <= k_x + 1;
                        state <= REQ_PIXEL;
                    end
                end

                // All filters compute relu + shift + clamp simultaneously
                COMPUTE_OUT: begin
                    mac_out_valid <= 1;
                    write_filter  <= 0;
                    state         <= WAIT_RESULT;
                end

                // =============================================
                // Wait one cycle for MAC `result` registers to update.
                // Without this, WRITE_SETUP samples stale results
                // (off-by-one pixel bug).
                // =============================================
                WAIT_RESULT: begin
                    state <= WRITE_SETUP;
                end

                // =============================================
                // PHASE 4: Write results (one per cycle)
                // =============================================
                WRITE_SETUP: begin
                    data_out  <= filter_result[write_filter];
                    addra_out <= write_filter * (OUT_W * OUT_H) + pixel_offset;
                    state     <= WRITE_ASSERT;
                end

                WRITE_ASSERT: begin
                    we_out <= 1;
                    state  <= WRITE_NEXT;
                end

                WRITE_NEXT: begin
                    if (write_filter == NUM_FILTERS - 1)
                        state <= NEXT_PIXEL;
                    else begin
                        write_filter <= write_filter + 1;
                        state <= WRITE_SETUP;
                    end
                end

                // Advance to next output pixel position
                NEXT_PIXEL: begin
                    if (out_x == OUT_W - 1) begin
                        out_x <= 0;
                        if (out_y == OUT_H - 1)
                            state <= FINISH;
                        else begin
                            out_y <= out_y + 1;
                            state <= INIT_MAC;
                        end
                    end else begin
                        out_x <= out_x + 1;
                        state <= INIT_MAC;
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