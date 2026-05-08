// Module: rx UART driver
// Author: Dom Binns

module rxModule (
    input  wire       clk,
    input  wire       rst,
    input  wire       rx,
    output reg [7:0]  data_out,
    output wire       data_valid
);
    
    // 100,000,000 / 9600
    // where clk frequency is 100MHz
    parameter BAUD_COUNTER = 10417;
    
    // FSM states
    localparam IDLE = 0, 
               WAIT = 1,
               SAMPLE = 2,
               RECV = 3, 
               DONE = 4;

    reg [2:0]  state, next_state;
    reg        rx_buff;
    reg [9:0]  shift_reg;
    reg [3:0]  bit_count;
    reg [14:0] timer;
    reg        full;

    // FSM
    always @(*) begin 
        case (state)
            IDLE: begin      
                if (!rx_buff) 
                   next_state = WAIT;
                else 
                   next_state = IDLE;
            end
            
            WAIT: begin 
                if (timer == BAUD_COUNTER / 2)  
                    next_state = SAMPLE;
                else 
                    next_state = WAIT;
            end
            
            SAMPLE: begin 
                if (bit_count == 9)
                    next_state = DONE;
                else 
                    next_state = RECV;
            end
                
            RECV: begin 
                if (timer == BAUD_COUNTER)
                    next_state = WAIT;
                else 
                    next_state = RECV;
            end        
            
            DONE: begin 
                next_state = IDLE;
            end 
            default: begin 
                next_state = IDLE;
            end
        endcase
    end
    
    // Baud counter
    always @(posedge clk) begin
        if (rst || state == IDLE) begin
            timer <= 0;
        end else begin
            if (timer == BAUD_COUNTER) begin
                timer <= 0;
            end else begin
                timer <= timer + 1;
            end
          
        end
    end

    always @(posedge clk) begin
        if (rst) begin
            data_out <= 8'h00;
            shift_reg <= 10'b1111111111;
            bit_count <= 0;
            full <= 0;
        end else if (state == SAMPLE) begin
            shift_reg <= {rx_buff, shift_reg[9:1]};
            bit_count <= bit_count + 1;
        end else if (state == DONE) begin
            data_out <= shift_reg[8:1];
            full <= 1;
        end else if (state == IDLE) begin
            bit_count <= 0;
            full <= 0;
        end
    end
    
    //state register
    always @(posedge clk) begin 
        rx_buff <= rx; // buffer rx
        if (rst) state <= IDLE;
        else state <= next_state; // increment state
    end    
       
    assign data_valid = full;

endmodule