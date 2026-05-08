// Module: basic testbench for simulating top.v
// Author: Dom Binns
// Includes basic tests for ascii inputs

`timescale 1ns/1ps

module tb_uart;

    reg clk = 0;
    reg rst = 1;
    reg uart_rx = 1;
    wire uart_tx;

    design_1_wrapper dut (
        .clk_in1(clk),
        .rst(rst),
        .rx(uart_rx),
        .tx(uart_tx)
    );
    
    reg tick=0;

    // 125 MHz clock
    always #4 clk <= ~clk;
    // ns for 9600 baud
    localparam BIT_PERIOD = 104167;  

    task send_byte;
        input [7:0] data;
        integer i;
        begin
            // start bit
            //@(posedge clk);
            uart_rx = 0;
            #(BIT_PERIOD);

            // data bits)
            for (i=0; i<8; i=i+1) begin
                //@(posedge clk);
                tick = ~tick;
                $display("Driving: %d", data[i]);
                uart_rx = data[i];
                #(BIT_PERIOD);
            end

            // stop bit
            //@(posedge clk);
            uart_rx = 1;
            #(BIT_PERIOD);
        end
    endtask

    initial begin
        rst <= 1;
        #(BIT_PERIOD);
        rst <= 0;
        #(BIT_PERIOD);
            

        // (0x43)
        // 11110111
        send_byte(8'hF7);
        #2000000;
        // ASCII g (0x67) 01100111
        send_byte(8'h67);

        #2000000;
        //$stop;
    end

endmodule
