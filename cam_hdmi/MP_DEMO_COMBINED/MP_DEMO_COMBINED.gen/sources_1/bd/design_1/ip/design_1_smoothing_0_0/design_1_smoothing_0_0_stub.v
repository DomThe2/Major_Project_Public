// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu May  7 03:47:55 2026
// Host        : harun running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/harun/Documents/MP/MP_DEMO_COMBINED/MP_DEMO_COMBINED.gen/sources_1/bd/design_1/ip/design_1_smoothing_0_0/design_1_smoothing_0_0_stub.v
// Design      : design_1_smoothing_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_smoothing_0_0,smoothing,{}" *) (* CORE_GENERATION_INFO = "design_1_smoothing_0_0,smoothing,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=smoothing,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "smoothing,Vivado 2025.2" *) 
module design_1_smoothing_0_0(p_clk, reset, pixel_data_grayscale, 
  input_valid, pixel_data_avg, output_valid)
/* synthesis syn_black_box black_box_pad_pin="reset,pixel_data_grayscale[7:0],input_valid,pixel_data_avg[7:0],output_valid" */
/* synthesis syn_force_seq_prim="p_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 p_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input p_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [7:0]pixel_data_grayscale;
  input input_valid;
  output [7:0]pixel_data_avg;
  output output_valid;
endmodule
