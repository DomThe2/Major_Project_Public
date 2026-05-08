// Module: 2x2 Max Pooling Layer
// Author: V. E. Dementyev
//
// HOW IT WORKS:
//   For each filter, for each 2x2 block in the input:
//     1. Read pixel at (2*py, 2*px)       - corner 0
//     2. Read pixel at (2*py, 2*px+1)     - corner 1
//     3. Read pixel at (2*py+1, 2*px)     - corner 2
//     4. Read pixel at (2*py+1, 2*px+1)   - corner 3
//     5. Write the maximum of the 4 to output
//
//   No weights, no multipliers - just comparisons.
//   Reduces 26x26 -> 13x13 per filter.
//
// INPUT LAYOUT in BRAM (from conv1):
//   filter 0: addresses 0..675       (26x26 = 676 values)
//   filter 1: addresses 676..1351
//   ...
//   filter 9: addresses 6084..6759
//
// OUTPUT LAYOUT in BRAM (to conv2):
//   filter 0: addresses 0..168       (13x13 = 169 values)
//   filter 1: addresses 169..337
//   ...
//   filter 9: addresses 1521..1689

module max_pool_2x2 #(
    parameter NUM_FILTERS = 10,
    parameter IN_W        = 26,
    parameter IN_H        = 26,

    // Derived
    parameter OUT_W       = IN_W / 2,                        // 13
    parameter OUT_H       = IN_H / 2,                        // 13
    parameter IN_SIZE     = NUM_FILTERS * IN_W * IN_H,       // 6760
    parameter OUT_SIZE    = NUM_FILTERS * OUT_W * OUT_H,     // 1690
    parameter IN_ADDR_W   = $clog2(IN_SIZE),                 // 13
    parameter OUT_ADDR_W  = $clog2(OUT_SIZE),                // 11
    parameter FILTER_W    = $clog2(NUM_FILTERS)              // 4
)(
    input  wire clk,
    input  wire rst,
    input  wire go,
    output reg  done,

    // Read from conv1 output BRAM (Port B of Inter1)
    output reg [IN_ADDR_W-1:0]  addra_in,
    input  wire signed [7:0]    data_in,
    output reg                  ena_in,

    // Write to pool output BRAM (Port A of Pool BRAM)
    output reg [OUT_ADDR_W-1:0] addra_out,
    output reg signed [7:0]     data_out,
    output reg                  we_out
);

    reg [FILTER_W:0]   cur_filter;
    reg [4:0]          pool_x, pool_y;
    reg [2:0]          loadTimer;
    reg [1:0]          corner;
    reg signed [7:0]   current_max;

    // corner[0] = x offset, corner[1] = y offset
    wire [4:0] src_y;
    wire [4:0] src_x;
    assign src_y = (pool_y << 1) + corner[1];
    assign src_x = (pool_x << 1) + corner[0];

    localparam IDLE      = 0,
               REQ_PIXEL = 1,
               WAIT      = 2,
               COMPARE   = 3,
               WRITE_OUT = 4,
               WRITE_WE  = 5,
               NEXT_POOL = 6,
               NEXT_FILT = 7,
               FINISH    = 8;

    reg [3:0] state;

    always @(posedge clk) begin
        if (rst) begin
            state  <= IDLE;
            done   <= 0;
            we_out <= 0;
            ena_in <= 1;
        end else begin
            we_out <= 0;

            case (state)
                IDLE: begin
                    done <= 0;
                    if (go) begin
                        cur_filter  <= 0;
                        pool_x      <= 0;
                        pool_y      <= 0;
                        corner      <= 0;
                        current_max <= -8'sd128;
                        state       <= REQ_PIXEL;
                    end
                end

                REQ_PIXEL: begin
                    // Address: filter_offset + row*width + col
                    addra_in  <= cur_filter * (IN_W * IN_H) + src_y * IN_W + src_x;
                    loadTimer <= 3;
                    state     <= WAIT;
                end

                WAIT: begin
                    if (loadTimer == 0)
                        state <= COMPARE;
                    else
                        loadTimer <= loadTimer - 1;
                end

                COMPARE: begin
                    // Is this pixel bigger than what we've seen?
                    if (data_in > current_max)
                        current_max <= data_in;

                    if (corner == 3)
                        state <= WRITE_OUT;  // all 4 done
                    else begin
                        corner <= corner + 1;
                        state  <= REQ_PIXEL; // next corner
                    end
                end

                WRITE_OUT: begin
                    data_out  <= current_max;
                    addra_out <= cur_filter * (OUT_W * OUT_H) + pool_y * OUT_W + pool_x;
                    state     <= WRITE_WE;
                end

                WRITE_WE: begin
                    we_out <= 1;
                    state  <= NEXT_POOL;
                end

                NEXT_POOL: begin
                    current_max <= -8'sd128;
                    corner      <= 0;

                    if (pool_x == OUT_W - 1) begin
                        pool_x <= 0;
                        if (pool_y == OUT_H - 1) begin
                            pool_y <= 0;
                            state  <= NEXT_FILT;
                        end else begin
                            pool_y <= pool_y + 1;
                            state  <= REQ_PIXEL;
                        end
                    end else begin
                        pool_x <= pool_x + 1;
                        state  <= REQ_PIXEL;
                    end
                end

                NEXT_FILT: begin
                    if (cur_filter == NUM_FILTERS - 1)
                        state <= FINISH;
                    else begin
                        cur_filter <= cur_filter + 1;
                        state      <= REQ_PIXEL;
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