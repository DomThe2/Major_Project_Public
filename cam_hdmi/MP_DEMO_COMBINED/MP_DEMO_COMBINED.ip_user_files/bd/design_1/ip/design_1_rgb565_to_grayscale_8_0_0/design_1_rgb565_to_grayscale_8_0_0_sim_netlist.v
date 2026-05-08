// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu May  7 04:15:27 2026
// Host        : harun running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/harun/Documents/MP/MP_DEMO_COMBINED/MP_DEMO_COMBINED.gen/sources_1/bd/design_1/ip/design_1_rgb565_to_grayscale_8_0_0/design_1_rgb565_to_grayscale_8_0_0_sim_netlist.v
// Design      : design_1_rgb565_to_grayscale_8_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_rgb565_to_grayscale_8_0_0,rgb565_to_grayscale_8,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "rgb565_to_grayscale_8,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_rgb565_to_grayscale_8_0_0
   (p_clk,
    pixel_data_565,
    input_valid,
    pixel_data_grayscale,
    output_valid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 p_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input p_clk;
  input [15:0]pixel_data_565;
  input input_valid;
  output [7:0]pixel_data_grayscale;
  output output_valid;

  wire input_valid;
  wire output_valid;
  wire p_clk;
  wire [15:0]pixel_data_565;
  wire [7:0]pixel_data_grayscale;

  design_1_rgb565_to_grayscale_8_0_0_rgb565_to_grayscale_8 inst
       (.input_valid(input_valid),
        .output_valid(output_valid),
        .p_clk(p_clk),
        .pixel_data_565(pixel_data_565),
        .pixel_data_grayscale(pixel_data_grayscale));
endmodule

(* ORIG_REF_NAME = "rgb565_to_grayscale_8" *) 
module design_1_rgb565_to_grayscale_8_0_0_rgb565_to_grayscale_8
   (pixel_data_grayscale,
    output_valid,
    pixel_data_565,
    p_clk,
    input_valid);
  output [7:0]pixel_data_grayscale;
  output output_valid;
  input [15:0]pixel_data_565;
  input p_clk;
  input input_valid;

  wire [14:1]C;
  wire i___27_carry__0_i_1_n_0;
  wire i___27_carry__0_i_2_n_0;
  wire i___27_carry__0_i_3_n_0;
  wire i___27_carry__0_i_4_n_0;
  wire i___27_carry__0_i_5_n_0;
  wire i___27_carry__0_i_6_n_0;
  wire i___27_carry__0_i_7_n_0;
  wire i___27_carry__1_i_1_n_0;
  wire i___27_carry__1_i_2_n_0;
  wire i___27_carry__1_i_3_n_0;
  wire i___27_carry__1_i_4_n_0;
  wire i___27_carry__1_i_5_n_0;
  wire i___27_carry__1_i_6_n_0;
  wire i___27_carry__1_i_7_n_0;
  wire i___27_carry__1_i_8_n_0;
  wire i___27_carry__2_i_1_n_0;
  wire i___27_carry_i_1_n_0;
  wire i___27_carry_i_2_n_0;
  wire i___27_carry_i_3_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire input_valid;
  wire output_valid;
  wire [7:0]p_0_in;
  wire p_clk;
  wire [15:0]pixel_data_565;
  wire [7:0]pixel_data_grayscale;
  wire [12:1]temp0;
  wire temp0__23_carry__0_i_1_n_0;
  wire temp0__23_carry__0_i_2_n_0;
  wire temp0__23_carry__0_i_3_n_0;
  wire temp0__23_carry__0_i_4_n_0;
  wire temp0__23_carry__0_i_5_n_0;
  wire temp0__23_carry__0_i_6_n_0;
  wire temp0__23_carry__0_i_7_n_0;
  wire temp0__23_carry__0_i_8_n_0;
  wire temp0__23_carry__0_n_0;
  wire temp0__23_carry__0_n_1;
  wire temp0__23_carry__0_n_2;
  wire temp0__23_carry__0_n_3;
  wire temp0__23_carry__1_i_1_n_0;
  wire temp0__23_carry__1_i_2_n_0;
  wire temp0__23_carry__1_i_3_n_0;
  wire temp0__23_carry__1_n_3;
  wire temp0__23_carry_i_1_n_0;
  wire temp0__23_carry_i_2_n_0;
  wire temp0__23_carry_i_3_n_0;
  wire temp0__23_carry_i_4_n_0;
  wire temp0__23_carry_i_5_n_0;
  wire temp0__23_carry_i_6_n_0;
  wire temp0__23_carry_i_7_n_0;
  wire temp0__23_carry_n_0;
  wire temp0__23_carry_n_1;
  wire temp0__23_carry_n_2;
  wire temp0__23_carry_n_3;
  wire temp0_carry__0_i_1_n_0;
  wire temp0_carry__0_i_2_n_0;
  wire temp0_carry__0_i_3_n_0;
  wire temp0_carry__0_n_0;
  wire temp0_carry__0_n_1;
  wire temp0_carry__0_n_2;
  wire temp0_carry__0_n_3;
  wire temp0_carry__0_n_4;
  wire temp0_carry__0_n_5;
  wire temp0_carry__0_n_6;
  wire temp0_carry__0_n_7;
  wire temp0_carry__1_n_2;
  wire temp0_carry__1_n_7;
  wire temp0_carry_i_1_n_0;
  wire temp0_carry_i_2_n_0;
  wire temp0_carry_i_3_n_0;
  wire temp0_carry_n_0;
  wire temp0_carry_n_1;
  wire temp0_carry_n_2;
  wire temp0_carry_n_3;
  wire temp0_carry_n_4;
  wire temp0_carry_n_5;
  wire [15:1]temp1;
  wire temp1__24_carry__0_i_1_n_0;
  wire temp1__24_carry__0_i_2_n_0;
  wire temp1__24_carry__0_i_3_n_0;
  wire temp1__24_carry__0_i_4_n_0;
  wire temp1__24_carry__0_i_5_n_0;
  wire temp1__24_carry__0_i_6_n_0;
  wire temp1__24_carry__0_i_7_n_0;
  wire temp1__24_carry__0_n_0;
  wire temp1__24_carry__0_n_1;
  wire temp1__24_carry__0_n_2;
  wire temp1__24_carry__0_n_3;
  wire temp1__24_carry__0_n_4;
  wire temp1__24_carry__0_n_5;
  wire temp1__24_carry__0_n_6;
  wire temp1__24_carry__0_n_7;
  wire temp1__24_carry__1_i_1_n_0;
  wire temp1__24_carry__1_i_2_n_0;
  wire temp1__24_carry__1_i_3_n_0;
  wire temp1__24_carry__1_n_0;
  wire temp1__24_carry__1_n_1;
  wire temp1__24_carry__1_n_2;
  wire temp1__24_carry__1_n_3;
  wire temp1__24_carry__1_n_4;
  wire temp1__24_carry__1_n_5;
  wire temp1__24_carry__1_n_6;
  wire temp1__24_carry__1_n_7;
  wire temp1__24_carry_i_1_n_0;
  wire temp1__24_carry_i_2_n_0;
  wire temp1__24_carry_i_3_n_0;
  wire temp1__24_carry_n_0;
  wire temp1__24_carry_n_1;
  wire temp1__24_carry_n_2;
  wire temp1__24_carry_n_3;
  wire temp1__24_carry_n_4;
  wire temp1__24_carry_n_5;
  wire temp1__24_carry_n_6;
  wire temp1__24_carry_n_7;
  wire temp1_carry__0_i_1_n_0;
  wire temp1_carry__0_i_2_n_0;
  wire temp1_carry__0_i_3_n_0;
  wire temp1_carry__0_n_0;
  wire temp1_carry__0_n_1;
  wire temp1_carry__0_n_2;
  wire temp1_carry__0_n_3;
  wire temp1_carry__0_n_4;
  wire temp1_carry__0_n_5;
  wire temp1_carry__0_n_6;
  wire temp1_carry__0_n_7;
  wire temp1_carry__1_n_2;
  wire temp1_carry__1_n_7;
  wire temp1_carry_i_1_n_0;
  wire temp1_carry_i_2_n_0;
  wire temp1_carry_i_3_n_0;
  wire temp1_carry_n_0;
  wire temp1_carry_n_1;
  wire temp1_carry_n_2;
  wire temp1_carry_n_3;
  wire temp1_carry_n_4;
  wire temp1_carry_n_5;
  wire temp1_carry_n_6;
  wire temp1_carry_n_7;
  wire \temp1_inferred__0/i___27_carry__0_n_0 ;
  wire \temp1_inferred__0/i___27_carry__0_n_1 ;
  wire \temp1_inferred__0/i___27_carry__0_n_2 ;
  wire \temp1_inferred__0/i___27_carry__0_n_3 ;
  wire \temp1_inferred__0/i___27_carry__1_n_0 ;
  wire \temp1_inferred__0/i___27_carry__1_n_1 ;
  wire \temp1_inferred__0/i___27_carry__1_n_2 ;
  wire \temp1_inferred__0/i___27_carry__1_n_3 ;
  wire \temp1_inferred__0/i___27_carry_n_0 ;
  wire \temp1_inferred__0/i___27_carry_n_1 ;
  wire \temp1_inferred__0/i___27_carry_n_2 ;
  wire \temp1_inferred__0/i___27_carry_n_3 ;
  wire \temp1_inferred__0/i__carry__0_n_0 ;
  wire \temp1_inferred__0/i__carry__0_n_1 ;
  wire \temp1_inferred__0/i__carry__0_n_2 ;
  wire \temp1_inferred__0/i__carry__0_n_3 ;
  wire \temp1_inferred__0/i__carry__0_n_4 ;
  wire \temp1_inferred__0/i__carry__0_n_5 ;
  wire \temp1_inferred__0/i__carry__0_n_6 ;
  wire \temp1_inferred__0/i__carry__0_n_7 ;
  wire \temp1_inferred__0/i__carry__1_n_1 ;
  wire \temp1_inferred__0/i__carry__1_n_3 ;
  wire \temp1_inferred__0/i__carry__1_n_6 ;
  wire \temp1_inferred__0/i__carry__1_n_7 ;
  wire \temp1_inferred__0/i__carry_n_0 ;
  wire \temp1_inferred__0/i__carry_n_1 ;
  wire \temp1_inferred__0/i__carry_n_2 ;
  wire \temp1_inferred__0/i__carry_n_3 ;
  wire \temp1_inferred__0/i__carry_n_4 ;
  wire \temp1_inferred__0/i__carry_n_5 ;
  wire temp__41_carry__0_n_0;
  wire temp__41_carry__0_n_1;
  wire temp__41_carry__0_n_2;
  wire temp__41_carry__0_n_3;
  wire temp__41_carry__1_n_0;
  wire temp__41_carry__1_n_1;
  wire temp__41_carry__1_n_2;
  wire temp__41_carry__1_n_3;
  wire temp__41_carry__2_n_2;
  wire temp__41_carry__2_n_3;
  wire temp__41_carry_i_1__0_n_0;
  wire temp__41_carry_i_1__1_n_0;
  wire temp__41_carry_i_1__2_n_0;
  wire temp__41_carry_i_1_n_0;
  wire temp__41_carry_i_2__0_n_0;
  wire temp__41_carry_i_2__1_n_0;
  wire temp__41_carry_i_2__2_n_0;
  wire temp__41_carry_i_2_n_0;
  wire temp__41_carry_i_3__0_n_0;
  wire temp__41_carry_i_3__1_n_0;
  wire temp__41_carry_i_3__2_n_0;
  wire temp__41_carry_i_3_n_0;
  wire temp__41_carry_i_4__0_n_0;
  wire temp__41_carry_i_4__1_n_0;
  wire temp__41_carry_i_4_n_0;
  wire temp__41_carry_n_0;
  wire temp__41_carry_n_1;
  wire temp__41_carry_n_2;
  wire temp__41_carry_n_3;
  wire temp_carry__0_i_1_n_0;
  wire temp_carry__0_i_2_n_0;
  wire temp_carry__0_i_3_n_0;
  wire temp_carry__0_i_4_n_0;
  wire temp_carry__0_n_0;
  wire temp_carry__0_n_1;
  wire temp_carry__0_n_2;
  wire temp_carry__0_n_3;
  wire temp_carry__1_i_1_n_0;
  wire temp_carry__1_i_2_n_0;
  wire temp_carry__1_i_3_n_0;
  wire temp_carry__1_i_4_n_0;
  wire temp_carry__1_n_0;
  wire temp_carry__1_n_1;
  wire temp_carry__1_n_2;
  wire temp_carry__1_n_3;
  wire temp_carry__2_i_1_n_3;
  wire temp_carry__2_i_2_n_0;
  wire temp_carry__2_n_0;
  wire temp_carry__2_n_2;
  wire temp_carry__2_n_3;
  wire temp_carry_i_1_n_0;
  wire temp_carry_i_2_n_0;
  wire temp_carry_i_3_n_0;
  wire temp_carry_i_4_n_0;
  wire temp_carry_n_0;
  wire temp_carry_n_1;
  wire temp_carry_n_2;
  wire temp_carry_n_3;
  wire [3:1]NLW_temp0__23_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_temp0__23_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_temp0_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_temp0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_temp1_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_temp1_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_temp1_inferred__0/i___27_carry__2_CO_UNCONNECTED ;
  wire [3:1]\NLW_temp1_inferred__0/i___27_carry__2_O_UNCONNECTED ;
  wire [3:1]\NLW_temp1_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_temp1_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]NLW_temp__41_carry_O_UNCONNECTED;
  wire [2:0]NLW_temp__41_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_temp__41_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_temp__41_carry__2_O_UNCONNECTED;
  wire [0:0]NLW_temp_carry_O_UNCONNECTED;
  wire [2:2]NLW_temp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_temp_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_temp_carry__2_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_temp_carry__2_i_1_O_UNCONNECTED;

  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___27_carry__0_i_1
       (.I0(pixel_data_565[8]),
        .I1(\temp1_inferred__0/i__carry__1_n_7 ),
        .I2(pixel_data_565[5]),
        .O(i___27_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___27_carry__0_i_2
       (.I0(pixel_data_565[7]),
        .I1(\temp1_inferred__0/i__carry__0_n_4 ),
        .I2(pixel_data_565[10]),
        .O(i___27_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___27_carry__0_i_3
       (.I0(pixel_data_565[10]),
        .I1(pixel_data_565[7]),
        .I2(\temp1_inferred__0/i__carry__0_n_4 ),
        .O(i___27_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___27_carry__0_i_4
       (.I0(pixel_data_565[9]),
        .I1(\temp1_inferred__0/i__carry__1_n_6 ),
        .I2(pixel_data_565[6]),
        .I3(i___27_carry__0_i_1_n_0),
        .O(i___27_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    i___27_carry__0_i_5
       (.I0(pixel_data_565[8]),
        .I1(\temp1_inferred__0/i__carry__1_n_7 ),
        .I2(pixel_data_565[5]),
        .I3(i___27_carry__0_i_2_n_0),
        .O(i___27_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    i___27_carry__0_i_6
       (.I0(pixel_data_565[7]),
        .I1(\temp1_inferred__0/i__carry__0_n_4 ),
        .I2(pixel_data_565[10]),
        .I3(\temp1_inferred__0/i__carry__0_n_5 ),
        .I4(pixel_data_565[6]),
        .O(i___27_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    i___27_carry__0_i_7
       (.I0(pixel_data_565[6]),
        .I1(\temp1_inferred__0/i__carry__0_n_5 ),
        .I2(pixel_data_565[9]),
        .O(i___27_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i___27_carry__1_i_1
       (.I0(pixel_data_565[9]),
        .I1(\temp1_inferred__0/i__carry__1_n_1 ),
        .O(i___27_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i___27_carry__1_i_2
       (.I0(pixel_data_565[8]),
        .I1(\temp1_inferred__0/i__carry__1_n_1 ),
        .O(i___27_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    i___27_carry__1_i_3
       (.I0(\temp1_inferred__0/i__carry__1_n_1 ),
        .I1(pixel_data_565[10]),
        .I2(pixel_data_565[7]),
        .O(i___27_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    i___27_carry__1_i_4
       (.I0(pixel_data_565[9]),
        .I1(\temp1_inferred__0/i__carry__1_n_6 ),
        .I2(pixel_data_565[6]),
        .O(i___27_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    i___27_carry__1_i_5
       (.I0(pixel_data_565[9]),
        .I1(\temp1_inferred__0/i__carry__1_n_1 ),
        .I2(pixel_data_565[10]),
        .O(i___27_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'hE1)) 
    i___27_carry__1_i_6
       (.I0(pixel_data_565[8]),
        .I1(\temp1_inferred__0/i__carry__1_n_1 ),
        .I2(pixel_data_565[9]),
        .O(i___27_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h7E81)) 
    i___27_carry__1_i_7
       (.I0(pixel_data_565[7]),
        .I1(pixel_data_565[10]),
        .I2(\temp1_inferred__0/i__carry__1_n_1 ),
        .I3(pixel_data_565[8]),
        .O(i___27_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    i___27_carry__1_i_8
       (.I0(i___27_carry__1_i_4_n_0),
        .I1(\temp1_inferred__0/i__carry__1_n_1 ),
        .I2(pixel_data_565[10]),
        .I3(pixel_data_565[7]),
        .O(i___27_carry__1_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i___27_carry__2_i_1
       (.I0(pixel_data_565[10]),
        .I1(\temp1_inferred__0/i__carry__1_n_1 ),
        .O(i___27_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___27_carry_i_1
       (.I0(\temp1_inferred__0/i__carry__0_n_6 ),
        .I1(pixel_data_565[5]),
        .O(i___27_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___27_carry_i_2
       (.I0(\temp1_inferred__0/i__carry__0_n_7 ),
        .I1(pixel_data_565[10]),
        .O(i___27_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___27_carry_i_3
       (.I0(\temp1_inferred__0/i__carry_n_4 ),
        .I1(pixel_data_565[9]),
        .O(i___27_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(pixel_data_565[8]),
        .I1(pixel_data_565[10]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2
       (.I0(pixel_data_565[7]),
        .I1(pixel_data_565[9]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3
       (.I0(pixel_data_565[6]),
        .I1(pixel_data_565[8]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4
       (.I0(pixel_data_565[5]),
        .I1(pixel_data_565[7]),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(pixel_data_565[10]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(pixel_data_565[9]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1
       (.I0(pixel_data_565[10]),
        .I1(pixel_data_565[6]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2
       (.I0(pixel_data_565[9]),
        .I1(pixel_data_565[5]),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3
       (.I0(pixel_data_565[10]),
        .O(i__carry_i_3_n_0));
  FDRE output_valid_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(input_valid),
        .Q(output_valid),
        .R(1'b0));
  FDRE \pixel_data_grayscale_reg[0] 
       (.C(p_clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(pixel_data_grayscale[0]),
        .R(1'b0));
  FDRE \pixel_data_grayscale_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(pixel_data_grayscale[1]),
        .R(1'b0));
  FDRE \pixel_data_grayscale_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(pixel_data_grayscale[2]),
        .R(1'b0));
  FDRE \pixel_data_grayscale_reg[3] 
       (.C(p_clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(pixel_data_grayscale[3]),
        .R(1'b0));
  FDRE \pixel_data_grayscale_reg[4] 
       (.C(p_clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(pixel_data_grayscale[4]),
        .R(1'b0));
  FDRE \pixel_data_grayscale_reg[5] 
       (.C(p_clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(pixel_data_grayscale[5]),
        .R(1'b0));
  FDRE \pixel_data_grayscale_reg[6] 
       (.C(p_clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(pixel_data_grayscale[6]),
        .R(1'b0));
  FDRE \pixel_data_grayscale_reg[7] 
       (.C(p_clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(pixel_data_grayscale[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 temp0__23_carry
       (.CI(1'b0),
        .CO({temp0__23_carry_n_0,temp0__23_carry_n_1,temp0__23_carry_n_2,temp0__23_carry_n_3}),
        .CYINIT(1'b0),
        .DI({temp0__23_carry_i_1_n_0,temp0__23_carry_i_2_n_0,temp0__23_carry_i_3_n_0,1'b0}),
        .O(temp0[6:3]),
        .S({temp0__23_carry_i_4_n_0,temp0__23_carry_i_5_n_0,temp0__23_carry_i_6_n_0,temp0__23_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 temp0__23_carry__0
       (.CI(temp0__23_carry_n_0),
        .CO({temp0__23_carry__0_n_0,temp0__23_carry__0_n_1,temp0__23_carry__0_n_2,temp0__23_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({temp0__23_carry__0_i_1_n_0,temp0__23_carry__0_i_2_n_0,temp0__23_carry__0_i_3_n_0,temp0__23_carry__0_i_4_n_0}),
        .O(temp0[10:7]),
        .S({temp0__23_carry__0_i_5_n_0,temp0__23_carry__0_i_6_n_0,temp0__23_carry__0_i_7_n_0,temp0__23_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'hD4)) 
    temp0__23_carry__0_i_1
       (.I0(pixel_data_565[3]),
        .I1(temp0_carry__1_n_7),
        .I2(pixel_data_565[1]),
        .O(temp0__23_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    temp0__23_carry__0_i_2
       (.I0(pixel_data_565[2]),
        .I1(temp0_carry__0_n_4),
        .I2(pixel_data_565[0]),
        .O(temp0__23_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    temp0__23_carry__0_i_3
       (.I0(pixel_data_565[1]),
        .I1(temp0_carry__0_n_5),
        .I2(pixel_data_565[4]),
        .O(temp0__23_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    temp0__23_carry__0_i_4
       (.I0(pixel_data_565[0]),
        .I1(temp0_carry__0_n_6),
        .I2(pixel_data_565[3]),
        .O(temp0__23_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    temp0__23_carry__0_i_5
       (.I0(pixel_data_565[1]),
        .I1(temp0_carry__1_n_7),
        .I2(pixel_data_565[3]),
        .I3(pixel_data_565[4]),
        .I4(temp0_carry__1_n_2),
        .I5(pixel_data_565[2]),
        .O(temp0__23_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    temp0__23_carry__0_i_6
       (.I0(pixel_data_565[0]),
        .I1(temp0_carry__0_n_4),
        .I2(pixel_data_565[2]),
        .I3(pixel_data_565[3]),
        .I4(temp0_carry__1_n_7),
        .I5(pixel_data_565[1]),
        .O(temp0__23_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    temp0__23_carry__0_i_7
       (.I0(pixel_data_565[4]),
        .I1(temp0_carry__0_n_5),
        .I2(pixel_data_565[1]),
        .I3(pixel_data_565[2]),
        .I4(temp0_carry__0_n_4),
        .I5(pixel_data_565[0]),
        .O(temp0__23_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    temp0__23_carry__0_i_8
       (.I0(pixel_data_565[3]),
        .I1(temp0_carry__0_n_6),
        .I2(pixel_data_565[0]),
        .I3(pixel_data_565[1]),
        .I4(temp0_carry__0_n_5),
        .I5(pixel_data_565[4]),
        .O(temp0__23_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 temp0__23_carry__1
       (.CI(temp0__23_carry__0_n_0),
        .CO({NLW_temp0__23_carry__1_CO_UNCONNECTED[3:1],temp0__23_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,temp0__23_carry__1_i_1_n_0}),
        .O({NLW_temp0__23_carry__1_O_UNCONNECTED[3:2],temp0[12:11]}),
        .S({1'b0,1'b0,temp0__23_carry__1_i_2_n_0,temp0__23_carry__1_i_3_n_0}));
  LUT3 #(
    .INIT(8'hD4)) 
    temp0__23_carry__1_i_1
       (.I0(pixel_data_565[4]),
        .I1(temp0_carry__1_n_2),
        .I2(pixel_data_565[2]),
        .O(temp0__23_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    temp0__23_carry__1_i_2
       (.I0(pixel_data_565[3]),
        .I1(pixel_data_565[4]),
        .O(temp0__23_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h8E71)) 
    temp0__23_carry__1_i_3
       (.I0(pixel_data_565[2]),
        .I1(temp0_carry__1_n_2),
        .I2(pixel_data_565[4]),
        .I3(pixel_data_565[3]),
        .O(temp0__23_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    temp0__23_carry_i_1
       (.I0(pixel_data_565[4]),
        .I1(temp0_carry__0_n_7),
        .I2(pixel_data_565[2]),
        .O(temp0__23_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    temp0__23_carry_i_2
       (.I0(pixel_data_565[4]),
        .I1(temp0_carry__0_n_7),
        .I2(pixel_data_565[2]),
        .O(temp0__23_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    temp0__23_carry_i_3
       (.I0(temp0_carry_n_5),
        .I1(pixel_data_565[2]),
        .O(temp0__23_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    temp0__23_carry_i_4
       (.I0(pixel_data_565[2]),
        .I1(temp0_carry__0_n_7),
        .I2(pixel_data_565[4]),
        .I3(pixel_data_565[0]),
        .I4(temp0_carry__0_n_6),
        .I5(pixel_data_565[3]),
        .O(temp0__23_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    temp0__23_carry_i_5
       (.I0(pixel_data_565[4]),
        .I1(temp0_carry__0_n_7),
        .I2(pixel_data_565[2]),
        .I3(pixel_data_565[3]),
        .I4(temp0_carry_n_4),
        .O(temp0__23_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    temp0__23_carry_i_6
       (.I0(pixel_data_565[2]),
        .I1(temp0_carry_n_5),
        .I2(temp0_carry_n_4),
        .I3(pixel_data_565[3]),
        .O(temp0__23_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp0__23_carry_i_7
       (.I0(pixel_data_565[2]),
        .I1(temp0_carry_n_5),
        .O(temp0__23_carry_i_7_n_0));
  CARRY4 temp0_carry
       (.CI(1'b0),
        .CO({temp0_carry_n_0,temp0_carry_n_1,temp0_carry_n_2,temp0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pixel_data_565[1:0],pixel_data_565[4],1'b0}),
        .O({temp0_carry_n_4,temp0_carry_n_5,temp0[2:1]}),
        .S({temp0_carry_i_1_n_0,temp0_carry_i_2_n_0,temp0_carry_i_3_n_0,pixel_data_565[3]}));
  CARRY4 temp0_carry__0
       (.CI(temp0_carry_n_0),
        .CO({temp0_carry__0_n_0,temp0_carry__0_n_1,temp0_carry__0_n_2,temp0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,pixel_data_565[4:2]}),
        .O({temp0_carry__0_n_4,temp0_carry__0_n_5,temp0_carry__0_n_6,temp0_carry__0_n_7}),
        .S({pixel_data_565[3],temp0_carry__0_i_1_n_0,temp0_carry__0_i_2_n_0,temp0_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    temp0_carry__0_i_1
       (.I0(pixel_data_565[4]),
        .I1(pixel_data_565[2]),
        .O(temp0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp0_carry__0_i_2
       (.I0(pixel_data_565[3]),
        .I1(pixel_data_565[1]),
        .O(temp0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp0_carry__0_i_3
       (.I0(pixel_data_565[2]),
        .I1(pixel_data_565[0]),
        .O(temp0_carry__0_i_3_n_0));
  CARRY4 temp0_carry__1
       (.CI(temp0_carry__0_n_0),
        .CO({NLW_temp0_carry__1_CO_UNCONNECTED[3:2],temp0_carry__1_n_2,NLW_temp0_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_temp0_carry__1_O_UNCONNECTED[3:1],temp0_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,pixel_data_565[4]}));
  LUT2 #(
    .INIT(4'h6)) 
    temp0_carry_i_1
       (.I0(pixel_data_565[1]),
        .I1(pixel_data_565[4]),
        .O(temp0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp0_carry_i_2
       (.I0(pixel_data_565[0]),
        .I1(pixel_data_565[3]),
        .O(temp0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp0_carry_i_3
       (.I0(pixel_data_565[4]),
        .I1(pixel_data_565[2]),
        .O(temp0_carry_i_3_n_0));
  CARRY4 temp1__24_carry
       (.CI(1'b0),
        .CO({temp1__24_carry_n_0,temp1__24_carry_n_1,temp1__24_carry_n_2,temp1__24_carry_n_3}),
        .CYINIT(1'b0),
        .DI({temp1_carry__0_n_7,temp1_carry_n_4,temp1_carry_n_5,1'b0}),
        .O({temp1__24_carry_n_4,temp1__24_carry_n_5,temp1__24_carry_n_6,temp1__24_carry_n_7}),
        .S({temp1__24_carry_i_1_n_0,temp1__24_carry_i_2_n_0,temp1__24_carry_i_3_n_0,temp1_carry_n_6}));
  CARRY4 temp1__24_carry__0
       (.CI(temp1__24_carry_n_0),
        .CO({temp1__24_carry__0_n_0,temp1__24_carry__0_n_1,temp1__24_carry__0_n_2,temp1__24_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({temp1__24_carry__0_i_1_n_0,temp1__24_carry__0_i_2_n_0,temp1__24_carry__0_i_3_n_0,pixel_data_565[13]}),
        .O({temp1__24_carry__0_n_4,temp1__24_carry__0_n_5,temp1__24_carry__0_n_6,temp1__24_carry__0_n_7}),
        .S({temp1__24_carry__0_i_4_n_0,temp1__24_carry__0_i_5_n_0,temp1__24_carry__0_i_6_n_0,temp1__24_carry__0_i_7_n_0}));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    temp1__24_carry__0_i_1
       (.I0(pixel_data_565[13]),
        .I1(temp1_carry__0_n_4),
        .I2(pixel_data_565[15]),
        .O(temp1__24_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    temp1__24_carry__0_i_2
       (.I0(pixel_data_565[12]),
        .I1(temp1_carry__0_n_5),
        .I2(pixel_data_565[14]),
        .O(temp1__24_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    temp1__24_carry__0_i_3
       (.I0(pixel_data_565[14]),
        .I1(pixel_data_565[12]),
        .I2(temp1_carry__0_n_5),
        .O(temp1__24_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    temp1__24_carry__0_i_4
       (.I0(pixel_data_565[14]),
        .I1(temp1_carry__1_n_7),
        .I2(pixel_data_565[11]),
        .I3(temp1__24_carry__0_i_1_n_0),
        .O(temp1__24_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    temp1__24_carry__0_i_5
       (.I0(pixel_data_565[13]),
        .I1(temp1_carry__0_n_4),
        .I2(pixel_data_565[15]),
        .I3(temp1__24_carry__0_i_2_n_0),
        .O(temp1__24_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    temp1__24_carry__0_i_6
       (.I0(pixel_data_565[12]),
        .I1(temp1_carry__0_n_5),
        .I2(pixel_data_565[14]),
        .I3(temp1_carry__0_n_6),
        .I4(pixel_data_565[11]),
        .O(temp1__24_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    temp1__24_carry__0_i_7
       (.I0(pixel_data_565[11]),
        .I1(temp1_carry__0_n_6),
        .I2(pixel_data_565[13]),
        .O(temp1__24_carry__0_i_7_n_0));
  CARRY4 temp1__24_carry__1
       (.CI(temp1__24_carry__0_n_0),
        .CO({temp1__24_carry__1_n_0,temp1__24_carry__1_n_1,temp1__24_carry__1_n_2,temp1__24_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pixel_data_565[13],temp1__24_carry__1_i_1_n_0}),
        .O({temp1__24_carry__1_n_4,temp1__24_carry__1_n_5,temp1__24_carry__1_n_6,temp1__24_carry__1_n_7}),
        .S({pixel_data_565[15:14],temp1__24_carry__1_i_2_n_0,temp1__24_carry__1_i_3_n_0}));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    temp1__24_carry__1_i_1
       (.I0(pixel_data_565[14]),
        .I1(temp1_carry__1_n_7),
        .I2(pixel_data_565[11]),
        .O(temp1__24_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h17E8)) 
    temp1__24_carry__1_i_2
       (.I0(pixel_data_565[12]),
        .I1(temp1_carry__1_n_2),
        .I2(pixel_data_565[15]),
        .I3(pixel_data_565[13]),
        .O(temp1__24_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    temp1__24_carry__1_i_3
       (.I0(temp1__24_carry__1_i_1_n_0),
        .I1(temp1_carry__1_n_2),
        .I2(pixel_data_565[15]),
        .I3(pixel_data_565[12]),
        .O(temp1__24_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp1__24_carry_i_1
       (.I0(temp1_carry__0_n_7),
        .I1(pixel_data_565[15]),
        .O(temp1__24_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp1__24_carry_i_2
       (.I0(temp1_carry_n_4),
        .I1(pixel_data_565[14]),
        .O(temp1__24_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp1__24_carry_i_3
       (.I0(temp1_carry_n_5),
        .I1(pixel_data_565[13]),
        .O(temp1__24_carry_i_3_n_0));
  CARRY4 temp1_carry
       (.CI(1'b0),
        .CO({temp1_carry_n_0,temp1_carry_n_1,temp1_carry_n_2,temp1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pixel_data_565[12:11],pixel_data_565[15],1'b0}),
        .O({temp1_carry_n_4,temp1_carry_n_5,temp1_carry_n_6,temp1_carry_n_7}),
        .S({temp1_carry_i_1_n_0,temp1_carry_i_2_n_0,temp1_carry_i_3_n_0,pixel_data_565[14]}));
  CARRY4 temp1_carry__0
       (.CI(temp1_carry_n_0),
        .CO({temp1_carry__0_n_0,temp1_carry__0_n_1,temp1_carry__0_n_2,temp1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,pixel_data_565[15:13]}),
        .O({temp1_carry__0_n_4,temp1_carry__0_n_5,temp1_carry__0_n_6,temp1_carry__0_n_7}),
        .S({pixel_data_565[14],temp1_carry__0_i_1_n_0,temp1_carry__0_i_2_n_0,temp1_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    temp1_carry__0_i_1
       (.I0(pixel_data_565[15]),
        .I1(pixel_data_565[13]),
        .O(temp1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp1_carry__0_i_2
       (.I0(pixel_data_565[14]),
        .I1(pixel_data_565[12]),
        .O(temp1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp1_carry__0_i_3
       (.I0(pixel_data_565[13]),
        .I1(pixel_data_565[11]),
        .O(temp1_carry__0_i_3_n_0));
  CARRY4 temp1_carry__1
       (.CI(temp1_carry__0_n_0),
        .CO({NLW_temp1_carry__1_CO_UNCONNECTED[3:2],temp1_carry__1_n_2,NLW_temp1_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_temp1_carry__1_O_UNCONNECTED[3:1],temp1_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,pixel_data_565[15]}));
  LUT2 #(
    .INIT(4'h6)) 
    temp1_carry_i_1
       (.I0(pixel_data_565[12]),
        .I1(pixel_data_565[15]),
        .O(temp1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp1_carry_i_2
       (.I0(pixel_data_565[11]),
        .I1(pixel_data_565[14]),
        .O(temp1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp1_carry_i_3
       (.I0(pixel_data_565[15]),
        .I1(pixel_data_565[13]),
        .O(temp1_carry_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp1_inferred__0/i___27_carry 
       (.CI(1'b0),
        .CO({\temp1_inferred__0/i___27_carry_n_0 ,\temp1_inferred__0/i___27_carry_n_1 ,\temp1_inferred__0/i___27_carry_n_2 ,\temp1_inferred__0/i___27_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\temp1_inferred__0/i__carry__0_n_6 ,\temp1_inferred__0/i__carry__0_n_7 ,\temp1_inferred__0/i__carry_n_4 ,1'b0}),
        .O(temp1[6:3]),
        .S({i___27_carry_i_1_n_0,i___27_carry_i_2_n_0,i___27_carry_i_3_n_0,\temp1_inferred__0/i__carry_n_5 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp1_inferred__0/i___27_carry__0 
       (.CI(\temp1_inferred__0/i___27_carry_n_0 ),
        .CO({\temp1_inferred__0/i___27_carry__0_n_0 ,\temp1_inferred__0/i___27_carry__0_n_1 ,\temp1_inferred__0/i___27_carry__0_n_2 ,\temp1_inferred__0/i___27_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i___27_carry__0_i_1_n_0,i___27_carry__0_i_2_n_0,i___27_carry__0_i_3_n_0,pixel_data_565[9]}),
        .O(temp1[10:7]),
        .S({i___27_carry__0_i_4_n_0,i___27_carry__0_i_5_n_0,i___27_carry__0_i_6_n_0,i___27_carry__0_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp1_inferred__0/i___27_carry__1 
       (.CI(\temp1_inferred__0/i___27_carry__0_n_0 ),
        .CO({\temp1_inferred__0/i___27_carry__1_n_0 ,\temp1_inferred__0/i___27_carry__1_n_1 ,\temp1_inferred__0/i___27_carry__1_n_2 ,\temp1_inferred__0/i___27_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i___27_carry__1_i_1_n_0,i___27_carry__1_i_2_n_0,i___27_carry__1_i_3_n_0,i___27_carry__1_i_4_n_0}),
        .O(temp1[14:11]),
        .S({i___27_carry__1_i_5_n_0,i___27_carry__1_i_6_n_0,i___27_carry__1_i_7_n_0,i___27_carry__1_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp1_inferred__0/i___27_carry__2 
       (.CI(\temp1_inferred__0/i___27_carry__1_n_0 ),
        .CO(\NLW_temp1_inferred__0/i___27_carry__2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_temp1_inferred__0/i___27_carry__2_O_UNCONNECTED [3:1],temp1[15]}),
        .S({1'b0,1'b0,1'b0,i___27_carry__2_i_1_n_0}));
  CARRY4 \temp1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\temp1_inferred__0/i__carry_n_0 ,\temp1_inferred__0/i__carry_n_1 ,\temp1_inferred__0/i__carry_n_2 ,\temp1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({pixel_data_565[10:9],1'b0,1'b1}),
        .O({\temp1_inferred__0/i__carry_n_4 ,\temp1_inferred__0/i__carry_n_5 ,temp1[2:1]}),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,pixel_data_565[9]}));
  CARRY4 \temp1_inferred__0/i__carry__0 
       (.CI(\temp1_inferred__0/i__carry_n_0 ),
        .CO({\temp1_inferred__0/i__carry__0_n_0 ,\temp1_inferred__0/i__carry__0_n_1 ,\temp1_inferred__0/i__carry__0_n_2 ,\temp1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(pixel_data_565[8:5]),
        .O({\temp1_inferred__0/i__carry__0_n_4 ,\temp1_inferred__0/i__carry__0_n_5 ,\temp1_inferred__0/i__carry__0_n_6 ,\temp1_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \temp1_inferred__0/i__carry__1 
       (.CI(\temp1_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_temp1_inferred__0/i__carry__1_CO_UNCONNECTED [3],\temp1_inferred__0/i__carry__1_n_1 ,\NLW_temp1_inferred__0/i__carry__1_CO_UNCONNECTED [1],\temp1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,pixel_data_565[10:9]}),
        .O({\NLW_temp1_inferred__0/i__carry__1_O_UNCONNECTED [3:2],\temp1_inferred__0/i__carry__1_n_6 ,\temp1_inferred__0/i__carry__1_n_7 }),
        .S({1'b0,1'b1,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 temp__41_carry
       (.CI(1'b0),
        .CO({temp__41_carry_n_0,temp__41_carry_n_1,temp__41_carry_n_2,temp__41_carry_n_3}),
        .CYINIT(1'b0),
        .DI(temp1[4:1]),
        .O(NLW_temp__41_carry_O_UNCONNECTED[3:0]),
        .S({temp__41_carry_i_1_n_0,temp__41_carry_i_2_n_0,temp__41_carry_i_3_n_0,temp__41_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 temp__41_carry__0
       (.CI(temp__41_carry_n_0),
        .CO({temp__41_carry__0_n_0,temp__41_carry__0_n_1,temp__41_carry__0_n_2,temp__41_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(temp1[8:5]),
        .O({p_0_in[0],NLW_temp__41_carry__0_O_UNCONNECTED[2:0]}),
        .S({temp__41_carry_i_1__0_n_0,temp__41_carry_i_2__0_n_0,temp__41_carry_i_3__0_n_0,temp__41_carry_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 temp__41_carry__1
       (.CI(temp__41_carry__0_n_0),
        .CO({temp__41_carry__1_n_0,temp__41_carry__1_n_1,temp__41_carry__1_n_2,temp__41_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(temp1[12:9]),
        .O(p_0_in[4:1]),
        .S({temp__41_carry_i_1__1_n_0,temp__41_carry_i_2__1_n_0,temp__41_carry_i_3__1_n_0,temp__41_carry_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 temp__41_carry__2
       (.CI(temp__41_carry__1_n_0),
        .CO({NLW_temp__41_carry__2_CO_UNCONNECTED[3:2],temp__41_carry__2_n_2,temp__41_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,temp1[14:13]}),
        .O({NLW_temp__41_carry__2_O_UNCONNECTED[3],p_0_in[7:5]}),
        .S({1'b0,temp__41_carry_i_1__2_n_0,temp__41_carry_i_2__2_n_0,temp__41_carry_i_3__2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    temp__41_carry_i_1
       (.I0(temp1[4]),
        .I1(C[4]),
        .O(temp__41_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp__41_carry_i_1__0
       (.I0(temp1[8]),
        .I1(C[8]),
        .O(temp__41_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp__41_carry_i_1__1
       (.I0(temp1[12]),
        .I1(C[12]),
        .O(temp__41_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp__41_carry_i_1__2
       (.I0(temp1[15]),
        .I1(temp_carry__2_n_0),
        .O(temp__41_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp__41_carry_i_2
       (.I0(temp1[3]),
        .I1(C[3]),
        .O(temp__41_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp__41_carry_i_2__0
       (.I0(temp1[7]),
        .I1(C[7]),
        .O(temp__41_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp__41_carry_i_2__1
       (.I0(temp1[11]),
        .I1(C[11]),
        .O(temp__41_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp__41_carry_i_2__2
       (.I0(temp1[14]),
        .I1(C[14]),
        .O(temp__41_carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp__41_carry_i_3
       (.I0(temp1[2]),
        .I1(C[2]),
        .O(temp__41_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp__41_carry_i_3__0
       (.I0(temp1[6]),
        .I1(C[6]),
        .O(temp__41_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp__41_carry_i_3__1
       (.I0(temp1[10]),
        .I1(C[10]),
        .O(temp__41_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp__41_carry_i_3__2
       (.I0(temp1[13]),
        .I1(C[13]),
        .O(temp__41_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp__41_carry_i_4
       (.I0(temp1[1]),
        .I1(C[1]),
        .O(temp__41_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp__41_carry_i_4__0
       (.I0(temp1[5]),
        .I1(C[5]),
        .O(temp__41_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp__41_carry_i_4__1
       (.I0(temp1[9]),
        .I1(C[9]),
        .O(temp__41_carry_i_4__1_n_0));
  CARRY4 temp_carry
       (.CI(1'b0),
        .CO({temp_carry_n_0,temp_carry_n_1,temp_carry_n_2,temp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({temp0[3:1],pixel_data_565[2]}),
        .O({C[3:1],NLW_temp_carry_O_UNCONNECTED[0]}),
        .S({temp_carry_i_1_n_0,temp_carry_i_2_n_0,temp_carry_i_3_n_0,temp_carry_i_4_n_0}));
  CARRY4 temp_carry__0
       (.CI(temp_carry_n_0),
        .CO({temp_carry__0_n_0,temp_carry__0_n_1,temp_carry__0_n_2,temp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(temp0[7:4]),
        .O(C[7:4]),
        .S({temp_carry__0_i_1_n_0,temp_carry__0_i_2_n_0,temp_carry__0_i_3_n_0,temp_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    temp_carry__0_i_1
       (.I0(temp0[7]),
        .I1(temp1__24_carry__0_n_6),
        .O(temp_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_carry__0_i_2
       (.I0(temp0[6]),
        .I1(temp1__24_carry__0_n_7),
        .O(temp_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_carry__0_i_3
       (.I0(temp0[5]),
        .I1(temp1__24_carry_n_4),
        .O(temp_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_carry__0_i_4
       (.I0(temp0[4]),
        .I1(temp1__24_carry_n_5),
        .O(temp_carry__0_i_4_n_0));
  CARRY4 temp_carry__1
       (.CI(temp_carry__0_n_0),
        .CO({temp_carry__1_n_0,temp_carry__1_n_1,temp_carry__1_n_2,temp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(temp0[11:8]),
        .O(C[11:8]),
        .S({temp_carry__1_i_1_n_0,temp_carry__1_i_2_n_0,temp_carry__1_i_3_n_0,temp_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    temp_carry__1_i_1
       (.I0(temp0[11]),
        .I1(temp1__24_carry__1_n_6),
        .O(temp_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_carry__1_i_2
       (.I0(temp0[10]),
        .I1(temp1__24_carry__1_n_7),
        .O(temp_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_carry__1_i_3
       (.I0(temp0[9]),
        .I1(temp1__24_carry__0_n_4),
        .O(temp_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_carry__1_i_4
       (.I0(temp0[8]),
        .I1(temp1__24_carry__0_n_5),
        .O(temp_carry__1_i_4_n_0));
  CARRY4 temp_carry__2
       (.CI(temp_carry__1_n_0),
        .CO({temp_carry__2_n_0,NLW_temp_carry__2_CO_UNCONNECTED[2],temp_carry__2_n_2,temp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,temp0[12]}),
        .O({NLW_temp_carry__2_O_UNCONNECTED[3],C[14:12]}),
        .S({1'b1,temp_carry__2_i_1_n_3,temp1__24_carry__1_n_4,temp_carry__2_i_2_n_0}));
  CARRY4 temp_carry__2_i_1
       (.CI(temp1__24_carry__1_n_0),
        .CO({NLW_temp_carry__2_i_1_CO_UNCONNECTED[3:1],temp_carry__2_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_temp_carry__2_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h6)) 
    temp_carry__2_i_2
       (.I0(temp0[12]),
        .I1(temp1__24_carry__1_n_5),
        .O(temp_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_carry_i_1
       (.I0(temp0[3]),
        .I1(temp1__24_carry_n_6),
        .O(temp_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_carry_i_2
       (.I0(temp0[2]),
        .I1(temp1__24_carry_n_7),
        .O(temp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_carry_i_3
       (.I0(temp0[1]),
        .I1(temp1_carry_n_7),
        .O(temp_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    temp_carry_i_4
       (.I0(pixel_data_565[2]),
        .I1(pixel_data_565[13]),
        .O(temp_carry_i_4_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
