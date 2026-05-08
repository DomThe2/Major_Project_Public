// ============================================================================
// tb_pool_engine.v
//
// Unit test for pool_engine. Loads a small 8x8x2 test pattern into a fake
// input BRAM, runs 2x2 max pool, checks 4x4x2 output.
//
// Deliberately tiny so sim runs in seconds.
// ============================================================================

`timescale 1ns / 1ps

module tb_pool_engine;

    localparam CLK_PERIOD = 10;
    localparam CHANNELS = 2;
    localparam IN_W = 8;
    localparam IN_H = 8;
    localparam OUT_W = IN_W / 2;
    localparam OUT_H = IN_H / 2;
    localparam ACT_AW = 18;

    reg clk = 0;
    reg rst = 1;
    reg go  = 0;
    wire done;

    wire [ACT_AW-1:0] addra_in;
    wire              ena_in;
    wire signed [7:0] data_in;

    wire [ACT_AW-1:0] addra_out;
    wire signed [7:0] data_out;
    wire              we_out;

    always #(CLK_PERIOD/2) clk = ~clk;

    // =========================================================================
    // DUT
    // =========================================================================
    pool_engine #(
        .MAX_CHANNELS(8),
        .MAX_IN_W    (16),
        .MAX_IN_H    (16),
        .ACT_AW      (ACT_AW)
    ) dut (
        .clk(clk), .rst(rst),
        .go  (go),
        .done(done),
        .cfg_channels(CHANNELS[$clog2(8+1)-1:0]),
        .cfg_in_w    (IN_W[$clog2(16+1)-1:0]),
        .cfg_in_h    (IN_H[$clog2(16+1)-1:0]),
        .addra_in (addra_in),
        .data_in  (data_in),
        .ena_in   (ena_in),
        .addra_out(addra_out),
        .data_out (data_out),
        .we_out   (we_out)
    );

    // =========================================================================
    // Fake input BRAM (1-cycle read) with a known pattern
    // Channel 0: pixel = y*10 + x        (deterministic, max always bottom-right of each 2x2 window)
    // Channel 1: pixel = 50 - y*10 - x   (max always top-left of each 2x2 window)
    // =========================================================================
    reg [7:0] in_bram [0:CHANNELS*IN_W*IN_H - 1];
    reg [7:0] data_in_r;
    always @(posedge clk) if (ena_in) data_in_r <= in_bram[addra_in];
    assign data_in = data_in_r;

    // Capture outputs
    reg [7:0] out_capture [0:CHANNELS*OUT_W*OUT_H - 1];
    integer write_count = 0;
    always @(posedge clk) begin
        if (we_out) begin
            out_capture[addra_out] <= data_out;
            write_count <= write_count + 1;
        end
    end

    // =========================================================================
    // Golden computation (in testbench Verilog, mirroring the pool logic)
    // =========================================================================
    reg [7:0] golden [0:CHANNELS*OUT_W*OUT_H - 1];

    integer c, py, px, cy, cx, best;
    integer src_pix, src_idx, dst_idx;

    integer i, errors, printed;

    initial begin
        $display("=== tb_pool_engine ===");

        // Fill input pattern and compute golden
        for (c = 0; c < CHANNELS; c = c + 1) begin
            for (py = 0; py < IN_H; py = py + 1) begin
                for (px = 0; px < IN_W; px = px + 1) begin
                    if (c == 0) in_bram[c*IN_W*IN_H + py*IN_W + px] = py*10 + px;
                    else        in_bram[c*IN_W*IN_H + py*IN_W + px] = 50 - py*10 - px;
                end
            end
        end

        // Compute max-pool expected
        for (c = 0; c < CHANNELS; c = c + 1) begin
            for (py = 0; py < OUT_H; py = py + 1) begin
                for (px = 0; px < OUT_W; px = px + 1) begin
                    best = -9999;
                    for (cy = 0; cy < 2; cy = cy + 1) begin
                        for (cx = 0; cx < 2; cx = cx + 1) begin
                            src_idx = c*IN_W*IN_H + (py*2+cy)*IN_W + (px*2+cx);
                            src_pix = $signed(in_bram[src_idx]);
                            if (src_pix > best) best = src_pix;
                        end
                    end
                    dst_idx = c*OUT_W*OUT_H + py*OUT_W + px;
                    golden[dst_idx] = best[7:0];
                end
            end
        end

        // Reset + run
        rst = 1;
        #(CLK_PERIOD * 5);
        rst = 0;
        #(CLK_PERIOD * 2);
        go = 1;
        #(CLK_PERIOD);
        go = 0;

        wait (done);
        #(CLK_PERIOD * 2);

        // Compare
        errors = 0;
        printed = 0;
        for (i = 0; i < CHANNELS*OUT_W*OUT_H; i = i + 1) begin
            if (out_capture[i] !== golden[i]) begin
                errors = errors + 1;
                if (printed < 16) begin
                    $display("  MISMATCH at idx %0d: got=%0d expected=%0d",
                             i, $signed(out_capture[i]), $signed(golden[i]));
                    printed = printed + 1;
                end
            end
        end

        $display("");
        $display("=== END OF TEST ===");
        $display("  Writes observed: %0d / %0d", write_count, CHANNELS*OUT_W*OUT_H);
        $display("  Mismatches:      %0d", errors);
        if (errors == 0 && write_count == CHANNELS*OUT_W*OUT_H)
            $display("  *** PASS ***");
        else
            $display("  *** FAIL ***");
        $finish;
    end

    initial begin
        #(CLK_PERIOD * 500_000);
        $display("[%0t] TIMEOUT", $time);
        $finish;
    end

endmodule