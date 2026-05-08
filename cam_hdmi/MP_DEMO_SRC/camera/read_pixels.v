`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2026 18:22:20
// Design Name: 
// Module Name: read_pixels
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


module read_pixels(
//credit to Weston Braum. read_pixels code has been adapted from his Github repositary
//W. Braun. [Online]. Available: https://github.com/westonb/OV7670-Verilog. [Accessed 20 April 2026].
    // inputs 
    input wire p_clk,
    input wire vsync,
    input wire href,
    input wire [7:0] p_data, // input pixel data from camera
    
    //outputs 
    output reg [15:0] pixel_data, // output pixel data to memory
    output reg hsync,
    output reg pixel_valid, // pixel valid
    output reg pixel_clk = 0,
    output reg frame_done,
    output reg bram_en
    );
    
    // FSM states
    localparam START_FRAME = 0,
               READ_ROW = 1;
    reg [2:0] state = 0;
    reg pixel_half = 0;
    
    reg [9:0] x_counter = 0;
    reg [8:0] y_counter = 0;
    
    reg[8:0] clk_counter = 0;
     
     always@(posedge p_clk) // increment respective counter for every pixel
     begin
        if (vsync) begin
            x_counter <= 0;
            y_counter <= 0;
        end else if (href) begin
            if (pixel_half) x_counter <= x_counter + 1;
        end else if (!href && x_counter > 0) begin
            x_counter <= 0;
            y_counter <= y_counter + 1;
        end
     end
     
    // we want 48x48. first crop to 480x480. then sample every 8x8 region
    reg [3:0] x_mod10;
    reg [3:0] y_mod10;
    
    wire end_of_pixel = (href && pixel_half); 
    always @(posedge p_clk) begin
        if (vsync) begin
            x_mod10 <= 0;
            y_mod10 <= 0;
        end else if (end_of_pixel) begin
            if (x_counter == 639) begin
                x_mod10 <= 0;
                if (y_mod10 == 9) y_mod10 <= 0;
                else y_mod10 <= y_mod10 + 1;
            end else begin
                if (x_mod10 == 9) x_mod10 <= 0;
                else x_mod10 <= x_mod10 + 1;
            end
        end
    end
    
    wire x_valid = (x_counter >= 80 && x_counter < 560);
    wire pixel_8 = (x_mod10 >= 1 && x_mod10 <= 8);
    wire line_8  = (y_mod10 >= 1 && y_mod10 <= 8);
    wire bram_pixel;
    assign bram_pixel = x_valid && pixel_8 && line_8;
    
    // -------------------------------------------------
    wire x_valid_480 = (x_counter >= 80 && x_counter < 560);
    wire pixel_2 = (x_counter[0] == 0);
    wire line_2 = (y_counter[0] == 0);
    wire pixel_480_480;
    assign pixel_480_480 = x_valid_480 && pixel_2 && line_2;
    reg pixel_480_480_valid;
    
    
    localparam FRONT_PORCH = 38; // 19 * 2
    localparam SYNC_PULSE  = 90; // 45 * 2
    
    always@(posedge p_clk) // generate HSYNC signals based on HREF
    begin
        if (href) begin
            clk_counter <= 0;
            hsync <= 0;
        end else begin
            if (clk_counter < 288) begin
                clk_counter <= clk_counter + 1;
            end
            
            if (clk_counter >= FRONT_PORCH && clk_counter < (FRONT_PORCH + SYNC_PULSE)) begin
                hsync <= 1;
            end else begin
                hsync <= 0;
            end            
        end        
    end
    
    always@(posedge p_clk) // output pixel clock is half the frequency of input. because camera uses two clock cycles for one pixel 
    begin
        pixel_clk <= ~pixel_clk;
    end
    
    always@(posedge p_clk)
	begin
        case(state)
            START_FRAME: begin //wait for VSYNC
               state <= (!vsync) ? READ_ROW : START_FRAME;
               
               frame_done <= 0;
               pixel_half <= 0;
            end
            
            READ_ROW: begin 
               state <= vsync ? START_FRAME : READ_ROW;
               
               frame_done <= vsync;
               pixel_valid <= (href && pixel_half); 
               bram_en <= href && pixel_half && bram_pixel;
               pixel_480_480_valid <= (href && pixel_half && pixel_480_480); 
               if (href) begin
                   pixel_half <= ~ pixel_half;
                   if (pixel_half) pixel_data[7:0] <= p_data;
                   else pixel_data[15:8] <= p_data;
               end
            end
            
        endcase
	end
    
endmodule
