// Module: top level UART echoer and device controller 
// Author: Dom Binns

module topModule (
    input  wire clk,
    input  wire rst,
    input  wire rx,
    output wire tx,
    
    output wire [15:0] addra_w1,
    output wire        ena_w1,
    input wire [7:0]   data_w1,
    output wire [13:0] addra_w2,
    output wire        ena_w2,
    input wire [7:0]   data_w2,
    output wire [5:0]  addra_b1,
    output wire        ena_b1,
    input wire [31:0]  data_b1,
    output wire [3:0]  addra_b2,
    output wire        ena_b2,
    input wire [31:0]  data_b2,
    output wire [9:0]  addra_image_7,
    output wire        ena_image_7,
    input wire [7:0]   data_image_7
);

    wire [7:0] rx_data;
    wire       rx_valid;
    wire       tx_busy;
    
    wire [7:0] network_input [27:0] [27:0];
    wire [7:0] network_hiddenin [27:0] [27:0];
    wire [7:0] network_hiddenout [9:0];
    wire [7:0] network_output [9:0];

    reg        tx_start; 
    reg [7:0]  tx_data;
    
    reg             networkGo;
    wire [7:0]      networkData;
    wire [6271:0]   testImage;
    wire [79:0]     testOut;
    wire            networkDone;
    
    // module instantiations
    network_module neural_network (
        .clk(clk),
        .rst(rst),
        .go(networkGo),
        .done(networkDone),
        .data_out(networkData),
        .addra_w1(addra_w1),
        .ena_w1(ena_w1),
        .data_w1(data_w1),
        .addra_w2(addra_w2),
        .ena_w2(ena_w2),
        .data_w2(data_w2),
        .addra_b1(addra_b1),
        .ena_b1(ena_b1),
        .data_b1(data_b1),
        .addra_b2(addra_b2),
        .ena_b2(ena_b2),
        .data_b2(data_b2),
        .addra_image_7(addra_image_7),
        .ena_image_7(ena_image_7),
        .data_image_7(data_image_7)
    );
        
    rxModule rx_inst (
       .clk(clk),
       .rst(rst),
       .rx(rx),
       .data_out(rx_data),
       .data_valid(rx_valid)
    );
    txModule tx_inst (
       .clk(clk),
       .rst(rst),
       .tx_start(tx_start),
       .data_in(tx_data), 
       .tx(tx), 
       .busy(tx_busy)
    );
    
    // FSM states
    localparam INIT            = 0,
               NET_GO          = 1,
               NET_WAIT        = 2,
               START_TRANSMIT  = 3,
               WAIT_DONE       = 4,
               TRANSMIT_DATA   = 5,
               WAIT_FOR_RX_LOW = 6;

    reg [2:0] curState, nextState;
    
    // echo FSM - mealy machine 
    always @(*) begin
        nextState = curState;

        case (curState)
            INIT: begin
                if (rx_valid == 1'b1) begin
                    // 'g' character input triggers network
                    if (rx_data == 8'h67)       
                        nextState = NET_GO;
                    else
                        nextState = START_TRANSMIT;
                end
            end
            
            NET_GO: begin
                nextState = NET_WAIT;           
            end
            
            NET_WAIT: begin
                if (networkDone)
                    nextState = START_TRANSMIT;
                else
                    nextState = NET_WAIT;
            end

            START_TRANSMIT: begin
                nextState = TRANSMIT_DATA;
            end

            TRANSMIT_DATA: begin
                if (tx_busy == 1'b1)
                    nextState = WAIT_DONE;
                else
                    nextState = TRANSMIT_DATA;
            end
            
            WAIT_DONE: begin
                if (tx_busy == 1'b0)
                    nextState = WAIT_FOR_RX_LOW;
                else
                    nextState = WAIT_DONE;
            end

            WAIT_FOR_RX_LOW: begin
                if (rx_valid == 1'b0)
                    nextState = INIT;
                else
                    nextState = WAIT_FOR_RX_LOW;
            end

            default: nextState = INIT;
        endcase
    end
    
    always @(posedge clk) begin
    networkGo <= 0;
    tx_start  <= 0;
    if (rst) begin
        curState <= INIT;
        tx_data  <= 8'h00;
    end else begin
        curState <= nextState;

        case (curState)
            INIT: begin
                if (rx_valid && rx_data != 8'h67)
                    // echo data recieved keypress
                    tx_data <= rx_data;       
            end
            START_TRANSMIT: begin 
                tx_start <= 1;
            end 
            NET_GO: begin
                networkGo <= 1;               
            end
            NET_WAIT: begin
                if (networkDone)
                    // convert network output to ascii, output to tx
                    tx_data <= networkData + 8'h30; 
            end
        endcase
    end
end

endmodule