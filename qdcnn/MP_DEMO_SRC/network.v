`timescale 1ns / 1ps


// ============================================================================
// Module: neural network parent
// Authors: Dom Binns
// ============================================================================


module network_module (

    input wire clk,
    input wire rst,
    input wire go,
    output reg done,
    output reg [7:0] data_out,
    
    output reg [12:0]  addra_image_7,
    output reg        ena_image_7,
    input wire [7:0]  data_image_7, 

    output wire [11:0]  addra_activation_A,
    output wire [15:0] data_write_activation_A,
    input wire [15:0]  data_read_activation_A, 
    output reg         ena_read_activation_A,
    output wire        ena_write_activation_A, 
    output wire [11:0]  addra_activation_B,
    output wire [15:0] data_write_activation_B,
    input wire [15:0]  data_read_activation_B, 
    output reg         ena_read_activation_B,
    output wire        ena_write_activation_B,
    
    input wire        axiCmdReady,
    output wire       axiCmdValid,
    output wire [71:0] axiAddress,
    input wire [1023:0] axiData,
    input wire        axiValid,
    output wire       axiReady,
    input wire [31:0] axiBaseAddress
);

    parameter IMG_SIZE    = 4608;
    parameter HIDDEN_0_SIZE = 4096;
    parameter HIDDEN_1_SIZE = 4096;
    parameter LAYER_NUMBER = 2;
    parameter OUT_SIZE = 7;
    parameter THRESHOLD = 0;
    parameter INPUT_SCALE  = 32;
    parameter WEIGHT_SCALE = 128;
    parameter HIDDEN_SCALE = 128;
    parameter THREADS = 64;

    function [3:0] get_layer_shift;
        input [3:0] layer;
        case(layer)
            0: get_layer_shift = 5;
            1: get_layer_shift = 7;
            2: get_layer_shift = 0;
            default: get_layer_shift = 0;
        endcase
    endfunction    

    function automatic [31:0] get_layer_weight_offset;
        input [3:0] layer;
        case(layer)
            0: get_layer_weight_offset = 0;
            1: get_layer_weight_offset = IMG_SIZE*HIDDEN_0_SIZE + HIDDEN_0_SIZE;
            2: get_layer_weight_offset = HIDDEN_0_SIZE*HIDDEN_1_SIZE + HIDDEN_1_SIZE + get_layer_weight_offset(1);
            default: get_layer_weight_offset = 0;
        endcase
    endfunction
    
    function [15:0] get_layer_size;
        input [3:0] layer;
        case(layer)
            0: get_layer_size = IMG_SIZE;
            1: get_layer_size = HIDDEN_0_SIZE;
            2: get_layer_size = HIDDEN_1_SIZE;
            3: get_layer_size = OUT_SIZE;
            default: get_layer_size = 0;
        endcase
    endfunction
    
    function [3:0] get_bias_shift;
        input [3:0] layer;
        case(layer)
            0: get_bias_shift = 0;
            1: get_bias_shift = 2;
            2: get_bias_shift = 2;
            default: get_bias_shift = 0;
        endcase 
    endfunction
    
    function [31:0] get_tile_stride;
        input [3:0] layer;
        case(layer)
            0: get_tile_stride = THREADS * (1 + IMG_SIZE);
            1: get_tile_stride = THREADS * (1 + HIDDEN_0_SIZE);
            2: get_tile_stride = THREADS * (1 + HIDDEN_1_SIZE);
            default: get_tile_stride = 0;
        endcase
    endfunction

    // axi driver wires
    reg  [31:0] weight_addr;
    reg         weight_en;
    wire [1023:0]  weight_data;
    wire        weight_valid;
    reg weight_valid_r;
    reg data_valid_r;
    reg [9:0]   no_bytes;
    reg [31:0] weight_base_addr;
    reg [31:0] weight_base_addr_interim;
    
    reg [1023:0] weight_cache;
    reg [15:0] data_cache;

    axi_driver axi_driver_inst (
        .clk(clk),
        .rst(rst),
        .addr(weight_addr),
        .en(weight_en),
        .bytes(no_bytes),
        .data(weight_data),
        .valid(weight_valid),
        .axiCmdReady(axiCmdReady),
        .axiCmdValid(axiCmdValid),
        .axiAddress(axiAddress),
        .axiData(axiData),
        .axiValid(axiValid),
        .axiReady(axiReady),
        .axiBaseAddress(axiBaseAddress) 
    );
    
    (* MARK_DEBUG = "TRUE" *) reg signed [15:0] x;
    reg signed [7:0] b [THREADS-1:0];
    reg signed [7:0] w [THREADS-1:0];
    wire signed [32:0] y [THREADS-1:0];
    reg signed [32:0] y_inter;
    (* MARK_DEBUG = "TRUE" *) reg tile_go;
    (* MARK_DEBUG = "TRUE" *) reg tile_load;
    wire [THREADS-1:0] tile_done;
    (* MARK_DEBUG = "TRUE" *) reg [12:0] node_count;
    reg [3:0] current_out_shift;
    reg [3:0] current_bias_shift;
    (* MARK_DEBUG = "TRUE" *) wire all_done;
    assign all_done = &tile_done;
    
    genvar num;
    generate
        for (num = 0; num < THREADS; num = num + 1) begin : TILE
            node_module node (
                .clk(clk),
                .rst(rst),
                .go(tile_go),
                .load(tile_load),
                .done(tile_done[num]),
                .node_count(node_count),
                .out_shift(current_out_shift),
                .bias_shift(current_bias_shift),
                .data_input(x),
                .bias_input(b[num]),
                .weight_input(w[num]),
                .data_output(y[num])
            );
        end
    endgenerate
       

    reg [7:0] i;
    reg [7:0] j;
    reg [6:0] write_idx;
    reg signed [32:0] currentLargest;
    (* MARK_DEBUG = "TRUE" *) reg [31:0]        inputIndex;
    (* MARK_DEBUG = "TRUE" *) reg [7:0] tile;
    (* MARK_DEBUG = "TRUE" *) reg [3:0] layer; 

    localparam IDLE          = 0,
               RESET         = 1,
               NODES_GO      = 2,
               ARG_MAX1      = 5,
               FINISH        = 6,
               GET_BIAS      = 8,
               PIPE_START    = 9,
               DRAIN         = 10,
               WRITE_OUT     = 11,
               ARG_MAX2      = 12,
               GET_BIAS_WAIT = 13;
               
    (* MARK_DEBUG = "TRUE" *) reg [4:0] state = IDLE;
    reg [1:0] loadTimer;
    
    reg ping_pong;    
    reg [11:0]  addra_activation_write;
    reg [11:0]  addra_activation_read;
    reg [15:0] data_write_activation;
    reg        ena_write_activation;
   
    assign addra_activation_A      = ping_pong ? addra_activation_read  : addra_activation_write; 
    assign addra_activation_B      = ping_pong ? addra_activation_write : addra_activation_read;
    assign data_write_activation_A = ping_pong ? 16'd0                  : data_write_activation;
    assign data_write_activation_B = ping_pong ? data_write_activation  : 16'd0;
    assign ena_write_activation_A  = ping_pong ? 1'b0                   : ena_write_activation;
    assign ena_write_activation_B  = ping_pong ? ena_write_activation   : 1'b0;
    wire [15:0] data_read_activation = ping_pong ? data_read_activation_A : data_read_activation_B;
    
    (* MARK_DEBUG = "TRUE", KEEP = "TRUE" *) wire [15:0] dbg_activation_read = data_read_activation;
    (* MARK_DEBUG = "TRUE", KEEP = "TRUE" *) wire [11:0]  dbg_act_raddr = addra_activation_read;

    always @(posedge clk) begin


        ena_read_activation_A <= 1;
        ena_read_activation_B <= 1;
        ena_image_7           <= 1;
        if (rst) begin
            data_out  <= 0;
            state     <= IDLE;
            done      <= 0;
            loadTimer <= 0;
            no_bytes <= THREADS;
            weight_en <= 0;
        end else begin
    
            case(state)
            
            IDLE: begin
                done <= 0;
                if (go) state <= RESET;
            end
                
            RESET: begin
                addra_image_7          <= 0;
                currentLargest         <= -33'sd4294967296;
                i                      <= 0;
                inputIndex             <= 0;
                weight_en              <= 0;
                loadTimer              <= 0;
                layer <= 0;
                tile <= 0;
                tile_go <= 0;
                tile_load <= 0;
                node_count <= get_layer_size(0);
                weight_valid_r <= 0;
                data_valid_r <= 0;
                no_bytes <= THREADS;
                state                  <= GET_BIAS;
                ping_pong <= 0;
                ena_write_activation <= 0;
            end

            GET_BIAS: begin
                tile_go <= 0;
                weight_addr <= tile * get_tile_stride(layer) + get_layer_weight_offset(layer);
                ena_write_activation <= 0;
                weight_en <= 1;    
                weight_base_addr_interim <= tile * get_tile_stride(layer);
                state <= GET_BIAS_WAIT;
            end
            
            GET_BIAS_WAIT: begin
                tile_go <= 0;
                weight_en <= 0;
                if (weight_valid) begin
                    current_bias_shift <= get_bias_shift(layer);
                    current_out_shift <= get_layer_shift(layer);
                    for (j = 0; j < THREADS; j = j + 1) begin
                        b[j] <= weight_data[j*8 +: 8];
                    end    
                    tile_load <= 1;
                    state <= PIPE_START;
                end
            end
            
            
            PIPE_START: begin
                tile_load <= 0;
                weight_base_addr <= weight_base_addr_interim + get_layer_weight_offset(layer) + THREADS;
                weight_addr <= weight_base_addr_interim + get_layer_weight_offset(layer) + THREADS;
                weight_en <= 1;   
                addra_image_7 <= 0;
                addra_activation_read <= 0;
                inputIndex <= 0;
                loadTimer <= 2;
                state <= NODES_GO;     
            end
            
            
            NODES_GO: begin
                tile_go <= 0;
                weight_en <= 0;
                if (inputIndex < get_layer_size(layer)) begin
                    if (weight_valid && !weight_valid_r) begin
                        weight_cache <= weight_data;
                        weight_valid_r   <= 1;
                        loadTimer        <= 2;
                        if (inputIndex + 1 < get_layer_size(layer)) begin
                            weight_addr <= weight_base_addr + (inputIndex + 1) * THREADS;
                            weight_en <= 1;    
                        end
                    end
                    if (loadTimer != 0) loadTimer <= loadTimer - 1;
                    if (loadTimer == 0 && !data_valid_r) begin 
                        if (layer == 0) data_cache <= {{8{data_image_7[7]}}, data_image_7};
                        else data_cache <= data_read_activation;
                        addra_image_7 <= inputIndex + 1;
                        addra_activation_read <= inputIndex + 1;
                        loadTimer <= 2;
                        data_valid_r <= 1;
                    end
                end
                if (weight_valid_r && data_valid_r) begin
                    weight_valid_r <= 0;
                    data_valid_r <= 0;
                                            
                    x <= data_cache;
                    for (j = 0; j < THREADS; j = j + 1) begin
                        w[j] <= weight_cache[j*8 +: 8];
                    end
                    tile_go <= 1;
                    
                    
                    inputIndex <= inputIndex + 1;
                    
                    if (inputIndex < get_layer_size(layer) - 1) begin
                        state <= NODES_GO;
                    end else begin
                        loadTimer <= 2;
                        state <= DRAIN;
                    end
                end
            end  
            
            DRAIN: begin
                tile_go <= 0;
                if (all_done) begin
                    write_idx <= 0;
                    state <= WRITE_OUT;
                end
            end  
                        
            WRITE_OUT: begin
                ena_write_activation <= 1;
                addra_activation_write <= write_idx + (THREADS * tile);
                data_write_activation  <= y[write_idx][15:0];
                
                if (write_idx == THREADS - 1) begin
                    node_count <= get_layer_size(layer);
                    loadTimer <= 3;
                    inputIndex <= 0;
                    
                    if ((tile + 1) * THREADS < get_layer_size(layer + 1)) begin
                        tile <= tile + 1;
                        state <= GET_BIAS;
                    end else begin 
                        if (layer == LAYER_NUMBER) begin
                            loadTimer <= 2;
                            i <= 0;
                            state <= ARG_MAX1;
                        end else begin
                            node_count <= get_layer_size(layer+1);
                            layer <= layer + 1;
                            tile <= 0;
                            ping_pong <= ~ping_pong;
                            state <= GET_BIAS;
                        end
                    end
                end else begin
                    write_idx <= write_idx + 1;
                end
            end
            
            
            ARG_MAX1: begin
                tile_go <= 0;
                ena_write_activation <= 0;
                
                if (loadTimer != 0) loadTimer <= loadTimer - 1;
                else if (all_done) begin
                    y_inter <= y[i];
                    if (i==0) begin
                        $display("[%0t]  network.v ARG_MAX: y[0..6] = %0d %0d %0d %0d %0d %0d %0d",
                        $time,
                        $signed(y[0]), $signed(y[1]), $signed(y[2]),
                        $signed(y[3]), $signed(y[4]), $signed(y[5]),
                        $signed(y[6]));
                                    
                        data_out <= 0;
                        currentLargest <= -33'sd4294967296;
                    end 
                    state <= ARG_MAX2;
                end
            end           
               
            ARG_MAX2: begin
                if (y_inter > currentLargest) begin
                    currentLargest <= y_inter;
                    data_out       <= i;
                end
                if (i == OUT_SIZE-1) state <= FINISH;
                else begin
                    i <= i + 1;
                    state <= ARG_MAX1;
                end  
            end
            
            FINISH: begin
                if (currentLargest < THRESHOLD) data_out <= 8'hFF;
                done  <= 1;
                state <= IDLE;                              
            end
                
            default: state <= IDLE;   

            endcase 
        end
    end
    
endmodule