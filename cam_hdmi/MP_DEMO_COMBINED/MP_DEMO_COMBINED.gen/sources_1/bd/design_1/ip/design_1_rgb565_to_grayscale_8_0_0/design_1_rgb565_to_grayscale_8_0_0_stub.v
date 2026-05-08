// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu May  7 04:15:27 2026
// Host        : harun running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/harun/Documents/MP/MP_DEMO_COMBINED/MP_DEMO_COMBINED.gen/sources_1/bd/design_1/ip/design_1_rgb565_to_grayscale_8_0_0/design_1_rgb565_to_grayscale_8_0_0_stub.v
// Design      : design_1_rgb565_to_grayscale_8_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_rgb565_to_grayscale_8_0_0,rgb565_to_grayscale_8,{}" *) (* CORE_GENERATION_INFO = "design_1_rgb565_to_grayscale_8_0_0,rgb565_to_grayscale_8,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=rgb565_to_grayscale_8,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "rgb565_to_grayscale_8,Vivado 2025.2" *) 
module design_1_rgb565_to_grayscale_8_0_0(p_clk, pixel_data_565, input_valid, 
  pixel_data_grayscale, output_valid)
/* synthesis syn_black_box black_box_pad_pin="pixel_data_565[15:0],input_valid,pixel_data_grayscale[7:0],output_valid" */
/* synthesis syn_force_seq_prim="p_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 p_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input p_clk /* synthesis syn_isclock = 1 */;
  input [15:0]pixel_data_565;
  input input_valid;
  output [7:0]pixel_data_grayscale;
  output output_valid;
endmodule
