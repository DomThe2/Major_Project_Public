`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2026 18:00:26
// Design Name: 
// Module Name: memory_reader
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


module memory_reader(
    // inputs 
    input wire clk,
//    input wire rst,

    //outputs 
    output reg [11:0] read_address = 0,
    input wire [7:0] read_data
    );
    
    always@(posedge clk)
    begin
        if (read_address < 2304) begin  //48x48
            read_address <= read_address + 1;
        end else begin
            read_address <= 0;
        end
    end
endmodule
