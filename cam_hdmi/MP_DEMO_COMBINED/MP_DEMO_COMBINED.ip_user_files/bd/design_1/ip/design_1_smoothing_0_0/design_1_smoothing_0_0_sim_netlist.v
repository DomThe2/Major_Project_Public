// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu May  7 03:47:55 2026
// Host        : harun running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/harun/Documents/MP/MP_DEMO_COMBINED/MP_DEMO_COMBINED.gen/sources_1/bd/design_1/ip/design_1_smoothing_0_0/design_1_smoothing_0_0_sim_netlist.v
// Design      : design_1_smoothing_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_smoothing_0_0,smoothing,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "smoothing,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_smoothing_0_0
   (p_clk,
    reset,
    pixel_data_grayscale,
    input_valid,
    pixel_data_avg,
    output_valid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 p_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input p_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [7:0]pixel_data_grayscale;
  input input_valid;
  output [7:0]pixel_data_avg;
  output output_valid;

  wire input_valid;
  wire output_valid;
  wire p_clk;
  wire [7:0]pixel_data_avg;
  wire [7:0]pixel_data_grayscale;
  wire reset;

  design_1_smoothing_0_0_smoothing inst
       (.input_valid(input_valid),
        .output_valid(output_valid),
        .p_clk(p_clk),
        .pixel_data_avg(pixel_data_avg),
        .pixel_data_grayscale(pixel_data_grayscale),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "smoothing" *) 
module design_1_smoothing_0_0_smoothing
   (pixel_data_avg,
    output_valid,
    input_valid,
    reset,
    p_clk,
    pixel_data_grayscale);
  output [7:0]pixel_data_avg;
  output output_valid;
  input input_valid;
  input reset;
  input p_clk;
  input [7:0]pixel_data_grayscale;

  wire [5:0]col_index;
  wire \col_index[5]_i_1_n_0 ;
  wire [5:0]col_index_0;
  wire input_valid;
  wire output_valid;
  wire output_valid_i_1_n_0;
  wire [7:0]p_0_in;
  wire p_clk;
  wire [7:0]pixel_data_avg;
  wire \pixel_data_avg[1]_i_2_n_0 ;
  wire \pixel_data_avg[1]_i_3_n_0 ;
  wire \pixel_data_avg[1]_i_42_n_0 ;
  wire \pixel_data_avg[1]_i_43_n_0 ;
  wire \pixel_data_avg[1]_i_44_n_0 ;
  wire \pixel_data_avg[1]_i_45_n_0 ;
  wire \pixel_data_avg[1]_i_46_n_0 ;
  wire \pixel_data_avg[1]_i_47_n_0 ;
  wire \pixel_data_avg[1]_i_48_n_0 ;
  wire \pixel_data_avg[1]_i_49_n_0 ;
  wire \pixel_data_avg[1]_i_4_n_0 ;
  wire \pixel_data_avg[1]_i_50_n_0 ;
  wire \pixel_data_avg[1]_i_51_n_0 ;
  wire \pixel_data_avg[1]_i_52_n_0 ;
  wire \pixel_data_avg[1]_i_53_n_0 ;
  wire \pixel_data_avg[1]_i_54_n_0 ;
  wire \pixel_data_avg[1]_i_55_n_0 ;
  wire \pixel_data_avg[1]_i_56_n_0 ;
  wire \pixel_data_avg[1]_i_57_n_0 ;
  wire \pixel_data_avg[1]_i_58_n_0 ;
  wire \pixel_data_avg[1]_i_59_n_0 ;
  wire \pixel_data_avg[1]_i_5_n_0 ;
  wire \pixel_data_avg[1]_i_60_n_0 ;
  wire \pixel_data_avg[1]_i_61_n_0 ;
  wire \pixel_data_avg[1]_i_62_n_0 ;
  wire \pixel_data_avg[1]_i_63_n_0 ;
  wire \pixel_data_avg[1]_i_64_n_0 ;
  wire \pixel_data_avg[1]_i_65_n_0 ;
  wire \pixel_data_avg[1]_i_66_n_0 ;
  wire \pixel_data_avg[1]_i_67_n_0 ;
  wire \pixel_data_avg[1]_i_68_n_0 ;
  wire \pixel_data_avg[1]_i_69_n_0 ;
  wire \pixel_data_avg[1]_i_70_n_0 ;
  wire \pixel_data_avg[1]_i_71_n_0 ;
  wire \pixel_data_avg[1]_i_72_n_0 ;
  wire \pixel_data_avg[1]_i_73_n_0 ;
  wire \pixel_data_avg[1]_i_74_n_0 ;
  wire \pixel_data_avg[1]_i_75_n_0 ;
  wire \pixel_data_avg[1]_i_76_n_0 ;
  wire \pixel_data_avg[1]_i_77_n_0 ;
  wire \pixel_data_avg[1]_i_78_n_0 ;
  wire \pixel_data_avg[1]_i_79_n_0 ;
  wire \pixel_data_avg[1]_i_80_n_0 ;
  wire \pixel_data_avg[1]_i_81_n_0 ;
  wire \pixel_data_avg[1]_i_82_n_0 ;
  wire \pixel_data_avg[1]_i_83_n_0 ;
  wire \pixel_data_avg[1]_i_84_n_0 ;
  wire \pixel_data_avg[1]_i_85_n_0 ;
  wire \pixel_data_avg[1]_i_86_n_0 ;
  wire \pixel_data_avg[1]_i_87_n_0 ;
  wire \pixel_data_avg[1]_i_88_n_0 ;
  wire \pixel_data_avg[1]_i_89_n_0 ;
  wire \pixel_data_avg[5]_i_42_n_0 ;
  wire \pixel_data_avg[5]_i_43_n_0 ;
  wire \pixel_data_avg[5]_i_44_n_0 ;
  wire \pixel_data_avg[5]_i_45_n_0 ;
  wire \pixel_data_avg[5]_i_46_n_0 ;
  wire \pixel_data_avg[5]_i_47_n_0 ;
  wire \pixel_data_avg[5]_i_48_n_0 ;
  wire \pixel_data_avg[5]_i_49_n_0 ;
  wire \pixel_data_avg[5]_i_50_n_0 ;
  wire \pixel_data_avg[5]_i_51_n_0 ;
  wire \pixel_data_avg[5]_i_52_n_0 ;
  wire \pixel_data_avg[5]_i_53_n_0 ;
  wire \pixel_data_avg[5]_i_54_n_0 ;
  wire \pixel_data_avg[5]_i_55_n_0 ;
  wire \pixel_data_avg[5]_i_56_n_0 ;
  wire \pixel_data_avg[5]_i_57_n_0 ;
  wire \pixel_data_avg[5]_i_58_n_0 ;
  wire \pixel_data_avg[5]_i_59_n_0 ;
  wire \pixel_data_avg[5]_i_60_n_0 ;
  wire \pixel_data_avg[5]_i_61_n_0 ;
  wire \pixel_data_avg[5]_i_62_n_0 ;
  wire \pixel_data_avg[5]_i_63_n_0 ;
  wire \pixel_data_avg[5]_i_64_n_0 ;
  wire \pixel_data_avg[5]_i_65_n_0 ;
  wire \pixel_data_avg[5]_i_66_n_0 ;
  wire \pixel_data_avg[5]_i_67_n_0 ;
  wire \pixel_data_avg[5]_i_68_n_0 ;
  wire \pixel_data_avg[5]_i_69_n_0 ;
  wire \pixel_data_avg[5]_i_70_n_0 ;
  wire \pixel_data_avg[5]_i_71_n_0 ;
  wire \pixel_data_avg[5]_i_72_n_0 ;
  wire \pixel_data_avg[5]_i_73_n_0 ;
  wire \pixel_data_avg[5]_i_74_n_0 ;
  wire \pixel_data_avg[5]_i_75_n_0 ;
  wire \pixel_data_avg[5]_i_76_n_0 ;
  wire \pixel_data_avg[5]_i_77_n_0 ;
  wire \pixel_data_avg[5]_i_78_n_0 ;
  wire \pixel_data_avg[5]_i_79_n_0 ;
  wire \pixel_data_avg[5]_i_80_n_0 ;
  wire \pixel_data_avg[5]_i_81_n_0 ;
  wire \pixel_data_avg[5]_i_82_n_0 ;
  wire \pixel_data_avg[5]_i_83_n_0 ;
  wire \pixel_data_avg[5]_i_84_n_0 ;
  wire \pixel_data_avg[5]_i_85_n_0 ;
  wire \pixel_data_avg[5]_i_86_n_0 ;
  wire \pixel_data_avg[5]_i_87_n_0 ;
  wire \pixel_data_avg[5]_i_88_n_0 ;
  wire \pixel_data_avg[5]_i_89_n_0 ;
  wire \pixel_data_avg[7]_i_1_n_0 ;
  wire \pixel_data_avg[7]_i_24_n_0 ;
  wire \pixel_data_avg[7]_i_25_n_0 ;
  wire \pixel_data_avg[7]_i_26_n_0 ;
  wire \pixel_data_avg[7]_i_27_n_0 ;
  wire \pixel_data_avg[7]_i_28_n_0 ;
  wire \pixel_data_avg[7]_i_29_n_0 ;
  wire \pixel_data_avg[7]_i_30_n_0 ;
  wire \pixel_data_avg[7]_i_31_n_0 ;
  wire \pixel_data_avg[7]_i_32_n_0 ;
  wire \pixel_data_avg[7]_i_33_n_0 ;
  wire \pixel_data_avg[7]_i_34_n_0 ;
  wire \pixel_data_avg[7]_i_35_n_0 ;
  wire \pixel_data_avg[7]_i_36_n_0 ;
  wire \pixel_data_avg[7]_i_37_n_0 ;
  wire \pixel_data_avg[7]_i_38_n_0 ;
  wire \pixel_data_avg[7]_i_39_n_0 ;
  wire \pixel_data_avg[7]_i_3_n_0 ;
  wire \pixel_data_avg[7]_i_40_n_0 ;
  wire \pixel_data_avg[7]_i_41_n_0 ;
  wire \pixel_data_avg[7]_i_42_n_0 ;
  wire \pixel_data_avg[7]_i_43_n_0 ;
  wire \pixel_data_avg[7]_i_44_n_0 ;
  wire \pixel_data_avg[7]_i_45_n_0 ;
  wire \pixel_data_avg[7]_i_46_n_0 ;
  wire \pixel_data_avg[7]_i_47_n_0 ;
  wire \pixel_data_avg_reg[1]_i_10_n_0 ;
  wire \pixel_data_avg_reg[1]_i_11_n_0 ;
  wire \pixel_data_avg_reg[1]_i_12_n_0 ;
  wire \pixel_data_avg_reg[1]_i_13_n_0 ;
  wire \pixel_data_avg_reg[1]_i_14_n_0 ;
  wire \pixel_data_avg_reg[1]_i_15_n_0 ;
  wire \pixel_data_avg_reg[1]_i_16_n_0 ;
  wire \pixel_data_avg_reg[1]_i_17_n_0 ;
  wire \pixel_data_avg_reg[1]_i_18_n_0 ;
  wire \pixel_data_avg_reg[1]_i_19_n_0 ;
  wire \pixel_data_avg_reg[1]_i_1_n_0 ;
  wire \pixel_data_avg_reg[1]_i_1_n_1 ;
  wire \pixel_data_avg_reg[1]_i_1_n_2 ;
  wire \pixel_data_avg_reg[1]_i_1_n_3 ;
  wire \pixel_data_avg_reg[1]_i_1_n_6 ;
  wire \pixel_data_avg_reg[1]_i_1_n_7 ;
  wire \pixel_data_avg_reg[1]_i_20_n_0 ;
  wire \pixel_data_avg_reg[1]_i_21_n_0 ;
  wire \pixel_data_avg_reg[1]_i_22_n_0 ;
  wire \pixel_data_avg_reg[1]_i_23_n_0 ;
  wire \pixel_data_avg_reg[1]_i_24_n_0 ;
  wire \pixel_data_avg_reg[1]_i_25_n_0 ;
  wire \pixel_data_avg_reg[1]_i_26_n_0 ;
  wire \pixel_data_avg_reg[1]_i_27_n_0 ;
  wire \pixel_data_avg_reg[1]_i_28_n_0 ;
  wire \pixel_data_avg_reg[1]_i_29_n_0 ;
  wire \pixel_data_avg_reg[1]_i_30_n_0 ;
  wire \pixel_data_avg_reg[1]_i_31_n_0 ;
  wire \pixel_data_avg_reg[1]_i_32_n_0 ;
  wire \pixel_data_avg_reg[1]_i_33_n_0 ;
  wire \pixel_data_avg_reg[1]_i_34_n_0 ;
  wire \pixel_data_avg_reg[1]_i_35_n_0 ;
  wire \pixel_data_avg_reg[1]_i_36_n_0 ;
  wire \pixel_data_avg_reg[1]_i_37_n_0 ;
  wire \pixel_data_avg_reg[1]_i_38_n_0 ;
  wire \pixel_data_avg_reg[1]_i_39_n_0 ;
  wire \pixel_data_avg_reg[1]_i_40_n_0 ;
  wire \pixel_data_avg_reg[1]_i_41_n_0 ;
  wire \pixel_data_avg_reg[1]_i_6_n_0 ;
  wire \pixel_data_avg_reg[1]_i_7_n_0 ;
  wire \pixel_data_avg_reg[1]_i_8_n_0 ;
  wire \pixel_data_avg_reg[1]_i_9_n_0 ;
  wire \pixel_data_avg_reg[5]_i_10_n_0 ;
  wire \pixel_data_avg_reg[5]_i_11_n_0 ;
  wire \pixel_data_avg_reg[5]_i_12_n_0 ;
  wire \pixel_data_avg_reg[5]_i_13_n_0 ;
  wire \pixel_data_avg_reg[5]_i_14_n_0 ;
  wire \pixel_data_avg_reg[5]_i_15_n_0 ;
  wire \pixel_data_avg_reg[5]_i_16_n_0 ;
  wire \pixel_data_avg_reg[5]_i_17_n_0 ;
  wire \pixel_data_avg_reg[5]_i_18_n_0 ;
  wire \pixel_data_avg_reg[5]_i_19_n_0 ;
  wire \pixel_data_avg_reg[5]_i_1_n_0 ;
  wire \pixel_data_avg_reg[5]_i_1_n_1 ;
  wire \pixel_data_avg_reg[5]_i_1_n_2 ;
  wire \pixel_data_avg_reg[5]_i_1_n_3 ;
  wire \pixel_data_avg_reg[5]_i_20_n_0 ;
  wire \pixel_data_avg_reg[5]_i_21_n_0 ;
  wire \pixel_data_avg_reg[5]_i_22_n_0 ;
  wire \pixel_data_avg_reg[5]_i_23_n_0 ;
  wire \pixel_data_avg_reg[5]_i_24_n_0 ;
  wire \pixel_data_avg_reg[5]_i_25_n_0 ;
  wire \pixel_data_avg_reg[5]_i_26_n_0 ;
  wire \pixel_data_avg_reg[5]_i_27_n_0 ;
  wire \pixel_data_avg_reg[5]_i_28_n_0 ;
  wire \pixel_data_avg_reg[5]_i_29_n_0 ;
  wire \pixel_data_avg_reg[5]_i_30_n_0 ;
  wire \pixel_data_avg_reg[5]_i_31_n_0 ;
  wire \pixel_data_avg_reg[5]_i_32_n_0 ;
  wire \pixel_data_avg_reg[5]_i_33_n_0 ;
  wire \pixel_data_avg_reg[5]_i_34_n_0 ;
  wire \pixel_data_avg_reg[5]_i_35_n_0 ;
  wire \pixel_data_avg_reg[5]_i_36_n_0 ;
  wire \pixel_data_avg_reg[5]_i_37_n_0 ;
  wire \pixel_data_avg_reg[5]_i_38_n_0 ;
  wire \pixel_data_avg_reg[5]_i_39_n_0 ;
  wire \pixel_data_avg_reg[5]_i_40_n_0 ;
  wire \pixel_data_avg_reg[5]_i_41_n_0 ;
  wire \pixel_data_avg_reg[5]_i_6_n_0 ;
  wire \pixel_data_avg_reg[5]_i_7_n_0 ;
  wire \pixel_data_avg_reg[5]_i_8_n_0 ;
  wire \pixel_data_avg_reg[5]_i_9_n_0 ;
  wire \pixel_data_avg_reg[7]_i_10_n_0 ;
  wire \pixel_data_avg_reg[7]_i_11_n_0 ;
  wire \pixel_data_avg_reg[7]_i_12_n_0 ;
  wire \pixel_data_avg_reg[7]_i_13_n_0 ;
  wire \pixel_data_avg_reg[7]_i_14_n_0 ;
  wire \pixel_data_avg_reg[7]_i_15_n_0 ;
  wire \pixel_data_avg_reg[7]_i_16_n_0 ;
  wire \pixel_data_avg_reg[7]_i_17_n_0 ;
  wire \pixel_data_avg_reg[7]_i_18_n_0 ;
  wire \pixel_data_avg_reg[7]_i_19_n_0 ;
  wire \pixel_data_avg_reg[7]_i_20_n_0 ;
  wire \pixel_data_avg_reg[7]_i_21_n_0 ;
  wire \pixel_data_avg_reg[7]_i_22_n_0 ;
  wire \pixel_data_avg_reg[7]_i_23_n_0 ;
  wire \pixel_data_avg_reg[7]_i_2_n_3 ;
  wire \pixel_data_avg_reg[7]_i_6_n_0 ;
  wire \pixel_data_avg_reg[7]_i_7_n_0 ;
  wire \pixel_data_avg_reg[7]_i_8_n_0 ;
  wire \pixel_data_avg_reg[7]_i_9_n_0 ;
  wire [7:0]pixel_data_grayscale;
  wire reset;
  wire [13:8]sum;
  wire \sum[0][13]_i_1_n_0 ;
  wire \sum[0][13]_i_2_n_0 ;
  wire \sum[0][13]_i_3_n_0 ;
  wire \sum[0][13]_i_4_n_0 ;
  wire \sum[0][13]_i_5_n_0 ;
  wire \sum[0][13]_i_6_n_0 ;
  wire \sum[0][3]_i_2_n_0 ;
  wire \sum[0][3]_i_3_n_0 ;
  wire \sum[0][3]_i_42_n_0 ;
  wire \sum[0][3]_i_43_n_0 ;
  wire \sum[0][3]_i_44_n_0 ;
  wire \sum[0][3]_i_45_n_0 ;
  wire \sum[0][3]_i_46_n_0 ;
  wire \sum[0][3]_i_47_n_0 ;
  wire \sum[0][3]_i_48_n_0 ;
  wire \sum[0][3]_i_49_n_0 ;
  wire \sum[0][3]_i_4_n_0 ;
  wire \sum[0][3]_i_50_n_0 ;
  wire \sum[0][3]_i_51_n_0 ;
  wire \sum[0][3]_i_52_n_0 ;
  wire \sum[0][3]_i_53_n_0 ;
  wire \sum[0][3]_i_54_n_0 ;
  wire \sum[0][3]_i_55_n_0 ;
  wire \sum[0][3]_i_56_n_0 ;
  wire \sum[0][3]_i_57_n_0 ;
  wire \sum[0][3]_i_58_n_0 ;
  wire \sum[0][3]_i_59_n_0 ;
  wire \sum[0][3]_i_5_n_0 ;
  wire \sum[0][3]_i_60_n_0 ;
  wire \sum[0][3]_i_61_n_0 ;
  wire \sum[0][3]_i_62_n_0 ;
  wire \sum[0][3]_i_63_n_0 ;
  wire \sum[0][3]_i_64_n_0 ;
  wire \sum[0][3]_i_65_n_0 ;
  wire \sum[0][3]_i_66_n_0 ;
  wire \sum[0][3]_i_67_n_0 ;
  wire \sum[0][3]_i_68_n_0 ;
  wire \sum[0][3]_i_69_n_0 ;
  wire \sum[0][3]_i_70_n_0 ;
  wire \sum[0][3]_i_71_n_0 ;
  wire \sum[0][3]_i_72_n_0 ;
  wire \sum[0][3]_i_73_n_0 ;
  wire \sum[0][3]_i_74_n_0 ;
  wire \sum[0][3]_i_75_n_0 ;
  wire \sum[0][3]_i_76_n_0 ;
  wire \sum[0][3]_i_77_n_0 ;
  wire \sum[0][3]_i_78_n_0 ;
  wire \sum[0][3]_i_79_n_0 ;
  wire \sum[0][3]_i_80_n_0 ;
  wire \sum[0][3]_i_81_n_0 ;
  wire \sum[0][3]_i_82_n_0 ;
  wire \sum[0][3]_i_83_n_0 ;
  wire \sum[0][3]_i_84_n_0 ;
  wire \sum[0][3]_i_85_n_0 ;
  wire \sum[0][3]_i_86_n_0 ;
  wire \sum[0][3]_i_87_n_0 ;
  wire \sum[0][3]_i_88_n_0 ;
  wire \sum[0][3]_i_89_n_0 ;
  wire \sum[10][13]_i_1_n_0 ;
  wire \sum[10][13]_i_2_n_0 ;
  wire \sum[10][13]_i_3_n_0 ;
  wire \sum[11][13]_i_1_n_0 ;
  wire \sum[11][13]_i_2_n_0 ;
  wire \sum[11][13]_i_3_n_0 ;
  wire \sum[12][13]_i_1_n_0 ;
  wire \sum[12][13]_i_2_n_0 ;
  wire \sum[12][13]_i_3_n_0 ;
  wire \sum[13][13]_i_1_n_0 ;
  wire \sum[13][13]_i_2_n_0 ;
  wire \sum[13][13]_i_3_n_0 ;
  wire \sum[14][13]_i_1_n_0 ;
  wire \sum[14][13]_i_2_n_0 ;
  wire \sum[14][13]_i_3_n_0 ;
  wire \sum[15][13]_i_1_n_0 ;
  wire \sum[15][13]_i_2_n_0 ;
  wire \sum[15][13]_i_3_n_0 ;
  wire \sum[16][13]_i_1_n_0 ;
  wire \sum[16][13]_i_2_n_0 ;
  wire \sum[16][13]_i_3_n_0 ;
  wire \sum[17][13]_i_1_n_0 ;
  wire \sum[17][13]_i_2_n_0 ;
  wire \sum[17][13]_i_3_n_0 ;
  wire \sum[18][13]_i_1_n_0 ;
  wire \sum[18][13]_i_2_n_0 ;
  wire \sum[18][13]_i_3_n_0 ;
  wire \sum[19][13]_i_1_n_0 ;
  wire \sum[19][13]_i_2_n_0 ;
  wire \sum[1][13]_i_1_n_0 ;
  wire \sum[1][13]_i_2_n_0 ;
  wire \sum[1][13]_i_3_n_0 ;
  wire \sum[1][13]_i_4_n_0 ;
  wire \sum[1][13]_i_5_n_0 ;
  wire \sum[1][13]_i_6_n_0 ;
  wire \sum[20][13]_i_1_n_0 ;
  wire \sum[20][13]_i_2_n_0 ;
  wire \sum[20][13]_i_3_n_0 ;
  wire \sum[21][13]_i_1_n_0 ;
  wire \sum[21][13]_i_2_n_0 ;
  wire \sum[21][13]_i_3_n_0 ;
  wire \sum[22][13]_i_1_n_0 ;
  wire \sum[22][13]_i_2_n_0 ;
  wire \sum[22][13]_i_3_n_0 ;
  wire \sum[23][13]_i_1_n_0 ;
  wire \sum[23][13]_i_2_n_0 ;
  wire \sum[24][13]_i_1_n_0 ;
  wire \sum[24][13]_i_2_n_0 ;
  wire \sum[24][13]_i_3_n_0 ;
  wire \sum[25][13]_i_1_n_0 ;
  wire \sum[25][13]_i_2_n_0 ;
  wire \sum[25][13]_i_3_n_0 ;
  wire \sum[26][13]_i_1_n_0 ;
  wire \sum[26][13]_i_2_n_0 ;
  wire \sum[26][13]_i_3_n_0 ;
  wire \sum[27][13]_i_1_n_0 ;
  wire \sum[27][13]_i_2_n_0 ;
  wire \sum[28][13]_i_1_n_0 ;
  wire \sum[28][13]_i_2_n_0 ;
  wire \sum[28][13]_i_3_n_0 ;
  wire \sum[29][13]_i_1_n_0 ;
  wire \sum[29][13]_i_2_n_0 ;
  wire \sum[29][13]_i_3_n_0 ;
  wire \sum[2][13]_i_1_n_0 ;
  wire \sum[2][13]_i_2_n_0 ;
  wire \sum[2][13]_i_3_n_0 ;
  wire \sum[2][13]_i_4_n_0 ;
  wire \sum[2][13]_i_5_n_0 ;
  wire \sum[2][13]_i_6_n_0 ;
  wire \sum[30][13]_i_1_n_0 ;
  wire \sum[30][13]_i_2_n_0 ;
  wire \sum[30][13]_i_3_n_0 ;
  wire \sum[31][13]_i_1_n_0 ;
  wire \sum[31][13]_i_2_n_0 ;
  wire \sum[32][13]_i_1_n_0 ;
  wire \sum[32][13]_i_2_n_0 ;
  wire \sum[33][13]_i_1_n_0 ;
  wire \sum[33][13]_i_2_n_0 ;
  wire \sum[34][13]_i_1_n_0 ;
  wire \sum[34][13]_i_2_n_0 ;
  wire \sum[35][13]_i_1_n_0 ;
  wire \sum[35][13]_i_2_n_0 ;
  wire \sum[36][13]_i_1_n_0 ;
  wire \sum[36][13]_i_2_n_0 ;
  wire \sum[37][13]_i_1_n_0 ;
  wire \sum[37][13]_i_2_n_0 ;
  wire \sum[38][13]_i_1_n_0 ;
  wire \sum[38][13]_i_2_n_0 ;
  wire \sum[39][13]_i_1_n_0 ;
  wire \sum[39][13]_i_2_n_0 ;
  wire \sum[3][13]_i_1_n_0 ;
  wire \sum[3][13]_i_2_n_0 ;
  wire \sum[3][13]_i_3_n_0 ;
  wire \sum[3][13]_i_4_n_0 ;
  wire \sum[3][13]_i_5_n_0 ;
  wire \sum[40][13]_i_1_n_0 ;
  wire \sum[40][13]_i_2_n_0 ;
  wire \sum[41][13]_i_1_n_0 ;
  wire \sum[41][13]_i_2_n_0 ;
  wire \sum[42][13]_i_1_n_0 ;
  wire \sum[42][13]_i_2_n_0 ;
  wire \sum[43][13]_i_1_n_0 ;
  wire \sum[43][13]_i_2_n_0 ;
  wire \sum[44][13]_i_1_n_0 ;
  wire \sum[44][13]_i_2_n_0 ;
  wire \sum[45][13]_i_1_n_0 ;
  wire \sum[45][13]_i_2_n_0 ;
  wire \sum[46][13]_i_1_n_0 ;
  wire \sum[46][13]_i_2_n_0 ;
  wire \sum[47][13]_i_1_n_0 ;
  wire \sum[47][13]_i_2_n_0 ;
  wire \sum[4][13]_i_1_n_0 ;
  wire \sum[4][13]_i_2_n_0 ;
  wire \sum[4][13]_i_3_n_0 ;
  wire \sum[4][13]_i_4_n_0 ;
  wire \sum[5][13]_i_1_n_0 ;
  wire \sum[5][13]_i_2_n_0 ;
  wire \sum[5][13]_i_3_n_0 ;
  wire \sum[5][13]_i_4_n_0 ;
  wire \sum[6][13]_i_1_n_0 ;
  wire \sum[6][13]_i_2_n_0 ;
  wire \sum[6][13]_i_3_n_0 ;
  wire \sum[6][13]_i_4_n_0 ;
  wire \sum[7][13]_i_1_n_0 ;
  wire \sum[7][13]_i_2_n_0 ;
  wire \sum[7][13]_i_3_n_0 ;
  wire \sum[7][13]_i_4_n_0 ;
  wire \sum[8][13]_i_1_n_0 ;
  wire \sum[8][13]_i_2_n_0 ;
  wire \sum[8][13]_i_3_n_0 ;
  wire \sum[9][13]_i_1_n_0 ;
  wire \sum[9][13]_i_2_n_0 ;
  wire \sum[9][13]_i_3_n_0 ;
  wire [13:0]\sum_reg[0] ;
  wire \sum_reg[0][3]_i_10_n_0 ;
  wire \sum_reg[0][3]_i_11_n_0 ;
  wire \sum_reg[0][3]_i_12_n_0 ;
  wire \sum_reg[0][3]_i_13_n_0 ;
  wire \sum_reg[0][3]_i_14_n_0 ;
  wire \sum_reg[0][3]_i_15_n_0 ;
  wire \sum_reg[0][3]_i_16_n_0 ;
  wire \sum_reg[0][3]_i_17_n_0 ;
  wire \sum_reg[0][3]_i_18_n_0 ;
  wire \sum_reg[0][3]_i_19_n_0 ;
  wire \sum_reg[0][3]_i_1_n_0 ;
  wire \sum_reg[0][3]_i_1_n_1 ;
  wire \sum_reg[0][3]_i_1_n_2 ;
  wire \sum_reg[0][3]_i_1_n_3 ;
  wire \sum_reg[0][3]_i_1_n_4 ;
  wire \sum_reg[0][3]_i_1_n_5 ;
  wire \sum_reg[0][3]_i_1_n_6 ;
  wire \sum_reg[0][3]_i_1_n_7 ;
  wire \sum_reg[0][3]_i_20_n_0 ;
  wire \sum_reg[0][3]_i_21_n_0 ;
  wire \sum_reg[0][3]_i_22_n_0 ;
  wire \sum_reg[0][3]_i_23_n_0 ;
  wire \sum_reg[0][3]_i_24_n_0 ;
  wire \sum_reg[0][3]_i_25_n_0 ;
  wire \sum_reg[0][3]_i_26_n_0 ;
  wire \sum_reg[0][3]_i_27_n_0 ;
  wire \sum_reg[0][3]_i_28_n_0 ;
  wire \sum_reg[0][3]_i_29_n_0 ;
  wire \sum_reg[0][3]_i_30_n_0 ;
  wire \sum_reg[0][3]_i_31_n_0 ;
  wire \sum_reg[0][3]_i_32_n_0 ;
  wire \sum_reg[0][3]_i_33_n_0 ;
  wire \sum_reg[0][3]_i_34_n_0 ;
  wire \sum_reg[0][3]_i_35_n_0 ;
  wire \sum_reg[0][3]_i_36_n_0 ;
  wire \sum_reg[0][3]_i_37_n_0 ;
  wire \sum_reg[0][3]_i_38_n_0 ;
  wire \sum_reg[0][3]_i_39_n_0 ;
  wire \sum_reg[0][3]_i_40_n_0 ;
  wire \sum_reg[0][3]_i_41_n_0 ;
  wire \sum_reg[0][3]_i_6_n_0 ;
  wire \sum_reg[0][3]_i_7_n_0 ;
  wire \sum_reg[0][3]_i_8_n_0 ;
  wire \sum_reg[0][3]_i_9_n_0 ;
  wire [13:0]\sum_reg[10] ;
  wire [13:0]\sum_reg[11] ;
  wire [13:0]\sum_reg[12] ;
  wire [13:0]\sum_reg[13] ;
  wire [13:0]\sum_reg[14] ;
  wire [13:0]\sum_reg[15] ;
  wire [13:0]\sum_reg[16] ;
  wire [13:0]\sum_reg[17] ;
  wire [13:0]\sum_reg[18] ;
  wire [13:0]\sum_reg[19] ;
  wire [13:0]\sum_reg[1] ;
  wire [13:0]\sum_reg[20] ;
  wire [13:0]\sum_reg[21] ;
  wire [13:0]\sum_reg[22] ;
  wire [13:0]\sum_reg[23] ;
  wire [13:0]\sum_reg[24] ;
  wire [13:0]\sum_reg[25] ;
  wire [13:0]\sum_reg[26] ;
  wire [13:0]\sum_reg[27] ;
  wire [13:0]\sum_reg[28] ;
  wire [13:0]\sum_reg[29] ;
  wire [13:0]\sum_reg[2] ;
  wire [13:0]\sum_reg[30] ;
  wire [13:0]\sum_reg[31] ;
  wire [13:0]\sum_reg[32] ;
  wire [13:0]\sum_reg[33] ;
  wire [13:0]\sum_reg[34] ;
  wire [13:0]\sum_reg[35] ;
  wire [13:0]\sum_reg[36] ;
  wire [13:0]\sum_reg[37] ;
  wire [13:0]\sum_reg[38] ;
  wire [13:0]\sum_reg[39] ;
  wire [13:0]\sum_reg[3] ;
  wire [13:0]\sum_reg[40] ;
  wire [13:0]\sum_reg[41] ;
  wire [13:0]\sum_reg[42] ;
  wire [13:0]\sum_reg[43] ;
  wire [13:0]\sum_reg[44] ;
  wire [13:0]\sum_reg[45] ;
  wire [13:0]\sum_reg[46] ;
  wire [13:0]\sum_reg[47] ;
  wire [13:0]\sum_reg[4] ;
  wire [13:0]\sum_reg[5] ;
  wire [13:0]\sum_reg[6] ;
  wire [13:0]\sum_reg[7] ;
  wire [13:0]\sum_reg[8] ;
  wire [13:0]\sum_reg[9] ;
  wire [2:0]x_count;
  wire \x_count[0]_i_1_n_0 ;
  wire \x_count[1]_i_1_n_0 ;
  wire \x_count[2]_i_1_n_0 ;
  wire [0:0]y_count;
  wire \y_count[0]_i_1_n_0 ;
  wire \y_count[1]_i_1_n_0 ;
  wire \y_count[2]_i_1_n_0 ;
  wire \y_count[2]_i_3_n_0 ;
  wire \y_count_reg_n_0_[0] ;
  wire \y_count_reg_n_0_[1] ;
  wire \y_count_reg_n_0_[2] ;
  wire [3:1]\NLW_pixel_data_avg_reg[7]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_pixel_data_avg_reg[7]_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \col_index[0]_i_1 
       (.I0(col_index[0]),
        .O(col_index_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \col_index[1]_i_1 
       (.I0(col_index[1]),
        .I1(col_index[0]),
        .O(col_index_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \col_index[2]_i_1 
       (.I0(col_index[2]),
        .I1(col_index[1]),
        .I2(col_index[0]),
        .O(col_index_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \col_index[3]_i_1 
       (.I0(col_index[3]),
        .I1(col_index[1]),
        .I2(col_index[0]),
        .I3(col_index[2]),
        .O(col_index_0[3]));
  LUT6 #(
    .INIT(64'h1CCCCCCCCCCCCCCC)) 
    \col_index[4]_i_1 
       (.I0(col_index[5]),
        .I1(col_index[4]),
        .I2(col_index[2]),
        .I3(col_index[0]),
        .I4(col_index[1]),
        .I5(col_index[3]),
        .O(col_index_0[4]));
  LUT4 #(
    .INIT(16'h8000)) 
    \col_index[5]_i_1 
       (.I0(x_count[1]),
        .I1(x_count[2]),
        .I2(x_count[0]),
        .I3(input_valid),
        .O(\col_index[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAA2AAAAAAA)) 
    \col_index[5]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(col_index[1]),
        .I3(col_index[0]),
        .I4(col_index[2]),
        .I5(col_index[4]),
        .O(col_index_0[5]));
  FDRE \col_index_reg[0] 
       (.C(p_clk),
        .CE(\col_index[5]_i_1_n_0 ),
        .D(col_index_0[0]),
        .Q(col_index[0]),
        .R(reset));
  FDRE \col_index_reg[1] 
       (.C(p_clk),
        .CE(\col_index[5]_i_1_n_0 ),
        .D(col_index_0[1]),
        .Q(col_index[1]),
        .R(reset));
  FDRE \col_index_reg[2] 
       (.C(p_clk),
        .CE(\col_index[5]_i_1_n_0 ),
        .D(col_index_0[2]),
        .Q(col_index[2]),
        .R(reset));
  FDRE \col_index_reg[3] 
       (.C(p_clk),
        .CE(\col_index[5]_i_1_n_0 ),
        .D(col_index_0[3]),
        .Q(col_index[3]),
        .R(reset));
  FDRE \col_index_reg[4] 
       (.C(p_clk),
        .CE(\col_index[5]_i_1_n_0 ),
        .D(col_index_0[4]),
        .Q(col_index[4]),
        .R(reset));
  FDRE \col_index_reg[5] 
       (.C(p_clk),
        .CE(\col_index[5]_i_1_n_0 ),
        .D(col_index_0[5]),
        .Q(col_index[5]),
        .R(reset));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    output_valid_i_1
       (.I0(\y_count_reg_n_0_[2] ),
        .I1(\y_count_reg_n_0_[0] ),
        .I2(\pixel_data_avg[7]_i_3_n_0 ),
        .I3(\y_count_reg_n_0_[1] ),
        .I4(input_valid),
        .I5(reset),
        .O(output_valid_i_1_n_0));
  FDRE output_valid_reg
       (.C(p_clk),
        .CE(1'b1),
        .D(output_valid_i_1_n_0),
        .Q(output_valid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    \pixel_data_avg[1]_i_2 
       (.I0(\pixel_data_avg_reg[1]_i_6_n_0 ),
        .I1(col_index[4]),
        .I2(\pixel_data_avg_reg[1]_i_7_n_0 ),
        .I3(col_index[5]),
        .I4(\pixel_data_avg_reg[1]_i_8_n_0 ),
        .I5(pixel_data_grayscale[7]),
        .O(\pixel_data_avg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    \pixel_data_avg[1]_i_3 
       (.I0(\pixel_data_avg_reg[1]_i_9_n_0 ),
        .I1(col_index[4]),
        .I2(\pixel_data_avg_reg[1]_i_10_n_0 ),
        .I3(col_index[5]),
        .I4(\pixel_data_avg_reg[1]_i_11_n_0 ),
        .I5(pixel_data_grayscale[6]),
        .O(\pixel_data_avg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    \pixel_data_avg[1]_i_4 
       (.I0(\pixel_data_avg_reg[1]_i_12_n_0 ),
        .I1(col_index[4]),
        .I2(\pixel_data_avg_reg[1]_i_13_n_0 ),
        .I3(col_index[5]),
        .I4(\pixel_data_avg_reg[1]_i_14_n_0 ),
        .I5(pixel_data_grayscale[5]),
        .O(\pixel_data_avg[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_42 
       (.I0(\sum_reg[3] [7]),
        .I1(\sum_reg[2] [7]),
        .I2(col_index[1]),
        .I3(\sum_reg[1] [7]),
        .I4(col_index[0]),
        .I5(\sum_reg[0] [7]),
        .O(\pixel_data_avg[1]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_43 
       (.I0(\sum_reg[7] [7]),
        .I1(\sum_reg[6] [7]),
        .I2(col_index[1]),
        .I3(\sum_reg[5] [7]),
        .I4(col_index[0]),
        .I5(\sum_reg[4] [7]),
        .O(\pixel_data_avg[1]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_44 
       (.I0(\sum_reg[11] [7]),
        .I1(\sum_reg[10] [7]),
        .I2(col_index[1]),
        .I3(\sum_reg[9] [7]),
        .I4(col_index[0]),
        .I5(\sum_reg[8] [7]),
        .O(\pixel_data_avg[1]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_45 
       (.I0(\sum_reg[15] [7]),
        .I1(\sum_reg[14] [7]),
        .I2(col_index[1]),
        .I3(\sum_reg[13] [7]),
        .I4(col_index[0]),
        .I5(\sum_reg[12] [7]),
        .O(\pixel_data_avg[1]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_46 
       (.I0(\sum_reg[19] [7]),
        .I1(\sum_reg[18] [7]),
        .I2(col_index[1]),
        .I3(\sum_reg[17] [7]),
        .I4(col_index[0]),
        .I5(\sum_reg[16] [7]),
        .O(\pixel_data_avg[1]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_47 
       (.I0(\sum_reg[23] [7]),
        .I1(\sum_reg[22] [7]),
        .I2(col_index[1]),
        .I3(\sum_reg[21] [7]),
        .I4(col_index[0]),
        .I5(\sum_reg[20] [7]),
        .O(\pixel_data_avg[1]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_48 
       (.I0(\sum_reg[27] [7]),
        .I1(\sum_reg[26] [7]),
        .I2(col_index[1]),
        .I3(\sum_reg[25] [7]),
        .I4(col_index[0]),
        .I5(\sum_reg[24] [7]),
        .O(\pixel_data_avg[1]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_49 
       (.I0(\sum_reg[31] [7]),
        .I1(\sum_reg[30] [7]),
        .I2(col_index[1]),
        .I3(\sum_reg[29] [7]),
        .I4(col_index[0]),
        .I5(\sum_reg[28] [7]),
        .O(\pixel_data_avg[1]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    \pixel_data_avg[1]_i_5 
       (.I0(\pixel_data_avg_reg[1]_i_15_n_0 ),
        .I1(col_index[4]),
        .I2(\pixel_data_avg_reg[1]_i_16_n_0 ),
        .I3(col_index[5]),
        .I4(\pixel_data_avg_reg[1]_i_17_n_0 ),
        .I5(pixel_data_grayscale[4]),
        .O(\pixel_data_avg[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_50 
       (.I0(\sum_reg[35] [7]),
        .I1(\sum_reg[34] [7]),
        .I2(col_index[1]),
        .I3(\sum_reg[33] [7]),
        .I4(col_index[0]),
        .I5(\sum_reg[32] [7]),
        .O(\pixel_data_avg[1]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_51 
       (.I0(\sum_reg[39] [7]),
        .I1(\sum_reg[38] [7]),
        .I2(col_index[1]),
        .I3(\sum_reg[37] [7]),
        .I4(col_index[0]),
        .I5(\sum_reg[36] [7]),
        .O(\pixel_data_avg[1]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_52 
       (.I0(\sum_reg[43] [7]),
        .I1(\sum_reg[42] [7]),
        .I2(col_index[1]),
        .I3(\sum_reg[41] [7]),
        .I4(col_index[0]),
        .I5(\sum_reg[40] [7]),
        .O(\pixel_data_avg[1]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_53 
       (.I0(\sum_reg[47] [7]),
        .I1(\sum_reg[46] [7]),
        .I2(col_index[1]),
        .I3(\sum_reg[45] [7]),
        .I4(col_index[0]),
        .I5(\sum_reg[44] [7]),
        .O(\pixel_data_avg[1]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_54 
       (.I0(\sum_reg[3] [6]),
        .I1(\sum_reg[2] [6]),
        .I2(col_index[1]),
        .I3(\sum_reg[1] [6]),
        .I4(col_index[0]),
        .I5(\sum_reg[0] [6]),
        .O(\pixel_data_avg[1]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_55 
       (.I0(\sum_reg[7] [6]),
        .I1(\sum_reg[6] [6]),
        .I2(col_index[1]),
        .I3(\sum_reg[5] [6]),
        .I4(col_index[0]),
        .I5(\sum_reg[4] [6]),
        .O(\pixel_data_avg[1]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_56 
       (.I0(\sum_reg[11] [6]),
        .I1(\sum_reg[10] [6]),
        .I2(col_index[1]),
        .I3(\sum_reg[9] [6]),
        .I4(col_index[0]),
        .I5(\sum_reg[8] [6]),
        .O(\pixel_data_avg[1]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_57 
       (.I0(\sum_reg[15] [6]),
        .I1(\sum_reg[14] [6]),
        .I2(col_index[1]),
        .I3(\sum_reg[13] [6]),
        .I4(col_index[0]),
        .I5(\sum_reg[12] [6]),
        .O(\pixel_data_avg[1]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_58 
       (.I0(\sum_reg[19] [6]),
        .I1(\sum_reg[18] [6]),
        .I2(col_index[1]),
        .I3(\sum_reg[17] [6]),
        .I4(col_index[0]),
        .I5(\sum_reg[16] [6]),
        .O(\pixel_data_avg[1]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_59 
       (.I0(\sum_reg[23] [6]),
        .I1(\sum_reg[22] [6]),
        .I2(col_index[1]),
        .I3(\sum_reg[21] [6]),
        .I4(col_index[0]),
        .I5(\sum_reg[20] [6]),
        .O(\pixel_data_avg[1]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_60 
       (.I0(\sum_reg[27] [6]),
        .I1(\sum_reg[26] [6]),
        .I2(col_index[1]),
        .I3(\sum_reg[25] [6]),
        .I4(col_index[0]),
        .I5(\sum_reg[24] [6]),
        .O(\pixel_data_avg[1]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_61 
       (.I0(\sum_reg[31] [6]),
        .I1(\sum_reg[30] [6]),
        .I2(col_index[1]),
        .I3(\sum_reg[29] [6]),
        .I4(col_index[0]),
        .I5(\sum_reg[28] [6]),
        .O(\pixel_data_avg[1]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_62 
       (.I0(\sum_reg[35] [6]),
        .I1(\sum_reg[34] [6]),
        .I2(col_index[1]),
        .I3(\sum_reg[33] [6]),
        .I4(col_index[0]),
        .I5(\sum_reg[32] [6]),
        .O(\pixel_data_avg[1]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_63 
       (.I0(\sum_reg[39] [6]),
        .I1(\sum_reg[38] [6]),
        .I2(col_index[1]),
        .I3(\sum_reg[37] [6]),
        .I4(col_index[0]),
        .I5(\sum_reg[36] [6]),
        .O(\pixel_data_avg[1]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_64 
       (.I0(\sum_reg[43] [6]),
        .I1(\sum_reg[42] [6]),
        .I2(col_index[1]),
        .I3(\sum_reg[41] [6]),
        .I4(col_index[0]),
        .I5(\sum_reg[40] [6]),
        .O(\pixel_data_avg[1]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_65 
       (.I0(\sum_reg[47] [6]),
        .I1(\sum_reg[46] [6]),
        .I2(col_index[1]),
        .I3(\sum_reg[45] [6]),
        .I4(col_index[0]),
        .I5(\sum_reg[44] [6]),
        .O(\pixel_data_avg[1]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_66 
       (.I0(\sum_reg[3] [5]),
        .I1(\sum_reg[2] [5]),
        .I2(col_index[1]),
        .I3(\sum_reg[1] [5]),
        .I4(col_index[0]),
        .I5(\sum_reg[0] [5]),
        .O(\pixel_data_avg[1]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_67 
       (.I0(\sum_reg[7] [5]),
        .I1(\sum_reg[6] [5]),
        .I2(col_index[1]),
        .I3(\sum_reg[5] [5]),
        .I4(col_index[0]),
        .I5(\sum_reg[4] [5]),
        .O(\pixel_data_avg[1]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_68 
       (.I0(\sum_reg[11] [5]),
        .I1(\sum_reg[10] [5]),
        .I2(col_index[1]),
        .I3(\sum_reg[9] [5]),
        .I4(col_index[0]),
        .I5(\sum_reg[8] [5]),
        .O(\pixel_data_avg[1]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_69 
       (.I0(\sum_reg[15] [5]),
        .I1(\sum_reg[14] [5]),
        .I2(col_index[1]),
        .I3(\sum_reg[13] [5]),
        .I4(col_index[0]),
        .I5(\sum_reg[12] [5]),
        .O(\pixel_data_avg[1]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_70 
       (.I0(\sum_reg[19] [5]),
        .I1(\sum_reg[18] [5]),
        .I2(col_index[1]),
        .I3(\sum_reg[17] [5]),
        .I4(col_index[0]),
        .I5(\sum_reg[16] [5]),
        .O(\pixel_data_avg[1]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_71 
       (.I0(\sum_reg[23] [5]),
        .I1(\sum_reg[22] [5]),
        .I2(col_index[1]),
        .I3(\sum_reg[21] [5]),
        .I4(col_index[0]),
        .I5(\sum_reg[20] [5]),
        .O(\pixel_data_avg[1]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_72 
       (.I0(\sum_reg[27] [5]),
        .I1(\sum_reg[26] [5]),
        .I2(col_index[1]),
        .I3(\sum_reg[25] [5]),
        .I4(col_index[0]),
        .I5(\sum_reg[24] [5]),
        .O(\pixel_data_avg[1]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_73 
       (.I0(\sum_reg[31] [5]),
        .I1(\sum_reg[30] [5]),
        .I2(col_index[1]),
        .I3(\sum_reg[29] [5]),
        .I4(col_index[0]),
        .I5(\sum_reg[28] [5]),
        .O(\pixel_data_avg[1]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_74 
       (.I0(\sum_reg[35] [5]),
        .I1(\sum_reg[34] [5]),
        .I2(col_index[1]),
        .I3(\sum_reg[33] [5]),
        .I4(col_index[0]),
        .I5(\sum_reg[32] [5]),
        .O(\pixel_data_avg[1]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_75 
       (.I0(\sum_reg[39] [5]),
        .I1(\sum_reg[38] [5]),
        .I2(col_index[1]),
        .I3(\sum_reg[37] [5]),
        .I4(col_index[0]),
        .I5(\sum_reg[36] [5]),
        .O(\pixel_data_avg[1]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_76 
       (.I0(\sum_reg[43] [5]),
        .I1(\sum_reg[42] [5]),
        .I2(col_index[1]),
        .I3(\sum_reg[41] [5]),
        .I4(col_index[0]),
        .I5(\sum_reg[40] [5]),
        .O(\pixel_data_avg[1]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_77 
       (.I0(\sum_reg[47] [5]),
        .I1(\sum_reg[46] [5]),
        .I2(col_index[1]),
        .I3(\sum_reg[45] [5]),
        .I4(col_index[0]),
        .I5(\sum_reg[44] [5]),
        .O(\pixel_data_avg[1]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_78 
       (.I0(\sum_reg[3] [4]),
        .I1(\sum_reg[2] [4]),
        .I2(col_index[1]),
        .I3(\sum_reg[1] [4]),
        .I4(col_index[0]),
        .I5(\sum_reg[0] [4]),
        .O(\pixel_data_avg[1]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_79 
       (.I0(\sum_reg[7] [4]),
        .I1(\sum_reg[6] [4]),
        .I2(col_index[1]),
        .I3(\sum_reg[5] [4]),
        .I4(col_index[0]),
        .I5(\sum_reg[4] [4]),
        .O(\pixel_data_avg[1]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_80 
       (.I0(\sum_reg[11] [4]),
        .I1(\sum_reg[10] [4]),
        .I2(col_index[1]),
        .I3(\sum_reg[9] [4]),
        .I4(col_index[0]),
        .I5(\sum_reg[8] [4]),
        .O(\pixel_data_avg[1]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_81 
       (.I0(\sum_reg[15] [4]),
        .I1(\sum_reg[14] [4]),
        .I2(col_index[1]),
        .I3(\sum_reg[13] [4]),
        .I4(col_index[0]),
        .I5(\sum_reg[12] [4]),
        .O(\pixel_data_avg[1]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_82 
       (.I0(\sum_reg[19] [4]),
        .I1(\sum_reg[18] [4]),
        .I2(col_index[1]),
        .I3(\sum_reg[17] [4]),
        .I4(col_index[0]),
        .I5(\sum_reg[16] [4]),
        .O(\pixel_data_avg[1]_i_82_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_83 
       (.I0(\sum_reg[23] [4]),
        .I1(\sum_reg[22] [4]),
        .I2(col_index[1]),
        .I3(\sum_reg[21] [4]),
        .I4(col_index[0]),
        .I5(\sum_reg[20] [4]),
        .O(\pixel_data_avg[1]_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_84 
       (.I0(\sum_reg[27] [4]),
        .I1(\sum_reg[26] [4]),
        .I2(col_index[1]),
        .I3(\sum_reg[25] [4]),
        .I4(col_index[0]),
        .I5(\sum_reg[24] [4]),
        .O(\pixel_data_avg[1]_i_84_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_85 
       (.I0(\sum_reg[31] [4]),
        .I1(\sum_reg[30] [4]),
        .I2(col_index[1]),
        .I3(\sum_reg[29] [4]),
        .I4(col_index[0]),
        .I5(\sum_reg[28] [4]),
        .O(\pixel_data_avg[1]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_86 
       (.I0(\sum_reg[35] [4]),
        .I1(\sum_reg[34] [4]),
        .I2(col_index[1]),
        .I3(\sum_reg[33] [4]),
        .I4(col_index[0]),
        .I5(\sum_reg[32] [4]),
        .O(\pixel_data_avg[1]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_87 
       (.I0(\sum_reg[39] [4]),
        .I1(\sum_reg[38] [4]),
        .I2(col_index[1]),
        .I3(\sum_reg[37] [4]),
        .I4(col_index[0]),
        .I5(\sum_reg[36] [4]),
        .O(\pixel_data_avg[1]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_88 
       (.I0(\sum_reg[43] [4]),
        .I1(\sum_reg[42] [4]),
        .I2(col_index[1]),
        .I3(\sum_reg[41] [4]),
        .I4(col_index[0]),
        .I5(\sum_reg[40] [4]),
        .O(\pixel_data_avg[1]_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[1]_i_89 
       (.I0(\sum_reg[47] [4]),
        .I1(\sum_reg[46] [4]),
        .I2(col_index[1]),
        .I3(\sum_reg[45] [4]),
        .I4(col_index[0]),
        .I5(\sum_reg[44] [4]),
        .O(\pixel_data_avg[1]_i_89_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pixel_data_avg[5]_i_2 
       (.I0(\pixel_data_avg_reg[5]_i_6_n_0 ),
        .I1(col_index[5]),
        .I2(\pixel_data_avg_reg[5]_i_7_n_0 ),
        .I3(col_index[4]),
        .I4(\pixel_data_avg_reg[5]_i_8_n_0 ),
        .O(sum[11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pixel_data_avg[5]_i_3 
       (.I0(\pixel_data_avg_reg[5]_i_9_n_0 ),
        .I1(col_index[5]),
        .I2(\pixel_data_avg_reg[5]_i_10_n_0 ),
        .I3(col_index[4]),
        .I4(\pixel_data_avg_reg[5]_i_11_n_0 ),
        .O(sum[10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pixel_data_avg[5]_i_4 
       (.I0(\pixel_data_avg_reg[5]_i_12_n_0 ),
        .I1(col_index[5]),
        .I2(\pixel_data_avg_reg[5]_i_13_n_0 ),
        .I3(col_index[4]),
        .I4(\pixel_data_avg_reg[5]_i_14_n_0 ),
        .O(sum[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_42 
       (.I0(\sum_reg[35] [11]),
        .I1(\sum_reg[34] [11]),
        .I2(col_index[1]),
        .I3(\sum_reg[33] [11]),
        .I4(col_index[0]),
        .I5(\sum_reg[32] [11]),
        .O(\pixel_data_avg[5]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_43 
       (.I0(\sum_reg[39] [11]),
        .I1(\sum_reg[38] [11]),
        .I2(col_index[1]),
        .I3(\sum_reg[37] [11]),
        .I4(col_index[0]),
        .I5(\sum_reg[36] [11]),
        .O(\pixel_data_avg[5]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_44 
       (.I0(\sum_reg[43] [11]),
        .I1(\sum_reg[42] [11]),
        .I2(col_index[1]),
        .I3(\sum_reg[41] [11]),
        .I4(col_index[0]),
        .I5(\sum_reg[40] [11]),
        .O(\pixel_data_avg[5]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_45 
       (.I0(\sum_reg[47] [11]),
        .I1(\sum_reg[46] [11]),
        .I2(col_index[1]),
        .I3(\sum_reg[45] [11]),
        .I4(col_index[0]),
        .I5(\sum_reg[44] [11]),
        .O(\pixel_data_avg[5]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_46 
       (.I0(\sum_reg[19] [11]),
        .I1(\sum_reg[18] [11]),
        .I2(col_index[1]),
        .I3(\sum_reg[17] [11]),
        .I4(col_index[0]),
        .I5(\sum_reg[16] [11]),
        .O(\pixel_data_avg[5]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_47 
       (.I0(\sum_reg[23] [11]),
        .I1(\sum_reg[22] [11]),
        .I2(col_index[1]),
        .I3(\sum_reg[21] [11]),
        .I4(col_index[0]),
        .I5(\sum_reg[20] [11]),
        .O(\pixel_data_avg[5]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_48 
       (.I0(\sum_reg[27] [11]),
        .I1(\sum_reg[26] [11]),
        .I2(col_index[1]),
        .I3(\sum_reg[25] [11]),
        .I4(col_index[0]),
        .I5(\sum_reg[24] [11]),
        .O(\pixel_data_avg[5]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_49 
       (.I0(\sum_reg[31] [11]),
        .I1(\sum_reg[30] [11]),
        .I2(col_index[1]),
        .I3(\sum_reg[29] [11]),
        .I4(col_index[0]),
        .I5(\sum_reg[28] [11]),
        .O(\pixel_data_avg[5]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pixel_data_avg[5]_i_5 
       (.I0(\pixel_data_avg_reg[5]_i_15_n_0 ),
        .I1(col_index[5]),
        .I2(\pixel_data_avg_reg[5]_i_16_n_0 ),
        .I3(col_index[4]),
        .I4(\pixel_data_avg_reg[5]_i_17_n_0 ),
        .O(sum[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_50 
       (.I0(\sum_reg[3] [11]),
        .I1(\sum_reg[2] [11]),
        .I2(col_index[1]),
        .I3(\sum_reg[1] [11]),
        .I4(col_index[0]),
        .I5(\sum_reg[0] [11]),
        .O(\pixel_data_avg[5]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_51 
       (.I0(\sum_reg[7] [11]),
        .I1(\sum_reg[6] [11]),
        .I2(col_index[1]),
        .I3(\sum_reg[5] [11]),
        .I4(col_index[0]),
        .I5(\sum_reg[4] [11]),
        .O(\pixel_data_avg[5]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_52 
       (.I0(\sum_reg[11] [11]),
        .I1(\sum_reg[10] [11]),
        .I2(col_index[1]),
        .I3(\sum_reg[9] [11]),
        .I4(col_index[0]),
        .I5(\sum_reg[8] [11]),
        .O(\pixel_data_avg[5]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_53 
       (.I0(\sum_reg[15] [11]),
        .I1(\sum_reg[14] [11]),
        .I2(col_index[1]),
        .I3(\sum_reg[13] [11]),
        .I4(col_index[0]),
        .I5(\sum_reg[12] [11]),
        .O(\pixel_data_avg[5]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_54 
       (.I0(\sum_reg[35] [10]),
        .I1(\sum_reg[34] [10]),
        .I2(col_index[1]),
        .I3(\sum_reg[33] [10]),
        .I4(col_index[0]),
        .I5(\sum_reg[32] [10]),
        .O(\pixel_data_avg[5]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_55 
       (.I0(\sum_reg[39] [10]),
        .I1(\sum_reg[38] [10]),
        .I2(col_index[1]),
        .I3(\sum_reg[37] [10]),
        .I4(col_index[0]),
        .I5(\sum_reg[36] [10]),
        .O(\pixel_data_avg[5]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_56 
       (.I0(\sum_reg[43] [10]),
        .I1(\sum_reg[42] [10]),
        .I2(col_index[1]),
        .I3(\sum_reg[41] [10]),
        .I4(col_index[0]),
        .I5(\sum_reg[40] [10]),
        .O(\pixel_data_avg[5]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_57 
       (.I0(\sum_reg[47] [10]),
        .I1(\sum_reg[46] [10]),
        .I2(col_index[1]),
        .I3(\sum_reg[45] [10]),
        .I4(col_index[0]),
        .I5(\sum_reg[44] [10]),
        .O(\pixel_data_avg[5]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_58 
       (.I0(\sum_reg[19] [10]),
        .I1(\sum_reg[18] [10]),
        .I2(col_index[1]),
        .I3(\sum_reg[17] [10]),
        .I4(col_index[0]),
        .I5(\sum_reg[16] [10]),
        .O(\pixel_data_avg[5]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_59 
       (.I0(\sum_reg[23] [10]),
        .I1(\sum_reg[22] [10]),
        .I2(col_index[1]),
        .I3(\sum_reg[21] [10]),
        .I4(col_index[0]),
        .I5(\sum_reg[20] [10]),
        .O(\pixel_data_avg[5]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_60 
       (.I0(\sum_reg[27] [10]),
        .I1(\sum_reg[26] [10]),
        .I2(col_index[1]),
        .I3(\sum_reg[25] [10]),
        .I4(col_index[0]),
        .I5(\sum_reg[24] [10]),
        .O(\pixel_data_avg[5]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_61 
       (.I0(\sum_reg[31] [10]),
        .I1(\sum_reg[30] [10]),
        .I2(col_index[1]),
        .I3(\sum_reg[29] [10]),
        .I4(col_index[0]),
        .I5(\sum_reg[28] [10]),
        .O(\pixel_data_avg[5]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_62 
       (.I0(\sum_reg[3] [10]),
        .I1(\sum_reg[2] [10]),
        .I2(col_index[1]),
        .I3(\sum_reg[1] [10]),
        .I4(col_index[0]),
        .I5(\sum_reg[0] [10]),
        .O(\pixel_data_avg[5]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_63 
       (.I0(\sum_reg[7] [10]),
        .I1(\sum_reg[6] [10]),
        .I2(col_index[1]),
        .I3(\sum_reg[5] [10]),
        .I4(col_index[0]),
        .I5(\sum_reg[4] [10]),
        .O(\pixel_data_avg[5]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_64 
       (.I0(\sum_reg[11] [10]),
        .I1(\sum_reg[10] [10]),
        .I2(col_index[1]),
        .I3(\sum_reg[9] [10]),
        .I4(col_index[0]),
        .I5(\sum_reg[8] [10]),
        .O(\pixel_data_avg[5]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_65 
       (.I0(\sum_reg[15] [10]),
        .I1(\sum_reg[14] [10]),
        .I2(col_index[1]),
        .I3(\sum_reg[13] [10]),
        .I4(col_index[0]),
        .I5(\sum_reg[12] [10]),
        .O(\pixel_data_avg[5]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_66 
       (.I0(\sum_reg[35] [9]),
        .I1(\sum_reg[34] [9]),
        .I2(col_index[1]),
        .I3(\sum_reg[33] [9]),
        .I4(col_index[0]),
        .I5(\sum_reg[32] [9]),
        .O(\pixel_data_avg[5]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_67 
       (.I0(\sum_reg[39] [9]),
        .I1(\sum_reg[38] [9]),
        .I2(col_index[1]),
        .I3(\sum_reg[37] [9]),
        .I4(col_index[0]),
        .I5(\sum_reg[36] [9]),
        .O(\pixel_data_avg[5]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_68 
       (.I0(\sum_reg[43] [9]),
        .I1(\sum_reg[42] [9]),
        .I2(col_index[1]),
        .I3(\sum_reg[41] [9]),
        .I4(col_index[0]),
        .I5(\sum_reg[40] [9]),
        .O(\pixel_data_avg[5]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_69 
       (.I0(\sum_reg[47] [9]),
        .I1(\sum_reg[46] [9]),
        .I2(col_index[1]),
        .I3(\sum_reg[45] [9]),
        .I4(col_index[0]),
        .I5(\sum_reg[44] [9]),
        .O(\pixel_data_avg[5]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_70 
       (.I0(\sum_reg[19] [9]),
        .I1(\sum_reg[18] [9]),
        .I2(col_index[1]),
        .I3(\sum_reg[17] [9]),
        .I4(col_index[0]),
        .I5(\sum_reg[16] [9]),
        .O(\pixel_data_avg[5]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_71 
       (.I0(\sum_reg[23] [9]),
        .I1(\sum_reg[22] [9]),
        .I2(col_index[1]),
        .I3(\sum_reg[21] [9]),
        .I4(col_index[0]),
        .I5(\sum_reg[20] [9]),
        .O(\pixel_data_avg[5]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_72 
       (.I0(\sum_reg[27] [9]),
        .I1(\sum_reg[26] [9]),
        .I2(col_index[1]),
        .I3(\sum_reg[25] [9]),
        .I4(col_index[0]),
        .I5(\sum_reg[24] [9]),
        .O(\pixel_data_avg[5]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_73 
       (.I0(\sum_reg[31] [9]),
        .I1(\sum_reg[30] [9]),
        .I2(col_index[1]),
        .I3(\sum_reg[29] [9]),
        .I4(col_index[0]),
        .I5(\sum_reg[28] [9]),
        .O(\pixel_data_avg[5]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_74 
       (.I0(\sum_reg[3] [9]),
        .I1(\sum_reg[2] [9]),
        .I2(col_index[1]),
        .I3(\sum_reg[1] [9]),
        .I4(col_index[0]),
        .I5(\sum_reg[0] [9]),
        .O(\pixel_data_avg[5]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_75 
       (.I0(\sum_reg[7] [9]),
        .I1(\sum_reg[6] [9]),
        .I2(col_index[1]),
        .I3(\sum_reg[5] [9]),
        .I4(col_index[0]),
        .I5(\sum_reg[4] [9]),
        .O(\pixel_data_avg[5]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_76 
       (.I0(\sum_reg[11] [9]),
        .I1(\sum_reg[10] [9]),
        .I2(col_index[1]),
        .I3(\sum_reg[9] [9]),
        .I4(col_index[0]),
        .I5(\sum_reg[8] [9]),
        .O(\pixel_data_avg[5]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_77 
       (.I0(\sum_reg[15] [9]),
        .I1(\sum_reg[14] [9]),
        .I2(col_index[1]),
        .I3(\sum_reg[13] [9]),
        .I4(col_index[0]),
        .I5(\sum_reg[12] [9]),
        .O(\pixel_data_avg[5]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_78 
       (.I0(\sum_reg[35] [8]),
        .I1(\sum_reg[34] [8]),
        .I2(col_index[1]),
        .I3(\sum_reg[33] [8]),
        .I4(col_index[0]),
        .I5(\sum_reg[32] [8]),
        .O(\pixel_data_avg[5]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_79 
       (.I0(\sum_reg[39] [8]),
        .I1(\sum_reg[38] [8]),
        .I2(col_index[1]),
        .I3(\sum_reg[37] [8]),
        .I4(col_index[0]),
        .I5(\sum_reg[36] [8]),
        .O(\pixel_data_avg[5]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_80 
       (.I0(\sum_reg[43] [8]),
        .I1(\sum_reg[42] [8]),
        .I2(col_index[1]),
        .I3(\sum_reg[41] [8]),
        .I4(col_index[0]),
        .I5(\sum_reg[40] [8]),
        .O(\pixel_data_avg[5]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_81 
       (.I0(\sum_reg[47] [8]),
        .I1(\sum_reg[46] [8]),
        .I2(col_index[1]),
        .I3(\sum_reg[45] [8]),
        .I4(col_index[0]),
        .I5(\sum_reg[44] [8]),
        .O(\pixel_data_avg[5]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_82 
       (.I0(\sum_reg[19] [8]),
        .I1(\sum_reg[18] [8]),
        .I2(col_index[1]),
        .I3(\sum_reg[17] [8]),
        .I4(col_index[0]),
        .I5(\sum_reg[16] [8]),
        .O(\pixel_data_avg[5]_i_82_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_83 
       (.I0(\sum_reg[23] [8]),
        .I1(\sum_reg[22] [8]),
        .I2(col_index[1]),
        .I3(\sum_reg[21] [8]),
        .I4(col_index[0]),
        .I5(\sum_reg[20] [8]),
        .O(\pixel_data_avg[5]_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_84 
       (.I0(\sum_reg[27] [8]),
        .I1(\sum_reg[26] [8]),
        .I2(col_index[1]),
        .I3(\sum_reg[25] [8]),
        .I4(col_index[0]),
        .I5(\sum_reg[24] [8]),
        .O(\pixel_data_avg[5]_i_84_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_85 
       (.I0(\sum_reg[31] [8]),
        .I1(\sum_reg[30] [8]),
        .I2(col_index[1]),
        .I3(\sum_reg[29] [8]),
        .I4(col_index[0]),
        .I5(\sum_reg[28] [8]),
        .O(\pixel_data_avg[5]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_86 
       (.I0(\sum_reg[3] [8]),
        .I1(\sum_reg[2] [8]),
        .I2(col_index[1]),
        .I3(\sum_reg[1] [8]),
        .I4(col_index[0]),
        .I5(\sum_reg[0] [8]),
        .O(\pixel_data_avg[5]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_87 
       (.I0(\sum_reg[7] [8]),
        .I1(\sum_reg[6] [8]),
        .I2(col_index[1]),
        .I3(\sum_reg[5] [8]),
        .I4(col_index[0]),
        .I5(\sum_reg[4] [8]),
        .O(\pixel_data_avg[5]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_88 
       (.I0(\sum_reg[11] [8]),
        .I1(\sum_reg[10] [8]),
        .I2(col_index[1]),
        .I3(\sum_reg[9] [8]),
        .I4(col_index[0]),
        .I5(\sum_reg[8] [8]),
        .O(\pixel_data_avg[5]_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[5]_i_89 
       (.I0(\sum_reg[15] [8]),
        .I1(\sum_reg[14] [8]),
        .I2(col_index[1]),
        .I3(\sum_reg[13] [8]),
        .I4(col_index[0]),
        .I5(\sum_reg[12] [8]),
        .O(\pixel_data_avg[5]_i_89_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \pixel_data_avg[7]_i_1 
       (.I0(\y_count_reg_n_0_[2] ),
        .I1(\y_count_reg_n_0_[0] ),
        .I2(\pixel_data_avg[7]_i_3_n_0 ),
        .I3(\y_count_reg_n_0_[1] ),
        .I4(input_valid),
        .O(\pixel_data_avg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[7]_i_24 
       (.I0(\sum_reg[35] [13]),
        .I1(\sum_reg[34] [13]),
        .I2(col_index[1]),
        .I3(\sum_reg[33] [13]),
        .I4(col_index[0]),
        .I5(\sum_reg[32] [13]),
        .O(\pixel_data_avg[7]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[7]_i_25 
       (.I0(\sum_reg[39] [13]),
        .I1(\sum_reg[38] [13]),
        .I2(col_index[1]),
        .I3(\sum_reg[37] [13]),
        .I4(col_index[0]),
        .I5(\sum_reg[36] [13]),
        .O(\pixel_data_avg[7]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[7]_i_26 
       (.I0(\sum_reg[43] [13]),
        .I1(\sum_reg[42] [13]),
        .I2(col_index[1]),
        .I3(\sum_reg[41] [13]),
        .I4(col_index[0]),
        .I5(\sum_reg[40] [13]),
        .O(\pixel_data_avg[7]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[7]_i_27 
       (.I0(\sum_reg[47] [13]),
        .I1(\sum_reg[46] [13]),
        .I2(col_index[1]),
        .I3(\sum_reg[45] [13]),
        .I4(col_index[0]),
        .I5(\sum_reg[44] [13]),
        .O(\pixel_data_avg[7]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[7]_i_28 
       (.I0(\sum_reg[19] [13]),
        .I1(\sum_reg[18] [13]),
        .I2(col_index[1]),
        .I3(\sum_reg[17] [13]),
        .I4(col_index[0]),
        .I5(\sum_reg[16] [13]),
        .O(\pixel_data_avg[7]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[7]_i_29 
       (.I0(\sum_reg[23] [13]),
        .I1(\sum_reg[22] [13]),
        .I2(col_index[1]),
        .I3(\sum_reg[21] [13]),
        .I4(col_index[0]),
        .I5(\sum_reg[20] [13]),
        .O(\pixel_data_avg[7]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \pixel_data_avg[7]_i_3 
       (.I0(x_count[0]),
        .I1(x_count[2]),
        .I2(x_count[1]),
        .O(\pixel_data_avg[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[7]_i_30 
       (.I0(\sum_reg[27] [13]),
        .I1(\sum_reg[26] [13]),
        .I2(col_index[1]),
        .I3(\sum_reg[25] [13]),
        .I4(col_index[0]),
        .I5(\sum_reg[24] [13]),
        .O(\pixel_data_avg[7]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[7]_i_31 
       (.I0(\sum_reg[31] [13]),
        .I1(\sum_reg[30] [13]),
        .I2(col_index[1]),
        .I3(\sum_reg[29] [13]),
        .I4(col_index[0]),
        .I5(\sum_reg[28] [13]),
        .O(\pixel_data_avg[7]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[7]_i_32 
       (.I0(\sum_reg[3] [13]),
        .I1(\sum_reg[2] [13]),
        .I2(col_index[1]),
        .I3(\sum_reg[1] [13]),
        .I4(col_index[0]),
        .I5(\sum_reg[0] [13]),
        .O(\pixel_data_avg[7]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[7]_i_33 
       (.I0(\sum_reg[7] [13]),
        .I1(\sum_reg[6] [13]),
        .I2(col_index[1]),
        .I3(\sum_reg[5] [13]),
        .I4(col_index[0]),
        .I5(\sum_reg[4] [13]),
        .O(\pixel_data_avg[7]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[7]_i_34 
       (.I0(\sum_reg[11] [13]),
        .I1(\sum_reg[10] [13]),
        .I2(col_index[1]),
        .I3(\sum_reg[9] [13]),
        .I4(col_index[0]),
        .I5(\sum_reg[8] [13]),
        .O(\pixel_data_avg[7]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[7]_i_35 
       (.I0(\sum_reg[15] [13]),
        .I1(\sum_reg[14] [13]),
        .I2(col_index[1]),
        .I3(\sum_reg[13] [13]),
        .I4(col_index[0]),
        .I5(\sum_reg[12] [13]),
        .O(\pixel_data_avg[7]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[7]_i_36 
       (.I0(\sum_reg[35] [12]),
        .I1(\sum_reg[34] [12]),
        .I2(col_index[1]),
        .I3(\sum_reg[33] [12]),
        .I4(col_index[0]),
        .I5(\sum_reg[32] [12]),
        .O(\pixel_data_avg[7]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[7]_i_37 
       (.I0(\sum_reg[39] [12]),
        .I1(\sum_reg[38] [12]),
        .I2(col_index[1]),
        .I3(\sum_reg[37] [12]),
        .I4(col_index[0]),
        .I5(\sum_reg[36] [12]),
        .O(\pixel_data_avg[7]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[7]_i_38 
       (.I0(\sum_reg[43] [12]),
        .I1(\sum_reg[42] [12]),
        .I2(col_index[1]),
        .I3(\sum_reg[41] [12]),
        .I4(col_index[0]),
        .I5(\sum_reg[40] [12]),
        .O(\pixel_data_avg[7]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[7]_i_39 
       (.I0(\sum_reg[47] [12]),
        .I1(\sum_reg[46] [12]),
        .I2(col_index[1]),
        .I3(\sum_reg[45] [12]),
        .I4(col_index[0]),
        .I5(\sum_reg[44] [12]),
        .O(\pixel_data_avg[7]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pixel_data_avg[7]_i_4 
       (.I0(\pixel_data_avg_reg[7]_i_6_n_0 ),
        .I1(col_index[5]),
        .I2(\pixel_data_avg_reg[7]_i_7_n_0 ),
        .I3(col_index[4]),
        .I4(\pixel_data_avg_reg[7]_i_8_n_0 ),
        .O(sum[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[7]_i_40 
       (.I0(\sum_reg[19] [12]),
        .I1(\sum_reg[18] [12]),
        .I2(col_index[1]),
        .I3(\sum_reg[17] [12]),
        .I4(col_index[0]),
        .I5(\sum_reg[16] [12]),
        .O(\pixel_data_avg[7]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[7]_i_41 
       (.I0(\sum_reg[23] [12]),
        .I1(\sum_reg[22] [12]),
        .I2(col_index[1]),
        .I3(\sum_reg[21] [12]),
        .I4(col_index[0]),
        .I5(\sum_reg[20] [12]),
        .O(\pixel_data_avg[7]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[7]_i_42 
       (.I0(\sum_reg[27] [12]),
        .I1(\sum_reg[26] [12]),
        .I2(col_index[1]),
        .I3(\sum_reg[25] [12]),
        .I4(col_index[0]),
        .I5(\sum_reg[24] [12]),
        .O(\pixel_data_avg[7]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[7]_i_43 
       (.I0(\sum_reg[31] [12]),
        .I1(\sum_reg[30] [12]),
        .I2(col_index[1]),
        .I3(\sum_reg[29] [12]),
        .I4(col_index[0]),
        .I5(\sum_reg[28] [12]),
        .O(\pixel_data_avg[7]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[7]_i_44 
       (.I0(\sum_reg[3] [12]),
        .I1(\sum_reg[2] [12]),
        .I2(col_index[1]),
        .I3(\sum_reg[1] [12]),
        .I4(col_index[0]),
        .I5(\sum_reg[0] [12]),
        .O(\pixel_data_avg[7]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[7]_i_45 
       (.I0(\sum_reg[7] [12]),
        .I1(\sum_reg[6] [12]),
        .I2(col_index[1]),
        .I3(\sum_reg[5] [12]),
        .I4(col_index[0]),
        .I5(\sum_reg[4] [12]),
        .O(\pixel_data_avg[7]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[7]_i_46 
       (.I0(\sum_reg[11] [12]),
        .I1(\sum_reg[10] [12]),
        .I2(col_index[1]),
        .I3(\sum_reg[9] [12]),
        .I4(col_index[0]),
        .I5(\sum_reg[8] [12]),
        .O(\pixel_data_avg[7]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \pixel_data_avg[7]_i_47 
       (.I0(\sum_reg[15] [12]),
        .I1(\sum_reg[14] [12]),
        .I2(col_index[1]),
        .I3(\sum_reg[13] [12]),
        .I4(col_index[0]),
        .I5(\sum_reg[12] [12]),
        .O(\pixel_data_avg[7]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pixel_data_avg[7]_i_5 
       (.I0(\pixel_data_avg_reg[7]_i_9_n_0 ),
        .I1(col_index[5]),
        .I2(\pixel_data_avg_reg[7]_i_10_n_0 ),
        .I3(col_index[4]),
        .I4(\pixel_data_avg_reg[7]_i_11_n_0 ),
        .O(sum[12]));
  FDRE \pixel_data_avg_reg[0] 
       (.C(p_clk),
        .CE(\pixel_data_avg[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(pixel_data_avg[0]),
        .R(reset));
  FDRE \pixel_data_avg_reg[1] 
       (.C(p_clk),
        .CE(\pixel_data_avg[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(pixel_data_avg[1]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pixel_data_avg_reg[1]_i_1 
       (.CI(\sum_reg[0][3]_i_1_n_0 ),
        .CO({\pixel_data_avg_reg[1]_i_1_n_0 ,\pixel_data_avg_reg[1]_i_1_n_1 ,\pixel_data_avg_reg[1]_i_1_n_2 ,\pixel_data_avg_reg[1]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(pixel_data_grayscale[7:4]),
        .O({p_0_in[1:0],\pixel_data_avg_reg[1]_i_1_n_6 ,\pixel_data_avg_reg[1]_i_1_n_7 }),
        .S({\pixel_data_avg[1]_i_2_n_0 ,\pixel_data_avg[1]_i_3_n_0 ,\pixel_data_avg[1]_i_4_n_0 ,\pixel_data_avg[1]_i_5_n_0 }));
  MUXF8 \pixel_data_avg_reg[1]_i_10 
       (.I0(\pixel_data_avg_reg[1]_i_26_n_0 ),
        .I1(\pixel_data_avg_reg[1]_i_27_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_10_n_0 ),
        .S(col_index[3]));
  MUXF8 \pixel_data_avg_reg[1]_i_11 
       (.I0(\pixel_data_avg_reg[1]_i_28_n_0 ),
        .I1(\pixel_data_avg_reg[1]_i_29_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_11_n_0 ),
        .S(col_index[3]));
  MUXF8 \pixel_data_avg_reg[1]_i_12 
       (.I0(\pixel_data_avg_reg[1]_i_30_n_0 ),
        .I1(\pixel_data_avg_reg[1]_i_31_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_12_n_0 ),
        .S(col_index[3]));
  MUXF8 \pixel_data_avg_reg[1]_i_13 
       (.I0(\pixel_data_avg_reg[1]_i_32_n_0 ),
        .I1(\pixel_data_avg_reg[1]_i_33_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_13_n_0 ),
        .S(col_index[3]));
  MUXF8 \pixel_data_avg_reg[1]_i_14 
       (.I0(\pixel_data_avg_reg[1]_i_34_n_0 ),
        .I1(\pixel_data_avg_reg[1]_i_35_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_14_n_0 ),
        .S(col_index[3]));
  MUXF8 \pixel_data_avg_reg[1]_i_15 
       (.I0(\pixel_data_avg_reg[1]_i_36_n_0 ),
        .I1(\pixel_data_avg_reg[1]_i_37_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_15_n_0 ),
        .S(col_index[3]));
  MUXF8 \pixel_data_avg_reg[1]_i_16 
       (.I0(\pixel_data_avg_reg[1]_i_38_n_0 ),
        .I1(\pixel_data_avg_reg[1]_i_39_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_16_n_0 ),
        .S(col_index[3]));
  MUXF8 \pixel_data_avg_reg[1]_i_17 
       (.I0(\pixel_data_avg_reg[1]_i_40_n_0 ),
        .I1(\pixel_data_avg_reg[1]_i_41_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_17_n_0 ),
        .S(col_index[3]));
  MUXF7 \pixel_data_avg_reg[1]_i_18 
       (.I0(\pixel_data_avg[1]_i_42_n_0 ),
        .I1(\pixel_data_avg[1]_i_43_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_18_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[1]_i_19 
       (.I0(\pixel_data_avg[1]_i_44_n_0 ),
        .I1(\pixel_data_avg[1]_i_45_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_19_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[1]_i_20 
       (.I0(\pixel_data_avg[1]_i_46_n_0 ),
        .I1(\pixel_data_avg[1]_i_47_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_20_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[1]_i_21 
       (.I0(\pixel_data_avg[1]_i_48_n_0 ),
        .I1(\pixel_data_avg[1]_i_49_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_21_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[1]_i_22 
       (.I0(\pixel_data_avg[1]_i_50_n_0 ),
        .I1(\pixel_data_avg[1]_i_51_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_22_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[1]_i_23 
       (.I0(\pixel_data_avg[1]_i_52_n_0 ),
        .I1(\pixel_data_avg[1]_i_53_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_23_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[1]_i_24 
       (.I0(\pixel_data_avg[1]_i_54_n_0 ),
        .I1(\pixel_data_avg[1]_i_55_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_24_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[1]_i_25 
       (.I0(\pixel_data_avg[1]_i_56_n_0 ),
        .I1(\pixel_data_avg[1]_i_57_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_25_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[1]_i_26 
       (.I0(\pixel_data_avg[1]_i_58_n_0 ),
        .I1(\pixel_data_avg[1]_i_59_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_26_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[1]_i_27 
       (.I0(\pixel_data_avg[1]_i_60_n_0 ),
        .I1(\pixel_data_avg[1]_i_61_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_27_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[1]_i_28 
       (.I0(\pixel_data_avg[1]_i_62_n_0 ),
        .I1(\pixel_data_avg[1]_i_63_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_28_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[1]_i_29 
       (.I0(\pixel_data_avg[1]_i_64_n_0 ),
        .I1(\pixel_data_avg[1]_i_65_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_29_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[1]_i_30 
       (.I0(\pixel_data_avg[1]_i_66_n_0 ),
        .I1(\pixel_data_avg[1]_i_67_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_30_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[1]_i_31 
       (.I0(\pixel_data_avg[1]_i_68_n_0 ),
        .I1(\pixel_data_avg[1]_i_69_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_31_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[1]_i_32 
       (.I0(\pixel_data_avg[1]_i_70_n_0 ),
        .I1(\pixel_data_avg[1]_i_71_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_32_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[1]_i_33 
       (.I0(\pixel_data_avg[1]_i_72_n_0 ),
        .I1(\pixel_data_avg[1]_i_73_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_33_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[1]_i_34 
       (.I0(\pixel_data_avg[1]_i_74_n_0 ),
        .I1(\pixel_data_avg[1]_i_75_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_34_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[1]_i_35 
       (.I0(\pixel_data_avg[1]_i_76_n_0 ),
        .I1(\pixel_data_avg[1]_i_77_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_35_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[1]_i_36 
       (.I0(\pixel_data_avg[1]_i_78_n_0 ),
        .I1(\pixel_data_avg[1]_i_79_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_36_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[1]_i_37 
       (.I0(\pixel_data_avg[1]_i_80_n_0 ),
        .I1(\pixel_data_avg[1]_i_81_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_37_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[1]_i_38 
       (.I0(\pixel_data_avg[1]_i_82_n_0 ),
        .I1(\pixel_data_avg[1]_i_83_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_38_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[1]_i_39 
       (.I0(\pixel_data_avg[1]_i_84_n_0 ),
        .I1(\pixel_data_avg[1]_i_85_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_39_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[1]_i_40 
       (.I0(\pixel_data_avg[1]_i_86_n_0 ),
        .I1(\pixel_data_avg[1]_i_87_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_40_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[1]_i_41 
       (.I0(\pixel_data_avg[1]_i_88_n_0 ),
        .I1(\pixel_data_avg[1]_i_89_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_41_n_0 ),
        .S(col_index[2]));
  MUXF8 \pixel_data_avg_reg[1]_i_6 
       (.I0(\pixel_data_avg_reg[1]_i_18_n_0 ),
        .I1(\pixel_data_avg_reg[1]_i_19_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_6_n_0 ),
        .S(col_index[3]));
  MUXF8 \pixel_data_avg_reg[1]_i_7 
       (.I0(\pixel_data_avg_reg[1]_i_20_n_0 ),
        .I1(\pixel_data_avg_reg[1]_i_21_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_7_n_0 ),
        .S(col_index[3]));
  MUXF8 \pixel_data_avg_reg[1]_i_8 
       (.I0(\pixel_data_avg_reg[1]_i_22_n_0 ),
        .I1(\pixel_data_avg_reg[1]_i_23_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_8_n_0 ),
        .S(col_index[3]));
  MUXF8 \pixel_data_avg_reg[1]_i_9 
       (.I0(\pixel_data_avg_reg[1]_i_24_n_0 ),
        .I1(\pixel_data_avg_reg[1]_i_25_n_0 ),
        .O(\pixel_data_avg_reg[1]_i_9_n_0 ),
        .S(col_index[3]));
  FDRE \pixel_data_avg_reg[2] 
       (.C(p_clk),
        .CE(\pixel_data_avg[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(pixel_data_avg[2]),
        .R(reset));
  FDRE \pixel_data_avg_reg[3] 
       (.C(p_clk),
        .CE(\pixel_data_avg[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(pixel_data_avg[3]),
        .R(reset));
  FDRE \pixel_data_avg_reg[4] 
       (.C(p_clk),
        .CE(\pixel_data_avg[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(pixel_data_avg[4]),
        .R(reset));
  FDRE \pixel_data_avg_reg[5] 
       (.C(p_clk),
        .CE(\pixel_data_avg[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(pixel_data_avg[5]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pixel_data_avg_reg[5]_i_1 
       (.CI(\pixel_data_avg_reg[1]_i_1_n_0 ),
        .CO({\pixel_data_avg_reg[5]_i_1_n_0 ,\pixel_data_avg_reg[5]_i_1_n_1 ,\pixel_data_avg_reg[5]_i_1_n_2 ,\pixel_data_avg_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[5:2]),
        .S(sum[11:8]));
  MUXF8 \pixel_data_avg_reg[5]_i_10 
       (.I0(\pixel_data_avg_reg[5]_i_26_n_0 ),
        .I1(\pixel_data_avg_reg[5]_i_27_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_10_n_0 ),
        .S(col_index[3]));
  MUXF8 \pixel_data_avg_reg[5]_i_11 
       (.I0(\pixel_data_avg_reg[5]_i_28_n_0 ),
        .I1(\pixel_data_avg_reg[5]_i_29_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_11_n_0 ),
        .S(col_index[3]));
  MUXF8 \pixel_data_avg_reg[5]_i_12 
       (.I0(\pixel_data_avg_reg[5]_i_30_n_0 ),
        .I1(\pixel_data_avg_reg[5]_i_31_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_12_n_0 ),
        .S(col_index[3]));
  MUXF8 \pixel_data_avg_reg[5]_i_13 
       (.I0(\pixel_data_avg_reg[5]_i_32_n_0 ),
        .I1(\pixel_data_avg_reg[5]_i_33_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_13_n_0 ),
        .S(col_index[3]));
  MUXF8 \pixel_data_avg_reg[5]_i_14 
       (.I0(\pixel_data_avg_reg[5]_i_34_n_0 ),
        .I1(\pixel_data_avg_reg[5]_i_35_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_14_n_0 ),
        .S(col_index[3]));
  MUXF8 \pixel_data_avg_reg[5]_i_15 
       (.I0(\pixel_data_avg_reg[5]_i_36_n_0 ),
        .I1(\pixel_data_avg_reg[5]_i_37_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_15_n_0 ),
        .S(col_index[3]));
  MUXF8 \pixel_data_avg_reg[5]_i_16 
       (.I0(\pixel_data_avg_reg[5]_i_38_n_0 ),
        .I1(\pixel_data_avg_reg[5]_i_39_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_16_n_0 ),
        .S(col_index[3]));
  MUXF8 \pixel_data_avg_reg[5]_i_17 
       (.I0(\pixel_data_avg_reg[5]_i_40_n_0 ),
        .I1(\pixel_data_avg_reg[5]_i_41_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_17_n_0 ),
        .S(col_index[3]));
  MUXF7 \pixel_data_avg_reg[5]_i_18 
       (.I0(\pixel_data_avg[5]_i_42_n_0 ),
        .I1(\pixel_data_avg[5]_i_43_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_18_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[5]_i_19 
       (.I0(\pixel_data_avg[5]_i_44_n_0 ),
        .I1(\pixel_data_avg[5]_i_45_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_19_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[5]_i_20 
       (.I0(\pixel_data_avg[5]_i_46_n_0 ),
        .I1(\pixel_data_avg[5]_i_47_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_20_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[5]_i_21 
       (.I0(\pixel_data_avg[5]_i_48_n_0 ),
        .I1(\pixel_data_avg[5]_i_49_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_21_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[5]_i_22 
       (.I0(\pixel_data_avg[5]_i_50_n_0 ),
        .I1(\pixel_data_avg[5]_i_51_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_22_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[5]_i_23 
       (.I0(\pixel_data_avg[5]_i_52_n_0 ),
        .I1(\pixel_data_avg[5]_i_53_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_23_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[5]_i_24 
       (.I0(\pixel_data_avg[5]_i_54_n_0 ),
        .I1(\pixel_data_avg[5]_i_55_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_24_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[5]_i_25 
       (.I0(\pixel_data_avg[5]_i_56_n_0 ),
        .I1(\pixel_data_avg[5]_i_57_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_25_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[5]_i_26 
       (.I0(\pixel_data_avg[5]_i_58_n_0 ),
        .I1(\pixel_data_avg[5]_i_59_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_26_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[5]_i_27 
       (.I0(\pixel_data_avg[5]_i_60_n_0 ),
        .I1(\pixel_data_avg[5]_i_61_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_27_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[5]_i_28 
       (.I0(\pixel_data_avg[5]_i_62_n_0 ),
        .I1(\pixel_data_avg[5]_i_63_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_28_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[5]_i_29 
       (.I0(\pixel_data_avg[5]_i_64_n_0 ),
        .I1(\pixel_data_avg[5]_i_65_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_29_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[5]_i_30 
       (.I0(\pixel_data_avg[5]_i_66_n_0 ),
        .I1(\pixel_data_avg[5]_i_67_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_30_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[5]_i_31 
       (.I0(\pixel_data_avg[5]_i_68_n_0 ),
        .I1(\pixel_data_avg[5]_i_69_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_31_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[5]_i_32 
       (.I0(\pixel_data_avg[5]_i_70_n_0 ),
        .I1(\pixel_data_avg[5]_i_71_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_32_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[5]_i_33 
       (.I0(\pixel_data_avg[5]_i_72_n_0 ),
        .I1(\pixel_data_avg[5]_i_73_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_33_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[5]_i_34 
       (.I0(\pixel_data_avg[5]_i_74_n_0 ),
        .I1(\pixel_data_avg[5]_i_75_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_34_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[5]_i_35 
       (.I0(\pixel_data_avg[5]_i_76_n_0 ),
        .I1(\pixel_data_avg[5]_i_77_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_35_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[5]_i_36 
       (.I0(\pixel_data_avg[5]_i_78_n_0 ),
        .I1(\pixel_data_avg[5]_i_79_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_36_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[5]_i_37 
       (.I0(\pixel_data_avg[5]_i_80_n_0 ),
        .I1(\pixel_data_avg[5]_i_81_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_37_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[5]_i_38 
       (.I0(\pixel_data_avg[5]_i_82_n_0 ),
        .I1(\pixel_data_avg[5]_i_83_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_38_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[5]_i_39 
       (.I0(\pixel_data_avg[5]_i_84_n_0 ),
        .I1(\pixel_data_avg[5]_i_85_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_39_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[5]_i_40 
       (.I0(\pixel_data_avg[5]_i_86_n_0 ),
        .I1(\pixel_data_avg[5]_i_87_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_40_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[5]_i_41 
       (.I0(\pixel_data_avg[5]_i_88_n_0 ),
        .I1(\pixel_data_avg[5]_i_89_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_41_n_0 ),
        .S(col_index[2]));
  MUXF8 \pixel_data_avg_reg[5]_i_6 
       (.I0(\pixel_data_avg_reg[5]_i_18_n_0 ),
        .I1(\pixel_data_avg_reg[5]_i_19_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_6_n_0 ),
        .S(col_index[3]));
  MUXF8 \pixel_data_avg_reg[5]_i_7 
       (.I0(\pixel_data_avg_reg[5]_i_20_n_0 ),
        .I1(\pixel_data_avg_reg[5]_i_21_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_7_n_0 ),
        .S(col_index[3]));
  MUXF8 \pixel_data_avg_reg[5]_i_8 
       (.I0(\pixel_data_avg_reg[5]_i_22_n_0 ),
        .I1(\pixel_data_avg_reg[5]_i_23_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_8_n_0 ),
        .S(col_index[3]));
  MUXF8 \pixel_data_avg_reg[5]_i_9 
       (.I0(\pixel_data_avg_reg[5]_i_24_n_0 ),
        .I1(\pixel_data_avg_reg[5]_i_25_n_0 ),
        .O(\pixel_data_avg_reg[5]_i_9_n_0 ),
        .S(col_index[3]));
  FDRE \pixel_data_avg_reg[6] 
       (.C(p_clk),
        .CE(\pixel_data_avg[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(pixel_data_avg[6]),
        .R(reset));
  FDRE \pixel_data_avg_reg[7] 
       (.C(p_clk),
        .CE(\pixel_data_avg[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(pixel_data_avg[7]),
        .R(reset));
  MUXF8 \pixel_data_avg_reg[7]_i_10 
       (.I0(\pixel_data_avg_reg[7]_i_20_n_0 ),
        .I1(\pixel_data_avg_reg[7]_i_21_n_0 ),
        .O(\pixel_data_avg_reg[7]_i_10_n_0 ),
        .S(col_index[3]));
  MUXF8 \pixel_data_avg_reg[7]_i_11 
       (.I0(\pixel_data_avg_reg[7]_i_22_n_0 ),
        .I1(\pixel_data_avg_reg[7]_i_23_n_0 ),
        .O(\pixel_data_avg_reg[7]_i_11_n_0 ),
        .S(col_index[3]));
  MUXF7 \pixel_data_avg_reg[7]_i_12 
       (.I0(\pixel_data_avg[7]_i_24_n_0 ),
        .I1(\pixel_data_avg[7]_i_25_n_0 ),
        .O(\pixel_data_avg_reg[7]_i_12_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[7]_i_13 
       (.I0(\pixel_data_avg[7]_i_26_n_0 ),
        .I1(\pixel_data_avg[7]_i_27_n_0 ),
        .O(\pixel_data_avg_reg[7]_i_13_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[7]_i_14 
       (.I0(\pixel_data_avg[7]_i_28_n_0 ),
        .I1(\pixel_data_avg[7]_i_29_n_0 ),
        .O(\pixel_data_avg_reg[7]_i_14_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[7]_i_15 
       (.I0(\pixel_data_avg[7]_i_30_n_0 ),
        .I1(\pixel_data_avg[7]_i_31_n_0 ),
        .O(\pixel_data_avg_reg[7]_i_15_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[7]_i_16 
       (.I0(\pixel_data_avg[7]_i_32_n_0 ),
        .I1(\pixel_data_avg[7]_i_33_n_0 ),
        .O(\pixel_data_avg_reg[7]_i_16_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[7]_i_17 
       (.I0(\pixel_data_avg[7]_i_34_n_0 ),
        .I1(\pixel_data_avg[7]_i_35_n_0 ),
        .O(\pixel_data_avg_reg[7]_i_17_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[7]_i_18 
       (.I0(\pixel_data_avg[7]_i_36_n_0 ),
        .I1(\pixel_data_avg[7]_i_37_n_0 ),
        .O(\pixel_data_avg_reg[7]_i_18_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[7]_i_19 
       (.I0(\pixel_data_avg[7]_i_38_n_0 ),
        .I1(\pixel_data_avg[7]_i_39_n_0 ),
        .O(\pixel_data_avg_reg[7]_i_19_n_0 ),
        .S(col_index[2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pixel_data_avg_reg[7]_i_2 
       (.CI(\pixel_data_avg_reg[5]_i_1_n_0 ),
        .CO({\NLW_pixel_data_avg_reg[7]_i_2_CO_UNCONNECTED [3:1],\pixel_data_avg_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pixel_data_avg_reg[7]_i_2_O_UNCONNECTED [3:2],p_0_in[7:6]}),
        .S({1'b0,1'b0,sum[13:12]}));
  MUXF7 \pixel_data_avg_reg[7]_i_20 
       (.I0(\pixel_data_avg[7]_i_40_n_0 ),
        .I1(\pixel_data_avg[7]_i_41_n_0 ),
        .O(\pixel_data_avg_reg[7]_i_20_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[7]_i_21 
       (.I0(\pixel_data_avg[7]_i_42_n_0 ),
        .I1(\pixel_data_avg[7]_i_43_n_0 ),
        .O(\pixel_data_avg_reg[7]_i_21_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[7]_i_22 
       (.I0(\pixel_data_avg[7]_i_44_n_0 ),
        .I1(\pixel_data_avg[7]_i_45_n_0 ),
        .O(\pixel_data_avg_reg[7]_i_22_n_0 ),
        .S(col_index[2]));
  MUXF7 \pixel_data_avg_reg[7]_i_23 
       (.I0(\pixel_data_avg[7]_i_46_n_0 ),
        .I1(\pixel_data_avg[7]_i_47_n_0 ),
        .O(\pixel_data_avg_reg[7]_i_23_n_0 ),
        .S(col_index[2]));
  MUXF8 \pixel_data_avg_reg[7]_i_6 
       (.I0(\pixel_data_avg_reg[7]_i_12_n_0 ),
        .I1(\pixel_data_avg_reg[7]_i_13_n_0 ),
        .O(\pixel_data_avg_reg[7]_i_6_n_0 ),
        .S(col_index[3]));
  MUXF8 \pixel_data_avg_reg[7]_i_7 
       (.I0(\pixel_data_avg_reg[7]_i_14_n_0 ),
        .I1(\pixel_data_avg_reg[7]_i_15_n_0 ),
        .O(\pixel_data_avg_reg[7]_i_7_n_0 ),
        .S(col_index[3]));
  MUXF8 \pixel_data_avg_reg[7]_i_8 
       (.I0(\pixel_data_avg_reg[7]_i_16_n_0 ),
        .I1(\pixel_data_avg_reg[7]_i_17_n_0 ),
        .O(\pixel_data_avg_reg[7]_i_8_n_0 ),
        .S(col_index[3]));
  MUXF8 \pixel_data_avg_reg[7]_i_9 
       (.I0(\pixel_data_avg_reg[7]_i_18_n_0 ),
        .I1(\pixel_data_avg_reg[7]_i_19_n_0 ),
        .O(\pixel_data_avg_reg[7]_i_9_n_0 ),
        .S(col_index[3]));
  LUT4 #(
    .INIT(16'hFF08)) 
    \sum[0][13]_i_1 
       (.I0(input_valid),
        .I1(\sum[0][13]_i_3_n_0 ),
        .I2(col_index[5]),
        .I3(reset),
        .O(\sum[0][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \sum[0][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[0][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[0][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \sum[0][13]_i_3 
       (.I0(col_index[3]),
        .I1(\y_count_reg_n_0_[2] ),
        .I2(\sum[0][13]_i_5_n_0 ),
        .I3(\y_count_reg_n_0_[1] ),
        .I4(col_index[2]),
        .I5(col_index[4]),
        .O(\sum[0][13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1110111)) 
    \sum[0][13]_i_4 
       (.I0(col_index[1]),
        .I1(col_index[0]),
        .I2(\y_count_reg_n_0_[2] ),
        .I3(\y_count_reg_n_0_[1] ),
        .I4(\sum[0][13]_i_6_n_0 ),
        .I5(col_index[2]),
        .O(\sum[0][13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \sum[0][13]_i_5 
       (.I0(x_count[1]),
        .I1(x_count[2]),
        .I2(col_index[0]),
        .I3(col_index[1]),
        .I4(x_count[0]),
        .I5(\y_count_reg_n_0_[0] ),
        .O(\sum[0][13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000007FFF)) 
    \sum[0][13]_i_6 
       (.I0(x_count[2]),
        .I1(x_count[0]),
        .I2(x_count[1]),
        .I3(\y_count_reg_n_0_[0] ),
        .I4(col_index[0]),
        .I5(col_index[1]),
        .O(\sum[0][13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    \sum[0][3]_i_2 
       (.I0(\sum_reg[0][3]_i_6_n_0 ),
        .I1(col_index[4]),
        .I2(\sum_reg[0][3]_i_7_n_0 ),
        .I3(col_index[5]),
        .I4(\sum_reg[0][3]_i_8_n_0 ),
        .I5(pixel_data_grayscale[3]),
        .O(\sum[0][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    \sum[0][3]_i_3 
       (.I0(\sum_reg[0][3]_i_9_n_0 ),
        .I1(col_index[4]),
        .I2(\sum_reg[0][3]_i_10_n_0 ),
        .I3(col_index[5]),
        .I4(\sum_reg[0][3]_i_11_n_0 ),
        .I5(pixel_data_grayscale[2]),
        .O(\sum[0][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    \sum[0][3]_i_4 
       (.I0(\sum_reg[0][3]_i_12_n_0 ),
        .I1(col_index[4]),
        .I2(\sum_reg[0][3]_i_13_n_0 ),
        .I3(col_index[5]),
        .I4(\sum_reg[0][3]_i_14_n_0 ),
        .I5(pixel_data_grayscale[1]),
        .O(\sum[0][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_42 
       (.I0(\sum_reg[3] [3]),
        .I1(\sum_reg[2] [3]),
        .I2(col_index[1]),
        .I3(\sum_reg[1] [3]),
        .I4(col_index[0]),
        .I5(\sum_reg[0] [3]),
        .O(\sum[0][3]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_43 
       (.I0(\sum_reg[7] [3]),
        .I1(\sum_reg[6] [3]),
        .I2(col_index[1]),
        .I3(\sum_reg[5] [3]),
        .I4(col_index[0]),
        .I5(\sum_reg[4] [3]),
        .O(\sum[0][3]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_44 
       (.I0(\sum_reg[11] [3]),
        .I1(\sum_reg[10] [3]),
        .I2(col_index[1]),
        .I3(\sum_reg[9] [3]),
        .I4(col_index[0]),
        .I5(\sum_reg[8] [3]),
        .O(\sum[0][3]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_45 
       (.I0(\sum_reg[15] [3]),
        .I1(\sum_reg[14] [3]),
        .I2(col_index[1]),
        .I3(\sum_reg[13] [3]),
        .I4(col_index[0]),
        .I5(\sum_reg[12] [3]),
        .O(\sum[0][3]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_46 
       (.I0(\sum_reg[19] [3]),
        .I1(\sum_reg[18] [3]),
        .I2(col_index[1]),
        .I3(\sum_reg[17] [3]),
        .I4(col_index[0]),
        .I5(\sum_reg[16] [3]),
        .O(\sum[0][3]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_47 
       (.I0(\sum_reg[23] [3]),
        .I1(\sum_reg[22] [3]),
        .I2(col_index[1]),
        .I3(\sum_reg[21] [3]),
        .I4(col_index[0]),
        .I5(\sum_reg[20] [3]),
        .O(\sum[0][3]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_48 
       (.I0(\sum_reg[27] [3]),
        .I1(\sum_reg[26] [3]),
        .I2(col_index[1]),
        .I3(\sum_reg[25] [3]),
        .I4(col_index[0]),
        .I5(\sum_reg[24] [3]),
        .O(\sum[0][3]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_49 
       (.I0(\sum_reg[31] [3]),
        .I1(\sum_reg[30] [3]),
        .I2(col_index[1]),
        .I3(\sum_reg[29] [3]),
        .I4(col_index[0]),
        .I5(\sum_reg[28] [3]),
        .O(\sum[0][3]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h001DFF1DFFE200E2)) 
    \sum[0][3]_i_5 
       (.I0(\sum_reg[0][3]_i_15_n_0 ),
        .I1(col_index[4]),
        .I2(\sum_reg[0][3]_i_16_n_0 ),
        .I3(col_index[5]),
        .I4(\sum_reg[0][3]_i_17_n_0 ),
        .I5(pixel_data_grayscale[0]),
        .O(\sum[0][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_50 
       (.I0(\sum_reg[35] [3]),
        .I1(\sum_reg[34] [3]),
        .I2(col_index[1]),
        .I3(\sum_reg[33] [3]),
        .I4(col_index[0]),
        .I5(\sum_reg[32] [3]),
        .O(\sum[0][3]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_51 
       (.I0(\sum_reg[39] [3]),
        .I1(\sum_reg[38] [3]),
        .I2(col_index[1]),
        .I3(\sum_reg[37] [3]),
        .I4(col_index[0]),
        .I5(\sum_reg[36] [3]),
        .O(\sum[0][3]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_52 
       (.I0(\sum_reg[43] [3]),
        .I1(\sum_reg[42] [3]),
        .I2(col_index[1]),
        .I3(\sum_reg[41] [3]),
        .I4(col_index[0]),
        .I5(\sum_reg[40] [3]),
        .O(\sum[0][3]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_53 
       (.I0(\sum_reg[47] [3]),
        .I1(\sum_reg[46] [3]),
        .I2(col_index[1]),
        .I3(\sum_reg[45] [3]),
        .I4(col_index[0]),
        .I5(\sum_reg[44] [3]),
        .O(\sum[0][3]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_54 
       (.I0(\sum_reg[3] [2]),
        .I1(\sum_reg[2] [2]),
        .I2(col_index[1]),
        .I3(\sum_reg[1] [2]),
        .I4(col_index[0]),
        .I5(\sum_reg[0] [2]),
        .O(\sum[0][3]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_55 
       (.I0(\sum_reg[7] [2]),
        .I1(\sum_reg[6] [2]),
        .I2(col_index[1]),
        .I3(\sum_reg[5] [2]),
        .I4(col_index[0]),
        .I5(\sum_reg[4] [2]),
        .O(\sum[0][3]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_56 
       (.I0(\sum_reg[11] [2]),
        .I1(\sum_reg[10] [2]),
        .I2(col_index[1]),
        .I3(\sum_reg[9] [2]),
        .I4(col_index[0]),
        .I5(\sum_reg[8] [2]),
        .O(\sum[0][3]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_57 
       (.I0(\sum_reg[15] [2]),
        .I1(\sum_reg[14] [2]),
        .I2(col_index[1]),
        .I3(\sum_reg[13] [2]),
        .I4(col_index[0]),
        .I5(\sum_reg[12] [2]),
        .O(\sum[0][3]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_58 
       (.I0(\sum_reg[19] [2]),
        .I1(\sum_reg[18] [2]),
        .I2(col_index[1]),
        .I3(\sum_reg[17] [2]),
        .I4(col_index[0]),
        .I5(\sum_reg[16] [2]),
        .O(\sum[0][3]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_59 
       (.I0(\sum_reg[23] [2]),
        .I1(\sum_reg[22] [2]),
        .I2(col_index[1]),
        .I3(\sum_reg[21] [2]),
        .I4(col_index[0]),
        .I5(\sum_reg[20] [2]),
        .O(\sum[0][3]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_60 
       (.I0(\sum_reg[27] [2]),
        .I1(\sum_reg[26] [2]),
        .I2(col_index[1]),
        .I3(\sum_reg[25] [2]),
        .I4(col_index[0]),
        .I5(\sum_reg[24] [2]),
        .O(\sum[0][3]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_61 
       (.I0(\sum_reg[31] [2]),
        .I1(\sum_reg[30] [2]),
        .I2(col_index[1]),
        .I3(\sum_reg[29] [2]),
        .I4(col_index[0]),
        .I5(\sum_reg[28] [2]),
        .O(\sum[0][3]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_62 
       (.I0(\sum_reg[35] [2]),
        .I1(\sum_reg[34] [2]),
        .I2(col_index[1]),
        .I3(\sum_reg[33] [2]),
        .I4(col_index[0]),
        .I5(\sum_reg[32] [2]),
        .O(\sum[0][3]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_63 
       (.I0(\sum_reg[39] [2]),
        .I1(\sum_reg[38] [2]),
        .I2(col_index[1]),
        .I3(\sum_reg[37] [2]),
        .I4(col_index[0]),
        .I5(\sum_reg[36] [2]),
        .O(\sum[0][3]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_64 
       (.I0(\sum_reg[43] [2]),
        .I1(\sum_reg[42] [2]),
        .I2(col_index[1]),
        .I3(\sum_reg[41] [2]),
        .I4(col_index[0]),
        .I5(\sum_reg[40] [2]),
        .O(\sum[0][3]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_65 
       (.I0(\sum_reg[47] [2]),
        .I1(\sum_reg[46] [2]),
        .I2(col_index[1]),
        .I3(\sum_reg[45] [2]),
        .I4(col_index[0]),
        .I5(\sum_reg[44] [2]),
        .O(\sum[0][3]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_66 
       (.I0(\sum_reg[3] [1]),
        .I1(\sum_reg[2] [1]),
        .I2(col_index[1]),
        .I3(\sum_reg[1] [1]),
        .I4(col_index[0]),
        .I5(\sum_reg[0] [1]),
        .O(\sum[0][3]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_67 
       (.I0(\sum_reg[7] [1]),
        .I1(\sum_reg[6] [1]),
        .I2(col_index[1]),
        .I3(\sum_reg[5] [1]),
        .I4(col_index[0]),
        .I5(\sum_reg[4] [1]),
        .O(\sum[0][3]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_68 
       (.I0(\sum_reg[11] [1]),
        .I1(\sum_reg[10] [1]),
        .I2(col_index[1]),
        .I3(\sum_reg[9] [1]),
        .I4(col_index[0]),
        .I5(\sum_reg[8] [1]),
        .O(\sum[0][3]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_69 
       (.I0(\sum_reg[15] [1]),
        .I1(\sum_reg[14] [1]),
        .I2(col_index[1]),
        .I3(\sum_reg[13] [1]),
        .I4(col_index[0]),
        .I5(\sum_reg[12] [1]),
        .O(\sum[0][3]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_70 
       (.I0(\sum_reg[19] [1]),
        .I1(\sum_reg[18] [1]),
        .I2(col_index[1]),
        .I3(\sum_reg[17] [1]),
        .I4(col_index[0]),
        .I5(\sum_reg[16] [1]),
        .O(\sum[0][3]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_71 
       (.I0(\sum_reg[23] [1]),
        .I1(\sum_reg[22] [1]),
        .I2(col_index[1]),
        .I3(\sum_reg[21] [1]),
        .I4(col_index[0]),
        .I5(\sum_reg[20] [1]),
        .O(\sum[0][3]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_72 
       (.I0(\sum_reg[27] [1]),
        .I1(\sum_reg[26] [1]),
        .I2(col_index[1]),
        .I3(\sum_reg[25] [1]),
        .I4(col_index[0]),
        .I5(\sum_reg[24] [1]),
        .O(\sum[0][3]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_73 
       (.I0(\sum_reg[31] [1]),
        .I1(\sum_reg[30] [1]),
        .I2(col_index[1]),
        .I3(\sum_reg[29] [1]),
        .I4(col_index[0]),
        .I5(\sum_reg[28] [1]),
        .O(\sum[0][3]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_74 
       (.I0(\sum_reg[35] [1]),
        .I1(\sum_reg[34] [1]),
        .I2(col_index[1]),
        .I3(\sum_reg[33] [1]),
        .I4(col_index[0]),
        .I5(\sum_reg[32] [1]),
        .O(\sum[0][3]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_75 
       (.I0(\sum_reg[39] [1]),
        .I1(\sum_reg[38] [1]),
        .I2(col_index[1]),
        .I3(\sum_reg[37] [1]),
        .I4(col_index[0]),
        .I5(\sum_reg[36] [1]),
        .O(\sum[0][3]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_76 
       (.I0(\sum_reg[43] [1]),
        .I1(\sum_reg[42] [1]),
        .I2(col_index[1]),
        .I3(\sum_reg[41] [1]),
        .I4(col_index[0]),
        .I5(\sum_reg[40] [1]),
        .O(\sum[0][3]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_77 
       (.I0(\sum_reg[47] [1]),
        .I1(\sum_reg[46] [1]),
        .I2(col_index[1]),
        .I3(\sum_reg[45] [1]),
        .I4(col_index[0]),
        .I5(\sum_reg[44] [1]),
        .O(\sum[0][3]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_78 
       (.I0(\sum_reg[3] [0]),
        .I1(\sum_reg[2] [0]),
        .I2(col_index[1]),
        .I3(\sum_reg[1] [0]),
        .I4(col_index[0]),
        .I5(\sum_reg[0] [0]),
        .O(\sum[0][3]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_79 
       (.I0(\sum_reg[7] [0]),
        .I1(\sum_reg[6] [0]),
        .I2(col_index[1]),
        .I3(\sum_reg[5] [0]),
        .I4(col_index[0]),
        .I5(\sum_reg[4] [0]),
        .O(\sum[0][3]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_80 
       (.I0(\sum_reg[11] [0]),
        .I1(\sum_reg[10] [0]),
        .I2(col_index[1]),
        .I3(\sum_reg[9] [0]),
        .I4(col_index[0]),
        .I5(\sum_reg[8] [0]),
        .O(\sum[0][3]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_81 
       (.I0(\sum_reg[15] [0]),
        .I1(\sum_reg[14] [0]),
        .I2(col_index[1]),
        .I3(\sum_reg[13] [0]),
        .I4(col_index[0]),
        .I5(\sum_reg[12] [0]),
        .O(\sum[0][3]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_82 
       (.I0(\sum_reg[19] [0]),
        .I1(\sum_reg[18] [0]),
        .I2(col_index[1]),
        .I3(\sum_reg[17] [0]),
        .I4(col_index[0]),
        .I5(\sum_reg[16] [0]),
        .O(\sum[0][3]_i_82_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_83 
       (.I0(\sum_reg[23] [0]),
        .I1(\sum_reg[22] [0]),
        .I2(col_index[1]),
        .I3(\sum_reg[21] [0]),
        .I4(col_index[0]),
        .I5(\sum_reg[20] [0]),
        .O(\sum[0][3]_i_83_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_84 
       (.I0(\sum_reg[27] [0]),
        .I1(\sum_reg[26] [0]),
        .I2(col_index[1]),
        .I3(\sum_reg[25] [0]),
        .I4(col_index[0]),
        .I5(\sum_reg[24] [0]),
        .O(\sum[0][3]_i_84_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_85 
       (.I0(\sum_reg[31] [0]),
        .I1(\sum_reg[30] [0]),
        .I2(col_index[1]),
        .I3(\sum_reg[29] [0]),
        .I4(col_index[0]),
        .I5(\sum_reg[28] [0]),
        .O(\sum[0][3]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_86 
       (.I0(\sum_reg[35] [0]),
        .I1(\sum_reg[34] [0]),
        .I2(col_index[1]),
        .I3(\sum_reg[33] [0]),
        .I4(col_index[0]),
        .I5(\sum_reg[32] [0]),
        .O(\sum[0][3]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_87 
       (.I0(\sum_reg[39] [0]),
        .I1(\sum_reg[38] [0]),
        .I2(col_index[1]),
        .I3(\sum_reg[37] [0]),
        .I4(col_index[0]),
        .I5(\sum_reg[36] [0]),
        .O(\sum[0][3]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_88 
       (.I0(\sum_reg[43] [0]),
        .I1(\sum_reg[42] [0]),
        .I2(col_index[1]),
        .I3(\sum_reg[41] [0]),
        .I4(col_index[0]),
        .I5(\sum_reg[40] [0]),
        .O(\sum[0][3]_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sum[0][3]_i_89 
       (.I0(\sum_reg[47] [0]),
        .I1(\sum_reg[46] [0]),
        .I2(col_index[1]),
        .I3(\sum_reg[45] [0]),
        .I4(col_index[0]),
        .I5(\sum_reg[44] [0]),
        .O(\sum[0][3]_i_89_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \sum[10][13]_i_1 
       (.I0(input_valid),
        .I1(\sum[10][13]_i_3_n_0 ),
        .I2(col_index[5]),
        .I3(reset),
        .O(\sum[10][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \sum[10][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[2][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[10][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \sum[10][13]_i_3 
       (.I0(col_index[3]),
        .I1(\y_count_reg_n_0_[2] ),
        .I2(\sum[2][13]_i_5_n_0 ),
        .I3(\y_count_reg_n_0_[1] ),
        .I4(col_index[2]),
        .I5(col_index[4]),
        .O(\sum[10][13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0020)) 
    \sum[11][13]_i_1 
       (.I0(input_valid),
        .I1(col_index[4]),
        .I2(\sum[11][13]_i_3_n_0 ),
        .I3(col_index[5]),
        .I4(reset),
        .O(\sum[11][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \sum[11][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[3][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[11][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \sum[11][13]_i_3 
       (.I0(col_index[2]),
        .I1(\y_count_reg_n_0_[1] ),
        .I2(\y_count[2]_i_3_n_0 ),
        .I3(\y_count_reg_n_0_[0] ),
        .I4(\y_count_reg_n_0_[2] ),
        .I5(col_index[3]),
        .O(\sum[11][13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \sum[12][13]_i_1 
       (.I0(input_valid),
        .I1(\sum[12][13]_i_3_n_0 ),
        .I2(col_index[5]),
        .I3(reset),
        .O(\sum[12][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \sum[12][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[4][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[12][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \sum[12][13]_i_3 
       (.I0(col_index[3]),
        .I1(\y_count_reg_n_0_[2] ),
        .I2(\sum[0][13]_i_5_n_0 ),
        .I3(\y_count_reg_n_0_[1] ),
        .I4(col_index[2]),
        .I5(col_index[4]),
        .O(\sum[12][13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \sum[13][13]_i_1 
       (.I0(input_valid),
        .I1(\sum[13][13]_i_3_n_0 ),
        .I2(col_index[5]),
        .I3(reset),
        .O(\sum[13][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \sum[13][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[5][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[13][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \sum[13][13]_i_3 
       (.I0(col_index[3]),
        .I1(\y_count_reg_n_0_[2] ),
        .I2(\sum[1][13]_i_5_n_0 ),
        .I3(\y_count_reg_n_0_[1] ),
        .I4(col_index[2]),
        .I5(col_index[4]),
        .O(\sum[13][13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \sum[14][13]_i_1 
       (.I0(input_valid),
        .I1(\sum[14][13]_i_3_n_0 ),
        .I2(col_index[5]),
        .I3(reset),
        .O(\sum[14][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \sum[14][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[6][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[14][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \sum[14][13]_i_3 
       (.I0(col_index[3]),
        .I1(\y_count_reg_n_0_[2] ),
        .I2(\sum[2][13]_i_5_n_0 ),
        .I3(\y_count_reg_n_0_[1] ),
        .I4(col_index[2]),
        .I5(col_index[4]),
        .O(\sum[14][13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0020)) 
    \sum[15][13]_i_1 
       (.I0(input_valid),
        .I1(col_index[4]),
        .I2(\sum[15][13]_i_3_n_0 ),
        .I3(col_index[5]),
        .I4(reset),
        .O(\sum[15][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \sum[15][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[7][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[15][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sum[15][13]_i_3 
       (.I0(col_index[2]),
        .I1(\y_count_reg_n_0_[1] ),
        .I2(\y_count[2]_i_3_n_0 ),
        .I3(\y_count_reg_n_0_[0] ),
        .I4(\y_count_reg_n_0_[2] ),
        .I5(col_index[3]),
        .O(\sum[15][13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \sum[16][13]_i_1 
       (.I0(input_valid),
        .I1(col_index[4]),
        .I2(\sum[16][13]_i_3_n_0 ),
        .I3(col_index[5]),
        .I4(reset),
        .O(\sum[16][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \sum[16][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[0][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[16][13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \sum[16][13]_i_3 
       (.I0(col_index[2]),
        .I1(\y_count_reg_n_0_[1] ),
        .I2(\sum[0][13]_i_5_n_0 ),
        .I3(\y_count_reg_n_0_[2] ),
        .I4(col_index[3]),
        .O(\sum[16][13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \sum[17][13]_i_1 
       (.I0(input_valid),
        .I1(col_index[4]),
        .I2(\sum[17][13]_i_3_n_0 ),
        .I3(col_index[5]),
        .I4(reset),
        .O(\sum[17][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \sum[17][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[1][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[17][13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \sum[17][13]_i_3 
       (.I0(col_index[2]),
        .I1(\y_count_reg_n_0_[1] ),
        .I2(\sum[1][13]_i_5_n_0 ),
        .I3(\y_count_reg_n_0_[2] ),
        .I4(col_index[3]),
        .O(\sum[17][13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \sum[18][13]_i_1 
       (.I0(input_valid),
        .I1(col_index[4]),
        .I2(\sum[18][13]_i_3_n_0 ),
        .I3(col_index[5]),
        .I4(reset),
        .O(\sum[18][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \sum[18][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[2][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[18][13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \sum[18][13]_i_3 
       (.I0(col_index[2]),
        .I1(\y_count_reg_n_0_[1] ),
        .I2(\sum[2][13]_i_5_n_0 ),
        .I3(\y_count_reg_n_0_[2] ),
        .I4(col_index[3]),
        .O(\sum[18][13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \sum[19][13]_i_1 
       (.I0(input_valid),
        .I1(col_index[4]),
        .I2(\sum[3][13]_i_3_n_0 ),
        .I3(col_index[5]),
        .I4(reset),
        .O(\sum[19][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \sum[19][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[3][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[19][13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \sum[1][13]_i_1 
       (.I0(input_valid),
        .I1(\sum[1][13]_i_3_n_0 ),
        .I2(col_index[5]),
        .I3(reset),
        .O(\sum[1][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \sum[1][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[1][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[1][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \sum[1][13]_i_3 
       (.I0(col_index[3]),
        .I1(\y_count_reg_n_0_[2] ),
        .I2(\sum[1][13]_i_5_n_0 ),
        .I3(\y_count_reg_n_0_[1] ),
        .I4(col_index[2]),
        .I5(col_index[4]),
        .O(\sum[1][13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F4440444)) 
    \sum[1][13]_i_4 
       (.I0(col_index[1]),
        .I1(col_index[0]),
        .I2(\y_count_reg_n_0_[2] ),
        .I3(\y_count_reg_n_0_[1] ),
        .I4(\sum[1][13]_i_6_n_0 ),
        .I5(col_index[2]),
        .O(\sum[1][13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \sum[1][13]_i_5 
       (.I0(x_count[1]),
        .I1(x_count[2]),
        .I2(col_index[0]),
        .I3(col_index[1]),
        .I4(x_count[0]),
        .I5(\y_count_reg_n_0_[0] ),
        .O(\sum[1][13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFF0000)) 
    \sum[1][13]_i_6 
       (.I0(x_count[2]),
        .I1(x_count[0]),
        .I2(x_count[1]),
        .I3(\y_count_reg_n_0_[0] ),
        .I4(col_index[0]),
        .I5(col_index[1]),
        .O(\sum[1][13]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \sum[20][13]_i_1 
       (.I0(input_valid),
        .I1(col_index[4]),
        .I2(\sum[20][13]_i_3_n_0 ),
        .I3(col_index[5]),
        .I4(reset),
        .O(\sum[20][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \sum[20][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[4][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[20][13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \sum[20][13]_i_3 
       (.I0(col_index[2]),
        .I1(\y_count_reg_n_0_[1] ),
        .I2(\sum[0][13]_i_5_n_0 ),
        .I3(\y_count_reg_n_0_[2] ),
        .I4(col_index[3]),
        .O(\sum[20][13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \sum[21][13]_i_1 
       (.I0(input_valid),
        .I1(col_index[4]),
        .I2(\sum[21][13]_i_3_n_0 ),
        .I3(col_index[5]),
        .I4(reset),
        .O(\sum[21][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \sum[21][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[5][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[21][13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \sum[21][13]_i_3 
       (.I0(col_index[2]),
        .I1(\y_count_reg_n_0_[1] ),
        .I2(\sum[1][13]_i_5_n_0 ),
        .I3(\y_count_reg_n_0_[2] ),
        .I4(col_index[3]),
        .O(\sum[21][13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \sum[22][13]_i_1 
       (.I0(input_valid),
        .I1(col_index[4]),
        .I2(\sum[22][13]_i_3_n_0 ),
        .I3(col_index[5]),
        .I4(reset),
        .O(\sum[22][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \sum[22][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[6][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[22][13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \sum[22][13]_i_3 
       (.I0(col_index[2]),
        .I1(\y_count_reg_n_0_[1] ),
        .I2(\sum[2][13]_i_5_n_0 ),
        .I3(\y_count_reg_n_0_[2] ),
        .I4(col_index[3]),
        .O(\sum[22][13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \sum[23][13]_i_1 
       (.I0(input_valid),
        .I1(col_index[4]),
        .I2(\sum[7][13]_i_3_n_0 ),
        .I3(col_index[5]),
        .I4(reset),
        .O(\sum[23][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \sum[23][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[7][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[23][13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \sum[24][13]_i_1 
       (.I0(input_valid),
        .I1(col_index[4]),
        .I2(\sum[24][13]_i_3_n_0 ),
        .I3(col_index[5]),
        .I4(reset),
        .O(\sum[24][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \sum[24][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[0][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[24][13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \sum[24][13]_i_3 
       (.I0(col_index[2]),
        .I1(\y_count_reg_n_0_[1] ),
        .I2(\sum[0][13]_i_5_n_0 ),
        .I3(\y_count_reg_n_0_[2] ),
        .I4(col_index[3]),
        .O(\sum[24][13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \sum[25][13]_i_1 
       (.I0(input_valid),
        .I1(col_index[4]),
        .I2(\sum[25][13]_i_3_n_0 ),
        .I3(col_index[5]),
        .I4(reset),
        .O(\sum[25][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \sum[25][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[1][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[25][13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \sum[25][13]_i_3 
       (.I0(col_index[2]),
        .I1(\y_count_reg_n_0_[1] ),
        .I2(\sum[1][13]_i_5_n_0 ),
        .I3(\y_count_reg_n_0_[2] ),
        .I4(col_index[3]),
        .O(\sum[25][13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \sum[26][13]_i_1 
       (.I0(input_valid),
        .I1(col_index[4]),
        .I2(\sum[26][13]_i_3_n_0 ),
        .I3(col_index[5]),
        .I4(reset),
        .O(\sum[26][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \sum[26][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[2][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[26][13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \sum[26][13]_i_3 
       (.I0(col_index[2]),
        .I1(\y_count_reg_n_0_[1] ),
        .I2(\sum[2][13]_i_5_n_0 ),
        .I3(\y_count_reg_n_0_[2] ),
        .I4(col_index[3]),
        .O(\sum[26][13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \sum[27][13]_i_1 
       (.I0(input_valid),
        .I1(col_index[4]),
        .I2(\sum[11][13]_i_3_n_0 ),
        .I3(col_index[5]),
        .I4(reset),
        .O(\sum[27][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \sum[27][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[3][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[27][13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \sum[28][13]_i_1 
       (.I0(input_valid),
        .I1(col_index[4]),
        .I2(\sum[28][13]_i_3_n_0 ),
        .I3(col_index[5]),
        .I4(reset),
        .O(\sum[28][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \sum[28][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[4][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[28][13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \sum[28][13]_i_3 
       (.I0(col_index[2]),
        .I1(\y_count_reg_n_0_[1] ),
        .I2(\sum[0][13]_i_5_n_0 ),
        .I3(\y_count_reg_n_0_[2] ),
        .I4(col_index[3]),
        .O(\sum[28][13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \sum[29][13]_i_1 
       (.I0(input_valid),
        .I1(col_index[4]),
        .I2(\sum[29][13]_i_3_n_0 ),
        .I3(col_index[5]),
        .I4(reset),
        .O(\sum[29][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \sum[29][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[5][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[29][13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \sum[29][13]_i_3 
       (.I0(col_index[2]),
        .I1(\y_count_reg_n_0_[1] ),
        .I2(\sum[1][13]_i_5_n_0 ),
        .I3(\y_count_reg_n_0_[2] ),
        .I4(col_index[3]),
        .O(\sum[29][13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \sum[2][13]_i_1 
       (.I0(input_valid),
        .I1(\sum[2][13]_i_3_n_0 ),
        .I2(col_index[5]),
        .I3(reset),
        .O(\sum[2][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \sum[2][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[2][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[2][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \sum[2][13]_i_3 
       (.I0(col_index[3]),
        .I1(\y_count_reg_n_0_[2] ),
        .I2(\sum[2][13]_i_5_n_0 ),
        .I3(\y_count_reg_n_0_[1] ),
        .I4(col_index[2]),
        .I5(col_index[4]),
        .O(\sum[2][13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F4440444)) 
    \sum[2][13]_i_4 
       (.I0(col_index[0]),
        .I1(col_index[1]),
        .I2(\y_count_reg_n_0_[2] ),
        .I3(\y_count_reg_n_0_[1] ),
        .I4(\sum[2][13]_i_6_n_0 ),
        .I5(col_index[2]),
        .O(\sum[2][13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \sum[2][13]_i_5 
       (.I0(x_count[1]),
        .I1(x_count[2]),
        .I2(col_index[1]),
        .I3(col_index[0]),
        .I4(x_count[0]),
        .I5(\y_count_reg_n_0_[0] ),
        .O(\sum[2][13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFF0000)) 
    \sum[2][13]_i_6 
       (.I0(x_count[2]),
        .I1(x_count[0]),
        .I2(x_count[1]),
        .I3(\y_count_reg_n_0_[0] ),
        .I4(col_index[1]),
        .I5(col_index[0]),
        .O(\sum[2][13]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \sum[30][13]_i_1 
       (.I0(input_valid),
        .I1(col_index[4]),
        .I2(\sum[30][13]_i_3_n_0 ),
        .I3(col_index[5]),
        .I4(reset),
        .O(\sum[30][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \sum[30][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[6][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[30][13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \sum[30][13]_i_3 
       (.I0(col_index[2]),
        .I1(\y_count_reg_n_0_[1] ),
        .I2(\sum[2][13]_i_5_n_0 ),
        .I3(\y_count_reg_n_0_[2] ),
        .I4(col_index[3]),
        .O(\sum[30][13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \sum[31][13]_i_1 
       (.I0(input_valid),
        .I1(col_index[4]),
        .I2(\sum[15][13]_i_3_n_0 ),
        .I3(col_index[5]),
        .I4(reset),
        .O(\sum[31][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \sum[31][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[7][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[31][13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \sum[32][13]_i_1 
       (.I0(input_valid),
        .I1(\sum[0][13]_i_3_n_0 ),
        .I2(col_index[5]),
        .I3(reset),
        .O(\sum[32][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \sum[32][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[0][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[32][13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \sum[33][13]_i_1 
       (.I0(input_valid),
        .I1(\sum[1][13]_i_3_n_0 ),
        .I2(col_index[5]),
        .I3(reset),
        .O(\sum[33][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \sum[33][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[1][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[33][13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \sum[34][13]_i_1 
       (.I0(input_valid),
        .I1(\sum[2][13]_i_3_n_0 ),
        .I2(col_index[5]),
        .I3(reset),
        .O(\sum[34][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \sum[34][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[2][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[34][13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \sum[35][13]_i_1 
       (.I0(input_valid),
        .I1(col_index[4]),
        .I2(\sum[3][13]_i_3_n_0 ),
        .I3(col_index[5]),
        .I4(reset),
        .O(\sum[35][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \sum[35][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[3][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[35][13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \sum[36][13]_i_1 
       (.I0(input_valid),
        .I1(\sum[4][13]_i_3_n_0 ),
        .I2(col_index[5]),
        .I3(reset),
        .O(\sum[36][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \sum[36][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[4][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[36][13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \sum[37][13]_i_1 
       (.I0(input_valid),
        .I1(\sum[5][13]_i_3_n_0 ),
        .I2(col_index[5]),
        .I3(reset),
        .O(\sum[37][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \sum[37][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[5][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[37][13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \sum[38][13]_i_1 
       (.I0(input_valid),
        .I1(\sum[6][13]_i_3_n_0 ),
        .I2(col_index[5]),
        .I3(reset),
        .O(\sum[38][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \sum[38][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[6][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[38][13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \sum[39][13]_i_1 
       (.I0(input_valid),
        .I1(col_index[4]),
        .I2(\sum[7][13]_i_3_n_0 ),
        .I3(col_index[5]),
        .I4(reset),
        .O(\sum[39][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \sum[39][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[7][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[39][13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0020)) 
    \sum[3][13]_i_1 
       (.I0(input_valid),
        .I1(col_index[4]),
        .I2(\sum[3][13]_i_3_n_0 ),
        .I3(col_index[5]),
        .I4(reset),
        .O(\sum[3][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \sum[3][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[3][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[3][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \sum[3][13]_i_3 
       (.I0(col_index[2]),
        .I1(\y_count_reg_n_0_[1] ),
        .I2(\y_count[2]_i_3_n_0 ),
        .I3(\y_count_reg_n_0_[0] ),
        .I4(\y_count_reg_n_0_[2] ),
        .I5(col_index[3]),
        .O(\sum[3][13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8880888)) 
    \sum[3][13]_i_4 
       (.I0(col_index[1]),
        .I1(col_index[0]),
        .I2(\y_count_reg_n_0_[2] ),
        .I3(\y_count_reg_n_0_[1] ),
        .I4(\sum[3][13]_i_5_n_0 ),
        .I5(col_index[2]),
        .O(\sum[3][13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000000000000)) 
    \sum[3][13]_i_5 
       (.I0(x_count[2]),
        .I1(x_count[0]),
        .I2(x_count[1]),
        .I3(\y_count_reg_n_0_[0] ),
        .I4(col_index[0]),
        .I5(col_index[1]),
        .O(\sum[3][13]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \sum[40][13]_i_1 
       (.I0(input_valid),
        .I1(\sum[8][13]_i_3_n_0 ),
        .I2(col_index[5]),
        .I3(reset),
        .O(\sum[40][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \sum[40][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[0][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[40][13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \sum[41][13]_i_1 
       (.I0(input_valid),
        .I1(\sum[9][13]_i_3_n_0 ),
        .I2(col_index[5]),
        .I3(reset),
        .O(\sum[41][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \sum[41][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[1][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[41][13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \sum[42][13]_i_1 
       (.I0(input_valid),
        .I1(\sum[10][13]_i_3_n_0 ),
        .I2(col_index[5]),
        .I3(reset),
        .O(\sum[42][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \sum[42][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[2][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[42][13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \sum[43][13]_i_1 
       (.I0(input_valid),
        .I1(col_index[4]),
        .I2(\sum[11][13]_i_3_n_0 ),
        .I3(col_index[5]),
        .I4(reset),
        .O(\sum[43][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \sum[43][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[3][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[43][13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \sum[44][13]_i_1 
       (.I0(input_valid),
        .I1(\sum[12][13]_i_3_n_0 ),
        .I2(col_index[5]),
        .I3(reset),
        .O(\sum[44][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \sum[44][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[4][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[44][13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \sum[45][13]_i_1 
       (.I0(input_valid),
        .I1(\sum[13][13]_i_3_n_0 ),
        .I2(col_index[5]),
        .I3(reset),
        .O(\sum[45][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \sum[45][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[5][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[45][13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \sum[46][13]_i_1 
       (.I0(input_valid),
        .I1(\sum[14][13]_i_3_n_0 ),
        .I2(col_index[5]),
        .I3(reset),
        .O(\sum[46][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \sum[46][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[6][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[46][13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \sum[47][13]_i_1 
       (.I0(input_valid),
        .I1(col_index[4]),
        .I2(\sum[15][13]_i_3_n_0 ),
        .I3(col_index[5]),
        .I4(reset),
        .O(\sum[47][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \sum[47][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[7][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[47][13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \sum[4][13]_i_1 
       (.I0(input_valid),
        .I1(\sum[4][13]_i_3_n_0 ),
        .I2(col_index[5]),
        .I3(reset),
        .O(\sum[4][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \sum[4][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[4][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[4][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \sum[4][13]_i_3 
       (.I0(col_index[3]),
        .I1(\y_count_reg_n_0_[2] ),
        .I2(\sum[0][13]_i_5_n_0 ),
        .I3(\y_count_reg_n_0_[1] ),
        .I4(col_index[2]),
        .I5(col_index[4]),
        .O(\sum[4][13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF111011100000000)) 
    \sum[4][13]_i_4 
       (.I0(col_index[1]),
        .I1(col_index[0]),
        .I2(\y_count_reg_n_0_[2] ),
        .I3(\y_count_reg_n_0_[1] ),
        .I4(\sum[0][13]_i_6_n_0 ),
        .I5(col_index[2]),
        .O(\sum[4][13]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \sum[5][13]_i_1 
       (.I0(input_valid),
        .I1(\sum[5][13]_i_3_n_0 ),
        .I2(col_index[5]),
        .I3(reset),
        .O(\sum[5][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \sum[5][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[5][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[5][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \sum[5][13]_i_3 
       (.I0(col_index[3]),
        .I1(\y_count_reg_n_0_[2] ),
        .I2(\sum[1][13]_i_5_n_0 ),
        .I3(\y_count_reg_n_0_[1] ),
        .I4(col_index[2]),
        .I5(col_index[4]),
        .O(\sum[5][13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF444044400000000)) 
    \sum[5][13]_i_4 
       (.I0(col_index[1]),
        .I1(col_index[0]),
        .I2(\y_count_reg_n_0_[2] ),
        .I3(\y_count_reg_n_0_[1] ),
        .I4(\sum[1][13]_i_6_n_0 ),
        .I5(col_index[2]),
        .O(\sum[5][13]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \sum[6][13]_i_1 
       (.I0(input_valid),
        .I1(\sum[6][13]_i_3_n_0 ),
        .I2(col_index[5]),
        .I3(reset),
        .O(\sum[6][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \sum[6][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[6][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[6][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \sum[6][13]_i_3 
       (.I0(col_index[3]),
        .I1(\y_count_reg_n_0_[2] ),
        .I2(\sum[2][13]_i_5_n_0 ),
        .I3(\y_count_reg_n_0_[1] ),
        .I4(col_index[2]),
        .I5(col_index[4]),
        .O(\sum[6][13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF444044400000000)) 
    \sum[6][13]_i_4 
       (.I0(col_index[0]),
        .I1(col_index[1]),
        .I2(\y_count_reg_n_0_[2] ),
        .I3(\y_count_reg_n_0_[1] ),
        .I4(\sum[2][13]_i_6_n_0 ),
        .I5(col_index[2]),
        .O(\sum[6][13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0020)) 
    \sum[7][13]_i_1 
       (.I0(input_valid),
        .I1(col_index[4]),
        .I2(\sum[7][13]_i_3_n_0 ),
        .I3(col_index[5]),
        .I4(reset),
        .O(\sum[7][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \sum[7][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[7][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[7][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \sum[7][13]_i_3 
       (.I0(col_index[2]),
        .I1(\y_count_reg_n_0_[1] ),
        .I2(\y_count[2]_i_3_n_0 ),
        .I3(\y_count_reg_n_0_[0] ),
        .I4(\y_count_reg_n_0_[2] ),
        .I5(col_index[3]),
        .O(\sum[7][13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888088800000000)) 
    \sum[7][13]_i_4 
       (.I0(col_index[1]),
        .I1(col_index[0]),
        .I2(\y_count_reg_n_0_[2] ),
        .I3(\y_count_reg_n_0_[1] ),
        .I4(\sum[3][13]_i_5_n_0 ),
        .I5(col_index[2]),
        .O(\sum[7][13]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \sum[8][13]_i_1 
       (.I0(input_valid),
        .I1(\sum[8][13]_i_3_n_0 ),
        .I2(col_index[5]),
        .I3(reset),
        .O(\sum[8][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \sum[8][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[0][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[8][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \sum[8][13]_i_3 
       (.I0(col_index[3]),
        .I1(\y_count_reg_n_0_[2] ),
        .I2(\sum[0][13]_i_5_n_0 ),
        .I3(\y_count_reg_n_0_[1] ),
        .I4(col_index[2]),
        .I5(col_index[4]),
        .O(\sum[8][13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \sum[9][13]_i_1 
       (.I0(input_valid),
        .I1(\sum[9][13]_i_3_n_0 ),
        .I2(col_index[5]),
        .I3(reset),
        .O(\sum[9][13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \sum[9][13]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\sum[1][13]_i_4_n_0 ),
        .I3(col_index[4]),
        .I4(input_valid),
        .O(\sum[9][13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \sum[9][13]_i_3 
       (.I0(col_index[3]),
        .I1(\y_count_reg_n_0_[2] ),
        .I2(\sum[1][13]_i_5_n_0 ),
        .I3(\y_count_reg_n_0_[1] ),
        .I4(col_index[2]),
        .I5(col_index[4]),
        .O(\sum[9][13]_i_3_n_0 ));
  FDRE \sum_reg[0][0] 
       (.C(p_clk),
        .CE(\sum[0][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[0] [0]),
        .R(\sum[0][13]_i_1_n_0 ));
  FDRE \sum_reg[0][10] 
       (.C(p_clk),
        .CE(\sum[0][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[0] [10]),
        .R(\sum[0][13]_i_1_n_0 ));
  FDRE \sum_reg[0][11] 
       (.C(p_clk),
        .CE(\sum[0][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[0] [11]),
        .R(\sum[0][13]_i_1_n_0 ));
  FDRE \sum_reg[0][12] 
       (.C(p_clk),
        .CE(\sum[0][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[0] [12]),
        .R(\sum[0][13]_i_1_n_0 ));
  FDRE \sum_reg[0][13] 
       (.C(p_clk),
        .CE(\sum[0][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[0] [13]),
        .R(\sum[0][13]_i_1_n_0 ));
  FDRE \sum_reg[0][1] 
       (.C(p_clk),
        .CE(\sum[0][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[0] [1]),
        .R(\sum[0][13]_i_1_n_0 ));
  FDRE \sum_reg[0][2] 
       (.C(p_clk),
        .CE(\sum[0][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[0] [2]),
        .R(\sum[0][13]_i_1_n_0 ));
  FDRE \sum_reg[0][3] 
       (.C(p_clk),
        .CE(\sum[0][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[0] [3]),
        .R(\sum[0][13]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[0][3]_i_1 
       (.CI(1'b0),
        .CO({\sum_reg[0][3]_i_1_n_0 ,\sum_reg[0][3]_i_1_n_1 ,\sum_reg[0][3]_i_1_n_2 ,\sum_reg[0][3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(pixel_data_grayscale[3:0]),
        .O({\sum_reg[0][3]_i_1_n_4 ,\sum_reg[0][3]_i_1_n_5 ,\sum_reg[0][3]_i_1_n_6 ,\sum_reg[0][3]_i_1_n_7 }),
        .S({\sum[0][3]_i_2_n_0 ,\sum[0][3]_i_3_n_0 ,\sum[0][3]_i_4_n_0 ,\sum[0][3]_i_5_n_0 }));
  MUXF8 \sum_reg[0][3]_i_10 
       (.I0(\sum_reg[0][3]_i_26_n_0 ),
        .I1(\sum_reg[0][3]_i_27_n_0 ),
        .O(\sum_reg[0][3]_i_10_n_0 ),
        .S(col_index[3]));
  MUXF8 \sum_reg[0][3]_i_11 
       (.I0(\sum_reg[0][3]_i_28_n_0 ),
        .I1(\sum_reg[0][3]_i_29_n_0 ),
        .O(\sum_reg[0][3]_i_11_n_0 ),
        .S(col_index[3]));
  MUXF8 \sum_reg[0][3]_i_12 
       (.I0(\sum_reg[0][3]_i_30_n_0 ),
        .I1(\sum_reg[0][3]_i_31_n_0 ),
        .O(\sum_reg[0][3]_i_12_n_0 ),
        .S(col_index[3]));
  MUXF8 \sum_reg[0][3]_i_13 
       (.I0(\sum_reg[0][3]_i_32_n_0 ),
        .I1(\sum_reg[0][3]_i_33_n_0 ),
        .O(\sum_reg[0][3]_i_13_n_0 ),
        .S(col_index[3]));
  MUXF8 \sum_reg[0][3]_i_14 
       (.I0(\sum_reg[0][3]_i_34_n_0 ),
        .I1(\sum_reg[0][3]_i_35_n_0 ),
        .O(\sum_reg[0][3]_i_14_n_0 ),
        .S(col_index[3]));
  MUXF8 \sum_reg[0][3]_i_15 
       (.I0(\sum_reg[0][3]_i_36_n_0 ),
        .I1(\sum_reg[0][3]_i_37_n_0 ),
        .O(\sum_reg[0][3]_i_15_n_0 ),
        .S(col_index[3]));
  MUXF8 \sum_reg[0][3]_i_16 
       (.I0(\sum_reg[0][3]_i_38_n_0 ),
        .I1(\sum_reg[0][3]_i_39_n_0 ),
        .O(\sum_reg[0][3]_i_16_n_0 ),
        .S(col_index[3]));
  MUXF8 \sum_reg[0][3]_i_17 
       (.I0(\sum_reg[0][3]_i_40_n_0 ),
        .I1(\sum_reg[0][3]_i_41_n_0 ),
        .O(\sum_reg[0][3]_i_17_n_0 ),
        .S(col_index[3]));
  MUXF7 \sum_reg[0][3]_i_18 
       (.I0(\sum[0][3]_i_42_n_0 ),
        .I1(\sum[0][3]_i_43_n_0 ),
        .O(\sum_reg[0][3]_i_18_n_0 ),
        .S(col_index[2]));
  MUXF7 \sum_reg[0][3]_i_19 
       (.I0(\sum[0][3]_i_44_n_0 ),
        .I1(\sum[0][3]_i_45_n_0 ),
        .O(\sum_reg[0][3]_i_19_n_0 ),
        .S(col_index[2]));
  MUXF7 \sum_reg[0][3]_i_20 
       (.I0(\sum[0][3]_i_46_n_0 ),
        .I1(\sum[0][3]_i_47_n_0 ),
        .O(\sum_reg[0][3]_i_20_n_0 ),
        .S(col_index[2]));
  MUXF7 \sum_reg[0][3]_i_21 
       (.I0(\sum[0][3]_i_48_n_0 ),
        .I1(\sum[0][3]_i_49_n_0 ),
        .O(\sum_reg[0][3]_i_21_n_0 ),
        .S(col_index[2]));
  MUXF7 \sum_reg[0][3]_i_22 
       (.I0(\sum[0][3]_i_50_n_0 ),
        .I1(\sum[0][3]_i_51_n_0 ),
        .O(\sum_reg[0][3]_i_22_n_0 ),
        .S(col_index[2]));
  MUXF7 \sum_reg[0][3]_i_23 
       (.I0(\sum[0][3]_i_52_n_0 ),
        .I1(\sum[0][3]_i_53_n_0 ),
        .O(\sum_reg[0][3]_i_23_n_0 ),
        .S(col_index[2]));
  MUXF7 \sum_reg[0][3]_i_24 
       (.I0(\sum[0][3]_i_54_n_0 ),
        .I1(\sum[0][3]_i_55_n_0 ),
        .O(\sum_reg[0][3]_i_24_n_0 ),
        .S(col_index[2]));
  MUXF7 \sum_reg[0][3]_i_25 
       (.I0(\sum[0][3]_i_56_n_0 ),
        .I1(\sum[0][3]_i_57_n_0 ),
        .O(\sum_reg[0][3]_i_25_n_0 ),
        .S(col_index[2]));
  MUXF7 \sum_reg[0][3]_i_26 
       (.I0(\sum[0][3]_i_58_n_0 ),
        .I1(\sum[0][3]_i_59_n_0 ),
        .O(\sum_reg[0][3]_i_26_n_0 ),
        .S(col_index[2]));
  MUXF7 \sum_reg[0][3]_i_27 
       (.I0(\sum[0][3]_i_60_n_0 ),
        .I1(\sum[0][3]_i_61_n_0 ),
        .O(\sum_reg[0][3]_i_27_n_0 ),
        .S(col_index[2]));
  MUXF7 \sum_reg[0][3]_i_28 
       (.I0(\sum[0][3]_i_62_n_0 ),
        .I1(\sum[0][3]_i_63_n_0 ),
        .O(\sum_reg[0][3]_i_28_n_0 ),
        .S(col_index[2]));
  MUXF7 \sum_reg[0][3]_i_29 
       (.I0(\sum[0][3]_i_64_n_0 ),
        .I1(\sum[0][3]_i_65_n_0 ),
        .O(\sum_reg[0][3]_i_29_n_0 ),
        .S(col_index[2]));
  MUXF7 \sum_reg[0][3]_i_30 
       (.I0(\sum[0][3]_i_66_n_0 ),
        .I1(\sum[0][3]_i_67_n_0 ),
        .O(\sum_reg[0][3]_i_30_n_0 ),
        .S(col_index[2]));
  MUXF7 \sum_reg[0][3]_i_31 
       (.I0(\sum[0][3]_i_68_n_0 ),
        .I1(\sum[0][3]_i_69_n_0 ),
        .O(\sum_reg[0][3]_i_31_n_0 ),
        .S(col_index[2]));
  MUXF7 \sum_reg[0][3]_i_32 
       (.I0(\sum[0][3]_i_70_n_0 ),
        .I1(\sum[0][3]_i_71_n_0 ),
        .O(\sum_reg[0][3]_i_32_n_0 ),
        .S(col_index[2]));
  MUXF7 \sum_reg[0][3]_i_33 
       (.I0(\sum[0][3]_i_72_n_0 ),
        .I1(\sum[0][3]_i_73_n_0 ),
        .O(\sum_reg[0][3]_i_33_n_0 ),
        .S(col_index[2]));
  MUXF7 \sum_reg[0][3]_i_34 
       (.I0(\sum[0][3]_i_74_n_0 ),
        .I1(\sum[0][3]_i_75_n_0 ),
        .O(\sum_reg[0][3]_i_34_n_0 ),
        .S(col_index[2]));
  MUXF7 \sum_reg[0][3]_i_35 
       (.I0(\sum[0][3]_i_76_n_0 ),
        .I1(\sum[0][3]_i_77_n_0 ),
        .O(\sum_reg[0][3]_i_35_n_0 ),
        .S(col_index[2]));
  MUXF7 \sum_reg[0][3]_i_36 
       (.I0(\sum[0][3]_i_78_n_0 ),
        .I1(\sum[0][3]_i_79_n_0 ),
        .O(\sum_reg[0][3]_i_36_n_0 ),
        .S(col_index[2]));
  MUXF7 \sum_reg[0][3]_i_37 
       (.I0(\sum[0][3]_i_80_n_0 ),
        .I1(\sum[0][3]_i_81_n_0 ),
        .O(\sum_reg[0][3]_i_37_n_0 ),
        .S(col_index[2]));
  MUXF7 \sum_reg[0][3]_i_38 
       (.I0(\sum[0][3]_i_82_n_0 ),
        .I1(\sum[0][3]_i_83_n_0 ),
        .O(\sum_reg[0][3]_i_38_n_0 ),
        .S(col_index[2]));
  MUXF7 \sum_reg[0][3]_i_39 
       (.I0(\sum[0][3]_i_84_n_0 ),
        .I1(\sum[0][3]_i_85_n_0 ),
        .O(\sum_reg[0][3]_i_39_n_0 ),
        .S(col_index[2]));
  MUXF7 \sum_reg[0][3]_i_40 
       (.I0(\sum[0][3]_i_86_n_0 ),
        .I1(\sum[0][3]_i_87_n_0 ),
        .O(\sum_reg[0][3]_i_40_n_0 ),
        .S(col_index[2]));
  MUXF7 \sum_reg[0][3]_i_41 
       (.I0(\sum[0][3]_i_88_n_0 ),
        .I1(\sum[0][3]_i_89_n_0 ),
        .O(\sum_reg[0][3]_i_41_n_0 ),
        .S(col_index[2]));
  MUXF8 \sum_reg[0][3]_i_6 
       (.I0(\sum_reg[0][3]_i_18_n_0 ),
        .I1(\sum_reg[0][3]_i_19_n_0 ),
        .O(\sum_reg[0][3]_i_6_n_0 ),
        .S(col_index[3]));
  MUXF8 \sum_reg[0][3]_i_7 
       (.I0(\sum_reg[0][3]_i_20_n_0 ),
        .I1(\sum_reg[0][3]_i_21_n_0 ),
        .O(\sum_reg[0][3]_i_7_n_0 ),
        .S(col_index[3]));
  MUXF8 \sum_reg[0][3]_i_8 
       (.I0(\sum_reg[0][3]_i_22_n_0 ),
        .I1(\sum_reg[0][3]_i_23_n_0 ),
        .O(\sum_reg[0][3]_i_8_n_0 ),
        .S(col_index[3]));
  MUXF8 \sum_reg[0][3]_i_9 
       (.I0(\sum_reg[0][3]_i_24_n_0 ),
        .I1(\sum_reg[0][3]_i_25_n_0 ),
        .O(\sum_reg[0][3]_i_9_n_0 ),
        .S(col_index[3]));
  FDRE \sum_reg[0][4] 
       (.C(p_clk),
        .CE(\sum[0][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[0] [4]),
        .R(\sum[0][13]_i_1_n_0 ));
  FDRE \sum_reg[0][5] 
       (.C(p_clk),
        .CE(\sum[0][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[0] [5]),
        .R(\sum[0][13]_i_1_n_0 ));
  FDRE \sum_reg[0][6] 
       (.C(p_clk),
        .CE(\sum[0][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[0] [6]),
        .R(\sum[0][13]_i_1_n_0 ));
  FDRE \sum_reg[0][7] 
       (.C(p_clk),
        .CE(\sum[0][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[0] [7]),
        .R(\sum[0][13]_i_1_n_0 ));
  FDRE \sum_reg[0][8] 
       (.C(p_clk),
        .CE(\sum[0][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[0] [8]),
        .R(\sum[0][13]_i_1_n_0 ));
  FDRE \sum_reg[0][9] 
       (.C(p_clk),
        .CE(\sum[0][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[0] [9]),
        .R(\sum[0][13]_i_1_n_0 ));
  FDRE \sum_reg[10][0] 
       (.C(p_clk),
        .CE(\sum[10][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[10] [0]),
        .R(\sum[10][13]_i_1_n_0 ));
  FDRE \sum_reg[10][10] 
       (.C(p_clk),
        .CE(\sum[10][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[10] [10]),
        .R(\sum[10][13]_i_1_n_0 ));
  FDRE \sum_reg[10][11] 
       (.C(p_clk),
        .CE(\sum[10][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[10] [11]),
        .R(\sum[10][13]_i_1_n_0 ));
  FDRE \sum_reg[10][12] 
       (.C(p_clk),
        .CE(\sum[10][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[10] [12]),
        .R(\sum[10][13]_i_1_n_0 ));
  FDRE \sum_reg[10][13] 
       (.C(p_clk),
        .CE(\sum[10][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[10] [13]),
        .R(\sum[10][13]_i_1_n_0 ));
  FDRE \sum_reg[10][1] 
       (.C(p_clk),
        .CE(\sum[10][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[10] [1]),
        .R(\sum[10][13]_i_1_n_0 ));
  FDRE \sum_reg[10][2] 
       (.C(p_clk),
        .CE(\sum[10][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[10] [2]),
        .R(\sum[10][13]_i_1_n_0 ));
  FDRE \sum_reg[10][3] 
       (.C(p_clk),
        .CE(\sum[10][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[10] [3]),
        .R(\sum[10][13]_i_1_n_0 ));
  FDRE \sum_reg[10][4] 
       (.C(p_clk),
        .CE(\sum[10][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[10] [4]),
        .R(\sum[10][13]_i_1_n_0 ));
  FDRE \sum_reg[10][5] 
       (.C(p_clk),
        .CE(\sum[10][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[10] [5]),
        .R(\sum[10][13]_i_1_n_0 ));
  FDRE \sum_reg[10][6] 
       (.C(p_clk),
        .CE(\sum[10][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[10] [6]),
        .R(\sum[10][13]_i_1_n_0 ));
  FDRE \sum_reg[10][7] 
       (.C(p_clk),
        .CE(\sum[10][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[10] [7]),
        .R(\sum[10][13]_i_1_n_0 ));
  FDRE \sum_reg[10][8] 
       (.C(p_clk),
        .CE(\sum[10][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[10] [8]),
        .R(\sum[10][13]_i_1_n_0 ));
  FDRE \sum_reg[10][9] 
       (.C(p_clk),
        .CE(\sum[10][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[10] [9]),
        .R(\sum[10][13]_i_1_n_0 ));
  FDRE \sum_reg[11][0] 
       (.C(p_clk),
        .CE(\sum[11][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[11] [0]),
        .R(\sum[11][13]_i_1_n_0 ));
  FDRE \sum_reg[11][10] 
       (.C(p_clk),
        .CE(\sum[11][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[11] [10]),
        .R(\sum[11][13]_i_1_n_0 ));
  FDRE \sum_reg[11][11] 
       (.C(p_clk),
        .CE(\sum[11][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[11] [11]),
        .R(\sum[11][13]_i_1_n_0 ));
  FDRE \sum_reg[11][12] 
       (.C(p_clk),
        .CE(\sum[11][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[11] [12]),
        .R(\sum[11][13]_i_1_n_0 ));
  FDRE \sum_reg[11][13] 
       (.C(p_clk),
        .CE(\sum[11][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[11] [13]),
        .R(\sum[11][13]_i_1_n_0 ));
  FDRE \sum_reg[11][1] 
       (.C(p_clk),
        .CE(\sum[11][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[11] [1]),
        .R(\sum[11][13]_i_1_n_0 ));
  FDRE \sum_reg[11][2] 
       (.C(p_clk),
        .CE(\sum[11][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[11] [2]),
        .R(\sum[11][13]_i_1_n_0 ));
  FDRE \sum_reg[11][3] 
       (.C(p_clk),
        .CE(\sum[11][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[11] [3]),
        .R(\sum[11][13]_i_1_n_0 ));
  FDRE \sum_reg[11][4] 
       (.C(p_clk),
        .CE(\sum[11][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[11] [4]),
        .R(\sum[11][13]_i_1_n_0 ));
  FDRE \sum_reg[11][5] 
       (.C(p_clk),
        .CE(\sum[11][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[11] [5]),
        .R(\sum[11][13]_i_1_n_0 ));
  FDRE \sum_reg[11][6] 
       (.C(p_clk),
        .CE(\sum[11][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[11] [6]),
        .R(\sum[11][13]_i_1_n_0 ));
  FDRE \sum_reg[11][7] 
       (.C(p_clk),
        .CE(\sum[11][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[11] [7]),
        .R(\sum[11][13]_i_1_n_0 ));
  FDRE \sum_reg[11][8] 
       (.C(p_clk),
        .CE(\sum[11][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[11] [8]),
        .R(\sum[11][13]_i_1_n_0 ));
  FDRE \sum_reg[11][9] 
       (.C(p_clk),
        .CE(\sum[11][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[11] [9]),
        .R(\sum[11][13]_i_1_n_0 ));
  FDRE \sum_reg[12][0] 
       (.C(p_clk),
        .CE(\sum[12][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[12] [0]),
        .R(\sum[12][13]_i_1_n_0 ));
  FDRE \sum_reg[12][10] 
       (.C(p_clk),
        .CE(\sum[12][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[12] [10]),
        .R(\sum[12][13]_i_1_n_0 ));
  FDRE \sum_reg[12][11] 
       (.C(p_clk),
        .CE(\sum[12][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[12] [11]),
        .R(\sum[12][13]_i_1_n_0 ));
  FDRE \sum_reg[12][12] 
       (.C(p_clk),
        .CE(\sum[12][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[12] [12]),
        .R(\sum[12][13]_i_1_n_0 ));
  FDRE \sum_reg[12][13] 
       (.C(p_clk),
        .CE(\sum[12][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[12] [13]),
        .R(\sum[12][13]_i_1_n_0 ));
  FDRE \sum_reg[12][1] 
       (.C(p_clk),
        .CE(\sum[12][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[12] [1]),
        .R(\sum[12][13]_i_1_n_0 ));
  FDRE \sum_reg[12][2] 
       (.C(p_clk),
        .CE(\sum[12][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[12] [2]),
        .R(\sum[12][13]_i_1_n_0 ));
  FDRE \sum_reg[12][3] 
       (.C(p_clk),
        .CE(\sum[12][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[12] [3]),
        .R(\sum[12][13]_i_1_n_0 ));
  FDRE \sum_reg[12][4] 
       (.C(p_clk),
        .CE(\sum[12][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[12] [4]),
        .R(\sum[12][13]_i_1_n_0 ));
  FDRE \sum_reg[12][5] 
       (.C(p_clk),
        .CE(\sum[12][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[12] [5]),
        .R(\sum[12][13]_i_1_n_0 ));
  FDRE \sum_reg[12][6] 
       (.C(p_clk),
        .CE(\sum[12][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[12] [6]),
        .R(\sum[12][13]_i_1_n_0 ));
  FDRE \sum_reg[12][7] 
       (.C(p_clk),
        .CE(\sum[12][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[12] [7]),
        .R(\sum[12][13]_i_1_n_0 ));
  FDRE \sum_reg[12][8] 
       (.C(p_clk),
        .CE(\sum[12][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[12] [8]),
        .R(\sum[12][13]_i_1_n_0 ));
  FDRE \sum_reg[12][9] 
       (.C(p_clk),
        .CE(\sum[12][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[12] [9]),
        .R(\sum[12][13]_i_1_n_0 ));
  FDRE \sum_reg[13][0] 
       (.C(p_clk),
        .CE(\sum[13][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[13] [0]),
        .R(\sum[13][13]_i_1_n_0 ));
  FDRE \sum_reg[13][10] 
       (.C(p_clk),
        .CE(\sum[13][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[13] [10]),
        .R(\sum[13][13]_i_1_n_0 ));
  FDRE \sum_reg[13][11] 
       (.C(p_clk),
        .CE(\sum[13][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[13] [11]),
        .R(\sum[13][13]_i_1_n_0 ));
  FDRE \sum_reg[13][12] 
       (.C(p_clk),
        .CE(\sum[13][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[13] [12]),
        .R(\sum[13][13]_i_1_n_0 ));
  FDRE \sum_reg[13][13] 
       (.C(p_clk),
        .CE(\sum[13][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[13] [13]),
        .R(\sum[13][13]_i_1_n_0 ));
  FDRE \sum_reg[13][1] 
       (.C(p_clk),
        .CE(\sum[13][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[13] [1]),
        .R(\sum[13][13]_i_1_n_0 ));
  FDRE \sum_reg[13][2] 
       (.C(p_clk),
        .CE(\sum[13][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[13] [2]),
        .R(\sum[13][13]_i_1_n_0 ));
  FDRE \sum_reg[13][3] 
       (.C(p_clk),
        .CE(\sum[13][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[13] [3]),
        .R(\sum[13][13]_i_1_n_0 ));
  FDRE \sum_reg[13][4] 
       (.C(p_clk),
        .CE(\sum[13][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[13] [4]),
        .R(\sum[13][13]_i_1_n_0 ));
  FDRE \sum_reg[13][5] 
       (.C(p_clk),
        .CE(\sum[13][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[13] [5]),
        .R(\sum[13][13]_i_1_n_0 ));
  FDRE \sum_reg[13][6] 
       (.C(p_clk),
        .CE(\sum[13][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[13] [6]),
        .R(\sum[13][13]_i_1_n_0 ));
  FDRE \sum_reg[13][7] 
       (.C(p_clk),
        .CE(\sum[13][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[13] [7]),
        .R(\sum[13][13]_i_1_n_0 ));
  FDRE \sum_reg[13][8] 
       (.C(p_clk),
        .CE(\sum[13][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[13] [8]),
        .R(\sum[13][13]_i_1_n_0 ));
  FDRE \sum_reg[13][9] 
       (.C(p_clk),
        .CE(\sum[13][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[13] [9]),
        .R(\sum[13][13]_i_1_n_0 ));
  FDRE \sum_reg[14][0] 
       (.C(p_clk),
        .CE(\sum[14][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[14] [0]),
        .R(\sum[14][13]_i_1_n_0 ));
  FDRE \sum_reg[14][10] 
       (.C(p_clk),
        .CE(\sum[14][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[14] [10]),
        .R(\sum[14][13]_i_1_n_0 ));
  FDRE \sum_reg[14][11] 
       (.C(p_clk),
        .CE(\sum[14][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[14] [11]),
        .R(\sum[14][13]_i_1_n_0 ));
  FDRE \sum_reg[14][12] 
       (.C(p_clk),
        .CE(\sum[14][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[14] [12]),
        .R(\sum[14][13]_i_1_n_0 ));
  FDRE \sum_reg[14][13] 
       (.C(p_clk),
        .CE(\sum[14][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[14] [13]),
        .R(\sum[14][13]_i_1_n_0 ));
  FDRE \sum_reg[14][1] 
       (.C(p_clk),
        .CE(\sum[14][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[14] [1]),
        .R(\sum[14][13]_i_1_n_0 ));
  FDRE \sum_reg[14][2] 
       (.C(p_clk),
        .CE(\sum[14][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[14] [2]),
        .R(\sum[14][13]_i_1_n_0 ));
  FDRE \sum_reg[14][3] 
       (.C(p_clk),
        .CE(\sum[14][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[14] [3]),
        .R(\sum[14][13]_i_1_n_0 ));
  FDRE \sum_reg[14][4] 
       (.C(p_clk),
        .CE(\sum[14][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[14] [4]),
        .R(\sum[14][13]_i_1_n_0 ));
  FDRE \sum_reg[14][5] 
       (.C(p_clk),
        .CE(\sum[14][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[14] [5]),
        .R(\sum[14][13]_i_1_n_0 ));
  FDRE \sum_reg[14][6] 
       (.C(p_clk),
        .CE(\sum[14][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[14] [6]),
        .R(\sum[14][13]_i_1_n_0 ));
  FDRE \sum_reg[14][7] 
       (.C(p_clk),
        .CE(\sum[14][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[14] [7]),
        .R(\sum[14][13]_i_1_n_0 ));
  FDRE \sum_reg[14][8] 
       (.C(p_clk),
        .CE(\sum[14][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[14] [8]),
        .R(\sum[14][13]_i_1_n_0 ));
  FDRE \sum_reg[14][9] 
       (.C(p_clk),
        .CE(\sum[14][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[14] [9]),
        .R(\sum[14][13]_i_1_n_0 ));
  FDRE \sum_reg[15][0] 
       (.C(p_clk),
        .CE(\sum[15][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[15] [0]),
        .R(\sum[15][13]_i_1_n_0 ));
  FDRE \sum_reg[15][10] 
       (.C(p_clk),
        .CE(\sum[15][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[15] [10]),
        .R(\sum[15][13]_i_1_n_0 ));
  FDRE \sum_reg[15][11] 
       (.C(p_clk),
        .CE(\sum[15][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[15] [11]),
        .R(\sum[15][13]_i_1_n_0 ));
  FDRE \sum_reg[15][12] 
       (.C(p_clk),
        .CE(\sum[15][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[15] [12]),
        .R(\sum[15][13]_i_1_n_0 ));
  FDRE \sum_reg[15][13] 
       (.C(p_clk),
        .CE(\sum[15][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[15] [13]),
        .R(\sum[15][13]_i_1_n_0 ));
  FDRE \sum_reg[15][1] 
       (.C(p_clk),
        .CE(\sum[15][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[15] [1]),
        .R(\sum[15][13]_i_1_n_0 ));
  FDRE \sum_reg[15][2] 
       (.C(p_clk),
        .CE(\sum[15][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[15] [2]),
        .R(\sum[15][13]_i_1_n_0 ));
  FDRE \sum_reg[15][3] 
       (.C(p_clk),
        .CE(\sum[15][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[15] [3]),
        .R(\sum[15][13]_i_1_n_0 ));
  FDRE \sum_reg[15][4] 
       (.C(p_clk),
        .CE(\sum[15][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[15] [4]),
        .R(\sum[15][13]_i_1_n_0 ));
  FDRE \sum_reg[15][5] 
       (.C(p_clk),
        .CE(\sum[15][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[15] [5]),
        .R(\sum[15][13]_i_1_n_0 ));
  FDRE \sum_reg[15][6] 
       (.C(p_clk),
        .CE(\sum[15][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[15] [6]),
        .R(\sum[15][13]_i_1_n_0 ));
  FDRE \sum_reg[15][7] 
       (.C(p_clk),
        .CE(\sum[15][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[15] [7]),
        .R(\sum[15][13]_i_1_n_0 ));
  FDRE \sum_reg[15][8] 
       (.C(p_clk),
        .CE(\sum[15][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[15] [8]),
        .R(\sum[15][13]_i_1_n_0 ));
  FDRE \sum_reg[15][9] 
       (.C(p_clk),
        .CE(\sum[15][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[15] [9]),
        .R(\sum[15][13]_i_1_n_0 ));
  FDRE \sum_reg[16][0] 
       (.C(p_clk),
        .CE(\sum[16][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[16] [0]),
        .R(\sum[16][13]_i_1_n_0 ));
  FDRE \sum_reg[16][10] 
       (.C(p_clk),
        .CE(\sum[16][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[16] [10]),
        .R(\sum[16][13]_i_1_n_0 ));
  FDRE \sum_reg[16][11] 
       (.C(p_clk),
        .CE(\sum[16][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[16] [11]),
        .R(\sum[16][13]_i_1_n_0 ));
  FDRE \sum_reg[16][12] 
       (.C(p_clk),
        .CE(\sum[16][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[16] [12]),
        .R(\sum[16][13]_i_1_n_0 ));
  FDRE \sum_reg[16][13] 
       (.C(p_clk),
        .CE(\sum[16][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[16] [13]),
        .R(\sum[16][13]_i_1_n_0 ));
  FDRE \sum_reg[16][1] 
       (.C(p_clk),
        .CE(\sum[16][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[16] [1]),
        .R(\sum[16][13]_i_1_n_0 ));
  FDRE \sum_reg[16][2] 
       (.C(p_clk),
        .CE(\sum[16][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[16] [2]),
        .R(\sum[16][13]_i_1_n_0 ));
  FDRE \sum_reg[16][3] 
       (.C(p_clk),
        .CE(\sum[16][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[16] [3]),
        .R(\sum[16][13]_i_1_n_0 ));
  FDRE \sum_reg[16][4] 
       (.C(p_clk),
        .CE(\sum[16][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[16] [4]),
        .R(\sum[16][13]_i_1_n_0 ));
  FDRE \sum_reg[16][5] 
       (.C(p_clk),
        .CE(\sum[16][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[16] [5]),
        .R(\sum[16][13]_i_1_n_0 ));
  FDRE \sum_reg[16][6] 
       (.C(p_clk),
        .CE(\sum[16][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[16] [6]),
        .R(\sum[16][13]_i_1_n_0 ));
  FDRE \sum_reg[16][7] 
       (.C(p_clk),
        .CE(\sum[16][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[16] [7]),
        .R(\sum[16][13]_i_1_n_0 ));
  FDRE \sum_reg[16][8] 
       (.C(p_clk),
        .CE(\sum[16][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[16] [8]),
        .R(\sum[16][13]_i_1_n_0 ));
  FDRE \sum_reg[16][9] 
       (.C(p_clk),
        .CE(\sum[16][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[16] [9]),
        .R(\sum[16][13]_i_1_n_0 ));
  FDRE \sum_reg[17][0] 
       (.C(p_clk),
        .CE(\sum[17][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[17] [0]),
        .R(\sum[17][13]_i_1_n_0 ));
  FDRE \sum_reg[17][10] 
       (.C(p_clk),
        .CE(\sum[17][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[17] [10]),
        .R(\sum[17][13]_i_1_n_0 ));
  FDRE \sum_reg[17][11] 
       (.C(p_clk),
        .CE(\sum[17][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[17] [11]),
        .R(\sum[17][13]_i_1_n_0 ));
  FDRE \sum_reg[17][12] 
       (.C(p_clk),
        .CE(\sum[17][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[17] [12]),
        .R(\sum[17][13]_i_1_n_0 ));
  FDRE \sum_reg[17][13] 
       (.C(p_clk),
        .CE(\sum[17][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[17] [13]),
        .R(\sum[17][13]_i_1_n_0 ));
  FDRE \sum_reg[17][1] 
       (.C(p_clk),
        .CE(\sum[17][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[17] [1]),
        .R(\sum[17][13]_i_1_n_0 ));
  FDRE \sum_reg[17][2] 
       (.C(p_clk),
        .CE(\sum[17][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[17] [2]),
        .R(\sum[17][13]_i_1_n_0 ));
  FDRE \sum_reg[17][3] 
       (.C(p_clk),
        .CE(\sum[17][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[17] [3]),
        .R(\sum[17][13]_i_1_n_0 ));
  FDRE \sum_reg[17][4] 
       (.C(p_clk),
        .CE(\sum[17][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[17] [4]),
        .R(\sum[17][13]_i_1_n_0 ));
  FDRE \sum_reg[17][5] 
       (.C(p_clk),
        .CE(\sum[17][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[17] [5]),
        .R(\sum[17][13]_i_1_n_0 ));
  FDRE \sum_reg[17][6] 
       (.C(p_clk),
        .CE(\sum[17][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[17] [6]),
        .R(\sum[17][13]_i_1_n_0 ));
  FDRE \sum_reg[17][7] 
       (.C(p_clk),
        .CE(\sum[17][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[17] [7]),
        .R(\sum[17][13]_i_1_n_0 ));
  FDRE \sum_reg[17][8] 
       (.C(p_clk),
        .CE(\sum[17][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[17] [8]),
        .R(\sum[17][13]_i_1_n_0 ));
  FDRE \sum_reg[17][9] 
       (.C(p_clk),
        .CE(\sum[17][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[17] [9]),
        .R(\sum[17][13]_i_1_n_0 ));
  FDRE \sum_reg[18][0] 
       (.C(p_clk),
        .CE(\sum[18][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[18] [0]),
        .R(\sum[18][13]_i_1_n_0 ));
  FDRE \sum_reg[18][10] 
       (.C(p_clk),
        .CE(\sum[18][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[18] [10]),
        .R(\sum[18][13]_i_1_n_0 ));
  FDRE \sum_reg[18][11] 
       (.C(p_clk),
        .CE(\sum[18][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[18] [11]),
        .R(\sum[18][13]_i_1_n_0 ));
  FDRE \sum_reg[18][12] 
       (.C(p_clk),
        .CE(\sum[18][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[18] [12]),
        .R(\sum[18][13]_i_1_n_0 ));
  FDRE \sum_reg[18][13] 
       (.C(p_clk),
        .CE(\sum[18][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[18] [13]),
        .R(\sum[18][13]_i_1_n_0 ));
  FDRE \sum_reg[18][1] 
       (.C(p_clk),
        .CE(\sum[18][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[18] [1]),
        .R(\sum[18][13]_i_1_n_0 ));
  FDRE \sum_reg[18][2] 
       (.C(p_clk),
        .CE(\sum[18][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[18] [2]),
        .R(\sum[18][13]_i_1_n_0 ));
  FDRE \sum_reg[18][3] 
       (.C(p_clk),
        .CE(\sum[18][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[18] [3]),
        .R(\sum[18][13]_i_1_n_0 ));
  FDRE \sum_reg[18][4] 
       (.C(p_clk),
        .CE(\sum[18][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[18] [4]),
        .R(\sum[18][13]_i_1_n_0 ));
  FDRE \sum_reg[18][5] 
       (.C(p_clk),
        .CE(\sum[18][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[18] [5]),
        .R(\sum[18][13]_i_1_n_0 ));
  FDRE \sum_reg[18][6] 
       (.C(p_clk),
        .CE(\sum[18][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[18] [6]),
        .R(\sum[18][13]_i_1_n_0 ));
  FDRE \sum_reg[18][7] 
       (.C(p_clk),
        .CE(\sum[18][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[18] [7]),
        .R(\sum[18][13]_i_1_n_0 ));
  FDRE \sum_reg[18][8] 
       (.C(p_clk),
        .CE(\sum[18][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[18] [8]),
        .R(\sum[18][13]_i_1_n_0 ));
  FDRE \sum_reg[18][9] 
       (.C(p_clk),
        .CE(\sum[18][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[18] [9]),
        .R(\sum[18][13]_i_1_n_0 ));
  FDRE \sum_reg[19][0] 
       (.C(p_clk),
        .CE(\sum[19][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[19] [0]),
        .R(\sum[19][13]_i_1_n_0 ));
  FDRE \sum_reg[19][10] 
       (.C(p_clk),
        .CE(\sum[19][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[19] [10]),
        .R(\sum[19][13]_i_1_n_0 ));
  FDRE \sum_reg[19][11] 
       (.C(p_clk),
        .CE(\sum[19][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[19] [11]),
        .R(\sum[19][13]_i_1_n_0 ));
  FDRE \sum_reg[19][12] 
       (.C(p_clk),
        .CE(\sum[19][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[19] [12]),
        .R(\sum[19][13]_i_1_n_0 ));
  FDRE \sum_reg[19][13] 
       (.C(p_clk),
        .CE(\sum[19][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[19] [13]),
        .R(\sum[19][13]_i_1_n_0 ));
  FDRE \sum_reg[19][1] 
       (.C(p_clk),
        .CE(\sum[19][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[19] [1]),
        .R(\sum[19][13]_i_1_n_0 ));
  FDRE \sum_reg[19][2] 
       (.C(p_clk),
        .CE(\sum[19][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[19] [2]),
        .R(\sum[19][13]_i_1_n_0 ));
  FDRE \sum_reg[19][3] 
       (.C(p_clk),
        .CE(\sum[19][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[19] [3]),
        .R(\sum[19][13]_i_1_n_0 ));
  FDRE \sum_reg[19][4] 
       (.C(p_clk),
        .CE(\sum[19][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[19] [4]),
        .R(\sum[19][13]_i_1_n_0 ));
  FDRE \sum_reg[19][5] 
       (.C(p_clk),
        .CE(\sum[19][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[19] [5]),
        .R(\sum[19][13]_i_1_n_0 ));
  FDRE \sum_reg[19][6] 
       (.C(p_clk),
        .CE(\sum[19][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[19] [6]),
        .R(\sum[19][13]_i_1_n_0 ));
  FDRE \sum_reg[19][7] 
       (.C(p_clk),
        .CE(\sum[19][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[19] [7]),
        .R(\sum[19][13]_i_1_n_0 ));
  FDRE \sum_reg[19][8] 
       (.C(p_clk),
        .CE(\sum[19][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[19] [8]),
        .R(\sum[19][13]_i_1_n_0 ));
  FDRE \sum_reg[19][9] 
       (.C(p_clk),
        .CE(\sum[19][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[19] [9]),
        .R(\sum[19][13]_i_1_n_0 ));
  FDRE \sum_reg[1][0] 
       (.C(p_clk),
        .CE(\sum[1][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[1] [0]),
        .R(\sum[1][13]_i_1_n_0 ));
  FDRE \sum_reg[1][10] 
       (.C(p_clk),
        .CE(\sum[1][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[1] [10]),
        .R(\sum[1][13]_i_1_n_0 ));
  FDRE \sum_reg[1][11] 
       (.C(p_clk),
        .CE(\sum[1][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[1] [11]),
        .R(\sum[1][13]_i_1_n_0 ));
  FDRE \sum_reg[1][12] 
       (.C(p_clk),
        .CE(\sum[1][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[1] [12]),
        .R(\sum[1][13]_i_1_n_0 ));
  FDRE \sum_reg[1][13] 
       (.C(p_clk),
        .CE(\sum[1][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[1] [13]),
        .R(\sum[1][13]_i_1_n_0 ));
  FDRE \sum_reg[1][1] 
       (.C(p_clk),
        .CE(\sum[1][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[1] [1]),
        .R(\sum[1][13]_i_1_n_0 ));
  FDRE \sum_reg[1][2] 
       (.C(p_clk),
        .CE(\sum[1][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[1] [2]),
        .R(\sum[1][13]_i_1_n_0 ));
  FDRE \sum_reg[1][3] 
       (.C(p_clk),
        .CE(\sum[1][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[1] [3]),
        .R(\sum[1][13]_i_1_n_0 ));
  FDRE \sum_reg[1][4] 
       (.C(p_clk),
        .CE(\sum[1][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[1] [4]),
        .R(\sum[1][13]_i_1_n_0 ));
  FDRE \sum_reg[1][5] 
       (.C(p_clk),
        .CE(\sum[1][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[1] [5]),
        .R(\sum[1][13]_i_1_n_0 ));
  FDRE \sum_reg[1][6] 
       (.C(p_clk),
        .CE(\sum[1][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[1] [6]),
        .R(\sum[1][13]_i_1_n_0 ));
  FDRE \sum_reg[1][7] 
       (.C(p_clk),
        .CE(\sum[1][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[1] [7]),
        .R(\sum[1][13]_i_1_n_0 ));
  FDRE \sum_reg[1][8] 
       (.C(p_clk),
        .CE(\sum[1][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[1] [8]),
        .R(\sum[1][13]_i_1_n_0 ));
  FDRE \sum_reg[1][9] 
       (.C(p_clk),
        .CE(\sum[1][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[1] [9]),
        .R(\sum[1][13]_i_1_n_0 ));
  FDRE \sum_reg[20][0] 
       (.C(p_clk),
        .CE(\sum[20][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[20] [0]),
        .R(\sum[20][13]_i_1_n_0 ));
  FDRE \sum_reg[20][10] 
       (.C(p_clk),
        .CE(\sum[20][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[20] [10]),
        .R(\sum[20][13]_i_1_n_0 ));
  FDRE \sum_reg[20][11] 
       (.C(p_clk),
        .CE(\sum[20][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[20] [11]),
        .R(\sum[20][13]_i_1_n_0 ));
  FDRE \sum_reg[20][12] 
       (.C(p_clk),
        .CE(\sum[20][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[20] [12]),
        .R(\sum[20][13]_i_1_n_0 ));
  FDRE \sum_reg[20][13] 
       (.C(p_clk),
        .CE(\sum[20][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[20] [13]),
        .R(\sum[20][13]_i_1_n_0 ));
  FDRE \sum_reg[20][1] 
       (.C(p_clk),
        .CE(\sum[20][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[20] [1]),
        .R(\sum[20][13]_i_1_n_0 ));
  FDRE \sum_reg[20][2] 
       (.C(p_clk),
        .CE(\sum[20][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[20] [2]),
        .R(\sum[20][13]_i_1_n_0 ));
  FDRE \sum_reg[20][3] 
       (.C(p_clk),
        .CE(\sum[20][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[20] [3]),
        .R(\sum[20][13]_i_1_n_0 ));
  FDRE \sum_reg[20][4] 
       (.C(p_clk),
        .CE(\sum[20][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[20] [4]),
        .R(\sum[20][13]_i_1_n_0 ));
  FDRE \sum_reg[20][5] 
       (.C(p_clk),
        .CE(\sum[20][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[20] [5]),
        .R(\sum[20][13]_i_1_n_0 ));
  FDRE \sum_reg[20][6] 
       (.C(p_clk),
        .CE(\sum[20][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[20] [6]),
        .R(\sum[20][13]_i_1_n_0 ));
  FDRE \sum_reg[20][7] 
       (.C(p_clk),
        .CE(\sum[20][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[20] [7]),
        .R(\sum[20][13]_i_1_n_0 ));
  FDRE \sum_reg[20][8] 
       (.C(p_clk),
        .CE(\sum[20][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[20] [8]),
        .R(\sum[20][13]_i_1_n_0 ));
  FDRE \sum_reg[20][9] 
       (.C(p_clk),
        .CE(\sum[20][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[20] [9]),
        .R(\sum[20][13]_i_1_n_0 ));
  FDRE \sum_reg[21][0] 
       (.C(p_clk),
        .CE(\sum[21][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[21] [0]),
        .R(\sum[21][13]_i_1_n_0 ));
  FDRE \sum_reg[21][10] 
       (.C(p_clk),
        .CE(\sum[21][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[21] [10]),
        .R(\sum[21][13]_i_1_n_0 ));
  FDRE \sum_reg[21][11] 
       (.C(p_clk),
        .CE(\sum[21][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[21] [11]),
        .R(\sum[21][13]_i_1_n_0 ));
  FDRE \sum_reg[21][12] 
       (.C(p_clk),
        .CE(\sum[21][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[21] [12]),
        .R(\sum[21][13]_i_1_n_0 ));
  FDRE \sum_reg[21][13] 
       (.C(p_clk),
        .CE(\sum[21][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[21] [13]),
        .R(\sum[21][13]_i_1_n_0 ));
  FDRE \sum_reg[21][1] 
       (.C(p_clk),
        .CE(\sum[21][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[21] [1]),
        .R(\sum[21][13]_i_1_n_0 ));
  FDRE \sum_reg[21][2] 
       (.C(p_clk),
        .CE(\sum[21][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[21] [2]),
        .R(\sum[21][13]_i_1_n_0 ));
  FDRE \sum_reg[21][3] 
       (.C(p_clk),
        .CE(\sum[21][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[21] [3]),
        .R(\sum[21][13]_i_1_n_0 ));
  FDRE \sum_reg[21][4] 
       (.C(p_clk),
        .CE(\sum[21][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[21] [4]),
        .R(\sum[21][13]_i_1_n_0 ));
  FDRE \sum_reg[21][5] 
       (.C(p_clk),
        .CE(\sum[21][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[21] [5]),
        .R(\sum[21][13]_i_1_n_0 ));
  FDRE \sum_reg[21][6] 
       (.C(p_clk),
        .CE(\sum[21][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[21] [6]),
        .R(\sum[21][13]_i_1_n_0 ));
  FDRE \sum_reg[21][7] 
       (.C(p_clk),
        .CE(\sum[21][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[21] [7]),
        .R(\sum[21][13]_i_1_n_0 ));
  FDRE \sum_reg[21][8] 
       (.C(p_clk),
        .CE(\sum[21][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[21] [8]),
        .R(\sum[21][13]_i_1_n_0 ));
  FDRE \sum_reg[21][9] 
       (.C(p_clk),
        .CE(\sum[21][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[21] [9]),
        .R(\sum[21][13]_i_1_n_0 ));
  FDRE \sum_reg[22][0] 
       (.C(p_clk),
        .CE(\sum[22][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[22] [0]),
        .R(\sum[22][13]_i_1_n_0 ));
  FDRE \sum_reg[22][10] 
       (.C(p_clk),
        .CE(\sum[22][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[22] [10]),
        .R(\sum[22][13]_i_1_n_0 ));
  FDRE \sum_reg[22][11] 
       (.C(p_clk),
        .CE(\sum[22][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[22] [11]),
        .R(\sum[22][13]_i_1_n_0 ));
  FDRE \sum_reg[22][12] 
       (.C(p_clk),
        .CE(\sum[22][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[22] [12]),
        .R(\sum[22][13]_i_1_n_0 ));
  FDRE \sum_reg[22][13] 
       (.C(p_clk),
        .CE(\sum[22][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[22] [13]),
        .R(\sum[22][13]_i_1_n_0 ));
  FDRE \sum_reg[22][1] 
       (.C(p_clk),
        .CE(\sum[22][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[22] [1]),
        .R(\sum[22][13]_i_1_n_0 ));
  FDRE \sum_reg[22][2] 
       (.C(p_clk),
        .CE(\sum[22][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[22] [2]),
        .R(\sum[22][13]_i_1_n_0 ));
  FDRE \sum_reg[22][3] 
       (.C(p_clk),
        .CE(\sum[22][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[22] [3]),
        .R(\sum[22][13]_i_1_n_0 ));
  FDRE \sum_reg[22][4] 
       (.C(p_clk),
        .CE(\sum[22][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[22] [4]),
        .R(\sum[22][13]_i_1_n_0 ));
  FDRE \sum_reg[22][5] 
       (.C(p_clk),
        .CE(\sum[22][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[22] [5]),
        .R(\sum[22][13]_i_1_n_0 ));
  FDRE \sum_reg[22][6] 
       (.C(p_clk),
        .CE(\sum[22][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[22] [6]),
        .R(\sum[22][13]_i_1_n_0 ));
  FDRE \sum_reg[22][7] 
       (.C(p_clk),
        .CE(\sum[22][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[22] [7]),
        .R(\sum[22][13]_i_1_n_0 ));
  FDRE \sum_reg[22][8] 
       (.C(p_clk),
        .CE(\sum[22][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[22] [8]),
        .R(\sum[22][13]_i_1_n_0 ));
  FDRE \sum_reg[22][9] 
       (.C(p_clk),
        .CE(\sum[22][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[22] [9]),
        .R(\sum[22][13]_i_1_n_0 ));
  FDRE \sum_reg[23][0] 
       (.C(p_clk),
        .CE(\sum[23][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[23] [0]),
        .R(\sum[23][13]_i_1_n_0 ));
  FDRE \sum_reg[23][10] 
       (.C(p_clk),
        .CE(\sum[23][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[23] [10]),
        .R(\sum[23][13]_i_1_n_0 ));
  FDRE \sum_reg[23][11] 
       (.C(p_clk),
        .CE(\sum[23][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[23] [11]),
        .R(\sum[23][13]_i_1_n_0 ));
  FDRE \sum_reg[23][12] 
       (.C(p_clk),
        .CE(\sum[23][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[23] [12]),
        .R(\sum[23][13]_i_1_n_0 ));
  FDRE \sum_reg[23][13] 
       (.C(p_clk),
        .CE(\sum[23][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[23] [13]),
        .R(\sum[23][13]_i_1_n_0 ));
  FDRE \sum_reg[23][1] 
       (.C(p_clk),
        .CE(\sum[23][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[23] [1]),
        .R(\sum[23][13]_i_1_n_0 ));
  FDRE \sum_reg[23][2] 
       (.C(p_clk),
        .CE(\sum[23][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[23] [2]),
        .R(\sum[23][13]_i_1_n_0 ));
  FDRE \sum_reg[23][3] 
       (.C(p_clk),
        .CE(\sum[23][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[23] [3]),
        .R(\sum[23][13]_i_1_n_0 ));
  FDRE \sum_reg[23][4] 
       (.C(p_clk),
        .CE(\sum[23][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[23] [4]),
        .R(\sum[23][13]_i_1_n_0 ));
  FDRE \sum_reg[23][5] 
       (.C(p_clk),
        .CE(\sum[23][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[23] [5]),
        .R(\sum[23][13]_i_1_n_0 ));
  FDRE \sum_reg[23][6] 
       (.C(p_clk),
        .CE(\sum[23][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[23] [6]),
        .R(\sum[23][13]_i_1_n_0 ));
  FDRE \sum_reg[23][7] 
       (.C(p_clk),
        .CE(\sum[23][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[23] [7]),
        .R(\sum[23][13]_i_1_n_0 ));
  FDRE \sum_reg[23][8] 
       (.C(p_clk),
        .CE(\sum[23][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[23] [8]),
        .R(\sum[23][13]_i_1_n_0 ));
  FDRE \sum_reg[23][9] 
       (.C(p_clk),
        .CE(\sum[23][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[23] [9]),
        .R(\sum[23][13]_i_1_n_0 ));
  FDRE \sum_reg[24][0] 
       (.C(p_clk),
        .CE(\sum[24][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[24] [0]),
        .R(\sum[24][13]_i_1_n_0 ));
  FDRE \sum_reg[24][10] 
       (.C(p_clk),
        .CE(\sum[24][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[24] [10]),
        .R(\sum[24][13]_i_1_n_0 ));
  FDRE \sum_reg[24][11] 
       (.C(p_clk),
        .CE(\sum[24][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[24] [11]),
        .R(\sum[24][13]_i_1_n_0 ));
  FDRE \sum_reg[24][12] 
       (.C(p_clk),
        .CE(\sum[24][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[24] [12]),
        .R(\sum[24][13]_i_1_n_0 ));
  FDRE \sum_reg[24][13] 
       (.C(p_clk),
        .CE(\sum[24][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[24] [13]),
        .R(\sum[24][13]_i_1_n_0 ));
  FDRE \sum_reg[24][1] 
       (.C(p_clk),
        .CE(\sum[24][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[24] [1]),
        .R(\sum[24][13]_i_1_n_0 ));
  FDRE \sum_reg[24][2] 
       (.C(p_clk),
        .CE(\sum[24][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[24] [2]),
        .R(\sum[24][13]_i_1_n_0 ));
  FDRE \sum_reg[24][3] 
       (.C(p_clk),
        .CE(\sum[24][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[24] [3]),
        .R(\sum[24][13]_i_1_n_0 ));
  FDRE \sum_reg[24][4] 
       (.C(p_clk),
        .CE(\sum[24][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[24] [4]),
        .R(\sum[24][13]_i_1_n_0 ));
  FDRE \sum_reg[24][5] 
       (.C(p_clk),
        .CE(\sum[24][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[24] [5]),
        .R(\sum[24][13]_i_1_n_0 ));
  FDRE \sum_reg[24][6] 
       (.C(p_clk),
        .CE(\sum[24][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[24] [6]),
        .R(\sum[24][13]_i_1_n_0 ));
  FDRE \sum_reg[24][7] 
       (.C(p_clk),
        .CE(\sum[24][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[24] [7]),
        .R(\sum[24][13]_i_1_n_0 ));
  FDRE \sum_reg[24][8] 
       (.C(p_clk),
        .CE(\sum[24][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[24] [8]),
        .R(\sum[24][13]_i_1_n_0 ));
  FDRE \sum_reg[24][9] 
       (.C(p_clk),
        .CE(\sum[24][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[24] [9]),
        .R(\sum[24][13]_i_1_n_0 ));
  FDRE \sum_reg[25][0] 
       (.C(p_clk),
        .CE(\sum[25][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[25] [0]),
        .R(\sum[25][13]_i_1_n_0 ));
  FDRE \sum_reg[25][10] 
       (.C(p_clk),
        .CE(\sum[25][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[25] [10]),
        .R(\sum[25][13]_i_1_n_0 ));
  FDRE \sum_reg[25][11] 
       (.C(p_clk),
        .CE(\sum[25][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[25] [11]),
        .R(\sum[25][13]_i_1_n_0 ));
  FDRE \sum_reg[25][12] 
       (.C(p_clk),
        .CE(\sum[25][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[25] [12]),
        .R(\sum[25][13]_i_1_n_0 ));
  FDRE \sum_reg[25][13] 
       (.C(p_clk),
        .CE(\sum[25][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[25] [13]),
        .R(\sum[25][13]_i_1_n_0 ));
  FDRE \sum_reg[25][1] 
       (.C(p_clk),
        .CE(\sum[25][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[25] [1]),
        .R(\sum[25][13]_i_1_n_0 ));
  FDRE \sum_reg[25][2] 
       (.C(p_clk),
        .CE(\sum[25][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[25] [2]),
        .R(\sum[25][13]_i_1_n_0 ));
  FDRE \sum_reg[25][3] 
       (.C(p_clk),
        .CE(\sum[25][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[25] [3]),
        .R(\sum[25][13]_i_1_n_0 ));
  FDRE \sum_reg[25][4] 
       (.C(p_clk),
        .CE(\sum[25][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[25] [4]),
        .R(\sum[25][13]_i_1_n_0 ));
  FDRE \sum_reg[25][5] 
       (.C(p_clk),
        .CE(\sum[25][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[25] [5]),
        .R(\sum[25][13]_i_1_n_0 ));
  FDRE \sum_reg[25][6] 
       (.C(p_clk),
        .CE(\sum[25][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[25] [6]),
        .R(\sum[25][13]_i_1_n_0 ));
  FDRE \sum_reg[25][7] 
       (.C(p_clk),
        .CE(\sum[25][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[25] [7]),
        .R(\sum[25][13]_i_1_n_0 ));
  FDRE \sum_reg[25][8] 
       (.C(p_clk),
        .CE(\sum[25][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[25] [8]),
        .R(\sum[25][13]_i_1_n_0 ));
  FDRE \sum_reg[25][9] 
       (.C(p_clk),
        .CE(\sum[25][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[25] [9]),
        .R(\sum[25][13]_i_1_n_0 ));
  FDRE \sum_reg[26][0] 
       (.C(p_clk),
        .CE(\sum[26][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[26] [0]),
        .R(\sum[26][13]_i_1_n_0 ));
  FDRE \sum_reg[26][10] 
       (.C(p_clk),
        .CE(\sum[26][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[26] [10]),
        .R(\sum[26][13]_i_1_n_0 ));
  FDRE \sum_reg[26][11] 
       (.C(p_clk),
        .CE(\sum[26][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[26] [11]),
        .R(\sum[26][13]_i_1_n_0 ));
  FDRE \sum_reg[26][12] 
       (.C(p_clk),
        .CE(\sum[26][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[26] [12]),
        .R(\sum[26][13]_i_1_n_0 ));
  FDRE \sum_reg[26][13] 
       (.C(p_clk),
        .CE(\sum[26][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[26] [13]),
        .R(\sum[26][13]_i_1_n_0 ));
  FDRE \sum_reg[26][1] 
       (.C(p_clk),
        .CE(\sum[26][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[26] [1]),
        .R(\sum[26][13]_i_1_n_0 ));
  FDRE \sum_reg[26][2] 
       (.C(p_clk),
        .CE(\sum[26][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[26] [2]),
        .R(\sum[26][13]_i_1_n_0 ));
  FDRE \sum_reg[26][3] 
       (.C(p_clk),
        .CE(\sum[26][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[26] [3]),
        .R(\sum[26][13]_i_1_n_0 ));
  FDRE \sum_reg[26][4] 
       (.C(p_clk),
        .CE(\sum[26][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[26] [4]),
        .R(\sum[26][13]_i_1_n_0 ));
  FDRE \sum_reg[26][5] 
       (.C(p_clk),
        .CE(\sum[26][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[26] [5]),
        .R(\sum[26][13]_i_1_n_0 ));
  FDRE \sum_reg[26][6] 
       (.C(p_clk),
        .CE(\sum[26][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[26] [6]),
        .R(\sum[26][13]_i_1_n_0 ));
  FDRE \sum_reg[26][7] 
       (.C(p_clk),
        .CE(\sum[26][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[26] [7]),
        .R(\sum[26][13]_i_1_n_0 ));
  FDRE \sum_reg[26][8] 
       (.C(p_clk),
        .CE(\sum[26][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[26] [8]),
        .R(\sum[26][13]_i_1_n_0 ));
  FDRE \sum_reg[26][9] 
       (.C(p_clk),
        .CE(\sum[26][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[26] [9]),
        .R(\sum[26][13]_i_1_n_0 ));
  FDRE \sum_reg[27][0] 
       (.C(p_clk),
        .CE(\sum[27][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[27] [0]),
        .R(\sum[27][13]_i_1_n_0 ));
  FDRE \sum_reg[27][10] 
       (.C(p_clk),
        .CE(\sum[27][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[27] [10]),
        .R(\sum[27][13]_i_1_n_0 ));
  FDRE \sum_reg[27][11] 
       (.C(p_clk),
        .CE(\sum[27][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[27] [11]),
        .R(\sum[27][13]_i_1_n_0 ));
  FDRE \sum_reg[27][12] 
       (.C(p_clk),
        .CE(\sum[27][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[27] [12]),
        .R(\sum[27][13]_i_1_n_0 ));
  FDRE \sum_reg[27][13] 
       (.C(p_clk),
        .CE(\sum[27][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[27] [13]),
        .R(\sum[27][13]_i_1_n_0 ));
  FDRE \sum_reg[27][1] 
       (.C(p_clk),
        .CE(\sum[27][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[27] [1]),
        .R(\sum[27][13]_i_1_n_0 ));
  FDRE \sum_reg[27][2] 
       (.C(p_clk),
        .CE(\sum[27][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[27] [2]),
        .R(\sum[27][13]_i_1_n_0 ));
  FDRE \sum_reg[27][3] 
       (.C(p_clk),
        .CE(\sum[27][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[27] [3]),
        .R(\sum[27][13]_i_1_n_0 ));
  FDRE \sum_reg[27][4] 
       (.C(p_clk),
        .CE(\sum[27][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[27] [4]),
        .R(\sum[27][13]_i_1_n_0 ));
  FDRE \sum_reg[27][5] 
       (.C(p_clk),
        .CE(\sum[27][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[27] [5]),
        .R(\sum[27][13]_i_1_n_0 ));
  FDRE \sum_reg[27][6] 
       (.C(p_clk),
        .CE(\sum[27][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[27] [6]),
        .R(\sum[27][13]_i_1_n_0 ));
  FDRE \sum_reg[27][7] 
       (.C(p_clk),
        .CE(\sum[27][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[27] [7]),
        .R(\sum[27][13]_i_1_n_0 ));
  FDRE \sum_reg[27][8] 
       (.C(p_clk),
        .CE(\sum[27][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[27] [8]),
        .R(\sum[27][13]_i_1_n_0 ));
  FDRE \sum_reg[27][9] 
       (.C(p_clk),
        .CE(\sum[27][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[27] [9]),
        .R(\sum[27][13]_i_1_n_0 ));
  FDRE \sum_reg[28][0] 
       (.C(p_clk),
        .CE(\sum[28][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[28] [0]),
        .R(\sum[28][13]_i_1_n_0 ));
  FDRE \sum_reg[28][10] 
       (.C(p_clk),
        .CE(\sum[28][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[28] [10]),
        .R(\sum[28][13]_i_1_n_0 ));
  FDRE \sum_reg[28][11] 
       (.C(p_clk),
        .CE(\sum[28][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[28] [11]),
        .R(\sum[28][13]_i_1_n_0 ));
  FDRE \sum_reg[28][12] 
       (.C(p_clk),
        .CE(\sum[28][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[28] [12]),
        .R(\sum[28][13]_i_1_n_0 ));
  FDRE \sum_reg[28][13] 
       (.C(p_clk),
        .CE(\sum[28][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[28] [13]),
        .R(\sum[28][13]_i_1_n_0 ));
  FDRE \sum_reg[28][1] 
       (.C(p_clk),
        .CE(\sum[28][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[28] [1]),
        .R(\sum[28][13]_i_1_n_0 ));
  FDRE \sum_reg[28][2] 
       (.C(p_clk),
        .CE(\sum[28][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[28] [2]),
        .R(\sum[28][13]_i_1_n_0 ));
  FDRE \sum_reg[28][3] 
       (.C(p_clk),
        .CE(\sum[28][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[28] [3]),
        .R(\sum[28][13]_i_1_n_0 ));
  FDRE \sum_reg[28][4] 
       (.C(p_clk),
        .CE(\sum[28][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[28] [4]),
        .R(\sum[28][13]_i_1_n_0 ));
  FDRE \sum_reg[28][5] 
       (.C(p_clk),
        .CE(\sum[28][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[28] [5]),
        .R(\sum[28][13]_i_1_n_0 ));
  FDRE \sum_reg[28][6] 
       (.C(p_clk),
        .CE(\sum[28][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[28] [6]),
        .R(\sum[28][13]_i_1_n_0 ));
  FDRE \sum_reg[28][7] 
       (.C(p_clk),
        .CE(\sum[28][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[28] [7]),
        .R(\sum[28][13]_i_1_n_0 ));
  FDRE \sum_reg[28][8] 
       (.C(p_clk),
        .CE(\sum[28][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[28] [8]),
        .R(\sum[28][13]_i_1_n_0 ));
  FDRE \sum_reg[28][9] 
       (.C(p_clk),
        .CE(\sum[28][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[28] [9]),
        .R(\sum[28][13]_i_1_n_0 ));
  FDRE \sum_reg[29][0] 
       (.C(p_clk),
        .CE(\sum[29][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[29] [0]),
        .R(\sum[29][13]_i_1_n_0 ));
  FDRE \sum_reg[29][10] 
       (.C(p_clk),
        .CE(\sum[29][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[29] [10]),
        .R(\sum[29][13]_i_1_n_0 ));
  FDRE \sum_reg[29][11] 
       (.C(p_clk),
        .CE(\sum[29][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[29] [11]),
        .R(\sum[29][13]_i_1_n_0 ));
  FDRE \sum_reg[29][12] 
       (.C(p_clk),
        .CE(\sum[29][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[29] [12]),
        .R(\sum[29][13]_i_1_n_0 ));
  FDRE \sum_reg[29][13] 
       (.C(p_clk),
        .CE(\sum[29][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[29] [13]),
        .R(\sum[29][13]_i_1_n_0 ));
  FDRE \sum_reg[29][1] 
       (.C(p_clk),
        .CE(\sum[29][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[29] [1]),
        .R(\sum[29][13]_i_1_n_0 ));
  FDRE \sum_reg[29][2] 
       (.C(p_clk),
        .CE(\sum[29][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[29] [2]),
        .R(\sum[29][13]_i_1_n_0 ));
  FDRE \sum_reg[29][3] 
       (.C(p_clk),
        .CE(\sum[29][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[29] [3]),
        .R(\sum[29][13]_i_1_n_0 ));
  FDRE \sum_reg[29][4] 
       (.C(p_clk),
        .CE(\sum[29][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[29] [4]),
        .R(\sum[29][13]_i_1_n_0 ));
  FDRE \sum_reg[29][5] 
       (.C(p_clk),
        .CE(\sum[29][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[29] [5]),
        .R(\sum[29][13]_i_1_n_0 ));
  FDRE \sum_reg[29][6] 
       (.C(p_clk),
        .CE(\sum[29][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[29] [6]),
        .R(\sum[29][13]_i_1_n_0 ));
  FDRE \sum_reg[29][7] 
       (.C(p_clk),
        .CE(\sum[29][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[29] [7]),
        .R(\sum[29][13]_i_1_n_0 ));
  FDRE \sum_reg[29][8] 
       (.C(p_clk),
        .CE(\sum[29][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[29] [8]),
        .R(\sum[29][13]_i_1_n_0 ));
  FDRE \sum_reg[29][9] 
       (.C(p_clk),
        .CE(\sum[29][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[29] [9]),
        .R(\sum[29][13]_i_1_n_0 ));
  FDRE \sum_reg[2][0] 
       (.C(p_clk),
        .CE(\sum[2][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[2] [0]),
        .R(\sum[2][13]_i_1_n_0 ));
  FDRE \sum_reg[2][10] 
       (.C(p_clk),
        .CE(\sum[2][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[2] [10]),
        .R(\sum[2][13]_i_1_n_0 ));
  FDRE \sum_reg[2][11] 
       (.C(p_clk),
        .CE(\sum[2][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[2] [11]),
        .R(\sum[2][13]_i_1_n_0 ));
  FDRE \sum_reg[2][12] 
       (.C(p_clk),
        .CE(\sum[2][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[2] [12]),
        .R(\sum[2][13]_i_1_n_0 ));
  FDRE \sum_reg[2][13] 
       (.C(p_clk),
        .CE(\sum[2][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[2] [13]),
        .R(\sum[2][13]_i_1_n_0 ));
  FDRE \sum_reg[2][1] 
       (.C(p_clk),
        .CE(\sum[2][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[2] [1]),
        .R(\sum[2][13]_i_1_n_0 ));
  FDRE \sum_reg[2][2] 
       (.C(p_clk),
        .CE(\sum[2][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[2] [2]),
        .R(\sum[2][13]_i_1_n_0 ));
  FDRE \sum_reg[2][3] 
       (.C(p_clk),
        .CE(\sum[2][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[2] [3]),
        .R(\sum[2][13]_i_1_n_0 ));
  FDRE \sum_reg[2][4] 
       (.C(p_clk),
        .CE(\sum[2][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[2] [4]),
        .R(\sum[2][13]_i_1_n_0 ));
  FDRE \sum_reg[2][5] 
       (.C(p_clk),
        .CE(\sum[2][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[2] [5]),
        .R(\sum[2][13]_i_1_n_0 ));
  FDRE \sum_reg[2][6] 
       (.C(p_clk),
        .CE(\sum[2][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[2] [6]),
        .R(\sum[2][13]_i_1_n_0 ));
  FDRE \sum_reg[2][7] 
       (.C(p_clk),
        .CE(\sum[2][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[2] [7]),
        .R(\sum[2][13]_i_1_n_0 ));
  FDRE \sum_reg[2][8] 
       (.C(p_clk),
        .CE(\sum[2][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[2] [8]),
        .R(\sum[2][13]_i_1_n_0 ));
  FDRE \sum_reg[2][9] 
       (.C(p_clk),
        .CE(\sum[2][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[2] [9]),
        .R(\sum[2][13]_i_1_n_0 ));
  FDRE \sum_reg[30][0] 
       (.C(p_clk),
        .CE(\sum[30][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[30] [0]),
        .R(\sum[30][13]_i_1_n_0 ));
  FDRE \sum_reg[30][10] 
       (.C(p_clk),
        .CE(\sum[30][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[30] [10]),
        .R(\sum[30][13]_i_1_n_0 ));
  FDRE \sum_reg[30][11] 
       (.C(p_clk),
        .CE(\sum[30][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[30] [11]),
        .R(\sum[30][13]_i_1_n_0 ));
  FDRE \sum_reg[30][12] 
       (.C(p_clk),
        .CE(\sum[30][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[30] [12]),
        .R(\sum[30][13]_i_1_n_0 ));
  FDRE \sum_reg[30][13] 
       (.C(p_clk),
        .CE(\sum[30][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[30] [13]),
        .R(\sum[30][13]_i_1_n_0 ));
  FDRE \sum_reg[30][1] 
       (.C(p_clk),
        .CE(\sum[30][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[30] [1]),
        .R(\sum[30][13]_i_1_n_0 ));
  FDRE \sum_reg[30][2] 
       (.C(p_clk),
        .CE(\sum[30][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[30] [2]),
        .R(\sum[30][13]_i_1_n_0 ));
  FDRE \sum_reg[30][3] 
       (.C(p_clk),
        .CE(\sum[30][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[30] [3]),
        .R(\sum[30][13]_i_1_n_0 ));
  FDRE \sum_reg[30][4] 
       (.C(p_clk),
        .CE(\sum[30][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[30] [4]),
        .R(\sum[30][13]_i_1_n_0 ));
  FDRE \sum_reg[30][5] 
       (.C(p_clk),
        .CE(\sum[30][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[30] [5]),
        .R(\sum[30][13]_i_1_n_0 ));
  FDRE \sum_reg[30][6] 
       (.C(p_clk),
        .CE(\sum[30][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[30] [6]),
        .R(\sum[30][13]_i_1_n_0 ));
  FDRE \sum_reg[30][7] 
       (.C(p_clk),
        .CE(\sum[30][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[30] [7]),
        .R(\sum[30][13]_i_1_n_0 ));
  FDRE \sum_reg[30][8] 
       (.C(p_clk),
        .CE(\sum[30][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[30] [8]),
        .R(\sum[30][13]_i_1_n_0 ));
  FDRE \sum_reg[30][9] 
       (.C(p_clk),
        .CE(\sum[30][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[30] [9]),
        .R(\sum[30][13]_i_1_n_0 ));
  FDRE \sum_reg[31][0] 
       (.C(p_clk),
        .CE(\sum[31][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[31] [0]),
        .R(\sum[31][13]_i_1_n_0 ));
  FDRE \sum_reg[31][10] 
       (.C(p_clk),
        .CE(\sum[31][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[31] [10]),
        .R(\sum[31][13]_i_1_n_0 ));
  FDRE \sum_reg[31][11] 
       (.C(p_clk),
        .CE(\sum[31][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[31] [11]),
        .R(\sum[31][13]_i_1_n_0 ));
  FDRE \sum_reg[31][12] 
       (.C(p_clk),
        .CE(\sum[31][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[31] [12]),
        .R(\sum[31][13]_i_1_n_0 ));
  FDRE \sum_reg[31][13] 
       (.C(p_clk),
        .CE(\sum[31][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[31] [13]),
        .R(\sum[31][13]_i_1_n_0 ));
  FDRE \sum_reg[31][1] 
       (.C(p_clk),
        .CE(\sum[31][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[31] [1]),
        .R(\sum[31][13]_i_1_n_0 ));
  FDRE \sum_reg[31][2] 
       (.C(p_clk),
        .CE(\sum[31][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[31] [2]),
        .R(\sum[31][13]_i_1_n_0 ));
  FDRE \sum_reg[31][3] 
       (.C(p_clk),
        .CE(\sum[31][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[31] [3]),
        .R(\sum[31][13]_i_1_n_0 ));
  FDRE \sum_reg[31][4] 
       (.C(p_clk),
        .CE(\sum[31][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[31] [4]),
        .R(\sum[31][13]_i_1_n_0 ));
  FDRE \sum_reg[31][5] 
       (.C(p_clk),
        .CE(\sum[31][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[31] [5]),
        .R(\sum[31][13]_i_1_n_0 ));
  FDRE \sum_reg[31][6] 
       (.C(p_clk),
        .CE(\sum[31][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[31] [6]),
        .R(\sum[31][13]_i_1_n_0 ));
  FDRE \sum_reg[31][7] 
       (.C(p_clk),
        .CE(\sum[31][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[31] [7]),
        .R(\sum[31][13]_i_1_n_0 ));
  FDRE \sum_reg[31][8] 
       (.C(p_clk),
        .CE(\sum[31][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[31] [8]),
        .R(\sum[31][13]_i_1_n_0 ));
  FDRE \sum_reg[31][9] 
       (.C(p_clk),
        .CE(\sum[31][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[31] [9]),
        .R(\sum[31][13]_i_1_n_0 ));
  FDRE \sum_reg[32][0] 
       (.C(p_clk),
        .CE(\sum[32][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[32] [0]),
        .R(\sum[32][13]_i_1_n_0 ));
  FDRE \sum_reg[32][10] 
       (.C(p_clk),
        .CE(\sum[32][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[32] [10]),
        .R(\sum[32][13]_i_1_n_0 ));
  FDRE \sum_reg[32][11] 
       (.C(p_clk),
        .CE(\sum[32][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[32] [11]),
        .R(\sum[32][13]_i_1_n_0 ));
  FDRE \sum_reg[32][12] 
       (.C(p_clk),
        .CE(\sum[32][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[32] [12]),
        .R(\sum[32][13]_i_1_n_0 ));
  FDRE \sum_reg[32][13] 
       (.C(p_clk),
        .CE(\sum[32][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[32] [13]),
        .R(\sum[32][13]_i_1_n_0 ));
  FDRE \sum_reg[32][1] 
       (.C(p_clk),
        .CE(\sum[32][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[32] [1]),
        .R(\sum[32][13]_i_1_n_0 ));
  FDRE \sum_reg[32][2] 
       (.C(p_clk),
        .CE(\sum[32][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[32] [2]),
        .R(\sum[32][13]_i_1_n_0 ));
  FDRE \sum_reg[32][3] 
       (.C(p_clk),
        .CE(\sum[32][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[32] [3]),
        .R(\sum[32][13]_i_1_n_0 ));
  FDRE \sum_reg[32][4] 
       (.C(p_clk),
        .CE(\sum[32][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[32] [4]),
        .R(\sum[32][13]_i_1_n_0 ));
  FDRE \sum_reg[32][5] 
       (.C(p_clk),
        .CE(\sum[32][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[32] [5]),
        .R(\sum[32][13]_i_1_n_0 ));
  FDRE \sum_reg[32][6] 
       (.C(p_clk),
        .CE(\sum[32][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[32] [6]),
        .R(\sum[32][13]_i_1_n_0 ));
  FDRE \sum_reg[32][7] 
       (.C(p_clk),
        .CE(\sum[32][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[32] [7]),
        .R(\sum[32][13]_i_1_n_0 ));
  FDRE \sum_reg[32][8] 
       (.C(p_clk),
        .CE(\sum[32][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[32] [8]),
        .R(\sum[32][13]_i_1_n_0 ));
  FDRE \sum_reg[32][9] 
       (.C(p_clk),
        .CE(\sum[32][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[32] [9]),
        .R(\sum[32][13]_i_1_n_0 ));
  FDRE \sum_reg[33][0] 
       (.C(p_clk),
        .CE(\sum[33][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[33] [0]),
        .R(\sum[33][13]_i_1_n_0 ));
  FDRE \sum_reg[33][10] 
       (.C(p_clk),
        .CE(\sum[33][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[33] [10]),
        .R(\sum[33][13]_i_1_n_0 ));
  FDRE \sum_reg[33][11] 
       (.C(p_clk),
        .CE(\sum[33][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[33] [11]),
        .R(\sum[33][13]_i_1_n_0 ));
  FDRE \sum_reg[33][12] 
       (.C(p_clk),
        .CE(\sum[33][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[33] [12]),
        .R(\sum[33][13]_i_1_n_0 ));
  FDRE \sum_reg[33][13] 
       (.C(p_clk),
        .CE(\sum[33][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[33] [13]),
        .R(\sum[33][13]_i_1_n_0 ));
  FDRE \sum_reg[33][1] 
       (.C(p_clk),
        .CE(\sum[33][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[33] [1]),
        .R(\sum[33][13]_i_1_n_0 ));
  FDRE \sum_reg[33][2] 
       (.C(p_clk),
        .CE(\sum[33][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[33] [2]),
        .R(\sum[33][13]_i_1_n_0 ));
  FDRE \sum_reg[33][3] 
       (.C(p_clk),
        .CE(\sum[33][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[33] [3]),
        .R(\sum[33][13]_i_1_n_0 ));
  FDRE \sum_reg[33][4] 
       (.C(p_clk),
        .CE(\sum[33][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[33] [4]),
        .R(\sum[33][13]_i_1_n_0 ));
  FDRE \sum_reg[33][5] 
       (.C(p_clk),
        .CE(\sum[33][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[33] [5]),
        .R(\sum[33][13]_i_1_n_0 ));
  FDRE \sum_reg[33][6] 
       (.C(p_clk),
        .CE(\sum[33][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[33] [6]),
        .R(\sum[33][13]_i_1_n_0 ));
  FDRE \sum_reg[33][7] 
       (.C(p_clk),
        .CE(\sum[33][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[33] [7]),
        .R(\sum[33][13]_i_1_n_0 ));
  FDRE \sum_reg[33][8] 
       (.C(p_clk),
        .CE(\sum[33][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[33] [8]),
        .R(\sum[33][13]_i_1_n_0 ));
  FDRE \sum_reg[33][9] 
       (.C(p_clk),
        .CE(\sum[33][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[33] [9]),
        .R(\sum[33][13]_i_1_n_0 ));
  FDRE \sum_reg[34][0] 
       (.C(p_clk),
        .CE(\sum[34][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[34] [0]),
        .R(\sum[34][13]_i_1_n_0 ));
  FDRE \sum_reg[34][10] 
       (.C(p_clk),
        .CE(\sum[34][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[34] [10]),
        .R(\sum[34][13]_i_1_n_0 ));
  FDRE \sum_reg[34][11] 
       (.C(p_clk),
        .CE(\sum[34][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[34] [11]),
        .R(\sum[34][13]_i_1_n_0 ));
  FDRE \sum_reg[34][12] 
       (.C(p_clk),
        .CE(\sum[34][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[34] [12]),
        .R(\sum[34][13]_i_1_n_0 ));
  FDRE \sum_reg[34][13] 
       (.C(p_clk),
        .CE(\sum[34][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[34] [13]),
        .R(\sum[34][13]_i_1_n_0 ));
  FDRE \sum_reg[34][1] 
       (.C(p_clk),
        .CE(\sum[34][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[34] [1]),
        .R(\sum[34][13]_i_1_n_0 ));
  FDRE \sum_reg[34][2] 
       (.C(p_clk),
        .CE(\sum[34][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[34] [2]),
        .R(\sum[34][13]_i_1_n_0 ));
  FDRE \sum_reg[34][3] 
       (.C(p_clk),
        .CE(\sum[34][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[34] [3]),
        .R(\sum[34][13]_i_1_n_0 ));
  FDRE \sum_reg[34][4] 
       (.C(p_clk),
        .CE(\sum[34][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[34] [4]),
        .R(\sum[34][13]_i_1_n_0 ));
  FDRE \sum_reg[34][5] 
       (.C(p_clk),
        .CE(\sum[34][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[34] [5]),
        .R(\sum[34][13]_i_1_n_0 ));
  FDRE \sum_reg[34][6] 
       (.C(p_clk),
        .CE(\sum[34][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[34] [6]),
        .R(\sum[34][13]_i_1_n_0 ));
  FDRE \sum_reg[34][7] 
       (.C(p_clk),
        .CE(\sum[34][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[34] [7]),
        .R(\sum[34][13]_i_1_n_0 ));
  FDRE \sum_reg[34][8] 
       (.C(p_clk),
        .CE(\sum[34][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[34] [8]),
        .R(\sum[34][13]_i_1_n_0 ));
  FDRE \sum_reg[34][9] 
       (.C(p_clk),
        .CE(\sum[34][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[34] [9]),
        .R(\sum[34][13]_i_1_n_0 ));
  FDRE \sum_reg[35][0] 
       (.C(p_clk),
        .CE(\sum[35][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[35] [0]),
        .R(\sum[35][13]_i_1_n_0 ));
  FDRE \sum_reg[35][10] 
       (.C(p_clk),
        .CE(\sum[35][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[35] [10]),
        .R(\sum[35][13]_i_1_n_0 ));
  FDRE \sum_reg[35][11] 
       (.C(p_clk),
        .CE(\sum[35][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[35] [11]),
        .R(\sum[35][13]_i_1_n_0 ));
  FDRE \sum_reg[35][12] 
       (.C(p_clk),
        .CE(\sum[35][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[35] [12]),
        .R(\sum[35][13]_i_1_n_0 ));
  FDRE \sum_reg[35][13] 
       (.C(p_clk),
        .CE(\sum[35][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[35] [13]),
        .R(\sum[35][13]_i_1_n_0 ));
  FDRE \sum_reg[35][1] 
       (.C(p_clk),
        .CE(\sum[35][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[35] [1]),
        .R(\sum[35][13]_i_1_n_0 ));
  FDRE \sum_reg[35][2] 
       (.C(p_clk),
        .CE(\sum[35][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[35] [2]),
        .R(\sum[35][13]_i_1_n_0 ));
  FDRE \sum_reg[35][3] 
       (.C(p_clk),
        .CE(\sum[35][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[35] [3]),
        .R(\sum[35][13]_i_1_n_0 ));
  FDRE \sum_reg[35][4] 
       (.C(p_clk),
        .CE(\sum[35][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[35] [4]),
        .R(\sum[35][13]_i_1_n_0 ));
  FDRE \sum_reg[35][5] 
       (.C(p_clk),
        .CE(\sum[35][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[35] [5]),
        .R(\sum[35][13]_i_1_n_0 ));
  FDRE \sum_reg[35][6] 
       (.C(p_clk),
        .CE(\sum[35][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[35] [6]),
        .R(\sum[35][13]_i_1_n_0 ));
  FDRE \sum_reg[35][7] 
       (.C(p_clk),
        .CE(\sum[35][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[35] [7]),
        .R(\sum[35][13]_i_1_n_0 ));
  FDRE \sum_reg[35][8] 
       (.C(p_clk),
        .CE(\sum[35][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[35] [8]),
        .R(\sum[35][13]_i_1_n_0 ));
  FDRE \sum_reg[35][9] 
       (.C(p_clk),
        .CE(\sum[35][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[35] [9]),
        .R(\sum[35][13]_i_1_n_0 ));
  FDRE \sum_reg[36][0] 
       (.C(p_clk),
        .CE(\sum[36][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[36] [0]),
        .R(\sum[36][13]_i_1_n_0 ));
  FDRE \sum_reg[36][10] 
       (.C(p_clk),
        .CE(\sum[36][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[36] [10]),
        .R(\sum[36][13]_i_1_n_0 ));
  FDRE \sum_reg[36][11] 
       (.C(p_clk),
        .CE(\sum[36][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[36] [11]),
        .R(\sum[36][13]_i_1_n_0 ));
  FDRE \sum_reg[36][12] 
       (.C(p_clk),
        .CE(\sum[36][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[36] [12]),
        .R(\sum[36][13]_i_1_n_0 ));
  FDRE \sum_reg[36][13] 
       (.C(p_clk),
        .CE(\sum[36][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[36] [13]),
        .R(\sum[36][13]_i_1_n_0 ));
  FDRE \sum_reg[36][1] 
       (.C(p_clk),
        .CE(\sum[36][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[36] [1]),
        .R(\sum[36][13]_i_1_n_0 ));
  FDRE \sum_reg[36][2] 
       (.C(p_clk),
        .CE(\sum[36][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[36] [2]),
        .R(\sum[36][13]_i_1_n_0 ));
  FDRE \sum_reg[36][3] 
       (.C(p_clk),
        .CE(\sum[36][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[36] [3]),
        .R(\sum[36][13]_i_1_n_0 ));
  FDRE \sum_reg[36][4] 
       (.C(p_clk),
        .CE(\sum[36][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[36] [4]),
        .R(\sum[36][13]_i_1_n_0 ));
  FDRE \sum_reg[36][5] 
       (.C(p_clk),
        .CE(\sum[36][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[36] [5]),
        .R(\sum[36][13]_i_1_n_0 ));
  FDRE \sum_reg[36][6] 
       (.C(p_clk),
        .CE(\sum[36][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[36] [6]),
        .R(\sum[36][13]_i_1_n_0 ));
  FDRE \sum_reg[36][7] 
       (.C(p_clk),
        .CE(\sum[36][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[36] [7]),
        .R(\sum[36][13]_i_1_n_0 ));
  FDRE \sum_reg[36][8] 
       (.C(p_clk),
        .CE(\sum[36][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[36] [8]),
        .R(\sum[36][13]_i_1_n_0 ));
  FDRE \sum_reg[36][9] 
       (.C(p_clk),
        .CE(\sum[36][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[36] [9]),
        .R(\sum[36][13]_i_1_n_0 ));
  FDRE \sum_reg[37][0] 
       (.C(p_clk),
        .CE(\sum[37][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[37] [0]),
        .R(\sum[37][13]_i_1_n_0 ));
  FDRE \sum_reg[37][10] 
       (.C(p_clk),
        .CE(\sum[37][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[37] [10]),
        .R(\sum[37][13]_i_1_n_0 ));
  FDRE \sum_reg[37][11] 
       (.C(p_clk),
        .CE(\sum[37][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[37] [11]),
        .R(\sum[37][13]_i_1_n_0 ));
  FDRE \sum_reg[37][12] 
       (.C(p_clk),
        .CE(\sum[37][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[37] [12]),
        .R(\sum[37][13]_i_1_n_0 ));
  FDRE \sum_reg[37][13] 
       (.C(p_clk),
        .CE(\sum[37][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[37] [13]),
        .R(\sum[37][13]_i_1_n_0 ));
  FDRE \sum_reg[37][1] 
       (.C(p_clk),
        .CE(\sum[37][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[37] [1]),
        .R(\sum[37][13]_i_1_n_0 ));
  FDRE \sum_reg[37][2] 
       (.C(p_clk),
        .CE(\sum[37][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[37] [2]),
        .R(\sum[37][13]_i_1_n_0 ));
  FDRE \sum_reg[37][3] 
       (.C(p_clk),
        .CE(\sum[37][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[37] [3]),
        .R(\sum[37][13]_i_1_n_0 ));
  FDRE \sum_reg[37][4] 
       (.C(p_clk),
        .CE(\sum[37][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[37] [4]),
        .R(\sum[37][13]_i_1_n_0 ));
  FDRE \sum_reg[37][5] 
       (.C(p_clk),
        .CE(\sum[37][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[37] [5]),
        .R(\sum[37][13]_i_1_n_0 ));
  FDRE \sum_reg[37][6] 
       (.C(p_clk),
        .CE(\sum[37][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[37] [6]),
        .R(\sum[37][13]_i_1_n_0 ));
  FDRE \sum_reg[37][7] 
       (.C(p_clk),
        .CE(\sum[37][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[37] [7]),
        .R(\sum[37][13]_i_1_n_0 ));
  FDRE \sum_reg[37][8] 
       (.C(p_clk),
        .CE(\sum[37][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[37] [8]),
        .R(\sum[37][13]_i_1_n_0 ));
  FDRE \sum_reg[37][9] 
       (.C(p_clk),
        .CE(\sum[37][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[37] [9]),
        .R(\sum[37][13]_i_1_n_0 ));
  FDRE \sum_reg[38][0] 
       (.C(p_clk),
        .CE(\sum[38][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[38] [0]),
        .R(\sum[38][13]_i_1_n_0 ));
  FDRE \sum_reg[38][10] 
       (.C(p_clk),
        .CE(\sum[38][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[38] [10]),
        .R(\sum[38][13]_i_1_n_0 ));
  FDRE \sum_reg[38][11] 
       (.C(p_clk),
        .CE(\sum[38][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[38] [11]),
        .R(\sum[38][13]_i_1_n_0 ));
  FDRE \sum_reg[38][12] 
       (.C(p_clk),
        .CE(\sum[38][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[38] [12]),
        .R(\sum[38][13]_i_1_n_0 ));
  FDRE \sum_reg[38][13] 
       (.C(p_clk),
        .CE(\sum[38][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[38] [13]),
        .R(\sum[38][13]_i_1_n_0 ));
  FDRE \sum_reg[38][1] 
       (.C(p_clk),
        .CE(\sum[38][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[38] [1]),
        .R(\sum[38][13]_i_1_n_0 ));
  FDRE \sum_reg[38][2] 
       (.C(p_clk),
        .CE(\sum[38][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[38] [2]),
        .R(\sum[38][13]_i_1_n_0 ));
  FDRE \sum_reg[38][3] 
       (.C(p_clk),
        .CE(\sum[38][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[38] [3]),
        .R(\sum[38][13]_i_1_n_0 ));
  FDRE \sum_reg[38][4] 
       (.C(p_clk),
        .CE(\sum[38][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[38] [4]),
        .R(\sum[38][13]_i_1_n_0 ));
  FDRE \sum_reg[38][5] 
       (.C(p_clk),
        .CE(\sum[38][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[38] [5]),
        .R(\sum[38][13]_i_1_n_0 ));
  FDRE \sum_reg[38][6] 
       (.C(p_clk),
        .CE(\sum[38][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[38] [6]),
        .R(\sum[38][13]_i_1_n_0 ));
  FDRE \sum_reg[38][7] 
       (.C(p_clk),
        .CE(\sum[38][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[38] [7]),
        .R(\sum[38][13]_i_1_n_0 ));
  FDRE \sum_reg[38][8] 
       (.C(p_clk),
        .CE(\sum[38][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[38] [8]),
        .R(\sum[38][13]_i_1_n_0 ));
  FDRE \sum_reg[38][9] 
       (.C(p_clk),
        .CE(\sum[38][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[38] [9]),
        .R(\sum[38][13]_i_1_n_0 ));
  FDRE \sum_reg[39][0] 
       (.C(p_clk),
        .CE(\sum[39][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[39] [0]),
        .R(\sum[39][13]_i_1_n_0 ));
  FDRE \sum_reg[39][10] 
       (.C(p_clk),
        .CE(\sum[39][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[39] [10]),
        .R(\sum[39][13]_i_1_n_0 ));
  FDRE \sum_reg[39][11] 
       (.C(p_clk),
        .CE(\sum[39][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[39] [11]),
        .R(\sum[39][13]_i_1_n_0 ));
  FDRE \sum_reg[39][12] 
       (.C(p_clk),
        .CE(\sum[39][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[39] [12]),
        .R(\sum[39][13]_i_1_n_0 ));
  FDRE \sum_reg[39][13] 
       (.C(p_clk),
        .CE(\sum[39][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[39] [13]),
        .R(\sum[39][13]_i_1_n_0 ));
  FDRE \sum_reg[39][1] 
       (.C(p_clk),
        .CE(\sum[39][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[39] [1]),
        .R(\sum[39][13]_i_1_n_0 ));
  FDRE \sum_reg[39][2] 
       (.C(p_clk),
        .CE(\sum[39][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[39] [2]),
        .R(\sum[39][13]_i_1_n_0 ));
  FDRE \sum_reg[39][3] 
       (.C(p_clk),
        .CE(\sum[39][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[39] [3]),
        .R(\sum[39][13]_i_1_n_0 ));
  FDRE \sum_reg[39][4] 
       (.C(p_clk),
        .CE(\sum[39][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[39] [4]),
        .R(\sum[39][13]_i_1_n_0 ));
  FDRE \sum_reg[39][5] 
       (.C(p_clk),
        .CE(\sum[39][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[39] [5]),
        .R(\sum[39][13]_i_1_n_0 ));
  FDRE \sum_reg[39][6] 
       (.C(p_clk),
        .CE(\sum[39][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[39] [6]),
        .R(\sum[39][13]_i_1_n_0 ));
  FDRE \sum_reg[39][7] 
       (.C(p_clk),
        .CE(\sum[39][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[39] [7]),
        .R(\sum[39][13]_i_1_n_0 ));
  FDRE \sum_reg[39][8] 
       (.C(p_clk),
        .CE(\sum[39][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[39] [8]),
        .R(\sum[39][13]_i_1_n_0 ));
  FDRE \sum_reg[39][9] 
       (.C(p_clk),
        .CE(\sum[39][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[39] [9]),
        .R(\sum[39][13]_i_1_n_0 ));
  FDRE \sum_reg[3][0] 
       (.C(p_clk),
        .CE(\sum[3][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[3] [0]),
        .R(\sum[3][13]_i_1_n_0 ));
  FDRE \sum_reg[3][10] 
       (.C(p_clk),
        .CE(\sum[3][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[3] [10]),
        .R(\sum[3][13]_i_1_n_0 ));
  FDRE \sum_reg[3][11] 
       (.C(p_clk),
        .CE(\sum[3][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[3] [11]),
        .R(\sum[3][13]_i_1_n_0 ));
  FDRE \sum_reg[3][12] 
       (.C(p_clk),
        .CE(\sum[3][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[3] [12]),
        .R(\sum[3][13]_i_1_n_0 ));
  FDRE \sum_reg[3][13] 
       (.C(p_clk),
        .CE(\sum[3][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[3] [13]),
        .R(\sum[3][13]_i_1_n_0 ));
  FDRE \sum_reg[3][1] 
       (.C(p_clk),
        .CE(\sum[3][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[3] [1]),
        .R(\sum[3][13]_i_1_n_0 ));
  FDRE \sum_reg[3][2] 
       (.C(p_clk),
        .CE(\sum[3][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[3] [2]),
        .R(\sum[3][13]_i_1_n_0 ));
  FDRE \sum_reg[3][3] 
       (.C(p_clk),
        .CE(\sum[3][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[3] [3]),
        .R(\sum[3][13]_i_1_n_0 ));
  FDRE \sum_reg[3][4] 
       (.C(p_clk),
        .CE(\sum[3][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[3] [4]),
        .R(\sum[3][13]_i_1_n_0 ));
  FDRE \sum_reg[3][5] 
       (.C(p_clk),
        .CE(\sum[3][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[3] [5]),
        .R(\sum[3][13]_i_1_n_0 ));
  FDRE \sum_reg[3][6] 
       (.C(p_clk),
        .CE(\sum[3][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[3] [6]),
        .R(\sum[3][13]_i_1_n_0 ));
  FDRE \sum_reg[3][7] 
       (.C(p_clk),
        .CE(\sum[3][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[3] [7]),
        .R(\sum[3][13]_i_1_n_0 ));
  FDRE \sum_reg[3][8] 
       (.C(p_clk),
        .CE(\sum[3][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[3] [8]),
        .R(\sum[3][13]_i_1_n_0 ));
  FDRE \sum_reg[3][9] 
       (.C(p_clk),
        .CE(\sum[3][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[3] [9]),
        .R(\sum[3][13]_i_1_n_0 ));
  FDRE \sum_reg[40][0] 
       (.C(p_clk),
        .CE(\sum[40][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[40] [0]),
        .R(\sum[40][13]_i_1_n_0 ));
  FDRE \sum_reg[40][10] 
       (.C(p_clk),
        .CE(\sum[40][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[40] [10]),
        .R(\sum[40][13]_i_1_n_0 ));
  FDRE \sum_reg[40][11] 
       (.C(p_clk),
        .CE(\sum[40][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[40] [11]),
        .R(\sum[40][13]_i_1_n_0 ));
  FDRE \sum_reg[40][12] 
       (.C(p_clk),
        .CE(\sum[40][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[40] [12]),
        .R(\sum[40][13]_i_1_n_0 ));
  FDRE \sum_reg[40][13] 
       (.C(p_clk),
        .CE(\sum[40][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[40] [13]),
        .R(\sum[40][13]_i_1_n_0 ));
  FDRE \sum_reg[40][1] 
       (.C(p_clk),
        .CE(\sum[40][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[40] [1]),
        .R(\sum[40][13]_i_1_n_0 ));
  FDRE \sum_reg[40][2] 
       (.C(p_clk),
        .CE(\sum[40][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[40] [2]),
        .R(\sum[40][13]_i_1_n_0 ));
  FDRE \sum_reg[40][3] 
       (.C(p_clk),
        .CE(\sum[40][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[40] [3]),
        .R(\sum[40][13]_i_1_n_0 ));
  FDRE \sum_reg[40][4] 
       (.C(p_clk),
        .CE(\sum[40][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[40] [4]),
        .R(\sum[40][13]_i_1_n_0 ));
  FDRE \sum_reg[40][5] 
       (.C(p_clk),
        .CE(\sum[40][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[40] [5]),
        .R(\sum[40][13]_i_1_n_0 ));
  FDRE \sum_reg[40][6] 
       (.C(p_clk),
        .CE(\sum[40][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[40] [6]),
        .R(\sum[40][13]_i_1_n_0 ));
  FDRE \sum_reg[40][7] 
       (.C(p_clk),
        .CE(\sum[40][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[40] [7]),
        .R(\sum[40][13]_i_1_n_0 ));
  FDRE \sum_reg[40][8] 
       (.C(p_clk),
        .CE(\sum[40][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[40] [8]),
        .R(\sum[40][13]_i_1_n_0 ));
  FDRE \sum_reg[40][9] 
       (.C(p_clk),
        .CE(\sum[40][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[40] [9]),
        .R(\sum[40][13]_i_1_n_0 ));
  FDRE \sum_reg[41][0] 
       (.C(p_clk),
        .CE(\sum[41][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[41] [0]),
        .R(\sum[41][13]_i_1_n_0 ));
  FDRE \sum_reg[41][10] 
       (.C(p_clk),
        .CE(\sum[41][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[41] [10]),
        .R(\sum[41][13]_i_1_n_0 ));
  FDRE \sum_reg[41][11] 
       (.C(p_clk),
        .CE(\sum[41][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[41] [11]),
        .R(\sum[41][13]_i_1_n_0 ));
  FDRE \sum_reg[41][12] 
       (.C(p_clk),
        .CE(\sum[41][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[41] [12]),
        .R(\sum[41][13]_i_1_n_0 ));
  FDRE \sum_reg[41][13] 
       (.C(p_clk),
        .CE(\sum[41][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[41] [13]),
        .R(\sum[41][13]_i_1_n_0 ));
  FDRE \sum_reg[41][1] 
       (.C(p_clk),
        .CE(\sum[41][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[41] [1]),
        .R(\sum[41][13]_i_1_n_0 ));
  FDRE \sum_reg[41][2] 
       (.C(p_clk),
        .CE(\sum[41][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[41] [2]),
        .R(\sum[41][13]_i_1_n_0 ));
  FDRE \sum_reg[41][3] 
       (.C(p_clk),
        .CE(\sum[41][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[41] [3]),
        .R(\sum[41][13]_i_1_n_0 ));
  FDRE \sum_reg[41][4] 
       (.C(p_clk),
        .CE(\sum[41][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[41] [4]),
        .R(\sum[41][13]_i_1_n_0 ));
  FDRE \sum_reg[41][5] 
       (.C(p_clk),
        .CE(\sum[41][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[41] [5]),
        .R(\sum[41][13]_i_1_n_0 ));
  FDRE \sum_reg[41][6] 
       (.C(p_clk),
        .CE(\sum[41][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[41] [6]),
        .R(\sum[41][13]_i_1_n_0 ));
  FDRE \sum_reg[41][7] 
       (.C(p_clk),
        .CE(\sum[41][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[41] [7]),
        .R(\sum[41][13]_i_1_n_0 ));
  FDRE \sum_reg[41][8] 
       (.C(p_clk),
        .CE(\sum[41][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[41] [8]),
        .R(\sum[41][13]_i_1_n_0 ));
  FDRE \sum_reg[41][9] 
       (.C(p_clk),
        .CE(\sum[41][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[41] [9]),
        .R(\sum[41][13]_i_1_n_0 ));
  FDRE \sum_reg[42][0] 
       (.C(p_clk),
        .CE(\sum[42][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[42] [0]),
        .R(\sum[42][13]_i_1_n_0 ));
  FDRE \sum_reg[42][10] 
       (.C(p_clk),
        .CE(\sum[42][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[42] [10]),
        .R(\sum[42][13]_i_1_n_0 ));
  FDRE \sum_reg[42][11] 
       (.C(p_clk),
        .CE(\sum[42][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[42] [11]),
        .R(\sum[42][13]_i_1_n_0 ));
  FDRE \sum_reg[42][12] 
       (.C(p_clk),
        .CE(\sum[42][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[42] [12]),
        .R(\sum[42][13]_i_1_n_0 ));
  FDRE \sum_reg[42][13] 
       (.C(p_clk),
        .CE(\sum[42][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[42] [13]),
        .R(\sum[42][13]_i_1_n_0 ));
  FDRE \sum_reg[42][1] 
       (.C(p_clk),
        .CE(\sum[42][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[42] [1]),
        .R(\sum[42][13]_i_1_n_0 ));
  FDRE \sum_reg[42][2] 
       (.C(p_clk),
        .CE(\sum[42][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[42] [2]),
        .R(\sum[42][13]_i_1_n_0 ));
  FDRE \sum_reg[42][3] 
       (.C(p_clk),
        .CE(\sum[42][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[42] [3]),
        .R(\sum[42][13]_i_1_n_0 ));
  FDRE \sum_reg[42][4] 
       (.C(p_clk),
        .CE(\sum[42][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[42] [4]),
        .R(\sum[42][13]_i_1_n_0 ));
  FDRE \sum_reg[42][5] 
       (.C(p_clk),
        .CE(\sum[42][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[42] [5]),
        .R(\sum[42][13]_i_1_n_0 ));
  FDRE \sum_reg[42][6] 
       (.C(p_clk),
        .CE(\sum[42][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[42] [6]),
        .R(\sum[42][13]_i_1_n_0 ));
  FDRE \sum_reg[42][7] 
       (.C(p_clk),
        .CE(\sum[42][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[42] [7]),
        .R(\sum[42][13]_i_1_n_0 ));
  FDRE \sum_reg[42][8] 
       (.C(p_clk),
        .CE(\sum[42][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[42] [8]),
        .R(\sum[42][13]_i_1_n_0 ));
  FDRE \sum_reg[42][9] 
       (.C(p_clk),
        .CE(\sum[42][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[42] [9]),
        .R(\sum[42][13]_i_1_n_0 ));
  FDRE \sum_reg[43][0] 
       (.C(p_clk),
        .CE(\sum[43][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[43] [0]),
        .R(\sum[43][13]_i_1_n_0 ));
  FDRE \sum_reg[43][10] 
       (.C(p_clk),
        .CE(\sum[43][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[43] [10]),
        .R(\sum[43][13]_i_1_n_0 ));
  FDRE \sum_reg[43][11] 
       (.C(p_clk),
        .CE(\sum[43][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[43] [11]),
        .R(\sum[43][13]_i_1_n_0 ));
  FDRE \sum_reg[43][12] 
       (.C(p_clk),
        .CE(\sum[43][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[43] [12]),
        .R(\sum[43][13]_i_1_n_0 ));
  FDRE \sum_reg[43][13] 
       (.C(p_clk),
        .CE(\sum[43][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[43] [13]),
        .R(\sum[43][13]_i_1_n_0 ));
  FDRE \sum_reg[43][1] 
       (.C(p_clk),
        .CE(\sum[43][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[43] [1]),
        .R(\sum[43][13]_i_1_n_0 ));
  FDRE \sum_reg[43][2] 
       (.C(p_clk),
        .CE(\sum[43][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[43] [2]),
        .R(\sum[43][13]_i_1_n_0 ));
  FDRE \sum_reg[43][3] 
       (.C(p_clk),
        .CE(\sum[43][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[43] [3]),
        .R(\sum[43][13]_i_1_n_0 ));
  FDRE \sum_reg[43][4] 
       (.C(p_clk),
        .CE(\sum[43][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[43] [4]),
        .R(\sum[43][13]_i_1_n_0 ));
  FDRE \sum_reg[43][5] 
       (.C(p_clk),
        .CE(\sum[43][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[43] [5]),
        .R(\sum[43][13]_i_1_n_0 ));
  FDRE \sum_reg[43][6] 
       (.C(p_clk),
        .CE(\sum[43][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[43] [6]),
        .R(\sum[43][13]_i_1_n_0 ));
  FDRE \sum_reg[43][7] 
       (.C(p_clk),
        .CE(\sum[43][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[43] [7]),
        .R(\sum[43][13]_i_1_n_0 ));
  FDRE \sum_reg[43][8] 
       (.C(p_clk),
        .CE(\sum[43][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[43] [8]),
        .R(\sum[43][13]_i_1_n_0 ));
  FDRE \sum_reg[43][9] 
       (.C(p_clk),
        .CE(\sum[43][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[43] [9]),
        .R(\sum[43][13]_i_1_n_0 ));
  FDRE \sum_reg[44][0] 
       (.C(p_clk),
        .CE(\sum[44][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[44] [0]),
        .R(\sum[44][13]_i_1_n_0 ));
  FDRE \sum_reg[44][10] 
       (.C(p_clk),
        .CE(\sum[44][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[44] [10]),
        .R(\sum[44][13]_i_1_n_0 ));
  FDRE \sum_reg[44][11] 
       (.C(p_clk),
        .CE(\sum[44][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[44] [11]),
        .R(\sum[44][13]_i_1_n_0 ));
  FDRE \sum_reg[44][12] 
       (.C(p_clk),
        .CE(\sum[44][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[44] [12]),
        .R(\sum[44][13]_i_1_n_0 ));
  FDRE \sum_reg[44][13] 
       (.C(p_clk),
        .CE(\sum[44][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[44] [13]),
        .R(\sum[44][13]_i_1_n_0 ));
  FDRE \sum_reg[44][1] 
       (.C(p_clk),
        .CE(\sum[44][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[44] [1]),
        .R(\sum[44][13]_i_1_n_0 ));
  FDRE \sum_reg[44][2] 
       (.C(p_clk),
        .CE(\sum[44][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[44] [2]),
        .R(\sum[44][13]_i_1_n_0 ));
  FDRE \sum_reg[44][3] 
       (.C(p_clk),
        .CE(\sum[44][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[44] [3]),
        .R(\sum[44][13]_i_1_n_0 ));
  FDRE \sum_reg[44][4] 
       (.C(p_clk),
        .CE(\sum[44][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[44] [4]),
        .R(\sum[44][13]_i_1_n_0 ));
  FDRE \sum_reg[44][5] 
       (.C(p_clk),
        .CE(\sum[44][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[44] [5]),
        .R(\sum[44][13]_i_1_n_0 ));
  FDRE \sum_reg[44][6] 
       (.C(p_clk),
        .CE(\sum[44][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[44] [6]),
        .R(\sum[44][13]_i_1_n_0 ));
  FDRE \sum_reg[44][7] 
       (.C(p_clk),
        .CE(\sum[44][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[44] [7]),
        .R(\sum[44][13]_i_1_n_0 ));
  FDRE \sum_reg[44][8] 
       (.C(p_clk),
        .CE(\sum[44][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[44] [8]),
        .R(\sum[44][13]_i_1_n_0 ));
  FDRE \sum_reg[44][9] 
       (.C(p_clk),
        .CE(\sum[44][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[44] [9]),
        .R(\sum[44][13]_i_1_n_0 ));
  FDRE \sum_reg[45][0] 
       (.C(p_clk),
        .CE(\sum[45][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[45] [0]),
        .R(\sum[45][13]_i_1_n_0 ));
  FDRE \sum_reg[45][10] 
       (.C(p_clk),
        .CE(\sum[45][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[45] [10]),
        .R(\sum[45][13]_i_1_n_0 ));
  FDRE \sum_reg[45][11] 
       (.C(p_clk),
        .CE(\sum[45][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[45] [11]),
        .R(\sum[45][13]_i_1_n_0 ));
  FDRE \sum_reg[45][12] 
       (.C(p_clk),
        .CE(\sum[45][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[45] [12]),
        .R(\sum[45][13]_i_1_n_0 ));
  FDRE \sum_reg[45][13] 
       (.C(p_clk),
        .CE(\sum[45][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[45] [13]),
        .R(\sum[45][13]_i_1_n_0 ));
  FDRE \sum_reg[45][1] 
       (.C(p_clk),
        .CE(\sum[45][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[45] [1]),
        .R(\sum[45][13]_i_1_n_0 ));
  FDRE \sum_reg[45][2] 
       (.C(p_clk),
        .CE(\sum[45][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[45] [2]),
        .R(\sum[45][13]_i_1_n_0 ));
  FDRE \sum_reg[45][3] 
       (.C(p_clk),
        .CE(\sum[45][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[45] [3]),
        .R(\sum[45][13]_i_1_n_0 ));
  FDRE \sum_reg[45][4] 
       (.C(p_clk),
        .CE(\sum[45][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[45] [4]),
        .R(\sum[45][13]_i_1_n_0 ));
  FDRE \sum_reg[45][5] 
       (.C(p_clk),
        .CE(\sum[45][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[45] [5]),
        .R(\sum[45][13]_i_1_n_0 ));
  FDRE \sum_reg[45][6] 
       (.C(p_clk),
        .CE(\sum[45][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[45] [6]),
        .R(\sum[45][13]_i_1_n_0 ));
  FDRE \sum_reg[45][7] 
       (.C(p_clk),
        .CE(\sum[45][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[45] [7]),
        .R(\sum[45][13]_i_1_n_0 ));
  FDRE \sum_reg[45][8] 
       (.C(p_clk),
        .CE(\sum[45][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[45] [8]),
        .R(\sum[45][13]_i_1_n_0 ));
  FDRE \sum_reg[45][9] 
       (.C(p_clk),
        .CE(\sum[45][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[45] [9]),
        .R(\sum[45][13]_i_1_n_0 ));
  FDRE \sum_reg[46][0] 
       (.C(p_clk),
        .CE(\sum[46][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[46] [0]),
        .R(\sum[46][13]_i_1_n_0 ));
  FDRE \sum_reg[46][10] 
       (.C(p_clk),
        .CE(\sum[46][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[46] [10]),
        .R(\sum[46][13]_i_1_n_0 ));
  FDRE \sum_reg[46][11] 
       (.C(p_clk),
        .CE(\sum[46][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[46] [11]),
        .R(\sum[46][13]_i_1_n_0 ));
  FDRE \sum_reg[46][12] 
       (.C(p_clk),
        .CE(\sum[46][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[46] [12]),
        .R(\sum[46][13]_i_1_n_0 ));
  FDRE \sum_reg[46][13] 
       (.C(p_clk),
        .CE(\sum[46][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[46] [13]),
        .R(\sum[46][13]_i_1_n_0 ));
  FDRE \sum_reg[46][1] 
       (.C(p_clk),
        .CE(\sum[46][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[46] [1]),
        .R(\sum[46][13]_i_1_n_0 ));
  FDRE \sum_reg[46][2] 
       (.C(p_clk),
        .CE(\sum[46][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[46] [2]),
        .R(\sum[46][13]_i_1_n_0 ));
  FDRE \sum_reg[46][3] 
       (.C(p_clk),
        .CE(\sum[46][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[46] [3]),
        .R(\sum[46][13]_i_1_n_0 ));
  FDRE \sum_reg[46][4] 
       (.C(p_clk),
        .CE(\sum[46][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[46] [4]),
        .R(\sum[46][13]_i_1_n_0 ));
  FDRE \sum_reg[46][5] 
       (.C(p_clk),
        .CE(\sum[46][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[46] [5]),
        .R(\sum[46][13]_i_1_n_0 ));
  FDRE \sum_reg[46][6] 
       (.C(p_clk),
        .CE(\sum[46][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[46] [6]),
        .R(\sum[46][13]_i_1_n_0 ));
  FDRE \sum_reg[46][7] 
       (.C(p_clk),
        .CE(\sum[46][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[46] [7]),
        .R(\sum[46][13]_i_1_n_0 ));
  FDRE \sum_reg[46][8] 
       (.C(p_clk),
        .CE(\sum[46][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[46] [8]),
        .R(\sum[46][13]_i_1_n_0 ));
  FDRE \sum_reg[46][9] 
       (.C(p_clk),
        .CE(\sum[46][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[46] [9]),
        .R(\sum[46][13]_i_1_n_0 ));
  FDRE \sum_reg[47][0] 
       (.C(p_clk),
        .CE(\sum[47][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[47] [0]),
        .R(\sum[47][13]_i_1_n_0 ));
  FDRE \sum_reg[47][10] 
       (.C(p_clk),
        .CE(\sum[47][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[47] [10]),
        .R(\sum[47][13]_i_1_n_0 ));
  FDRE \sum_reg[47][11] 
       (.C(p_clk),
        .CE(\sum[47][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[47] [11]),
        .R(\sum[47][13]_i_1_n_0 ));
  FDRE \sum_reg[47][12] 
       (.C(p_clk),
        .CE(\sum[47][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[47] [12]),
        .R(\sum[47][13]_i_1_n_0 ));
  FDRE \sum_reg[47][13] 
       (.C(p_clk),
        .CE(\sum[47][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[47] [13]),
        .R(\sum[47][13]_i_1_n_0 ));
  FDRE \sum_reg[47][1] 
       (.C(p_clk),
        .CE(\sum[47][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[47] [1]),
        .R(\sum[47][13]_i_1_n_0 ));
  FDRE \sum_reg[47][2] 
       (.C(p_clk),
        .CE(\sum[47][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[47] [2]),
        .R(\sum[47][13]_i_1_n_0 ));
  FDRE \sum_reg[47][3] 
       (.C(p_clk),
        .CE(\sum[47][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[47] [3]),
        .R(\sum[47][13]_i_1_n_0 ));
  FDRE \sum_reg[47][4] 
       (.C(p_clk),
        .CE(\sum[47][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[47] [4]),
        .R(\sum[47][13]_i_1_n_0 ));
  FDRE \sum_reg[47][5] 
       (.C(p_clk),
        .CE(\sum[47][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[47] [5]),
        .R(\sum[47][13]_i_1_n_0 ));
  FDRE \sum_reg[47][6] 
       (.C(p_clk),
        .CE(\sum[47][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[47] [6]),
        .R(\sum[47][13]_i_1_n_0 ));
  FDRE \sum_reg[47][7] 
       (.C(p_clk),
        .CE(\sum[47][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[47] [7]),
        .R(\sum[47][13]_i_1_n_0 ));
  FDRE \sum_reg[47][8] 
       (.C(p_clk),
        .CE(\sum[47][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[47] [8]),
        .R(\sum[47][13]_i_1_n_0 ));
  FDRE \sum_reg[47][9] 
       (.C(p_clk),
        .CE(\sum[47][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[47] [9]),
        .R(\sum[47][13]_i_1_n_0 ));
  FDRE \sum_reg[4][0] 
       (.C(p_clk),
        .CE(\sum[4][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[4] [0]),
        .R(\sum[4][13]_i_1_n_0 ));
  FDRE \sum_reg[4][10] 
       (.C(p_clk),
        .CE(\sum[4][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[4] [10]),
        .R(\sum[4][13]_i_1_n_0 ));
  FDRE \sum_reg[4][11] 
       (.C(p_clk),
        .CE(\sum[4][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[4] [11]),
        .R(\sum[4][13]_i_1_n_0 ));
  FDRE \sum_reg[4][12] 
       (.C(p_clk),
        .CE(\sum[4][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[4] [12]),
        .R(\sum[4][13]_i_1_n_0 ));
  FDRE \sum_reg[4][13] 
       (.C(p_clk),
        .CE(\sum[4][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[4] [13]),
        .R(\sum[4][13]_i_1_n_0 ));
  FDRE \sum_reg[4][1] 
       (.C(p_clk),
        .CE(\sum[4][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[4] [1]),
        .R(\sum[4][13]_i_1_n_0 ));
  FDRE \sum_reg[4][2] 
       (.C(p_clk),
        .CE(\sum[4][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[4] [2]),
        .R(\sum[4][13]_i_1_n_0 ));
  FDRE \sum_reg[4][3] 
       (.C(p_clk),
        .CE(\sum[4][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[4] [3]),
        .R(\sum[4][13]_i_1_n_0 ));
  FDRE \sum_reg[4][4] 
       (.C(p_clk),
        .CE(\sum[4][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[4] [4]),
        .R(\sum[4][13]_i_1_n_0 ));
  FDRE \sum_reg[4][5] 
       (.C(p_clk),
        .CE(\sum[4][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[4] [5]),
        .R(\sum[4][13]_i_1_n_0 ));
  FDRE \sum_reg[4][6] 
       (.C(p_clk),
        .CE(\sum[4][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[4] [6]),
        .R(\sum[4][13]_i_1_n_0 ));
  FDRE \sum_reg[4][7] 
       (.C(p_clk),
        .CE(\sum[4][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[4] [7]),
        .R(\sum[4][13]_i_1_n_0 ));
  FDRE \sum_reg[4][8] 
       (.C(p_clk),
        .CE(\sum[4][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[4] [8]),
        .R(\sum[4][13]_i_1_n_0 ));
  FDRE \sum_reg[4][9] 
       (.C(p_clk),
        .CE(\sum[4][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[4] [9]),
        .R(\sum[4][13]_i_1_n_0 ));
  FDRE \sum_reg[5][0] 
       (.C(p_clk),
        .CE(\sum[5][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[5] [0]),
        .R(\sum[5][13]_i_1_n_0 ));
  FDRE \sum_reg[5][10] 
       (.C(p_clk),
        .CE(\sum[5][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[5] [10]),
        .R(\sum[5][13]_i_1_n_0 ));
  FDRE \sum_reg[5][11] 
       (.C(p_clk),
        .CE(\sum[5][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[5] [11]),
        .R(\sum[5][13]_i_1_n_0 ));
  FDRE \sum_reg[5][12] 
       (.C(p_clk),
        .CE(\sum[5][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[5] [12]),
        .R(\sum[5][13]_i_1_n_0 ));
  FDRE \sum_reg[5][13] 
       (.C(p_clk),
        .CE(\sum[5][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[5] [13]),
        .R(\sum[5][13]_i_1_n_0 ));
  FDRE \sum_reg[5][1] 
       (.C(p_clk),
        .CE(\sum[5][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[5] [1]),
        .R(\sum[5][13]_i_1_n_0 ));
  FDRE \sum_reg[5][2] 
       (.C(p_clk),
        .CE(\sum[5][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[5] [2]),
        .R(\sum[5][13]_i_1_n_0 ));
  FDRE \sum_reg[5][3] 
       (.C(p_clk),
        .CE(\sum[5][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[5] [3]),
        .R(\sum[5][13]_i_1_n_0 ));
  FDRE \sum_reg[5][4] 
       (.C(p_clk),
        .CE(\sum[5][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[5] [4]),
        .R(\sum[5][13]_i_1_n_0 ));
  FDRE \sum_reg[5][5] 
       (.C(p_clk),
        .CE(\sum[5][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[5] [5]),
        .R(\sum[5][13]_i_1_n_0 ));
  FDRE \sum_reg[5][6] 
       (.C(p_clk),
        .CE(\sum[5][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[5] [6]),
        .R(\sum[5][13]_i_1_n_0 ));
  FDRE \sum_reg[5][7] 
       (.C(p_clk),
        .CE(\sum[5][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[5] [7]),
        .R(\sum[5][13]_i_1_n_0 ));
  FDRE \sum_reg[5][8] 
       (.C(p_clk),
        .CE(\sum[5][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[5] [8]),
        .R(\sum[5][13]_i_1_n_0 ));
  FDRE \sum_reg[5][9] 
       (.C(p_clk),
        .CE(\sum[5][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[5] [9]),
        .R(\sum[5][13]_i_1_n_0 ));
  FDRE \sum_reg[6][0] 
       (.C(p_clk),
        .CE(\sum[6][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[6] [0]),
        .R(\sum[6][13]_i_1_n_0 ));
  FDRE \sum_reg[6][10] 
       (.C(p_clk),
        .CE(\sum[6][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[6] [10]),
        .R(\sum[6][13]_i_1_n_0 ));
  FDRE \sum_reg[6][11] 
       (.C(p_clk),
        .CE(\sum[6][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[6] [11]),
        .R(\sum[6][13]_i_1_n_0 ));
  FDRE \sum_reg[6][12] 
       (.C(p_clk),
        .CE(\sum[6][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[6] [12]),
        .R(\sum[6][13]_i_1_n_0 ));
  FDRE \sum_reg[6][13] 
       (.C(p_clk),
        .CE(\sum[6][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[6] [13]),
        .R(\sum[6][13]_i_1_n_0 ));
  FDRE \sum_reg[6][1] 
       (.C(p_clk),
        .CE(\sum[6][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[6] [1]),
        .R(\sum[6][13]_i_1_n_0 ));
  FDRE \sum_reg[6][2] 
       (.C(p_clk),
        .CE(\sum[6][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[6] [2]),
        .R(\sum[6][13]_i_1_n_0 ));
  FDRE \sum_reg[6][3] 
       (.C(p_clk),
        .CE(\sum[6][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[6] [3]),
        .R(\sum[6][13]_i_1_n_0 ));
  FDRE \sum_reg[6][4] 
       (.C(p_clk),
        .CE(\sum[6][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[6] [4]),
        .R(\sum[6][13]_i_1_n_0 ));
  FDRE \sum_reg[6][5] 
       (.C(p_clk),
        .CE(\sum[6][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[6] [5]),
        .R(\sum[6][13]_i_1_n_0 ));
  FDRE \sum_reg[6][6] 
       (.C(p_clk),
        .CE(\sum[6][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[6] [6]),
        .R(\sum[6][13]_i_1_n_0 ));
  FDRE \sum_reg[6][7] 
       (.C(p_clk),
        .CE(\sum[6][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[6] [7]),
        .R(\sum[6][13]_i_1_n_0 ));
  FDRE \sum_reg[6][8] 
       (.C(p_clk),
        .CE(\sum[6][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[6] [8]),
        .R(\sum[6][13]_i_1_n_0 ));
  FDRE \sum_reg[6][9] 
       (.C(p_clk),
        .CE(\sum[6][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[6] [9]),
        .R(\sum[6][13]_i_1_n_0 ));
  FDRE \sum_reg[7][0] 
       (.C(p_clk),
        .CE(\sum[7][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[7] [0]),
        .R(\sum[7][13]_i_1_n_0 ));
  FDRE \sum_reg[7][10] 
       (.C(p_clk),
        .CE(\sum[7][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[7] [10]),
        .R(\sum[7][13]_i_1_n_0 ));
  FDRE \sum_reg[7][11] 
       (.C(p_clk),
        .CE(\sum[7][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[7] [11]),
        .R(\sum[7][13]_i_1_n_0 ));
  FDRE \sum_reg[7][12] 
       (.C(p_clk),
        .CE(\sum[7][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[7] [12]),
        .R(\sum[7][13]_i_1_n_0 ));
  FDRE \sum_reg[7][13] 
       (.C(p_clk),
        .CE(\sum[7][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[7] [13]),
        .R(\sum[7][13]_i_1_n_0 ));
  FDRE \sum_reg[7][1] 
       (.C(p_clk),
        .CE(\sum[7][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[7] [1]),
        .R(\sum[7][13]_i_1_n_0 ));
  FDRE \sum_reg[7][2] 
       (.C(p_clk),
        .CE(\sum[7][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[7] [2]),
        .R(\sum[7][13]_i_1_n_0 ));
  FDRE \sum_reg[7][3] 
       (.C(p_clk),
        .CE(\sum[7][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[7] [3]),
        .R(\sum[7][13]_i_1_n_0 ));
  FDRE \sum_reg[7][4] 
       (.C(p_clk),
        .CE(\sum[7][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[7] [4]),
        .R(\sum[7][13]_i_1_n_0 ));
  FDRE \sum_reg[7][5] 
       (.C(p_clk),
        .CE(\sum[7][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[7] [5]),
        .R(\sum[7][13]_i_1_n_0 ));
  FDRE \sum_reg[7][6] 
       (.C(p_clk),
        .CE(\sum[7][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[7] [6]),
        .R(\sum[7][13]_i_1_n_0 ));
  FDRE \sum_reg[7][7] 
       (.C(p_clk),
        .CE(\sum[7][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[7] [7]),
        .R(\sum[7][13]_i_1_n_0 ));
  FDRE \sum_reg[7][8] 
       (.C(p_clk),
        .CE(\sum[7][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[7] [8]),
        .R(\sum[7][13]_i_1_n_0 ));
  FDRE \sum_reg[7][9] 
       (.C(p_clk),
        .CE(\sum[7][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[7] [9]),
        .R(\sum[7][13]_i_1_n_0 ));
  FDRE \sum_reg[8][0] 
       (.C(p_clk),
        .CE(\sum[8][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[8] [0]),
        .R(\sum[8][13]_i_1_n_0 ));
  FDRE \sum_reg[8][10] 
       (.C(p_clk),
        .CE(\sum[8][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[8] [10]),
        .R(\sum[8][13]_i_1_n_0 ));
  FDRE \sum_reg[8][11] 
       (.C(p_clk),
        .CE(\sum[8][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[8] [11]),
        .R(\sum[8][13]_i_1_n_0 ));
  FDRE \sum_reg[8][12] 
       (.C(p_clk),
        .CE(\sum[8][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[8] [12]),
        .R(\sum[8][13]_i_1_n_0 ));
  FDRE \sum_reg[8][13] 
       (.C(p_clk),
        .CE(\sum[8][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[8] [13]),
        .R(\sum[8][13]_i_1_n_0 ));
  FDRE \sum_reg[8][1] 
       (.C(p_clk),
        .CE(\sum[8][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[8] [1]),
        .R(\sum[8][13]_i_1_n_0 ));
  FDRE \sum_reg[8][2] 
       (.C(p_clk),
        .CE(\sum[8][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[8] [2]),
        .R(\sum[8][13]_i_1_n_0 ));
  FDRE \sum_reg[8][3] 
       (.C(p_clk),
        .CE(\sum[8][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[8] [3]),
        .R(\sum[8][13]_i_1_n_0 ));
  FDRE \sum_reg[8][4] 
       (.C(p_clk),
        .CE(\sum[8][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[8] [4]),
        .R(\sum[8][13]_i_1_n_0 ));
  FDRE \sum_reg[8][5] 
       (.C(p_clk),
        .CE(\sum[8][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[8] [5]),
        .R(\sum[8][13]_i_1_n_0 ));
  FDRE \sum_reg[8][6] 
       (.C(p_clk),
        .CE(\sum[8][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[8] [6]),
        .R(\sum[8][13]_i_1_n_0 ));
  FDRE \sum_reg[8][7] 
       (.C(p_clk),
        .CE(\sum[8][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[8] [7]),
        .R(\sum[8][13]_i_1_n_0 ));
  FDRE \sum_reg[8][8] 
       (.C(p_clk),
        .CE(\sum[8][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[8] [8]),
        .R(\sum[8][13]_i_1_n_0 ));
  FDRE \sum_reg[8][9] 
       (.C(p_clk),
        .CE(\sum[8][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[8] [9]),
        .R(\sum[8][13]_i_1_n_0 ));
  FDRE \sum_reg[9][0] 
       (.C(p_clk),
        .CE(\sum[9][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_7 ),
        .Q(\sum_reg[9] [0]),
        .R(\sum[9][13]_i_1_n_0 ));
  FDRE \sum_reg[9][10] 
       (.C(p_clk),
        .CE(\sum[9][13]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\sum_reg[9] [10]),
        .R(\sum[9][13]_i_1_n_0 ));
  FDRE \sum_reg[9][11] 
       (.C(p_clk),
        .CE(\sum[9][13]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\sum_reg[9] [11]),
        .R(\sum[9][13]_i_1_n_0 ));
  FDRE \sum_reg[9][12] 
       (.C(p_clk),
        .CE(\sum[9][13]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\sum_reg[9] [12]),
        .R(\sum[9][13]_i_1_n_0 ));
  FDRE \sum_reg[9][13] 
       (.C(p_clk),
        .CE(\sum[9][13]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\sum_reg[9] [13]),
        .R(\sum[9][13]_i_1_n_0 ));
  FDRE \sum_reg[9][1] 
       (.C(p_clk),
        .CE(\sum[9][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_6 ),
        .Q(\sum_reg[9] [1]),
        .R(\sum[9][13]_i_1_n_0 ));
  FDRE \sum_reg[9][2] 
       (.C(p_clk),
        .CE(\sum[9][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_5 ),
        .Q(\sum_reg[9] [2]),
        .R(\sum[9][13]_i_1_n_0 ));
  FDRE \sum_reg[9][3] 
       (.C(p_clk),
        .CE(\sum[9][13]_i_2_n_0 ),
        .D(\sum_reg[0][3]_i_1_n_4 ),
        .Q(\sum_reg[9] [3]),
        .R(\sum[9][13]_i_1_n_0 ));
  FDRE \sum_reg[9][4] 
       (.C(p_clk),
        .CE(\sum[9][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_7 ),
        .Q(\sum_reg[9] [4]),
        .R(\sum[9][13]_i_1_n_0 ));
  FDRE \sum_reg[9][5] 
       (.C(p_clk),
        .CE(\sum[9][13]_i_2_n_0 ),
        .D(\pixel_data_avg_reg[1]_i_1_n_6 ),
        .Q(\sum_reg[9] [5]),
        .R(\sum[9][13]_i_1_n_0 ));
  FDRE \sum_reg[9][6] 
       (.C(p_clk),
        .CE(\sum[9][13]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\sum_reg[9] [6]),
        .R(\sum[9][13]_i_1_n_0 ));
  FDRE \sum_reg[9][7] 
       (.C(p_clk),
        .CE(\sum[9][13]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\sum_reg[9] [7]),
        .R(\sum[9][13]_i_1_n_0 ));
  FDRE \sum_reg[9][8] 
       (.C(p_clk),
        .CE(\sum[9][13]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\sum_reg[9] [8]),
        .R(\sum[9][13]_i_1_n_0 ));
  FDRE \sum_reg[9][9] 
       (.C(p_clk),
        .CE(\sum[9][13]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\sum_reg[9] [9]),
        .R(\sum[9][13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \x_count[0]_i_1 
       (.I0(input_valid),
        .I1(x_count[0]),
        .O(\x_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \x_count[1]_i_1 
       (.I0(x_count[0]),
        .I1(input_valid),
        .I2(x_count[1]),
        .O(\x_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \x_count[2]_i_1 
       (.I0(x_count[0]),
        .I1(x_count[1]),
        .I2(input_valid),
        .I3(x_count[2]),
        .O(\x_count[2]_i_1_n_0 ));
  FDRE \x_count_reg[0] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\x_count[0]_i_1_n_0 ),
        .Q(x_count[0]),
        .R(reset));
  FDRE \x_count_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\x_count[1]_i_1_n_0 ),
        .Q(x_count[1]),
        .R(reset));
  FDRE \x_count_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\x_count[2]_i_1_n_0 ),
        .Q(x_count[2]),
        .R(reset));
  LUT2 #(
    .INIT(4'h6)) 
    \y_count[0]_i_1 
       (.I0(y_count),
        .I1(\y_count_reg_n_0_[0] ),
        .O(\y_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \y_count[1]_i_1 
       (.I0(\y_count_reg_n_0_[0] ),
        .I1(y_count),
        .I2(\y_count_reg_n_0_[1] ),
        .O(\y_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \y_count[2]_i_1 
       (.I0(\y_count_reg_n_0_[1] ),
        .I1(\y_count_reg_n_0_[0] ),
        .I2(y_count),
        .I3(\y_count_reg_n_0_[2] ),
        .O(\y_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \y_count[2]_i_2 
       (.I0(col_index[5]),
        .I1(col_index[3]),
        .I2(\y_count[2]_i_3_n_0 ),
        .I3(col_index[2]),
        .I4(col_index[4]),
        .I5(input_valid),
        .O(y_count));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \y_count[2]_i_3 
       (.I0(x_count[0]),
        .I1(col_index[1]),
        .I2(col_index[0]),
        .I3(x_count[2]),
        .I4(x_count[1]),
        .O(\y_count[2]_i_3_n_0 ));
  FDRE \y_count_reg[0] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\y_count[0]_i_1_n_0 ),
        .Q(\y_count_reg_n_0_[0] ),
        .R(reset));
  FDRE \y_count_reg[1] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\y_count[1]_i_1_n_0 ),
        .Q(\y_count_reg_n_0_[1] ),
        .R(reset));
  FDRE \y_count_reg[2] 
       (.C(p_clk),
        .CE(1'b1),
        .D(\y_count[2]_i_1_n_0 ),
        .Q(\y_count_reg_n_0_[2] ),
        .R(reset));
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
