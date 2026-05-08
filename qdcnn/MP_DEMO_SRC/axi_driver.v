`timescale 1ns / 1ps

// ============================================================================
// Module: axi_driver
// Authors: Dom Binns
// ============================================================================

module axi_driver #(
    parameter MAX_OUTSTANDING = 4,
    parameter CMD_FIFO_DEPTH  = 8
)(
    input  wire           clk,
    input  wire           rst,

    input  wire [31:0]    addr,
    input  wire           en,
    input  wire [9:0]     bytes,
    output wire [1023:0]  data,
    output wire           valid,
    output wire           en_ready,

    input  wire           axiCmdReady,
    output wire           axiCmdValid,
    output wire [71:0]    axiAddress,

    input  wire [1023:0]  axiData,
    input  wire           axiValid,
    output wire           axiReady,

    input  wire [31:0]    axiBaseAddress
);

    localparam FIFO_AW = $clog2(CMD_FIFO_DEPTH);

    reg [41:0]         cmd_fifo  [0:CMD_FIFO_DEPTH-1];   // {bytes[9:0], addr[31:0]}
    reg [FIFO_AW:0]    cmd_count;
    reg [FIFO_AW-1:0]  cmd_head;
    reg [FIFO_AW-1:0]  cmd_tail;

    wire cmd_fifo_empty = (cmd_count == 0);
    wire cmd_fifo_full  = (cmd_count == CMD_FIFO_DEPTH);

    reg [$clog2(MAX_OUTSTANDING+1):0] outstanding;

    wire push_cmd = en && en_ready;
    wire pop_cmd  = axiCmdValid && axiCmdReady;
    wire receive  = axiValid && axiReady;

    assign en_ready = (!cmd_fifo_full)
                    && ((outstanding + cmd_count) < MAX_OUTSTANDING);

    integer ci;
    always @(posedge clk) begin
        if (rst) begin
            cmd_count <= 0;
            cmd_head  <= 0;
            cmd_tail  <= 0;
            for (ci = 0; ci < CMD_FIFO_DEPTH; ci = ci + 1)
                cmd_fifo[ci] <= 42'h0;
        end else begin
            if (push_cmd) begin
                cmd_fifo[cmd_tail] <= {bytes, addr};
                cmd_tail            <= cmd_tail + 1'b1;
            end
            if (pop_cmd) begin
                cmd_head <= cmd_head + 1'b1;
            end
            case ({push_cmd, pop_cmd})
                2'b10:   cmd_count <= cmd_count + 1'b1;
                2'b01:   cmd_count <= cmd_count - 1'b1;
                default: cmd_count <= cmd_count;
            endcase
        end
    end

    always @(posedge clk) begin
        if (rst) begin
            outstanding <= 0;
        end else begin
            case ({pop_cmd, receive})
                2'b10:   outstanding <= outstanding + 1'b1;
                2'b01:   outstanding <= outstanding - 1'b1;
                default: outstanding <= outstanding;
            endcase
        end
    end

    wire [41:0] cmd_head_word  = cmd_fifo[cmd_head];
    wire [31:0] cmd_head_addr  = cmd_head_word[31:0];
    wire [9:0]  cmd_head_bytes = cmd_head_word[41:32];

    wire [31:0] full_addr = axiBaseAddress + cmd_head_addr;

    assign axiCmdValid = !cmd_fifo_empty;


    assign axiAddress = {
        7'h00,                  
        1'b1,                   
        9'h000,                  
        13'h0000,                  
        cmd_head_bytes,             
        full_addr                 
    };

    assign axiReady = 1'b1;
    assign data     = axiData;
    assign valid    = axiValid;

endmodule