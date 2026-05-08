`timescale 1ns / 1ps


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

    parameter MAX_CACHE_CIN    = 128,

    parameter MAX_CIN_PIXELS  = MAX_IN_CHANNELS * MAX_IN_W * MAX_IN_H,
    parameter ACT_AW          = $clog2(MAX_CIN_PIXELS),
    parameter FILTER_IDX_W    = $clog2(TILE_SIZE),
    parameter CHAN_IDX_W      = $clog2(MAX_IN_CHANNELS + 1),
    parameter WH_IDX_W        = $clog2(MAX_IN_W + 1),
    parameter KERNEL_TOTAL    = KERNEL_SIZE * KERNEL_SIZE,
    parameter KPOS_W          = $clog2(KERNEL_TOTAL),

    parameter CACHE_DEPTH     = MAX_CACHE_CIN * KERNEL_TOTAL,  
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
               C_PREP_ADDR    = 23,    
               C_FILL_REQ     = 24,   
               C_FILL_WAIT1   = 25,   
               C_FILL_WAIT2   = 26;   

    (* MARK_DEBUG = "TRUE" *) reg [4:0] state;

    reg [ACT_AW-1:0] channel_base_r;
    reg [ACT_AW-1:0] row_offset_r;
    reg [ACT_AW-1:0] out_plane_size_r;
    reg [ACT_AW-1:0] out_row_offset_r;

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

    wire [ACT_AW-1:0] addr_in_calc = channel_base_r + row_offset_r + $unsigned(src_x);

    (* ram_style = "block" *)
    reg [TILE_SIZE*8-1:0] weight_cache [0:CACHE_DEPTH-1];

    reg [CACHE_AW:0] fill_idx;

    wire [CACHE_AW-1:0] cache_read_addr =
        cur_channel * KERNEL_TOTAL + (k_y * KERNEL_SIZE + k_x);
    wire [TILE_SIZE*8-1:0] cache_read_data = weight_cache[cache_read_addr];

    wire use_cache = (cfg_in_channels <= MAX_CACHE_CIN);

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


    reg [2:0] loadTimer;
    integer   bi, wi;

    localparam P_IDLE   = 0,
               P_REQ    = 1,
               P_WAIT   = 2,
               P_WAIT2  = 3,
               P_SETTLE = 4;

    (* MARK_DEBUG = "TRUE" *) reg [2:0] prod_state;

    reg prod_armed;

    wire cons_owns_axi = (state == C_LOAD_BIAS) || (state == C_WAIT_BIAS) ||
                         (state == C_BIAS_SETTLE) ||
                         (state == C_FILL_REQ)    || (state == C_FILL_WAIT1) ||
                         (state == C_FILL_WAIT2);
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
                            fill_idx <= 0;
                            state    <= C_FILL_REQ;
                        end else begin
                            state <= C_INIT_MAC;
                        end
                    end
                end

                C_FILL_REQ: begin
                    if (fill_idx >= cfg_in_channels * KERNEL_TOTAL) begin
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
                    prod_armed  <= !use_cache;
                    state       <= C_POP_WEIGHT;
                end
                C_PREP_ADDR: begin
                    state <= C_POP_WEIGHT;
                end

                C_POP_WEIGHT: begin
                    if (use_cache) begin
                        for (wi = 0; wi < TILE_SIZE; wi = wi + 1)
                            weight_reg[wi] <= cache_read_data[wi*8 +: 8];

                        if (is_padding) begin
                            ena_in <= 0;
                            state  <= C_LATCH_PIXEL;
                        end else begin
                            addra_in  <= addr_in_calc;
                            ena_in    <= 1;
                            loadTimer <= 0;   
                            state     <= C_WAIT_PIXEL;
                        end
                    end else begin
                        if (!fifo_empty) begin
                            for (wi = 0; wi < TILE_SIZE; wi = wi + 1)
                                weight_reg[wi] <= fifo_head[wi*8 +: 8];
                            fifo_pop <= 1;
                            if (is_padding) begin
                                ena_in <= 0;
                                state <= C_LATCH_PIXEL;
                            end else begin
                                addra_in  <= addr_in_calc;
                                ena_in    <= 1;
                                loadTimer <= 0; 
                                state     <= C_WAIT_PIXEL;
                            end
                        end
                    end
                end

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

            case (prod_state)
                P_IDLE: begin
                    if (prod_armed && !cons_owns_axi) begin
                        prod_channel <= 0;
                        prod_k_x     <= 0;
                        prod_k_y     <= 0;
                        prod_state   <= P_SETTLE;
                    end
                end

                P_SETTLE: begin
                    prod_state <= P_REQ;
                end

                P_REQ: begin
                    if (cons_owns_axi) begin
                        // Hold off
                    end else if (fifo_full) begin
                        // Hold off
                    end else begin
                        weight_addr <= prod_weight_addr_r;
                        no_bytes    <= 10'd128;
                        weight_en   <= 1;
                        prod_state  <= P_WAIT;
                    end
                end

                P_WAIT: begin
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