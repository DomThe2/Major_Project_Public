`timescale 1ns / 1ps

// ============================================================================
// Module: tb_dense_only
// Author: V. E. Dementyev
//
// Standalone testbench for network_module (the dense engine).
// Pre-loads the image_7 BRAM (which feeds layer 0 of dense) with
// golden_pool4.hex and DDR with the dense weights. Asserts go=1 and
// watches the resulting logits.
//
// This isolates the dense engine from the conv stack. If the dense engine
// produces correct logits here, the bug is in conv->dense handoff. If wrong
// logits here, the bug is in the dense engine itself (likely network.v's
// interaction with the new multi-issue axi_driver).
//
// Expected output (image 5873, label 5 "surprise"):
//   y[0] = -57944, y[1] = -85582, y[2] =  40739
//   y[3] = -66433, y[4] = -99236, y[5] = 170178 <-- winner
//   y[6] = -67396
//   data_out = 5
// ============================================================================

module tb_dense_only;

    localparam IMG_SIZE        = 4608;
    localparam DENSE_W_BASE    = 9_368_448;
    localparam FULL_DDR_BYTES  = 45_552_640;

    reg clk = 0;
    reg rst = 1;
    always #5 clk = ~clk;

    reg  go = 0;
    wire done;
    wire [7:0] data_out;

    // Image port (this is what dense layer 0 actually reads from)
    wire [12:0] addra_image_7;
    wire        ena_image_7;
    reg  [7:0]  data_image_7 = 0;

    // Activation BRAMs (16-bit, depth 4096) - used by dense layers 1, 2
    reg [15:0] dense_A_mem [0:4095];
    reg [15:0] dense_B_mem [0:4095];
    reg [15:0] dense_A_dout_r;
    reg [15:0] dense_B_dout_r;

    wire [11:0] addra_activation_A, addra_activation_B;
    wire [15:0] data_write_activation_A, data_write_activation_B;
    wire [15:0] data_read_activation_A = dense_A_dout_r;
    wire [15:0] data_read_activation_B = dense_B_dout_r;
    wire ena_read_activation_A, ena_read_activation_B;
    wire ena_write_activation_A, ena_write_activation_B;

    integer init_i;
    initial begin
        for (init_i = 0; init_i < 4096; init_i = init_i + 1) begin
            dense_A_mem[init_i] = 16'h0000;
            dense_B_mem[init_i] = 16'h0000;
        end
        dense_A_dout_r = 0;
        dense_B_dout_r = 0;
    end

    always @(posedge clk) begin
        if (ena_write_activation_A) dense_A_mem[addra_activation_A] <= data_write_activation_A;
        if (ena_read_activation_A)  dense_A_dout_r <= dense_A_mem[addra_activation_A];
    end
    always @(posedge clk) begin
        if (ena_write_activation_B) dense_B_mem[addra_activation_B] <= data_write_activation_B;
        if (ena_read_activation_B)  dense_B_dout_r <= dense_B_mem[addra_activation_B];
    end

    // DDR + behavioural AXI (3-cycle latency, same as tb_full_uart)
    reg [7:0] ddr [0:FULL_DDR_BYTES-1];

    wire        axiCmdValid;
    wire [71:0] axiAddress;
    reg         axiCmdReady = 1'b1;
    reg [1023:0] axiData = 0;
    reg          axiValid = 0;
    wire         axiReady;
    wire [31:0]  axiBaseAddress = 32'h0000_0000;

    integer axi_state = 0;
    integer axi_timer = 0;
    integer axi_pending_addr = 0;
    integer kk;

    always @(posedge clk) begin
        if (rst) begin
            axi_state    <= 0;
            axi_timer    <= 0;
            axiValid     <= 0;
            axiCmdReady  <= 1;
            axiData      <= 0;
        end else begin
            case (axi_state)
                0: begin
                    axiValid <= 0;
                    if (axiCmdValid) begin
                        axi_pending_addr <= axiAddress[63:32];
                        axiCmdReady <= 0;
                        axi_timer <= 3;
                        axi_state <= 1;
                    end
                end
                1: begin
                    if (axi_timer == 0) begin
                        for (kk = 0; kk < 128; kk = kk + 1) begin
                            if (axi_pending_addr + kk < FULL_DDR_BYTES)
                                axiData[kk*8 +: 8] <= ddr[axi_pending_addr + kk];
                            else
                                axiData[kk*8 +: 8] <= 8'h00;
                        end
                        axiValid <= 1;
                        axi_state <= 2;
                    end else begin
                        axi_timer <= axi_timer - 1;
                    end
                end
                2: begin
                    if (axiReady) begin
                        axiValid    <= 0;
                        axiCmdReady <= 1;
                        axi_state   <= 0;
                    end
                end
            endcase
        end
    end

    // image_7_mem holds the pool4 output (this is what dense layer 0 reads)
    reg [7:0] image_7_mem [0:8191];
    integer i;

    always @(posedge clk) begin
        if (ena_image_7)
            data_image_7 <= image_7_mem[addra_image_7];
    end

    // ----- DUT -----
    network_module dut (
        .clk(clk),
        .rst(rst),
        .go(go),
        .done(done),
        .data_out(data_out),

        .addra_image_7(addra_image_7),
        .ena_image_7  (ena_image_7),
        .data_image_7 (data_image_7),

        .addra_activation_A     (addra_activation_A),
        .data_write_activation_A(data_write_activation_A),
        .data_read_activation_A (data_read_activation_A),
        .ena_read_activation_A  (ena_read_activation_A),
        .ena_write_activation_A (ena_write_activation_A),
        .addra_activation_B     (addra_activation_B),
        .data_write_activation_B(data_write_activation_B),
        .data_read_activation_B (data_read_activation_B),
        .ena_read_activation_B  (ena_read_activation_B),
        .ena_write_activation_B (ena_write_activation_B),

        .axiCmdReady   (axiCmdReady),
        .axiCmdValid   (axiCmdValid),
        .axiAddress    (axiAddress),
        .axiData       (axiData),
        .axiValid      (axiValid),
        .axiReady      (axiReady),
        .axiBaseAddress(axiBaseAddress)
    );

    // ----- Done dump -----
    reg done_dumped = 0;
    integer t_start, t_end;

    always @(posedge clk) begin
        if (!rst && done && !done_dumped) begin
            done_dumped <= 1;
            t_end = $time;
            $display("");
            $display("============================================================");
            $display(" DENSE OUTPUT - 7 logits");
            $display(" Inference took %0d cycles  (%0.3f us @ 100MHz)",
                     (t_end - t_start) / 10, (t_end - t_start) / 10000.0);
            $display("============================================================");
            $display("   y[0] (angry)    = %0d", $signed(dut.y[0]));
            $display("   y[1] (disgust)  = %0d", $signed(dut.y[1]));
            $display("   y[2] (fear)     = %0d", $signed(dut.y[2]));
            $display("   y[3] (happy)    = %0d", $signed(dut.y[3]));
            $display("   y[4] (sad)      = %0d", $signed(dut.y[4]));
            $display("   y[5] (surprise) = %0d", $signed(dut.y[5]));
            $display("   y[6] (neutral)  = %0d", $signed(dut.y[6]));
            $display("");
            $display("   currentLargest = %0d", $signed(dut.currentLargest));
            $display("   THRESHOLD      = %0d", dut.THRESHOLD);
            $display("   data_out       = %0d (0x%02h)", data_out, data_out);
            $display("");
            $display("   EXPECTED (from working sim, image 5873, label 5):");
            $display("     y[0] = -57944    y[1] = -85582    y[2] =  40739");
            $display("     y[3] = -66433    y[4] = -99236    y[5] = 170178   <-- winner");
            $display("     y[6] = -67396");
            $display("     data_out = 5");
            $display("============================================================");
            #1000;
            $finish;
        end
    end

    // ----- Periodic progress (since dense can take millions of cycles) -----
    integer prog_cyc = 0;
    always @(posedge clk) begin
        if (!rst) begin
            prog_cyc <= prog_cyc + 1;
            if (prog_cyc % 500_000 == 0 && prog_cyc > 0) begin
                $display("[%0t]  [%0dk cyc]  state=%0d  layer=%0d  tile=%0d  inputIdx=%0d",
                         $time, prog_cyc/1000, dut.state, dut.layer, dut.tile, dut.inputIndex);
            end
        end
    end

    reg [7:0] g_pool4 [0:4607];

    initial begin
        $display("============================================================");
        $display(" tb_dense_only - isolated test of network_module");
        $display("============================================================");

        // Initialise image_7_mem to zero (anything beyond pool4 size)
        for (i = 0; i < 8192; i = i + 1)
            image_7_mem[i] = 8'h00;

        // Load DDR
        $readmemh("w_mem_hex.txt", ddr);
        $display("  ddr[%0d] = %02h (dense bias[0])",
                 DENSE_W_BASE, ddr[DENSE_W_BASE]);

        // Load pool4 golden output as the dense input
        $readmemh("golden_pool4.hex", g_pool4);
        for (i = 0; i < 4608; i = i + 1)
            image_7_mem[i] = g_pool4[i];
        $display("  pool4[0]=%02h pool4[1]=%02h pool4[4607]=%02h",
                 g_pool4[0], g_pool4[1], g_pool4[4607]);

        rst = 1;
        go = 0;
        #100;
        rst = 0;
        #100;
        $display("[%0t] Reset released, asserting go", $time);

        @(posedge clk);
        go <= 1;
        @(posedge clk);
        go <= 0;
        t_start = $time;
        $display("[%0t] go pulse sent, waiting for done...", $time);

        repeat (30_000_000) @(posedge clk);

        if (!done_dumped) begin
            $display("");
            $display("*** TIMEOUT *** done never asserted after 30M cycles");
            $display("    state    = %0d", dut.state);
            $display("    layer    = %0d", dut.layer);
            $display("    tile     = %0d", dut.tile);
            $display("    inputIdx = %0d", dut.inputIndex);
            $finish;
        end
    end

    initial begin
        #(64'd5_000_000_000);
        $display("HARD TIMEOUT");
        $finish;
    end

endmodule