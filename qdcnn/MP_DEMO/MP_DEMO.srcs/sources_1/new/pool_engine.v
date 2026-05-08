`timescale 1ns / 1ps

// ============================================================================
// Module: pool_engine
// Author: V. E. Dementyev
//
// Runtime-parameterised 2x2 max pooling. Same behaviour as max_pool_2x2.v
// but with dimensions / channel count supplied at runtime so the same
// hardware handles every pool layer in a VGG-scale network.
//
// For each filter channel c in 0..cfg_channels-1:
//   For each pool output (py, px) in 0..OUT_H, 0..OUT_W:
//     read 4 pixels at (2*py, 2*px), (2*py, 2*px+1), (2*py+1, 2*px), (2*py+1, 2*px+1)
//     output max of the 4
// OUT_W = cfg_in_w / 2, OUT_H = cfg_in_h / 2.
//
// Timing note: the input/output BRAM address calculations contain two
// multiplies each (channel * plane_size + row * width). For deeper layers
// these pushed through DSPs with a long carry chain and were the worst path
// after conv_engine was pipelined. To meet 100 MHz the slow-changing
// components are now registered, with an ADDR_SETTLE state adding one cycle
// between counter updates and REQ_PIXEL so the registered addresses are fresh.
// ============================================================================

module pool_engine #(
    parameter MAX_CHANNELS = 512,
    parameter MAX_IN_W     = 48,
    parameter MAX_IN_H     = 48,
    parameter ACT_AW       = 18,
    parameter CH_IDX_W     = $clog2(MAX_CHANNELS + 1),
    parameter WH_IDX_W     = $clog2(MAX_IN_W + 1)
)(
    input  wire clk,
    input  wire rst,
    input  wire go,
    output reg  done,

    // Runtime configuration
    input  wire [CH_IDX_W-1:0]  cfg_channels,
    input  wire [WH_IDX_W-1:0]  cfg_in_w,
    input  wire [WH_IDX_W-1:0]  cfg_in_h,

    // Input activation BRAM read port
    output reg  [ACT_AW-1:0]    addra_in,
    input  wire signed [7:0]    data_in,
    output reg                  ena_in,

    // Output activation BRAM write port
    output reg  [ACT_AW-1:0]    addra_out,
    output reg  signed [7:0]    data_out,
    output reg                  we_out
);

    reg [CH_IDX_W-1:0]  cur_channel;
    reg [WH_IDX_W-1:0]  pool_x, pool_y;
    reg [1:0]           corner;
    reg signed [7:0]    current_max;
    reg [2:0]           loadTimer;

    // Output dims
    wire [WH_IDX_W-1:0] out_w = cfg_in_w >> 1;
    wire [WH_IDX_W-1:0] out_h = cfg_in_h >> 1;

    // Source pixel coordinates in the input feature map
    wire [WH_IDX_W-1:0] src_y = (pool_y << 1) | corner[1];
    wire [WH_IDX_W-1:0] src_x = (pool_x << 1) | corner[0];

    // =========================================================================
    // Registered address intermediates (break multi-DSP paths)
    // =========================================================================
    // These change at much slower rates than the clock:
    //   in_plane_size_r / out_plane_size_r : once per layer
    //   channel_base_in_r / channel_base_out_r : once per channel
    //   row_offset_in_r  : once per corner row
    //   row_offset_out_r : once per output row
    reg [ACT_AW-1:0] in_plane_size_r;
    reg [ACT_AW-1:0] out_plane_size_r;
    reg [ACT_AW-1:0] channel_base_in_r;
    reg [ACT_AW-1:0] channel_base_out_r;
    reg [ACT_AW-1:0] row_offset_in_r;
    reg [ACT_AW-1:0] row_offset_out_r;

    // Raw combinational plane sizes - do NOT chain channel_base_*_r off these
    // flops. Each flop below is depth-1 from its source counters.
    wire [ACT_AW-1:0] in_plane_size_raw  = cfg_in_w * cfg_in_h;
    wire [ACT_AW-1:0] out_plane_size_raw = out_w    * out_h;

    always @(posedge clk) begin
        if (rst) begin
            in_plane_size_r    <= 0;
            out_plane_size_r   <= 0;
            channel_base_in_r  <= 0;
            channel_base_out_r <= 0;
            row_offset_in_r    <= 0;
            row_offset_out_r   <= 0;
        end else begin
            in_plane_size_r    <= in_plane_size_raw;
            out_plane_size_r   <= out_plane_size_raw;
            channel_base_in_r  <= cur_channel * in_plane_size_raw;
            channel_base_out_r <= cur_channel * out_plane_size_raw;
            row_offset_in_r    <= src_y * cfg_in_w;
            row_offset_out_r   <= pool_y * out_w;
        end
    end

    // Final address calc: now just a 3-way sum of registered values plus a
    // small coord. No multipliers in the combinational path feeding addra_*.
    wire [ACT_AW-1:0] addr_in_calc  = channel_base_in_r  + row_offset_in_r  + src_x;
    wire [ACT_AW-1:0] addr_out_calc = channel_base_out_r + row_offset_out_r + pool_x;

    localparam IDLE        = 0,
               REQ_PIXEL   = 1,
               WAIT        = 2,
               COMPARE     = 3,
               WRITE_OUT   = 4,
               WRITE_WE    = 5,
               NEXT_POOL   = 6,
               NEXT_FILT   = 7,
               FINISH      = 8,
               ADDR_SETTLE = 9;   // 1-cycle slot for registered addresses to catch up

    reg [3:0] state;
    reg [3:0] next_after_settle;  // where to go after ADDR_SETTLE

    always @(posedge clk) begin
        if (rst) begin
            state       <= IDLE;
            done        <= 0;
            we_out      <= 0;
            ena_in      <= 0;
            addra_in    <= 0;
            addra_out   <= 0;
            data_out    <= 0;
            cur_channel <= 0;
            pool_x      <= 0;
            pool_y      <= 0;
            corner      <= 0;
            current_max <= -8'sd128;
            loadTimer   <= 0;
            next_after_settle <= IDLE;
        end else begin
            we_out <= 0;

            case (state)
                IDLE: begin
                    done <= 0;
                    if (go) begin
                        cur_channel <= 0;
                        pool_x      <= 0;
                        pool_y      <= 0;
                        corner      <= 0;
                        current_max <= -8'sd128;
                        // Give the address registers one cycle to compute
                        // based on the initial (0,0,0) counters.
                        next_after_settle <= REQ_PIXEL;
                        state             <= ADDR_SETTLE;
                    end
                end

                ADDR_SETTLE: begin
                    state <= next_after_settle;
                end

                REQ_PIXEL: begin
                    addra_in  <= addr_in_calc;
                    ena_in    <= 1;
                    loadTimer <= 2;
                    state     <= WAIT;
                end

                WAIT: begin
                    if (loadTimer == 0) state <= COMPARE;
                    else loadTimer <= loadTimer - 1;
                end

                COMPARE: begin
                    if (data_in > current_max)
                        current_max <= data_in;

                    if (corner == 2'd3) state <= WRITE_OUT;
                    else begin
                        corner            <= corner + 1;
                        // After corner update, row_offset_in_r needs a cycle
                        // to reflect new src_y (when corner[1] changes).
                        next_after_settle <= REQ_PIXEL;
                        state             <= ADDR_SETTLE;
                    end
                end

                WRITE_OUT: begin
                    data_out  <= current_max;
                    addra_out <= addr_out_calc;
                    state     <= WRITE_WE;
                end

                WRITE_WE: begin
                    we_out <= 1;
                    state  <= NEXT_POOL;
                end

                NEXT_POOL: begin
                    current_max <= -8'sd128;
                    corner      <= 0;

                    if (pool_x == out_w - 1) begin
                        pool_x <= 0;
                        if (pool_y == out_h - 1) begin
                            pool_y <= 0;
                            state  <= NEXT_FILT;
                        end else begin
                            pool_y            <= pool_y + 1;
                            next_after_settle <= REQ_PIXEL;
                            state             <= ADDR_SETTLE;
                        end
                    end else begin
                        pool_x            <= pool_x + 1;
                        next_after_settle <= REQ_PIXEL;
                        state             <= ADDR_SETTLE;
                    end
                end

                NEXT_FILT: begin
                    if (cur_channel == cfg_channels - 1)
                        state <= FINISH;
                    else begin
                        cur_channel       <= cur_channel + 1;
                        next_after_settle <= REQ_PIXEL;
                        state             <= ADDR_SETTLE;
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