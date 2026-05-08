// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:top:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_top_0_0 (
  sys_clk,
  rst,
  hdmi_tx_clk_p,
  hdmi_tx_clk_n,
  hdmi_tx_d_p,
  hdmi_tx_d_n,
  hdmi_tx_hpd,
  cam_data,
  cam_pclk,
  cam_href,
  cam_vsync,
  cam_xclk,
  cam_sda,
  cam_scl,
  led_mmcm_locked,
  led_pixel_active,
  led_pll_locked,
  led_vid_locked,
  led4_g,
  led5_g,
  pixel_data,
  frame_done,
  bram_en,
  pixel_clk,
  bram_read_addr,
  bram_read_data,
  bram_read_en
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_sys_clk_0, INSERT_VIP 0" *)
input wire sys_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire rst;
(* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_tx CLK_P" *)
(* X_INTERFACE_MODE = "slave" *)
output wire hdmi_tx_clk_p;
(* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_tx CLK_N" *)
output wire hdmi_tx_clk_n;
output wire [2 : 0] hdmi_tx_d_p;
output wire [2 : 0] hdmi_tx_d_n;
output wire hdmi_tx_hpd;
input wire [7 : 0] cam_data;
input wire cam_pclk;
input wire cam_href;
input wire cam_vsync;
output wire cam_xclk;
inout wire cam_sda;
output wire cam_scl;
output wire led_mmcm_locked;
output wire led_pixel_active;
output wire led_pll_locked;
output wire led_vid_locked;
output wire led4_g;
output wire led5_g;
output wire [15 : 0] pixel_data;
output wire frame_done;
output wire bram_en;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pixel_clk CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_top_0_0_pixel_clk, INSERT_VIP 0" *)
output wire pixel_clk;
output wire [11 : 0] bram_read_addr;
input wire [7 : 0] bram_read_data;
output wire bram_read_en;

  top inst (
    .sys_clk(sys_clk),
    .rst(rst),
    .hdmi_tx_clk_p(hdmi_tx_clk_p),
    .hdmi_tx_clk_n(hdmi_tx_clk_n),
    .hdmi_tx_d_p(hdmi_tx_d_p),
    .hdmi_tx_d_n(hdmi_tx_d_n),
    .hdmi_tx_hpd(hdmi_tx_hpd),
    .cam_data(cam_data),
    .cam_pclk(cam_pclk),
    .cam_href(cam_href),
    .cam_vsync(cam_vsync),
    .cam_xclk(cam_xclk),
    .cam_sda(cam_sda),
    .cam_scl(cam_scl),
    .led_mmcm_locked(led_mmcm_locked),
    .led_pixel_active(led_pixel_active),
    .led_pll_locked(led_pll_locked),
    .led_vid_locked(led_vid_locked),
    .led4_g(led4_g),
    .led5_g(led5_g),
    .pixel_data(pixel_data),
    .frame_done(frame_done),
    .bram_en(bram_en),
    .pixel_clk(pixel_clk),
    .bram_read_addr(bram_read_addr),
    .bram_read_data(bram_read_data),
    .bram_read_en(bram_read_en)
  );
endmodule
