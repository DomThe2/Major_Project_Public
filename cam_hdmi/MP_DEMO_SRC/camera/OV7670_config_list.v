`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 02.04.2026 08:52:12
// Design Name:
// Module Name: OV7670_config_list
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


module OV7670_config_rom(  //defines a list of instructions
//credit to Weston Braum. camera configure code has been adapted from his Github repositary. 
//W. Braun. [Online]. Available: https://github.com/westonb/OV7670-Verilog. [Accessed 20 April 2026].
    input wire clk,
    input wire [7:0] addr,
    output reg [15:0] dout  //data out
    );
    always @(posedge clk) begin
    case(addr)
    0:  dout <= 16'h12_80; //reset      list of instructions to config the camera
    1:  dout <= 16'hFF_F0; //delay
    2:  dout <= 16'h12_80; //reset      just in case
    3:  dout <= 16'hFF_F0; //delay
    4:  dout <= 16'h12_04; // COM7,     RGB color output
    5:  dout <= 16'h11_80; // CLKRC     internal PLL matches input clock, ie dont touch the clock
    6:  dout <= 16'h0C_00; // COM3,     default settings
    7:  dout <= 16'h3E_00; // COM14,    no scaling, normal pclock
    8:  dout <= 16'h04_00; // COM1,     disable CCIR656
    9:  dout <= 16'h40_d0; //COM15,     RGB565, full output range
    10:  dout <= 16'h3a_04; //TSLB       set correct output data sequence (magic) format(10): UYVY
    11: dout <= 16'h14_18; //COM9       MAX AGC value from x32 -> x4 (AGC allows an image to be more clear by strengthening its signal when dark. can cause blurryness though)
    //colour related?
    12: dout <= 16'h4F_B3; //MTX1       all of these are magical matrix coefficients
    13: dout <= 16'h50_B3; //MTX2
    14: dout <= 16'h51_00; //MTX3
    15: dout <= 16'h52_3d; //MTX4
    16: dout <= 16'h53_A7; //MTX5
    17: dout <= 16'h54_E4; //MTX6
    18: dout <= 16'h58_9E; //MTXS
    19: dout <= 16'h3D_00; //COM13      gamma off (was 0xC0), cleaner gradients
    //image start and end. 640pixels is represented by 11 bits. 8+3
    20: dout <= 16'h17_14; //HSTART     start high 8 bits
    21: dout <= 16'h18_02; //HSTOP      stop high 8 bits //these kill the odd colored line
    22: dout <= 16'h32_80; //HREF       edge offset 3 bits
    23: dout <= 16'h19_03; //VSTART     start high 8 bits
    24: dout <= 16'h1A_7B; //VSTOP      stop high 8 bits
    25: dout <= 16'h03_0A; //VREF       vsync edge offset

    26: dout <= 16'h0F_41; //COM6       reset timings
    27: dout <= 16'h1E_00; //MVFP       disable mirror / flip //might have magic value of 03
    28: dout <= 16'h33_0B; //CHLF       //magic value from the internet
    29: dout <= 16'h3C_78; //COM12      no HREF when VSYNC low
    30: dout <= 16'h69_00; //GFIX       fix gain control, defaults
    31: dout <= 16'h74_00; //REG74      Digital gain control
    32: dout <= 16'hB0_84; //RSVD       magic value from the internet *required* for good color
    33: dout <= 16'hB1_0c; //ABLC1
    34: dout <= 16'hB2_0e; //RSVD       more magic internet values
    35: dout <= 16'hB3_80; //THL_ST
    //begin mystery scaling numbers
    36: dout <= 16'h70_3a;
    37: dout <= 16'h71_35;
    38: dout <= 16'h72_11;
    39: dout <= 16'h73_f0;
    40: dout <= 16'ha2_02;
    //gamma curve values
    41: dout <= 16'h7a_20;
    42: dout <= 16'h7b_10;
    43: dout <= 16'h7c_1e;
    44: dout <= 16'h7d_35;
    45: dout <= 16'h7e_5a;
    46: dout <= 16'h7f_69;
    47: dout <= 16'h80_76;
    48: dout <= 16'h81_80;
    49: dout <= 16'h82_88;
    50: dout <= 16'h83_8f;
    51: dout <= 16'h84_96;
    52: dout <= 16'h85_a3;
    53: dout <= 16'h86_af;
    54: dout <= 16'h87_c4;
    55: dout <= 16'h88_d7;
    56: dout <= 16'h89_e8;
    //AGC and AEC
    57: dout <= 16'h13_e0; //COM8, disable AGC / AEC    //original code may have accidentally assigned this command to the same register as the one above
    58: dout <= 16'h00_00; //set gain reg to 0 for AGC
    59: dout <= 16'h10_00; //set ARCJ reg to 0
    60: dout <= 16'h0d_40; //magic reserved bit for COM4
    61: dout <= 16'h14_18; //COM9, 4x gain + magic bit
    62: dout <= 16'ha5_05; // BD50MAX
    63: dout <= 16'hab_07; //DB60MAX
    64: dout <= 16'h24_95; //AGC upper limit
    65: dout <= 16'h25_33; //AGC lower limit
    66: dout <= 16'h26_e3; //AGC/AEC fast mode op region
    67: dout <= 16'h9f_78; //HAECC1
    68: dout <= 16'ha0_68; //HAECC2
    69: dout <= 16'ha1_03; //magic
    70: dout <= 16'ha6_d8; //HAECC3
    71: dout <= 16'ha7_d8; //HAECC4
    72: dout <= 16'ha8_f0; //HAECC5
    73: dout <= 16'ha9_90; //HAECC6
    74: dout <= 16'haa_94; //HAECC7
    75: dout <= 16'h13_e7; //COM8, enable AGC + AEC + AWB (bit 1 = AWB for color correction)
    default: dout <= 16'hFF_FF;         //mark end of ROM
    endcase

    end
endmodule
