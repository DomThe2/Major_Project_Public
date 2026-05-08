`timescale 1ns / 1ps

// OV7670 -> HDMI on PYNQ-Z2. 1280x720 out.
// Two regions: 480x640 live preview (mirrored) + 192x192 CNN-input panel (48x48 upscaled 4x).

module top (
  input  wire       sys_clk,
  input  wire       rst,
  output wire       hdmi_tx_clk_p,
  output wire       hdmi_tx_clk_n,
  output wire [2:0] hdmi_tx_d_p,
  output wire [2:0] hdmi_tx_d_n,
  output wire       hdmi_tx_hpd,
  input  wire [7:0] cam_data,
  input  wire       cam_pclk,
  input  wire       cam_href,
  input  wire       cam_vsync,
  output wire       cam_xclk,
  inout  wire       cam_sda,
  output wire       cam_scl,
  output wire       led_mmcm_locked,
  output wire       led_pixel_active,
  output wire       led_pll_locked,
  output wire       led_vid_locked,
  output wire       led4_g,
  output wire       led5_g,
  
  output wire [15:0] pixel_data,
  output wire        frame_done,
  output wire        bram_en,
  
  output wire        pixel_clk,
  output wire [11:0] bram_read_addr,
  input  wire [7:0]  bram_read_data,
  output wire        bram_read_en
);

//  wire pixel_clk;
  wire cam_xclk_o;
  wire mmcm_locked;
  wire aresetn_pixel;
  wire rgb2dvi_pll_locked;
  wire dbg_fifo_m_tvalid;
  wire [15:0] fifo_m_tdata;
  assign hdmi_tx_hpd = 1'b1;

  // XCLK output
  ODDR #(.DDR_CLK_EDGE("OPPOSITE_EDGE"), .INIT(1'b0), .SRTYPE("SYNC")) u_xclk_oddr (
    .Q(cam_xclk), .C(cam_xclk_o), .CE(1'b1),
    .D1(1'b1), .D2(1'b0), .R(1'b0), .S(1'b0)
  );

  // SCCB start delay
  localparam SCCB_DELAY = 24'd7_425_000;
  reg [23:0] sccb_cnt = 24'd0;
  reg        sccb_start = 1'b0;
  reg        sccb_fired = 1'b0;
  always @(posedge pixel_clk) begin
    if (!mmcm_locked || rst) begin
      sccb_cnt   <= 24'd0;
      sccb_start <= 1'b0;
      sccb_fired <= 1'b0;
    end else if (!sccb_fired) begin
      if (sccb_cnt < SCCB_DELAY) begin
        sccb_cnt   <= sccb_cnt + 24'd1;
        sccb_start <= 1'b0;
      end else begin
        sccb_start <= 1'b1;
        sccb_fired <= 1'b1;
      end
    end else begin
      sccb_start <= 1'b0;
    end
  end

  wire cam_config_done;
  wire sccb_siod_drive;
  camera_configure #(.CLK_FREQ(74_250_000)) u_cam_config (
    .clk(pixel_clk), .start(sccb_start),
    .sioc(cam_scl), .siod(sccb_siod_drive), .done(cam_config_done)
  );
  assign cam_sda = (sccb_siod_drive == 1'b0) ? 1'b0 : 1'b1;

  // Camera data cleanup (D0 remap)
`ifdef NO_D0
  wire [7:0] cam_data_clean = {cam_data[7:1], cam_data[1]};
