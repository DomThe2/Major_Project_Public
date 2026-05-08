`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 11/07/2015 10:20:20 AM
// Design Name:
// Module Name: camera_configure
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


module camera_configure     
    //credit to Weston Braum. camera configure code has been adapted from his Github repositary
    //W. Braun. [Online]. Available: https://github.com/westonb/OV7670-Verilog. [Accessed 20 April 2026].
    
    #(
    parameter CLK_FREQ=25000000
    )
    (
    input wire clk,
    input wire start,
    output wire sioc,
    output wire siod,
    output wire done
    );

    wire [7:0] rom_addr;
    wire [15:0] rom_dout;
    wire [7:0] SCCB_addr;
    wire [7:0] SCCB_data;
    wire SCCB_start;
    wire SCCB_ready;
    wire SCCB_SIOC_oe;
    wire SCCB_SIOD_oe;

    assign sioc = SCCB_SIOC_oe ? 1'b0 : 1'b1;   //!. standard 2 way communication in 1 wire.
    assign siod = SCCB_SIOD_oe ? 1'b0 : 1'b1;

    OV7670_config_rom rom1(
        .clk(clk),
        .addr(rom_addr),
        .dout(rom_dout)
        );

    OV7670_config_FSM #(.CLK_FREQ(CLK_FREQ)) config_1(
        .clk(clk),
        .SCCB_interface_ready(SCCB_ready),
        .rom_data(rom_dout),
        .start(start),
        .rom_addr(rom_addr),
        .done(done),
        .SCCB_interface_addr(SCCB_addr),
        .SCCB_interface_data(SCCB_data),
        .SCCB_interface_start(SCCB_start)
        );

    SCCB_FSM_interface #( .CLK_FREQ(CLK_FREQ)) SCCB1(
        .clk(clk),
        .start(SCCB_start),
        .address(SCCB_addr),
        .data(SCCB_data),
        .ready(SCCB_ready),
        .SIOC_oe(SCCB_SIOC_oe),
        .SIOD_oe(SCCB_SIOD_oe)
        );

endmodule
