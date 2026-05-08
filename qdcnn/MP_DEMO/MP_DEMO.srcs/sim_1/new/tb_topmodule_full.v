// Module: Direct topModule testbench with stubbed external interfaces.
//
// This TB is for debugging the CNN pipeline WITHOUT needing a working
// block design. It stubs:
//   - Image ROM        : behavioural memory loaded from image.mem
//   - Activation BRAMs : behavioural memories, zero-initialised
//   - AXI DataMover    : behavioural stub that reads from a "fake DDR" memory
//                        loaded from w.bin
//
// Use this to verify that Conv1 -> Pool -> Conv2 -> Network produces the
// correct digit for your loaded test image, BEFORE dealing with Vivado
// block design / PS side.
//
// REQUIRED INPUT FILES:
//   - image.mem    (784 entries, 8-bit)  : copied to sim run dir
//   - w_mem_hex.txt                     : w.bin converted to hex (see note below)
//     OR: you can $readmemb from raw bytes, but that's fragile.
//
// NOTE on DDR loading: Verilog $readmemh reads a text file of hex values.
// You need to convert w.bin (raw binary) to a hex file once, e.g. in Python:
//     import binascii
//     with open("w.bin","rb") as f:
//         data = f.read()
//     with open("w_mem_hex.txt","w") as f:
//         for b in data: f.write(f"{b:02x}\n")
// Then each 128-byte DataMover read = 128 lines of the hex file.

