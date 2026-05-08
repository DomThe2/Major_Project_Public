// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu May  7 04:39:49 2026
// Host        : harun running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/harun/Documents/MP/MP_DEMO_COMBINED/MP_DEMO_COMBINED.gen/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_stub.v
// Design      : design_1_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_top_0_0,top,{}" *) (* CORE_GENERATION_INFO = "design_1_top_0_0,top,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=top,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "top,Vivado 2025.2" *) 
module design_1_top_0_0(sys_clk, rst, hdmi_tx_clk_p, hdmi_tx_clk_n, 
  hdmi_tx_d_p, hdmi_tx_d_n, hdmi_tx_hpd, cam_data, cam_pclk, cam_href, cam_vsync, cam_xclk, 
  cam_sda, cam_scl, led_mmcm_locked, led_pixel_active, led_pll_locked, led_vid_locked, led4_g, 
  led5_g, pixel_data, frame_done, bram_en, pixel_clk, bram_read_addr, bram_read_data, 
  bram_read_en)
/* synthesis syn_black_box black_box_pad_pin="sys_clk,rst,hdmi_tx_clk_p,hdmi_tx_clk_n,hdmi_tx_d_p[2:0],hdmi_tx_d_n[2:0],hdmi_tx_hpd,cam_data[7:0],cam_href,cam_vsync,cam_xclk,cam_sda,cam_scl,led_mmcm_locked,led_pixel_active,led_pll_locked,led_vid_locked,led4_g,led5_g,pixel_data[15:0],frame_done,bram_en,bram_read_addr[11:0],bram_read_data[7:0],bram_read_en" */
/* synthesis syn_force_seq_prim="cam_pclk" */
/* synthesis syn_force_seq_prim="pixel_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_sys_clk_0, INSERT_VIP 0" *) input sys_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_tx CLK_P" *) (* X_INTERFACE_MODE = "slave" *) output hdmi_tx_clk_p;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_tx CLK_N" *) output hdmi_tx_clk_n;
  output [2:0]hdmi_tx_d_p;
  output [2:0]hdmi_tx_d_n;
  output hdmi_tx_hpd;
  input [7:0]cam_data;
  input cam_pclk /* synthesis syn_isclock = 1 */;
  input cam_href;
  input cam_vsync;
  output cam_xclk;
  inout cam_sda;
  output cam_scl;
  output led_mmcm_locked;
  output led_pixel_active;
  output led_pll_locked;
  output led_vid_locked;
  output led4_g;
  output led5_g;
  output [15:0]pixel_data;
  output frame_done;
  output bram_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pixel_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_top_0_0_pixel_clk, INSERT_VIP 0" *) output pixel_clk /* synthesis syn_isclock = 1 */;
  output [11:0]bram_read_addr;
  input [7:0]bram_read_data;
  output bram_read_en;
endmodule
