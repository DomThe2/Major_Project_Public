`timescale 1ns / 1ps

// ============================================================================
// Module: tx UART driver 
// Author: Dom Binns
// ============================================================================

module txModule (
    input  wire       clk,    
    input  wire       rst,       
    input  wire       tx_start,   
    input  wire [7:0] data_in,  
    output wire       tx,       
    output wire       busy       
);


    parameter BAUD_COUNTER = 10417;

    // FSM states
    localparam IDLE   = 0,
               LOAD   = 1,
               SEND   = 2,
               DONE   = 3;

    reg [1:0]  state, next_state;
    reg [13:0] timer;
    reg [3:0]  bit_count;
    reg [9:0]  shift_reg;
    reg        tx_buff;

    // FSM
    always @(*) begin
        case (state)
            IDLE: begin
                if (tx_start)
                    next_state = LOAD;
                else
                    next_state = IDLE;
            end

            LOAD: begin
                next_state = SEND;
            end

            SEND: begin
                if (timer == BAUD_COUNTER) begin
                    if (bit_count == 9)
                        next_state = DONE;
                    else
                        next_state = LOAD;
                end else begin
                    next_state = SEND;
                end
            end

            DONE: begin
                next_state = IDLE;
            end

            default: begin
                next_state = IDLE;
            end
        endcase
    end

    //baud counter
    always @(posedge clk) begin
        if (rst || state == IDLE || state == LOAD) begin
            timer <= 0;
        end else begin
            if (timer == BAUD_COUNTER)
                timer <= 0;
            else
                timer <= timer + 1;
        end
    end

    //data and bit counter
    always @(posedge clk) begin
        if (rst) begin
            bit_count <= 0;
            shift_reg <= 10'b1111111111;
            tx_buff   <= 1'b1;
        end else begin
            case (state)
                IDLE: begin
                    bit_count <= 0;
                    tx_buff   <= 1'b1;
                    if (tx_start)
                        shift_reg <= {1'b1, data_in, 1'b0}; // {Stop, Data, Start}
                end

                LOAD: begin
                    tx_buff   <= shift_reg[bit_count];
                end

                SEND: begin
                    if (timer == BAUD_COUNTER)
                        bit_count <= bit_count + 1;
                end

                DONE: begin
                    bit_count <= 0;
                end
            endcase
        end
    end

    //state register
    always @(posedge clk) begin
        if (rst) 
            state <= IDLE;
        else 
            state <= next_state;
    end

    assign tx   = tx_buff;
    assign busy = (state != IDLE);

endmodule