`timescale 1ns/1ps

module tb_topmodule;

    // ---------------------------------------------------------
    // Clock & reset (100 MHz)
    // -----------  ----------------------------------------------
    reg clk = 0;
    reg rst = 1;
    always #5 clk <= ~clk;

    // ---------------------------------------------------------
    // UART
    // ---------------------------------------------------------
    reg  uart_rx = 1;
    wire uart_tx;
    localparam BIT_PERIOD = 104170;    // 9600 baud @ 100 MHz

    task send_byte;
        input [7:0] data;
        integer i;
        begin
            uart_rx = 0;                         // start bit
            #(BIT_PERIOD);
            for (i = 0; i < 8; i = i + 1) begin
                uart_rx = data[i];
                #(BIT_PERIOD);
            end
            uart_rx = 1;                         // stop bit
            #(BIT_PERIOD);
        end
    endtask

    // ---------------------------------------------------------
    // Top-level DUT signals
    // ---------------------------------------------------------
    // Image ROM
    wire [9:0]   addra_image;
    wire         ena_image;
    reg  [7:0]   data_image;

    // Activation BRAMs A / B
    wire [11:0]  addra_activation_A, addra_activation_B;
    wire [15:0]  data_write_activation_A, data_write_activation_B;
    reg  [15:0]  data_read_activation_A,  data_read_activation_B;
    wire         ena_read_activation_A,   ena_read_activation_B;
    wire         ena_write_activation_A,  ena_write_activation_B;

    // AXI DataMover stub
    reg          axiCmdReady = 1;        // always ready to accept cmd
    wire         axiCmdValid;
    wire [71:0]  axiAddress;
    reg  [1023:0] axiData;
    reg          axiValid = 0;
    wire         axiReady;
    reg  [31:0]  axiBaseAddress = 32'h0;  // our "fake DDR" starts at 0

    // ---------------------------------------------------------
    // Behavioural image ROM (loaded from image.mem)
    // ---------------------------------------------------------
    reg [7:0] image_mem [0:1023];
    initial begin
        $readmemh("image.mem", image_mem);
    end
    always @(posedge clk) begin
        if (ena_image) data_image <= image_mem[addra_image];
    end

    // ---------------------------------------------------------
    // Behavioural activation BRAMs (zero-initialised)
    // ---------------------------------------------------------
    reg [15:0] act_a [0:4095];
    reg [15:0] act_b [0:4095];
    integer k;
    initial begin
        for (k = 0; k < 4096; k = k + 1) begin
            act_a[k] = 0;
            act_b[k] = 0;
        end
    end
    always @(posedge clk) begin
        if (ena_write_activation_A) act_a[addra_activation_A] <= data_write_activation_A;
        if (ena_read_activation_A)  data_read_activation_A    <= act_a[addra_activation_A];
        if (ena_write_activation_B) act_b[addra_activation_B] <= data_write_activation_B;
        if (ena_read_activation_B)  data_read_activation_B    <= act_b[addra_activation_B];
    end

    // ---------------------------------------------------------
    // Behavioural "DDR" - loaded from w_mem_hex.txt (one byte per line, hex)
    // Index: byte address (0..20M). Sized generously; adjust for your w.bin.
    // ---------------------------------------------------------
    // 21,274,752 bytes for w.bin; use a smaller memory for sim if testing
    // only the first tile. Below uses a 1 MB scratchpad - enough for layer 0.
    // For a full-run sim you'd want the full size or external backing.
    localparam DDR_BYTES = 21_274_752;
    reg [7:0] ddr_mem [0:DDR_BYTES-1];
    initial begin
        $display("[tb] loading ddr_mem from w_mem_hex.txt ...");
        $readmemh("w_mem_hex.txt", ddr_mem);
        $display("[tb] ddr_mem loaded");
    end

    // AXI DataMover stub FSM:
    //   When axiCmdValid rises, latch address + byte count.
    //   Then pulse axiValid with 1024 bits (128 bytes) of data from ddr_mem.
    //   Deliver after a small latency.
    reg [31:0] dm_addr;
    reg [15:0] dm_bytes;   // we always expect 128
    integer    dm_i;
    integer    dm_delay;

    // Decode axiAddress (assembled in axi_driver.v):
    //   bits [63:32] = target_addr
    //   bits [22:0]  = byte count (in low bits)
    wire [31:0] axi_target_addr = axiAddress[63:32];
    wire [22:0] axi_bytes       = axiAddress[22:0];

    initial begin
        axiValid = 0;
        axiData  = 0;
    end

    always @(posedge clk) begin
        axiValid <= 0;
        if (axiCmdValid && axiCmdReady) begin
            dm_addr  <= axi_target_addr;
            dm_bytes <= axi_bytes;
            dm_delay <= 10;     // model some DRAM latency
        end
        if (dm_delay > 0) begin
            dm_delay <= dm_delay - 1;
            if (dm_delay == 1) begin
                // Pack 128 bytes from ddr_mem into axiData (little-endian: byte 0 = [7:0])
                for (dm_i = 0; dm_i < 128; dm_i = dm_i + 1) begin
                    axiData[dm_i*8 +: 8] <= ddr_mem[dm_addr + dm_i];
                end
                axiValid <= 1;
            end
        end
    end

    // ---------------------------------------------------------
    // DUT
    // ---------------------------------------------------------
    topModule #(
        .NUM_FILTERS1(8), .NUM_FILTERS2(8), .KERNEL_SIZE(3),
        .IMG_W(28), .IMG_H(28),
        .SHIFT_CONV1(7), .SHIFT_CONV2(7)
    ) dut (
        .clk(clk), .rst(rst), .rx(uart_rx), .tx(uart_tx),
        .addra_image             (addra_image),
        .ena_image               (ena_image),
        .data_image              (data_image),
        .addra_activation_A      (addra_activation_A),
        .data_write_activation_A (data_write_activation_A),
        .data_read_activation_A  (data_read_activation_A),
        .ena_read_activation_A   (ena_read_activation_A),
        .ena_write_activation_A  (ena_write_activation_A),
        .addra_activation_B      (addra_activation_B),
        .data_write_activation_B (data_write_activation_B),
        .data_read_activation_B  (data_read_activation_B),
        .ena_read_activation_B   (ena_read_activation_B),
        .ena_write_activation_B  (ena_write_activation_B),
        .axiCmdReady    (axiCmdReady),
        .axiCmdValid    (axiCmdValid),
        .axiAddress     (axiAddress),
        .axiData        (axiData),
        .axiValid       (axiValid),
        .axiReady       (axiReady),
        .axiBaseAddress (axiBaseAddress)
    );

    // ---------------------------------------------------------
    // Stimulus
    // ---------------------------------------------------------
    initial begin
        $display("[tb] reset");
        rst = 1;
        #(BIT_PERIOD);
        rst = 0;
        #(BIT_PERIOD);

        $display("[tb] sending 'g' to trigger inference");
        send_byte(8'h67);

        // CNN+MLP end-to-end is slow in sim because of AXI reads.
        // Give it generous time.
        #500_000_000;

        $display("[tb] timeout");
        $finish;
    end

    // ---------------------------------------------------------
    // Watch: every byte that goes out on TX
    // ---------------------------------------------------------
    // Simplistic: sample whenever the internal tx_start fires.
    // Replace this with a proper receiver if you want.
    always @(posedge clk) begin
        if (dut.tx_start) $display("[tb] TX byte scheduled: 0x%02h ('%c')",
                                   dut.tx_data, dut.tx_data);
    end

endmodule