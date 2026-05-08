`timescale 1ns / 1ps

// ============================================================================
// Module: filter_mac_unit
// Author: E. V. Dementyev
// ============================================================================

(* use_dsp = "yes" *)
module filter_mac_unit (
    input  wire        clk,
    input  wire        rst,

    input  wire        init,         
    input  wire        mac_en,      
    input  wire        out_valid, 

    input  wire [4:0]  shift_amt,

    input  wire signed [31:0] bias,        
    input  wire signed [7:0]  img_pixel,  
    input  wire signed [7:0]  kern_weight,

    output reg  signed [7:0]  result,      
    output wire signed [31:0] acc_out      
);

    reg signed [31:0] acc;
    reg signed [31:0] acc_scaled;

    assign acc_out = acc;

    always @(posedge clk) begin
        if (rst) begin
            acc    <= 0;
            result <= 0;
        end else begin
            if (init) begin
                acc <= bias;
            end else if (mac_en) begin
                acc <= acc + (img_pixel * kern_weight);
            end else if (out_valid) begin
                if (acc < 0)
                    acc_scaled = 32'sd0;
                else
                    acc_scaled = acc >>> shift_amt;

                if (acc_scaled > 32'sd127)
                    result <= 8'sd127;
                else if (acc_scaled < -32'sd128)
                    result <= -8'sd128;
                else
                    result <= acc_scaled[7:0];
            end
        end
    end

endmodule