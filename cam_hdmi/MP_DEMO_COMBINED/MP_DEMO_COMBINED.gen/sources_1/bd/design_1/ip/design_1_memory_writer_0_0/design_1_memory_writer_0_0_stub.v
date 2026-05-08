// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Apr 23 12:42:35 2026
// Host        : harun running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/harun/Documents/MP/MP_DEMO_COMBINED/MP_DEMO_COMBINED.gen/sources_1/bd/design_1/ip/design_1_memory_writer_0_0/design_1_memory_writer_0_0_stub.v
// Design      : design_1_memory_writer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_memory_writer_0_0,memory_writer,{}" *) (* CORE_GENERATION_INFO = "design_1_memory_writer_0_0,memory_writer,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=memory_writer,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "memory_writer,Vivado 2025.2" *) 
module design_1_memory_writer_0_0(clk, pixel_data, pixel_valid, frame_done, 
  write_address, write_data, write_en)
/* synthesis syn_black_box black_box_pad_pin="pixel_data[7:0],pixel_valid,frame_done,write_address[11:0],write_data[7:0],write_en" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  input [7:0]pixel_data;
  input pixel_valid;
  input frame_done;
  output [11:0]write_address;
  output [7:0]write_data;
  output write_en;
endmodule
