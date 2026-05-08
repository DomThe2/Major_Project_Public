`timescale 1ns / 1ps

// ============================================================================
// tb_crc_multi.v 
// V. E. Dementyev

// Multi-issue AXI mock 

// Files needed in xsim working dir:
//   w_bin.hex          (45,290,432 weight bytes, hex)
//   image.mem          (2304 image bytes, hex)
//   golden_conv1.hex   golden_conv2.hex   golden_pool1.hex
//   golden_conv3.hex   golden_conv4.hex   golden_pool2.hex
//   golden_conv5.hex   golden_conv6.hex   golden_pool3.hex
//   golden_conv7.hex   golden_conv8.hex   golden_pool4.hex
// ============================================================================

module tb_crc_multi;

    localparam CLK_PERIOD       = 10;
    localparam AXI_LATENCY      = 50;
    localparam AXI_QUEUE_DEPTH  = 16;
    localparam UART_CYCLES_BIT  = 10417;   // 9600 baud at 100 MHz
    localparam IMG_SIZE         = 2304;
    localparam MAX_CHANNELS     = 512;
    localparam MAX_WH           = 48;
    localparam ACT_AW           = $clog2(MAX_CHANNELS * MAX_WH * MAX_WH);
    localparam WEIGHTS_SIZE     = 45_290_432;

    reg clk = 0;
    reg rst = 1;
    always #(CLK_PERIOD/2) clk = ~clk;

    integer dbg_cyc = 0;
    always @(posedge clk) dbg_cyc <= dbg_cyc + 1;

    reg  rx_to_dut = 1'b1;
    wire tx_from_dut;

    //Image BRAM 
    reg [7:0] image_bram [0:IMG_SIZE-1];
    initial begin
        $display("Loading image.mem ...");
        $readmemh("image.mem", image_bram);
        if (image_bram[0] === 8'hx) begin
            $display("ERROR: image.mem failed to load.");
            $finish;
        end
        $display("Image loaded.");
    end

    wire [$clog2(IMG_SIZE)-1:0] addra_image;
    wire                        ena_image;
    reg  [7:0]                  data_image_r;
    always @(posedge clk) if (ena_image) data_image_r <= image_bram[addra_image];

    //Activation BRAMs 
    reg [7:0] bram_A [0:147455];
    reg [7:0] bram_B [0:147455];
    integer init_i;
    initial begin
        for (init_i = 0; init_i < 147456; init_i = init_i + 1) begin
            bram_A[init_i] = 8'h00;
            bram_B[init_i] = 8'h00;
        end
    end

    wire [ACT_AW-1:0] addra_A, addrb_A;
    wire [7:0]        dina_A;
    wire              wea_A;
    reg  [7:0]        doutb_A_r;
    wire [ACT_AW-1:0] addra_B, addrb_B;
    wire [7:0]        dina_B;
    wire              wea_B;
    reg  [7:0]        doutb_B_r;

    always @(posedge clk) begin
        if (wea_A) bram_A[addra_A] <= dina_A;
        doutb_A_r <= bram_A[addrb_A];
    end
    always @(posedge clk) begin
        if (wea_B) bram_B[addra_B] <= dina_B;
        doutb_B_r <= bram_B[addrb_B];
    end

    //Dense BRAMs
    reg [15:0] bram_dense_A [0:4095];
    reg [15:0] bram_dense_B [0:4095];
    integer init_d;
    initial begin
        for (init_d = 0; init_d < 4096; init_d = init_d + 1) begin
            bram_dense_A[init_d] = 16'h0000;
            bram_dense_B[init_d] = 16'h0000;
        end
    end

    wire [11:0] addra_dense_A, addra_dense_B;
    wire [15:0] data_write_dense_A, data_write_dense_B;
    reg  [15:0] data_read_dense_A_r, data_read_dense_B_r;
    wire        ena_read_dense_A,  ena_write_dense_A;
    wire        ena_read_dense_B,  ena_write_dense_B;

    always @(posedge clk) begin
        if (ena_write_dense_A) bram_dense_A[addra_dense_A] <= data_write_dense_A;
        if (ena_read_dense_A)  data_read_dense_A_r <= bram_dense_A[addra_dense_A];
    end
    always @(posedge clk) begin
        if (ena_write_dense_B) bram_dense_B[addra_dense_B] <= data_write_dense_B;
        if (ena_read_dense_B)  data_read_dense_B_r <= bram_dense_B[addra_dense_B];
    end

    //Weights
    reg [7:0] weights [0:WEIGHTS_SIZE-1];
    initial begin
        $display("Loading weights from w_bin.hex (%0d bytes)...", WEIGHTS_SIZE);
        $readmemh("w_bin.hex", weights);
        $display("First 4 weight bytes: %02h %02h %02h %02h",
                 weights[0], weights[1], weights[2], weights[3]);
        if (weights[0] === 8'hx) begin
            $display("ERROR: w_bin.hex failed to load. Place it in the xsim working dir.");
            $finish;
        end
        $display("Weights loaded.");
    end

    //Goldens
    reg [7:0] g_conv1 [0:147455];
    reg [7:0] g_conv2 [0:147455];
    reg [7:0] g_pool1 [0:36863];
    reg [7:0] g_conv3 [0:73727];
    reg [7:0] g_conv4 [0:73727];
    reg [7:0] g_pool2 [0:18431];
    reg [7:0] g_conv5 [0:36863];
    reg [7:0] g_conv6 [0:36863];
    reg [7:0] g_pool3 [0:9215];
    reg [7:0] g_conv7 [0:18431];
    reg [7:0] g_conv8 [0:18431];
    reg [7:0] g_pool4 [0:4607];

    initial begin
        $readmemh("golden_conv1.hex", g_conv1);
        $readmemh("golden_conv2.hex", g_conv2);
        $readmemh("golden_pool1.hex", g_pool1);
        $readmemh("golden_conv3.hex", g_conv3);
        $readmemh("golden_conv4.hex", g_conv4);
        $readmemh("golden_pool2.hex", g_pool2);
        $readmemh("golden_conv5.hex", g_conv5);
        $readmemh("golden_conv6.hex", g_conv6);
        $readmemh("golden_pool3.hex", g_pool3);
        $readmemh("golden_conv7.hex", g_conv7);
        $readmemh("golden_conv8.hex", g_conv8);
        $readmemh("golden_pool4.hex", g_pool4);
    end

    //AXI mock
    wire         axiCmdValid;
    wire [71:0]  axiAddress;
    reg  [1023:0] axiData_r;
    reg          axiValid_r;
    wire         axiReady;
    reg          axiCmdReady_r;

    reg [31:0]  axi_q_addr  [0:AXI_QUEUE_DEPTH-1];
    reg [15:0]  axi_q_timer [0:AXI_QUEUE_DEPTH-1];
    reg         axi_q_valid [0:AXI_QUEUE_DEPTH-1];
    reg [4:0]   axi_q_head, axi_q_tail;
    reg [4:0]   axi_outstanding;

    integer cmd_count = 0;
    integer resp_count = 0;
    integer max_outstanding_seen = 0;

    always @(*) axiCmdReady_r = (axi_outstanding < AXI_QUEUE_DEPTH);

    integer iq, ti, kk;
    initial begin
        for (iq = 0; iq < AXI_QUEUE_DEPTH; iq = iq + 1) begin
            axi_q_addr [iq] = 0;
            axi_q_timer[iq] = 0;
            axi_q_valid[iq] = 0;
        end
        axi_q_head      = 0;
        axi_q_tail      = 0;
        axi_outstanding = 0;
        axiValid_r      = 0;
        axiData_r       = 1024'h0;
    end

    always @(posedge clk) begin
        if (rst) begin
            for (iq = 0; iq < AXI_QUEUE_DEPTH; iq = iq + 1) begin
                axi_q_addr [iq] <= 0;
                axi_q_timer[iq] <= 0;
                axi_q_valid[iq] <= 0;
            end
            axi_q_head      <= 0;
            axi_q_tail      <= 0;
            axi_outstanding <= 0;
            axiValid_r      <= 0;
            axiData_r       <= 1024'h0;
        end else begin
            if (axiCmdValid && axiCmdReady_r) begin
                axi_q_addr [axi_q_tail] <= axiAddress[31:0];
                axi_q_timer[axi_q_tail] <= AXI_LATENCY;
                axi_q_valid[axi_q_tail] <= 1;
                axi_q_tail              <= (axi_q_tail + 1) % AXI_QUEUE_DEPTH;
                axi_outstanding         <= axi_outstanding + 1;
                cmd_count               <= cmd_count + 1;
                if (cmd_count < 30)
                    $display("[cyc=%0d] AXI CMD#%0d  addr=0x%08x",
                             dbg_cyc, cmd_count, axiAddress[31:0]);
                if (axi_outstanding + 1 > max_outstanding_seen)
                    max_outstanding_seen <= axi_outstanding + 1;
            end

            for (ti = 0; ti < AXI_QUEUE_DEPTH; ti = ti + 1) begin
                if (axi_q_valid[ti] && axi_q_timer[ti] > 0)
                    axi_q_timer[ti] <= axi_q_timer[ti] - 1;
            end

            if (axi_q_valid[axi_q_head] && axi_q_timer[axi_q_head] == 0 && axiReady) begin
                for (kk = 0; kk < 128; kk = kk + 1) begin
                    if (axi_q_addr[axi_q_head] + kk < WEIGHTS_SIZE)
                        axiData_r[kk*8 +: 8] <= weights[axi_q_addr[axi_q_head] + kk];
                    else
                        axiData_r[kk*8 +: 8] <= 8'h00;
                end
                axiValid_r              <= 1;
                axi_q_valid[axi_q_head] <= 0;
                axi_q_head              <= (axi_q_head + 1) % AXI_QUEUE_DEPTH;
                axi_outstanding         <= axi_outstanding - 1;
                resp_count              <= resp_count + 1;
                if (resp_count < 30)
                    $display("[cyc=%0d] AXI RESP#%0d", dbg_cyc, resp_count);
            end else begin
                axiValid_r <= 0;
            end
        end
    end

    //DUT
    topModule #(
        .MAX_CHANNELS(MAX_CHANNELS),
        .MAX_WH      (MAX_WH)
    ) dut (
        .clk(clk),
        .rst(rst),
        .rx (rx_to_dut),
        .tx (tx_from_dut),

        .addra_image(addra_image),
        .ena_image  (ena_image),
        .data_image (data_image_r),

        .addra_A(addra_A), .addrb_A(addrb_A), .dina_A (dina_A), .wea_A (wea_A), .doutb_A(doutb_A_r),
        .addra_B(addra_B), .addrb_B(addrb_B), .dina_B (dina_B), .wea_B (wea_B), .doutb_B(doutb_B_r),

        .addra_dense_A     (addra_dense_A), .data_write_dense_A(data_write_dense_A),
        .data_read_dense_A (data_read_dense_A_r),
        .ena_read_dense_A  (ena_read_dense_A), .ena_write_dense_A (ena_write_dense_A),
        .addra_dense_B     (addra_dense_B), .data_write_dense_B(data_write_dense_B),
        .data_read_dense_B (data_read_dense_B_r),
        .ena_read_dense_B  (ena_read_dense_B), .ena_write_dense_B (ena_write_dense_B),

        .axiCmdReady   (axiCmdReady_r),
        .axiCmdValid   (axiCmdValid),
        .axiAddress    (axiAddress),
        .axiData       (axiData_r),
        .axiValid      (axiValid_r),
        .axiReady      (axiReady),
        .axiBaseAddress(32'h00000000)
    );

    //Per-layer verifier
    task verify_layer;
        input [3:0] li;
        integer i, n, errors, first_err, last_err;
        reg [7:0] got, exp;
        reg use_B;
        begin
            use_B = li[0];
            errors = 0;
            first_err = -1;
            last_err  = -1;
            case (li)
                4'd0:  n = 147456;  4'd1:  n = 147456;  4'd2:  n = 36864;
                4'd3:  n = 73728;   4'd4:  n = 73728;   4'd5:  n = 18432;
                4'd6:  n = 36864;   4'd7:  n = 36864;   4'd8:  n = 9216;
                4'd9:  n = 18432;   4'd10: n = 18432;   4'd11: n = 4608;
                default: n = 0;
            endcase
            for (i = 0; i < n; i = i + 1) begin
                got = use_B ? bram_B[i] : bram_A[i];
                case (li)
                    4'd0:  exp = g_conv1[i];  4'd1:  exp = g_conv2[i];
                    4'd2:  exp = g_pool1[i];  4'd3:  exp = g_conv3[i];
                    4'd4:  exp = g_conv4[i];  4'd5:  exp = g_pool2[i];
                    4'd6:  exp = g_conv5[i];  4'd7:  exp = g_conv6[i];
                    4'd8:  exp = g_pool3[i];  4'd9:  exp = g_conv7[i];
                    4'd10: exp = g_conv8[i];  4'd11: exp = g_pool4[i];
                    default: exp = 0;
                endcase
                if (got !== exp) begin
                    if (errors < 10)
                        $display("           MISMATCH @ %6d: got %02h  expected %02h", i, got, exp);
                    if (first_err < 0) first_err = i;
                    last_err = i;
                    errors = errors + 1;
                end
            end
            if (errors == 0)
                $display("        >>> layer %0d  PASS  (%0d/%0d bytes match BRAM %s)  CRC=0x%02h",
                         li, n, n, use_B ? "B" : "A", dut.crc_buf[li]);
            else
                $display("        >>> layer %0d  FAIL  %0d/%0d mismatches  first @ %0d  last @ %0d  BRAM %s  CRC=0x%02h",
                         li, errors, n, first_err, last_err, use_B ? "B" : "A", dut.crc_buf[li]);
        end
    endtask

    // Trigger verification on S_LAYER_NEXT
    reg in_layer_next_d;
    always @(posedge clk) begin
        if (rst) in_layer_next_d <= 0;
        else begin
            if (dut.cur_state == 4'd3 && !in_layer_next_d)
                verify_layer(dut.layer_idx);
            in_layer_next_d <= (dut.cur_state == 4'd3);
        end
    end

    //UART send
    task automatic uart_send_byte(input [7:0] b);
        integer k;
        begin
            $display("[cyc=%0d]  TB UART -> sending 0x%02x", dbg_cyc, b);
            rx_to_dut = 0; #(UART_CYCLES_BIT * CLK_PERIOD);
            for (k = 0; k < 8; k = k + 1) begin
                rx_to_dut = b[k]; #(UART_CYCLES_BIT * CLK_PERIOD);
            end
            rx_to_dut = 1; #(UART_CYCLES_BIT * CLK_PERIOD);
        end
    endtask

    //UART RX capture 
    reg        rx_arm = 0;
    reg [3:0]  rx_state = 0;
    reg [31:0] rx_ctr   = 0;
    reg [3:0]  rx_bit   = 0;
    reg [7:0]  rx_byte  = 0;
    integer    rx_count = 0;

    always @(posedge clk) begin
        if (rst) begin
            rx_state <= 0; rx_ctr <= 0; rx_bit <= 0; rx_byte <= 0;
        end else if (rx_arm) begin
            case (rx_state)
                0: if (!tx_from_dut) begin
                       rx_state <= 1;
                       rx_ctr   <= UART_CYCLES_BIT/2;
                   end
                1: if (rx_ctr == 0) begin
                       rx_state <= 2;
                       rx_ctr   <= UART_CYCLES_BIT;
                       rx_bit   <= 0;
                   end else rx_ctr <= rx_ctr - 1;
                2: if (rx_ctr == 0) begin
                       rx_byte[rx_bit] <= tx_from_dut;
                       if (rx_bit == 7) begin
                           rx_state <= 3;
                           rx_ctr   <= UART_CYCLES_BIT;
                       end else begin
                           rx_bit <= rx_bit + 1;
                           rx_ctr <= UART_CYCLES_BIT;
                       end
                   end else rx_ctr <= rx_ctr - 1;
                3: begin
                       $display("[cyc=%0d]  TB UART <- byte #%0d = 0x%02x",
                                dbg_cyc, rx_count, rx_byte);
                       rx_count <= rx_count + 1;
                       rx_state <= 0;
                       rx_ctr   <= UART_CYCLES_BIT;
                   end
            endcase
        end
    end

    //Layer transition
    reg [3:0] prev_layer_idx = 4'hF;
    always @(posedge clk) begin
        if (!rst) begin
            prev_layer_idx <= dut.layer_idx;
            if (dut.layer_idx != prev_layer_idx) begin
                $display("[cyc=%0d]  >>> layer %0d START: %s  Cin=%0d Cout=%0d  %0dx%0d",
                         dbg_cyc, dut.layer_idx,
                         dut.cur_IsPool ? "POOL" : "CONV",
                         dut.cur_Cin, dut.cur_Cout, dut.cur_InWH, dut.cur_InWH);
            end
        end
    end

    //Progress dump
    integer next_dump = 5_000_000;
    always @(posedge clk) begin
        if (dbg_cyc >= next_dump) begin
            $display("[cyc=%0d]  [%0dM cyc]  layer=%0d  cur_state=%0d  axi_outstanding=%0d",
                     dbg_cyc, dbg_cyc/1_000_000, dut.layer_idx,
                     dut.cur_state, axi_outstanding);
            next_dump = next_dump + 5_000_000;
        end
    end

    //Stimulus
    initial begin
        $display("============================================================");
        $display(" tb_crc_multi v3 -- multi-issue + per-layer golden verify");
        $display(" UART baud = 9600  (UART_CYCLES_BIT = %0d)", UART_CYCLES_BIT);
        $display(" AXI_LATENCY = %0d cycles", AXI_LATENCY);
        $display(" AXI_QUEUE_DEPTH = %0d outstanding", AXI_QUEUE_DEPTH);
        $display("============================================================");

        rst = 1;
        #(CLK_PERIOD * 100);
        rst = 0;
        $display("[cyc=%0d]  Reset released.", dbg_cyc);

        #(CLK_PERIOD * 2000);
        rx_arm = 1;
        $display("[cyc=%0d]  RX armed. Sending 'g' (0x67).", dbg_cyc);
        uart_send_byte(8'h67);
        $display("[cyc=%0d]  'g' sent. Inference running.", dbg_cyc);
    end

    // End-of-test
    always @(posedge clk) begin
        if (rx_count == 13) begin
            $display("");
            $display("============================================================");
            $display(" RESULTS");
            $display("============================================================");
            $display("  Inference cycles: %0d (~%0.2f ms @ 100 MHz)",
                     dbg_cyc, dbg_cyc * 0.01);
            $display("  AXI cmds: %0d  responses: %0d  max outstanding: %0d",
                     cmd_count, resp_count, max_outstanding_seen);
            $display("");
            $display(" PER-LAYER CRC8 FINGERPRINTS  (compare against HW)");
            $display("  layer  name    CRC");
            $display("  -----  ------  ----");
            $display("  0      conv1   0x%02h", dut.crc_buf[0]);
            $display("  1      conv2   0x%02h", dut.crc_buf[1]);
            $display("  2      pool1   0x%02h", dut.crc_buf[2]);
            $display("  3      conv3   0x%02h", dut.crc_buf[3]);
            $display("  4      conv4   0x%02h", dut.crc_buf[4]);
            $display("  5      pool2   0x%02h", dut.crc_buf[5]);
            $display("  6      conv5   0x%02h", dut.crc_buf[6]);
            $display("  7      conv6   0x%02h", dut.crc_buf[7]);
            $display("  8      pool3   0x%02h", dut.crc_buf[8]);
            $display("  9      conv7   0x%02h", dut.crc_buf[9]);
            $display(" 10      conv8   0x%02h", dut.crc_buf[10]);
            $display(" 11      pool4   0x%02h", dut.crc_buf[11]);
            $display("");
            $display(" --sim-crcs '%02h %02h %02h %02h %02h %02h %02h %02h %02h %02h %02h %02h'",
                     dut.crc_buf[0], dut.crc_buf[1], dut.crc_buf[2],  dut.crc_buf[3],
                     dut.crc_buf[4], dut.crc_buf[5], dut.crc_buf[6],  dut.crc_buf[7],
                     dut.crc_buf[8], dut.crc_buf[9], dut.crc_buf[10], dut.crc_buf[11]);
            $display("============================================================");
            #1000;
            $finish;
        end
    end

    initial begin
        #(2_000_000_000);
        $display("WATCHDOG: 2 sec sim time without 13 bytes received. ABORT.");
        $display("(Got %0d / 13 bytes so far. Last layer: %0d)", rx_count, dut.layer_idx);
        $finish;
    end

endmodule