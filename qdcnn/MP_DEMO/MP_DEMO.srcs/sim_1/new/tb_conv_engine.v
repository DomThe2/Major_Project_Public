// ============================================================================
// tb_conv_engine.v
//
// Unit test for conv_engine.v.
// Exercises conv1 (Cin=1, Cout=64, 48x48) and checks that every output pixel
// matches the golden values computed by Python integer_forward().
//
// Fake infrastructure:
//   - "DDR" is a simple $readmemh-loaded array. axi_driver stub serves 128 bytes
//     per request with 1-cycle latency (conservative vs real AXI's ~10 cycles -
//     if it works here, real AXI latency just makes it slower, not incorrect).
//   - Input BRAM: 1-cycle read latency (same as Xilinx SDP BRAM)
//   - Output BRAM: 1 write port, we capture every write and compare to golden
//
// Golden files produced by export_conv1_golden.py:
//   fpga_data/image.hex            (input image, 2304 bytes, int8)
//   fpga_data/conv1_weights.hex    (weights+bias in DDR layout, 1280 bytes)
//   fpga_data/conv1_expected.hex   (expected output, 147456 bytes, channel-major)
//
// Pass criteria: no errors, END OF TEST printed with "PASS".
// ============================================================================

`timescale 1ns / 1ps

module tb_conv_engine;

    // =========================================================================
    // Parameters (match train_vgg_fer.py output for conv1)
    // =========================================================================
    localparam CLK_PERIOD = 10;           // 100 MHz
    localparam TILE_SIZE  = 64;
    localparam CIN        = 1;
    localparam COUT       = 64;
    localparam IN_W       = 48;
    localparam IN_H       = 48;

    // These MUST match whatever Python printed for conv1.
    // Typical values from recent training: out_shift=3, bias_shift=2.
    // IF YOU GET FAILURES, check train_vgg_fer.py's console output and update these.
    localparam OUT_SHIFT  = 3;
    localparam BIAS_SHIFT = 2;

    localparam FEATURE_OUT_SIZE = COUT * IN_W * IN_H;  // 147456

    // =========================================================================
    // DUT signals
    // =========================================================================
    reg clk = 0;
    reg rst = 1;
    reg go  = 0;
    wire done;

    wire [17:0] addra_in;
    wire        ena_in;
    wire signed [7:0] data_in;

    wire [17:0]       addra_out;
    wire signed [7:0] data_out;
    wire              we_out;

    wire [31:0]   weight_addr;
    wire          weight_en;
    wire [9:0]    no_bytes;
    reg  [1023:0] weight_data  = 0;
    reg           weight_valid = 0;

    always #(CLK_PERIOD/2) clk = ~clk;

    // =========================================================================
    // DUT
    // =========================================================================
    conv_engine #(
        .MAX_IN_CHANNELS (512),
        .MAX_OUT_CHANNELS(512),
        .MAX_IN_W        (48),
        .MAX_IN_H        (48),
        .KERNEL_SIZE     (3),
        .TILE_SIZE       (TILE_SIZE)
    ) dut (
        .clk(clk),
        .rst(rst),
        .go (go),
        .done(done),

        .cfg_in_channels     (CIN[10:0]),
        .cfg_out_channels    (COUT[10:0]),
        .cfg_in_w            (IN_W[6:0]),
        .cfg_in_h            (IN_H[6:0]),
        .cfg_weight_base_addr(32'd0),
        .cfg_out_shift       (OUT_SHIFT[4:0]),
        .cfg_bias_shift      (BIAS_SHIFT[4:0]),

        .addra_in (addra_in),
        .data_in  (data_in),
        .ena_in   (ena_in),

        .addra_out(addra_out),
        .data_out (data_out),
        .we_out   (we_out),

        .weight_addr (weight_addr),
        .weight_en   (weight_en),
        .no_bytes    (no_bytes),
        .weight_data (weight_data),
        .weight_valid(weight_valid)
    );

    // =========================================================================
    // Fake input BRAM (image_7): Xilinx SDP, 1-cycle read latency
    // =========================================================================
    reg [7:0] image_bram [0:CIN*IN_W*IN_H - 1];    // 2304 entries
    reg [7:0] data_in_r;

    always @(posedge clk) begin
        if (ena_in) data_in_r <= image_bram[addra_in];
    end
    assign data_in = data_in_r;

    // =========================================================================
    // Captured output (what conv_engine writes out)
    // =========================================================================
    reg [7:0] output_capture [0:FEATURE_OUT_SIZE - 1];
    integer write_count = 0;

    always @(posedge clk) begin
        if (we_out) begin
            output_capture[addra_out] <= data_out;
            write_count <= write_count + 1;
            if (write_count < 20 || write_count % 10000 == 0) begin
                $display("[%0t] WRITE #%0d: addr=%0d val=%0d",
                         $time, write_count, addra_out, $signed(data_out));
            end
        end
    end

    // =========================================================================
    // Fake DDR + axi_driver stub
    // DDR holds conv1_weights.hex. On weight_en, wait a few cycles then
    // return 128 bytes starting at weight_addr, packed into weight_data[1023:0].
    // =========================================================================
    reg [7:0] ddr [0:1279];    // conv1 DDR region = 1280 bytes
    reg [3:0] axi_latency_ctr;
    reg       axi_pending;
    reg [31:0] axi_pending_addr;

    always @(posedge clk) begin
        if (rst) begin
            weight_valid    <= 0;
            axi_pending     <= 0;
            axi_latency_ctr <= 0;
        end else begin
            weight_valid <= 0;

            // Accept new request
            if (weight_en && !axi_pending) begin
                axi_pending      <= 1;
                axi_pending_addr <= weight_addr;
                axi_latency_ctr  <= 3;   // 3-cycle fake latency, enough to exercise waits
            end

            // Decrement latency
            if (axi_pending) begin
                if (axi_latency_ctr == 0) begin
                    // Deliver 128 bytes
                    weight_data[  7:  0] <= ddr[axi_pending_addr      ];
                    weight_data[ 15:  8] <= ddr[axi_pending_addr +   1];
                    weight_data[ 23: 16] <= ddr[axi_pending_addr +   2];
                    weight_data[ 31: 24] <= ddr[axi_pending_addr +   3];
                    weight_data[ 39: 32] <= ddr[axi_pending_addr +   4];
                    weight_data[ 47: 40] <= ddr[axi_pending_addr +   5];
                    weight_data[ 55: 48] <= ddr[axi_pending_addr +   6];
                    weight_data[ 63: 56] <= ddr[axi_pending_addr +   7];
                    // The rest are served by a loop unrolled via generate below
                end else begin
                    axi_latency_ctr <= axi_latency_ctr - 1;
                end
            end
        end
    end

    // Expand weight_data delivery with a generate loop (all 128 bytes)
    genvar bi;
    generate
        for (bi = 0; bi < 128; bi = bi + 1) begin : wdata_expand
            always @(posedge clk) begin
                if (axi_pending && axi_latency_ctr == 0)
                    weight_data[bi*8 +: 8] <= ddr[axi_pending_addr + bi];
            end
        end
    endgenerate

    // Signal valid + clear pending one cycle after latency hits 0
    always @(posedge clk) begin
        if (axi_pending && axi_latency_ctr == 0) begin
            weight_valid <= 1;
            axi_pending  <= 0;
        end
    end

    // =========================================================================
    // Golden output for comparison
    // =========================================================================
    reg [7:0] golden [0:FEATURE_OUT_SIZE - 1];

    // =========================================================================
    // Test driver
    // =========================================================================
    integer errors;
    integer i;
    integer sample_print;

    initial begin
        $display("=== tb_conv_engine ===");
        $display("  CIN=%0d COUT=%0d IN_W=%0d IN_H=%0d",
                 CIN, COUT, IN_W, IN_H);
        $display("  OUT_SHIFT=%0d BIAS_SHIFT=%0d", OUT_SHIFT, BIAS_SHIFT);

        // Load test data (paths are relative to your sim working directory)
        $readmemh("image.hex",          image_bram);
        $readmemh("conv1_weights.hex",  ddr);
        $readmemh("conv1_expected.hex", golden);

        // Sanity print
        $display("  image_bram[0]=%02x, [1]=%02x, [2303]=%02x",
                 image_bram[0], image_bram[1], image_bram[2303]);
        $display("  ddr[0]=%02x (bias0), ddr[64]=%02x (padding should be 00), ddr[128]=%02x (first weight)",
                 ddr[0], ddr[64], ddr[128]);
        $display("  golden[0..4] = %02x %02x %02x %02x %02x",
                 golden[0], golden[1], golden[2], golden[3], golden[4]);

        // Reset
        rst = 1;
        go  = 0;
        #(CLK_PERIOD * 5);
        rst = 0;
        #(CLK_PERIOD * 2);

        // Kick off
        $display("[%0t] Asserting go", $time);
        go = 1;
        #(CLK_PERIOD);
        go = 0;

        // Wait for done with a generous timeout
        // Conv1: ~64 output pixels per filter group * 48*48 = ~147k output pixels,
        //        each needs 1+9 = 10 AXI reads + MAC cycles. Very roughly:
        //        147456 * (10 * ~6 cycles + 9 MAC cycles) ~ 10M cycles
        // At 100MHz sim, that's ~100 ms simulated. Way too long.
        // Since this is a unit test and behavioural sim is slow, we'll warn at
        // a 50ms deadline which corresponds to ~5M cycles; real completion can
        // take longer.
        $display("[%0t] Waiting for done (this will take a WHILE - conv1 is ~10M cycles)", $time);

        wait (done);
        $display("[%0t] DONE asserted. Total writes: %0d (expected %0d)",
                 $time, write_count, FEATURE_OUT_SIZE);

        #(CLK_PERIOD * 2);

        // =====================================================================
        // Compare output_capture vs golden
        // =====================================================================
        errors = 0;
        sample_print = 0;
        for (i = 0; i < FEATURE_OUT_SIZE; i = i + 1) begin
            if (output_capture[i] !== golden[i]) begin
                errors = errors + 1;
                if (sample_print < 20) begin
                    $display("  MISMATCH at idx %0d: got=%0d expected=%0d",
                             i, $signed(output_capture[i]), $signed(golden[i]));
                    sample_print = sample_print + 1;
                end
            end
        end

        $display("");
        $display("=== END OF TEST ===");
        $display("  Writes observed:   %0d", write_count);
        $display("  Mismatches:        %0d / %0d", errors, FEATURE_OUT_SIZE);
        if (errors == 0 && write_count == FEATURE_OUT_SIZE) begin
            $display("  *** PASS ***");
        end else begin
            $display("  *** FAIL ***");
        end
        $finish;
    end

    // Wallclock-style timeout (abort if we've been running much too long)
    initial begin
        #(CLK_PERIOD * 50_000_000);   // 500 ms sim-time hard cap
        $display("[%0t] TIMEOUT - aborting", $time);
        $finish;
    end

endmodule