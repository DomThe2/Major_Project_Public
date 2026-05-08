`timescale 1ns / 1ps

// ============================================================================
// Module: node.v
// Authors: Dom Binns
// ============================================================================

module node_module (

    input wire clk,
    input wire rst,
    input wire go,
    input wire load,
    output reg done,
    input wire [12:0] node_count,
    input wire [3:0] out_shift,
    input wire [3:0] bias_shift,
    input wire signed [15:0] data_input,
    input wire signed [7:0] bias_input,
    input wire signed [7:0] weight_input,
    output reg signed [32:0] data_output
	
);

localparam RESET            = 0,
           ACC0             = 1,
           ACC1             = 2,
           ACC2             = 3, 
           ACTIVATE         = 4,
           CLAMP            = 5;

(* MARK_DEBUG = "TRUE" *) reg [3:0] state = RESET;
(* MARK_DEBUG = "TRUE" *) reg [12:0] i = 0;
reg signed [32:0]  acc;
reg signed [32:0] acc_interim;
reg signed [7:0] current_weight;
reg signed [32:0] data_r;

function signed [32:0] relu;
        input signed [32:0] x;
        begin
            if (x < 0) relu = 0;
            else        relu = x;
        end
    endfunction

always @(posedge clk) begin
    if (rst) begin
        state      <= RESET;
        i          <= 0;
        acc        <= 0;
        data_output <= 0;
    end else begin
        case (state)
            RESET: begin
                done <= 1;
                i <= 0;
                if (load) begin
                    acc   <= $signed(bias_input) <<< bias_shift;
                end
                if (go) begin
                    data_r         <= data_input;
                    current_weight <= weight_input;
                    state          <= ACC1;
                    done           <= 0;
                end
            end
            
            ACC1: begin //1
                acc_interim <= $signed(data_r) * $signed(current_weight);
                state <= ACC2; 
            end 
            
            ACC2: begin //2
                acc <= acc + acc_interim;
                acc_interim <= 0;
                if (i == node_count - 1) state <= ACTIVATE;
                else if (go) begin
                    data_r <= data_input; 
                    current_weight <= weight_input;
                    i <= i + 1;
                    state <= ACC1; 
                end
            end 
    
            ACTIVATE: begin
                if (out_shift != 0) acc <= relu(acc) >>> out_shift;
                state <= CLAMP;
            end
            
            CLAMP: begin
                if (out_shift != 0) begin
                    if (acc > 32767) 
                        data_output <= 32767;
                    else if (acc < -32768) 
                        data_output <= -32768;
                    else 
                        data_output <= acc[15:0];
                end else 
                    data_output <= acc;
                state <= RESET;
            end
        
            default: state <= RESET;
        endcase
    end
end

endmodule