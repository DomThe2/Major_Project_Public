// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------
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

// MODULE VLNV: amd.com:blockdesign:design_1:1.0

`timescale 1ps / 1ps

`include "vivado_interfaces.svh"

module design_1_sv (
  (* X_INTERFACE_IGNORE = "true" *)
  input wire [7:0] cam_data,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire cam_href,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire cam_pclk,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire cam_scl,
  (* X_INTERFACE_IGNORE = "true" *)
  inout wire cam_sda,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire cam_vsync,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire cam_xclk,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [2:0] hdmi_tx_d_n,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [2:0] hdmi_tx_d_p,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire hdmi_tx_hpd,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire led4_g,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire led5_g,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire led_mmcm_locked,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire led_pixel_active,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire led_pll_locked,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire led_vid_locked,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire sys_clk,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire hdmi_tx_clk_p,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire hdmi_tx_clk_n,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire rst
);

  design_1 inst (
    .cam_data(cam_data),
    .cam_href(cam_href),
    .cam_pclk(cam_pclk),
    .cam_scl(cam_scl),
    .cam_sda(cam_sda),
    .cam_vsync(cam_vsync),
    .cam_xclk(cam_xclk),
    .hdmi_tx_d_n(hdmi_tx_d_n),
    .hdmi_tx_d_p(hdmi_tx_d_p),
    .hdmi_tx_hpd(hdmi_tx_hpd),
    .led4_g(led4_g),
    .led5_g(led5_g),
    .led_mmcm_locked(led_mmcm_locked),
    .led_pixel_active(led_pixel_active),
    .led_pll_locked(led_pll_locked),
    .led_vid_locked(led_vid_locked),
    .sys_clk(sys_clk),
    .hdmi_tx_clk_p(hdmi_tx_clk_p),
    .hdmi_tx_clk_n(hdmi_tx_clk_n),
    .rst(rst)
  );

endmodule
