//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Thu May  7 04:38:17 2026
//Host        : harun running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (cam_data,
    cam_href,
    cam_pclk,
    cam_scl,
    cam_sda,
    cam_vsync,
    cam_xclk,
    hdmi_tx_clk_n,
    hdmi_tx_clk_p,
    hdmi_tx_d_n,
    hdmi_tx_d_p,
    hdmi_tx_hpd,
    led4_g,
    led5_g,
    led_mmcm_locked,
    led_pixel_active,
    led_pll_locked,
    led_vid_locked,
    rst,
    sys_clk);
  input [7:0]cam_data;
  input cam_href;
  input cam_pclk;
  output cam_scl;
  inout cam_sda;
  input cam_vsync;
  output cam_xclk;
  output hdmi_tx_clk_n;
  output hdmi_tx_clk_p;
  output [2:0]hdmi_tx_d_n;
  output [2:0]hdmi_tx_d_p;
  output hdmi_tx_hpd;
  output led4_g;
  output led5_g;
  output led_mmcm_locked;
  output led_pixel_active;
  output led_pll_locked;
  output led_vid_locked;
  input rst;
  input sys_clk;

  wire [7:0]cam_data;
  wire cam_href;
  wire cam_pclk;
  wire cam_scl;
  wire cam_sda;
  wire cam_vsync;
  wire cam_xclk;
  wire hdmi_tx_clk_n;
  wire hdmi_tx_clk_p;
  wire [2:0]hdmi_tx_d_n;
  wire [2:0]hdmi_tx_d_p;
  wire hdmi_tx_hpd;
  wire led4_g;
  wire led5_g;
  wire led_mmcm_locked;
  wire led_pixel_active;
  wire led_pll_locked;
  wire led_vid_locked;
  wire rst;
  wire sys_clk;

  design_1 design_1_i
       (.cam_data(cam_data),
        .cam_href(cam_href),
        .cam_pclk(cam_pclk),
        .cam_scl(cam_scl),
        .cam_sda(cam_sda),
        .cam_vsync(cam_vsync),
        .cam_xclk(cam_xclk),
        .hdmi_tx_clk_n(hdmi_tx_clk_n),
        .hdmi_tx_clk_p(hdmi_tx_clk_p),
        .hdmi_tx_d_n(hdmi_tx_d_n),
        .hdmi_tx_d_p(hdmi_tx_d_p),
        .hdmi_tx_hpd(hdmi_tx_hpd),
        .led4_g(led4_g),
        .led5_g(led5_g),
        .led_mmcm_locked(led_mmcm_locked),
        .led_pixel_active(led_pixel_active),
        .led_pll_locked(led_pll_locked),
        .led_vid_locked(led_vid_locked),
        .rst(rst),
        .sys_clk(sys_clk));
endmodule
