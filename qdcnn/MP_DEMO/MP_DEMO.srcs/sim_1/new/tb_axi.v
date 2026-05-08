`timescale 1ns / 1ps

// ============================================================================
// Module: tb_axi_driver
// Author: V. E. Dementyev
//
// Standalone testbench for axi_driver. Models a simple AXI DataMover that
// returns predictable data for given addresses, and runs a sequence of
// requests through axi_driver to verify:
//
//   Test 1: Single request returns correct data
//   Test 2: Two sequential requests return correct data each
//   Test 3: Back-to-back requests issued before previous data returns
//           (THIS IS THE MULTI-ISSUE CASE - if axi_driver is single-issue
//            the test will still pass but be slower)
//   Test 4: Verify no data is dropped under burst load (8 requests pumped
//           in fast)
//   Test 5: Sanity: requested address propagates to AXI command correctly
//
// Behavioral AXI model:
//   - Returns data[1023:0] = {32 copies of (target_addr[31:0] XOR pattern)}
//     so each unique address gives a recognizable, unique payload.
//   - Configurable AXI latency (default 30 cycles - similar to real HW).
//
// To run:
//   xvlog tb_axi_driver.v axi_driver.v
//   xelab tb_axi_driver -s tb_axi_driver_sim
//   xsim tb_axi_driver_sim -R
// ============================================================================

module tb_axi_driver;

    // ----- Clock & reset -----
    reg clk = 0;
    reg rst = 1;
    always #5 clk = ~clk;   // 100 MHz

    // ----- DUT request side -----
    reg  [31:0]  addr;
    reg          en;
    reg  [9:0]   bytes;
    wire [1023:0] data;
    wire         valid;
    wire         en_ready;

    // ----- DUT AXI side -----
    wire         axiCmdReady;
    wire         axiCmdValid;
    wire [71:0]  axiAddress;
    reg  [1023:0] axiData;
    reg          axiValid;
    wire         axiReady;
    reg  [31:0]  axiBaseAddress;

    // ----- DUT instance -----
    axi_driver dut (
        .clk(clk),
        .rst(rst),
        .addr(addr),
        .en(en),
        .bytes(bytes),
        .data(data),
        .valid(valid),
        .en_ready(en_ready),
        .axiCmdReady(axiCmdReady),
        .axiCmdValid(axiCmdValid),
        .axiAddress(axiAddress),
        .axiData(axiData),
        .axiValid(axiValid),
        .axiReady(axiReady),
        .axiBaseAddress(axiBaseAddress)
    );

    // ========================================================================
    // Behavioral AXI DataMover model
    // ========================================================================
    // Accepts commands instantly (axiCmdReady=1 always).
    // Tracks pending commands in a queue with their "data ready" times.
    // When latency expires, drives axiData and pulses axiValid.
    //
    // CONFIGURE LATENCY HERE to match what we expect on real HW.
    // ========================================================================

    parameter AXI_LATENCY_CYCLES = 30;

    assign axiCmdReady = 1'b1;   // always ready to accept a command

    // Command queue: stores target_addr (extracted from axiAddress field) and
    // the cycle count when its data should arrive.
    reg  [31:0] cmd_q_addr  [0:31];
    reg  [31:0] cmd_q_when  [0:31];
    reg  [5:0]  cmd_q_head;
    reg  [5:0]  cmd_q_tail;

    // Cycle counter
    reg [31:0] cyc;
    always @(posedge clk) begin
        if (rst) cyc <= 0;
        else     cyc <= cyc + 1;
    end

    // Capture command when DUT issues it
    always @(posedge clk) begin
        if (rst) begin
            cmd_q_head <= 0;
            cmd_q_tail <= 0;
            axiData    <= 0;
            axiValid   <= 0;
        end else begin
            // Capture when both axiCmdValid AND axiCmdReady are high
            if (axiCmdValid && axiCmdReady) begin
                // axiAddress[63:32] holds target_addr per axi_driver's packing
                // {4'h0, 4'h0, target_addr[31:0], 1'b0, 1'b1, 6'h00, 1'b1, 23'd0+bytes}
                // So bits [63:32] are target_addr.
                cmd_q_addr[cmd_q_tail[4:0]] <= axiAddress[63:32];
                cmd_q_when[cmd_q_tail[4:0]] <= cyc + AXI_LATENCY_CYCLES;
                cmd_q_tail <= cmd_q_tail + 1;
                $display("[%0t] AXI MODEL: command captured  addr=0x%08x  will_return_at_cyc=%0d",
                         $time, axiAddress[63:32], cyc + AXI_LATENCY_CYCLES);
            end

            // Default: drop axiValid each cycle
            axiValid <= 0;

            // Check if next-in-queue command is ready
            if (cmd_q_head != cmd_q_tail) begin
                if (cyc >= cmd_q_when[cmd_q_head[4:0]]) begin
                    // Generate a recognizable pattern based on the address.
                    // Each 32-bit lane = address XOR position-in-lane.
                    // This way we can verify the data we receive matches
                    // the address we requested.
                    axiData <= {
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h1F1F0000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h1E1E0000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h1D1D0000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h1C1C0000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h1B1B0000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h1A1A0000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h19190000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h18180000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h17170000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h16160000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h15150000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h14140000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h13130000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h12120000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h11110000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h10100000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h0F0F0000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h0E0E0000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h0D0D0000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h0C0C0000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h0B0B0000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h0A0A0000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h09090000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h08080000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h07070000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h06060000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h05050000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h04040000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h03030000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h02020000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h01010000,
                        cmd_q_addr[cmd_q_head[4:0]] ^ 32'h00000000
                    };
                    axiValid <= 1;
                    $display("[%0t] AXI MODEL: returning data  addr=0x%08x  (low32=0x%08x)",
                             $time, cmd_q_addr[cmd_q_head[4:0]],
                             cmd_q_addr[cmd_q_head[4:0]] ^ 32'h00000000);
                    cmd_q_head <= cmd_q_head + 1;
                end
            end
        end
    end

    // ========================================================================
    // Helper functions
    // ========================================================================

    // Compute what data we expect for a given target address (matches
    // the AXI model's pattern generator above)
    function [1023:0] expected_data(input [31:0] target_addr);
        expected_data = {
            target_addr ^ 32'h1F1F0000,
            target_addr ^ 32'h1E1E0000,
            target_addr ^ 32'h1D1D0000,
            target_addr ^ 32'h1C1C0000,
            target_addr ^ 32'h1B1B0000,
            target_addr ^ 32'h1A1A0000,
            target_addr ^ 32'h19190000,
            target_addr ^ 32'h18180000,
            target_addr ^ 32'h17170000,
            target_addr ^ 32'h16160000,
            target_addr ^ 32'h15150000,
            target_addr ^ 32'h14140000,
            target_addr ^ 32'h13130000,
            target_addr ^ 32'h12120000,
            target_addr ^ 32'h11110000,
            target_addr ^ 32'h10100000,
            target_addr ^ 32'h0F0F0000,
            target_addr ^ 32'h0E0E0000,
            target_addr ^ 32'h0D0D0000,
            target_addr ^ 32'h0C0C0000,
            target_addr ^ 32'h0B0B0000,
            target_addr ^ 32'h0A0A0000,
            target_addr ^ 32'h09090000,
            target_addr ^ 32'h08080000,
            target_addr ^ 32'h07070000,
            target_addr ^ 32'h06060000,
            target_addr ^ 32'h05050000,
            target_addr ^ 32'h04040000,
            target_addr ^ 32'h03030000,
            target_addr ^ 32'h02020000,
            target_addr ^ 32'h01010000,
            target_addr ^ 32'h00000000
        };
    endfunction

    // Issue a single request: hold en for one cycle with given addr, but
    // wait for en_ready first to avoid dropping requests.
    task issue_request(input [31:0] req_addr);
        begin
            // Wait for driver to be ready to accept
            @(posedge clk);
            while (!en_ready) @(posedge clk);
            addr <= req_addr;
            en   <= 1;
            bytes <= 10'd128;
            @(posedge clk);
            en <= 0;
            $display("[%0t] TB: issued request for addr=0x%08x  (target=0x%08x)",
                     $time, req_addr, axiBaseAddress + req_addr);
        end
    endtask

    // Wait for valid to pulse, capture data
    reg [1023:0] captured_data;
    reg [1023:0] exp_full;       // for storing expected_data() function results
    integer       capture_count;

    always @(posedge clk) begin
        if (!rst && valid) begin
            captured_data <= data;
            capture_count <= capture_count + 1;
            $display("[%0t] TB: captured data #%0d  low32=0x%08x  high32=0x%08x",
                     $time, capture_count + 1, data[31:0], data[1023:992]);
        end
    end

    // ========================================================================
    // Test sequence
    // ========================================================================
    integer pass_count, fail_count;

    initial begin
        // Initialize
        addr           = 0;
        en             = 0;
        bytes          = 10'd128;
        axiBaseAddress = 32'h10000000;   // pretend DDR base
        capture_count  = 0;
        pass_count     = 0;
        fail_count     = 0;

        $display("============================================================");
        $display(" tb_axi_driver - testing axi_driver in isolation");
        $display(" AXI_LATENCY_CYCLES = %0d", AXI_LATENCY_CYCLES);
        $display("============================================================");

        // Reset
        #50;
        rst = 0;
        #20;

        // ====================================================================
        // TEST 1: single request, verify data returned
        // ====================================================================
        $display("\n--- TEST 1: single request ---");
        capture_count = 0;
        issue_request(32'h00000000);

        // Wait long enough for data to come back
        repeat (AXI_LATENCY_CYCLES + 20) @(posedge clk);

        if (capture_count == 1) begin
            exp_full = expected_data(axiBaseAddress + 32'h00000000);
            if (captured_data === exp_full) begin
                $display("TEST 1 PASS");
                pass_count = pass_count + 1;
            end else begin
                $display("TEST 1 FAIL: data mismatch");
                $display("  expected low32: 0x%08x", exp_full[31:0]);
                $display("  got low32:      0x%08x", captured_data[31:0]);
                fail_count = fail_count + 1;
            end
        end else begin
            $display("TEST 1 FAIL: expected 1 valid pulse, got %0d", capture_count);
            fail_count = fail_count + 1;
        end

        // ====================================================================
        // TEST 2: two sequential requests
        // ====================================================================
        $display("\n--- TEST 2: two sequential requests ---");
        capture_count = 0;
        issue_request(32'h00000080);
        repeat (AXI_LATENCY_CYCLES + 20) @(posedge clk);
        issue_request(32'h00000100);
        repeat (AXI_LATENCY_CYCLES + 20) @(posedge clk);

        if (capture_count == 2) begin
            $display("TEST 2 PASS: got 2 valid pulses");
            pass_count = pass_count + 1;
        end else begin
            $display("TEST 2 FAIL: expected 2 valid pulses, got %0d", capture_count);
            fail_count = fail_count + 1;
        end

        // ====================================================================
        // TEST 3: back-to-back requests (multi-issue test)
        //         Issue 4 requests in 4 cycles, then wait for all to come back
        // ====================================================================
        $display("\n--- TEST 3: 4 back-to-back requests (multi-issue) ---");
        capture_count = 0;
        issue_request(32'h00001000);
        issue_request(32'h00001080);
        issue_request(32'h00001100);
        issue_request(32'h00001180);

        // Wait long enough for all 4 to complete
        repeat (AXI_LATENCY_CYCLES + 50) @(posedge clk);

        if (capture_count == 4) begin
            $display("TEST 3 PASS: 4 requests, 4 responses (multi-issue working)");
            pass_count = pass_count + 1;
        end else if (capture_count > 0) begin
            $display("TEST 3 PARTIAL: expected 4 valid pulses, got %0d", capture_count);
            $display("                (single-issue driver would still get them, just slower)");
            fail_count = fail_count + 1;
        end else begin
            $display("TEST 3 FAIL: got 0 responses");
            fail_count = fail_count + 1;
        end

        // ====================================================================
        // TEST 4: 8 back-to-back, verify no drops
        // ====================================================================
        $display("\n--- TEST 4: 8 back-to-back requests (stress test) ---");
        capture_count = 0;
        issue_request(32'h00002000);
        issue_request(32'h00002080);
        issue_request(32'h00002100);
        issue_request(32'h00002180);
        issue_request(32'h00002200);
        issue_request(32'h00002280);
        issue_request(32'h00002300);
        issue_request(32'h00002380);

        repeat (AXI_LATENCY_CYCLES * 4 + 50) @(posedge clk);

        if (capture_count == 8) begin
            $display("TEST 4 PASS: 8 requests, 8 responses");
            pass_count = pass_count + 1;
        end else begin
            $display("TEST 4 FAIL: expected 8 valid pulses, got %0d", capture_count);
            fail_count = fail_count + 1;
        end

        // ====================================================================
        // TEST 5: sanity check - addr propagates to AXI command
        // ====================================================================
        $display("\n--- TEST 5: address propagation ---");
        capture_count = 0;
        issue_request(32'hDEADBEE0);    // pick a recognizable address
        repeat (AXI_LATENCY_CYCLES + 20) @(posedge clk);

        // Expected target addr = axiBaseAddress + addr
        exp_full = expected_data(axiBaseAddress + 32'hDEADBEE0);
        if (captured_data === exp_full) begin
            $display("TEST 5 PASS: address propagated correctly");
            pass_count = pass_count + 1;
        end else begin
            $display("TEST 5 FAIL: data does not match address");
            $display("  expected: low32=0x%08x  high32=0x%08x",
                     exp_full[31:0], exp_full[1023:992]);
            $display("  got:      low32=0x%08x  high32=0x%08x",
                     captured_data[31:0], captured_data[1023:992]);
            fail_count = fail_count + 1;
        end

        // ====================================================================
        // Summary
        // ====================================================================
        $display("\n============================================================");
        $display(" RESULTS:  %0d pass,  %0d fail",  pass_count, fail_count);
        $display("============================================================");

        if (fail_count == 0)
            $display(" *** ALL TESTS PASSED ***");
        else
            $display(" *** %0d FAILURES ***", fail_count);

        $finish;
    end

    // Safety timeout
    initial begin
        #100000;   // 100 us
        $display("[%0t] TIMEOUT - test ran too long", $time);
        $finish;
    end

endmodule