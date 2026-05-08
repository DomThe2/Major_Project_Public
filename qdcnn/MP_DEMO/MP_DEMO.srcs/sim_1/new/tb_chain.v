// ============================================================================
// tb_topmodule_chain.v
//
// INTEGRATION test for topModule: runs the full top.v through conv1 completion
// and the start of conv2. Verifies:
//   1. UART trigger works, main FSM advances out of S_INIT
//   2. conv_engine gets real weights/biases through the AXI path (via stub)
//   3. All 147,456 conv1 output pixels are written to activation BRAM A
//   4. The written values match Python's golden (proves the top.v wiring
//      around conv_engine is correct - addressing, data muxing, etc)
//   5. Main FSM advances layer_idx from 0 (conv1) to 1 (conv2)
//   6. conv_engine issues AXI requests for conv2's weights (proves the
//      layer-to-layer transition works)
//
// What we DON'T do: simulate conv2 to completion. Conv2 is ~500M cycles
// (Cin=64, 48x48 output), way too slow for behavioural sim. We just confirm
// it starts.
//
// Runtime: ~15-25 minutes (dominated by conv1 at ~10M cycles).
//
// Prerequisites (in working directory or xsim.dir):
//   - image.hex           (2304 entries, from export_conv1_golden.py)
//   - w_mem_hex.txt       (9,368,448 entries, from convert_wbin_to_hex.py)
//   - conv1_expected.hex  (147,456 entries, from export_conv1_golden.py)
// ============================================================================

