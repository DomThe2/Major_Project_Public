`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2026 14:24:52
// Design Name: 
// Module Name: smoothing
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


module smoothing(
    input wire p_clk,
    input wire reset,
    input wire [7:0] pixel_data_grayscale,
    input wire input_valid,
    output reg [7:0] pixel_data_avg,
    output reg output_valid 
    );
    
    reg [2:0] x_count;
    reg [2:0] y_count; 

    reg [13:0] sum[0:47]; //48 line accumulators 
    reg [5:0] col_index;  //0-47 ID for each line accumulator
    
    integer i;
    always@(posedge p_clk) begin
        if (reset) begin
            pixel_data_avg <= 0;
            output_valid   <= 0;
            x_count        <= 0;
            y_count        <= 0;
            col_index      <= 0;
            for (i = 0; i < 48; i = i + 1) begin
                sum[i] <= 0;
            end
        end else if (input_valid) begin
            //accumulate&assignment
            if (x_count == 7 && y_count == 7) begin //if 64th pixel
                //assign sum of accumulation to avg
                pixel_data_avg <= (sum[col_index] + pixel_data_grayscale) >> 6;
                output_valid   <= 1;
                sum[col_index] <= 0;
            end else begin
                //sum grayscale values
                sum[col_index] <= sum[col_index] + pixel_data_grayscale;
                output_valid   <= 0;
            end
            
            //update counters
            if (x_count == 7) begin     //8th pixel 
                x_count <= 0;
                if (col_index == 47) begin  //last sum block
                    col_index <= 0;
                    if (y_count == 7) begin //at 64th pixel
                        y_count <= 0; 
                    end else y_count <= y_count + 1;
                end else begin
                    col_index <= col_index + 1;
                end
            end else begin
                x_count <= x_count + 1;
            end
        end else begin
            output_valid <= 0;
        end
    end 
endmodule
