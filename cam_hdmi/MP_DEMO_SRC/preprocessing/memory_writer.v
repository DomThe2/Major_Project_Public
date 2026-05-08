`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2026 15:20:36
// Design Name: 
// Module Name: memory_writer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module memory_writer(
    // inputs 
    input wire clk,
    input wire [7:0] pixel_data,
    input wire pixel_valid,
    input wire frame_done,
    
    //outputs 
    output reg [11:0] write_address,
    output reg [7:0] write_data,
    output reg write_en
    );
    
    initial begin
        write_address = 0;
        write_data = 0;
        write_en = 0;
    end
    
    localparam FSM_IDLE = 0;
    localparam FSM_WRITE = 1;
    localparam FSM_WAIT = 2;
    
    reg [1:0] FSM_state = FSM_IDLE;
    
    reg [11:0] pixel_counter = 0;
    always@(posedge clk) begin
        //write pixel data into BRAM and increase counter for address 
        case(FSM_state)
            FSM_IDLE: begin
                FSM_state <= pixel_valid ? FSM_WRITE : FSM_IDLE;
                pixel_counter <= 0;
                write_address <= 0;
                write_data <= 0;
                write_en <= 0;
            end
            
            FSM_WRITE: begin    
                write_data <= pixel_data;
                write_address <= pixel_counter;
                write_en <= 1;
                pixel_counter <= pixel_counter + 1;
                FSM_state <= FSM_WAIT;
            end
            
            FSM_WAIT: begin
                if (frame_done) begin
                    FSM_state <= FSM_IDLE;
                end else begin
                    FSM_state <= pixel_valid ? FSM_WRITE : FSM_WAIT;
                end
                write_en <= 0;
            end
            default: begin
                FSM_state <= FSM_IDLE;
            end
            
            
        endcase
    end    
                    
    
endmodule
