`timescale 1ns/1ps

// ============================================================================
// Testbench: tb_axi_driver_clean
//
// Cleaner version that mimics the EXACT protocol conv_engine uses:
// one-cycle weight_en pulse (registered, no handshake check).
//
// This testbench tells us:
//   1. Does axi_driver correctly handle a stream of one-cycle pulses?
//   2. Does it return responses in order?
//   3. Does it drop requests if cmd_fifo is full at the moment of pulse?
//   4. What's the maximum sustainable issue rate?
//   5. Does the multi-issue counter (outstanding) get out of sync?
// ============================================================================

module tb_axi_driver_clean;

    reg clk = 0;
    reg rst = 1;
    always #5 clk = ~clk;          // 100 MHz

    // DUT interface
    reg  [31:0]   addr;
    reg           en;
    reg  [9:0]    bytes;
    wire          en_ready;
    wire [1023:0] data;
    wire          valid;

    wire          axiCmdReady;
    wire          axiCmdValid;
    wire [71:0]   axiAddress;
    wire [1023:0] axiData;
    wire          axiValid;
    wire          axiReady;
    reg  [31:0]   axiBaseAddress = 32'h1000_0000;

    integer cyc = 0;
    always @(posedge clk) cyc <= cyc + 1;

    axi_driver #(.MAX_OUTSTANDING(4)) dut (
        .clk(clk), .rst(rst),
        .addr(addr), .en(en), .bytes(bytes), .en_ready(en_ready),
        .data(data), .valid(valid),
        .axiCmdReady(axiCmdReady),
        .axiCmdValid(axiCmdValid),
        .axiAddress(axiAddress),
        .axiData(axiData),
        .axiValid(axiValid),
        .axiReady(axiReady),
        .axiBaseAddress(axiBaseAddress)
    );

    // ----------------------------------------------------------------
    // MOCK AXI DataMover (configurable latency)
    // ----------------------------------------------------------------
    parameter integer MOCK_LATENCY = 50;
    parameter integer MOCK_QUEUE_DEPTH = 32;

    assign axiCmdReady = 1'b1;   // always ready; the limit is MAX_OUTSTANDING

    reg [32:0]  q_addr [0:MOCK_QUEUE_DEPTH-1];
    integer     q_arr  [0:MOCK_QUEUE_DEPTH-1];
    integer     q_wr = 0;
    integer     q_rd = 0;
    integer     q_count = 0;

    reg        m_valid = 0;
    reg [31:0] m_addr = 0;
    assign axiValid = m_valid;
    assign axiData = {32{m_addr}};

    // SINGLE always block to avoid q_count race
    always @(posedge clk) begin
        if (rst) begin
            q_wr <= 0; q_rd <= 0; q_count <= 0;
            m_valid <= 0; m_addr <= 0;
        end else begin
            // Compute updates
            // 1. Capture command
            if (axiCmdValid && axiCmdReady) begin
                q_addr[q_wr] <= axiAddress[63:32];
                q_arr[q_wr]  <= cyc;
                q_wr <= (q_wr == MOCK_QUEUE_DEPTH-1) ? 0 : q_wr + 1;
                $display("[%0d] MOCK: cmd captured addr=0x%08x  q_count(pre+1)=%0d",
                         cyc, axiAddress[63:32], q_count + 1);
            end

            // 2. Process response delivery (consume from queue)
            if (m_valid && axiReady) begin
                m_valid <= 0;
                q_rd <= (q_rd == MOCK_QUEUE_DEPTH-1) ? 0 : q_rd + 1;
            end

            // 3. Issue next response after MOCK_LATENCY
            if (!m_valid && q_count > 0) begin
                if (cyc - q_arr[q_rd] >= MOCK_LATENCY) begin
                    m_valid <= 1;
                    m_addr <= q_addr[q_rd];
                end
            end

            // 4. Combine q_count update (single assignment to avoid races)
            case ({(axiCmdValid && axiCmdReady), (m_valid && axiReady)})
                2'b10: q_count <= q_count + 1;
                2'b01: q_count <= q_count - 1;
                2'b11: q_count <= q_count;     // simultaneous push and pop
                2'b00: q_count <= q_count;
            endcase
        end
    end

    // ----------------------------------------------------------------
    // Issue accounting
    // ----------------------------------------------------------------
    integer issued_count = 0;     // number of pulses where en was 1 AND en_ready was 1
    integer dropped_count = 0;    // number of pulses where en was 1 but en_ready was 0
    integer responded_count = 0;  // number of valid pulses we received
    integer expected_addrs [0:1023];
    integer got_addrs [0:1023];

    always @(posedge clk) begin
        if (en && en_ready && !rst) begin
            expected_addrs[issued_count] = axiBaseAddress + addr;
            issued_count = issued_count + 1;
        end
        if (en && !en_ready && !rst) begin
            dropped_count = dropped_count + 1;
            $display("[%0d] **** DROP: addr=0x%08x en_ready=0 cmd_count=%0d",
                     cyc, addr, dut.cmd_count);
        end
        if (valid && !rst) begin
            got_addrs[responded_count] = data[31:0];
            $display("[%0d] RESP[%0d]: got=0x%08x",
                     cyc, responded_count, data[31:0]);
            responded_count = responded_count + 1;
        end
    end

    // ----------------------------------------------------------------
    // pulse_one: SET en=1 for exactly one cycle, like conv_engine does
    // ----------------------------------------------------------------
    task pulse_one;
        input [31:0] req_addr;
        begin
            addr  <= req_addr;
            bytes <= 10'd128;
            en    <= 1;
            @(posedge clk);
            #1;     // small delay to let NBA settle
            en    <= 0;
            addr  <= 32'h0;
            bytes <= 10'd0;
        end
    endtask

    // ----------------------------------------------------------------
    // Idle one cycle (en stays 0)
    // ----------------------------------------------------------------
    task idle_one;
        begin
            en <= 0;
            @(posedge clk);
            #1;
        end
    endtask

    // ----------------------------------------------------------------
    // Test scenarios
    // ----------------------------------------------------------------
    integer i;
    integer prev_cnt;
    integer wait_cyc;

    initial begin
        $dumpfile("tb_axi_driver_clean.vcd");
        $dumpvars(0, tb_axi_driver_clean);

        addr = 0; en = 0; bytes = 0;

        rst = 1;
        repeat (5) @(posedge clk);
        #1; rst = 0;

        $display("\n========================================================");
        $display(" T1: 4 pulses spaced 100 cycles apart (no concurrency)");
        $display("========================================================");
        for (i = 0; i < 4; i = i + 1) begin
            pulse_one(32'h0000_1000 + i * 32'h80);
            repeat (100) @(posedge clk);
        end
        // Wait for everything to drain
        wait_cyc = 0;
        while (responded_count < issued_count && wait_cyc < 1000) begin
            @(posedge clk);
            wait_cyc = wait_cyc + 1;
        end
        $display("[%0d] T1: issued=%0d dropped=%0d responded=%0d",
                 cyc, issued_count, dropped_count, responded_count);

        $display("\n========================================================");
        $display(" T2: 8 BACK-TO-BACK pulses (one per cycle)");
        $display("     This is what conv_engine producer FSM does");
        $display("     in P_BURST when prod_can_issue is high.");
        $display("========================================================");
        prev_cnt = issued_count;
        for (i = 0; i < 8; i = i + 1) begin
            pulse_one(32'h0000_2000 + i * 32'h80);
            // No idle - back to back
        end
        wait_cyc = 0;
        while (responded_count < issued_count && wait_cyc < 2000) begin
            @(posedge clk);
            wait_cyc = wait_cyc + 1;
        end
        $display("[%0d] T2: pulses=8 issued_delta=%0d dropped=%0d total_resp=%0d",
                 cyc, issued_count - prev_cnt, dropped_count, responded_count);

        $display("\n========================================================");
        $display(" T3: 32 PULSES BACK-TO-BACK - tests overflow behavior");
        $display(" cmd_fifo depth = 8, MAX_OUTSTANDING = 4");
        $display(" Many of these pulses WILL be dropped (en_ready will go low)");
        $display("========================================================");
        prev_cnt = issued_count;
        for (i = 0; i < 32; i = i + 1) begin
            pulse_one(32'h0000_3000 + i * 32'h80);
        end
        wait_cyc = 0;
        while (responded_count < issued_count && wait_cyc < 5000) begin
            @(posedge clk);
            wait_cyc = wait_cyc + 1;
        end
        $display("[%0d] T3: pulses=32 issued_delta=%0d dropped_total=%0d total_resp=%0d",
                 cyc, issued_count - prev_cnt, dropped_count, responded_count);

        $display("\n========================================================");
        $display(" T4: 16 PULSES WITH 2-CYCLE GAPS");
        $display("     (the spacing the multi-issue producer would use)");
        $display("========================================================");
        prev_cnt = issued_count;
        for (i = 0; i < 16; i = i + 1) begin
            pulse_one(32'h0000_4000 + i * 32'h80);
            idle_one();
            idle_one();
        end
        wait_cyc = 0;
        while (responded_count < issued_count && wait_cyc < 3000) begin
            @(posedge clk);
            wait_cyc = wait_cyc + 1;
        end
        $display("[%0d] T4: pulses=16 issued_delta=%0d dropped_total=%0d total_resp=%0d",
                 cyc, issued_count - prev_cnt, dropped_count, responded_count);

        // Drain a bit more
        repeat (200) @(posedge clk);

        $display("\n========================================================");
        $display(" SUMMARY");
        $display("========================================================");
        $display(" Total pulses sent:   %0d", issued_count + dropped_count);
        $display(" Pulses ACCEPTED:     %0d", issued_count);
        $display(" Pulses DROPPED:      %0d (en_ready was low)", dropped_count);
        $display(" Responses received:  %0d", responded_count);
        $display(" Final DUT state:     outstanding=%0d cmd_count=%0d data_count=%0d",
                 dut.outstanding, dut.cmd_count, dut.data_count);

        // Verify in-order responses
        if (responded_count == issued_count) begin
            $display(" Checking in-order delivery...");
            for (i = 0; i < responded_count; i = i + 1) begin
                if (got_addrs[i] !== expected_addrs[i]) begin
                    $display("   MISMATCH at index %0d: expected=0x%08x got=0x%08x",
                             i, expected_addrs[i], got_addrs[i]);
                end
            end
            $display(" In-order check complete.");
        end else begin
            $display(" *** RESPONSE COUNT MISMATCH ***");
            $display("    accepted=%0d but got %0d responses", issued_count, responded_count);
            $display("    Missing: %0d responses", issued_count - responded_count);
        end

        $finish;
    end

    // Watchdog
    initial begin
        #200000000;   // 200 ms sim time
        $display("[WATCHDOG] Test ran too long; aborting.");
        $finish;
    end

endmodule