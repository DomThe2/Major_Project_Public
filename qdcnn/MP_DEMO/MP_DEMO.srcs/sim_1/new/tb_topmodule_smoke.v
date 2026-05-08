`timescale 1ns / 1ps

// ============================================================================
// tb_pipeline.v
//
// Full-pipeline VGG-FER simulator. Walks all 12 stages of the CNN feature
// extractor (8 conv + 4 pool) back-to-back, comparing each stage's output
// against the per-layer golden produced by train_vgg_fer.py.
//
// STRATEGY (Option B = "reset-each-stage"):
//   For each stage L (0..11):
//     1. Load the EXPECTED INPUT for stage L into act_in_mem
//          stage 0: image.hex
//          stage L>0: golden_<previous_stage>.hex
//     2. Configure DUT for stage L (cfg_in_channels, etc.)
//     3. Pulse `go` on the right engine (conv or pool)
//     4. Wait for `done`. As writes happen, capture them in act_out_mem.
//     5. Compare every byte of act_out_mem against golden_<this_stage>.hex.
//     6. Report PASS / FAIL for this stage.
//   At end: summary table of which stages passed.
//
// This isolates failures - a bug in conv5 won't make conv6, conv7, conv8 also
// fail spuriously. Once all 12 pass individually we can run a one-shot
// "trust-and-flow" test (Option A) for end-to-end confirmation.
//
// FILES REQUIRED in xsim working directory:
//   image.hex
//   w_mem_hex.txt
//   golden_conv1.hex   golden_conv2.hex   golden_pool1.hex
//   golden_conv3.hex   golden_conv4.hex   golden_pool2.hex
//   golden_conv5.hex   golden_conv6.hex   golden_pool3.hex
//   golden_conv7.hex   golden_conv8.hex   golden_pool4.hex
//
// All produced by train_vgg_fer.py (after the golden export patch) and
// make_tb_files.py.
// ============================================================================

module tb_pipeline;

    // -------------------------------------------------------------------------
    // Sizing constants (must match the engines' MAX_* parameters)
    // -------------------------------------------------------------------------
    localparam CLK_PERIOD       = 10;
    localparam TILE_SIZE        = 64;
    localparam MAX_CHANNELS     = 512;
    localparam MAX_WH           = 48;
    localparam ACT_AW           = 21;                 // $clog2(512*48*48) = 21
    localparam MAX_ACT_BYTES    = 147456;             // peak feature map (conv2 out: 64*48*48)
    localparam IMAGE_BYTES      = 2304;               // 48*48 input image
    localparam FULL_DDR_BYTES   = 9_368_448;          // total conv weights in w.bin

    // -------------------------------------------------------------------------
    // Stages: encode the per-layer parameters in parallel arrays.
    // Indexed 0..N_STAGES-1.
    //   conv1, conv2, pool1, conv3, conv4, pool2,
    //   conv5, conv6, pool3, conv7, conv8, pool4
    // -------------------------------------------------------------------------
    localparam N_STAGES = 12;

    // (Per-stage parameters live in functions further below: stage_cin,
    //  stage_cout, stage_wh, stage_outshift, stage_biasshift, stage_wbase,
    //  is_pool, stage_name. Easier to read than parallel constant arrays.)

    // -------------------------------------------------------------------------
    // Clock / reset / shared engine signals
    // -------------------------------------------------------------------------
    reg clk = 0;
    reg rst = 1;
    always #(CLK_PERIOD/2) clk = ~clk;

    reg                    conv_go   = 0;
    reg                    pool_go   = 0;
    wire                   conv_done;
    wire                   pool_done;

    // Cfg signals (driven by stimulus)
    reg  [9:0]  cfg_in_channels  = 0;
    reg  [9:0]  cfg_out_channels = 0;
    reg  [5:0]  cfg_in_w         = 0;
    reg  [5:0]  cfg_in_h         = 0;
    reg  [4:0]  cfg_out_shift    = 0;
    reg  [4:0]  cfg_bias_shift   = 0;
    reg  [31:0] cfg_weight_base  = 0;

    // Engine read ports
    wire [ACT_AW-1:0]      conv_addra_in;
    wire                   conv_ena_in;
    wire signed [7:0]      conv_data_in;

    wire [ACT_AW-1:0]      pool_addra_in;
    wire                   pool_ena_in;
    wire signed [7:0]      pool_data_in;

    // Engine write ports
    wire [ACT_AW-1:0]      conv_addra_out;
    wire signed [7:0]      conv_data_out;
    wire                   conv_we_out;

    wire [ACT_AW-1:0]      pool_addra_out;
    wire signed [7:0]      pool_data_out;
    wire                   pool_we_out;

    // Conv AXI port (TB stub responds)
    wire [31:0]   weight_addr;
    wire          weight_en;
    wire [9:0]    no_bytes;
    reg  [1023:0] weight_data  = 0;
    reg           weight_valid = 0;

    // -------------------------------------------------------------------------
    // DUTs: instantiate both engines, mux ports based on which is active
    // -------------------------------------------------------------------------
    conv_engine #(
        .MAX_IN_CHANNELS (MAX_CHANNELS),
        .MAX_OUT_CHANNELS(MAX_CHANNELS),
        .MAX_IN_W        (MAX_WH),
        .MAX_IN_H        (MAX_WH),
        .KERNEL_SIZE     (3),
        .TILE_SIZE       (TILE_SIZE)
    ) u_conv (
        .clk(clk), .rst(rst),
        .go  (conv_go), .done(conv_done),
        .cfg_in_channels     (cfg_in_channels),
        .cfg_out_channels    (cfg_out_channels),
        .cfg_in_w            (cfg_in_w),
        .cfg_in_h            (cfg_in_h),
        .cfg_weight_base_addr(cfg_weight_base),
        .cfg_out_shift       (cfg_out_shift),
        .cfg_bias_shift      (cfg_bias_shift),
        .addra_in (conv_addra_in),
        .data_in  (conv_data_in),
        .ena_in   (conv_ena_in),
        .addra_out(conv_addra_out),
        .data_out (conv_data_out),
        .we_out   (conv_we_out),
        .weight_addr (weight_addr),
        .weight_en   (weight_en),
        .no_bytes    (no_bytes),
        .weight_data (weight_data),
        .weight_valid(weight_valid)
    );

    pool_engine #(
        .MAX_CHANNELS(MAX_CHANNELS),
        .MAX_IN_W    (MAX_WH),
        .MAX_IN_H    (MAX_WH),
        .ACT_AW      (ACT_AW)         // override the default 18 to match conv_engine
    ) u_pool (
        .clk(clk), .rst(rst),
        .go  (pool_go), .done(pool_done),
        .cfg_channels(cfg_in_channels),     // pool: Cin == Cout
        .cfg_in_w    (cfg_in_w),
        .cfg_in_h    (cfg_in_h),
        .addra_in (pool_addra_in),
        .data_in  (pool_data_in),
        .ena_in   (pool_ena_in),
        .addra_out(pool_addra_out),
        .data_out (pool_data_out),
        .we_out   (pool_we_out)
    );

    // -------------------------------------------------------------------------
    // Activation memory (single buffer; we reload between stages)
    // -------------------------------------------------------------------------
    reg [7:0] act_in_mem  [0:MAX_ACT_BYTES-1];
    reg [7:0] act_out_mem [0:MAX_ACT_BYTES-1];

    // BRAM-style 1-cycle read latency model, shared between engines.
    // Whichever engine is active drives the addra/ena.
    reg signed [7:0] data_in_r = 0;
    assign conv_data_in = data_in_r;
    assign pool_data_in = data_in_r;

    // current_is_pool selects which engine drives the read port
    reg current_is_pool = 0;
    wire [ACT_AW-1:0] active_addra_in = current_is_pool ? pool_addra_in : conv_addra_in;
    wire              active_ena_in   = current_is_pool ? pool_ena_in   : conv_ena_in;
    wire [ACT_AW-1:0] active_addra_out= current_is_pool ? pool_addra_out: conv_addra_out;
    wire signed [7:0] active_data_out = current_is_pool ? pool_data_out : conv_data_out;
    wire              active_we_out   = current_is_pool ? pool_we_out   : conv_we_out;

    always @(posedge clk) begin
        if (active_ena_in)
            data_in_r <= act_in_mem[active_addra_in];
    end

    // Capture writes into act_out_mem
    always @(posedge clk) begin
        if (!rst && active_we_out)
            act_out_mem[active_addra_out] <= active_data_out;
    end

    // -------------------------------------------------------------------------
    // DDR + AXI stub (3-cycle response, mimics real pipeline)
    // -------------------------------------------------------------------------
    reg [7:0] ddr [0:FULL_DDR_BYTES-1];

    integer axi_timer = 0;
    integer axi_pending_addr = 0;
    integer axi_state = 0;   // 0 idle, 1 counting, 2 hold valid
    integer kk;

    always @(posedge clk) begin
        if (rst) begin
            axi_timer    <= 0;
            axi_state    <= 0;
            weight_valid <= 0;
            weight_data  <= 0;
        end else begin
            case (axi_state)
                0: begin
                    weight_valid <= 0;
                    if (weight_en) begin
                        axi_pending_addr <= weight_addr;
                        axi_timer        <= 3;
                        axi_state        <= 1;
                    end
                end
                1: begin
                    if (axi_timer == 0) begin
                        for (kk = 0; kk < 128; kk = kk + 1)
                            weight_data[kk*8 +: 8] <= ddr[axi_pending_addr + kk];
                        weight_valid <= 1;
                        axi_state    <= 2;
                    end else begin
                        axi_timer <= axi_timer - 1;
                    end
                end
                2: begin
                    if (weight_en) begin
                        axi_pending_addr <= weight_addr;
                        axi_timer        <= 3;
                        weight_valid     <= 0;
                        axi_state        <= 1;
                    end
                end
            endcase
        end
    end

    // -------------------------------------------------------------------------
    // Golden storage. Each golden file has a different size, so we pre-size
    // each to the worst case it could be (saves us 12 different array decls).
    // Largest golden = conv1/conv2 = 147456 bytes.
    // -------------------------------------------------------------------------
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

    // Image (used as input to stage 0)
    reg [7:0] image_mem [0:IMAGE_BYTES-1];

    // -------------------------------------------------------------------------
    // Stage parameters - functions to look up from stage index
    // -------------------------------------------------------------------------
    function is_pool;
        input integer s;
        case (s)
            2,5,8,11: is_pool = 1;
            default:  is_pool = 0;
        endcase
    endfunction

    function [255:0] stage_name;   // packed string up to 32 chars
        input integer s;
        case (s)
            0:  stage_name = "conv1";
            1:  stage_name = "conv2";
            2:  stage_name = "pool1";
            3:  stage_name = "conv3";
            4:  stage_name = "conv4";
            5:  stage_name = "pool2";
            6:  stage_name = "conv5";
            7:  stage_name = "conv6";
            8:  stage_name = "pool3";
            9:  stage_name = "conv7";
            10: stage_name = "conv8";
            11: stage_name = "pool4";
            default: stage_name = "?????";
        endcase
    endfunction

    // Per-stage layer params (from train_vgg_fer.py output)
    function [9:0] stage_cin;
        input integer s;
        case (s)
            0:  stage_cin = 1;     // conv1
            1:  stage_cin = 64;    // conv2
            2:  stage_cin = 64;    // pool1
            3:  stage_cin = 64;    // conv3
            4:  stage_cin = 128;   // conv4
            5:  stage_cin = 128;   // pool2
            6:  stage_cin = 128;   // conv5
            7:  stage_cin = 256;   // conv6
            8:  stage_cin = 256;   // pool3
            9:  stage_cin = 256;   // conv7
            10: stage_cin = 512;   // conv8
            11: stage_cin = 512;   // pool4
            default: stage_cin = 0;
        endcase
    endfunction

    function [9:0] stage_cout;
        input integer s;
        case (s)
            0:  stage_cout = 64;
            1:  stage_cout = 64;
            2:  stage_cout = 64;
            3:  stage_cout = 128;
            4:  stage_cout = 128;
            5:  stage_cout = 128;
            6:  stage_cout = 256;
            7:  stage_cout = 256;
            8:  stage_cout = 256;
            9:  stage_cout = 512;
            10: stage_cout = 512;
            11: stage_cout = 512;
            default: stage_cout = 0;
        endcase
    endfunction

    function [5:0] stage_wh;       // input W=H
        input integer s;
        case (s)
            0,1,2:    stage_wh = 48;
            3,4,5:    stage_wh = 24;
            6,7,8:    stage_wh = 12;
            9,10,11:  stage_wh = 6;
            default:  stage_wh = 0;
        endcase
    endfunction

    function [4:0] stage_outshift;
        input integer s;
        case (s)
            0:  stage_outshift = 3;   // conv1
            1:  stage_outshift = 9;   // conv2
            3:  stage_outshift = 9;   // conv3
            4:  stage_outshift = 9;   // conv4
            6:  stage_outshift = 10;  // conv5
            7:  stage_outshift = 10;  // conv6
            9:  stage_outshift = 10;  // conv7
            10: stage_outshift = 10;  // conv8
            default: stage_outshift = 0;
        endcase
    endfunction

    function [4:0] stage_biasshift;
        input integer s;
        case (s)
            0:  stage_biasshift = 2;   // conv1
            1:  stage_biasshift = 8;   // conv2 (B_SCALE may vary per training - update if needed)
            3:  stage_biasshift = 9;   // conv3
            4:  stage_biasshift = 9;   // conv4
            6:  stage_biasshift = 10;  // conv5
            7:  stage_biasshift = 10;  // conv6
            9:  stage_biasshift = 10;  // conv7
            10: stage_biasshift = 9;   // conv8
            default: stage_biasshift = 0;
        endcase
    endfunction

    function [31:0] stage_wbase;
        input integer s;
        case (s)
            0:  stage_wbase = 0;          // conv1
            1:  stage_wbase = 1280;       // conv2
            3:  stage_wbase = 75136;      // conv3
            4:  stage_wbase = 222848;     // conv4
            6:  stage_wbase = 518016;     // conv5
            7:  stage_wbase = 1108352;    // conv6
            9:  stage_wbase = 2288512;    // conv7
            10: stage_wbase = 4648832;    // conv8
            default: stage_wbase = 0;
        endcase
    endfunction

    function integer stage_in_bytes;     // input feature-map size
        input integer s;
        // Cin * H * W
        stage_in_bytes = stage_cin(s) * stage_wh(s) * stage_wh(s);
    endfunction

    function integer stage_out_bytes;    // output feature-map size
        input integer s;
        if (is_pool(s))
            // pool halves H and W
            stage_out_bytes = stage_cin(s) * (stage_wh(s)/2) * (stage_wh(s)/2);
        else
            // conv preserves H, W
            stage_out_bytes = stage_cout(s) * stage_wh(s) * stage_wh(s);
    endfunction

    // -------------------------------------------------------------------------
    // Helpers: load act_in_mem from a specific source (image or a golden array)
    // -------------------------------------------------------------------------
    integer ii;

    task load_image_to_act_in;
        begin
            for (ii = 0; ii < IMAGE_BYTES; ii = ii + 1)
                act_in_mem[ii] <= image_mem[ii];
            // Zero the rest just to keep waves clean
            for (ii = IMAGE_BYTES; ii < MAX_ACT_BYTES; ii = ii + 1)
                act_in_mem[ii] <= 8'h00;
        end
    endtask

    // Per-source-stage loaders. We need one per source array because Verilog
    // doesn't easily let us pass memory arrays as task arguments.
    task load_act_in_from_g_conv1; integer n; begin
        n = 147456;
        for (ii = 0; ii < n; ii = ii + 1) act_in_mem[ii] <= g_conv1[ii];
        for (ii = n; ii < MAX_ACT_BYTES; ii = ii + 1) act_in_mem[ii] <= 8'h00;
    end endtask
    task load_act_in_from_g_conv2; integer n; begin
        n = 147456;
        for (ii = 0; ii < n; ii = ii + 1) act_in_mem[ii] <= g_conv2[ii];
        for (ii = n; ii < MAX_ACT_BYTES; ii = ii + 1) act_in_mem[ii] <= 8'h00;
    end endtask
    task load_act_in_from_g_pool1; integer n; begin
        n = 36864;
        for (ii = 0; ii < n; ii = ii + 1) act_in_mem[ii] <= g_pool1[ii];
        for (ii = n; ii < MAX_ACT_BYTES; ii = ii + 1) act_in_mem[ii] <= 8'h00;
    end endtask
    task load_act_in_from_g_conv3; integer n; begin
        n = 73728;
        for (ii = 0; ii < n; ii = ii + 1) act_in_mem[ii] <= g_conv3[ii];
        for (ii = n; ii < MAX_ACT_BYTES; ii = ii + 1) act_in_mem[ii] <= 8'h00;
    end endtask
    task load_act_in_from_g_conv4; integer n; begin
        n = 73728;
        for (ii = 0; ii < n; ii = ii + 1) act_in_mem[ii] <= g_conv4[ii];
        for (ii = n; ii < MAX_ACT_BYTES; ii = ii + 1) act_in_mem[ii] <= 8'h00;
    end endtask
    task load_act_in_from_g_pool2; integer n; begin
        n = 18432;
        for (ii = 0; ii < n; ii = ii + 1) act_in_mem[ii] <= g_pool2[ii];
        for (ii = n; ii < MAX_ACT_BYTES; ii = ii + 1) act_in_mem[ii] <= 8'h00;
    end endtask
    task load_act_in_from_g_conv5; integer n; begin
        n = 36864;
        for (ii = 0; ii < n; ii = ii + 1) act_in_mem[ii] <= g_conv5[ii];
        for (ii = n; ii < MAX_ACT_BYTES; ii = ii + 1) act_in_mem[ii] <= 8'h00;
    end endtask
    task load_act_in_from_g_conv6; integer n; begin
        n = 36864;
        for (ii = 0; ii < n; ii = ii + 1) act_in_mem[ii] <= g_conv6[ii];
        for (ii = n; ii < MAX_ACT_BYTES; ii = ii + 1) act_in_mem[ii] <= 8'h00;
    end endtask
    task load_act_in_from_g_pool3; integer n; begin
        n = 9216;
        for (ii = 0; ii < n; ii = ii + 1) act_in_mem[ii] <= g_pool3[ii];
        for (ii = n; ii < MAX_ACT_BYTES; ii = ii + 1) act_in_mem[ii] <= 8'h00;
    end endtask
    task load_act_in_from_g_conv7; integer n; begin
        n = 18432;
        for (ii = 0; ii < n; ii = ii + 1) act_in_mem[ii] <= g_conv7[ii];
        for (ii = n; ii < MAX_ACT_BYTES; ii = ii + 1) act_in_mem[ii] <= 8'h00;
    end endtask
    task load_act_in_from_g_conv8; integer n; begin
        n = 18432;
        for (ii = 0; ii < n; ii = ii + 1) act_in_mem[ii] <= g_conv8[ii];
        for (ii = n; ii < MAX_ACT_BYTES; ii = ii + 1) act_in_mem[ii] <= 8'h00;
    end endtask

    // Dispatch: load act_in_mem with the input that stage `s` should see.
    task load_input_for_stage;
        input integer s;
        begin
            case (s)
                0:  load_image_to_act_in();
                1:  load_act_in_from_g_conv1();
                2:  load_act_in_from_g_conv2();
                3:  load_act_in_from_g_pool1();
                4:  load_act_in_from_g_conv3();
                5:  load_act_in_from_g_conv4();
                6:  load_act_in_from_g_pool2();
                7:  load_act_in_from_g_conv5();
                8:  load_act_in_from_g_conv6();
                9:  load_act_in_from_g_pool3();
                10: load_act_in_from_g_conv7();
                11: load_act_in_from_g_conv8();
                default: ;
            endcase
        end
    endtask

    // Compare act_out_mem against this stage's golden, return mismatch count
    integer cmp_n_err;
    integer cmp_n_printed;
    integer cmp_first_err_addr;
    integer cmp_total;
    integer cmp_i;
    reg [7:0] cmp_got, cmp_exp;

    task compare_against_golden;
        input integer s;
        begin
            cmp_n_err          = 0;
            cmp_n_printed      = 0;
            cmp_first_err_addr = -1;
            cmp_total          = stage_out_bytes(s);

            for (cmp_i = 0; cmp_i < cmp_total; cmp_i = cmp_i + 1) begin
                cmp_got = act_out_mem[cmp_i];
                case (s)
                    0:  cmp_exp = g_conv1[cmp_i];
                    1:  cmp_exp = g_conv2[cmp_i];
                    2:  cmp_exp = g_pool1[cmp_i];
                    3:  cmp_exp = g_conv3[cmp_i];
                    4:  cmp_exp = g_conv4[cmp_i];
                    5:  cmp_exp = g_pool2[cmp_i];
                    6:  cmp_exp = g_conv5[cmp_i];
                    7:  cmp_exp = g_conv6[cmp_i];
                    8:  cmp_exp = g_pool3[cmp_i];
                    9:  cmp_exp = g_conv7[cmp_i];
                    10: cmp_exp = g_conv8[cmp_i];
                    11: cmp_exp = g_pool4[cmp_i];
                    default: cmp_exp = 8'h00;
                endcase
                if (cmp_got !== cmp_exp) begin
                    cmp_n_err = cmp_n_err + 1;
                    if (cmp_first_err_addr == -1) cmp_first_err_addr = cmp_i;
                    if (cmp_n_printed < 5) begin
                        $display("       MISMATCH @ addr=%0d: got=%0d expected=%0d",
                                 cmp_i, $signed(cmp_got), $signed(cmp_exp));
                        cmp_n_printed = cmp_n_printed + 1;
                    end
                end
            end
        end
    endtask

    // -------------------------------------------------------------------------
    // Track per-stage pass/fail for end-of-test summary
    // -------------------------------------------------------------------------
    reg [N_STAGES-1:0] stage_pass = 0;
    integer            stage_errcount [0:N_STAGES-1];

    // -------------------------------------------------------------------------
    // Run one stage: configure DUT, pulse go, wait done, compare.
    // -------------------------------------------------------------------------
    integer s;
    integer write_count;
    integer expected_writes;
    integer wait_cycles;
    reg engine_done_seen;

    task run_stage;
        input integer st;
        begin
            $display("");
            $display("==============================================================");
            $display(" Stage %0d : %0s", st, stage_name(st));
            $display("   type=%s  Cin=%0d Cout=%0d  HxW=%0dx%0d",
                     is_pool(st) ? "pool" : "conv",
                     stage_cin(st), stage_cout(st), stage_wh(st), stage_wh(st));
            if (!is_pool(st))
                $display("   out_shift=%0d  bias_shift=%0d  weight_base=%0d",
                         stage_outshift(st), stage_biasshift(st), stage_wbase(st));
            $display("   input bytes=%0d  expected output bytes=%0d",
                     stage_in_bytes(st), stage_out_bytes(st));
            $display("--------------------------------------------------------------");

            // 1. Load this stage's expected input
            load_input_for_stage(st);
            #(CLK_PERIOD);   // let act_in_mem updates settle

            // 2. Clear act_out_mem so leftover bytes from a previous stage
            //    don't masquerade as zero-correct outputs.
            for (ii = 0; ii < MAX_ACT_BYTES; ii = ii + 1)
                act_out_mem[ii] = 8'hAA;
            #(CLK_PERIOD);

            // 3. Drive cfg_*
            cfg_in_channels  = stage_cin(st);
            cfg_out_channels = stage_cout(st);
            cfg_in_w         = stage_wh(st);
            cfg_in_h         = stage_wh(st);
            cfg_out_shift    = stage_outshift(st);
            cfg_bias_shift   = stage_biasshift(st);
            cfg_weight_base  = stage_wbase(st);

            // 4. Pulse go on the right engine
            current_is_pool = is_pool(st);
            #(CLK_PERIOD);
            if (current_is_pool) begin
                pool_go = 1; #(CLK_PERIOD); pool_go = 0;
            end else begin
                conv_go = 1; #(CLK_PERIOD); conv_go = 0;
            end

            // 5. Wait for done with a generous timeout
            //    Worst case: conv layer has Cout/64 groups, each does H*W output
            //    pixels, each pixel needs ~9*Cin MAC cycles + 6 setup states +
            //    AXI latency for weight loads. Bound it loosely with a big number.
            engine_done_seen = 0;
            wait_cycles = 0;
            while (!engine_done_seen && wait_cycles < 200_000_000) begin
                @(posedge clk);
                wait_cycles = wait_cycles + 1;
                if (current_is_pool) begin
                    if (pool_done) engine_done_seen = 1;
                end else begin
                    if (conv_done) engine_done_seen = 1;
                end
            end

            if (!engine_done_seen) begin
                $display("   *** TIMEOUT after %0d cycles -- engine never asserted done", wait_cycles);
                stage_pass[st]      = 0;
                stage_errcount[st]  = -1;
            end else begin
                $display("   engine done after %0d cycles", wait_cycles);
                #(CLK_PERIOD * 5);   // let final write settle into act_out_mem

                // 6. Compare
                compare_against_golden(st);
                stage_errcount[st] = cmp_n_err;
                if (cmp_n_err == 0) begin
                    $display("   *** PASS *** %0d / %0d bytes match",
                             cmp_total, cmp_total);
                    stage_pass[st] = 1;
                end else begin
                    $display("   *** FAIL *** %0d / %0d mismatches  (first at addr %0d)",
                             cmp_n_err, cmp_total, cmp_first_err_addr);
                    stage_pass[st] = 0;
                end
            end
        end
    endtask

    // -------------------------------------------------------------------------
    // Main stimulus
    // -------------------------------------------------------------------------
    initial begin
        $display("============================================================");
        $display("  tb_pipeline -- 12-stage VGG-FER hardware pipeline test");
        $display("============================================================");

        // Load all the static files once
        $readmemh("image.hex",            image_mem);
        $readmemh("w_mem_hex.txt",        ddr);
        $readmemh("golden_conv1.hex",     g_conv1);
        $readmemh("golden_conv2.hex",     g_conv2);
        $readmemh("golden_pool1.hex",     g_pool1);
        $readmemh("golden_conv3.hex",     g_conv3);
        $readmemh("golden_conv4.hex",     g_conv4);
        $readmemh("golden_pool2.hex",     g_pool2);
        $readmemh("golden_conv5.hex",     g_conv5);
        $readmemh("golden_conv6.hex",     g_conv6);
        $readmemh("golden_pool3.hex",     g_pool3);
        $readmemh("golden_conv7.hex",     g_conv7);
        $readmemh("golden_conv8.hex",     g_conv8);
        $readmemh("golden_pool4.hex",     g_pool4);

        $display("  image[0]=%02x  ddr[0]=%02x  g_conv1[0]=%02x  g_pool4[0]=%02x",
                 image_mem[0], ddr[0], g_conv1[0], g_pool4[0]);

        // Initialise per-stage tracking
        for (s = 0; s < N_STAGES; s = s + 1)
            stage_errcount[s] = 0;

        // Reset
        rst = 1;  conv_go = 0;  pool_go = 0;
        #(CLK_PERIOD * 10);
        rst = 0;
        #(CLK_PERIOD * 5);

        // Run all 12 stages
        for (s = 0; s < N_STAGES; s = s + 1) begin
            run_stage(s);
        end

        // Summary
        $display("");
        $display("============================================================");
        $display("  PIPELINE TEST SUMMARY");
        $display("============================================================");
        for (s = 0; s < N_STAGES; s = s + 1) begin
            if (stage_errcount[s] == -1)
                $display("  Stage %0d  %0s  TIMEOUT", s, stage_name(s));
            else if (stage_pass[s])
                $display("  Stage %0d  %0s  PASS", s, stage_name(s));
            else
                $display("  Stage %0d  %0s  FAIL  (%0d mismatches)",
                         s, stage_name(s), stage_errcount[s]);
        end
        $display("============================================================");

        // Overall verdict
        if (&stage_pass)
            $display("  *** ALL 12 STAGES PASS *** pipeline is bit-exact");
        else
            $display("  *** SOME STAGES FAILED *** see per-stage results above");

        $finish;
    end

    // Hard timeout (5 seconds wall clock at 1ns timescale = 5 billion ns)
    initial begin
        #(64'd60_000_000_000);    // 60 sec sim time
        $display("HARD TIMEOUT at %0t", $time);
        $finish;
    end

endmodule