`timescale 1ns / 1ps

// ============================================================================
// Module: topModule
// Authors: Dom Binns, V. E. Dementyev
// ============================================================================

module topModule #(
    parameter IMG_W         = 48,
    parameter IMG_H         = 48,
    parameter OUT_SIZE      = 7,
    parameter KERNEL_SIZE   = 3,
    parameter TILE_SIZE     = 64,

    parameter MAX_CHANNELS  = 512,
    parameter MAX_WH        = 48,

    parameter ACT_AW        = $clog2(MAX_CHANNELS * MAX_WH * MAX_WH),

    parameter IMG_SIZE      = IMG_W * IMG_H,
    parameter IMG_AW        = $clog2(IMG_SIZE)
)(
    input  wire clk,
    input  wire rst,
    input  wire rx,
    output wire tx,

    output wire [IMG_AW-1:0]    addra_image,
    output wire                 ena_image,
    input  wire [7:0]           data_image,

    output wire [ACT_AW-1:0]    addra_A,
    output wire [ACT_AW-1:0]    addrb_A,
    output wire [7:0]           dina_A,
    output wire                 wea_A,
    input  wire [7:0]           doutb_A,

    output wire [ACT_AW-1:0]    addra_B,
    output wire [ACT_AW-1:0]    addrb_B,
    output wire [7:0]           dina_B,
    output wire                 wea_B,
    input  wire [7:0]           doutb_B,

    output wire [11:0]          addra_dense_A,
    output wire [15:0]          data_write_dense_A,
    input  wire [15:0]          data_read_dense_A,
    output wire                 ena_read_dense_A,
    output wire                 ena_write_dense_A,
    output wire [11:0]          addra_dense_B,
    output wire [15:0]          data_write_dense_B,
    input  wire [15:0]          data_read_dense_B,
    output wire                 ena_read_dense_B,
    output wire                 ena_write_dense_B,

    input  wire                 axiCmdReady,
    output wire                 axiCmdValid,
    output wire [71:0]          axiAddress,
    input  wire [1023:0]        axiData,
    input  wire                 axiValid,
    output wire                 axiReady,
    input  wire [31:0]          axiBaseAddress
);

    
    // Per-layer parameter table
    localparam [4:0] N_LAYERS = 12;

    function [10:0] lookup_in_channels;
        input [3:0] idx;
        case (idx)
            4'd0:  lookup_in_channels = 11'd1;
            4'd1:  lookup_in_channels = 11'd64;
            4'd2:  lookup_in_channels = 11'd64;
            4'd3:  lookup_in_channels = 11'd64;
            4'd4:  lookup_in_channels = 11'd128;
            4'd5:  lookup_in_channels = 11'd128;
            4'd6:  lookup_in_channels = 11'd128;
            4'd7:  lookup_in_channels = 11'd256;
            4'd8:  lookup_in_channels = 11'd256;
            4'd9:  lookup_in_channels = 11'd256;
            4'd10: lookup_in_channels = 11'd512;
            4'd11: lookup_in_channels = 11'd512;
            default: lookup_in_channels = 11'd0;
        endcase
    endfunction

    function [10:0] lookup_out_channels;
        input [3:0] idx;
        case (idx)
            4'd0:  lookup_out_channels = 11'd64;
            4'd1:  lookup_out_channels = 11'd64;
            4'd2:  lookup_out_channels = 11'd64;
            4'd3:  lookup_out_channels = 11'd128;
            4'd4:  lookup_out_channels = 11'd128;
            4'd5:  lookup_out_channels = 11'd128;
            4'd6:  lookup_out_channels = 11'd256;
            4'd7:  lookup_out_channels = 11'd256;
            4'd8:  lookup_out_channels = 11'd256;
            4'd9:  lookup_out_channels = 11'd512;
            4'd10: lookup_out_channels = 11'd512;
            4'd11: lookup_out_channels = 11'd512;
            default: lookup_out_channels = 11'd0;
        endcase
    endfunction

    function [6:0] lookup_in_wh;
        input [3:0] idx;
        case (idx)
            4'd0:  lookup_in_wh = 7'd48;
            4'd1:  lookup_in_wh = 7'd48;
            4'd2:  lookup_in_wh = 7'd48;
            4'd3:  lookup_in_wh = 7'd24;
            4'd4:  lookup_in_wh = 7'd24;
            4'd5:  lookup_in_wh = 7'd24;
            4'd6:  lookup_in_wh = 7'd12;
            4'd7:  lookup_in_wh = 7'd12;
            4'd8:  lookup_in_wh = 7'd12;
            4'd9:  lookup_in_wh = 7'd6;
            4'd10: lookup_in_wh = 7'd6;
            4'd11: lookup_in_wh = 7'd6;
            default: lookup_in_wh = 7'd0;
        endcase
    endfunction

    function lookup_is_pool;
        input [3:0] idx;
        case (idx)
            4'd2,4'd5,4'd8,4'd11: lookup_is_pool = 1'b1;
            default:              lookup_is_pool = 1'b0;
        endcase
    endfunction

    function [31:0] lookup_conv_weight_base;
        input [3:0] idx;
        case (idx)
            4'd0:  lookup_conv_weight_base = 32'd0;
            4'd1:  lookup_conv_weight_base = 32'd1280;
            4'd3:  lookup_conv_weight_base = 32'd75136;
            4'd4:  lookup_conv_weight_base = 32'd222848;
            4'd6:  lookup_conv_weight_base = 32'd518016;
            4'd7:  lookup_conv_weight_base = 32'd1108352;
            4'd9:  lookup_conv_weight_base = 32'd2288512;
            4'd10: lookup_conv_weight_base = 32'd4648832;
            default: lookup_conv_weight_base = 32'd0;
        endcase
    endfunction

    localparam [31:0] DENSE_WEIGHT_BASE = 32'd9368448;

    function [4:0] lookup_out_shift;
        input [3:0] idx;
        case (idx)
            4'd0:  lookup_out_shift = 5'd4;
            4'd1:  lookup_out_shift = 5'd9;
            4'd3:  lookup_out_shift = 5'd9;
            4'd4:  lookup_out_shift = 5'd10;
            4'd6:  lookup_out_shift = 5'd10;
            4'd7:  lookup_out_shift = 5'd10;
            4'd9:  lookup_out_shift = 5'd10;
            4'd10: lookup_out_shift = 5'd10;
            default: lookup_out_shift = 5'd7;
        endcase
    endfunction

    function [4:0] lookup_bias_shift;
        input [3:0] idx;
        case (idx)
            4'd0:  lookup_bias_shift = 5'd3;
            4'd1:  lookup_bias_shift = 5'd8;
            4'd3:  lookup_bias_shift = 5'd9;
            4'd4:  lookup_bias_shift = 5'd10;
            4'd6:  lookup_bias_shift = 5'd10;
            4'd7:  lookup_bias_shift = 5'd10;
            4'd9:  lookup_bias_shift = 5'd11;
            4'd10: lookup_bias_shift = 5'd9;
            default: lookup_bias_shift = 5'd12;
        endcase
    endfunction

    reg [3:0] layer_idx;
    wire write_to_B = layer_idx[0];
    wire read_from_B = ~layer_idx[0];
    wire layer_is_conv1 = (layer_idx == 4'd0);

    wire [9:0]  cur_Cin   = lookup_in_channels (layer_idx);
    wire [9:0]  cur_Cout  = lookup_out_channels(layer_idx);
    wire [5:0]  cur_InWH  = lookup_in_wh       (layer_idx);
    wire        cur_IsPool = lookup_is_pool    (layer_idx);
    wire [31:0] cur_Wbase = lookup_conv_weight_base(layer_idx);
    wire [4:0]  cur_OutShift  = lookup_out_shift (layer_idx);
    wire [4:0]  cur_BiasShift = lookup_bias_shift(layer_idx);


    // CONV ENGINE  (UNCHANGED)
    wire                   conv_go;
    wire                   conv_done;

    wire [ACT_AW-1:0]      conv_addra_in;
    wire                   conv_ena_in;
    wire signed [7:0]      conv_data_in;

    wire [ACT_AW-1:0]      conv_addra_out;
    wire signed [7:0]      conv_data_out;
    wire                   conv_we_out;

    wire [31:0]            conv_weight_addr;
    wire                   conv_weight_en;
    wire [9:0]             conv_no_bytes;
    wire [1023:0]          conv_weight_data;
    wire                   conv_weight_valid;

    wire conv_weight_en_ready;

    conv_engine #(
        .MAX_IN_CHANNELS (MAX_CHANNELS),
        .MAX_OUT_CHANNELS(MAX_CHANNELS),
        .MAX_IN_W        (MAX_WH),
        .MAX_IN_H        (MAX_WH),
        .KERNEL_SIZE     (KERNEL_SIZE),
        .TILE_SIZE       (TILE_SIZE)
    ) u_conv_engine (
        .clk(clk), .rst(rst),
        .go  (conv_go),
        .done(conv_done),

        .cfg_in_channels     (cur_Cin),
        .cfg_out_channels    (cur_Cout),
        .cfg_in_w            (cur_InWH),
        .cfg_in_h            (cur_InWH),
        .cfg_weight_base_addr(cur_Wbase),
        .cfg_out_shift       (cur_OutShift),
        .cfg_bias_shift      (cur_BiasShift),
        .weight_en_ready(conv_weight_en_ready),

        .addra_in (conv_addra_in),
        .data_in  (conv_data_in),
        .ena_in   (conv_ena_in),

        .addra_out(conv_addra_out),
        .data_out (conv_data_out),
        .we_out   (conv_we_out),

        .weight_addr (conv_weight_addr),
        .weight_en   (conv_weight_en),
        .no_bytes    (conv_no_bytes),
        .weight_data (conv_weight_data),
        .weight_valid(conv_weight_valid)
    );



    // POOL ENGINE (UNCHANGED)
    wire                   pool_go;
    wire                   pool_done;
    wire [ACT_AW-1:0]      pool_addra_in;
    wire                   pool_ena_in;
    wire signed [7:0]      pool_data_in;
    wire [ACT_AW-1:0]      pool_addra_out;
    wire signed [7:0]      pool_data_out;
    wire                   pool_we_out;

    pool_engine #(
        .MAX_CHANNELS(MAX_CHANNELS),
        .MAX_IN_W    (MAX_WH),
        .MAX_IN_H    (MAX_WH),
        .ACT_AW      (ACT_AW)
    ) u_pool_engine (
        .clk(clk), .rst(rst),
        .go  (pool_go),
        .done(pool_done),

        .cfg_channels(cur_Cin),
        .cfg_in_w    (cur_InWH),
        .cfg_in_h    (cur_InWH),

        .addra_in (pool_addra_in),
        .data_in  (pool_data_in),
        .ena_in   (pool_ena_in),

        .addra_out(pool_addra_out),
        .data_out (pool_data_out),
        .we_out   (pool_we_out)
    );


    // DENSE ENGINE (UNCHANGED)
    wire                   dense_go;
    wire                   dense_done;
    wire [7:0]             dense_out;

    wire [12:0]            dense_addra_image;
    wire                   dense_ena_image;
    wire [7:0]             dense_data_image;

    wire                   dense_axiCmdValid;
    wire [71:0]            dense_axiAddress;
    wire                   dense_axiReady;

    wire conv_axiCmdReady_mux;
    wire conv_axiValid_mux;
    wire dense_axiCmdReady_mux;
    wire dense_axiValid_mux;

    network_module u_dense (
        .clk(clk), .rst(rst),
        .go  (dense_go),
        .done(dense_done),
        .data_out(dense_out),

        .addra_image_7(dense_addra_image),
        .ena_image_7 (dense_ena_image),
        .data_image_7(dense_data_image),

        .addra_activation_A      (addra_dense_A),
        .data_write_activation_A (data_write_dense_A),
        .data_read_activation_A  (data_read_dense_A),
        .ena_read_activation_A   (ena_read_dense_A),
        .ena_write_activation_A  (ena_write_dense_A),
        .addra_activation_B      (addra_dense_B),
        .data_write_activation_B (data_write_dense_B),
        .data_read_activation_B  (data_read_dense_B),
        .ena_read_activation_B   (ena_read_dense_B),
        .ena_write_activation_B  (ena_write_dense_B),

        .axiCmdReady   (dense_axiCmdReady_mux),
        .axiCmdValid   (dense_axiCmdValid),
        .axiAddress    (dense_axiAddress),
        .axiData       (axiData),
        .axiValid      (dense_axiValid_mux),
        .axiReady      (dense_axiReady),
        .axiBaseAddress(axiBaseAddress + DENSE_WEIGHT_BASE)
    );


    // AXI MUX (UNCHANGED)
    reg axi_sel;

    wire [71:0]  conv_axiAddress;
    wire         conv_axiCmdValid;
    wire         conv_axiReady;

    axi_driver u_conv_axi (
        .clk(clk), .rst(rst),
        .addr      (conv_weight_addr),
        .en        (conv_weight_en),
        .bytes     (conv_no_bytes),
        .data      (conv_weight_data),
        .valid     (conv_weight_valid),
        .en_ready(conv_weight_en_ready),

        .axiCmdReady   (conv_axiCmdReady_mux),
        .axiCmdValid   (conv_axiCmdValid),
        .axiAddress    (conv_axiAddress),
        .axiData       (axiData),
        .axiValid      (conv_axiValid_mux),
        .axiReady      (conv_axiReady),
        .axiBaseAddress(axiBaseAddress)
    );

    assign axiAddress  = axi_sel ? dense_axiAddress  : conv_axiAddress;
    assign axiCmdValid = axi_sel ? dense_axiCmdValid : conv_axiCmdValid;
    assign axiReady    = axi_sel ? dense_axiReady    : conv_axiReady;

    assign conv_axiCmdReady_mux  = (~axi_sel) & axiCmdReady;
    assign conv_axiValid_mux     = (~axi_sel) & axiValid;
    assign dense_axiCmdReady_mux = ( axi_sel) & axiCmdReady;
    assign dense_axiValid_mux    = ( axi_sel) & axiValid;


    // ACTIVATION BRAM MUX (UNCHANGED)
    wire [ACT_AW-1:0]  active_read_addr;
    wire [7:0]         active_read_data;
    wire               active_read_ena;
    wire [ACT_AW-1:0]  active_write_addr;
    wire [7:0]         active_write_data;
    wire               active_write_we;

    wire engine_is_pool = cur_IsPool;
    assign active_read_addr  = engine_is_pool ? pool_addra_in  : conv_addra_in;
    assign active_read_ena   = engine_is_pool ? pool_ena_in    : conv_ena_in;
    assign active_write_addr = engine_is_pool ? pool_addra_out : conv_addra_out;
    assign active_write_data = engine_is_pool ? pool_data_out  : conv_data_out;
    assign active_write_we   = engine_is_pool ? pool_we_out    : conv_we_out;

    assign addra_image = active_read_addr[IMG_AW-1:0];
    assign ena_image   = layer_is_conv1 & active_read_ena;

    wire [7:0] active_read_data_mux;
    assign active_read_data_mux =
        layer_is_conv1 ? data_image :
        read_from_B    ? doutb_B    :
                         doutb_A;

    assign addra_A = active_write_addr;
    assign dina_A  = active_write_data;
    assign wea_A   = active_write_we & ~write_to_B;

    assign addra_B = active_write_addr;
    assign dina_B  = active_write_data;
    assign wea_B   = active_write_we &  write_to_B;

    wire in_dense_stage;
    assign addrb_A = in_dense_stage ? {{(ACT_AW-13){1'b0}}, dense_addra_image}
                                    : active_read_addr;
    assign addrb_B = in_dense_stage ? {{(ACT_AW-13){1'b0}}, dense_addra_image}
                                    : active_read_addr;

    assign dense_data_image = doutb_B;

    assign conv_data_in = active_read_data_mux;
    assign pool_data_in = active_read_data_mux;


    // UART (UNCHANGED)
    wire [7:0] rx_data;
    wire       rx_valid;
    wire       tx_busy;
    reg        tx_start;
    reg [7:0]  tx_data;

    rxModule rx_inst (.clk(clk), .rst(rst), .rx(rx), .data_out(rx_data), .data_valid(rx_valid));
    txModule tx_inst (.clk(clk), .rst(rst), .tx_start(tx_start), .data_in(tx_data), .tx(tx), .busy(tx_busy));

   
    reg [7:0] crc8_acc;
    reg [7:0] crc_buf [0:11];   // one CRC per layer (12 layers)
    reg [7:0] result_byte;       // ASCII digit for the dense result

    function [7:0] crc8_step;
        input [7:0] crc_in;
        input [7:0] data_in;
        reg [7:0] c;
        integer i;
        begin
            c = crc_in ^ data_in;
            for (i = 0; i < 8; i = i + 1)
                c = c[7] ? ((c << 1) ^ 8'h07) : (c << 1);
            crc8_step = c;
        end
    endfunction

    integer ci;

   
    // MAIN FSM (MODIFIED: burst-TX of 13 bytes instead of single byte)
    localparam S_INIT          = 0,
               S_LAYER_GO      = 1,
               S_LAYER_WAIT    = 2,
               S_LAYER_NEXT    = 3,
               S_DENSE_GO      = 4,
               S_DENSE_WAIT    = 5,
               S_TX_START      = 6,
               S_TX_WAIT_HIGH  = 7,
               S_TX_WAIT_LOW   = 8,
               S_TX_NEXT       = 9,
               S_WAIT_RX_LOW   = 10,
               S_ECHO_LOAD     = 11;

    reg [3:0] cur_state, nxt_state;
    reg [4:0] tx_idx;           
    reg       conv_go_r, pool_go_r, dense_go_r;
    assign conv_go  = conv_go_r  & ~cur_IsPool;
    assign pool_go  = pool_go_r  &  cur_IsPool;
    assign dense_go = dense_go_r;

    reg rx_valid_r, tx_busy_r, conv_done_r, pool_done_r, dense_done_r;
    reg [7:0] dense_out_r;
    always @(posedge clk) begin
        if (rst) begin
            rx_valid_r   <= 1'b0;
            tx_busy_r    <= 1'b0;
            conv_done_r  <= 1'b0;
            pool_done_r  <= 1'b0;
            dense_done_r <= 1'b0;
            dense_out_r  <= 8'h00;
        end else begin
            rx_valid_r   <= rx_valid;
            tx_busy_r    <= tx_busy;
            conv_done_r  <= conv_done;
            pool_done_r  <= pool_done;
            dense_done_r <= dense_done;
            dense_out_r  <= dense_out;
        end
    end

    wire current_layer_done = cur_IsPool ? pool_done_r : conv_done_r;
    assign in_dense_stage = (cur_state == S_DENSE_GO) || (cur_state == S_DENSE_WAIT);

    always @(*) begin
        if (cur_state == S_DENSE_GO || cur_state == S_DENSE_WAIT)
            axi_sel = 1'b1;
        else
            axi_sel = 1'b0;
    end

    // *** CRC8 ACCUMULATOR ***
    always @(posedge clk) begin
        if (rst) begin
            crc8_acc <= 8'h00;
            for (ci = 0; ci < 12; ci = ci + 1) crc_buf[ci] <= 8'h00;
        end else begin
            // Reset at start of each layer
            if (cur_state == S_LAYER_GO)
                crc8_acc <= 8'h00;
            // Update on every byte written to activation BRAM
            else if (active_write_we)
                crc8_acc <= crc8_step(crc8_acc, active_write_data);
            // Capture at end of each layer (one-cycle pulse on S_LAYER_NEXT)
            if (cur_state == S_LAYER_NEXT)
                crc_buf[layer_idx] <= crc8_acc;
        end
    end

    // Next-state logic
    always @(*) begin
        nxt_state = cur_state;
        case (cur_state)
            S_INIT:        if (rx_valid_r) begin
                               if (rx_data == 8'h67) nxt_state = S_LAYER_GO;
                               else                  nxt_state = S_ECHO_LOAD;
                           end
            S_ECHO_LOAD:   nxt_state = S_TX_START;
            S_LAYER_GO:    nxt_state = S_LAYER_WAIT;
            S_LAYER_WAIT:  if (current_layer_done) nxt_state = S_LAYER_NEXT;
            S_LAYER_NEXT:  nxt_state = (layer_idx == N_LAYERS - 1) ? S_DENSE_GO : S_LAYER_GO;
            S_DENSE_GO:    nxt_state = S_DENSE_WAIT;
            S_DENSE_WAIT:  if (dense_done_r) nxt_state = S_TX_START;
            S_TX_START:    nxt_state = S_TX_WAIT_HIGH;
            // Wait for tx_busy_r to assert HIGH (one-byte transmission begins)
            S_TX_WAIT_HIGH:if (tx_busy_r)   nxt_state = S_TX_WAIT_LOW;
            // Wait for tx_busy_r to drop LOW (transmission complete)
            S_TX_WAIT_LOW: if (!tx_busy_r) begin
                               if (tx_idx == 5'd12) nxt_state = S_WAIT_RX_LOW;
                               else                 nxt_state = S_TX_NEXT;
                           end
            S_TX_NEXT:     nxt_state = S_TX_START;
            S_WAIT_RX_LOW: if (!rx_valid_r) nxt_state = S_INIT;
            default:       nxt_state = S_INIT;
        endcase
    end

    // State + control pulses
    always @(posedge clk) begin
        conv_go_r  <= 0;
        pool_go_r  <= 0;
        dense_go_r <= 0;
        tx_start   <= 0;

        if (rst) begin
            cur_state   <= S_INIT;
            layer_idx   <= 0;
            tx_data     <= 8'h00;
            tx_idx      <= 0;
            result_byte <= 8'h3F;
        end else begin
            cur_state <= nxt_state;

            case (cur_state)
                S_INIT: begin
                    layer_idx <= 0;
                    tx_idx    <= 0;
                end
                S_LAYER_GO: begin
                    if (cur_IsPool) pool_go_r <= 1;
                    else            conv_go_r <= 1;
                end
                S_LAYER_NEXT: begin
                    if (layer_idx < N_LAYERS - 1)
                        layer_idx <= layer_idx + 1;
                end
                S_DENSE_GO: begin
                    dense_go_r <= 1;
                end
                S_DENSE_WAIT: begin
                    if (dense_done_r) begin
                        // Convert digit to ASCII
                        if (dense_out_r == 8'hFF) result_byte <= 8'h3F;
                        else                       result_byte <= dense_out_r + 8'h30;
                        // Load FIRST byte to send: CRC of layer 0 (conv1)
                        tx_data <= crc_buf[0];
                        tx_idx  <= 5'd0;
                    end
                end
                S_TX_START: begin
                    tx_start <= 1;
                end
                S_TX_NEXT: begin
                    // Increment tx_idx and load next byte
                    tx_idx <= tx_idx + 5'd1;
                    if (tx_idx + 5'd1 < 5'd12)
                        tx_data <= crc_buf[tx_idx + 5'd1];
                    else
                        tx_data <= result_byte;
                end
                S_ECHO_LOAD: begin
                    tx_data <= rx_data;
                    tx_idx  <= 5'd12;  // single byte echo: pretend we're already on last
                end
            endcase
        end
    end

endmodule