`timescale 1ns / 1ps

module tb_topmodule_chain;

    localparam CLK_PERIOD = 10;           // 100 MHz
    localparam IMG_SIZE   = 48 * 48;
    localparam ACT_SIZE   = 147456;
    localparam CONV_WEIGHT_BYTES = 9_368_448;   // size of conv portion of w.bin

    reg clk = 0;
    reg rst = 1;
    reg rx  = 1;
    wire tx;

    always #(CLK_PERIOD/2) clk = ~clk;

    // =========================================================================
    // Image BRAM (read-only, loaded from image.hex)
    // =========================================================================
    wire [11:0] addra_image;
    wire        ena_image;
    reg  [7:0]  data_image_r = 8'h00;   // init so waveform isn't X before first read
    wire [7:0]  data_image = data_image_r;
    reg  [7:0]  image_mem [0:IMG_SIZE - 1];
    always @(posedge clk) if (ena_image) data_image_r <= image_mem[addra_image];

    // =========================================================================
    // Activation BRAM A (conv1's output target)
    // =========================================================================
    wire [20:0] addra_A, addrb_A;
    wire [7:0]  dina_A;
    wire        wea_A;
    reg  [7:0]  doutb_A_r = 8'h00;
    wire [7:0]  doutb_A = doutb_A_r;
    reg  [7:0]  bramA [0:ACT_SIZE - 1];
    always @(posedge clk) begin
        if (wea_A) bramA[addra_A[17:0]] <= dina_A;
        doutb_A_r <= bramA[addrb_A[17:0]];
    end

    // =========================================================================
    // Activation BRAM B (conv2's output target)
    // =========================================================================
    wire [20:0] addra_B, addrb_B;
    wire [7:0]  dina_B;
    wire        wea_B;
    reg  [7:0]  doutb_B_r = 8'h00;
    wire [7:0]  doutb_B = doutb_B_r;
    reg  [7:0]  bramB [0:ACT_SIZE - 1];
    always @(posedge clk) begin
        if (wea_B) bramB[addra_B[17:0]] <= dina_B;
        doutb_B_r <= bramB[addrb_B[17:0]];
    end

    // =========================================================================
    // Dense activation BRAMs (not used - dense engine never triggers)
    // =========================================================================
    wire [11:0] addra_dense_A, addra_dense_B;
    wire [15:0] data_write_dense_A, data_write_dense_B;
    reg  [15:0] data_read_dense_A_r, data_read_dense_B_r;
    wire [15:0] data_read_dense_A = data_read_dense_A_r;
    wire [15:0] data_read_dense_B = data_read_dense_B_r;
    wire        ena_read_dense_A, ena_write_dense_A;
    wire        ena_read_dense_B, ena_write_dense_B;

    reg [15:0] denseA [0:4095], denseB [0:4095];
    always @(posedge clk) begin
        if (ena_write_dense_A) denseA[addra_dense_A] <= data_write_dense_A;
        if (ena_read_dense_A)  data_read_dense_A_r <= denseA[addra_dense_A];
        if (ena_write_dense_B) denseB[addra_dense_B] <= data_write_dense_B;
        if (ena_read_dense_B)  data_read_dense_B_r <= denseB[addra_dense_B];
    end

    // =========================================================================
    // AXI DataMover stub - serves real weights from w_mem_hex.txt
    // Real weights matter here because conv1 output must match the Python golden.
    // =========================================================================
    wire        axiCmdValid;
    wire [71:0] axiAddress;
    wire        axiCmdReady = 1'b1;
    reg  [1023:0] axiData = 0;
    reg         axiValid = 0;
    wire        axiReady;
    reg  [31:0] axiBaseAddress = 32'h0000_0000;  // we'll serve from offset 0 of ddr

    reg [7:0] ddr [0:CONV_WEIGHT_BYTES - 1];

    // The axi_driver packs the DDR byte address into axiAddress[63:32], NOT [31:0].
    // Layout:  {Reserved[71:68], Tag[67:64], target_addr[63:32], DRR[31], EOF[30],
    //           DSA[29:24], Type[23], BTT[22:0]}
    // We extract target_addr to use as the DDR offset.
    wire [31:0] req_addr = axiAddress[63:32] - axiBaseAddress;

    // Command queue + 3-cycle response latency
    localparam STUB_IDLE  = 0,
               STUB_DELAY = 1,
               STUB_VALID = 2;
    reg [1:0]  stub_state = STUB_IDLE;
    reg [3:0]  stub_timer = 0;
    reg [31:0] pending_count_stub = 0;
    reg [31:0] next_addr_q [0:15];   // small FIFO of pending request addrs
    reg [3:0]  q_head = 0, q_tail = 0;

    integer k, init_i;
    initial begin
        // Explicit init so that unused queue entries aren't X
        for (init_i = 0; init_i < 16; init_i = init_i + 1)
            next_addr_q[init_i] = 32'd0;
    end

    always @(posedge clk) begin
        if (rst) begin
            stub_state          <= STUB_IDLE;
            stub_timer          <= 0;
            pending_count_stub  <= 0;
            axiValid            <= 0;
            axiData             <= 0;
            q_head              <= 0;
            q_tail              <= 0;
        end else begin
            // Enqueue new command - use the correct slice [63:32] for addr
            if (axiCmdValid && axiCmdReady) begin
                next_addr_q[q_tail] <= req_addr;
                q_tail              <= q_tail + 1;
                pending_count_stub  <= pending_count_stub + 1;
            end

            case (stub_state)
                STUB_IDLE: begin
                    axiValid <= 0;
                    if (pending_count_stub > 0 ||
                        (axiCmdValid && axiCmdReady)) begin
                        stub_state <= STUB_DELAY;
                        stub_timer <= 3;
                    end
                end
                STUB_DELAY: begin
                    if (stub_timer == 0) begin
                        // Serve 128 bytes starting at the queued addr
                        for (k = 0; k < 128; k = k + 1) begin
                            if (next_addr_q[q_head] + k < CONV_WEIGHT_BYTES)
                                axiData[k*8 +: 8] <=
                                    ddr[next_addr_q[q_head] + k];
                            else
                                axiData[k*8 +: 8] <= 8'h00;
                        end
                        axiValid   <= 1;
                        q_head     <= q_head + 1;
                        stub_state <= STUB_VALID;
                        stub_timer <= 4;   // hold axiValid for 4 cycles
                    end else begin
                        stub_timer <= stub_timer - 1;
                    end
                end
                STUB_VALID: begin
                    // Hold axiValid high for stub_timer cycles so conv_axi's
                    // WAIT_DATA state is guaranteed to sample it at least once.
                    // Real AXI streams hold valid until ready; since axiReady
                    // is hardwired to 1, we fake it by holding for several
                    // cycles.
                    if (stub_timer == 0) begin
                        axiValid           <= 0;
                        pending_count_stub <= pending_count_stub - 1;
                        stub_state         <= STUB_IDLE;
                    end else begin
                        stub_timer <= stub_timer - 1;
                    end
                end
            endcase
        end
    end

    // =========================================================================
    // DUT
    // =========================================================================
    topModule dut (
        .clk(clk), .rst(rst),
        .rx(rx), .tx(tx),

        .addra_image(addra_image),
        .ena_image  (ena_image),
        .data_image (data_image),

        .addra_A(addra_A), .addrb_A(addrb_A),
        .dina_A (dina_A),  .wea_A  (wea_A),
        .doutb_A(doutb_A),

        .addra_B(addra_B), .addrb_B(addrb_B),
        .dina_B (dina_B),  .wea_B  (wea_B),
        .doutb_B(doutb_B),

        .addra_dense_A     (addra_dense_A),
        .data_write_dense_A(data_write_dense_A),
        .data_read_dense_A (data_read_dense_A),
        .ena_read_dense_A  (ena_read_dense_A),
        .ena_write_dense_A (ena_write_dense_A),
        .addra_dense_B     (addra_dense_B),
        .data_write_dense_B(data_write_dense_B),
        .data_read_dense_B (data_read_dense_B),
        .ena_read_dense_B  (ena_read_dense_B),
        .ena_write_dense_B (ena_write_dense_B),

        .axiCmdReady   (axiCmdReady),
        .axiCmdValid   (axiCmdValid),
        .axiAddress    (axiAddress),
        .axiData       (axiData),
        .axiValid      (axiValid),
        .axiReady      (axiReady),
        .axiBaseAddress(axiBaseAddress)
    );

    // =========================================================================
    // Monitoring & probing
    // =========================================================================
    integer axi_cmd_count = 0;
    integer axi_resp_count = 0;
    integer bramA_write_count = 0;
    integer bramB_write_count = 0;
    always @(posedge clk) begin
        if (axiCmdValid && axiCmdReady) axi_cmd_count <= axi_cmd_count + 1;
        if (axiValid)                    axi_resp_count <= axi_resp_count + 1;
        if (wea_A)                       bramA_write_count <= bramA_write_count + 1;
        if (wea_B)                       bramB_write_count <= bramB_write_count + 1;
    end

    wire [3:0] main_state     = dut.cur_state;
    wire [3:0] main_layer_idx = dut.layer_idx;
    wire [4:0] conv_state     = dut.u_conv_engine.state;
    wire       conv_go_int    = dut.u_conv_engine.go;
    wire       conv_done_int  = dut.u_conv_engine.done;
    wire [4:0] conv_axi_state = dut.u_conv_axi.state;
    wire       conv_axi_valid = dut.u_conv_axi.valid;
    wire       conv_weight_en = dut.u_conv_engine.weight_en;
    wire [31:0] conv_weight_addr_probe = dut.u_conv_engine.weight_addr;

    // Log the first 30 cycles where axiCmdValid goes high, so we can see
    // the exact address and timing
    integer axi_log_count = 0;
    reg axi_cmd_valid_prev = 0;
    always @(posedge clk) begin
        axi_cmd_valid_prev <= axiCmdValid;
        // Log rising edge of axiCmdValid
        if (axiCmdValid && !axi_cmd_valid_prev && axi_log_count < 10) begin
            $display("[%0t] AXI CMD #%0d: axiAddress=%h  addr[63:32]=%h  req_addr=%h  conv_weight_addr=%h",
                     $time, axi_log_count,
                     axiAddress, axiAddress[63:32], req_addr, conv_weight_addr_probe);
            axi_log_count <= axi_log_count + 1;
        end
    end

    // Log first few axiValid pulses with data
    integer axi_resp_log_count = 0;
    reg axi_valid_prev = 0;
    always @(posedge clk) begin
        axi_valid_prev <= axiValid;
        if (axiValid && !axi_valid_prev && axi_resp_log_count < 10) begin
            $display("[%0t] AXI RESP #%0d: axiData[63:0]=%h  axiData[127:64]=%h  conv_axi.valid=%b  conv_axi.state=%0d",
                     $time, axi_resp_log_count,
                     axiData[63:0], axiData[127:64], conv_axi_valid, conv_axi_state);
            axi_resp_log_count <= axi_resp_log_count + 1;
        end
    end

    // Golden output for conv1 (for correctness comparison) - must be declared
    // before any probe that references it (Verilog implicit-wire trap would
    // create an undriven 8-bit alias otherwise).
    reg [7:0] conv1_golden [0:ACT_SIZE - 1];

    // Log the first few bramA writes with decoded address info
    integer bram_log_count = 0;
    always @(posedge clk) begin
        if (wea_A && bram_log_count < 15) begin
            $display("[%0t] BRAMA WRITE #%0d: addr=%0d (c=%0d y=%0d x=%0d)  data=%0d  golden=%0d",
                     $time, bram_log_count,
                     addra_A[17:0],
                     addra_A[17:0] / (48*48),
                     (addra_A[17:0] % (48*48)) / 48,
                     addra_A[17:0] % 48,
                     $signed(dina_A),
                     $signed(conv1_golden[addra_A[17:0]]));
            bram_log_count <= bram_log_count + 1;
        end
    end
    reg conv_wv_prev = 0;
    integer conv_wv_pulses = 0;
    always @(posedge clk) begin
        conv_wv_prev <= dut.u_conv_engine.weight_valid;
        if (dut.u_conv_engine.weight_valid && !conv_wv_prev) begin
            if (conv_wv_pulses < 5) begin
                $display("[%0t] conv_weight_valid #%0d conv_state=%0d  weight_data[63:0]=%h  weight_data[127:64]=%h",
                         $time, conv_wv_pulses, conv_state,
                         dut.u_conv_engine.weight_data[63:0],
                         dut.u_conv_engine.weight_data[127:64]);
            end
            conv_wv_pulses <= conv_wv_pulses + 1;
        end
    end

    // Log first few LATCH_PIXEL events to see what pixel values are actually used
    reg [4:0] conv_state_d = 0;
    integer latch_log_count = 0;
    always @(posedge clk) begin
        conv_state_d <= conv_state;
        // LATCH_PIXEL is state 8
        if (conv_state == 5'd8 && conv_state_d != 5'd8 && latch_log_count < 15) begin
            $display("[%0t] LATCH_PIXEL #%0d: is_padding=%b  data_in=%h (sign=%b)  pixel_r_next=%h  addra_in=%h",
                     $time, latch_log_count,
                     dut.u_conv_engine.is_padding,
                     dut.u_conv_engine.data_in,
                     dut.u_conv_engine.data_in[7],
                     dut.u_conv_engine.is_padding ? 8'sd0 : dut.u_conv_engine.data_in,
                     dut.u_conv_engine.addra_in);
            latch_log_count <= latch_log_count + 1;
        end
    end

    // Track when conv1 completes (layer_idx transitions 0 -> 1)
    reg [3:0] layer_idx_prev = 0;
    reg       conv1_done_seen = 0;
    reg [63:0] conv1_done_time = 0;
    always @(posedge clk) begin
        layer_idx_prev <= main_layer_idx;
        if (main_layer_idx == 4'd1 && layer_idx_prev == 4'd0 && !conv1_done_seen) begin
            conv1_done_seen <= 1;
            conv1_done_time <= $time;
            $display("[%0t] *** Conv1 complete - layer_idx advanced to 1 ***", $time);
            $display("    bramA writes so far: %0d (expected 147456)",
                     bramA_write_count);
        end
    end

    // =========================================================================
    // UART TX: send 'g' at 9600 baud
    // =========================================================================
    localparam BIT_CYCLES = 10417;
    task send_uart_byte(input [7:0] byte_val);
        integer j;
        begin
            rx = 0;
            #(BIT_CYCLES * CLK_PERIOD);
            for (j = 0; j < 8; j = j + 1) begin
                rx = byte_val[j];
                #(BIT_CYCLES * CLK_PERIOD);
            end
            rx = 1;
            #(BIT_CYCLES * CLK_PERIOD);
        end
    endtask

    // =========================================================================
    // Stimulus
    // =========================================================================
    integer i;
    integer errors;
    integer printed;
    integer conv2_waits;

    initial begin
        $display("=== tb_topmodule_chain ===");

        // Load files
        $readmemh("image.hex",           image_mem);
        $readmemh("w_mem_hex.txt",       ddr);
        $readmemh("conv1_expected.hex",  conv1_golden);

        // Sanity
        $display("  image[0]=%02x, image[2303]=%02x",
                 image_mem[0], image_mem[2303]);
        $display("  ddr[0]=%02x (conv1 bias0), ddr[128]=%02x (first conv1 weight)",
                 ddr[0], ddr[128]);
        $display("  conv1_golden[0..4] = %02x %02x %02x %02x %02x",
                 conv1_golden[0], conv1_golden[1], conv1_golden[2],
                 conv1_golden[3], conv1_golden[4]);

        // Reset
        rst = 1; rx = 1;
        #(CLK_PERIOD * 20);
        rst = 0;
        #(CLK_PERIOD * 20);

        // Trigger
        $display("[%0t] Sending 'g' over UART...", $time);
        send_uart_byte(8'h67);
        $display("[%0t] UART sent; awaiting conv1 completion...", $time);

        // Wait for conv1 to complete (layer_idx advances to 1)
        // Budget: ~15M cycles = 150ms sim time, give 40ms extra
        wait (conv1_done_seen);
        $display("[%0t] Conv1 complete. Validating output...", $time);

        #(CLK_PERIOD * 10);    // settle

        // =====================================================================
        // CHECK 1: bramA contents match conv1 golden
        // =====================================================================
        errors  = 0;
        printed = 0;
        for (i = 0; i < ACT_SIZE; i = i + 1) begin
            if (bramA[i] !== conv1_golden[i]) begin
                errors = errors + 1;
                if (printed < 20) begin
                    $display("  CONV1 MISMATCH @ %0d: got=%0d expected=%0d",
                             i, $signed(bramA[i]), $signed(conv1_golden[i]));
                    printed = printed + 1;
                end
            end
        end
        $display("[%0t] CONV1 check: %0d / %0d mismatches", $time, errors, ACT_SIZE);

        if (errors > 0) begin
            $display("");
            $display("*** CHAIN TEST FAILED at conv1 output check ***");
            $display("    bramA_writes  = %0d (expected 147456)", bramA_write_count);
            $display("    main_state    = %0d", main_state);
            $display("    main_layer_idx= %0d", main_layer_idx);
            $finish;
        end

        // =====================================================================
        // CHECK 2: conv2 starts issuing AXI requests
        // =====================================================================
        $display("");
        $display("[%0t] Check 2: conv2 should be starting...", $time);
        $display("    main_state        = %0d", main_state);
        $display("    layer_idx         = %0d", main_layer_idx);
        $display("    conv_state        = %0d", conv_state);

        // Snapshot current AXI count, wait a bit, check it increased
        conv2_waits = axi_cmd_count;
        #(CLK_PERIOD * 10_000);    // 100us

        $display("    axi_cmds after 100us wait: %0d (was %0d)",
                 axi_cmd_count, conv2_waits);

        if (axi_cmd_count > conv2_waits + 10) begin
            $display("    => conv2 is issuing AXI requests. OK.");
        end else begin
            $display("    => conv2 NOT progressing (AXI stuck). FAIL.");
            $display("       conv_state=%0d  conv_axi_state=%0d  main_state=%0d",
                     conv_state, conv_axi_state, main_state);
            $display("*** CHAIN TEST FAILED at conv2 startup ***");
            $finish;
        end

        // =====================================================================
        // All checks passed
        // =====================================================================
        $display("");
        $display("=== END OF TEST ===");
        $display("  conv1 output:     147456 pixels match golden exactly");
        $display("  layer transition: 0 -> 1 (conv1 -> conv2)");
        $display("  conv2 started:    axi_cmds advanced by %0d",
                 axi_cmd_count - conv2_waits);
        $display("");
        $display("  *** CHAIN TEST PASSED ***");
        $display("  (conv1 end-to-end correct AND conv2 successfully started)");
        $finish;
    end

    // Progress printouts every 5ms
    initial begin
        while (!conv1_done_seen) begin
            #(CLK_PERIOD * 500_000);     // 5ms
            $display("[%0t] progress: main_state=%0d  layer=%0d  conv_state=%0d  axi_cmds=%0d  axi_resps=%0d  bramA=%0d  conv_wv_pulses=%0d",
                     $time, main_state, main_layer_idx, conv_state,
                     axi_cmd_count, axi_resp_count, bramA_write_count,
                     conv_wv_pulses);
        end
    end

    // Hard timeout (200 ms sim time)
    initial begin
        #(200_000_000);
        $display("");
        $display("[%0t] *** HARD TIMEOUT ***", $time);
        $display("  main_state=%0d  layer=%0d  conv_state=%0d",
                 main_state, main_layer_idx, conv_state);
        $display("  axi_cmds=%0d  axi_resps=%0d  bramA=%0d  bramB=%0d",
                 axi_cmd_count, axi_resp_count,
                 bramA_write_count, bramB_write_count);
        $finish;
    end

endmodule