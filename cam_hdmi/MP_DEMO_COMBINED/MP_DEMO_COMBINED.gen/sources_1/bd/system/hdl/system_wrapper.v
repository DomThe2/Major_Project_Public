//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Mon Apr 20 16:58:11 2026
//Host        : Doms-Laptop running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (S_AXIS_CAPTURE_tdata,
    S_AXIS_CAPTURE_tlast,
    S_AXIS_CAPTURE_tready,
    S_AXIS_CAPTURE_tuser,
    S_AXIS_CAPTURE_tvalid,
    aresetn_pixel,
    cam_pclk_i,
    cam_xclk,
    dbg_fifo_m_tvalid,
    fifo_m_tdata,
    hdmi_tx_clk_n,
    hdmi_tx_clk_p,
    hdmi_tx_d_n,
    hdmi_tx_d_p,
    mmcm_locked,
    pixel_clk,
    rgb2dvi_pll_locked,
    sys_clk,
    vid_active_i,
    vid_hsync_i,
    vid_pdata_i,
    vid_vsync_i);
  input [15:0]S_AXIS_CAPTURE_tdata;
  input S_AXIS_CAPTURE_tlast;
  output S_AXIS_CAPTURE_tready;
  input [0:0]S_AXIS_CAPTURE_tuser;
  input S_AXIS_CAPTURE_tvalid;
  output [0:0]aresetn_pixel;
  input cam_pclk_i;
  output cam_xclk;
  output dbg_fifo_m_tvalid;
  output [15:0]fifo_m_tdata;
  output hdmi_tx_clk_n;
  output hdmi_tx_clk_p;
  output [2:0]hdmi_tx_d_n;
  output [2:0]hdmi_tx_d_p;
  output mmcm_locked;
  output pixel_clk;
  output rgb2dvi_pll_locked;
  input sys_clk;
  input vid_active_i;
  input vid_hsync_i;
  input [23:0]vid_pdata_i;
  input vid_vsync_i;

  wire [15:0]S_AXIS_CAPTURE_tdata;
  wire S_AXIS_CAPTURE_tlast;
  wire S_AXIS_CAPTURE_tready;
  wire [0:0]S_AXIS_CAPTURE_tuser;
  wire S_AXIS_CAPTURE_tvalid;
  wire [0:0]aresetn_pixel;
  wire cam_pclk_i;
  wire cam_xclk;
  wire dbg_fifo_m_tvalid;
  wire [15:0]fifo_m_tdata;
  wire hdmi_tx_clk_n;
  wire hdmi_tx_clk_p;
  wire [2:0]hdmi_tx_d_n;
  wire [2:0]hdmi_tx_d_p;
  wire mmcm_locked;
  wire pixel_clk;
  wire rgb2dvi_pll_locked;
  wire sys_clk;
  wire vid_active_i;
  wire vid_hsync_i;
  wire [23:0]vid_pdata_i;
  wire vid_vsync_i;

  system system_i
       (.S_AXIS_CAPTURE_tdata(S_AXIS_CAPTURE_tdata),
        .S_AXIS_CAPTURE_tlast(S_AXIS_CAPTURE_tlast),
        .S_AXIS_CAPTURE_tready(S_AXIS_CAPTURE_tready),
        .S_AXIS_CAPTURE_tuser(S_AXIS_CAPTURE_tuser),
        .S_AXIS_CAPTURE_tvalid(S_AXIS_CAPTURE_tvalid),
        .aresetn_pixel(aresetn_pixel),
        .cam_pclk_i(cam_pclk_i),
        .cam_xclk(cam_xclk),
        .dbg_fifo_m_tvalid(dbg_fifo_m_tvalid),
        .fifo_m_tdata(fifo_m_tdata),
        .hdmi_tx_clk_n(hdmi_tx_clk_n),
        .hdmi_tx_clk_p(hdmi_tx_clk_p),
        .hdmi_tx_d_n(hdmi_tx_d_n),
        .hdmi_tx_d_p(hdmi_tx_d_p),
        .mmcm_locked(mmcm_locked),
        .pixel_clk(pixel_clk),
        .rgb2dvi_pll_locked(rgb2dvi_pll_locked),
        .sys_clk(sys_clk),
        .vid_active_i(vid_active_i),
        .vid_hsync_i(vid_hsync_i),
        .vid_pdata_i(vid_pdata_i),
        .vid_vsync_i(vid_vsync_i));
endmodule
