`timescale 1ns / 1ps

// ============================================================================
// tb_topModule.sv
//
// Full-system, self-checking testbench for the VGG-FER FPGA pipeline.
//
//                      +-----------+
//   image.mem  ----->  |  Image BR |---+
//                      +-----------+   |
//                      +-----------+   |       +------------------+
//   (zero init)  --->  |  ACT  A   |<--+--->  |                  |
//                      +-----------+          |                  |
//                      +-----------+          |    topModule     |
//   (zero init)  --->  |  ACT  B   |<-------> |     (DUT)        |
//                      +-----------+          |                  |
//                      +-----------+          |                  |
//   (zero init)  --->  | dense A/B |<-------> |                  |
//                      +-----------+          +--------+---------+
//                      +-----------+                   |
//   w.bin (45 MB) -->  |  AXI DM   |<------------------+
//                      +-----------+
//
// What it checks (each layer, end-to-end):
//
//   layer  stage   write_to_B  golden file              entries
//   -----  ------  ----------  -----------------------  -------
//     0    conv1       0       golden_conv1.hex          147456
//     1    conv2       1       golden_conv2.hex          147456
//     2    pool1       0       golden_pool1.hex           36864
//     3    conv3       1       golden_conv3.hex           73728
//     4    conv4       0       golden_conv4.hex           73728
//     5    pool2       1       golden_pool2.hex           18432
//     6    conv5       0       golden_conv5.hex           36864
//     7    conv6       1       golden_conv6.hex           36864
//     8    pool3       0       golden_pool3.hex            9216
//     9    conv7       1       golden_conv7.hex           18432
//    10    conv8       0       golden_conv8.hex           18432
//    11    pool4       1       golden_pool4.hex            4608
//
// After all layers + dense run, the testbench checks that the UART TX byte
// is 0x35 ('5'  =  class 5 = surprise), which is what train_vgg_fer.py
// reported for the seeded test image (index 5873).
//
// Files expected at run time (relative to simulator working dir):
//   fpga_data/w.bin
//   fpga_data/image.mem
//   fpga_data/golden_conv{1..8}.hex
//   fpga_data/golden_pool{1..4}.hex
//
// Notes:
//   * w.bin is 45 MB; loading via $fread takes a few seconds in xsim.
//   * Full inference is ~50-200 M cycles in simulation. Expect long
//     wall-clock time (10+ minutes for the full run). To shorten while
//     bringing up, drop `EARLY_EXIT_LAYER` to e.g. 1 to stop after conv2
//     and skip the long Cin=512 streaming layers.
// ============================================================================

module tb_topModule;

    // -------------------------------------------------------------------------
    // Parameters
    // -------------------------------------------------------------------------
    localparam        CLK_PERIOD       = 10;          // 100 MHz
    localparam        ACT_AW           = 21;          // matches DUT
    localparam        IMG_AW           = 12;          // 48*48 = 2304
    localparam        W_BIN_BYTES      = 45_552_640;
    localparam        AXI_LATENCY      = 8;           // simulated DDR latency, cycles
    localparam longint TIMEOUT_CYCLES  = 500_000_000;
    localparam [7:0]  EXPECTED_RESULT  = 8'h35;       // ASCII '5'  (class 5)
    localparam        BAUD_DIV         = 10417;       // matches rxModule

    // Set this to N to stop after layer N has been checked.
    // 11 = full pipeline (pool4 done, dense+TX still run).
    localparam        EARLY_EXIT_LAYER = 11;

    // -------------------------------------------------------------------------
    // Clock & reset
    // -------------------------------------------------------------------------
    reg clk = 0;
    reg rst = 1;
    always #(CLK_PERIOD/2) clk = ~clk;

    longint cycle_count = 0;
    always @(posedge clk) cycle_count <= cycle_count + 1;

    // -------------------------------------------------------------------------
    // UART
    // -------------------------------------------------------------------------
    reg  rx_drv = 1'b1;
    wire tx_dut;

    // -------------------------------------------------------------------------
    // Image BRAM model  (read-only, 8-bit x 2304)
    // -------------------------------------------------------------------------
    wire [IMG_AW-1:0] addra_image;
    wire              ena_image;
    reg  [7:0]        data_image;
    reg  [7:0]        image_mem [0:2303];

    always @(posedge clk) begin
        if (ena_image) data_image <= image_mem[addra_image];
    end

    // -------------------------------------------------------------------------
    // Activation BRAMs A / B  (8-bit x 147456, ping-pong)
    // -------------------------------------------------------------------------
    wire [ACT_AW-1:0] addra_A, addrb_A;
    wire [7:0]        dina_A;
    wire              wea_A;
    reg  [7:0]        doutb_A;

    wire [ACT_AW-1:0] addra_B, addrb_B;
    wire [7:0]        dina_B;
    wire              wea_B;
    reg  [7:0]        doutb_B;

    reg [7:0] bram_A [0:147455];
    reg [7:0] bram_B [0:147455];

    always @(posedge clk) begin
        if (wea_A) bram_A[addra_A] <= dina_A;
        doutb_A <= bram_A[addrb_A];
    end
    always @(posedge clk) begin
        if (wea_B) bram_B[addra_B] <= dina_B;
        doutb_B <= bram_B[addrb_B];
    end

    // -------------------------------------------------------------------------
    // Dense BRAMs A / B  (16-bit x 4096, ping-pong)
    // -------------------------------------------------------------------------
    wire [11:0]  addra_dense_A, addra_dense_B;
    wire [15:0]  data_write_dense_A, data_write_dense_B;
    reg  [15:0]  data_read_dense_A, data_read_dense_B;
    wire         ena_read_dense_A, ena_read_dense_B;
    wire         ena_write_dense_A, ena_write_dense_B;

    reg [15:0] dense_A [0:4095];
    reg [15:0] dense_B [0:4095];

    always @(posedge clk) begin
        if (ena_write_dense_A) dense_A[addra_dense_A] <= data_write_dense_A;
        if (ena_read_dense_A)  data_read_dense_A      <= dense_A[addra_dense_A];
    end
    always @(posedge clk) begin
        if (ena_write_dense_B) dense_B[addra_dense_B] <= data_write_dense_B;
        if (ena_read_dense_B)  data_read_dense_B      <= dense_B[addra_dense_B];
    end

    // -------------------------------------------------------------------------
    // AXI DataMover model
    //
    // Behaviour matches what the Xilinx DataMover gives axi_driver.v:
    //   1. Wait for axiCmdValid, sample SADDR/BTT, pulse axiCmdReady 1 cycle.
    //   2. AXI_LATENCY cycles of "DDR latency".
    //   3. Drive one 1024-bit beat on axiData with axiValid; hold until
    //      axiReady is high.
    // -------------------------------------------------------------------------
    reg          axiCmdReady_r = 0;
    wire         axiCmdValid;
    wire [71:0]  axiAddress;
    reg  [1023:0] axiData_r = 0;
    reg          axiValid_r = 0;
    wire         axiReady;
    reg [31:0]   axiBaseAddress = 32'h0;

    wire [31:0] cmd_saddr = axiAddress[63:32];
    wire [22:0] cmd_btt   = axiAddress[22:0];

    reg [7:0] weight_mem [0:W_BIN_BYTES-1];

    typedef enum logic [1:0] {DM_IDLE, DM_LAT, DM_RESP} dm_state_t;
    dm_state_t  dm_state = DM_IDLE;
    reg [31:0]  dm_saddr;
    integer     dm_lat_cnt;
    integer     k;

    always @(posedge clk) begin
        if (rst) begin
            dm_state      <= DM_IDLE;
            axiCmdReady_r <= 0;
            axiValid_r    <= 0;
            axiData_r     <= 1024'h0;
            dm_lat_cnt    <= 0;
        end else begin
            axiCmdReady_r <= 0;
            case (dm_state)
                DM_IDLE: begin
                    if (axiCmdValid) begin
                        dm_saddr      <= cmd_saddr;
                        axiCmdReady_r <= 1;
                        dm_lat_cnt    <= AXI_LATENCY;
                        dm_state      <= DM_LAT;
                    end
                end
                DM_LAT: begin
                    if (dm_lat_cnt == 0) begin
                        for (k = 0; k < 128; k = k + 1) begin
                            if (dm_saddr + k < W_BIN_BYTES)
                                axiData_r[k*8 +: 8] <= weight_mem[dm_saddr + k];
                            else
                                axiData_r[k*8 +: 8] <= 8'h00;
                        end
                        axiValid_r <= 1;
                        dm_state   <= DM_RESP;
                    end else begin
                        dm_lat_cnt <= dm_lat_cnt - 1;
                    end
                end
                DM_RESP: begin
                    if (axiReady) begin
                        axiValid_r <= 0;
                        dm_state   <= DM_IDLE;
                    end else begin
                        axiValid_r <= 1;
                    end
                end
                default: dm_state <= DM_IDLE;
            endcase
        end
    end

    wire        axiCmdReady = axiCmdReady_r;
    wire [1023:0] axiData   = axiData_r;
    wire        axiValid    = axiValid_r;

    // -------------------------------------------------------------------------
    // DUT
    // -------------------------------------------------------------------------
    topModule DUT (
        .clk                 (clk),
        .rst                 (rst),
        .rx                  (rx_drv),
        .tx                  (tx_dut),

        .addra_image         (addra_image),
        .ena_image           (ena_image),
        .data_image          (data_image),

        .addra_A             (addra_A),
        .addrb_A             (addrb_A),
        .dina_A              (dina_A),
        .wea_A               (wea_A),
        .doutb_A             (doutb_A),

        .addra_B             (addra_B),
        .addrb_B             (addrb_B),
        .dina_B              (dina_B),
        .wea_B               (wea_B),
        .doutb_B             (doutb_B),

        .addra_dense_A       (addra_dense_A),
        .data_write_dense_A  (data_write_dense_A),
        .data_read_dense_A   (data_read_dense_A),
        .ena_read_dense_A    (ena_read_dense_A),
        .ena_write_dense_A   (ena_write_dense_A),

        .addra_dense_B       (addra_dense_B),
        .data_write_dense_B  (data_write_dense_B),
        .data_read_dense_B   (data_read_dense_B),
        .ena_read_dense_B    (ena_read_dense_B),
        .ena_write_dense_B   (ena_write_dense_B),

        .axiCmdReady         (axiCmdReady),
        .axiCmdValid         (axiCmdValid),
        .axiAddress          (axiAddress),
        .axiData             (axiData),
        .axiValid            (axiValid),
        .axiReady            (axiReady),
        .axiBaseAddress      (axiBaseAddress)
    );

    // -------------------------------------------------------------------------
    // Per-layer comparison
    // -------------------------------------------------------------------------
    // Lookup tables matching topModule's layer order.
    // 0: conv1, 1: conv2, 2: pool1, 3: conv3, 4: conv4, 5: pool2,
    // 6: conv5, 7: conv6, 8: pool3, 9: conv7,10: conv8,11: pool4
    function automatic integer layer_size(input integer lidx);
        case (lidx)
            0:  layer_size = 48*48*64;   // 147456
            1:  layer_size = 48*48*64;
            2:  layer_size = 24*24*64;   //  36864
            3:  layer_size = 24*24*128;  //  73728
            4:  layer_size = 24*24*128;
            5:  layer_size = 12*12*128;  //  18432
            6:  layer_size = 12*12*256;  //  36864
            7:  layer_size = 12*12*256;
            8:  layer_size = 6*6*256;    //   9216
            9:  layer_size = 6*6*512;    //  18432
            10: layer_size = 6*6*512;
            11: layer_size = 3*3*512;    //   4608
            default: layer_size = 0;
        endcase
    endfunction

    function automatic string layer_name(input integer lidx);
        case (lidx)
            0:  layer_name = "conv1";  1:  layer_name = "conv2";
            2:  layer_name = "pool1";  3:  layer_name = "conv3";
            4:  layer_name = "conv4";  5:  layer_name = "pool2";
            6:  layer_name = "conv5";  7:  layer_name = "conv6";
            8:  layer_name = "pool3";  9:  layer_name = "conv7";
            10: layer_name = "conv8"; 11: layer_name = "pool4";
            default: layer_name = "?";
        endcase
    endfunction

    // write_to_B == layer_idx[0]; the just-finished output is in B if that bit was 1
    function automatic bit out_in_B(input integer lidx);
        out_in_B = (lidx & 1) == 1;
    endfunction

    // Buffer for the current golden file (sized to largest stage)
    reg [7:0] golden_buf [0:147455];

    integer pass_count = 0;
    integer fail_count = 0;
    integer total_mismatches = 0;

    task automatic check_layer(input integer lidx);
        integer i;
        integer mismatches;
        integer dump_fd;
        reg [7:0] got, exp;
        bit       use_b;
        integer   nentries;
        string    fname;
        string    sname;
        begin
            nentries = layer_size(lidx);
            sname    = layer_name(lidx);
            use_b    = out_in_B(lidx);
            fname    = $sformatf("fpga_data/golden_%s.hex", sname);

            // Load golden
            for (i = 0; i < 147456; i = i + 1) golden_buf[i] = 8'hxx;
            $readmemh(fname, golden_buf);

            mismatches = 0;
            for (i = 0; i < nentries; i = i + 1) begin
                got = use_b ? bram_B[i] : bram_A[i];
                exp = golden_buf[i];
                if (got !== exp) begin
                    if (mismatches < 16) begin
                        $display("    [%s] mismatch @ %0d : got=%02x exp=%02x  (Cidx=%0d row=%0d col=%0d)",
                                 sname, i, got, exp,
                                 i / (nentries / channels_of(lidx)),
                                 (i % (nentries / channels_of(lidx))) / wh_of(lidx),
                                 (i % (nentries / channels_of(lidx))) % wh_of(lidx));
                    end
                    mismatches = mismatches + 1;
                end
            end

            if (mismatches == 0) begin
                $display("[CHECK] layer %0d %-6s  PASS  (%0d entries, BRAM_%s)  cyc=%0d",
                         lidx, sname, nentries, (use_b?"B":"A"), cycle_count);
                pass_count = pass_count + 1;
            end else begin
                $display("[CHECK] layer %0d %-6s  FAIL  (%0d / %0d mismatches, BRAM_%s)  cyc=%0d",
                         lidx, sname, mismatches, nentries, (use_b?"B":"A"), cycle_count);
                fail_count = fail_count + 1;
                total_mismatches = total_mismatches + mismatches;

                // Dump the actual BRAM contents to a file so the user can diff
                fname = $sformatf("dump_%s.hex", sname);
                dump_fd = $fopen(fname, "w");
                if (dump_fd != 0) begin
                    for (i = 0; i < nentries; i = i + 1) begin
                        got = use_b ? bram_B[i] : bram_A[i];
                        $fwrite(dump_fd, "%02x\n", got);
                    end
                    $fclose(dump_fd);
                    $display("           wrote dump_%s.hex (diff this against golden_%s.hex)",
                             sname, sname);
                end
            end
        end
    endtask

    function automatic integer channels_of(input integer lidx);
        case (lidx)
            0,1:   channels_of = 64;
            2:     channels_of = 64;
            3,4:   channels_of = 128;
            5:     channels_of = 128;
            6,7:   channels_of = 256;
            8:     channels_of = 256;
            9,10:  channels_of = 512;
            11:    channels_of = 512;
            default: channels_of = 1;
        endcase
    endfunction

    function automatic integer wh_of(input integer lidx);
        case (lidx)
            0,1:   wh_of = 48;
            2:     wh_of = 24;
            3,4:   wh_of = 24;
            5:     wh_of = 12;
            6,7:   wh_of = 12;
            8:     wh_of = 6;
            9,10:  wh_of = 6;
            11:    wh_of = 3;
            default: wh_of = 1;
        endcase
    endfunction

    // -------------------------------------------------------------------------
    // FSM-state snooping for layer-completion detection
    //
    // S_LAYER_NEXT == 4'd3 in topModule. We sample DUT.layer_idx on the cycle
    // that cur_state == S_LAYER_NEXT (it hasn't incremented yet that cycle).
    // -------------------------------------------------------------------------
    reg [3:0] last_cur_state;
    reg [11:0] checked_mask;     // one bit per layer
    integer last_checked = -1;

    always @(posedge clk) begin
        if (rst) begin
            last_cur_state <= 4'hF;
            checked_mask   <= 12'h000;
        end else begin
            last_cur_state <= DUT.cur_state;

            // Rising edge into S_LAYER_NEXT (3) from S_LAYER_WAIT (2)
            if (DUT.cur_state == 4'd3 && last_cur_state == 4'd2) begin
                if (!checked_mask[DUT.layer_idx]) begin
                    // small delay so any pending BRAM writes are seen
                    #1;
                    check_layer(DUT.layer_idx);
                    checked_mask[DUT.layer_idx] <= 1'b1;
                    last_checked <= DUT.layer_idx;
                end
            end
        end
    end

    // -------------------------------------------------------------------------
    // UART RX driver: send a byte at 9600 baud assuming 100 MHz clk.
    // -------------------------------------------------------------------------
    task automatic uart_send_byte(input [7:0] b);
        integer i;
        begin
            // start bit
            rx_drv = 1'b0;
            repeat (BAUD_DIV) @(posedge clk);
            // 8 data bits, LSB first
            for (i = 0; i < 8; i = i + 1) begin
                rx_drv = b[i];
                repeat (BAUD_DIV) @(posedge clk);
            end
            // stop bit
            rx_drv = 1'b1;
            repeat (BAUD_DIV) @(posedge clk);
        end
    endtask

    // -------------------------------------------------------------------------
    // UART TX monitor: capture the byte the DUT sends back.
    // Decodes 9600 baud on tx_dut by sampling at mid-bit.
    // -------------------------------------------------------------------------
    reg [7:0] tx_byte_seen;
    reg       tx_byte_valid;

    initial begin
        tx_byte_seen  = 8'h00;
        tx_byte_valid = 1'b0;
    end

    initial begin : tx_monitor
        forever begin
            // Wait for start bit (falling edge while idle)
            @(negedge tx_dut);
            // Sample at mid of start bit
            #(CLK_PERIOD * (BAUD_DIV/2));
            if (tx_dut !== 1'b0) continue;     // glitch, ignore
            // 8 data bits, LSB first - sample mid-bit of each
            for (int b = 0; b < 8; b = b + 1) begin
                #(CLK_PERIOD * BAUD_DIV);
                tx_byte_seen[b] = tx_dut;
            end
            tx_byte_valid <= 1'b1;
            $display("[UART] DUT transmitted byte 0x%02x ('%s')  cyc=%0d",
                     tx_byte_seen,
                     ((tx_byte_seen >= 8'h20 && tx_byte_seen < 8'h7F) ? string'(tx_byte_seen) : "?"),
                     cycle_count);
            // Stop bit + small idle
            #(CLK_PERIOD * BAUD_DIV);
            tx_byte_valid <= 1'b0;
        end
    end

    // -------------------------------------------------------------------------
    // Heartbeat - so the user sees something during the long simulation
    // -------------------------------------------------------------------------
    initial begin : heartbeat
        forever begin
            #1_000_000;        // every 1 ms of sim time = 100k cycles
            $display("    .. heartbeat: cyc=%0d  cur_state=%0d  layer_idx=%0d  axi_sel=%0b",
                     cycle_count, DUT.cur_state, DUT.layer_idx, DUT.axi_sel);
        end
    end

    // -------------------------------------------------------------------------
    // Main test
    // -------------------------------------------------------------------------
    integer fp;
    integer nbytes;

    initial begin
        $display("============================================================");
        $display(" tb_topModule - VGG-FER full pipeline self-checking testbench");
        $display("============================================================");

        // ---- Pre-init memories
        for (int i = 0; i < 147456; i = i + 1) begin
            bram_A[i] = 8'h00;
            bram_B[i] = 8'h00;
        end
        for (int i = 0; i < 4096; i = i + 1) begin
            dense_A[i] = 16'h0000;
            dense_B[i] = 16'h0000;
        end
        for (int i = 0; i < 2304; i = i + 1) begin
            image_mem[i] = 8'h00;
        end

        // ---- Load weight blob
        $display("[INFO] Loading w.bin ...");
        fp = $fopen("fpga_data/w.bin", "rb");
        if (fp == 0) begin
            $display("[FATAL] Could not open fpga_data/w.bin");
            $finish;
        end
        nbytes = $fread(weight_mem, fp);
        $fclose(fp);
        $display("[INFO]   read %0d bytes (expected %0d)", nbytes, W_BIN_BYTES);
        if (nbytes != W_BIN_BYTES) begin
            $display("[WARN]   byte count mismatch - check that w.bin is the right one");
        end

        // ---- Load image
        $display("[INFO] Loading image.mem ...");
        $readmemh("fpga_data/image.mem", image_mem);
        $display("[INFO]   image.mem[0..7] = %02x %02x %02x %02x  %02x %02x %02x %02x",
                 image_mem[0], image_mem[1], image_mem[2], image_mem[3],
                 image_mem[4], image_mem[5], image_mem[6], image_mem[7]);

        // ---- Reset
        rst    = 1'b1;
        rx_drv = 1'b1;
        repeat (50) @(posedge clk);
        rst = 1'b0;
        repeat (50) @(posedge clk);
        $display("[INFO] Reset released at cyc=%0d", cycle_count);

        // ---- Kick FSM with 'g' (0x67)
        $display("[INFO] Sending 'g' (0x67) over UART ...");
        uart_send_byte(8'h67);
        $display("[INFO] 'g' sent; FSM should now be running. cyc=%0d", cycle_count);

        // ---- Wait for either:
        //        (a) all expected layers checked + a UART byte received, or
        //        (b) timeout
        fork
            // Timeout
            begin : to
                repeat (TIMEOUT_CYCLES) @(posedge clk);
                $display("[FAIL] TIMEOUT after %0d cycles", TIMEOUT_CYCLES);
                disable done_wait;
            end

            // Done watcher
            begin : done_wait
                // Wait until the requested early-exit layer has been checked,
                // then wait for the TX byte (or stop early if we are not
                // running the dense stage).
                wait (checked_mask[EARLY_EXIT_LAYER] == 1'b1);

                if (EARLY_EXIT_LAYER == 11) begin
                    // Full pipeline - wait for UART TX result
                    $display("[INFO] All conv/pool layers checked. Waiting for UART TX ...");
                    wait (tx_byte_valid == 1'b1);
                    repeat (BAUD_DIV) @(posedge clk);
                end else begin
                    // Early exit
                    repeat (200) @(posedge clk);
                    $display("[INFO] EARLY_EXIT_LAYER=%0d - skipping dense + TX",
                             EARLY_EXIT_LAYER);
                end

                disable to;
            end
        join

        // ---- Summary
        $display("");
        $display("============================================================");
        $display(" SUMMARY");
        $display("------------------------------------------------------------");
        $display(" Layers checked      : %0d", pass_count + fail_count);
        $display(" PASSes              : %0d", pass_count);
        $display(" FAILs               : %0d", fail_count);
        $display(" Total mismatches    : %0d", total_mismatches);

        if (EARLY_EXIT_LAYER == 11 && tx_byte_valid) begin
            $display(" UART TX byte        : 0x%02x", tx_byte_seen);
            $display(" UART TX expected    : 0x%02x  (class 5 = 'surprise')",
                     EXPECTED_RESULT);
            if (tx_byte_seen === EXPECTED_RESULT)
                $display(" UART RESULT         : PASS");
            else
                $display(" UART RESULT         : FAIL");
        end

        $display(" Final cycle count   : %0d", cycle_count);
        $display("============================================================");

        if (fail_count == 0 &&
            (EARLY_EXIT_LAYER != 11 || tx_byte_seen === EXPECTED_RESULT))
            $display("OVERALL: PASS");
        else
            $display("OVERALL: FAIL");

        $finish;
    end

endmodule