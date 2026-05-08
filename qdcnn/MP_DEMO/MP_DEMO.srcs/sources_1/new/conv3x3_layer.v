// Module: Parallel 3x3 Convolution using generate blocks
// 
// Architecture:
//   - NUM_FILTERS instances of filter_mac_unit (via generate)
//   - Each has its own dedicated multiplier and accumulator
//   - All units receive the SAME image pixel simultaneously
//   - Each unit receives its OWN kernel weight simultaneously
//   - One shared FSM controls all units with broadcast signals
//
// This is TRUE parallel hardware - NUM_FILTERS multiplications
// happen in the SAME clock cycle.
// Author: V. E. Dementyev

module conv3x3_parallel #(
    parameter IMG_W       = 28,
    parameter IMG_H       = 28,
    parameter KERNEL_SIZE = 3,
    parameter NUM_FILTERS = 10,
    parameter SHIFT       = 5,

    // Derived
    parameter OUT_W         = IMG_W - KERNEL_SIZE + 1,
    parameter OUT_H         = IMG_H - KERNEL_SIZE + 1,
    parameter KERNEL_TOTAL  = KERNEL_SIZE * KERNEL_SIZE,
    parameter KERNEL_COUNT  = NUM_FILTERS * KERNEL_TOTAL,
    parameter CONV_OUT_SIZE = NUM_FILTERS * OUT_W * OUT_H,
    parameter KERNEL_ADDR_W = $clog2(KERNEL_COUNT),
    parameter BIAS_ADDR_W   = $clog2(NUM_FILTERS),
    parameter OUT_ADDR_W    = $clog2(CONV_OUT_SIZE),
    parameter FILTER_IDX_W  = $clog2(NUM_FILTERS)
)(
    input  wire clk,
    input  wire rst,
    input  wire go,
    output reg  done,

    // Image ROM (shared read - one pixel, all filters use it)
    output reg [9:0]              addra_img,
    input  wire signed [7:0]      data_img,

    // Kernel weight ROM (8-bit, KERNEL_COUNT deep)
    output reg [KERNEL_ADDR_W-1:0] addra_kernel,
    input  wire signed [7:0]       data_kernel,

    // Bias ROM (32-bit, NUM_FILTERS deep)
    output reg [BIAS_ADDR_W-1:0]  addra_bias,
    input  wire signed [31:0]     data_bias,

    // Output BRAM (write port)
    output reg [OUT_ADDR_W-1:0]   addra_out,
    output reg signed [7:0]       data_out,
    output reg                    we_out
);

    // =========================================================================
    // Kernel weights and biases stored in registers for parallel access
    // =========================================================================
    reg signed [7:0]  kern_reg [0:KERNEL_COUNT-1];
    reg signed [31:0] bias_reg [0:NUM_FILTERS-1];

    // =========================================================================
    // Broadcast control signals to all MAC units
    // =========================================================================
    reg mac_init;       // tell all units to load their bias
    reg mac_en;         // tell all units to multiply-accumulate
    reg mac_out_valid;  // tell all units to compute final output

    // =========================================================================
    // Shared image pixel - latched once, used by all units
    // =========================================================================
    reg signed [7:0] img_r;

    // =========================================================================
    // Per-filter kernel weight selection
    // Each filter gets its own weight for the current kernel position
    // =========================================================================
    wire [3:0] kern_pos;
    
    // =========================================================================
    // Working registers
    // =========================================================================
    reg [4:0] out_x, out_y;
    reg [1:0] k_x, k_y;
    reg [9:0] row_base;
    reg [2:0] loadTimer;
    
    assign kern_pos = k_y * KERNEL_SIZE + k_x;

    wire signed [7:0] filter_kern_weight [0:NUM_FILTERS-1];
    wire signed [7:0] filter_result      [0:NUM_FILTERS-1];

    // =========================================================================
    // GENERATE: Instantiate NUM_FILTERS parallel MAC units
    // =========================================================================
    genvar g;
    generate
        for (g = 0; g < NUM_FILTERS; g = g + 1) begin : filter_units

            // Each filter's kernel weight for current position
            // This is just a wire - reads from the register array
            assign filter_kern_weight[g] = kern_reg[g * KERNEL_TOTAL + kern_pos];

            // Instantiate the MAC unit
            filter_mac_unit #(
                .SHIFT(SHIFT)
            ) mac (
                .clk(clk),
                .rst(rst),
                .init(mac_init),
                .mac_en(mac_en),
                .out_valid(mac_out_valid),
                .bias(bias_reg[g]),
                .img_pixel(img_r),
                .kern_weight(filter_kern_weight[g]),
                .result(filter_result[g])
            );
        end
    endgenerate

    // Loading counter (for kernel/bias preload)
    reg [KERNEL_ADDR_W:0] load_counter;

    // Write phase counter
    reg [FILTER_IDX_W:0] write_filter;

    integer fi;

    // =========================================================================
    // State machine
    // =========================================================================
    localparam IDLE            = 0,
               LOAD_KERN_REQ   = 1,
               LOAD_KERN_WAIT  = 2,
               LOAD_KERN_SAVE  = 3,
               LOAD_BIAS_REQ   = 4,
               LOAD_BIAS_WAIT  = 5,
               LOAD_BIAS_SAVE  = 6,
               INIT_MAC        = 7,
               REQ_DATA        = 8,
               WAIT_DATA       = 9,
               LATCH_IMG       = 10,
               DO_MAC          = 11,
               COMPUTE_OUT     = 12,
               WAIT_RESULT     = 13,  // NEW: give MAC units one cycle to update result
               WRITE_SETUP     = 14,
               WRITE_ASSERT    = 15,
               WRITE_NEXT      = 16,
               NEXT_PIXEL      = 17,
               FINISH          = 18;

    (* MARK_DEBUG = "TRUE" *)reg [4:0] state;

    always @(posedge clk) begin
        if (rst) begin
            state        <= IDLE;
            done         <= 0;
            we_out       <= 0;
            mac_init     <= 0;
            mac_en       <= 0;
            mac_out_valid <= 0;
            load_counter <= 0;
        end else begin

            // Default: deassert one-cycle pulses
            mac_init      <= 0;
            mac_en        <= 0;
            mac_out_valid <= 0;
            we_out        <= 0;

            case (state)

                // =============================================================
                IDLE: begin
                    done <= 0;
                    if (go) begin
                        load_counter <= 0;
                        state <= LOAD_KERN_REQ;
                    end
                end

                // =============================================================
                // Phase 1: Pre-load all kernel weights into registers
                // =============================================================
                LOAD_KERN_REQ: begin
                    addra_kernel <= load_counter[KERNEL_ADDR_W-1:0];
                    loadTimer    <= 3;
                    state        <= LOAD_KERN_WAIT;
                end

                LOAD_KERN_WAIT: begin
                    if (loadTimer == 0)
                        state <= LOAD_KERN_SAVE;
                    else
                        loadTimer <= loadTimer - 1;
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

                // =============================================================
                // Phase 2: Pre-load all biases into registers
                // =============================================================
                LOAD_BIAS_REQ: begin
                    addra_bias <= load_counter[BIAS_ADDR_W-1:0];
                    loadTimer  <= 3;
                    state      <= LOAD_BIAS_WAIT;
                end

                LOAD_BIAS_WAIT: begin
                    if (loadTimer == 0)
                        state <= LOAD_BIAS_SAVE;
                    else
                        loadTimer <= loadTimer - 1;
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

                // =============================================================
                // Phase 3: Process each output pixel
                // =============================================================
                INIT_MAC: begin
                    // Broadcast: all MAC units load their bias simultaneously
                    mac_init <= 1;
                    k_x      <= 0;
                    k_y      <= 0;
                    row_base <= (out_y * IMG_W) + out_x;
                    state    <= REQ_DATA;
                end

                REQ_DATA: begin
                    // Request one image pixel (shared by all filters)
                    addra_img <= row_base + (k_y * IMG_W) + k_x;
                    loadTimer <= 3;
                    state     <= WAIT_DATA;
                end

                WAIT_DATA: begin
                    if (loadTimer == 0)
                        state <= LATCH_IMG;
                    else
                        loadTimer <= loadTimer - 1;
                end

                LATCH_IMG: begin
                    // Latch the shared image pixel
                    img_r <= data_img;
                    state <= DO_MAC;
                end

                DO_MAC: begin
                    // *** THIS IS THE PARALLEL STEP ***
                    // All NUM_FILTERS MAC units multiply img_r by their
                    // own kern_weight and accumulate - IN ONE CLOCK CYCLE.
                    // Each unit has its own hardware multiplier.
                    mac_en <= 1;

                    // Advance kernel position
                    if (k_x == KERNEL_SIZE - 1) begin
                        k_x <= 0;
                        if (k_y == KERNEL_SIZE - 1) begin
                            // Done with all 9 kernel positions
                            state <= COMPUTE_OUT;
                        end else begin
                            k_y <= k_y + 1;
                            state <= REQ_DATA;
                        end
                    end else begin
                        k_x <= k_x + 1;
                        state <= REQ_DATA;
                    end
                end

                COMPUTE_OUT: begin
                    // All units compute relu + shift + clamp simultaneously
                    mac_out_valid <= 1;
                    write_filter  <= 0;
                    state         <= WAIT_RESULT;
                end

                // =============================================================
                // Give the MAC units one cycle to actually register the new
                // `result` value. Without this, WRITE_SETUP samples the
                // previous pixel's result (off-by-one pixel bug).
                // =============================================================
                WAIT_RESULT: begin
                    state <= WRITE_SETUP;
                end

                // =============================================================
                // Phase 4: Write results (sequential - one filter per cycle)
                // =============================================================
                WRITE_SETUP: begin
                    data_out  <= filter_result[write_filter];
                    addra_out <= write_filter * (OUT_W * OUT_H) + out_y * OUT_W + out_x;
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