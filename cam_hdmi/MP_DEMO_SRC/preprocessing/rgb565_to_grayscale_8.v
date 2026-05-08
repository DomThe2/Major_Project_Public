`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2026 20:33:33
// Design Name: 
// Module Name: rgb565_to_grayscale_8
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

module rgb565_to_grayscale_8(
    //input rgb565
    input wire p_clk,
    input wire [15:0] pixel_data_565,
    input wire input_valid,
    
    
    //outputs 
    output reg [7:0] pixel_data_grayscale,
    output reg output_valid
    );
    
    wire [7:0] r;
    wire [7:0] g;
    wire [7:0] b;
    
    assign r = {pixel_data_565[15:11],pixel_data_565[15:13]}; // pixel bit padding
    assign g = {pixel_data_565[10:5],pixel_data_565[10:9]};
    assign b = {pixel_data_565[4:0],pixel_data_565[4:2]};
    
    wire [15:0] temp;
    assign temp = (r*77+g*150+b*29);        //coefficients of Luma :RGB: (0.299, 0.587, 0.114)*2^8
    
    always @(posedge p_clk) begin
        pixel_data_grayscale <= temp[15:8];
        output_valid <= input_valid;
    end
endmodule