`else
  wire [7:0] cam_data_clean = cam_data;
`endif

  wire [15:0] rp_pixel_data;
  wire        rp_pixel_valid;
  wire        rp_hsync_out;
  wire        rp_pixel_clk;
  wire        rp_frame_done;
  wire        rp_bram_en;
  read_pixels u_read_pixels (
    .p_clk(cam_pclk), .vsync(cam_vsync), .href(cam_href), .p_data(cam_data_clean),
    .pixel_data(rp_pixel_data), .hsync(rp_hsync_out), .pixel_valid(rp_pixel_valid),
    .pixel_clk(rp_pixel_clk), .frame_done(rp_frame_done), .bram_en(rp_bram_en)
  );
  
    
  assign pixel_data = rp_pixel_data;
  assign frame_done = rp_frame_done;
  assign bram_en = rp_bram_en;


  // AXIS capture path into the BD. Not consumed by the display logic below.
  wire [15:0] capture_axis_tdata;
  wire        capture_axis_tvalid;
  wire        capture_axis_tready;
  wire        capture_axis_tlast;
  wire        capture_axis_tuser;
  read_pixels_axis_adapter u_adapter (
    .clk(cam_pclk), .vsync(cam_vsync),
    .pixel_data(rp_pixel_data), .pixel_valid(rp_pixel_valid),
    .m_axis_tdata(capture_axis_tdata), .m_axis_tvalid(capture_axis_tvalid),
    .m_axis_tready(capture_axis_tready), .m_axis_tlast(capture_axis_tlast),
    .m_axis_tuser(capture_axis_tuser)
  );

  // 720p Sync Generation
  reg [11:0] sync_h = 12'd0;
  reg [11:0] sync_v = 12'd0;
  always @(posedge pixel_clk) begin
    if (!aresetn_pixel) begin
      sync_h <= 12'd0;
      sync_v <= 12'd0;
    end else begin
      if (sync_h == 12'd1649) begin
        sync_h <= 12'd0;
        sync_v <= (sync_v == 12'd749) ? 12'd0 : sync_v + 12'd1;
      end else
        sync_h <= sync_h + 12'd1;
    end
  end
  wire sync_active = (sync_h < 12'd1280) && (sync_v < 12'd720);
  wire sync_hsync  = (sync_h >= 12'd1390) && (sync_h < 12'd1430);
  wire sync_vsync  = (sync_v >= 12'd725)  && (sync_v < 12'd730);

  // Region detection
  // cam preview: 480x640 portrait, centered  (400..880, 40..680)
  // cnn panel:   192x192,           top-right (984..1176, 264..456)
  wire in_cam_h      = (sync_h >= 12'd400) && (sync_h < 12'd880);
  wire in_cam_v      = (sync_v >= 12'd40)  && (sync_v < 12'd680);
  wire in_cam_region = in_cam_h && in_cam_v && sync_active;

  wire in_panel_h      = (sync_h >= 12'd984) && (sync_h < 12'd1176);
  wire in_panel_v      = (sync_v >= 12'd264) && (sync_v < 12'd456);
  wire in_panel_region = in_panel_h && in_panel_v && sync_active;
  
  assign bram_read_en = in_panel_region;
  
  // Panel address: transpose (= 90 CW + horizontal mirror) so preview reads like a mirror.
  // 4x nearest-neighbour upscale: 48x48 -> 192x192.
  wire [11:0] panel_x   = sync_h - 12'd984;
  wire [11:0] panel_y   = sync_v - 12'd264;
  wire [5:0]  cnn_x     = panel_x[7:2];
  wire [5:0]  cnn_y     = panel_y[7:2];
  wire [11:0] cnn_raddr = (cnn_x * 6'd48) + {6'd0, cnn_y};
  
  assign bram_read_addr = cnn_raddr;
  
  // cam_x / cam_y in cam_pclk domain
  reg [9:0] cam_x      = 10'd0;
  reg [8:0] cam_y      = 9'd0;
  reg       cam_href_d = 1'b0;
  always @(posedge cam_pclk) begin
    cam_href_d <= cam_href;
    if (cam_vsync) begin
      cam_x <= 10'd0;
      cam_y <= 9'd0;
    end else if (cam_href_d && !cam_href) begin
      cam_x <= 10'd0;
      if (cam_y < 9'd479) cam_y <= cam_y + 9'd1;
    end else if (rp_pixel_valid && cam_href) begin
      if (cam_x < 10'd639) cam_x <= cam_x + 10'd1;
    end
  end

  // Luma calculation (Y = (R+2G+B)/4)
  wire [4:0] rgb_r5 = rp_pixel_data[15:11];
  wire [5:0] rgb_g6 = rp_pixel_data[10:5];
  wire [4:0] rgb_b5 = rp_pixel_data[4:0];
  wire [7:0] r8 = {rgb_r5, rgb_r5[4:2]};
  wire [7:0] g8 = {rgb_g6, rgb_g6[5:4]};
  wire [7:0] b8 = {rgb_b5, rgb_b5[4:2]};
  wire [9:0] y_sum  = {2'b00, r8} + {1'b0, g8, 1'b0} + {2'b00, b8};
  wire [7:0] y_luma = y_sum[9:2];

  // 320x240 luma frame buffer (~17 BRAMs). Written every 2nd cam pixel, both axes.
  (* ram_style = "block" *) reg [7:0] frame_buf [0:76799];
    
  // Write Logic (cam_pclk)
  wire fb_we = rp_pixel_valid && cam_href && (cam_x[0] == 1'b0) && (cam_y[0] == 1'b0);
  wire [8:0]  qvga_wx    = cam_x[9:1];
  wire [7:0]  qvga_wy    = cam_y[8:1];
  wire [16:0] qvga_waddr = (qvga_wy * 9'd320) + {8'd0, qvga_wx};
  always @(posedge cam_pclk) begin
    if (fb_we) frame_buf[qvga_waddr] <= y_luma;
  end

  
//  reg [7:0] bram_read_data_delayed;
//  always @(posedge pixel_clk) begin
//    bram_read_data_delayed <= bram_read_data;
//  end
  
  // Read Logic (pixel_clk)
  // 1-cycle BRAM read latency
  wire [11:0] disp_cam_x = sync_h - 12'd400;
  wire [11:0] disp_cam_y = sync_v - 12'd40;
  wire [8:0]  source_x   = disp_cam_y[9:1];
  wire [8:0]  source_y   = disp_cam_x[9:1];
  wire [16:0] qvga_raddr = ({8'd0, source_y} * 17'd320) + {8'd0, source_x};

  reg [7:0] disp_y = 8'h00;
  reg [7:0] panel_y_pixel = 8'h00;
  
  reg in_panel_d1 = 1'b0;
  reg in_panel_d2 = 1'b0;
  always @(posedge pixel_clk) begin
    in_panel_d1 <= in_panel_region;
    in_panel_d2 <= in_panel_d1;
  end
  
  always @(posedge pixel_clk) begin
    disp_y <= in_cam_region ? frame_buf[qvga_raddr] : 8'h00;
    panel_y_pixel <= in_panel_d2 ? bram_read_data : 8'h00;
  end

  wire [23:0] cam_rbg   = {disp_y, disp_y, disp_y};
  wire [23:0] panel_rbg = {panel_y_pixel, panel_y_pixel, panel_y_pixel};

  // Video Output Registers
  reg        vid_hsync_r  = 1'b0;
  reg        vid_vsync_r  = 1'b0;
  reg        vid_active_r = 1'b0;
  reg [23:0] vid_pdata_r  = 24'd0;
  always @(posedge pixel_clk) begin
    if (!aresetn_pixel) begin
      vid_hsync_r  <= 1'b0;
      vid_vsync_r  <= 1'b0;
      vid_active_r <= 1'b0;
      vid_pdata_r  <= 24'd0;
    end else begin
      vid_hsync_r  <= sync_hsync;
      vid_vsync_r  <= sync_vsync;
      vid_active_r <= sync_active;
      if (in_cam_region)        vid_pdata_r <= cam_rbg;
      else if (in_panel_d2) vid_pdata_r <= panel_rbg;
      else                       vid_pdata_r <= 24'h000000;
    end
  end

  // LEDs
  // LD0: MMCM locked
  assign led_mmcm_locked = mmcm_locked;
  // LD1: cam_pclk heartbeat
  reg [23:0] pclk_cnt = 24'd0;
  always @(posedge cam_pclk) pclk_cnt <= pclk_cnt + 24'd1;
  assign led_pixel_active = pclk_cnt[23];

  // LD2: vsync edges
  reg vs_s2 = 1'b0, vs_prev = 1'b0;
  reg [23:0] vs_cnt = 24'd0;
  always @(posedge pixel_clk) begin
    vs_s2 <= cam_vsync;
    vs_prev <= vs_s2;
    if (vs_s2 != vs_prev) vs_cnt <= vs_cnt + 24'd1;
  end
  assign led_pll_locked = vs_cnt[5];

  // LD3: href edges
  reg hr_s2 = 1'b0, hr_prev = 1'b0;
  reg [23:0] hr_cnt = 24'd0;
  always @(posedge pixel_clk) begin
    hr_s2 <= cam_href;
    hr_prev <= hr_s2;
    if (hr_s2 != hr_prev) hr_cnt <= hr_cnt + 24'd1;
  end
  assign led_vid_locked = hr_cnt[13];
  // LD4: rgb2dvi PLL locked
  assign led4_g = rgb2dvi_pll_locked;
  // LD5: xclk heartbeat
  reg [23:0] xclk_cnt = 24'd0;
  always @(posedge cam_xclk_o) xclk_cnt <= xclk_cnt + 24'd1;
  assign led5_g = xclk_cnt[23];

  system_wrapper u_system (
    .sys_clk(sys_clk),
    .hdmi_tx_clk_p(hdmi_tx_clk_p), .hdmi_tx_clk_n(hdmi_tx_clk_n),
    .hdmi_tx_d_p(hdmi_tx_d_p),     .hdmi_tx_d_n(hdmi_tx_d_n),
    .cam_xclk(cam_xclk_o),         .cam_pclk_i(cam_pclk),
    .pixel_clk(pixel_clk),         .mmcm_locked(mmcm_locked),
    .aresetn_pixel(aresetn_pixel), .rgb2dvi_pll_locked(rgb2dvi_pll_locked),
    .dbg_fifo_m_tvalid(dbg_fifo_m_tvalid), .fifo_m_tdata(fifo_m_tdata),
    .vid_hsync_i(vid_hsync_r),   .vid_vsync_i(vid_vsync_r),
    .vid_active_i(vid_active_r), .vid_pdata_i(vid_pdata_r),
    .S_AXIS_CAPTURE_tdata(capture_axis_tdata),   .S_AXIS_CAPTURE_tvalid(capture_axis_tvalid),
    .S_AXIS_CAPTURE_tready(capture_axis_tready), .S_AXIS_CAPTURE_tlast(capture_axis_tlast),
    .S_AXIS_CAPTURE_tuser(capture_axis_tuser)
  );
endmodule