`timescale 1ns / 1ps

// Module: Single filter accumulator unit
// One of these is instantiated per filter via generate.
// Each has its own multiplier and accumulator.
// Author: V. E. Dementyev

(* use_dsp = "yes" *)
module filter_mac_unit (
    input  wire        clk,
    input  wire        rst,

    // Control signals (shared from parent FSM)
    input  wire        init,          // load bias into accumulator
    input  wire        mac_en,        // multiply-accumulate enable
    input  wire        out_valid,     // output is ready to read

    // Runtime shift amount (per-layer weight scale).
    // Different conv layers use different scales depending on their weight
    // magnitudes, so the output right-shift is configured by the caller.
    input  wire [4:0]  shift_amt,

    // Data inputs
    input  wire signed [31:0] bias,       // bias for this filter
    input  wire signed [7:0]  img_pixel,  // shared image pixel (same for all filters)
    input  wire signed [7:0]  kern_weight,// this filter's kernel weight for current position

    // Output
    output reg  signed [7:0]  result,     // clamped, shifted, relu'd output
    output wire signed [31:0] acc_out     // raw accumulator (for debug)
);

    reg signed [31:0] acc;
    reg signed [31:0] acc_scaled;

    assign acc_out = acc;

    // IMPORTANT: no pipeline registers on img_pixel / kern_weight.
    // The parent conv_engine's FSM asserts mac_en the cycle AFTER it
    // finalises pixel_r and weight_reg[g]. The MAC consumes them live.
    // A previous version latched them one cycle - that introduced a
    // 1-cycle skew where the MAC used the PREVIOUS iteration's operands,
    // which caused silently-wrong results (~10-15% off) that worked by
    // accident with certain FSM timings but broke when ADDR_SETTLE was
    // added.

    always @(posedge clk) begin
        if (rst) begin
            acc    <= 0;
            result <= 0;
        end else begin
            if (init) begin
                // Load bias
                acc <= bias;
            end else if (mac_en) begin
                // Multiply-accumulate: each unit has its own multiplier
                acc <= acc + (img_pixel * kern_weight);
            end else if (out_valid) begin
                // ReLU then variable right-shift by shift_amt
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