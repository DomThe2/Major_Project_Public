-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Thu May  7 03:47:55 2026
-- Host        : harun running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/harun/Documents/MP/MP_DEMO_COMBINED/MP_DEMO_COMBINED.gen/sources_1/bd/design_1/ip/design_1_smoothing_0_0/design_1_smoothing_0_0_sim_netlist.vhdl
-- Design      : design_1_smoothing_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_smoothing_0_0_smoothing is
  port (
    pixel_data_avg : out STD_LOGIC_VECTOR ( 7 downto 0 );
    output_valid : out STD_LOGIC;
    input_valid : in STD_LOGIC;
    reset : in STD_LOGIC;
    p_clk : in STD_LOGIC;
    pixel_data_grayscale : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_smoothing_0_0_smoothing : entity is "smoothing";
end design_1_smoothing_0_0_smoothing;

architecture STRUCTURE of design_1_smoothing_0_0_smoothing is
  signal col_index : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \col_index[5]_i_1_n_0\ : STD_LOGIC;
  signal col_index_0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal output_valid_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \pixel_data_avg[1]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_42_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_43_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_44_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_45_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_46_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_47_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_48_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_49_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_4_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_50_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_51_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_52_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_53_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_54_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_55_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_56_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_57_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_58_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_59_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_5_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_60_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_61_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_62_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_63_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_64_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_65_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_66_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_67_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_68_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_69_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_70_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_71_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_72_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_73_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_74_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_75_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_76_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_77_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_78_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_79_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_80_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_81_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_82_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_83_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_84_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_85_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_86_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_87_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_88_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[1]_i_89_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_42_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_43_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_44_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_45_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_46_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_47_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_48_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_49_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_50_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_51_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_52_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_53_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_54_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_55_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_56_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_57_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_58_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_59_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_60_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_61_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_62_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_63_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_64_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_65_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_66_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_67_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_68_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_69_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_70_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_71_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_72_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_73_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_74_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_75_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_76_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_77_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_78_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_79_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_80_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_81_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_82_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_83_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_84_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_85_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_86_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_87_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_88_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[5]_i_89_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_24_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_25_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_26_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_27_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_28_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_29_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_30_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_31_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_32_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_33_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_34_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_35_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_36_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_37_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_38_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_39_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_40_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_41_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_42_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_43_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_44_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_45_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_46_n_0\ : STD_LOGIC;
  signal \pixel_data_avg[7]_i_47_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_10_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_11_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_12_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_13_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_14_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_15_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_16_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_17_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_18_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_19_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_1_n_1\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_1_n_2\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_1_n_3\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_1_n_6\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_1_n_7\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_20_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_21_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_22_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_23_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_24_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_25_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_26_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_27_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_28_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_29_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_30_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_31_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_32_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_33_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_34_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_35_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_36_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_37_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_38_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_39_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_40_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_41_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_8_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[1]_i_9_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_10_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_11_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_12_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_13_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_14_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_15_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_16_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_17_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_18_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_19_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_1_n_1\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_1_n_2\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_20_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_21_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_22_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_23_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_24_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_25_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_26_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_27_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_28_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_29_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_30_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_31_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_32_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_33_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_34_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_35_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_36_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_37_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_38_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_39_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_40_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_41_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_6_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_7_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_8_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[5]_i_9_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[7]_i_10_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[7]_i_11_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[7]_i_12_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[7]_i_13_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[7]_i_14_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[7]_i_15_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[7]_i_16_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[7]_i_17_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[7]_i_18_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[7]_i_19_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[7]_i_20_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[7]_i_21_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[7]_i_22_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[7]_i_23_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \pixel_data_avg_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \pixel_data_avg_reg[7]_i_9_n_0\ : STD_LOGIC;
  signal sum : STD_LOGIC_VECTOR ( 13 downto 8 );
  signal \sum[0][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[0][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[0][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[0][13]_i_4_n_0\ : STD_LOGIC;
  signal \sum[0][13]_i_5_n_0\ : STD_LOGIC;
  signal \sum[0][13]_i_6_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_2_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_3_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_42_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_43_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_44_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_45_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_46_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_47_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_48_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_49_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_4_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_50_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_51_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_52_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_53_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_54_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_55_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_56_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_57_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_58_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_59_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_5_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_60_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_61_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_62_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_63_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_64_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_65_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_66_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_67_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_68_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_69_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_70_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_71_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_72_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_73_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_74_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_75_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_76_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_77_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_78_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_79_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_80_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_81_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_82_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_83_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_84_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_85_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_86_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_87_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_88_n_0\ : STD_LOGIC;
  signal \sum[0][3]_i_89_n_0\ : STD_LOGIC;
  signal \sum[10][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[10][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[10][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[11][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[11][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[11][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[12][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[12][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[12][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[13][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[13][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[13][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[14][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[14][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[14][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[15][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[15][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[15][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[16][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[16][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[16][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[17][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[17][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[17][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[18][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[18][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[18][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[19][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[19][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[1][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[1][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[1][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[1][13]_i_4_n_0\ : STD_LOGIC;
  signal \sum[1][13]_i_5_n_0\ : STD_LOGIC;
  signal \sum[1][13]_i_6_n_0\ : STD_LOGIC;
  signal \sum[20][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[20][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[20][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[21][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[21][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[21][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[22][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[22][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[22][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[23][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[23][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[24][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[24][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[24][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[25][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[25][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[25][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[26][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[26][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[26][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[27][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[27][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[28][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[28][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[28][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[29][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[29][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[29][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[2][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[2][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[2][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[2][13]_i_4_n_0\ : STD_LOGIC;
  signal \sum[2][13]_i_5_n_0\ : STD_LOGIC;
  signal \sum[2][13]_i_6_n_0\ : STD_LOGIC;
  signal \sum[30][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[30][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[30][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[31][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[31][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[32][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[32][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[33][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[33][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[34][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[34][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[35][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[35][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[36][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[36][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[37][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[37][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[38][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[38][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[39][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[39][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[3][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[3][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[3][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[3][13]_i_4_n_0\ : STD_LOGIC;
  signal \sum[3][13]_i_5_n_0\ : STD_LOGIC;
  signal \sum[40][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[40][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[41][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[41][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[42][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[42][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[43][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[43][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[44][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[44][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[45][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[45][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[46][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[46][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[47][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[47][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[4][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[4][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[4][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[4][13]_i_4_n_0\ : STD_LOGIC;
  signal \sum[5][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[5][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[5][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[5][13]_i_4_n_0\ : STD_LOGIC;
  signal \sum[6][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[6][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[6][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[6][13]_i_4_n_0\ : STD_LOGIC;
  signal \sum[7][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[7][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[7][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[7][13]_i_4_n_0\ : STD_LOGIC;
  signal \sum[8][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[8][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[8][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum[9][13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[9][13]_i_2_n_0\ : STD_LOGIC;
  signal \sum[9][13]_i_3_n_0\ : STD_LOGIC;
  signal \sum_reg[0]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[0][3]_i_10_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_11_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_12_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_13_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_14_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_15_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_16_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_17_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_18_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_19_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_1_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_1_n_1\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_1_n_2\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_1_n_3\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_1_n_4\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_1_n_5\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_1_n_6\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_1_n_7\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_20_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_21_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_22_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_23_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_24_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_25_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_26_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_27_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_28_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_29_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_30_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_31_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_32_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_33_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_34_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_35_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_36_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_37_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_38_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_39_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_40_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_41_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_6_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_7_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_8_n_0\ : STD_LOGIC;
  signal \sum_reg[0][3]_i_9_n_0\ : STD_LOGIC;
  signal \sum_reg[10]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[11]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[12]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[13]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[14]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[15]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[16]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[17]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[18]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[19]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[1]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[20]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[21]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[22]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[23]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[24]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[25]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[26]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[27]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[28]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[29]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[2]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[30]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[31]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[32]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[33]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[34]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[35]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[36]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[37]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[38]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[39]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[3]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[40]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[41]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[42]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[43]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[44]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[45]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[46]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[47]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[4]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[5]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[6]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[7]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[8]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \sum_reg[9]\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal x_count : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \x_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \x_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \x_count[2]_i_1_n_0\ : STD_LOGIC;
  signal y_count : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \y_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \y_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \y_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \y_count[2]_i_3_n_0\ : STD_LOGIC;
  signal \y_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \y_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \y_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \NLW_pixel_data_avg_reg[7]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pixel_data_avg_reg[7]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \col_index[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \col_index[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \col_index[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \col_index[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \pixel_data_avg[7]_i_3\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \pixel_data_avg_reg[1]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \pixel_data_avg_reg[5]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \pixel_data_avg_reg[7]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \sum[16][13]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sum[17][13]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sum[18][13]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sum[20][13]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sum[21][13]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sum[22][13]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sum[24][13]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sum[25][13]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sum[26][13]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sum[28][13]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sum[29][13]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sum[30][13]_i_3\ : label is "soft_lutpair5";
  attribute ADDER_THRESHOLD of \sum_reg[0][3]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \x_count[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \x_count[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \y_count[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \y_count[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \y_count[2]_i_3\ : label is "soft_lutpair0";
begin
\col_index[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => col_index(0),
      O => col_index_0(0)
    );
\col_index[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => col_index(1),
      I1 => col_index(0),
      O => col_index_0(1)
    );
\col_index[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => col_index(2),
      I1 => col_index(1),
      I2 => col_index(0),
      O => col_index_0(2)
    );
\col_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => col_index(3),
      I1 => col_index(1),
      I2 => col_index(0),
      I3 => col_index(2),
      O => col_index_0(3)
    );
\col_index[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1CCCCCCCCCCCCCCC"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(4),
      I2 => col_index(2),
      I3 => col_index(0),
      I4 => col_index(1),
      I5 => col_index(3),
      O => col_index_0(4)
    );
\col_index[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => x_count(1),
      I1 => x_count(2),
      I2 => x_count(0),
      I3 => input_valid,
      O => \col_index[5]_i_1_n_0\
    );
\col_index[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA2AAAAAAA"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => col_index(1),
      I3 => col_index(0),
      I4 => col_index(2),
      I5 => col_index(4),
      O => col_index_0(5)
    );
\col_index_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \col_index[5]_i_1_n_0\,
      D => col_index_0(0),
      Q => col_index(0),
      R => reset
    );
\col_index_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \col_index[5]_i_1_n_0\,
      D => col_index_0(1),
      Q => col_index(1),
      R => reset
    );
\col_index_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \col_index[5]_i_1_n_0\,
      D => col_index_0(2),
      Q => col_index(2),
      R => reset
    );
\col_index_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \col_index[5]_i_1_n_0\,
      D => col_index_0(3),
      Q => col_index(3),
      R => reset
    );
\col_index_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \col_index[5]_i_1_n_0\,
      D => col_index_0(4),
      Q => col_index(4),
      R => reset
    );
\col_index_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \col_index[5]_i_1_n_0\,
      D => col_index_0(5),
      Q => col_index(5),
      R => reset
    );
output_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \y_count_reg_n_0_[2]\,
      I1 => \y_count_reg_n_0_[0]\,
      I2 => \pixel_data_avg[7]_i_3_n_0\,
      I3 => \y_count_reg_n_0_[1]\,
      I4 => input_valid,
      I5 => reset,
      O => output_valid_i_1_n_0
    );
output_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => output_valid_i_1_n_0,
      Q => output_valid,
      R => '0'
    );
\pixel_data_avg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001DFF1DFFE200E2"
    )
        port map (
      I0 => \pixel_data_avg_reg[1]_i_6_n_0\,
      I1 => col_index(4),
      I2 => \pixel_data_avg_reg[1]_i_7_n_0\,
      I3 => col_index(5),
      I4 => \pixel_data_avg_reg[1]_i_8_n_0\,
      I5 => pixel_data_grayscale(7),
      O => \pixel_data_avg[1]_i_2_n_0\
    );
\pixel_data_avg[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001DFF1DFFE200E2"
    )
        port map (
      I0 => \pixel_data_avg_reg[1]_i_9_n_0\,
      I1 => col_index(4),
      I2 => \pixel_data_avg_reg[1]_i_10_n_0\,
      I3 => col_index(5),
      I4 => \pixel_data_avg_reg[1]_i_11_n_0\,
      I5 => pixel_data_grayscale(6),
      O => \pixel_data_avg[1]_i_3_n_0\
    );
\pixel_data_avg[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001DFF1DFFE200E2"
    )
        port map (
      I0 => \pixel_data_avg_reg[1]_i_12_n_0\,
      I1 => col_index(4),
      I2 => \pixel_data_avg_reg[1]_i_13_n_0\,
      I3 => col_index(5),
      I4 => \pixel_data_avg_reg[1]_i_14_n_0\,
      I5 => pixel_data_grayscale(5),
      O => \pixel_data_avg[1]_i_4_n_0\
    );
\pixel_data_avg[1]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[3]\(7),
      I1 => \sum_reg[2]\(7),
      I2 => col_index(1),
      I3 => \sum_reg[1]\(7),
      I4 => col_index(0),
      I5 => \sum_reg[0]\(7),
      O => \pixel_data_avg[1]_i_42_n_0\
    );
\pixel_data_avg[1]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[7]\(7),
      I1 => \sum_reg[6]\(7),
      I2 => col_index(1),
      I3 => \sum_reg[5]\(7),
      I4 => col_index(0),
      I5 => \sum_reg[4]\(7),
      O => \pixel_data_avg[1]_i_43_n_0\
    );
\pixel_data_avg[1]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[11]\(7),
      I1 => \sum_reg[10]\(7),
      I2 => col_index(1),
      I3 => \sum_reg[9]\(7),
      I4 => col_index(0),
      I5 => \sum_reg[8]\(7),
      O => \pixel_data_avg[1]_i_44_n_0\
    );
\pixel_data_avg[1]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[15]\(7),
      I1 => \sum_reg[14]\(7),
      I2 => col_index(1),
      I3 => \sum_reg[13]\(7),
      I4 => col_index(0),
      I5 => \sum_reg[12]\(7),
      O => \pixel_data_avg[1]_i_45_n_0\
    );
\pixel_data_avg[1]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[19]\(7),
      I1 => \sum_reg[18]\(7),
      I2 => col_index(1),
      I3 => \sum_reg[17]\(7),
      I4 => col_index(0),
      I5 => \sum_reg[16]\(7),
      O => \pixel_data_avg[1]_i_46_n_0\
    );
\pixel_data_avg[1]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[23]\(7),
      I1 => \sum_reg[22]\(7),
      I2 => col_index(1),
      I3 => \sum_reg[21]\(7),
      I4 => col_index(0),
      I5 => \sum_reg[20]\(7),
      O => \pixel_data_avg[1]_i_47_n_0\
    );
\pixel_data_avg[1]_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[27]\(7),
      I1 => \sum_reg[26]\(7),
      I2 => col_index(1),
      I3 => \sum_reg[25]\(7),
      I4 => col_index(0),
      I5 => \sum_reg[24]\(7),
      O => \pixel_data_avg[1]_i_48_n_0\
    );
\pixel_data_avg[1]_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[31]\(7),
      I1 => \sum_reg[30]\(7),
      I2 => col_index(1),
      I3 => \sum_reg[29]\(7),
      I4 => col_index(0),
      I5 => \sum_reg[28]\(7),
      O => \pixel_data_avg[1]_i_49_n_0\
    );
\pixel_data_avg[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001DFF1DFFE200E2"
    )
        port map (
      I0 => \pixel_data_avg_reg[1]_i_15_n_0\,
      I1 => col_index(4),
      I2 => \pixel_data_avg_reg[1]_i_16_n_0\,
      I3 => col_index(5),
      I4 => \pixel_data_avg_reg[1]_i_17_n_0\,
      I5 => pixel_data_grayscale(4),
      O => \pixel_data_avg[1]_i_5_n_0\
    );
\pixel_data_avg[1]_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[35]\(7),
      I1 => \sum_reg[34]\(7),
      I2 => col_index(1),
      I3 => \sum_reg[33]\(7),
      I4 => col_index(0),
      I5 => \sum_reg[32]\(7),
      O => \pixel_data_avg[1]_i_50_n_0\
    );
\pixel_data_avg[1]_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[39]\(7),
      I1 => \sum_reg[38]\(7),
      I2 => col_index(1),
      I3 => \sum_reg[37]\(7),
      I4 => col_index(0),
      I5 => \sum_reg[36]\(7),
      O => \pixel_data_avg[1]_i_51_n_0\
    );
\pixel_data_avg[1]_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[43]\(7),
      I1 => \sum_reg[42]\(7),
      I2 => col_index(1),
      I3 => \sum_reg[41]\(7),
      I4 => col_index(0),
      I5 => \sum_reg[40]\(7),
      O => \pixel_data_avg[1]_i_52_n_0\
    );
\pixel_data_avg[1]_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[47]\(7),
      I1 => \sum_reg[46]\(7),
      I2 => col_index(1),
      I3 => \sum_reg[45]\(7),
      I4 => col_index(0),
      I5 => \sum_reg[44]\(7),
      O => \pixel_data_avg[1]_i_53_n_0\
    );
\pixel_data_avg[1]_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[3]\(6),
      I1 => \sum_reg[2]\(6),
      I2 => col_index(1),
      I3 => \sum_reg[1]\(6),
      I4 => col_index(0),
      I5 => \sum_reg[0]\(6),
      O => \pixel_data_avg[1]_i_54_n_0\
    );
\pixel_data_avg[1]_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[7]\(6),
      I1 => \sum_reg[6]\(6),
      I2 => col_index(1),
      I3 => \sum_reg[5]\(6),
      I4 => col_index(0),
      I5 => \sum_reg[4]\(6),
      O => \pixel_data_avg[1]_i_55_n_0\
    );
\pixel_data_avg[1]_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[11]\(6),
      I1 => \sum_reg[10]\(6),
      I2 => col_index(1),
      I3 => \sum_reg[9]\(6),
      I4 => col_index(0),
      I5 => \sum_reg[8]\(6),
      O => \pixel_data_avg[1]_i_56_n_0\
    );
\pixel_data_avg[1]_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[15]\(6),
      I1 => \sum_reg[14]\(6),
      I2 => col_index(1),
      I3 => \sum_reg[13]\(6),
      I4 => col_index(0),
      I5 => \sum_reg[12]\(6),
      O => \pixel_data_avg[1]_i_57_n_0\
    );
\pixel_data_avg[1]_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[19]\(6),
      I1 => \sum_reg[18]\(6),
      I2 => col_index(1),
      I3 => \sum_reg[17]\(6),
      I4 => col_index(0),
      I5 => \sum_reg[16]\(6),
      O => \pixel_data_avg[1]_i_58_n_0\
    );
\pixel_data_avg[1]_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[23]\(6),
      I1 => \sum_reg[22]\(6),
      I2 => col_index(1),
      I3 => \sum_reg[21]\(6),
      I4 => col_index(0),
      I5 => \sum_reg[20]\(6),
      O => \pixel_data_avg[1]_i_59_n_0\
    );
\pixel_data_avg[1]_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[27]\(6),
      I1 => \sum_reg[26]\(6),
      I2 => col_index(1),
      I3 => \sum_reg[25]\(6),
      I4 => col_index(0),
      I5 => \sum_reg[24]\(6),
      O => \pixel_data_avg[1]_i_60_n_0\
    );
\pixel_data_avg[1]_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[31]\(6),
      I1 => \sum_reg[30]\(6),
      I2 => col_index(1),
      I3 => \sum_reg[29]\(6),
      I4 => col_index(0),
      I5 => \sum_reg[28]\(6),
      O => \pixel_data_avg[1]_i_61_n_0\
    );
\pixel_data_avg[1]_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[35]\(6),
      I1 => \sum_reg[34]\(6),
      I2 => col_index(1),
      I3 => \sum_reg[33]\(6),
      I4 => col_index(0),
      I5 => \sum_reg[32]\(6),
      O => \pixel_data_avg[1]_i_62_n_0\
    );
\pixel_data_avg[1]_i_63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[39]\(6),
      I1 => \sum_reg[38]\(6),
      I2 => col_index(1),
      I3 => \sum_reg[37]\(6),
      I4 => col_index(0),
      I5 => \sum_reg[36]\(6),
      O => \pixel_data_avg[1]_i_63_n_0\
    );
\pixel_data_avg[1]_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[43]\(6),
      I1 => \sum_reg[42]\(6),
      I2 => col_index(1),
      I3 => \sum_reg[41]\(6),
      I4 => col_index(0),
      I5 => \sum_reg[40]\(6),
      O => \pixel_data_avg[1]_i_64_n_0\
    );
\pixel_data_avg[1]_i_65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[47]\(6),
      I1 => \sum_reg[46]\(6),
      I2 => col_index(1),
      I3 => \sum_reg[45]\(6),
      I4 => col_index(0),
      I5 => \sum_reg[44]\(6),
      O => \pixel_data_avg[1]_i_65_n_0\
    );
\pixel_data_avg[1]_i_66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[3]\(5),
      I1 => \sum_reg[2]\(5),
      I2 => col_index(1),
      I3 => \sum_reg[1]\(5),
      I4 => col_index(0),
      I5 => \sum_reg[0]\(5),
      O => \pixel_data_avg[1]_i_66_n_0\
    );
\pixel_data_avg[1]_i_67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[7]\(5),
      I1 => \sum_reg[6]\(5),
      I2 => col_index(1),
      I3 => \sum_reg[5]\(5),
      I4 => col_index(0),
      I5 => \sum_reg[4]\(5),
      O => \pixel_data_avg[1]_i_67_n_0\
    );
\pixel_data_avg[1]_i_68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[11]\(5),
      I1 => \sum_reg[10]\(5),
      I2 => col_index(1),
      I3 => \sum_reg[9]\(5),
      I4 => col_index(0),
      I5 => \sum_reg[8]\(5),
      O => \pixel_data_avg[1]_i_68_n_0\
    );
\pixel_data_avg[1]_i_69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[15]\(5),
      I1 => \sum_reg[14]\(5),
      I2 => col_index(1),
      I3 => \sum_reg[13]\(5),
      I4 => col_index(0),
      I5 => \sum_reg[12]\(5),
      O => \pixel_data_avg[1]_i_69_n_0\
    );
\pixel_data_avg[1]_i_70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[19]\(5),
      I1 => \sum_reg[18]\(5),
      I2 => col_index(1),
      I3 => \sum_reg[17]\(5),
      I4 => col_index(0),
      I5 => \sum_reg[16]\(5),
      O => \pixel_data_avg[1]_i_70_n_0\
    );
\pixel_data_avg[1]_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[23]\(5),
      I1 => \sum_reg[22]\(5),
      I2 => col_index(1),
      I3 => \sum_reg[21]\(5),
      I4 => col_index(0),
      I5 => \sum_reg[20]\(5),
      O => \pixel_data_avg[1]_i_71_n_0\
    );
\pixel_data_avg[1]_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[27]\(5),
      I1 => \sum_reg[26]\(5),
      I2 => col_index(1),
      I3 => \sum_reg[25]\(5),
      I4 => col_index(0),
      I5 => \sum_reg[24]\(5),
      O => \pixel_data_avg[1]_i_72_n_0\
    );
\pixel_data_avg[1]_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[31]\(5),
      I1 => \sum_reg[30]\(5),
      I2 => col_index(1),
      I3 => \sum_reg[29]\(5),
      I4 => col_index(0),
      I5 => \sum_reg[28]\(5),
      O => \pixel_data_avg[1]_i_73_n_0\
    );
\pixel_data_avg[1]_i_74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[35]\(5),
      I1 => \sum_reg[34]\(5),
      I2 => col_index(1),
      I3 => \sum_reg[33]\(5),
      I4 => col_index(0),
      I5 => \sum_reg[32]\(5),
      O => \pixel_data_avg[1]_i_74_n_0\
    );
\pixel_data_avg[1]_i_75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[39]\(5),
      I1 => \sum_reg[38]\(5),
      I2 => col_index(1),
      I3 => \sum_reg[37]\(5),
      I4 => col_index(0),
      I5 => \sum_reg[36]\(5),
      O => \pixel_data_avg[1]_i_75_n_0\
    );
\pixel_data_avg[1]_i_76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[43]\(5),
      I1 => \sum_reg[42]\(5),
      I2 => col_index(1),
      I3 => \sum_reg[41]\(5),
      I4 => col_index(0),
      I5 => \sum_reg[40]\(5),
      O => \pixel_data_avg[1]_i_76_n_0\
    );
\pixel_data_avg[1]_i_77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[47]\(5),
      I1 => \sum_reg[46]\(5),
      I2 => col_index(1),
      I3 => \sum_reg[45]\(5),
      I4 => col_index(0),
      I5 => \sum_reg[44]\(5),
      O => \pixel_data_avg[1]_i_77_n_0\
    );
\pixel_data_avg[1]_i_78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[3]\(4),
      I1 => \sum_reg[2]\(4),
      I2 => col_index(1),
      I3 => \sum_reg[1]\(4),
      I4 => col_index(0),
      I5 => \sum_reg[0]\(4),
      O => \pixel_data_avg[1]_i_78_n_0\
    );
\pixel_data_avg[1]_i_79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[7]\(4),
      I1 => \sum_reg[6]\(4),
      I2 => col_index(1),
      I3 => \sum_reg[5]\(4),
      I4 => col_index(0),
      I5 => \sum_reg[4]\(4),
      O => \pixel_data_avg[1]_i_79_n_0\
    );
\pixel_data_avg[1]_i_80\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[11]\(4),
      I1 => \sum_reg[10]\(4),
      I2 => col_index(1),
      I3 => \sum_reg[9]\(4),
      I4 => col_index(0),
      I5 => \sum_reg[8]\(4),
      O => \pixel_data_avg[1]_i_80_n_0\
    );
\pixel_data_avg[1]_i_81\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[15]\(4),
      I1 => \sum_reg[14]\(4),
      I2 => col_index(1),
      I3 => \sum_reg[13]\(4),
      I4 => col_index(0),
      I5 => \sum_reg[12]\(4),
      O => \pixel_data_avg[1]_i_81_n_0\
    );
\pixel_data_avg[1]_i_82\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[19]\(4),
      I1 => \sum_reg[18]\(4),
      I2 => col_index(1),
      I3 => \sum_reg[17]\(4),
      I4 => col_index(0),
      I5 => \sum_reg[16]\(4),
      O => \pixel_data_avg[1]_i_82_n_0\
    );
\pixel_data_avg[1]_i_83\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[23]\(4),
      I1 => \sum_reg[22]\(4),
      I2 => col_index(1),
      I3 => \sum_reg[21]\(4),
      I4 => col_index(0),
      I5 => \sum_reg[20]\(4),
      O => \pixel_data_avg[1]_i_83_n_0\
    );
\pixel_data_avg[1]_i_84\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[27]\(4),
      I1 => \sum_reg[26]\(4),
      I2 => col_index(1),
      I3 => \sum_reg[25]\(4),
      I4 => col_index(0),
      I5 => \sum_reg[24]\(4),
      O => \pixel_data_avg[1]_i_84_n_0\
    );
\pixel_data_avg[1]_i_85\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[31]\(4),
      I1 => \sum_reg[30]\(4),
      I2 => col_index(1),
      I3 => \sum_reg[29]\(4),
      I4 => col_index(0),
      I5 => \sum_reg[28]\(4),
      O => \pixel_data_avg[1]_i_85_n_0\
    );
\pixel_data_avg[1]_i_86\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[35]\(4),
      I1 => \sum_reg[34]\(4),
      I2 => col_index(1),
      I3 => \sum_reg[33]\(4),
      I4 => col_index(0),
      I5 => \sum_reg[32]\(4),
      O => \pixel_data_avg[1]_i_86_n_0\
    );
\pixel_data_avg[1]_i_87\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[39]\(4),
      I1 => \sum_reg[38]\(4),
      I2 => col_index(1),
      I3 => \sum_reg[37]\(4),
      I4 => col_index(0),
      I5 => \sum_reg[36]\(4),
      O => \pixel_data_avg[1]_i_87_n_0\
    );
\pixel_data_avg[1]_i_88\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[43]\(4),
      I1 => \sum_reg[42]\(4),
      I2 => col_index(1),
      I3 => \sum_reg[41]\(4),
      I4 => col_index(0),
      I5 => \sum_reg[40]\(4),
      O => \pixel_data_avg[1]_i_88_n_0\
    );
\pixel_data_avg[1]_i_89\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[47]\(4),
      I1 => \sum_reg[46]\(4),
      I2 => col_index(1),
      I3 => \sum_reg[45]\(4),
      I4 => col_index(0),
      I5 => \sum_reg[44]\(4),
      O => \pixel_data_avg[1]_i_89_n_0\
    );
\pixel_data_avg[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \pixel_data_avg_reg[5]_i_6_n_0\,
      I1 => col_index(5),
      I2 => \pixel_data_avg_reg[5]_i_7_n_0\,
      I3 => col_index(4),
      I4 => \pixel_data_avg_reg[5]_i_8_n_0\,
      O => sum(11)
    );
\pixel_data_avg[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \pixel_data_avg_reg[5]_i_9_n_0\,
      I1 => col_index(5),
      I2 => \pixel_data_avg_reg[5]_i_10_n_0\,
      I3 => col_index(4),
      I4 => \pixel_data_avg_reg[5]_i_11_n_0\,
      O => sum(10)
    );
\pixel_data_avg[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \pixel_data_avg_reg[5]_i_12_n_0\,
      I1 => col_index(5),
      I2 => \pixel_data_avg_reg[5]_i_13_n_0\,
      I3 => col_index(4),
      I4 => \pixel_data_avg_reg[5]_i_14_n_0\,
      O => sum(9)
    );
\pixel_data_avg[5]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[35]\(11),
      I1 => \sum_reg[34]\(11),
      I2 => col_index(1),
      I3 => \sum_reg[33]\(11),
      I4 => col_index(0),
      I5 => \sum_reg[32]\(11),
      O => \pixel_data_avg[5]_i_42_n_0\
    );
\pixel_data_avg[5]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[39]\(11),
      I1 => \sum_reg[38]\(11),
      I2 => col_index(1),
      I3 => \sum_reg[37]\(11),
      I4 => col_index(0),
      I5 => \sum_reg[36]\(11),
      O => \pixel_data_avg[5]_i_43_n_0\
    );
\pixel_data_avg[5]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[43]\(11),
      I1 => \sum_reg[42]\(11),
      I2 => col_index(1),
      I3 => \sum_reg[41]\(11),
      I4 => col_index(0),
      I5 => \sum_reg[40]\(11),
      O => \pixel_data_avg[5]_i_44_n_0\
    );
\pixel_data_avg[5]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[47]\(11),
      I1 => \sum_reg[46]\(11),
      I2 => col_index(1),
      I3 => \sum_reg[45]\(11),
      I4 => col_index(0),
      I5 => \sum_reg[44]\(11),
      O => \pixel_data_avg[5]_i_45_n_0\
    );
\pixel_data_avg[5]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[19]\(11),
      I1 => \sum_reg[18]\(11),
      I2 => col_index(1),
      I3 => \sum_reg[17]\(11),
      I4 => col_index(0),
      I5 => \sum_reg[16]\(11),
      O => \pixel_data_avg[5]_i_46_n_0\
    );
\pixel_data_avg[5]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[23]\(11),
      I1 => \sum_reg[22]\(11),
      I2 => col_index(1),
      I3 => \sum_reg[21]\(11),
      I4 => col_index(0),
      I5 => \sum_reg[20]\(11),
      O => \pixel_data_avg[5]_i_47_n_0\
    );
\pixel_data_avg[5]_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[27]\(11),
      I1 => \sum_reg[26]\(11),
      I2 => col_index(1),
      I3 => \sum_reg[25]\(11),
      I4 => col_index(0),
      I5 => \sum_reg[24]\(11),
      O => \pixel_data_avg[5]_i_48_n_0\
    );
\pixel_data_avg[5]_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[31]\(11),
      I1 => \sum_reg[30]\(11),
      I2 => col_index(1),
      I3 => \sum_reg[29]\(11),
      I4 => col_index(0),
      I5 => \sum_reg[28]\(11),
      O => \pixel_data_avg[5]_i_49_n_0\
    );
\pixel_data_avg[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \pixel_data_avg_reg[5]_i_15_n_0\,
      I1 => col_index(5),
      I2 => \pixel_data_avg_reg[5]_i_16_n_0\,
      I3 => col_index(4),
      I4 => \pixel_data_avg_reg[5]_i_17_n_0\,
      O => sum(8)
    );
\pixel_data_avg[5]_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[3]\(11),
      I1 => \sum_reg[2]\(11),
      I2 => col_index(1),
      I3 => \sum_reg[1]\(11),
      I4 => col_index(0),
      I5 => \sum_reg[0]\(11),
      O => \pixel_data_avg[5]_i_50_n_0\
    );
\pixel_data_avg[5]_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[7]\(11),
      I1 => \sum_reg[6]\(11),
      I2 => col_index(1),
      I3 => \sum_reg[5]\(11),
      I4 => col_index(0),
      I5 => \sum_reg[4]\(11),
      O => \pixel_data_avg[5]_i_51_n_0\
    );
\pixel_data_avg[5]_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[11]\(11),
      I1 => \sum_reg[10]\(11),
      I2 => col_index(1),
      I3 => \sum_reg[9]\(11),
      I4 => col_index(0),
      I5 => \sum_reg[8]\(11),
      O => \pixel_data_avg[5]_i_52_n_0\
    );
\pixel_data_avg[5]_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[15]\(11),
      I1 => \sum_reg[14]\(11),
      I2 => col_index(1),
      I3 => \sum_reg[13]\(11),
      I4 => col_index(0),
      I5 => \sum_reg[12]\(11),
      O => \pixel_data_avg[5]_i_53_n_0\
    );
\pixel_data_avg[5]_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[35]\(10),
      I1 => \sum_reg[34]\(10),
      I2 => col_index(1),
      I3 => \sum_reg[33]\(10),
      I4 => col_index(0),
      I5 => \sum_reg[32]\(10),
      O => \pixel_data_avg[5]_i_54_n_0\
    );
\pixel_data_avg[5]_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[39]\(10),
      I1 => \sum_reg[38]\(10),
      I2 => col_index(1),
      I3 => \sum_reg[37]\(10),
      I4 => col_index(0),
      I5 => \sum_reg[36]\(10),
      O => \pixel_data_avg[5]_i_55_n_0\
    );
\pixel_data_avg[5]_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[43]\(10),
      I1 => \sum_reg[42]\(10),
      I2 => col_index(1),
      I3 => \sum_reg[41]\(10),
      I4 => col_index(0),
      I5 => \sum_reg[40]\(10),
      O => \pixel_data_avg[5]_i_56_n_0\
    );
\pixel_data_avg[5]_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[47]\(10),
      I1 => \sum_reg[46]\(10),
      I2 => col_index(1),
      I3 => \sum_reg[45]\(10),
      I4 => col_index(0),
      I5 => \sum_reg[44]\(10),
      O => \pixel_data_avg[5]_i_57_n_0\
    );
\pixel_data_avg[5]_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[19]\(10),
      I1 => \sum_reg[18]\(10),
      I2 => col_index(1),
      I3 => \sum_reg[17]\(10),
      I4 => col_index(0),
      I5 => \sum_reg[16]\(10),
      O => \pixel_data_avg[5]_i_58_n_0\
    );
\pixel_data_avg[5]_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[23]\(10),
      I1 => \sum_reg[22]\(10),
      I2 => col_index(1),
      I3 => \sum_reg[21]\(10),
      I4 => col_index(0),
      I5 => \sum_reg[20]\(10),
      O => \pixel_data_avg[5]_i_59_n_0\
    );
\pixel_data_avg[5]_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[27]\(10),
      I1 => \sum_reg[26]\(10),
      I2 => col_index(1),
      I3 => \sum_reg[25]\(10),
      I4 => col_index(0),
      I5 => \sum_reg[24]\(10),
      O => \pixel_data_avg[5]_i_60_n_0\
    );
\pixel_data_avg[5]_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[31]\(10),
      I1 => \sum_reg[30]\(10),
      I2 => col_index(1),
      I3 => \sum_reg[29]\(10),
      I4 => col_index(0),
      I5 => \sum_reg[28]\(10),
      O => \pixel_data_avg[5]_i_61_n_0\
    );
\pixel_data_avg[5]_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[3]\(10),
      I1 => \sum_reg[2]\(10),
      I2 => col_index(1),
      I3 => \sum_reg[1]\(10),
      I4 => col_index(0),
      I5 => \sum_reg[0]\(10),
      O => \pixel_data_avg[5]_i_62_n_0\
    );
\pixel_data_avg[5]_i_63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[7]\(10),
      I1 => \sum_reg[6]\(10),
      I2 => col_index(1),
      I3 => \sum_reg[5]\(10),
      I4 => col_index(0),
      I5 => \sum_reg[4]\(10),
      O => \pixel_data_avg[5]_i_63_n_0\
    );
\pixel_data_avg[5]_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[11]\(10),
      I1 => \sum_reg[10]\(10),
      I2 => col_index(1),
      I3 => \sum_reg[9]\(10),
      I4 => col_index(0),
      I5 => \sum_reg[8]\(10),
      O => \pixel_data_avg[5]_i_64_n_0\
    );
\pixel_data_avg[5]_i_65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[15]\(10),
      I1 => \sum_reg[14]\(10),
      I2 => col_index(1),
      I3 => \sum_reg[13]\(10),
      I4 => col_index(0),
      I5 => \sum_reg[12]\(10),
      O => \pixel_data_avg[5]_i_65_n_0\
    );
\pixel_data_avg[5]_i_66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[35]\(9),
      I1 => \sum_reg[34]\(9),
      I2 => col_index(1),
      I3 => \sum_reg[33]\(9),
      I4 => col_index(0),
      I5 => \sum_reg[32]\(9),
      O => \pixel_data_avg[5]_i_66_n_0\
    );
\pixel_data_avg[5]_i_67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[39]\(9),
      I1 => \sum_reg[38]\(9),
      I2 => col_index(1),
      I3 => \sum_reg[37]\(9),
      I4 => col_index(0),
      I5 => \sum_reg[36]\(9),
      O => \pixel_data_avg[5]_i_67_n_0\
    );
\pixel_data_avg[5]_i_68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[43]\(9),
      I1 => \sum_reg[42]\(9),
      I2 => col_index(1),
      I3 => \sum_reg[41]\(9),
      I4 => col_index(0),
      I5 => \sum_reg[40]\(9),
      O => \pixel_data_avg[5]_i_68_n_0\
    );
\pixel_data_avg[5]_i_69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[47]\(9),
      I1 => \sum_reg[46]\(9),
      I2 => col_index(1),
      I3 => \sum_reg[45]\(9),
      I4 => col_index(0),
      I5 => \sum_reg[44]\(9),
      O => \pixel_data_avg[5]_i_69_n_0\
    );
\pixel_data_avg[5]_i_70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[19]\(9),
      I1 => \sum_reg[18]\(9),
      I2 => col_index(1),
      I3 => \sum_reg[17]\(9),
      I4 => col_index(0),
      I5 => \sum_reg[16]\(9),
      O => \pixel_data_avg[5]_i_70_n_0\
    );
\pixel_data_avg[5]_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[23]\(9),
      I1 => \sum_reg[22]\(9),
      I2 => col_index(1),
      I3 => \sum_reg[21]\(9),
      I4 => col_index(0),
      I5 => \sum_reg[20]\(9),
      O => \pixel_data_avg[5]_i_71_n_0\
    );
\pixel_data_avg[5]_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[27]\(9),
      I1 => \sum_reg[26]\(9),
      I2 => col_index(1),
      I3 => \sum_reg[25]\(9),
      I4 => col_index(0),
      I5 => \sum_reg[24]\(9),
      O => \pixel_data_avg[5]_i_72_n_0\
    );
\pixel_data_avg[5]_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[31]\(9),
      I1 => \sum_reg[30]\(9),
      I2 => col_index(1),
      I3 => \sum_reg[29]\(9),
      I4 => col_index(0),
      I5 => \sum_reg[28]\(9),
      O => \pixel_data_avg[5]_i_73_n_0\
    );
\pixel_data_avg[5]_i_74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[3]\(9),
      I1 => \sum_reg[2]\(9),
      I2 => col_index(1),
      I3 => \sum_reg[1]\(9),
      I4 => col_index(0),
      I5 => \sum_reg[0]\(9),
      O => \pixel_data_avg[5]_i_74_n_0\
    );
\pixel_data_avg[5]_i_75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[7]\(9),
      I1 => \sum_reg[6]\(9),
      I2 => col_index(1),
      I3 => \sum_reg[5]\(9),
      I4 => col_index(0),
      I5 => \sum_reg[4]\(9),
      O => \pixel_data_avg[5]_i_75_n_0\
    );
\pixel_data_avg[5]_i_76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[11]\(9),
      I1 => \sum_reg[10]\(9),
      I2 => col_index(1),
      I3 => \sum_reg[9]\(9),
      I4 => col_index(0),
      I5 => \sum_reg[8]\(9),
      O => \pixel_data_avg[5]_i_76_n_0\
    );
\pixel_data_avg[5]_i_77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[15]\(9),
      I1 => \sum_reg[14]\(9),
      I2 => col_index(1),
      I3 => \sum_reg[13]\(9),
      I4 => col_index(0),
      I5 => \sum_reg[12]\(9),
      O => \pixel_data_avg[5]_i_77_n_0\
    );
\pixel_data_avg[5]_i_78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[35]\(8),
      I1 => \sum_reg[34]\(8),
      I2 => col_index(1),
      I3 => \sum_reg[33]\(8),
      I4 => col_index(0),
      I5 => \sum_reg[32]\(8),
      O => \pixel_data_avg[5]_i_78_n_0\
    );
\pixel_data_avg[5]_i_79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[39]\(8),
      I1 => \sum_reg[38]\(8),
      I2 => col_index(1),
      I3 => \sum_reg[37]\(8),
      I4 => col_index(0),
      I5 => \sum_reg[36]\(8),
      O => \pixel_data_avg[5]_i_79_n_0\
    );
\pixel_data_avg[5]_i_80\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[43]\(8),
      I1 => \sum_reg[42]\(8),
      I2 => col_index(1),
      I3 => \sum_reg[41]\(8),
      I4 => col_index(0),
      I5 => \sum_reg[40]\(8),
      O => \pixel_data_avg[5]_i_80_n_0\
    );
\pixel_data_avg[5]_i_81\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[47]\(8),
      I1 => \sum_reg[46]\(8),
      I2 => col_index(1),
      I3 => \sum_reg[45]\(8),
      I4 => col_index(0),
      I5 => \sum_reg[44]\(8),
      O => \pixel_data_avg[5]_i_81_n_0\
    );
\pixel_data_avg[5]_i_82\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[19]\(8),
      I1 => \sum_reg[18]\(8),
      I2 => col_index(1),
      I3 => \sum_reg[17]\(8),
      I4 => col_index(0),
      I5 => \sum_reg[16]\(8),
      O => \pixel_data_avg[5]_i_82_n_0\
    );
\pixel_data_avg[5]_i_83\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[23]\(8),
      I1 => \sum_reg[22]\(8),
      I2 => col_index(1),
      I3 => \sum_reg[21]\(8),
      I4 => col_index(0),
      I5 => \sum_reg[20]\(8),
      O => \pixel_data_avg[5]_i_83_n_0\
    );
\pixel_data_avg[5]_i_84\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[27]\(8),
      I1 => \sum_reg[26]\(8),
      I2 => col_index(1),
      I3 => \sum_reg[25]\(8),
      I4 => col_index(0),
      I5 => \sum_reg[24]\(8),
      O => \pixel_data_avg[5]_i_84_n_0\
    );
\pixel_data_avg[5]_i_85\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[31]\(8),
      I1 => \sum_reg[30]\(8),
      I2 => col_index(1),
      I3 => \sum_reg[29]\(8),
      I4 => col_index(0),
      I5 => \sum_reg[28]\(8),
      O => \pixel_data_avg[5]_i_85_n_0\
    );
\pixel_data_avg[5]_i_86\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[3]\(8),
      I1 => \sum_reg[2]\(8),
      I2 => col_index(1),
      I3 => \sum_reg[1]\(8),
      I4 => col_index(0),
      I5 => \sum_reg[0]\(8),
      O => \pixel_data_avg[5]_i_86_n_0\
    );
\pixel_data_avg[5]_i_87\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[7]\(8),
      I1 => \sum_reg[6]\(8),
      I2 => col_index(1),
      I3 => \sum_reg[5]\(8),
      I4 => col_index(0),
      I5 => \sum_reg[4]\(8),
      O => \pixel_data_avg[5]_i_87_n_0\
    );
\pixel_data_avg[5]_i_88\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[11]\(8),
      I1 => \sum_reg[10]\(8),
      I2 => col_index(1),
      I3 => \sum_reg[9]\(8),
      I4 => col_index(0),
      I5 => \sum_reg[8]\(8),
      O => \pixel_data_avg[5]_i_88_n_0\
    );
\pixel_data_avg[5]_i_89\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[15]\(8),
      I1 => \sum_reg[14]\(8),
      I2 => col_index(1),
      I3 => \sum_reg[13]\(8),
      I4 => col_index(0),
      I5 => \sum_reg[12]\(8),
      O => \pixel_data_avg[5]_i_89_n_0\
    );
\pixel_data_avg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \y_count_reg_n_0_[2]\,
      I1 => \y_count_reg_n_0_[0]\,
      I2 => \pixel_data_avg[7]_i_3_n_0\,
      I3 => \y_count_reg_n_0_[1]\,
      I4 => input_valid,
      O => \pixel_data_avg[7]_i_1_n_0\
    );
\pixel_data_avg[7]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[35]\(13),
      I1 => \sum_reg[34]\(13),
      I2 => col_index(1),
      I3 => \sum_reg[33]\(13),
      I4 => col_index(0),
      I5 => \sum_reg[32]\(13),
      O => \pixel_data_avg[7]_i_24_n_0\
    );
\pixel_data_avg[7]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[39]\(13),
      I1 => \sum_reg[38]\(13),
      I2 => col_index(1),
      I3 => \sum_reg[37]\(13),
      I4 => col_index(0),
      I5 => \sum_reg[36]\(13),
      O => \pixel_data_avg[7]_i_25_n_0\
    );
\pixel_data_avg[7]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[43]\(13),
      I1 => \sum_reg[42]\(13),
      I2 => col_index(1),
      I3 => \sum_reg[41]\(13),
      I4 => col_index(0),
      I5 => \sum_reg[40]\(13),
      O => \pixel_data_avg[7]_i_26_n_0\
    );
\pixel_data_avg[7]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[47]\(13),
      I1 => \sum_reg[46]\(13),
      I2 => col_index(1),
      I3 => \sum_reg[45]\(13),
      I4 => col_index(0),
      I5 => \sum_reg[44]\(13),
      O => \pixel_data_avg[7]_i_27_n_0\
    );
\pixel_data_avg[7]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[19]\(13),
      I1 => \sum_reg[18]\(13),
      I2 => col_index(1),
      I3 => \sum_reg[17]\(13),
      I4 => col_index(0),
      I5 => \sum_reg[16]\(13),
      O => \pixel_data_avg[7]_i_28_n_0\
    );
\pixel_data_avg[7]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[23]\(13),
      I1 => \sum_reg[22]\(13),
      I2 => col_index(1),
      I3 => \sum_reg[21]\(13),
      I4 => col_index(0),
      I5 => \sum_reg[20]\(13),
      O => \pixel_data_avg[7]_i_29_n_0\
    );
\pixel_data_avg[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => x_count(0),
      I1 => x_count(2),
      I2 => x_count(1),
      O => \pixel_data_avg[7]_i_3_n_0\
    );
\pixel_data_avg[7]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[27]\(13),
      I1 => \sum_reg[26]\(13),
      I2 => col_index(1),
      I3 => \sum_reg[25]\(13),
      I4 => col_index(0),
      I5 => \sum_reg[24]\(13),
      O => \pixel_data_avg[7]_i_30_n_0\
    );
\pixel_data_avg[7]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[31]\(13),
      I1 => \sum_reg[30]\(13),
      I2 => col_index(1),
      I3 => \sum_reg[29]\(13),
      I4 => col_index(0),
      I5 => \sum_reg[28]\(13),
      O => \pixel_data_avg[7]_i_31_n_0\
    );
\pixel_data_avg[7]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[3]\(13),
      I1 => \sum_reg[2]\(13),
      I2 => col_index(1),
      I3 => \sum_reg[1]\(13),
      I4 => col_index(0),
      I5 => \sum_reg[0]\(13),
      O => \pixel_data_avg[7]_i_32_n_0\
    );
\pixel_data_avg[7]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[7]\(13),
      I1 => \sum_reg[6]\(13),
      I2 => col_index(1),
      I3 => \sum_reg[5]\(13),
      I4 => col_index(0),
      I5 => \sum_reg[4]\(13),
      O => \pixel_data_avg[7]_i_33_n_0\
    );
\pixel_data_avg[7]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[11]\(13),
      I1 => \sum_reg[10]\(13),
      I2 => col_index(1),
      I3 => \sum_reg[9]\(13),
      I4 => col_index(0),
      I5 => \sum_reg[8]\(13),
      O => \pixel_data_avg[7]_i_34_n_0\
    );
\pixel_data_avg[7]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[15]\(13),
      I1 => \sum_reg[14]\(13),
      I2 => col_index(1),
      I3 => \sum_reg[13]\(13),
      I4 => col_index(0),
      I5 => \sum_reg[12]\(13),
      O => \pixel_data_avg[7]_i_35_n_0\
    );
\pixel_data_avg[7]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[35]\(12),
      I1 => \sum_reg[34]\(12),
      I2 => col_index(1),
      I3 => \sum_reg[33]\(12),
      I4 => col_index(0),
      I5 => \sum_reg[32]\(12),
      O => \pixel_data_avg[7]_i_36_n_0\
    );
\pixel_data_avg[7]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[39]\(12),
      I1 => \sum_reg[38]\(12),
      I2 => col_index(1),
      I3 => \sum_reg[37]\(12),
      I4 => col_index(0),
      I5 => \sum_reg[36]\(12),
      O => \pixel_data_avg[7]_i_37_n_0\
    );
\pixel_data_avg[7]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[43]\(12),
      I1 => \sum_reg[42]\(12),
      I2 => col_index(1),
      I3 => \sum_reg[41]\(12),
      I4 => col_index(0),
      I5 => \sum_reg[40]\(12),
      O => \pixel_data_avg[7]_i_38_n_0\
    );
\pixel_data_avg[7]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[47]\(12),
      I1 => \sum_reg[46]\(12),
      I2 => col_index(1),
      I3 => \sum_reg[45]\(12),
      I4 => col_index(0),
      I5 => \sum_reg[44]\(12),
      O => \pixel_data_avg[7]_i_39_n_0\
    );
\pixel_data_avg[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \pixel_data_avg_reg[7]_i_6_n_0\,
      I1 => col_index(5),
      I2 => \pixel_data_avg_reg[7]_i_7_n_0\,
      I3 => col_index(4),
      I4 => \pixel_data_avg_reg[7]_i_8_n_0\,
      O => sum(13)
    );
\pixel_data_avg[7]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[19]\(12),
      I1 => \sum_reg[18]\(12),
      I2 => col_index(1),
      I3 => \sum_reg[17]\(12),
      I4 => col_index(0),
      I5 => \sum_reg[16]\(12),
      O => \pixel_data_avg[7]_i_40_n_0\
    );
\pixel_data_avg[7]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[23]\(12),
      I1 => \sum_reg[22]\(12),
      I2 => col_index(1),
      I3 => \sum_reg[21]\(12),
      I4 => col_index(0),
      I5 => \sum_reg[20]\(12),
      O => \pixel_data_avg[7]_i_41_n_0\
    );
\pixel_data_avg[7]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[27]\(12),
      I1 => \sum_reg[26]\(12),
      I2 => col_index(1),
      I3 => \sum_reg[25]\(12),
      I4 => col_index(0),
      I5 => \sum_reg[24]\(12),
      O => \pixel_data_avg[7]_i_42_n_0\
    );
\pixel_data_avg[7]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[31]\(12),
      I1 => \sum_reg[30]\(12),
      I2 => col_index(1),
      I3 => \sum_reg[29]\(12),
      I4 => col_index(0),
      I5 => \sum_reg[28]\(12),
      O => \pixel_data_avg[7]_i_43_n_0\
    );
\pixel_data_avg[7]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[3]\(12),
      I1 => \sum_reg[2]\(12),
      I2 => col_index(1),
      I3 => \sum_reg[1]\(12),
      I4 => col_index(0),
      I5 => \sum_reg[0]\(12),
      O => \pixel_data_avg[7]_i_44_n_0\
    );
\pixel_data_avg[7]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[7]\(12),
      I1 => \sum_reg[6]\(12),
      I2 => col_index(1),
      I3 => \sum_reg[5]\(12),
      I4 => col_index(0),
      I5 => \sum_reg[4]\(12),
      O => \pixel_data_avg[7]_i_45_n_0\
    );
\pixel_data_avg[7]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[11]\(12),
      I1 => \sum_reg[10]\(12),
      I2 => col_index(1),
      I3 => \sum_reg[9]\(12),
      I4 => col_index(0),
      I5 => \sum_reg[8]\(12),
      O => \pixel_data_avg[7]_i_46_n_0\
    );
\pixel_data_avg[7]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[15]\(12),
      I1 => \sum_reg[14]\(12),
      I2 => col_index(1),
      I3 => \sum_reg[13]\(12),
      I4 => col_index(0),
      I5 => \sum_reg[12]\(12),
      O => \pixel_data_avg[7]_i_47_n_0\
    );
\pixel_data_avg[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \pixel_data_avg_reg[7]_i_9_n_0\,
      I1 => col_index(5),
      I2 => \pixel_data_avg_reg[7]_i_10_n_0\,
      I3 => col_index(4),
      I4 => \pixel_data_avg_reg[7]_i_11_n_0\,
      O => sum(12)
    );
\pixel_data_avg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \pixel_data_avg[7]_i_1_n_0\,
      D => p_0_in(0),
      Q => pixel_data_avg(0),
      R => reset
    );
\pixel_data_avg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \pixel_data_avg[7]_i_1_n_0\,
      D => p_0_in(1),
      Q => pixel_data_avg(1),
      R => reset
    );
\pixel_data_avg_reg[1]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[0][3]_i_1_n_0\,
      CO(3) => \pixel_data_avg_reg[1]_i_1_n_0\,
      CO(2) => \pixel_data_avg_reg[1]_i_1_n_1\,
      CO(1) => \pixel_data_avg_reg[1]_i_1_n_2\,
      CO(0) => \pixel_data_avg_reg[1]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pixel_data_grayscale(7 downto 4),
      O(3 downto 2) => p_0_in(1 downto 0),
      O(1) => \pixel_data_avg_reg[1]_i_1_n_6\,
      O(0) => \pixel_data_avg_reg[1]_i_1_n_7\,
      S(3) => \pixel_data_avg[1]_i_2_n_0\,
      S(2) => \pixel_data_avg[1]_i_3_n_0\,
      S(1) => \pixel_data_avg[1]_i_4_n_0\,
      S(0) => \pixel_data_avg[1]_i_5_n_0\
    );
\pixel_data_avg_reg[1]_i_10\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[1]_i_26_n_0\,
      I1 => \pixel_data_avg_reg[1]_i_27_n_0\,
      O => \pixel_data_avg_reg[1]_i_10_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[1]_i_11\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[1]_i_28_n_0\,
      I1 => \pixel_data_avg_reg[1]_i_29_n_0\,
      O => \pixel_data_avg_reg[1]_i_11_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[1]_i_12\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[1]_i_30_n_0\,
      I1 => \pixel_data_avg_reg[1]_i_31_n_0\,
      O => \pixel_data_avg_reg[1]_i_12_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[1]_i_13\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[1]_i_32_n_0\,
      I1 => \pixel_data_avg_reg[1]_i_33_n_0\,
      O => \pixel_data_avg_reg[1]_i_13_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[1]_i_14\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[1]_i_34_n_0\,
      I1 => \pixel_data_avg_reg[1]_i_35_n_0\,
      O => \pixel_data_avg_reg[1]_i_14_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[1]_i_15\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[1]_i_36_n_0\,
      I1 => \pixel_data_avg_reg[1]_i_37_n_0\,
      O => \pixel_data_avg_reg[1]_i_15_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[1]_i_16\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[1]_i_38_n_0\,
      I1 => \pixel_data_avg_reg[1]_i_39_n_0\,
      O => \pixel_data_avg_reg[1]_i_16_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[1]_i_17\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[1]_i_40_n_0\,
      I1 => \pixel_data_avg_reg[1]_i_41_n_0\,
      O => \pixel_data_avg_reg[1]_i_17_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[1]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[1]_i_42_n_0\,
      I1 => \pixel_data_avg[1]_i_43_n_0\,
      O => \pixel_data_avg_reg[1]_i_18_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[1]_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[1]_i_44_n_0\,
      I1 => \pixel_data_avg[1]_i_45_n_0\,
      O => \pixel_data_avg_reg[1]_i_19_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[1]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[1]_i_46_n_0\,
      I1 => \pixel_data_avg[1]_i_47_n_0\,
      O => \pixel_data_avg_reg[1]_i_20_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[1]_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[1]_i_48_n_0\,
      I1 => \pixel_data_avg[1]_i_49_n_0\,
      O => \pixel_data_avg_reg[1]_i_21_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[1]_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[1]_i_50_n_0\,
      I1 => \pixel_data_avg[1]_i_51_n_0\,
      O => \pixel_data_avg_reg[1]_i_22_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[1]_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[1]_i_52_n_0\,
      I1 => \pixel_data_avg[1]_i_53_n_0\,
      O => \pixel_data_avg_reg[1]_i_23_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[1]_i_24\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[1]_i_54_n_0\,
      I1 => \pixel_data_avg[1]_i_55_n_0\,
      O => \pixel_data_avg_reg[1]_i_24_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[1]_i_25\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[1]_i_56_n_0\,
      I1 => \pixel_data_avg[1]_i_57_n_0\,
      O => \pixel_data_avg_reg[1]_i_25_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[1]_i_26\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[1]_i_58_n_0\,
      I1 => \pixel_data_avg[1]_i_59_n_0\,
      O => \pixel_data_avg_reg[1]_i_26_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[1]_i_27\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[1]_i_60_n_0\,
      I1 => \pixel_data_avg[1]_i_61_n_0\,
      O => \pixel_data_avg_reg[1]_i_27_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[1]_i_28\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[1]_i_62_n_0\,
      I1 => \pixel_data_avg[1]_i_63_n_0\,
      O => \pixel_data_avg_reg[1]_i_28_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[1]_i_29\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[1]_i_64_n_0\,
      I1 => \pixel_data_avg[1]_i_65_n_0\,
      O => \pixel_data_avg_reg[1]_i_29_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[1]_i_30\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[1]_i_66_n_0\,
      I1 => \pixel_data_avg[1]_i_67_n_0\,
      O => \pixel_data_avg_reg[1]_i_30_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[1]_i_31\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[1]_i_68_n_0\,
      I1 => \pixel_data_avg[1]_i_69_n_0\,
      O => \pixel_data_avg_reg[1]_i_31_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[1]_i_32\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[1]_i_70_n_0\,
      I1 => \pixel_data_avg[1]_i_71_n_0\,
      O => \pixel_data_avg_reg[1]_i_32_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[1]_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[1]_i_72_n_0\,
      I1 => \pixel_data_avg[1]_i_73_n_0\,
      O => \pixel_data_avg_reg[1]_i_33_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[1]_i_34\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[1]_i_74_n_0\,
      I1 => \pixel_data_avg[1]_i_75_n_0\,
      O => \pixel_data_avg_reg[1]_i_34_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[1]_i_35\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[1]_i_76_n_0\,
      I1 => \pixel_data_avg[1]_i_77_n_0\,
      O => \pixel_data_avg_reg[1]_i_35_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[1]_i_36\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[1]_i_78_n_0\,
      I1 => \pixel_data_avg[1]_i_79_n_0\,
      O => \pixel_data_avg_reg[1]_i_36_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[1]_i_37\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[1]_i_80_n_0\,
      I1 => \pixel_data_avg[1]_i_81_n_0\,
      O => \pixel_data_avg_reg[1]_i_37_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[1]_i_38\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[1]_i_82_n_0\,
      I1 => \pixel_data_avg[1]_i_83_n_0\,
      O => \pixel_data_avg_reg[1]_i_38_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[1]_i_39\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[1]_i_84_n_0\,
      I1 => \pixel_data_avg[1]_i_85_n_0\,
      O => \pixel_data_avg_reg[1]_i_39_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[1]_i_40\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[1]_i_86_n_0\,
      I1 => \pixel_data_avg[1]_i_87_n_0\,
      O => \pixel_data_avg_reg[1]_i_40_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[1]_i_41\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[1]_i_88_n_0\,
      I1 => \pixel_data_avg[1]_i_89_n_0\,
      O => \pixel_data_avg_reg[1]_i_41_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[1]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[1]_i_18_n_0\,
      I1 => \pixel_data_avg_reg[1]_i_19_n_0\,
      O => \pixel_data_avg_reg[1]_i_6_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[1]_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[1]_i_20_n_0\,
      I1 => \pixel_data_avg_reg[1]_i_21_n_0\,
      O => \pixel_data_avg_reg[1]_i_7_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[1]_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[1]_i_22_n_0\,
      I1 => \pixel_data_avg_reg[1]_i_23_n_0\,
      O => \pixel_data_avg_reg[1]_i_8_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[1]_i_9\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[1]_i_24_n_0\,
      I1 => \pixel_data_avg_reg[1]_i_25_n_0\,
      O => \pixel_data_avg_reg[1]_i_9_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \pixel_data_avg[7]_i_1_n_0\,
      D => p_0_in(2),
      Q => pixel_data_avg(2),
      R => reset
    );
\pixel_data_avg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \pixel_data_avg[7]_i_1_n_0\,
      D => p_0_in(3),
      Q => pixel_data_avg(3),
      R => reset
    );
\pixel_data_avg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \pixel_data_avg[7]_i_1_n_0\,
      D => p_0_in(4),
      Q => pixel_data_avg(4),
      R => reset
    );
\pixel_data_avg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \pixel_data_avg[7]_i_1_n_0\,
      D => p_0_in(5),
      Q => pixel_data_avg(5),
      R => reset
    );
\pixel_data_avg_reg[5]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_data_avg_reg[1]_i_1_n_0\,
      CO(3) => \pixel_data_avg_reg[5]_i_1_n_0\,
      CO(2) => \pixel_data_avg_reg[5]_i_1_n_1\,
      CO(1) => \pixel_data_avg_reg[5]_i_1_n_2\,
      CO(0) => \pixel_data_avg_reg[5]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(5 downto 2),
      S(3 downto 0) => sum(11 downto 8)
    );
\pixel_data_avg_reg[5]_i_10\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[5]_i_26_n_0\,
      I1 => \pixel_data_avg_reg[5]_i_27_n_0\,
      O => \pixel_data_avg_reg[5]_i_10_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[5]_i_11\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[5]_i_28_n_0\,
      I1 => \pixel_data_avg_reg[5]_i_29_n_0\,
      O => \pixel_data_avg_reg[5]_i_11_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[5]_i_12\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[5]_i_30_n_0\,
      I1 => \pixel_data_avg_reg[5]_i_31_n_0\,
      O => \pixel_data_avg_reg[5]_i_12_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[5]_i_13\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[5]_i_32_n_0\,
      I1 => \pixel_data_avg_reg[5]_i_33_n_0\,
      O => \pixel_data_avg_reg[5]_i_13_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[5]_i_14\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[5]_i_34_n_0\,
      I1 => \pixel_data_avg_reg[5]_i_35_n_0\,
      O => \pixel_data_avg_reg[5]_i_14_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[5]_i_15\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[5]_i_36_n_0\,
      I1 => \pixel_data_avg_reg[5]_i_37_n_0\,
      O => \pixel_data_avg_reg[5]_i_15_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[5]_i_16\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[5]_i_38_n_0\,
      I1 => \pixel_data_avg_reg[5]_i_39_n_0\,
      O => \pixel_data_avg_reg[5]_i_16_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[5]_i_17\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[5]_i_40_n_0\,
      I1 => \pixel_data_avg_reg[5]_i_41_n_0\,
      O => \pixel_data_avg_reg[5]_i_17_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[5]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[5]_i_42_n_0\,
      I1 => \pixel_data_avg[5]_i_43_n_0\,
      O => \pixel_data_avg_reg[5]_i_18_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[5]_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[5]_i_44_n_0\,
      I1 => \pixel_data_avg[5]_i_45_n_0\,
      O => \pixel_data_avg_reg[5]_i_19_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[5]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[5]_i_46_n_0\,
      I1 => \pixel_data_avg[5]_i_47_n_0\,
      O => \pixel_data_avg_reg[5]_i_20_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[5]_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[5]_i_48_n_0\,
      I1 => \pixel_data_avg[5]_i_49_n_0\,
      O => \pixel_data_avg_reg[5]_i_21_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[5]_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[5]_i_50_n_0\,
      I1 => \pixel_data_avg[5]_i_51_n_0\,
      O => \pixel_data_avg_reg[5]_i_22_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[5]_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[5]_i_52_n_0\,
      I1 => \pixel_data_avg[5]_i_53_n_0\,
      O => \pixel_data_avg_reg[5]_i_23_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[5]_i_24\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[5]_i_54_n_0\,
      I1 => \pixel_data_avg[5]_i_55_n_0\,
      O => \pixel_data_avg_reg[5]_i_24_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[5]_i_25\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[5]_i_56_n_0\,
      I1 => \pixel_data_avg[5]_i_57_n_0\,
      O => \pixel_data_avg_reg[5]_i_25_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[5]_i_26\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[5]_i_58_n_0\,
      I1 => \pixel_data_avg[5]_i_59_n_0\,
      O => \pixel_data_avg_reg[5]_i_26_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[5]_i_27\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[5]_i_60_n_0\,
      I1 => \pixel_data_avg[5]_i_61_n_0\,
      O => \pixel_data_avg_reg[5]_i_27_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[5]_i_28\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[5]_i_62_n_0\,
      I1 => \pixel_data_avg[5]_i_63_n_0\,
      O => \pixel_data_avg_reg[5]_i_28_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[5]_i_29\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[5]_i_64_n_0\,
      I1 => \pixel_data_avg[5]_i_65_n_0\,
      O => \pixel_data_avg_reg[5]_i_29_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[5]_i_30\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[5]_i_66_n_0\,
      I1 => \pixel_data_avg[5]_i_67_n_0\,
      O => \pixel_data_avg_reg[5]_i_30_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[5]_i_31\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[5]_i_68_n_0\,
      I1 => \pixel_data_avg[5]_i_69_n_0\,
      O => \pixel_data_avg_reg[5]_i_31_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[5]_i_32\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[5]_i_70_n_0\,
      I1 => \pixel_data_avg[5]_i_71_n_0\,
      O => \pixel_data_avg_reg[5]_i_32_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[5]_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[5]_i_72_n_0\,
      I1 => \pixel_data_avg[5]_i_73_n_0\,
      O => \pixel_data_avg_reg[5]_i_33_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[5]_i_34\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[5]_i_74_n_0\,
      I1 => \pixel_data_avg[5]_i_75_n_0\,
      O => \pixel_data_avg_reg[5]_i_34_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[5]_i_35\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[5]_i_76_n_0\,
      I1 => \pixel_data_avg[5]_i_77_n_0\,
      O => \pixel_data_avg_reg[5]_i_35_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[5]_i_36\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[5]_i_78_n_0\,
      I1 => \pixel_data_avg[5]_i_79_n_0\,
      O => \pixel_data_avg_reg[5]_i_36_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[5]_i_37\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[5]_i_80_n_0\,
      I1 => \pixel_data_avg[5]_i_81_n_0\,
      O => \pixel_data_avg_reg[5]_i_37_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[5]_i_38\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[5]_i_82_n_0\,
      I1 => \pixel_data_avg[5]_i_83_n_0\,
      O => \pixel_data_avg_reg[5]_i_38_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[5]_i_39\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[5]_i_84_n_0\,
      I1 => \pixel_data_avg[5]_i_85_n_0\,
      O => \pixel_data_avg_reg[5]_i_39_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[5]_i_40\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[5]_i_86_n_0\,
      I1 => \pixel_data_avg[5]_i_87_n_0\,
      O => \pixel_data_avg_reg[5]_i_40_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[5]_i_41\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[5]_i_88_n_0\,
      I1 => \pixel_data_avg[5]_i_89_n_0\,
      O => \pixel_data_avg_reg[5]_i_41_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[5]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[5]_i_18_n_0\,
      I1 => \pixel_data_avg_reg[5]_i_19_n_0\,
      O => \pixel_data_avg_reg[5]_i_6_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[5]_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[5]_i_20_n_0\,
      I1 => \pixel_data_avg_reg[5]_i_21_n_0\,
      O => \pixel_data_avg_reg[5]_i_7_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[5]_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[5]_i_22_n_0\,
      I1 => \pixel_data_avg_reg[5]_i_23_n_0\,
      O => \pixel_data_avg_reg[5]_i_8_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[5]_i_9\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[5]_i_24_n_0\,
      I1 => \pixel_data_avg_reg[5]_i_25_n_0\,
      O => \pixel_data_avg_reg[5]_i_9_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \pixel_data_avg[7]_i_1_n_0\,
      D => p_0_in(6),
      Q => pixel_data_avg(6),
      R => reset
    );
\pixel_data_avg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \pixel_data_avg[7]_i_1_n_0\,
      D => p_0_in(7),
      Q => pixel_data_avg(7),
      R => reset
    );
\pixel_data_avg_reg[7]_i_10\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[7]_i_20_n_0\,
      I1 => \pixel_data_avg_reg[7]_i_21_n_0\,
      O => \pixel_data_avg_reg[7]_i_10_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[7]_i_11\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[7]_i_22_n_0\,
      I1 => \pixel_data_avg_reg[7]_i_23_n_0\,
      O => \pixel_data_avg_reg[7]_i_11_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[7]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[7]_i_24_n_0\,
      I1 => \pixel_data_avg[7]_i_25_n_0\,
      O => \pixel_data_avg_reg[7]_i_12_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[7]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[7]_i_26_n_0\,
      I1 => \pixel_data_avg[7]_i_27_n_0\,
      O => \pixel_data_avg_reg[7]_i_13_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[7]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[7]_i_28_n_0\,
      I1 => \pixel_data_avg[7]_i_29_n_0\,
      O => \pixel_data_avg_reg[7]_i_14_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[7]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[7]_i_30_n_0\,
      I1 => \pixel_data_avg[7]_i_31_n_0\,
      O => \pixel_data_avg_reg[7]_i_15_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[7]_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[7]_i_32_n_0\,
      I1 => \pixel_data_avg[7]_i_33_n_0\,
      O => \pixel_data_avg_reg[7]_i_16_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[7]_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[7]_i_34_n_0\,
      I1 => \pixel_data_avg[7]_i_35_n_0\,
      O => \pixel_data_avg_reg[7]_i_17_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[7]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[7]_i_36_n_0\,
      I1 => \pixel_data_avg[7]_i_37_n_0\,
      O => \pixel_data_avg_reg[7]_i_18_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[7]_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[7]_i_38_n_0\,
      I1 => \pixel_data_avg[7]_i_39_n_0\,
      O => \pixel_data_avg_reg[7]_i_19_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_data_avg_reg[5]_i_1_n_0\,
      CO(3 downto 1) => \NLW_pixel_data_avg_reg[7]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \pixel_data_avg_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_pixel_data_avg_reg[7]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => p_0_in(7 downto 6),
      S(3 downto 2) => B"00",
      S(1 downto 0) => sum(13 downto 12)
    );
\pixel_data_avg_reg[7]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[7]_i_40_n_0\,
      I1 => \pixel_data_avg[7]_i_41_n_0\,
      O => \pixel_data_avg_reg[7]_i_20_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[7]_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[7]_i_42_n_0\,
      I1 => \pixel_data_avg[7]_i_43_n_0\,
      O => \pixel_data_avg_reg[7]_i_21_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[7]_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[7]_i_44_n_0\,
      I1 => \pixel_data_avg[7]_i_45_n_0\,
      O => \pixel_data_avg_reg[7]_i_22_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[7]_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pixel_data_avg[7]_i_46_n_0\,
      I1 => \pixel_data_avg[7]_i_47_n_0\,
      O => \pixel_data_avg_reg[7]_i_23_n_0\,
      S => col_index(2)
    );
\pixel_data_avg_reg[7]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[7]_i_12_n_0\,
      I1 => \pixel_data_avg_reg[7]_i_13_n_0\,
      O => \pixel_data_avg_reg[7]_i_6_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[7]_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[7]_i_14_n_0\,
      I1 => \pixel_data_avg_reg[7]_i_15_n_0\,
      O => \pixel_data_avg_reg[7]_i_7_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[7]_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[7]_i_16_n_0\,
      I1 => \pixel_data_avg_reg[7]_i_17_n_0\,
      O => \pixel_data_avg_reg[7]_i_8_n_0\,
      S => col_index(3)
    );
\pixel_data_avg_reg[7]_i_9\: unisim.vcomponents.MUXF8
     port map (
      I0 => \pixel_data_avg_reg[7]_i_18_n_0\,
      I1 => \pixel_data_avg_reg[7]_i_19_n_0\,
      O => \pixel_data_avg_reg[7]_i_9_n_0\,
      S => col_index(3)
    );
\sum[0][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => input_valid,
      I1 => \sum[0][13]_i_3_n_0\,
      I2 => col_index(5),
      I3 => reset,
      O => \sum[0][13]_i_1_n_0\
    );
\sum[0][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[0][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[0][13]_i_2_n_0\
    );
\sum[0][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => col_index(3),
      I1 => \y_count_reg_n_0_[2]\,
      I2 => \sum[0][13]_i_5_n_0\,
      I3 => \y_count_reg_n_0_[1]\,
      I4 => col_index(2),
      I5 => col_index(4),
      O => \sum[0][13]_i_3_n_0\
    );
\sum[0][13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F1110111"
    )
        port map (
      I0 => col_index(1),
      I1 => col_index(0),
      I2 => \y_count_reg_n_0_[2]\,
      I3 => \y_count_reg_n_0_[1]\,
      I4 => \sum[0][13]_i_6_n_0\,
      I5 => col_index(2),
      O => \sum[0][13]_i_4_n_0\
    );
\sum[0][13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => x_count(1),
      I1 => x_count(2),
      I2 => col_index(0),
      I3 => col_index(1),
      I4 => x_count(0),
      I5 => \y_count_reg_n_0_[0]\,
      O => \sum[0][13]_i_5_n_0\
    );
\sum[0][13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007FFF"
    )
        port map (
      I0 => x_count(2),
      I1 => x_count(0),
      I2 => x_count(1),
      I3 => \y_count_reg_n_0_[0]\,
      I4 => col_index(0),
      I5 => col_index(1),
      O => \sum[0][13]_i_6_n_0\
    );
\sum[0][3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001DFF1DFFE200E2"
    )
        port map (
      I0 => \sum_reg[0][3]_i_6_n_0\,
      I1 => col_index(4),
      I2 => \sum_reg[0][3]_i_7_n_0\,
      I3 => col_index(5),
      I4 => \sum_reg[0][3]_i_8_n_0\,
      I5 => pixel_data_grayscale(3),
      O => \sum[0][3]_i_2_n_0\
    );
\sum[0][3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001DFF1DFFE200E2"
    )
        port map (
      I0 => \sum_reg[0][3]_i_9_n_0\,
      I1 => col_index(4),
      I2 => \sum_reg[0][3]_i_10_n_0\,
      I3 => col_index(5),
      I4 => \sum_reg[0][3]_i_11_n_0\,
      I5 => pixel_data_grayscale(2),
      O => \sum[0][3]_i_3_n_0\
    );
\sum[0][3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001DFF1DFFE200E2"
    )
        port map (
      I0 => \sum_reg[0][3]_i_12_n_0\,
      I1 => col_index(4),
      I2 => \sum_reg[0][3]_i_13_n_0\,
      I3 => col_index(5),
      I4 => \sum_reg[0][3]_i_14_n_0\,
      I5 => pixel_data_grayscale(1),
      O => \sum[0][3]_i_4_n_0\
    );
\sum[0][3]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[3]\(3),
      I1 => \sum_reg[2]\(3),
      I2 => col_index(1),
      I3 => \sum_reg[1]\(3),
      I4 => col_index(0),
      I5 => \sum_reg[0]\(3),
      O => \sum[0][3]_i_42_n_0\
    );
\sum[0][3]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[7]\(3),
      I1 => \sum_reg[6]\(3),
      I2 => col_index(1),
      I3 => \sum_reg[5]\(3),
      I4 => col_index(0),
      I5 => \sum_reg[4]\(3),
      O => \sum[0][3]_i_43_n_0\
    );
\sum[0][3]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[11]\(3),
      I1 => \sum_reg[10]\(3),
      I2 => col_index(1),
      I3 => \sum_reg[9]\(3),
      I4 => col_index(0),
      I5 => \sum_reg[8]\(3),
      O => \sum[0][3]_i_44_n_0\
    );
\sum[0][3]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[15]\(3),
      I1 => \sum_reg[14]\(3),
      I2 => col_index(1),
      I3 => \sum_reg[13]\(3),
      I4 => col_index(0),
      I5 => \sum_reg[12]\(3),
      O => \sum[0][3]_i_45_n_0\
    );
\sum[0][3]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[19]\(3),
      I1 => \sum_reg[18]\(3),
      I2 => col_index(1),
      I3 => \sum_reg[17]\(3),
      I4 => col_index(0),
      I5 => \sum_reg[16]\(3),
      O => \sum[0][3]_i_46_n_0\
    );
\sum[0][3]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[23]\(3),
      I1 => \sum_reg[22]\(3),
      I2 => col_index(1),
      I3 => \sum_reg[21]\(3),
      I4 => col_index(0),
      I5 => \sum_reg[20]\(3),
      O => \sum[0][3]_i_47_n_0\
    );
\sum[0][3]_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[27]\(3),
      I1 => \sum_reg[26]\(3),
      I2 => col_index(1),
      I3 => \sum_reg[25]\(3),
      I4 => col_index(0),
      I5 => \sum_reg[24]\(3),
      O => \sum[0][3]_i_48_n_0\
    );
\sum[0][3]_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[31]\(3),
      I1 => \sum_reg[30]\(3),
      I2 => col_index(1),
      I3 => \sum_reg[29]\(3),
      I4 => col_index(0),
      I5 => \sum_reg[28]\(3),
      O => \sum[0][3]_i_49_n_0\
    );
\sum[0][3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001DFF1DFFE200E2"
    )
        port map (
      I0 => \sum_reg[0][3]_i_15_n_0\,
      I1 => col_index(4),
      I2 => \sum_reg[0][3]_i_16_n_0\,
      I3 => col_index(5),
      I4 => \sum_reg[0][3]_i_17_n_0\,
      I5 => pixel_data_grayscale(0),
      O => \sum[0][3]_i_5_n_0\
    );
\sum[0][3]_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[35]\(3),
      I1 => \sum_reg[34]\(3),
      I2 => col_index(1),
      I3 => \sum_reg[33]\(3),
      I4 => col_index(0),
      I5 => \sum_reg[32]\(3),
      O => \sum[0][3]_i_50_n_0\
    );
\sum[0][3]_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[39]\(3),
      I1 => \sum_reg[38]\(3),
      I2 => col_index(1),
      I3 => \sum_reg[37]\(3),
      I4 => col_index(0),
      I5 => \sum_reg[36]\(3),
      O => \sum[0][3]_i_51_n_0\
    );
\sum[0][3]_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[43]\(3),
      I1 => \sum_reg[42]\(3),
      I2 => col_index(1),
      I3 => \sum_reg[41]\(3),
      I4 => col_index(0),
      I5 => \sum_reg[40]\(3),
      O => \sum[0][3]_i_52_n_0\
    );
\sum[0][3]_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[47]\(3),
      I1 => \sum_reg[46]\(3),
      I2 => col_index(1),
      I3 => \sum_reg[45]\(3),
      I4 => col_index(0),
      I5 => \sum_reg[44]\(3),
      O => \sum[0][3]_i_53_n_0\
    );
\sum[0][3]_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[3]\(2),
      I1 => \sum_reg[2]\(2),
      I2 => col_index(1),
      I3 => \sum_reg[1]\(2),
      I4 => col_index(0),
      I5 => \sum_reg[0]\(2),
      O => \sum[0][3]_i_54_n_0\
    );
\sum[0][3]_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[7]\(2),
      I1 => \sum_reg[6]\(2),
      I2 => col_index(1),
      I3 => \sum_reg[5]\(2),
      I4 => col_index(0),
      I5 => \sum_reg[4]\(2),
      O => \sum[0][3]_i_55_n_0\
    );
\sum[0][3]_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[11]\(2),
      I1 => \sum_reg[10]\(2),
      I2 => col_index(1),
      I3 => \sum_reg[9]\(2),
      I4 => col_index(0),
      I5 => \sum_reg[8]\(2),
      O => \sum[0][3]_i_56_n_0\
    );
\sum[0][3]_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[15]\(2),
      I1 => \sum_reg[14]\(2),
      I2 => col_index(1),
      I3 => \sum_reg[13]\(2),
      I4 => col_index(0),
      I5 => \sum_reg[12]\(2),
      O => \sum[0][3]_i_57_n_0\
    );
\sum[0][3]_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[19]\(2),
      I1 => \sum_reg[18]\(2),
      I2 => col_index(1),
      I3 => \sum_reg[17]\(2),
      I4 => col_index(0),
      I5 => \sum_reg[16]\(2),
      O => \sum[0][3]_i_58_n_0\
    );
\sum[0][3]_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[23]\(2),
      I1 => \sum_reg[22]\(2),
      I2 => col_index(1),
      I3 => \sum_reg[21]\(2),
      I4 => col_index(0),
      I5 => \sum_reg[20]\(2),
      O => \sum[0][3]_i_59_n_0\
    );
\sum[0][3]_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[27]\(2),
      I1 => \sum_reg[26]\(2),
      I2 => col_index(1),
      I3 => \sum_reg[25]\(2),
      I4 => col_index(0),
      I5 => \sum_reg[24]\(2),
      O => \sum[0][3]_i_60_n_0\
    );
\sum[0][3]_i_61\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[31]\(2),
      I1 => \sum_reg[30]\(2),
      I2 => col_index(1),
      I3 => \sum_reg[29]\(2),
      I4 => col_index(0),
      I5 => \sum_reg[28]\(2),
      O => \sum[0][3]_i_61_n_0\
    );
\sum[0][3]_i_62\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[35]\(2),
      I1 => \sum_reg[34]\(2),
      I2 => col_index(1),
      I3 => \sum_reg[33]\(2),
      I4 => col_index(0),
      I5 => \sum_reg[32]\(2),
      O => \sum[0][3]_i_62_n_0\
    );
\sum[0][3]_i_63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[39]\(2),
      I1 => \sum_reg[38]\(2),
      I2 => col_index(1),
      I3 => \sum_reg[37]\(2),
      I4 => col_index(0),
      I5 => \sum_reg[36]\(2),
      O => \sum[0][3]_i_63_n_0\
    );
\sum[0][3]_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[43]\(2),
      I1 => \sum_reg[42]\(2),
      I2 => col_index(1),
      I3 => \sum_reg[41]\(2),
      I4 => col_index(0),
      I5 => \sum_reg[40]\(2),
      O => \sum[0][3]_i_64_n_0\
    );
\sum[0][3]_i_65\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[47]\(2),
      I1 => \sum_reg[46]\(2),
      I2 => col_index(1),
      I3 => \sum_reg[45]\(2),
      I4 => col_index(0),
      I5 => \sum_reg[44]\(2),
      O => \sum[0][3]_i_65_n_0\
    );
\sum[0][3]_i_66\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[3]\(1),
      I1 => \sum_reg[2]\(1),
      I2 => col_index(1),
      I3 => \sum_reg[1]\(1),
      I4 => col_index(0),
      I5 => \sum_reg[0]\(1),
      O => \sum[0][3]_i_66_n_0\
    );
\sum[0][3]_i_67\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[7]\(1),
      I1 => \sum_reg[6]\(1),
      I2 => col_index(1),
      I3 => \sum_reg[5]\(1),
      I4 => col_index(0),
      I5 => \sum_reg[4]\(1),
      O => \sum[0][3]_i_67_n_0\
    );
\sum[0][3]_i_68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[11]\(1),
      I1 => \sum_reg[10]\(1),
      I2 => col_index(1),
      I3 => \sum_reg[9]\(1),
      I4 => col_index(0),
      I5 => \sum_reg[8]\(1),
      O => \sum[0][3]_i_68_n_0\
    );
\sum[0][3]_i_69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[15]\(1),
      I1 => \sum_reg[14]\(1),
      I2 => col_index(1),
      I3 => \sum_reg[13]\(1),
      I4 => col_index(0),
      I5 => \sum_reg[12]\(1),
      O => \sum[0][3]_i_69_n_0\
    );
\sum[0][3]_i_70\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[19]\(1),
      I1 => \sum_reg[18]\(1),
      I2 => col_index(1),
      I3 => \sum_reg[17]\(1),
      I4 => col_index(0),
      I5 => \sum_reg[16]\(1),
      O => \sum[0][3]_i_70_n_0\
    );
\sum[0][3]_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[23]\(1),
      I1 => \sum_reg[22]\(1),
      I2 => col_index(1),
      I3 => \sum_reg[21]\(1),
      I4 => col_index(0),
      I5 => \sum_reg[20]\(1),
      O => \sum[0][3]_i_71_n_0\
    );
\sum[0][3]_i_72\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[27]\(1),
      I1 => \sum_reg[26]\(1),
      I2 => col_index(1),
      I3 => \sum_reg[25]\(1),
      I4 => col_index(0),
      I5 => \sum_reg[24]\(1),
      O => \sum[0][3]_i_72_n_0\
    );
\sum[0][3]_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[31]\(1),
      I1 => \sum_reg[30]\(1),
      I2 => col_index(1),
      I3 => \sum_reg[29]\(1),
      I4 => col_index(0),
      I5 => \sum_reg[28]\(1),
      O => \sum[0][3]_i_73_n_0\
    );
\sum[0][3]_i_74\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[35]\(1),
      I1 => \sum_reg[34]\(1),
      I2 => col_index(1),
      I3 => \sum_reg[33]\(1),
      I4 => col_index(0),
      I5 => \sum_reg[32]\(1),
      O => \sum[0][3]_i_74_n_0\
    );
\sum[0][3]_i_75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[39]\(1),
      I1 => \sum_reg[38]\(1),
      I2 => col_index(1),
      I3 => \sum_reg[37]\(1),
      I4 => col_index(0),
      I5 => \sum_reg[36]\(1),
      O => \sum[0][3]_i_75_n_0\
    );
\sum[0][3]_i_76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[43]\(1),
      I1 => \sum_reg[42]\(1),
      I2 => col_index(1),
      I3 => \sum_reg[41]\(1),
      I4 => col_index(0),
      I5 => \sum_reg[40]\(1),
      O => \sum[0][3]_i_76_n_0\
    );
\sum[0][3]_i_77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[47]\(1),
      I1 => \sum_reg[46]\(1),
      I2 => col_index(1),
      I3 => \sum_reg[45]\(1),
      I4 => col_index(0),
      I5 => \sum_reg[44]\(1),
      O => \sum[0][3]_i_77_n_0\
    );
\sum[0][3]_i_78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[3]\(0),
      I1 => \sum_reg[2]\(0),
      I2 => col_index(1),
      I3 => \sum_reg[1]\(0),
      I4 => col_index(0),
      I5 => \sum_reg[0]\(0),
      O => \sum[0][3]_i_78_n_0\
    );
\sum[0][3]_i_79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[7]\(0),
      I1 => \sum_reg[6]\(0),
      I2 => col_index(1),
      I3 => \sum_reg[5]\(0),
      I4 => col_index(0),
      I5 => \sum_reg[4]\(0),
      O => \sum[0][3]_i_79_n_0\
    );
\sum[0][3]_i_80\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[11]\(0),
      I1 => \sum_reg[10]\(0),
      I2 => col_index(1),
      I3 => \sum_reg[9]\(0),
      I4 => col_index(0),
      I5 => \sum_reg[8]\(0),
      O => \sum[0][3]_i_80_n_0\
    );
\sum[0][3]_i_81\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[15]\(0),
      I1 => \sum_reg[14]\(0),
      I2 => col_index(1),
      I3 => \sum_reg[13]\(0),
      I4 => col_index(0),
      I5 => \sum_reg[12]\(0),
      O => \sum[0][3]_i_81_n_0\
    );
\sum[0][3]_i_82\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[19]\(0),
      I1 => \sum_reg[18]\(0),
      I2 => col_index(1),
      I3 => \sum_reg[17]\(0),
      I4 => col_index(0),
      I5 => \sum_reg[16]\(0),
      O => \sum[0][3]_i_82_n_0\
    );
\sum[0][3]_i_83\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[23]\(0),
      I1 => \sum_reg[22]\(0),
      I2 => col_index(1),
      I3 => \sum_reg[21]\(0),
      I4 => col_index(0),
      I5 => \sum_reg[20]\(0),
      O => \sum[0][3]_i_83_n_0\
    );
\sum[0][3]_i_84\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[27]\(0),
      I1 => \sum_reg[26]\(0),
      I2 => col_index(1),
      I3 => \sum_reg[25]\(0),
      I4 => col_index(0),
      I5 => \sum_reg[24]\(0),
      O => \sum[0][3]_i_84_n_0\
    );
\sum[0][3]_i_85\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[31]\(0),
      I1 => \sum_reg[30]\(0),
      I2 => col_index(1),
      I3 => \sum_reg[29]\(0),
      I4 => col_index(0),
      I5 => \sum_reg[28]\(0),
      O => \sum[0][3]_i_85_n_0\
    );
\sum[0][3]_i_86\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[35]\(0),
      I1 => \sum_reg[34]\(0),
      I2 => col_index(1),
      I3 => \sum_reg[33]\(0),
      I4 => col_index(0),
      I5 => \sum_reg[32]\(0),
      O => \sum[0][3]_i_86_n_0\
    );
\sum[0][3]_i_87\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[39]\(0),
      I1 => \sum_reg[38]\(0),
      I2 => col_index(1),
      I3 => \sum_reg[37]\(0),
      I4 => col_index(0),
      I5 => \sum_reg[36]\(0),
      O => \sum[0][3]_i_87_n_0\
    );
\sum[0][3]_i_88\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[43]\(0),
      I1 => \sum_reg[42]\(0),
      I2 => col_index(1),
      I3 => \sum_reg[41]\(0),
      I4 => col_index(0),
      I5 => \sum_reg[40]\(0),
      O => \sum[0][3]_i_88_n_0\
    );
\sum[0][3]_i_89\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sum_reg[47]\(0),
      I1 => \sum_reg[46]\(0),
      I2 => col_index(1),
      I3 => \sum_reg[45]\(0),
      I4 => col_index(0),
      I5 => \sum_reg[44]\(0),
      O => \sum[0][3]_i_89_n_0\
    );
\sum[10][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => input_valid,
      I1 => \sum[10][13]_i_3_n_0\,
      I2 => col_index(5),
      I3 => reset,
      O => \sum[10][13]_i_1_n_0\
    );
\sum[10][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[2][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[10][13]_i_2_n_0\
    );
\sum[10][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => col_index(3),
      I1 => \y_count_reg_n_0_[2]\,
      I2 => \sum[2][13]_i_5_n_0\,
      I3 => \y_count_reg_n_0_[1]\,
      I4 => col_index(2),
      I5 => col_index(4),
      O => \sum[10][13]_i_3_n_0\
    );
\sum[11][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0020"
    )
        port map (
      I0 => input_valid,
      I1 => col_index(4),
      I2 => \sum[11][13]_i_3_n_0\,
      I3 => col_index(5),
      I4 => reset,
      O => \sum[11][13]_i_1_n_0\
    );
\sum[11][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[3][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[11][13]_i_2_n_0\
    );
\sum[11][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => col_index(2),
      I1 => \y_count_reg_n_0_[1]\,
      I2 => \y_count[2]_i_3_n_0\,
      I3 => \y_count_reg_n_0_[0]\,
      I4 => \y_count_reg_n_0_[2]\,
      I5 => col_index(3),
      O => \sum[11][13]_i_3_n_0\
    );
\sum[12][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => input_valid,
      I1 => \sum[12][13]_i_3_n_0\,
      I2 => col_index(5),
      I3 => reset,
      O => \sum[12][13]_i_1_n_0\
    );
\sum[12][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[4][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[12][13]_i_2_n_0\
    );
\sum[12][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => col_index(3),
      I1 => \y_count_reg_n_0_[2]\,
      I2 => \sum[0][13]_i_5_n_0\,
      I3 => \y_count_reg_n_0_[1]\,
      I4 => col_index(2),
      I5 => col_index(4),
      O => \sum[12][13]_i_3_n_0\
    );
\sum[13][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => input_valid,
      I1 => \sum[13][13]_i_3_n_0\,
      I2 => col_index(5),
      I3 => reset,
      O => \sum[13][13]_i_1_n_0\
    );
\sum[13][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[5][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[13][13]_i_2_n_0\
    );
\sum[13][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => col_index(3),
      I1 => \y_count_reg_n_0_[2]\,
      I2 => \sum[1][13]_i_5_n_0\,
      I3 => \y_count_reg_n_0_[1]\,
      I4 => col_index(2),
      I5 => col_index(4),
      O => \sum[13][13]_i_3_n_0\
    );
\sum[14][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => input_valid,
      I1 => \sum[14][13]_i_3_n_0\,
      I2 => col_index(5),
      I3 => reset,
      O => \sum[14][13]_i_1_n_0\
    );
\sum[14][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[6][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[14][13]_i_2_n_0\
    );
\sum[14][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => col_index(3),
      I1 => \y_count_reg_n_0_[2]\,
      I2 => \sum[2][13]_i_5_n_0\,
      I3 => \y_count_reg_n_0_[1]\,
      I4 => col_index(2),
      I5 => col_index(4),
      O => \sum[14][13]_i_3_n_0\
    );
\sum[15][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0020"
    )
        port map (
      I0 => input_valid,
      I1 => col_index(4),
      I2 => \sum[15][13]_i_3_n_0\,
      I3 => col_index(5),
      I4 => reset,
      O => \sum[15][13]_i_1_n_0\
    );
\sum[15][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[7][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[15][13]_i_2_n_0\
    );
\sum[15][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => col_index(2),
      I1 => \y_count_reg_n_0_[1]\,
      I2 => \y_count[2]_i_3_n_0\,
      I3 => \y_count_reg_n_0_[0]\,
      I4 => \y_count_reg_n_0_[2]\,
      I5 => col_index(3),
      O => \sum[15][13]_i_3_n_0\
    );
\sum[16][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => input_valid,
      I1 => col_index(4),
      I2 => \sum[16][13]_i_3_n_0\,
      I3 => col_index(5),
      I4 => reset,
      O => \sum[16][13]_i_1_n_0\
    );
\sum[16][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[0][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[16][13]_i_2_n_0\
    );
\sum[16][13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => col_index(2),
      I1 => \y_count_reg_n_0_[1]\,
      I2 => \sum[0][13]_i_5_n_0\,
      I3 => \y_count_reg_n_0_[2]\,
      I4 => col_index(3),
      O => \sum[16][13]_i_3_n_0\
    );
\sum[17][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => input_valid,
      I1 => col_index(4),
      I2 => \sum[17][13]_i_3_n_0\,
      I3 => col_index(5),
      I4 => reset,
      O => \sum[17][13]_i_1_n_0\
    );
\sum[17][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[1][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[17][13]_i_2_n_0\
    );
\sum[17][13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => col_index(2),
      I1 => \y_count_reg_n_0_[1]\,
      I2 => \sum[1][13]_i_5_n_0\,
      I3 => \y_count_reg_n_0_[2]\,
      I4 => col_index(3),
      O => \sum[17][13]_i_3_n_0\
    );
\sum[18][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => input_valid,
      I1 => col_index(4),
      I2 => \sum[18][13]_i_3_n_0\,
      I3 => col_index(5),
      I4 => reset,
      O => \sum[18][13]_i_1_n_0\
    );
\sum[18][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[2][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[18][13]_i_2_n_0\
    );
\sum[18][13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => col_index(2),
      I1 => \y_count_reg_n_0_[1]\,
      I2 => \sum[2][13]_i_5_n_0\,
      I3 => \y_count_reg_n_0_[2]\,
      I4 => col_index(3),
      O => \sum[18][13]_i_3_n_0\
    );
\sum[19][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => input_valid,
      I1 => col_index(4),
      I2 => \sum[3][13]_i_3_n_0\,
      I3 => col_index(5),
      I4 => reset,
      O => \sum[19][13]_i_1_n_0\
    );
\sum[19][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[3][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[19][13]_i_2_n_0\
    );
\sum[1][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => input_valid,
      I1 => \sum[1][13]_i_3_n_0\,
      I2 => col_index(5),
      I3 => reset,
      O => \sum[1][13]_i_1_n_0\
    );
\sum[1][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[1][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[1][13]_i_2_n_0\
    );
\sum[1][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => col_index(3),
      I1 => \y_count_reg_n_0_[2]\,
      I2 => \sum[1][13]_i_5_n_0\,
      I3 => \y_count_reg_n_0_[1]\,
      I4 => col_index(2),
      I5 => col_index(4),
      O => \sum[1][13]_i_3_n_0\
    );
\sum[1][13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4440444"
    )
        port map (
      I0 => col_index(1),
      I1 => col_index(0),
      I2 => \y_count_reg_n_0_[2]\,
      I3 => \y_count_reg_n_0_[1]\,
      I4 => \sum[1][13]_i_6_n_0\,
      I5 => col_index(2),
      O => \sum[1][13]_i_4_n_0\
    );
\sum[1][13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => x_count(1),
      I1 => x_count(2),
      I2 => col_index(0),
      I3 => col_index(1),
      I4 => x_count(0),
      I5 => \y_count_reg_n_0_[0]\,
      O => \sum[1][13]_i_5_n_0\
    );
\sum[1][13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF0000"
    )
        port map (
      I0 => x_count(2),
      I1 => x_count(0),
      I2 => x_count(1),
      I3 => \y_count_reg_n_0_[0]\,
      I4 => col_index(0),
      I5 => col_index(1),
      O => \sum[1][13]_i_6_n_0\
    );
\sum[20][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => input_valid,
      I1 => col_index(4),
      I2 => \sum[20][13]_i_3_n_0\,
      I3 => col_index(5),
      I4 => reset,
      O => \sum[20][13]_i_1_n_0\
    );
\sum[20][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[4][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[20][13]_i_2_n_0\
    );
\sum[20][13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => col_index(2),
      I1 => \y_count_reg_n_0_[1]\,
      I2 => \sum[0][13]_i_5_n_0\,
      I3 => \y_count_reg_n_0_[2]\,
      I4 => col_index(3),
      O => \sum[20][13]_i_3_n_0\
    );
\sum[21][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => input_valid,
      I1 => col_index(4),
      I2 => \sum[21][13]_i_3_n_0\,
      I3 => col_index(5),
      I4 => reset,
      O => \sum[21][13]_i_1_n_0\
    );
\sum[21][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[5][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[21][13]_i_2_n_0\
    );
\sum[21][13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => col_index(2),
      I1 => \y_count_reg_n_0_[1]\,
      I2 => \sum[1][13]_i_5_n_0\,
      I3 => \y_count_reg_n_0_[2]\,
      I4 => col_index(3),
      O => \sum[21][13]_i_3_n_0\
    );
\sum[22][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => input_valid,
      I1 => col_index(4),
      I2 => \sum[22][13]_i_3_n_0\,
      I3 => col_index(5),
      I4 => reset,
      O => \sum[22][13]_i_1_n_0\
    );
\sum[22][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[6][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[22][13]_i_2_n_0\
    );
\sum[22][13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => col_index(2),
      I1 => \y_count_reg_n_0_[1]\,
      I2 => \sum[2][13]_i_5_n_0\,
      I3 => \y_count_reg_n_0_[2]\,
      I4 => col_index(3),
      O => \sum[22][13]_i_3_n_0\
    );
\sum[23][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => input_valid,
      I1 => col_index(4),
      I2 => \sum[7][13]_i_3_n_0\,
      I3 => col_index(5),
      I4 => reset,
      O => \sum[23][13]_i_1_n_0\
    );
\sum[23][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[7][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[23][13]_i_2_n_0\
    );
\sum[24][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => input_valid,
      I1 => col_index(4),
      I2 => \sum[24][13]_i_3_n_0\,
      I3 => col_index(5),
      I4 => reset,
      O => \sum[24][13]_i_1_n_0\
    );
\sum[24][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[0][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[24][13]_i_2_n_0\
    );
\sum[24][13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => col_index(2),
      I1 => \y_count_reg_n_0_[1]\,
      I2 => \sum[0][13]_i_5_n_0\,
      I3 => \y_count_reg_n_0_[2]\,
      I4 => col_index(3),
      O => \sum[24][13]_i_3_n_0\
    );
\sum[25][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => input_valid,
      I1 => col_index(4),
      I2 => \sum[25][13]_i_3_n_0\,
      I3 => col_index(5),
      I4 => reset,
      O => \sum[25][13]_i_1_n_0\
    );
\sum[25][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[1][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[25][13]_i_2_n_0\
    );
\sum[25][13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => col_index(2),
      I1 => \y_count_reg_n_0_[1]\,
      I2 => \sum[1][13]_i_5_n_0\,
      I3 => \y_count_reg_n_0_[2]\,
      I4 => col_index(3),
      O => \sum[25][13]_i_3_n_0\
    );
\sum[26][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => input_valid,
      I1 => col_index(4),
      I2 => \sum[26][13]_i_3_n_0\,
      I3 => col_index(5),
      I4 => reset,
      O => \sum[26][13]_i_1_n_0\
    );
\sum[26][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[2][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[26][13]_i_2_n_0\
    );
\sum[26][13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => col_index(2),
      I1 => \y_count_reg_n_0_[1]\,
      I2 => \sum[2][13]_i_5_n_0\,
      I3 => \y_count_reg_n_0_[2]\,
      I4 => col_index(3),
      O => \sum[26][13]_i_3_n_0\
    );
\sum[27][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => input_valid,
      I1 => col_index(4),
      I2 => \sum[11][13]_i_3_n_0\,
      I3 => col_index(5),
      I4 => reset,
      O => \sum[27][13]_i_1_n_0\
    );
\sum[27][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[3][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[27][13]_i_2_n_0\
    );
\sum[28][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => input_valid,
      I1 => col_index(4),
      I2 => \sum[28][13]_i_3_n_0\,
      I3 => col_index(5),
      I4 => reset,
      O => \sum[28][13]_i_1_n_0\
    );
\sum[28][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[4][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[28][13]_i_2_n_0\
    );
\sum[28][13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => col_index(2),
      I1 => \y_count_reg_n_0_[1]\,
      I2 => \sum[0][13]_i_5_n_0\,
      I3 => \y_count_reg_n_0_[2]\,
      I4 => col_index(3),
      O => \sum[28][13]_i_3_n_0\
    );
\sum[29][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => input_valid,
      I1 => col_index(4),
      I2 => \sum[29][13]_i_3_n_0\,
      I3 => col_index(5),
      I4 => reset,
      O => \sum[29][13]_i_1_n_0\
    );
\sum[29][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[5][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[29][13]_i_2_n_0\
    );
\sum[29][13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => col_index(2),
      I1 => \y_count_reg_n_0_[1]\,
      I2 => \sum[1][13]_i_5_n_0\,
      I3 => \y_count_reg_n_0_[2]\,
      I4 => col_index(3),
      O => \sum[29][13]_i_3_n_0\
    );
\sum[2][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => input_valid,
      I1 => \sum[2][13]_i_3_n_0\,
      I2 => col_index(5),
      I3 => reset,
      O => \sum[2][13]_i_1_n_0\
    );
\sum[2][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[2][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[2][13]_i_2_n_0\
    );
\sum[2][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => col_index(3),
      I1 => \y_count_reg_n_0_[2]\,
      I2 => \sum[2][13]_i_5_n_0\,
      I3 => \y_count_reg_n_0_[1]\,
      I4 => col_index(2),
      I5 => col_index(4),
      O => \sum[2][13]_i_3_n_0\
    );
\sum[2][13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4440444"
    )
        port map (
      I0 => col_index(0),
      I1 => col_index(1),
      I2 => \y_count_reg_n_0_[2]\,
      I3 => \y_count_reg_n_0_[1]\,
      I4 => \sum[2][13]_i_6_n_0\,
      I5 => col_index(2),
      O => \sum[2][13]_i_4_n_0\
    );
\sum[2][13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => x_count(1),
      I1 => x_count(2),
      I2 => col_index(1),
      I3 => col_index(0),
      I4 => x_count(0),
      I5 => \y_count_reg_n_0_[0]\,
      O => \sum[2][13]_i_5_n_0\
    );
\sum[2][13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF0000"
    )
        port map (
      I0 => x_count(2),
      I1 => x_count(0),
      I2 => x_count(1),
      I3 => \y_count_reg_n_0_[0]\,
      I4 => col_index(1),
      I5 => col_index(0),
      O => \sum[2][13]_i_6_n_0\
    );
\sum[30][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => input_valid,
      I1 => col_index(4),
      I2 => \sum[30][13]_i_3_n_0\,
      I3 => col_index(5),
      I4 => reset,
      O => \sum[30][13]_i_1_n_0\
    );
\sum[30][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[6][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[30][13]_i_2_n_0\
    );
\sum[30][13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => col_index(2),
      I1 => \y_count_reg_n_0_[1]\,
      I2 => \sum[2][13]_i_5_n_0\,
      I3 => \y_count_reg_n_0_[2]\,
      I4 => col_index(3),
      O => \sum[30][13]_i_3_n_0\
    );
\sum[31][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => input_valid,
      I1 => col_index(4),
      I2 => \sum[15][13]_i_3_n_0\,
      I3 => col_index(5),
      I4 => reset,
      O => \sum[31][13]_i_1_n_0\
    );
\sum[31][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[7][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[31][13]_i_2_n_0\
    );
\sum[32][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => input_valid,
      I1 => \sum[0][13]_i_3_n_0\,
      I2 => col_index(5),
      I3 => reset,
      O => \sum[32][13]_i_1_n_0\
    );
\sum[32][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[0][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[32][13]_i_2_n_0\
    );
\sum[33][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => input_valid,
      I1 => \sum[1][13]_i_3_n_0\,
      I2 => col_index(5),
      I3 => reset,
      O => \sum[33][13]_i_1_n_0\
    );
\sum[33][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[1][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[33][13]_i_2_n_0\
    );
\sum[34][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => input_valid,
      I1 => \sum[2][13]_i_3_n_0\,
      I2 => col_index(5),
      I3 => reset,
      O => \sum[34][13]_i_1_n_0\
    );
\sum[34][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[2][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[34][13]_i_2_n_0\
    );
\sum[35][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => input_valid,
      I1 => col_index(4),
      I2 => \sum[3][13]_i_3_n_0\,
      I3 => col_index(5),
      I4 => reset,
      O => \sum[35][13]_i_1_n_0\
    );
\sum[35][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[3][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[35][13]_i_2_n_0\
    );
\sum[36][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => input_valid,
      I1 => \sum[4][13]_i_3_n_0\,
      I2 => col_index(5),
      I3 => reset,
      O => \sum[36][13]_i_1_n_0\
    );
\sum[36][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[4][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[36][13]_i_2_n_0\
    );
\sum[37][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => input_valid,
      I1 => \sum[5][13]_i_3_n_0\,
      I2 => col_index(5),
      I3 => reset,
      O => \sum[37][13]_i_1_n_0\
    );
\sum[37][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[5][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[37][13]_i_2_n_0\
    );
\sum[38][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => input_valid,
      I1 => \sum[6][13]_i_3_n_0\,
      I2 => col_index(5),
      I3 => reset,
      O => \sum[38][13]_i_1_n_0\
    );
\sum[38][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[6][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[38][13]_i_2_n_0\
    );
\sum[39][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => input_valid,
      I1 => col_index(4),
      I2 => \sum[7][13]_i_3_n_0\,
      I3 => col_index(5),
      I4 => reset,
      O => \sum[39][13]_i_1_n_0\
    );
\sum[39][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[7][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[39][13]_i_2_n_0\
    );
\sum[3][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0020"
    )
        port map (
      I0 => input_valid,
      I1 => col_index(4),
      I2 => \sum[3][13]_i_3_n_0\,
      I3 => col_index(5),
      I4 => reset,
      O => \sum[3][13]_i_1_n_0\
    );
\sum[3][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[3][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[3][13]_i_2_n_0\
    );
\sum[3][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => col_index(2),
      I1 => \y_count_reg_n_0_[1]\,
      I2 => \y_count[2]_i_3_n_0\,
      I3 => \y_count_reg_n_0_[0]\,
      I4 => \y_count_reg_n_0_[2]\,
      I5 => col_index(3),
      O => \sum[3][13]_i_3_n_0\
    );
\sum[3][13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8880888"
    )
        port map (
      I0 => col_index(1),
      I1 => col_index(0),
      I2 => \y_count_reg_n_0_[2]\,
      I3 => \y_count_reg_n_0_[1]\,
      I4 => \sum[3][13]_i_5_n_0\,
      I5 => col_index(2),
      O => \sum[3][13]_i_4_n_0\
    );
\sum[3][13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000000000000"
    )
        port map (
      I0 => x_count(2),
      I1 => x_count(0),
      I2 => x_count(1),
      I3 => \y_count_reg_n_0_[0]\,
      I4 => col_index(0),
      I5 => col_index(1),
      O => \sum[3][13]_i_5_n_0\
    );
\sum[40][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => input_valid,
      I1 => \sum[8][13]_i_3_n_0\,
      I2 => col_index(5),
      I3 => reset,
      O => \sum[40][13]_i_1_n_0\
    );
\sum[40][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[0][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[40][13]_i_2_n_0\
    );
\sum[41][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => input_valid,
      I1 => \sum[9][13]_i_3_n_0\,
      I2 => col_index(5),
      I3 => reset,
      O => \sum[41][13]_i_1_n_0\
    );
\sum[41][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[1][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[41][13]_i_2_n_0\
    );
\sum[42][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => input_valid,
      I1 => \sum[10][13]_i_3_n_0\,
      I2 => col_index(5),
      I3 => reset,
      O => \sum[42][13]_i_1_n_0\
    );
\sum[42][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[2][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[42][13]_i_2_n_0\
    );
\sum[43][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => input_valid,
      I1 => col_index(4),
      I2 => \sum[11][13]_i_3_n_0\,
      I3 => col_index(5),
      I4 => reset,
      O => \sum[43][13]_i_1_n_0\
    );
\sum[43][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[3][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[43][13]_i_2_n_0\
    );
\sum[44][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => input_valid,
      I1 => \sum[12][13]_i_3_n_0\,
      I2 => col_index(5),
      I3 => reset,
      O => \sum[44][13]_i_1_n_0\
    );
\sum[44][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[4][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[44][13]_i_2_n_0\
    );
\sum[45][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => input_valid,
      I1 => \sum[13][13]_i_3_n_0\,
      I2 => col_index(5),
      I3 => reset,
      O => \sum[45][13]_i_1_n_0\
    );
\sum[45][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[5][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[45][13]_i_2_n_0\
    );
\sum[46][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => input_valid,
      I1 => \sum[14][13]_i_3_n_0\,
      I2 => col_index(5),
      I3 => reset,
      O => \sum[46][13]_i_1_n_0\
    );
\sum[46][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[6][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[46][13]_i_2_n_0\
    );
\sum[47][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => input_valid,
      I1 => col_index(4),
      I2 => \sum[15][13]_i_3_n_0\,
      I3 => col_index(5),
      I4 => reset,
      O => \sum[47][13]_i_1_n_0\
    );
\sum[47][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[7][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[47][13]_i_2_n_0\
    );
\sum[4][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => input_valid,
      I1 => \sum[4][13]_i_3_n_0\,
      I2 => col_index(5),
      I3 => reset,
      O => \sum[4][13]_i_1_n_0\
    );
\sum[4][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[4][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[4][13]_i_2_n_0\
    );
\sum[4][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => col_index(3),
      I1 => \y_count_reg_n_0_[2]\,
      I2 => \sum[0][13]_i_5_n_0\,
      I3 => \y_count_reg_n_0_[1]\,
      I4 => col_index(2),
      I5 => col_index(4),
      O => \sum[4][13]_i_3_n_0\
    );
\sum[4][13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F111011100000000"
    )
        port map (
      I0 => col_index(1),
      I1 => col_index(0),
      I2 => \y_count_reg_n_0_[2]\,
      I3 => \y_count_reg_n_0_[1]\,
      I4 => \sum[0][13]_i_6_n_0\,
      I5 => col_index(2),
      O => \sum[4][13]_i_4_n_0\
    );
\sum[5][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => input_valid,
      I1 => \sum[5][13]_i_3_n_0\,
      I2 => col_index(5),
      I3 => reset,
      O => \sum[5][13]_i_1_n_0\
    );
\sum[5][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[5][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[5][13]_i_2_n_0\
    );
\sum[5][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => col_index(3),
      I1 => \y_count_reg_n_0_[2]\,
      I2 => \sum[1][13]_i_5_n_0\,
      I3 => \y_count_reg_n_0_[1]\,
      I4 => col_index(2),
      I5 => col_index(4),
      O => \sum[5][13]_i_3_n_0\
    );
\sum[5][13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444044400000000"
    )
        port map (
      I0 => col_index(1),
      I1 => col_index(0),
      I2 => \y_count_reg_n_0_[2]\,
      I3 => \y_count_reg_n_0_[1]\,
      I4 => \sum[1][13]_i_6_n_0\,
      I5 => col_index(2),
      O => \sum[5][13]_i_4_n_0\
    );
\sum[6][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => input_valid,
      I1 => \sum[6][13]_i_3_n_0\,
      I2 => col_index(5),
      I3 => reset,
      O => \sum[6][13]_i_1_n_0\
    );
\sum[6][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[6][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[6][13]_i_2_n_0\
    );
\sum[6][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => col_index(3),
      I1 => \y_count_reg_n_0_[2]\,
      I2 => \sum[2][13]_i_5_n_0\,
      I3 => \y_count_reg_n_0_[1]\,
      I4 => col_index(2),
      I5 => col_index(4),
      O => \sum[6][13]_i_3_n_0\
    );
\sum[6][13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444044400000000"
    )
        port map (
      I0 => col_index(0),
      I1 => col_index(1),
      I2 => \y_count_reg_n_0_[2]\,
      I3 => \y_count_reg_n_0_[1]\,
      I4 => \sum[2][13]_i_6_n_0\,
      I5 => col_index(2),
      O => \sum[6][13]_i_4_n_0\
    );
\sum[7][13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0020"
    )
        port map (
      I0 => input_valid,
      I1 => col_index(4),
      I2 => \sum[7][13]_i_3_n_0\,
      I3 => col_index(5),
      I4 => reset,
      O => \sum[7][13]_i_1_n_0\
    );
\sum[7][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[7][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[7][13]_i_2_n_0\
    );
\sum[7][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => col_index(2),
      I1 => \y_count_reg_n_0_[1]\,
      I2 => \y_count[2]_i_3_n_0\,
      I3 => \y_count_reg_n_0_[0]\,
      I4 => \y_count_reg_n_0_[2]\,
      I5 => col_index(3),
      O => \sum[7][13]_i_3_n_0\
    );
\sum[7][13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888088800000000"
    )
        port map (
      I0 => col_index(1),
      I1 => col_index(0),
      I2 => \y_count_reg_n_0_[2]\,
      I3 => \y_count_reg_n_0_[1]\,
      I4 => \sum[3][13]_i_5_n_0\,
      I5 => col_index(2),
      O => \sum[7][13]_i_4_n_0\
    );
\sum[8][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => input_valid,
      I1 => \sum[8][13]_i_3_n_0\,
      I2 => col_index(5),
      I3 => reset,
      O => \sum[8][13]_i_1_n_0\
    );
\sum[8][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[0][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[8][13]_i_2_n_0\
    );
\sum[8][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => col_index(3),
      I1 => \y_count_reg_n_0_[2]\,
      I2 => \sum[0][13]_i_5_n_0\,
      I3 => \y_count_reg_n_0_[1]\,
      I4 => col_index(2),
      I5 => col_index(4),
      O => \sum[8][13]_i_3_n_0\
    );
\sum[9][13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => input_valid,
      I1 => \sum[9][13]_i_3_n_0\,
      I2 => col_index(5),
      I3 => reset,
      O => \sum[9][13]_i_1_n_0\
    );
\sum[9][13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \sum[1][13]_i_4_n_0\,
      I3 => col_index(4),
      I4 => input_valid,
      O => \sum[9][13]_i_2_n_0\
    );
\sum[9][13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => col_index(3),
      I1 => \y_count_reg_n_0_[2]\,
      I2 => \sum[1][13]_i_5_n_0\,
      I3 => \y_count_reg_n_0_[1]\,
      I4 => col_index(2),
      I5 => col_index(4),
      O => \sum[9][13]_i_3_n_0\
    );
\sum_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[0][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[0]\(0),
      R => \sum[0][13]_i_1_n_0\
    );
\sum_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[0][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[0]\(10),
      R => \sum[0][13]_i_1_n_0\
    );
\sum_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[0][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[0]\(11),
      R => \sum[0][13]_i_1_n_0\
    );
\sum_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[0][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[0]\(12),
      R => \sum[0][13]_i_1_n_0\
    );
\sum_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[0][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[0]\(13),
      R => \sum[0][13]_i_1_n_0\
    );
\sum_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[0][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[0]\(1),
      R => \sum[0][13]_i_1_n_0\
    );
\sum_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[0][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[0]\(2),
      R => \sum[0][13]_i_1_n_0\
    );
\sum_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[0][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[0]\(3),
      R => \sum[0][13]_i_1_n_0\
    );
\sum_reg[0][3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_reg[0][3]_i_1_n_0\,
      CO(2) => \sum_reg[0][3]_i_1_n_1\,
      CO(1) => \sum_reg[0][3]_i_1_n_2\,
      CO(0) => \sum_reg[0][3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pixel_data_grayscale(3 downto 0),
      O(3) => \sum_reg[0][3]_i_1_n_4\,
      O(2) => \sum_reg[0][3]_i_1_n_5\,
      O(1) => \sum_reg[0][3]_i_1_n_6\,
      O(0) => \sum_reg[0][3]_i_1_n_7\,
      S(3) => \sum[0][3]_i_2_n_0\,
      S(2) => \sum[0][3]_i_3_n_0\,
      S(1) => \sum[0][3]_i_4_n_0\,
      S(0) => \sum[0][3]_i_5_n_0\
    );
\sum_reg[0][3]_i_10\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sum_reg[0][3]_i_26_n_0\,
      I1 => \sum_reg[0][3]_i_27_n_0\,
      O => \sum_reg[0][3]_i_10_n_0\,
      S => col_index(3)
    );
\sum_reg[0][3]_i_11\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sum_reg[0][3]_i_28_n_0\,
      I1 => \sum_reg[0][3]_i_29_n_0\,
      O => \sum_reg[0][3]_i_11_n_0\,
      S => col_index(3)
    );
\sum_reg[0][3]_i_12\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sum_reg[0][3]_i_30_n_0\,
      I1 => \sum_reg[0][3]_i_31_n_0\,
      O => \sum_reg[0][3]_i_12_n_0\,
      S => col_index(3)
    );
\sum_reg[0][3]_i_13\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sum_reg[0][3]_i_32_n_0\,
      I1 => \sum_reg[0][3]_i_33_n_0\,
      O => \sum_reg[0][3]_i_13_n_0\,
      S => col_index(3)
    );
\sum_reg[0][3]_i_14\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sum_reg[0][3]_i_34_n_0\,
      I1 => \sum_reg[0][3]_i_35_n_0\,
      O => \sum_reg[0][3]_i_14_n_0\,
      S => col_index(3)
    );
\sum_reg[0][3]_i_15\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sum_reg[0][3]_i_36_n_0\,
      I1 => \sum_reg[0][3]_i_37_n_0\,
      O => \sum_reg[0][3]_i_15_n_0\,
      S => col_index(3)
    );
\sum_reg[0][3]_i_16\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sum_reg[0][3]_i_38_n_0\,
      I1 => \sum_reg[0][3]_i_39_n_0\,
      O => \sum_reg[0][3]_i_16_n_0\,
      S => col_index(3)
    );
\sum_reg[0][3]_i_17\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sum_reg[0][3]_i_40_n_0\,
      I1 => \sum_reg[0][3]_i_41_n_0\,
      O => \sum_reg[0][3]_i_17_n_0\,
      S => col_index(3)
    );
\sum_reg[0][3]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sum[0][3]_i_42_n_0\,
      I1 => \sum[0][3]_i_43_n_0\,
      O => \sum_reg[0][3]_i_18_n_0\,
      S => col_index(2)
    );
\sum_reg[0][3]_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sum[0][3]_i_44_n_0\,
      I1 => \sum[0][3]_i_45_n_0\,
      O => \sum_reg[0][3]_i_19_n_0\,
      S => col_index(2)
    );
\sum_reg[0][3]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sum[0][3]_i_46_n_0\,
      I1 => \sum[0][3]_i_47_n_0\,
      O => \sum_reg[0][3]_i_20_n_0\,
      S => col_index(2)
    );
\sum_reg[0][3]_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sum[0][3]_i_48_n_0\,
      I1 => \sum[0][3]_i_49_n_0\,
      O => \sum_reg[0][3]_i_21_n_0\,
      S => col_index(2)
    );
\sum_reg[0][3]_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sum[0][3]_i_50_n_0\,
      I1 => \sum[0][3]_i_51_n_0\,
      O => \sum_reg[0][3]_i_22_n_0\,
      S => col_index(2)
    );
\sum_reg[0][3]_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sum[0][3]_i_52_n_0\,
      I1 => \sum[0][3]_i_53_n_0\,
      O => \sum_reg[0][3]_i_23_n_0\,
      S => col_index(2)
    );
\sum_reg[0][3]_i_24\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sum[0][3]_i_54_n_0\,
      I1 => \sum[0][3]_i_55_n_0\,
      O => \sum_reg[0][3]_i_24_n_0\,
      S => col_index(2)
    );
\sum_reg[0][3]_i_25\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sum[0][3]_i_56_n_0\,
      I1 => \sum[0][3]_i_57_n_0\,
      O => \sum_reg[0][3]_i_25_n_0\,
      S => col_index(2)
    );
\sum_reg[0][3]_i_26\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sum[0][3]_i_58_n_0\,
      I1 => \sum[0][3]_i_59_n_0\,
      O => \sum_reg[0][3]_i_26_n_0\,
      S => col_index(2)
    );
\sum_reg[0][3]_i_27\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sum[0][3]_i_60_n_0\,
      I1 => \sum[0][3]_i_61_n_0\,
      O => \sum_reg[0][3]_i_27_n_0\,
      S => col_index(2)
    );
\sum_reg[0][3]_i_28\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sum[0][3]_i_62_n_0\,
      I1 => \sum[0][3]_i_63_n_0\,
      O => \sum_reg[0][3]_i_28_n_0\,
      S => col_index(2)
    );
\sum_reg[0][3]_i_29\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sum[0][3]_i_64_n_0\,
      I1 => \sum[0][3]_i_65_n_0\,
      O => \sum_reg[0][3]_i_29_n_0\,
      S => col_index(2)
    );
\sum_reg[0][3]_i_30\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sum[0][3]_i_66_n_0\,
      I1 => \sum[0][3]_i_67_n_0\,
      O => \sum_reg[0][3]_i_30_n_0\,
      S => col_index(2)
    );
\sum_reg[0][3]_i_31\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sum[0][3]_i_68_n_0\,
      I1 => \sum[0][3]_i_69_n_0\,
      O => \sum_reg[0][3]_i_31_n_0\,
      S => col_index(2)
    );
\sum_reg[0][3]_i_32\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sum[0][3]_i_70_n_0\,
      I1 => \sum[0][3]_i_71_n_0\,
      O => \sum_reg[0][3]_i_32_n_0\,
      S => col_index(2)
    );
\sum_reg[0][3]_i_33\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sum[0][3]_i_72_n_0\,
      I1 => \sum[0][3]_i_73_n_0\,
      O => \sum_reg[0][3]_i_33_n_0\,
      S => col_index(2)
    );
\sum_reg[0][3]_i_34\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sum[0][3]_i_74_n_0\,
      I1 => \sum[0][3]_i_75_n_0\,
      O => \sum_reg[0][3]_i_34_n_0\,
      S => col_index(2)
    );
\sum_reg[0][3]_i_35\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sum[0][3]_i_76_n_0\,
      I1 => \sum[0][3]_i_77_n_0\,
      O => \sum_reg[0][3]_i_35_n_0\,
      S => col_index(2)
    );
\sum_reg[0][3]_i_36\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sum[0][3]_i_78_n_0\,
      I1 => \sum[0][3]_i_79_n_0\,
      O => \sum_reg[0][3]_i_36_n_0\,
      S => col_index(2)
    );
\sum_reg[0][3]_i_37\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sum[0][3]_i_80_n_0\,
      I1 => \sum[0][3]_i_81_n_0\,
      O => \sum_reg[0][3]_i_37_n_0\,
      S => col_index(2)
    );
\sum_reg[0][3]_i_38\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sum[0][3]_i_82_n_0\,
      I1 => \sum[0][3]_i_83_n_0\,
      O => \sum_reg[0][3]_i_38_n_0\,
      S => col_index(2)
    );
\sum_reg[0][3]_i_39\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sum[0][3]_i_84_n_0\,
      I1 => \sum[0][3]_i_85_n_0\,
      O => \sum_reg[0][3]_i_39_n_0\,
      S => col_index(2)
    );
\sum_reg[0][3]_i_40\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sum[0][3]_i_86_n_0\,
      I1 => \sum[0][3]_i_87_n_0\,
      O => \sum_reg[0][3]_i_40_n_0\,
      S => col_index(2)
    );
\sum_reg[0][3]_i_41\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sum[0][3]_i_88_n_0\,
      I1 => \sum[0][3]_i_89_n_0\,
      O => \sum_reg[0][3]_i_41_n_0\,
      S => col_index(2)
    );
\sum_reg[0][3]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sum_reg[0][3]_i_18_n_0\,
      I1 => \sum_reg[0][3]_i_19_n_0\,
      O => \sum_reg[0][3]_i_6_n_0\,
      S => col_index(3)
    );
\sum_reg[0][3]_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sum_reg[0][3]_i_20_n_0\,
      I1 => \sum_reg[0][3]_i_21_n_0\,
      O => \sum_reg[0][3]_i_7_n_0\,
      S => col_index(3)
    );
\sum_reg[0][3]_i_8\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sum_reg[0][3]_i_22_n_0\,
      I1 => \sum_reg[0][3]_i_23_n_0\,
      O => \sum_reg[0][3]_i_8_n_0\,
      S => col_index(3)
    );
\sum_reg[0][3]_i_9\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sum_reg[0][3]_i_24_n_0\,
      I1 => \sum_reg[0][3]_i_25_n_0\,
      O => \sum_reg[0][3]_i_9_n_0\,
      S => col_index(3)
    );
\sum_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[0][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[0]\(4),
      R => \sum[0][13]_i_1_n_0\
    );
\sum_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[0][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[0]\(5),
      R => \sum[0][13]_i_1_n_0\
    );
\sum_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[0][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[0]\(6),
      R => \sum[0][13]_i_1_n_0\
    );
\sum_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[0][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[0]\(7),
      R => \sum[0][13]_i_1_n_0\
    );
\sum_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[0][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[0]\(8),
      R => \sum[0][13]_i_1_n_0\
    );
\sum_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[0][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[0]\(9),
      R => \sum[0][13]_i_1_n_0\
    );
\sum_reg[10][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[10][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[10]\(0),
      R => \sum[10][13]_i_1_n_0\
    );
\sum_reg[10][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[10][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[10]\(10),
      R => \sum[10][13]_i_1_n_0\
    );
\sum_reg[10][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[10][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[10]\(11),
      R => \sum[10][13]_i_1_n_0\
    );
\sum_reg[10][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[10][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[10]\(12),
      R => \sum[10][13]_i_1_n_0\
    );
\sum_reg[10][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[10][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[10]\(13),
      R => \sum[10][13]_i_1_n_0\
    );
\sum_reg[10][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[10][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[10]\(1),
      R => \sum[10][13]_i_1_n_0\
    );
\sum_reg[10][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[10][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[10]\(2),
      R => \sum[10][13]_i_1_n_0\
    );
\sum_reg[10][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[10][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[10]\(3),
      R => \sum[10][13]_i_1_n_0\
    );
\sum_reg[10][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[10][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[10]\(4),
      R => \sum[10][13]_i_1_n_0\
    );
\sum_reg[10][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[10][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[10]\(5),
      R => \sum[10][13]_i_1_n_0\
    );
\sum_reg[10][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[10][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[10]\(6),
      R => \sum[10][13]_i_1_n_0\
    );
\sum_reg[10][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[10][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[10]\(7),
      R => \sum[10][13]_i_1_n_0\
    );
\sum_reg[10][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[10][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[10]\(8),
      R => \sum[10][13]_i_1_n_0\
    );
\sum_reg[10][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[10][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[10]\(9),
      R => \sum[10][13]_i_1_n_0\
    );
\sum_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[11][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[11]\(0),
      R => \sum[11][13]_i_1_n_0\
    );
\sum_reg[11][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[11][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[11]\(10),
      R => \sum[11][13]_i_1_n_0\
    );
\sum_reg[11][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[11][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[11]\(11),
      R => \sum[11][13]_i_1_n_0\
    );
\sum_reg[11][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[11][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[11]\(12),
      R => \sum[11][13]_i_1_n_0\
    );
\sum_reg[11][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[11][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[11]\(13),
      R => \sum[11][13]_i_1_n_0\
    );
\sum_reg[11][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[11][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[11]\(1),
      R => \sum[11][13]_i_1_n_0\
    );
\sum_reg[11][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[11][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[11]\(2),
      R => \sum[11][13]_i_1_n_0\
    );
\sum_reg[11][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[11][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[11]\(3),
      R => \sum[11][13]_i_1_n_0\
    );
\sum_reg[11][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[11][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[11]\(4),
      R => \sum[11][13]_i_1_n_0\
    );
\sum_reg[11][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[11][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[11]\(5),
      R => \sum[11][13]_i_1_n_0\
    );
\sum_reg[11][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[11][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[11]\(6),
      R => \sum[11][13]_i_1_n_0\
    );
\sum_reg[11][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[11][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[11]\(7),
      R => \sum[11][13]_i_1_n_0\
    );
\sum_reg[11][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[11][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[11]\(8),
      R => \sum[11][13]_i_1_n_0\
    );
\sum_reg[11][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[11][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[11]\(9),
      R => \sum[11][13]_i_1_n_0\
    );
\sum_reg[12][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[12][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[12]\(0),
      R => \sum[12][13]_i_1_n_0\
    );
\sum_reg[12][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[12][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[12]\(10),
      R => \sum[12][13]_i_1_n_0\
    );
\sum_reg[12][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[12][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[12]\(11),
      R => \sum[12][13]_i_1_n_0\
    );
\sum_reg[12][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[12][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[12]\(12),
      R => \sum[12][13]_i_1_n_0\
    );
\sum_reg[12][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[12][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[12]\(13),
      R => \sum[12][13]_i_1_n_0\
    );
\sum_reg[12][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[12][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[12]\(1),
      R => \sum[12][13]_i_1_n_0\
    );
\sum_reg[12][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[12][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[12]\(2),
      R => \sum[12][13]_i_1_n_0\
    );
\sum_reg[12][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[12][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[12]\(3),
      R => \sum[12][13]_i_1_n_0\
    );
\sum_reg[12][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[12][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[12]\(4),
      R => \sum[12][13]_i_1_n_0\
    );
\sum_reg[12][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[12][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[12]\(5),
      R => \sum[12][13]_i_1_n_0\
    );
\sum_reg[12][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[12][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[12]\(6),
      R => \sum[12][13]_i_1_n_0\
    );
\sum_reg[12][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[12][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[12]\(7),
      R => \sum[12][13]_i_1_n_0\
    );
\sum_reg[12][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[12][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[12]\(8),
      R => \sum[12][13]_i_1_n_0\
    );
\sum_reg[12][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[12][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[12]\(9),
      R => \sum[12][13]_i_1_n_0\
    );
\sum_reg[13][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[13][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[13]\(0),
      R => \sum[13][13]_i_1_n_0\
    );
\sum_reg[13][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[13][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[13]\(10),
      R => \sum[13][13]_i_1_n_0\
    );
\sum_reg[13][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[13][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[13]\(11),
      R => \sum[13][13]_i_1_n_0\
    );
\sum_reg[13][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[13][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[13]\(12),
      R => \sum[13][13]_i_1_n_0\
    );
\sum_reg[13][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[13][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[13]\(13),
      R => \sum[13][13]_i_1_n_0\
    );
\sum_reg[13][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[13][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[13]\(1),
      R => \sum[13][13]_i_1_n_0\
    );
\sum_reg[13][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[13][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[13]\(2),
      R => \sum[13][13]_i_1_n_0\
    );
\sum_reg[13][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[13][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[13]\(3),
      R => \sum[13][13]_i_1_n_0\
    );
\sum_reg[13][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[13][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[13]\(4),
      R => \sum[13][13]_i_1_n_0\
    );
\sum_reg[13][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[13][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[13]\(5),
      R => \sum[13][13]_i_1_n_0\
    );
\sum_reg[13][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[13][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[13]\(6),
      R => \sum[13][13]_i_1_n_0\
    );
\sum_reg[13][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[13][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[13]\(7),
      R => \sum[13][13]_i_1_n_0\
    );
\sum_reg[13][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[13][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[13]\(8),
      R => \sum[13][13]_i_1_n_0\
    );
\sum_reg[13][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[13][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[13]\(9),
      R => \sum[13][13]_i_1_n_0\
    );
\sum_reg[14][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[14][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[14]\(0),
      R => \sum[14][13]_i_1_n_0\
    );
\sum_reg[14][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[14][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[14]\(10),
      R => \sum[14][13]_i_1_n_0\
    );
\sum_reg[14][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[14][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[14]\(11),
      R => \sum[14][13]_i_1_n_0\
    );
\sum_reg[14][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[14][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[14]\(12),
      R => \sum[14][13]_i_1_n_0\
    );
\sum_reg[14][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[14][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[14]\(13),
      R => \sum[14][13]_i_1_n_0\
    );
\sum_reg[14][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[14][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[14]\(1),
      R => \sum[14][13]_i_1_n_0\
    );
\sum_reg[14][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[14][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[14]\(2),
      R => \sum[14][13]_i_1_n_0\
    );
\sum_reg[14][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[14][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[14]\(3),
      R => \sum[14][13]_i_1_n_0\
    );
\sum_reg[14][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[14][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[14]\(4),
      R => \sum[14][13]_i_1_n_0\
    );
\sum_reg[14][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[14][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[14]\(5),
      R => \sum[14][13]_i_1_n_0\
    );
\sum_reg[14][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[14][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[14]\(6),
      R => \sum[14][13]_i_1_n_0\
    );
\sum_reg[14][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[14][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[14]\(7),
      R => \sum[14][13]_i_1_n_0\
    );
\sum_reg[14][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[14][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[14]\(8),
      R => \sum[14][13]_i_1_n_0\
    );
\sum_reg[14][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[14][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[14]\(9),
      R => \sum[14][13]_i_1_n_0\
    );
\sum_reg[15][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[15][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[15]\(0),
      R => \sum[15][13]_i_1_n_0\
    );
\sum_reg[15][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[15][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[15]\(10),
      R => \sum[15][13]_i_1_n_0\
    );
\sum_reg[15][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[15][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[15]\(11),
      R => \sum[15][13]_i_1_n_0\
    );
\sum_reg[15][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[15][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[15]\(12),
      R => \sum[15][13]_i_1_n_0\
    );
\sum_reg[15][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[15][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[15]\(13),
      R => \sum[15][13]_i_1_n_0\
    );
\sum_reg[15][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[15][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[15]\(1),
      R => \sum[15][13]_i_1_n_0\
    );
\sum_reg[15][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[15][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[15]\(2),
      R => \sum[15][13]_i_1_n_0\
    );
\sum_reg[15][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[15][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[15]\(3),
      R => \sum[15][13]_i_1_n_0\
    );
\sum_reg[15][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[15][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[15]\(4),
      R => \sum[15][13]_i_1_n_0\
    );
\sum_reg[15][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[15][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[15]\(5),
      R => \sum[15][13]_i_1_n_0\
    );
\sum_reg[15][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[15][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[15]\(6),
      R => \sum[15][13]_i_1_n_0\
    );
\sum_reg[15][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[15][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[15]\(7),
      R => \sum[15][13]_i_1_n_0\
    );
\sum_reg[15][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[15][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[15]\(8),
      R => \sum[15][13]_i_1_n_0\
    );
\sum_reg[15][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[15][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[15]\(9),
      R => \sum[15][13]_i_1_n_0\
    );
\sum_reg[16][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[16][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[16]\(0),
      R => \sum[16][13]_i_1_n_0\
    );
\sum_reg[16][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[16][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[16]\(10),
      R => \sum[16][13]_i_1_n_0\
    );
\sum_reg[16][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[16][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[16]\(11),
      R => \sum[16][13]_i_1_n_0\
    );
\sum_reg[16][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[16][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[16]\(12),
      R => \sum[16][13]_i_1_n_0\
    );
\sum_reg[16][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[16][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[16]\(13),
      R => \sum[16][13]_i_1_n_0\
    );
\sum_reg[16][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[16][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[16]\(1),
      R => \sum[16][13]_i_1_n_0\
    );
\sum_reg[16][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[16][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[16]\(2),
      R => \sum[16][13]_i_1_n_0\
    );
\sum_reg[16][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[16][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[16]\(3),
      R => \sum[16][13]_i_1_n_0\
    );
\sum_reg[16][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[16][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[16]\(4),
      R => \sum[16][13]_i_1_n_0\
    );
\sum_reg[16][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[16][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[16]\(5),
      R => \sum[16][13]_i_1_n_0\
    );
\sum_reg[16][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[16][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[16]\(6),
      R => \sum[16][13]_i_1_n_0\
    );
\sum_reg[16][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[16][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[16]\(7),
      R => \sum[16][13]_i_1_n_0\
    );
\sum_reg[16][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[16][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[16]\(8),
      R => \sum[16][13]_i_1_n_0\
    );
\sum_reg[16][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[16][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[16]\(9),
      R => \sum[16][13]_i_1_n_0\
    );
\sum_reg[17][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[17][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[17]\(0),
      R => \sum[17][13]_i_1_n_0\
    );
\sum_reg[17][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[17][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[17]\(10),
      R => \sum[17][13]_i_1_n_0\
    );
\sum_reg[17][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[17][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[17]\(11),
      R => \sum[17][13]_i_1_n_0\
    );
\sum_reg[17][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[17][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[17]\(12),
      R => \sum[17][13]_i_1_n_0\
    );
\sum_reg[17][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[17][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[17]\(13),
      R => \sum[17][13]_i_1_n_0\
    );
\sum_reg[17][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[17][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[17]\(1),
      R => \sum[17][13]_i_1_n_0\
    );
\sum_reg[17][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[17][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[17]\(2),
      R => \sum[17][13]_i_1_n_0\
    );
\sum_reg[17][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[17][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[17]\(3),
      R => \sum[17][13]_i_1_n_0\
    );
\sum_reg[17][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[17][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[17]\(4),
      R => \sum[17][13]_i_1_n_0\
    );
\sum_reg[17][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[17][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[17]\(5),
      R => \sum[17][13]_i_1_n_0\
    );
\sum_reg[17][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[17][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[17]\(6),
      R => \sum[17][13]_i_1_n_0\
    );
\sum_reg[17][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[17][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[17]\(7),
      R => \sum[17][13]_i_1_n_0\
    );
\sum_reg[17][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[17][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[17]\(8),
      R => \sum[17][13]_i_1_n_0\
    );
\sum_reg[17][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[17][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[17]\(9),
      R => \sum[17][13]_i_1_n_0\
    );
\sum_reg[18][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[18][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[18]\(0),
      R => \sum[18][13]_i_1_n_0\
    );
\sum_reg[18][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[18][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[18]\(10),
      R => \sum[18][13]_i_1_n_0\
    );
\sum_reg[18][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[18][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[18]\(11),
      R => \sum[18][13]_i_1_n_0\
    );
\sum_reg[18][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[18][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[18]\(12),
      R => \sum[18][13]_i_1_n_0\
    );
\sum_reg[18][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[18][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[18]\(13),
      R => \sum[18][13]_i_1_n_0\
    );
\sum_reg[18][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[18][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[18]\(1),
      R => \sum[18][13]_i_1_n_0\
    );
\sum_reg[18][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[18][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[18]\(2),
      R => \sum[18][13]_i_1_n_0\
    );
\sum_reg[18][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[18][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[18]\(3),
      R => \sum[18][13]_i_1_n_0\
    );
\sum_reg[18][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[18][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[18]\(4),
      R => \sum[18][13]_i_1_n_0\
    );
\sum_reg[18][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[18][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[18]\(5),
      R => \sum[18][13]_i_1_n_0\
    );
\sum_reg[18][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[18][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[18]\(6),
      R => \sum[18][13]_i_1_n_0\
    );
\sum_reg[18][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[18][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[18]\(7),
      R => \sum[18][13]_i_1_n_0\
    );
\sum_reg[18][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[18][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[18]\(8),
      R => \sum[18][13]_i_1_n_0\
    );
\sum_reg[18][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[18][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[18]\(9),
      R => \sum[18][13]_i_1_n_0\
    );
\sum_reg[19][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[19][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[19]\(0),
      R => \sum[19][13]_i_1_n_0\
    );
\sum_reg[19][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[19][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[19]\(10),
      R => \sum[19][13]_i_1_n_0\
    );
\sum_reg[19][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[19][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[19]\(11),
      R => \sum[19][13]_i_1_n_0\
    );
\sum_reg[19][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[19][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[19]\(12),
      R => \sum[19][13]_i_1_n_0\
    );
\sum_reg[19][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[19][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[19]\(13),
      R => \sum[19][13]_i_1_n_0\
    );
\sum_reg[19][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[19][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[19]\(1),
      R => \sum[19][13]_i_1_n_0\
    );
\sum_reg[19][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[19][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[19]\(2),
      R => \sum[19][13]_i_1_n_0\
    );
\sum_reg[19][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[19][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[19]\(3),
      R => \sum[19][13]_i_1_n_0\
    );
\sum_reg[19][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[19][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[19]\(4),
      R => \sum[19][13]_i_1_n_0\
    );
\sum_reg[19][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[19][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[19]\(5),
      R => \sum[19][13]_i_1_n_0\
    );
\sum_reg[19][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[19][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[19]\(6),
      R => \sum[19][13]_i_1_n_0\
    );
\sum_reg[19][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[19][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[19]\(7),
      R => \sum[19][13]_i_1_n_0\
    );
\sum_reg[19][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[19][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[19]\(8),
      R => \sum[19][13]_i_1_n_0\
    );
\sum_reg[19][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[19][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[19]\(9),
      R => \sum[19][13]_i_1_n_0\
    );
\sum_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[1][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[1]\(0),
      R => \sum[1][13]_i_1_n_0\
    );
\sum_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[1][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[1]\(10),
      R => \sum[1][13]_i_1_n_0\
    );
\sum_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[1][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[1]\(11),
      R => \sum[1][13]_i_1_n_0\
    );
\sum_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[1][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[1]\(12),
      R => \sum[1][13]_i_1_n_0\
    );
\sum_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[1][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[1]\(13),
      R => \sum[1][13]_i_1_n_0\
    );
\sum_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[1][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[1]\(1),
      R => \sum[1][13]_i_1_n_0\
    );
\sum_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[1][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[1]\(2),
      R => \sum[1][13]_i_1_n_0\
    );
\sum_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[1][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[1]\(3),
      R => \sum[1][13]_i_1_n_0\
    );
\sum_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[1][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[1]\(4),
      R => \sum[1][13]_i_1_n_0\
    );
\sum_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[1][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[1]\(5),
      R => \sum[1][13]_i_1_n_0\
    );
\sum_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[1][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[1]\(6),
      R => \sum[1][13]_i_1_n_0\
    );
\sum_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[1][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[1]\(7),
      R => \sum[1][13]_i_1_n_0\
    );
\sum_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[1][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[1]\(8),
      R => \sum[1][13]_i_1_n_0\
    );
\sum_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[1][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[1]\(9),
      R => \sum[1][13]_i_1_n_0\
    );
\sum_reg[20][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[20][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[20]\(0),
      R => \sum[20][13]_i_1_n_0\
    );
\sum_reg[20][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[20][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[20]\(10),
      R => \sum[20][13]_i_1_n_0\
    );
\sum_reg[20][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[20][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[20]\(11),
      R => \sum[20][13]_i_1_n_0\
    );
\sum_reg[20][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[20][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[20]\(12),
      R => \sum[20][13]_i_1_n_0\
    );
\sum_reg[20][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[20][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[20]\(13),
      R => \sum[20][13]_i_1_n_0\
    );
\sum_reg[20][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[20][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[20]\(1),
      R => \sum[20][13]_i_1_n_0\
    );
\sum_reg[20][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[20][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[20]\(2),
      R => \sum[20][13]_i_1_n_0\
    );
\sum_reg[20][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[20][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[20]\(3),
      R => \sum[20][13]_i_1_n_0\
    );
\sum_reg[20][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[20][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[20]\(4),
      R => \sum[20][13]_i_1_n_0\
    );
\sum_reg[20][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[20][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[20]\(5),
      R => \sum[20][13]_i_1_n_0\
    );
\sum_reg[20][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[20][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[20]\(6),
      R => \sum[20][13]_i_1_n_0\
    );
\sum_reg[20][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[20][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[20]\(7),
      R => \sum[20][13]_i_1_n_0\
    );
\sum_reg[20][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[20][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[20]\(8),
      R => \sum[20][13]_i_1_n_0\
    );
\sum_reg[20][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[20][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[20]\(9),
      R => \sum[20][13]_i_1_n_0\
    );
\sum_reg[21][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[21][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[21]\(0),
      R => \sum[21][13]_i_1_n_0\
    );
\sum_reg[21][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[21][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[21]\(10),
      R => \sum[21][13]_i_1_n_0\
    );
\sum_reg[21][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[21][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[21]\(11),
      R => \sum[21][13]_i_1_n_0\
    );
\sum_reg[21][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[21][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[21]\(12),
      R => \sum[21][13]_i_1_n_0\
    );
\sum_reg[21][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[21][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[21]\(13),
      R => \sum[21][13]_i_1_n_0\
    );
\sum_reg[21][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[21][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[21]\(1),
      R => \sum[21][13]_i_1_n_0\
    );
\sum_reg[21][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[21][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[21]\(2),
      R => \sum[21][13]_i_1_n_0\
    );
\sum_reg[21][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[21][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[21]\(3),
      R => \sum[21][13]_i_1_n_0\
    );
\sum_reg[21][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[21][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[21]\(4),
      R => \sum[21][13]_i_1_n_0\
    );
\sum_reg[21][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[21][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[21]\(5),
      R => \sum[21][13]_i_1_n_0\
    );
\sum_reg[21][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[21][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[21]\(6),
      R => \sum[21][13]_i_1_n_0\
    );
\sum_reg[21][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[21][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[21]\(7),
      R => \sum[21][13]_i_1_n_0\
    );
\sum_reg[21][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[21][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[21]\(8),
      R => \sum[21][13]_i_1_n_0\
    );
\sum_reg[21][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[21][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[21]\(9),
      R => \sum[21][13]_i_1_n_0\
    );
\sum_reg[22][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[22][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[22]\(0),
      R => \sum[22][13]_i_1_n_0\
    );
\sum_reg[22][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[22][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[22]\(10),
      R => \sum[22][13]_i_1_n_0\
    );
\sum_reg[22][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[22][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[22]\(11),
      R => \sum[22][13]_i_1_n_0\
    );
\sum_reg[22][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[22][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[22]\(12),
      R => \sum[22][13]_i_1_n_0\
    );
\sum_reg[22][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[22][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[22]\(13),
      R => \sum[22][13]_i_1_n_0\
    );
\sum_reg[22][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[22][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[22]\(1),
      R => \sum[22][13]_i_1_n_0\
    );
\sum_reg[22][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[22][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[22]\(2),
      R => \sum[22][13]_i_1_n_0\
    );
\sum_reg[22][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[22][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[22]\(3),
      R => \sum[22][13]_i_1_n_0\
    );
\sum_reg[22][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[22][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[22]\(4),
      R => \sum[22][13]_i_1_n_0\
    );
\sum_reg[22][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[22][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[22]\(5),
      R => \sum[22][13]_i_1_n_0\
    );
\sum_reg[22][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[22][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[22]\(6),
      R => \sum[22][13]_i_1_n_0\
    );
\sum_reg[22][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[22][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[22]\(7),
      R => \sum[22][13]_i_1_n_0\
    );
\sum_reg[22][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[22][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[22]\(8),
      R => \sum[22][13]_i_1_n_0\
    );
\sum_reg[22][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[22][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[22]\(9),
      R => \sum[22][13]_i_1_n_0\
    );
\sum_reg[23][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[23][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[23]\(0),
      R => \sum[23][13]_i_1_n_0\
    );
\sum_reg[23][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[23][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[23]\(10),
      R => \sum[23][13]_i_1_n_0\
    );
\sum_reg[23][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[23][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[23]\(11),
      R => \sum[23][13]_i_1_n_0\
    );
\sum_reg[23][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[23][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[23]\(12),
      R => \sum[23][13]_i_1_n_0\
    );
\sum_reg[23][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[23][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[23]\(13),
      R => \sum[23][13]_i_1_n_0\
    );
\sum_reg[23][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[23][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[23]\(1),
      R => \sum[23][13]_i_1_n_0\
    );
\sum_reg[23][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[23][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[23]\(2),
      R => \sum[23][13]_i_1_n_0\
    );
\sum_reg[23][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[23][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[23]\(3),
      R => \sum[23][13]_i_1_n_0\
    );
\sum_reg[23][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[23][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[23]\(4),
      R => \sum[23][13]_i_1_n_0\
    );
\sum_reg[23][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[23][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[23]\(5),
      R => \sum[23][13]_i_1_n_0\
    );
\sum_reg[23][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[23][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[23]\(6),
      R => \sum[23][13]_i_1_n_0\
    );
\sum_reg[23][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[23][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[23]\(7),
      R => \sum[23][13]_i_1_n_0\
    );
\sum_reg[23][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[23][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[23]\(8),
      R => \sum[23][13]_i_1_n_0\
    );
\sum_reg[23][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[23][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[23]\(9),
      R => \sum[23][13]_i_1_n_0\
    );
\sum_reg[24][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[24][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[24]\(0),
      R => \sum[24][13]_i_1_n_0\
    );
\sum_reg[24][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[24][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[24]\(10),
      R => \sum[24][13]_i_1_n_0\
    );
\sum_reg[24][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[24][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[24]\(11),
      R => \sum[24][13]_i_1_n_0\
    );
\sum_reg[24][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[24][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[24]\(12),
      R => \sum[24][13]_i_1_n_0\
    );
\sum_reg[24][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[24][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[24]\(13),
      R => \sum[24][13]_i_1_n_0\
    );
\sum_reg[24][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[24][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[24]\(1),
      R => \sum[24][13]_i_1_n_0\
    );
\sum_reg[24][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[24][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[24]\(2),
      R => \sum[24][13]_i_1_n_0\
    );
\sum_reg[24][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[24][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[24]\(3),
      R => \sum[24][13]_i_1_n_0\
    );
\sum_reg[24][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[24][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[24]\(4),
      R => \sum[24][13]_i_1_n_0\
    );
\sum_reg[24][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[24][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[24]\(5),
      R => \sum[24][13]_i_1_n_0\
    );
\sum_reg[24][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[24][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[24]\(6),
      R => \sum[24][13]_i_1_n_0\
    );
\sum_reg[24][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[24][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[24]\(7),
      R => \sum[24][13]_i_1_n_0\
    );
\sum_reg[24][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[24][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[24]\(8),
      R => \sum[24][13]_i_1_n_0\
    );
\sum_reg[24][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[24][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[24]\(9),
      R => \sum[24][13]_i_1_n_0\
    );
\sum_reg[25][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[25][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[25]\(0),
      R => \sum[25][13]_i_1_n_0\
    );
\sum_reg[25][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[25][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[25]\(10),
      R => \sum[25][13]_i_1_n_0\
    );
\sum_reg[25][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[25][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[25]\(11),
      R => \sum[25][13]_i_1_n_0\
    );
\sum_reg[25][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[25][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[25]\(12),
      R => \sum[25][13]_i_1_n_0\
    );
\sum_reg[25][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[25][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[25]\(13),
      R => \sum[25][13]_i_1_n_0\
    );
\sum_reg[25][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[25][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[25]\(1),
      R => \sum[25][13]_i_1_n_0\
    );
\sum_reg[25][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[25][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[25]\(2),
      R => \sum[25][13]_i_1_n_0\
    );
\sum_reg[25][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[25][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[25]\(3),
      R => \sum[25][13]_i_1_n_0\
    );
\sum_reg[25][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[25][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[25]\(4),
      R => \sum[25][13]_i_1_n_0\
    );
\sum_reg[25][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[25][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[25]\(5),
      R => \sum[25][13]_i_1_n_0\
    );
\sum_reg[25][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[25][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[25]\(6),
      R => \sum[25][13]_i_1_n_0\
    );
\sum_reg[25][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[25][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[25]\(7),
      R => \sum[25][13]_i_1_n_0\
    );
\sum_reg[25][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[25][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[25]\(8),
      R => \sum[25][13]_i_1_n_0\
    );
\sum_reg[25][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[25][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[25]\(9),
      R => \sum[25][13]_i_1_n_0\
    );
\sum_reg[26][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[26][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[26]\(0),
      R => \sum[26][13]_i_1_n_0\
    );
\sum_reg[26][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[26][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[26]\(10),
      R => \sum[26][13]_i_1_n_0\
    );
\sum_reg[26][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[26][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[26]\(11),
      R => \sum[26][13]_i_1_n_0\
    );
\sum_reg[26][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[26][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[26]\(12),
      R => \sum[26][13]_i_1_n_0\
    );
\sum_reg[26][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[26][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[26]\(13),
      R => \sum[26][13]_i_1_n_0\
    );
\sum_reg[26][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[26][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[26]\(1),
      R => \sum[26][13]_i_1_n_0\
    );
\sum_reg[26][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[26][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[26]\(2),
      R => \sum[26][13]_i_1_n_0\
    );
\sum_reg[26][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[26][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[26]\(3),
      R => \sum[26][13]_i_1_n_0\
    );
\sum_reg[26][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[26][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[26]\(4),
      R => \sum[26][13]_i_1_n_0\
    );
\sum_reg[26][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[26][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[26]\(5),
      R => \sum[26][13]_i_1_n_0\
    );
\sum_reg[26][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[26][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[26]\(6),
      R => \sum[26][13]_i_1_n_0\
    );
\sum_reg[26][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[26][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[26]\(7),
      R => \sum[26][13]_i_1_n_0\
    );
\sum_reg[26][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[26][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[26]\(8),
      R => \sum[26][13]_i_1_n_0\
    );
\sum_reg[26][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[26][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[26]\(9),
      R => \sum[26][13]_i_1_n_0\
    );
\sum_reg[27][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[27][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[27]\(0),
      R => \sum[27][13]_i_1_n_0\
    );
\sum_reg[27][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[27][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[27]\(10),
      R => \sum[27][13]_i_1_n_0\
    );
\sum_reg[27][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[27][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[27]\(11),
      R => \sum[27][13]_i_1_n_0\
    );
\sum_reg[27][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[27][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[27]\(12),
      R => \sum[27][13]_i_1_n_0\
    );
\sum_reg[27][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[27][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[27]\(13),
      R => \sum[27][13]_i_1_n_0\
    );
\sum_reg[27][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[27][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[27]\(1),
      R => \sum[27][13]_i_1_n_0\
    );
\sum_reg[27][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[27][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[27]\(2),
      R => \sum[27][13]_i_1_n_0\
    );
\sum_reg[27][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[27][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[27]\(3),
      R => \sum[27][13]_i_1_n_0\
    );
\sum_reg[27][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[27][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[27]\(4),
      R => \sum[27][13]_i_1_n_0\
    );
\sum_reg[27][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[27][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[27]\(5),
      R => \sum[27][13]_i_1_n_0\
    );
\sum_reg[27][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[27][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[27]\(6),
      R => \sum[27][13]_i_1_n_0\
    );
\sum_reg[27][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[27][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[27]\(7),
      R => \sum[27][13]_i_1_n_0\
    );
\sum_reg[27][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[27][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[27]\(8),
      R => \sum[27][13]_i_1_n_0\
    );
\sum_reg[27][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[27][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[27]\(9),
      R => \sum[27][13]_i_1_n_0\
    );
\sum_reg[28][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[28][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[28]\(0),
      R => \sum[28][13]_i_1_n_0\
    );
\sum_reg[28][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[28][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[28]\(10),
      R => \sum[28][13]_i_1_n_0\
    );
\sum_reg[28][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[28][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[28]\(11),
      R => \sum[28][13]_i_1_n_0\
    );
\sum_reg[28][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[28][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[28]\(12),
      R => \sum[28][13]_i_1_n_0\
    );
\sum_reg[28][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[28][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[28]\(13),
      R => \sum[28][13]_i_1_n_0\
    );
\sum_reg[28][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[28][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[28]\(1),
      R => \sum[28][13]_i_1_n_0\
    );
\sum_reg[28][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[28][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[28]\(2),
      R => \sum[28][13]_i_1_n_0\
    );
\sum_reg[28][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[28][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[28]\(3),
      R => \sum[28][13]_i_1_n_0\
    );
\sum_reg[28][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[28][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[28]\(4),
      R => \sum[28][13]_i_1_n_0\
    );
\sum_reg[28][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[28][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[28]\(5),
      R => \sum[28][13]_i_1_n_0\
    );
\sum_reg[28][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[28][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[28]\(6),
      R => \sum[28][13]_i_1_n_0\
    );
\sum_reg[28][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[28][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[28]\(7),
      R => \sum[28][13]_i_1_n_0\
    );
\sum_reg[28][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[28][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[28]\(8),
      R => \sum[28][13]_i_1_n_0\
    );
\sum_reg[28][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[28][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[28]\(9),
      R => \sum[28][13]_i_1_n_0\
    );
\sum_reg[29][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[29][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[29]\(0),
      R => \sum[29][13]_i_1_n_0\
    );
\sum_reg[29][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[29][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[29]\(10),
      R => \sum[29][13]_i_1_n_0\
    );
\sum_reg[29][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[29][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[29]\(11),
      R => \sum[29][13]_i_1_n_0\
    );
\sum_reg[29][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[29][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[29]\(12),
      R => \sum[29][13]_i_1_n_0\
    );
\sum_reg[29][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[29][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[29]\(13),
      R => \sum[29][13]_i_1_n_0\
    );
\sum_reg[29][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[29][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[29]\(1),
      R => \sum[29][13]_i_1_n_0\
    );
\sum_reg[29][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[29][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[29]\(2),
      R => \sum[29][13]_i_1_n_0\
    );
\sum_reg[29][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[29][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[29]\(3),
      R => \sum[29][13]_i_1_n_0\
    );
\sum_reg[29][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[29][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[29]\(4),
      R => \sum[29][13]_i_1_n_0\
    );
\sum_reg[29][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[29][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[29]\(5),
      R => \sum[29][13]_i_1_n_0\
    );
\sum_reg[29][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[29][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[29]\(6),
      R => \sum[29][13]_i_1_n_0\
    );
\sum_reg[29][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[29][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[29]\(7),
      R => \sum[29][13]_i_1_n_0\
    );
\sum_reg[29][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[29][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[29]\(8),
      R => \sum[29][13]_i_1_n_0\
    );
\sum_reg[29][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[29][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[29]\(9),
      R => \sum[29][13]_i_1_n_0\
    );
\sum_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[2][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[2]\(0),
      R => \sum[2][13]_i_1_n_0\
    );
\sum_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[2][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[2]\(10),
      R => \sum[2][13]_i_1_n_0\
    );
\sum_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[2][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[2]\(11),
      R => \sum[2][13]_i_1_n_0\
    );
\sum_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[2][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[2]\(12),
      R => \sum[2][13]_i_1_n_0\
    );
\sum_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[2][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[2]\(13),
      R => \sum[2][13]_i_1_n_0\
    );
\sum_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[2][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[2]\(1),
      R => \sum[2][13]_i_1_n_0\
    );
\sum_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[2][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[2]\(2),
      R => \sum[2][13]_i_1_n_0\
    );
\sum_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[2][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[2]\(3),
      R => \sum[2][13]_i_1_n_0\
    );
\sum_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[2][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[2]\(4),
      R => \sum[2][13]_i_1_n_0\
    );
\sum_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[2][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[2]\(5),
      R => \sum[2][13]_i_1_n_0\
    );
\sum_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[2][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[2]\(6),
      R => \sum[2][13]_i_1_n_0\
    );
\sum_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[2][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[2]\(7),
      R => \sum[2][13]_i_1_n_0\
    );
\sum_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[2][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[2]\(8),
      R => \sum[2][13]_i_1_n_0\
    );
\sum_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[2][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[2]\(9),
      R => \sum[2][13]_i_1_n_0\
    );
\sum_reg[30][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[30][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[30]\(0),
      R => \sum[30][13]_i_1_n_0\
    );
\sum_reg[30][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[30][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[30]\(10),
      R => \sum[30][13]_i_1_n_0\
    );
\sum_reg[30][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[30][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[30]\(11),
      R => \sum[30][13]_i_1_n_0\
    );
\sum_reg[30][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[30][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[30]\(12),
      R => \sum[30][13]_i_1_n_0\
    );
\sum_reg[30][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[30][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[30]\(13),
      R => \sum[30][13]_i_1_n_0\
    );
\sum_reg[30][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[30][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[30]\(1),
      R => \sum[30][13]_i_1_n_0\
    );
\sum_reg[30][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[30][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[30]\(2),
      R => \sum[30][13]_i_1_n_0\
    );
\sum_reg[30][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[30][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[30]\(3),
      R => \sum[30][13]_i_1_n_0\
    );
\sum_reg[30][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[30][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[30]\(4),
      R => \sum[30][13]_i_1_n_0\
    );
\sum_reg[30][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[30][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[30]\(5),
      R => \sum[30][13]_i_1_n_0\
    );
\sum_reg[30][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[30][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[30]\(6),
      R => \sum[30][13]_i_1_n_0\
    );
\sum_reg[30][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[30][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[30]\(7),
      R => \sum[30][13]_i_1_n_0\
    );
\sum_reg[30][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[30][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[30]\(8),
      R => \sum[30][13]_i_1_n_0\
    );
\sum_reg[30][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[30][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[30]\(9),
      R => \sum[30][13]_i_1_n_0\
    );
\sum_reg[31][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[31][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[31]\(0),
      R => \sum[31][13]_i_1_n_0\
    );
\sum_reg[31][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[31][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[31]\(10),
      R => \sum[31][13]_i_1_n_0\
    );
\sum_reg[31][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[31][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[31]\(11),
      R => \sum[31][13]_i_1_n_0\
    );
\sum_reg[31][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[31][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[31]\(12),
      R => \sum[31][13]_i_1_n_0\
    );
\sum_reg[31][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[31][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[31]\(13),
      R => \sum[31][13]_i_1_n_0\
    );
\sum_reg[31][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[31][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[31]\(1),
      R => \sum[31][13]_i_1_n_0\
    );
\sum_reg[31][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[31][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[31]\(2),
      R => \sum[31][13]_i_1_n_0\
    );
\sum_reg[31][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[31][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[31]\(3),
      R => \sum[31][13]_i_1_n_0\
    );
\sum_reg[31][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[31][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[31]\(4),
      R => \sum[31][13]_i_1_n_0\
    );
\sum_reg[31][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[31][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[31]\(5),
      R => \sum[31][13]_i_1_n_0\
    );
\sum_reg[31][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[31][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[31]\(6),
      R => \sum[31][13]_i_1_n_0\
    );
\sum_reg[31][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[31][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[31]\(7),
      R => \sum[31][13]_i_1_n_0\
    );
\sum_reg[31][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[31][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[31]\(8),
      R => \sum[31][13]_i_1_n_0\
    );
\sum_reg[31][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[31][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[31]\(9),
      R => \sum[31][13]_i_1_n_0\
    );
\sum_reg[32][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[32][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[32]\(0),
      R => \sum[32][13]_i_1_n_0\
    );
\sum_reg[32][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[32][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[32]\(10),
      R => \sum[32][13]_i_1_n_0\
    );
\sum_reg[32][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[32][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[32]\(11),
      R => \sum[32][13]_i_1_n_0\
    );
\sum_reg[32][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[32][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[32]\(12),
      R => \sum[32][13]_i_1_n_0\
    );
\sum_reg[32][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[32][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[32]\(13),
      R => \sum[32][13]_i_1_n_0\
    );
\sum_reg[32][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[32][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[32]\(1),
      R => \sum[32][13]_i_1_n_0\
    );
\sum_reg[32][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[32][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[32]\(2),
      R => \sum[32][13]_i_1_n_0\
    );
\sum_reg[32][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[32][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[32]\(3),
      R => \sum[32][13]_i_1_n_0\
    );
\sum_reg[32][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[32][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[32]\(4),
      R => \sum[32][13]_i_1_n_0\
    );
\sum_reg[32][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[32][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[32]\(5),
      R => \sum[32][13]_i_1_n_0\
    );
\sum_reg[32][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[32][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[32]\(6),
      R => \sum[32][13]_i_1_n_0\
    );
\sum_reg[32][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[32][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[32]\(7),
      R => \sum[32][13]_i_1_n_0\
    );
\sum_reg[32][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[32][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[32]\(8),
      R => \sum[32][13]_i_1_n_0\
    );
\sum_reg[32][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[32][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[32]\(9),
      R => \sum[32][13]_i_1_n_0\
    );
\sum_reg[33][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[33][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[33]\(0),
      R => \sum[33][13]_i_1_n_0\
    );
\sum_reg[33][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[33][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[33]\(10),
      R => \sum[33][13]_i_1_n_0\
    );
\sum_reg[33][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[33][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[33]\(11),
      R => \sum[33][13]_i_1_n_0\
    );
\sum_reg[33][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[33][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[33]\(12),
      R => \sum[33][13]_i_1_n_0\
    );
\sum_reg[33][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[33][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[33]\(13),
      R => \sum[33][13]_i_1_n_0\
    );
\sum_reg[33][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[33][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[33]\(1),
      R => \sum[33][13]_i_1_n_0\
    );
\sum_reg[33][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[33][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[33]\(2),
      R => \sum[33][13]_i_1_n_0\
    );
\sum_reg[33][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[33][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[33]\(3),
      R => \sum[33][13]_i_1_n_0\
    );
\sum_reg[33][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[33][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[33]\(4),
      R => \sum[33][13]_i_1_n_0\
    );
\sum_reg[33][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[33][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[33]\(5),
      R => \sum[33][13]_i_1_n_0\
    );
\sum_reg[33][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[33][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[33]\(6),
      R => \sum[33][13]_i_1_n_0\
    );
\sum_reg[33][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[33][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[33]\(7),
      R => \sum[33][13]_i_1_n_0\
    );
\sum_reg[33][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[33][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[33]\(8),
      R => \sum[33][13]_i_1_n_0\
    );
\sum_reg[33][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[33][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[33]\(9),
      R => \sum[33][13]_i_1_n_0\
    );
\sum_reg[34][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[34][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[34]\(0),
      R => \sum[34][13]_i_1_n_0\
    );
\sum_reg[34][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[34][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[34]\(10),
      R => \sum[34][13]_i_1_n_0\
    );
\sum_reg[34][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[34][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[34]\(11),
      R => \sum[34][13]_i_1_n_0\
    );
\sum_reg[34][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[34][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[34]\(12),
      R => \sum[34][13]_i_1_n_0\
    );
\sum_reg[34][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[34][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[34]\(13),
      R => \sum[34][13]_i_1_n_0\
    );
\sum_reg[34][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[34][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[34]\(1),
      R => \sum[34][13]_i_1_n_0\
    );
\sum_reg[34][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[34][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[34]\(2),
      R => \sum[34][13]_i_1_n_0\
    );
\sum_reg[34][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[34][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[34]\(3),
      R => \sum[34][13]_i_1_n_0\
    );
\sum_reg[34][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[34][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[34]\(4),
      R => \sum[34][13]_i_1_n_0\
    );
\sum_reg[34][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[34][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[34]\(5),
      R => \sum[34][13]_i_1_n_0\
    );
\sum_reg[34][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[34][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[34]\(6),
      R => \sum[34][13]_i_1_n_0\
    );
\sum_reg[34][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[34][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[34]\(7),
      R => \sum[34][13]_i_1_n_0\
    );
\sum_reg[34][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[34][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[34]\(8),
      R => \sum[34][13]_i_1_n_0\
    );
\sum_reg[34][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[34][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[34]\(9),
      R => \sum[34][13]_i_1_n_0\
    );
\sum_reg[35][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[35][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[35]\(0),
      R => \sum[35][13]_i_1_n_0\
    );
\sum_reg[35][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[35][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[35]\(10),
      R => \sum[35][13]_i_1_n_0\
    );
\sum_reg[35][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[35][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[35]\(11),
      R => \sum[35][13]_i_1_n_0\
    );
\sum_reg[35][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[35][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[35]\(12),
      R => \sum[35][13]_i_1_n_0\
    );
\sum_reg[35][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[35][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[35]\(13),
      R => \sum[35][13]_i_1_n_0\
    );
\sum_reg[35][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[35][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[35]\(1),
      R => \sum[35][13]_i_1_n_0\
    );
\sum_reg[35][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[35][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[35]\(2),
      R => \sum[35][13]_i_1_n_0\
    );
\sum_reg[35][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[35][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[35]\(3),
      R => \sum[35][13]_i_1_n_0\
    );
\sum_reg[35][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[35][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[35]\(4),
      R => \sum[35][13]_i_1_n_0\
    );
\sum_reg[35][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[35][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[35]\(5),
      R => \sum[35][13]_i_1_n_0\
    );
\sum_reg[35][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[35][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[35]\(6),
      R => \sum[35][13]_i_1_n_0\
    );
\sum_reg[35][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[35][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[35]\(7),
      R => \sum[35][13]_i_1_n_0\
    );
\sum_reg[35][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[35][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[35]\(8),
      R => \sum[35][13]_i_1_n_0\
    );
\sum_reg[35][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[35][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[35]\(9),
      R => \sum[35][13]_i_1_n_0\
    );
\sum_reg[36][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[36][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[36]\(0),
      R => \sum[36][13]_i_1_n_0\
    );
\sum_reg[36][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[36][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[36]\(10),
      R => \sum[36][13]_i_1_n_0\
    );
\sum_reg[36][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[36][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[36]\(11),
      R => \sum[36][13]_i_1_n_0\
    );
\sum_reg[36][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[36][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[36]\(12),
      R => \sum[36][13]_i_1_n_0\
    );
\sum_reg[36][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[36][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[36]\(13),
      R => \sum[36][13]_i_1_n_0\
    );
\sum_reg[36][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[36][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[36]\(1),
      R => \sum[36][13]_i_1_n_0\
    );
\sum_reg[36][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[36][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[36]\(2),
      R => \sum[36][13]_i_1_n_0\
    );
\sum_reg[36][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[36][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[36]\(3),
      R => \sum[36][13]_i_1_n_0\
    );
\sum_reg[36][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[36][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[36]\(4),
      R => \sum[36][13]_i_1_n_0\
    );
\sum_reg[36][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[36][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[36]\(5),
      R => \sum[36][13]_i_1_n_0\
    );
\sum_reg[36][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[36][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[36]\(6),
      R => \sum[36][13]_i_1_n_0\
    );
\sum_reg[36][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[36][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[36]\(7),
      R => \sum[36][13]_i_1_n_0\
    );
\sum_reg[36][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[36][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[36]\(8),
      R => \sum[36][13]_i_1_n_0\
    );
\sum_reg[36][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[36][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[36]\(9),
      R => \sum[36][13]_i_1_n_0\
    );
\sum_reg[37][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[37][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[37]\(0),
      R => \sum[37][13]_i_1_n_0\
    );
\sum_reg[37][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[37][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[37]\(10),
      R => \sum[37][13]_i_1_n_0\
    );
\sum_reg[37][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[37][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[37]\(11),
      R => \sum[37][13]_i_1_n_0\
    );
\sum_reg[37][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[37][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[37]\(12),
      R => \sum[37][13]_i_1_n_0\
    );
\sum_reg[37][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[37][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[37]\(13),
      R => \sum[37][13]_i_1_n_0\
    );
\sum_reg[37][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[37][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[37]\(1),
      R => \sum[37][13]_i_1_n_0\
    );
\sum_reg[37][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[37][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[37]\(2),
      R => \sum[37][13]_i_1_n_0\
    );
\sum_reg[37][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[37][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[37]\(3),
      R => \sum[37][13]_i_1_n_0\
    );
\sum_reg[37][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[37][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[37]\(4),
      R => \sum[37][13]_i_1_n_0\
    );
\sum_reg[37][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[37][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[37]\(5),
      R => \sum[37][13]_i_1_n_0\
    );
\sum_reg[37][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[37][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[37]\(6),
      R => \sum[37][13]_i_1_n_0\
    );
\sum_reg[37][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[37][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[37]\(7),
      R => \sum[37][13]_i_1_n_0\
    );
\sum_reg[37][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[37][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[37]\(8),
      R => \sum[37][13]_i_1_n_0\
    );
\sum_reg[37][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[37][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[37]\(9),
      R => \sum[37][13]_i_1_n_0\
    );
\sum_reg[38][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[38][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[38]\(0),
      R => \sum[38][13]_i_1_n_0\
    );
\sum_reg[38][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[38][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[38]\(10),
      R => \sum[38][13]_i_1_n_0\
    );
\sum_reg[38][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[38][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[38]\(11),
      R => \sum[38][13]_i_1_n_0\
    );
\sum_reg[38][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[38][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[38]\(12),
      R => \sum[38][13]_i_1_n_0\
    );
\sum_reg[38][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[38][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[38]\(13),
      R => \sum[38][13]_i_1_n_0\
    );
\sum_reg[38][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[38][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[38]\(1),
      R => \sum[38][13]_i_1_n_0\
    );
\sum_reg[38][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[38][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[38]\(2),
      R => \sum[38][13]_i_1_n_0\
    );
\sum_reg[38][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[38][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[38]\(3),
      R => \sum[38][13]_i_1_n_0\
    );
\sum_reg[38][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[38][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[38]\(4),
      R => \sum[38][13]_i_1_n_0\
    );
\sum_reg[38][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[38][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[38]\(5),
      R => \sum[38][13]_i_1_n_0\
    );
\sum_reg[38][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[38][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[38]\(6),
      R => \sum[38][13]_i_1_n_0\
    );
\sum_reg[38][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[38][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[38]\(7),
      R => \sum[38][13]_i_1_n_0\
    );
\sum_reg[38][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[38][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[38]\(8),
      R => \sum[38][13]_i_1_n_0\
    );
\sum_reg[38][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[38][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[38]\(9),
      R => \sum[38][13]_i_1_n_0\
    );
\sum_reg[39][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[39][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[39]\(0),
      R => \sum[39][13]_i_1_n_0\
    );
\sum_reg[39][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[39][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[39]\(10),
      R => \sum[39][13]_i_1_n_0\
    );
\sum_reg[39][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[39][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[39]\(11),
      R => \sum[39][13]_i_1_n_0\
    );
\sum_reg[39][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[39][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[39]\(12),
      R => \sum[39][13]_i_1_n_0\
    );
\sum_reg[39][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[39][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[39]\(13),
      R => \sum[39][13]_i_1_n_0\
    );
\sum_reg[39][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[39][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[39]\(1),
      R => \sum[39][13]_i_1_n_0\
    );
\sum_reg[39][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[39][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[39]\(2),
      R => \sum[39][13]_i_1_n_0\
    );
\sum_reg[39][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[39][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[39]\(3),
      R => \sum[39][13]_i_1_n_0\
    );
\sum_reg[39][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[39][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[39]\(4),
      R => \sum[39][13]_i_1_n_0\
    );
\sum_reg[39][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[39][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[39]\(5),
      R => \sum[39][13]_i_1_n_0\
    );
\sum_reg[39][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[39][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[39]\(6),
      R => \sum[39][13]_i_1_n_0\
    );
\sum_reg[39][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[39][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[39]\(7),
      R => \sum[39][13]_i_1_n_0\
    );
\sum_reg[39][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[39][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[39]\(8),
      R => \sum[39][13]_i_1_n_0\
    );
\sum_reg[39][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[39][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[39]\(9),
      R => \sum[39][13]_i_1_n_0\
    );
\sum_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[3][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[3]\(0),
      R => \sum[3][13]_i_1_n_0\
    );
\sum_reg[3][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[3][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[3]\(10),
      R => \sum[3][13]_i_1_n_0\
    );
\sum_reg[3][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[3][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[3]\(11),
      R => \sum[3][13]_i_1_n_0\
    );
\sum_reg[3][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[3][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[3]\(12),
      R => \sum[3][13]_i_1_n_0\
    );
\sum_reg[3][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[3][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[3]\(13),
      R => \sum[3][13]_i_1_n_0\
    );
\sum_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[3][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[3]\(1),
      R => \sum[3][13]_i_1_n_0\
    );
\sum_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[3][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[3]\(2),
      R => \sum[3][13]_i_1_n_0\
    );
\sum_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[3][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[3]\(3),
      R => \sum[3][13]_i_1_n_0\
    );
\sum_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[3][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[3]\(4),
      R => \sum[3][13]_i_1_n_0\
    );
\sum_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[3][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[3]\(5),
      R => \sum[3][13]_i_1_n_0\
    );
\sum_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[3][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[3]\(6),
      R => \sum[3][13]_i_1_n_0\
    );
\sum_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[3][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[3]\(7),
      R => \sum[3][13]_i_1_n_0\
    );
\sum_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[3][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[3]\(8),
      R => \sum[3][13]_i_1_n_0\
    );
\sum_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[3][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[3]\(9),
      R => \sum[3][13]_i_1_n_0\
    );
\sum_reg[40][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[40][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[40]\(0),
      R => \sum[40][13]_i_1_n_0\
    );
\sum_reg[40][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[40][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[40]\(10),
      R => \sum[40][13]_i_1_n_0\
    );
\sum_reg[40][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[40][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[40]\(11),
      R => \sum[40][13]_i_1_n_0\
    );
\sum_reg[40][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[40][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[40]\(12),
      R => \sum[40][13]_i_1_n_0\
    );
\sum_reg[40][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[40][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[40]\(13),
      R => \sum[40][13]_i_1_n_0\
    );
\sum_reg[40][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[40][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[40]\(1),
      R => \sum[40][13]_i_1_n_0\
    );
\sum_reg[40][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[40][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[40]\(2),
      R => \sum[40][13]_i_1_n_0\
    );
\sum_reg[40][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[40][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[40]\(3),
      R => \sum[40][13]_i_1_n_0\
    );
\sum_reg[40][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[40][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[40]\(4),
      R => \sum[40][13]_i_1_n_0\
    );
\sum_reg[40][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[40][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[40]\(5),
      R => \sum[40][13]_i_1_n_0\
    );
\sum_reg[40][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[40][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[40]\(6),
      R => \sum[40][13]_i_1_n_0\
    );
\sum_reg[40][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[40][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[40]\(7),
      R => \sum[40][13]_i_1_n_0\
    );
\sum_reg[40][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[40][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[40]\(8),
      R => \sum[40][13]_i_1_n_0\
    );
\sum_reg[40][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[40][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[40]\(9),
      R => \sum[40][13]_i_1_n_0\
    );
\sum_reg[41][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[41][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[41]\(0),
      R => \sum[41][13]_i_1_n_0\
    );
\sum_reg[41][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[41][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[41]\(10),
      R => \sum[41][13]_i_1_n_0\
    );
\sum_reg[41][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[41][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[41]\(11),
      R => \sum[41][13]_i_1_n_0\
    );
\sum_reg[41][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[41][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[41]\(12),
      R => \sum[41][13]_i_1_n_0\
    );
\sum_reg[41][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[41][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[41]\(13),
      R => \sum[41][13]_i_1_n_0\
    );
\sum_reg[41][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[41][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[41]\(1),
      R => \sum[41][13]_i_1_n_0\
    );
\sum_reg[41][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[41][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[41]\(2),
      R => \sum[41][13]_i_1_n_0\
    );
\sum_reg[41][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[41][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[41]\(3),
      R => \sum[41][13]_i_1_n_0\
    );
\sum_reg[41][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[41][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[41]\(4),
      R => \sum[41][13]_i_1_n_0\
    );
\sum_reg[41][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[41][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[41]\(5),
      R => \sum[41][13]_i_1_n_0\
    );
\sum_reg[41][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[41][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[41]\(6),
      R => \sum[41][13]_i_1_n_0\
    );
\sum_reg[41][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[41][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[41]\(7),
      R => \sum[41][13]_i_1_n_0\
    );
\sum_reg[41][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[41][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[41]\(8),
      R => \sum[41][13]_i_1_n_0\
    );
\sum_reg[41][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[41][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[41]\(9),
      R => \sum[41][13]_i_1_n_0\
    );
\sum_reg[42][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[42][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[42]\(0),
      R => \sum[42][13]_i_1_n_0\
    );
\sum_reg[42][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[42][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[42]\(10),
      R => \sum[42][13]_i_1_n_0\
    );
\sum_reg[42][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[42][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[42]\(11),
      R => \sum[42][13]_i_1_n_0\
    );
\sum_reg[42][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[42][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[42]\(12),
      R => \sum[42][13]_i_1_n_0\
    );
\sum_reg[42][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[42][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[42]\(13),
      R => \sum[42][13]_i_1_n_0\
    );
\sum_reg[42][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[42][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[42]\(1),
      R => \sum[42][13]_i_1_n_0\
    );
\sum_reg[42][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[42][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[42]\(2),
      R => \sum[42][13]_i_1_n_0\
    );
\sum_reg[42][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[42][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[42]\(3),
      R => \sum[42][13]_i_1_n_0\
    );
\sum_reg[42][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[42][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[42]\(4),
      R => \sum[42][13]_i_1_n_0\
    );
\sum_reg[42][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[42][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[42]\(5),
      R => \sum[42][13]_i_1_n_0\
    );
\sum_reg[42][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[42][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[42]\(6),
      R => \sum[42][13]_i_1_n_0\
    );
\sum_reg[42][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[42][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[42]\(7),
      R => \sum[42][13]_i_1_n_0\
    );
\sum_reg[42][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[42][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[42]\(8),
      R => \sum[42][13]_i_1_n_0\
    );
\sum_reg[42][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[42][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[42]\(9),
      R => \sum[42][13]_i_1_n_0\
    );
\sum_reg[43][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[43][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[43]\(0),
      R => \sum[43][13]_i_1_n_0\
    );
\sum_reg[43][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[43][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[43]\(10),
      R => \sum[43][13]_i_1_n_0\
    );
\sum_reg[43][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[43][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[43]\(11),
      R => \sum[43][13]_i_1_n_0\
    );
\sum_reg[43][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[43][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[43]\(12),
      R => \sum[43][13]_i_1_n_0\
    );
\sum_reg[43][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[43][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[43]\(13),
      R => \sum[43][13]_i_1_n_0\
    );
\sum_reg[43][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[43][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[43]\(1),
      R => \sum[43][13]_i_1_n_0\
    );
\sum_reg[43][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[43][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[43]\(2),
      R => \sum[43][13]_i_1_n_0\
    );
\sum_reg[43][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[43][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[43]\(3),
      R => \sum[43][13]_i_1_n_0\
    );
\sum_reg[43][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[43][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[43]\(4),
      R => \sum[43][13]_i_1_n_0\
    );
\sum_reg[43][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[43][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[43]\(5),
      R => \sum[43][13]_i_1_n_0\
    );
\sum_reg[43][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[43][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[43]\(6),
      R => \sum[43][13]_i_1_n_0\
    );
\sum_reg[43][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[43][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[43]\(7),
      R => \sum[43][13]_i_1_n_0\
    );
\sum_reg[43][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[43][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[43]\(8),
      R => \sum[43][13]_i_1_n_0\
    );
\sum_reg[43][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[43][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[43]\(9),
      R => \sum[43][13]_i_1_n_0\
    );
\sum_reg[44][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[44][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[44]\(0),
      R => \sum[44][13]_i_1_n_0\
    );
\sum_reg[44][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[44][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[44]\(10),
      R => \sum[44][13]_i_1_n_0\
    );
\sum_reg[44][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[44][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[44]\(11),
      R => \sum[44][13]_i_1_n_0\
    );
\sum_reg[44][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[44][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[44]\(12),
      R => \sum[44][13]_i_1_n_0\
    );
\sum_reg[44][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[44][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[44]\(13),
      R => \sum[44][13]_i_1_n_0\
    );
\sum_reg[44][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[44][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[44]\(1),
      R => \sum[44][13]_i_1_n_0\
    );
\sum_reg[44][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[44][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[44]\(2),
      R => \sum[44][13]_i_1_n_0\
    );
\sum_reg[44][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[44][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[44]\(3),
      R => \sum[44][13]_i_1_n_0\
    );
\sum_reg[44][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[44][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[44]\(4),
      R => \sum[44][13]_i_1_n_0\
    );
\sum_reg[44][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[44][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[44]\(5),
      R => \sum[44][13]_i_1_n_0\
    );
\sum_reg[44][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[44][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[44]\(6),
      R => \sum[44][13]_i_1_n_0\
    );
\sum_reg[44][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[44][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[44]\(7),
      R => \sum[44][13]_i_1_n_0\
    );
\sum_reg[44][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[44][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[44]\(8),
      R => \sum[44][13]_i_1_n_0\
    );
\sum_reg[44][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[44][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[44]\(9),
      R => \sum[44][13]_i_1_n_0\
    );
\sum_reg[45][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[45][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[45]\(0),
      R => \sum[45][13]_i_1_n_0\
    );
\sum_reg[45][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[45][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[45]\(10),
      R => \sum[45][13]_i_1_n_0\
    );
\sum_reg[45][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[45][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[45]\(11),
      R => \sum[45][13]_i_1_n_0\
    );
\sum_reg[45][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[45][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[45]\(12),
      R => \sum[45][13]_i_1_n_0\
    );
\sum_reg[45][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[45][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[45]\(13),
      R => \sum[45][13]_i_1_n_0\
    );
\sum_reg[45][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[45][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[45]\(1),
      R => \sum[45][13]_i_1_n_0\
    );
\sum_reg[45][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[45][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[45]\(2),
      R => \sum[45][13]_i_1_n_0\
    );
\sum_reg[45][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[45][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[45]\(3),
      R => \sum[45][13]_i_1_n_0\
    );
\sum_reg[45][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[45][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[45]\(4),
      R => \sum[45][13]_i_1_n_0\
    );
\sum_reg[45][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[45][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[45]\(5),
      R => \sum[45][13]_i_1_n_0\
    );
\sum_reg[45][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[45][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[45]\(6),
      R => \sum[45][13]_i_1_n_0\
    );
\sum_reg[45][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[45][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[45]\(7),
      R => \sum[45][13]_i_1_n_0\
    );
\sum_reg[45][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[45][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[45]\(8),
      R => \sum[45][13]_i_1_n_0\
    );
\sum_reg[45][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[45][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[45]\(9),
      R => \sum[45][13]_i_1_n_0\
    );
\sum_reg[46][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[46][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[46]\(0),
      R => \sum[46][13]_i_1_n_0\
    );
\sum_reg[46][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[46][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[46]\(10),
      R => \sum[46][13]_i_1_n_0\
    );
\sum_reg[46][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[46][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[46]\(11),
      R => \sum[46][13]_i_1_n_0\
    );
\sum_reg[46][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[46][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[46]\(12),
      R => \sum[46][13]_i_1_n_0\
    );
\sum_reg[46][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[46][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[46]\(13),
      R => \sum[46][13]_i_1_n_0\
    );
\sum_reg[46][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[46][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[46]\(1),
      R => \sum[46][13]_i_1_n_0\
    );
\sum_reg[46][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[46][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[46]\(2),
      R => \sum[46][13]_i_1_n_0\
    );
\sum_reg[46][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[46][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[46]\(3),
      R => \sum[46][13]_i_1_n_0\
    );
\sum_reg[46][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[46][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[46]\(4),
      R => \sum[46][13]_i_1_n_0\
    );
\sum_reg[46][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[46][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[46]\(5),
      R => \sum[46][13]_i_1_n_0\
    );
\sum_reg[46][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[46][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[46]\(6),
      R => \sum[46][13]_i_1_n_0\
    );
\sum_reg[46][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[46][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[46]\(7),
      R => \sum[46][13]_i_1_n_0\
    );
\sum_reg[46][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[46][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[46]\(8),
      R => \sum[46][13]_i_1_n_0\
    );
\sum_reg[46][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[46][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[46]\(9),
      R => \sum[46][13]_i_1_n_0\
    );
\sum_reg[47][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[47][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[47]\(0),
      R => \sum[47][13]_i_1_n_0\
    );
\sum_reg[47][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[47][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[47]\(10),
      R => \sum[47][13]_i_1_n_0\
    );
\sum_reg[47][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[47][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[47]\(11),
      R => \sum[47][13]_i_1_n_0\
    );
\sum_reg[47][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[47][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[47]\(12),
      R => \sum[47][13]_i_1_n_0\
    );
\sum_reg[47][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[47][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[47]\(13),
      R => \sum[47][13]_i_1_n_0\
    );
\sum_reg[47][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[47][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[47]\(1),
      R => \sum[47][13]_i_1_n_0\
    );
\sum_reg[47][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[47][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[47]\(2),
      R => \sum[47][13]_i_1_n_0\
    );
\sum_reg[47][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[47][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[47]\(3),
      R => \sum[47][13]_i_1_n_0\
    );
\sum_reg[47][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[47][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[47]\(4),
      R => \sum[47][13]_i_1_n_0\
    );
\sum_reg[47][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[47][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[47]\(5),
      R => \sum[47][13]_i_1_n_0\
    );
\sum_reg[47][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[47][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[47]\(6),
      R => \sum[47][13]_i_1_n_0\
    );
\sum_reg[47][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[47][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[47]\(7),
      R => \sum[47][13]_i_1_n_0\
    );
\sum_reg[47][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[47][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[47]\(8),
      R => \sum[47][13]_i_1_n_0\
    );
\sum_reg[47][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[47][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[47]\(9),
      R => \sum[47][13]_i_1_n_0\
    );
\sum_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[4][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[4]\(0),
      R => \sum[4][13]_i_1_n_0\
    );
\sum_reg[4][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[4][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[4]\(10),
      R => \sum[4][13]_i_1_n_0\
    );
\sum_reg[4][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[4][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[4]\(11),
      R => \sum[4][13]_i_1_n_0\
    );
\sum_reg[4][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[4][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[4]\(12),
      R => \sum[4][13]_i_1_n_0\
    );
\sum_reg[4][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[4][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[4]\(13),
      R => \sum[4][13]_i_1_n_0\
    );
\sum_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[4][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[4]\(1),
      R => \sum[4][13]_i_1_n_0\
    );
\sum_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[4][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[4]\(2),
      R => \sum[4][13]_i_1_n_0\
    );
\sum_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[4][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[4]\(3),
      R => \sum[4][13]_i_1_n_0\
    );
\sum_reg[4][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[4][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[4]\(4),
      R => \sum[4][13]_i_1_n_0\
    );
\sum_reg[4][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[4][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[4]\(5),
      R => \sum[4][13]_i_1_n_0\
    );
\sum_reg[4][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[4][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[4]\(6),
      R => \sum[4][13]_i_1_n_0\
    );
\sum_reg[4][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[4][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[4]\(7),
      R => \sum[4][13]_i_1_n_0\
    );
\sum_reg[4][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[4][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[4]\(8),
      R => \sum[4][13]_i_1_n_0\
    );
\sum_reg[4][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[4][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[4]\(9),
      R => \sum[4][13]_i_1_n_0\
    );
\sum_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[5][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[5]\(0),
      R => \sum[5][13]_i_1_n_0\
    );
\sum_reg[5][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[5][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[5]\(10),
      R => \sum[5][13]_i_1_n_0\
    );
\sum_reg[5][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[5][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[5]\(11),
      R => \sum[5][13]_i_1_n_0\
    );
\sum_reg[5][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[5][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[5]\(12),
      R => \sum[5][13]_i_1_n_0\
    );
\sum_reg[5][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[5][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[5]\(13),
      R => \sum[5][13]_i_1_n_0\
    );
\sum_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[5][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[5]\(1),
      R => \sum[5][13]_i_1_n_0\
    );
\sum_reg[5][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[5][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[5]\(2),
      R => \sum[5][13]_i_1_n_0\
    );
\sum_reg[5][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[5][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[5]\(3),
      R => \sum[5][13]_i_1_n_0\
    );
\sum_reg[5][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[5][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[5]\(4),
      R => \sum[5][13]_i_1_n_0\
    );
\sum_reg[5][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[5][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[5]\(5),
      R => \sum[5][13]_i_1_n_0\
    );
\sum_reg[5][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[5][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[5]\(6),
      R => \sum[5][13]_i_1_n_0\
    );
\sum_reg[5][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[5][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[5]\(7),
      R => \sum[5][13]_i_1_n_0\
    );
\sum_reg[5][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[5][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[5]\(8),
      R => \sum[5][13]_i_1_n_0\
    );
\sum_reg[5][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[5][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[5]\(9),
      R => \sum[5][13]_i_1_n_0\
    );
\sum_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[6][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[6]\(0),
      R => \sum[6][13]_i_1_n_0\
    );
\sum_reg[6][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[6][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[6]\(10),
      R => \sum[6][13]_i_1_n_0\
    );
\sum_reg[6][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[6][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[6]\(11),
      R => \sum[6][13]_i_1_n_0\
    );
\sum_reg[6][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[6][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[6]\(12),
      R => \sum[6][13]_i_1_n_0\
    );
\sum_reg[6][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[6][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[6]\(13),
      R => \sum[6][13]_i_1_n_0\
    );
\sum_reg[6][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[6][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[6]\(1),
      R => \sum[6][13]_i_1_n_0\
    );
\sum_reg[6][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[6][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[6]\(2),
      R => \sum[6][13]_i_1_n_0\
    );
\sum_reg[6][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[6][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[6]\(3),
      R => \sum[6][13]_i_1_n_0\
    );
\sum_reg[6][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[6][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[6]\(4),
      R => \sum[6][13]_i_1_n_0\
    );
\sum_reg[6][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[6][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[6]\(5),
      R => \sum[6][13]_i_1_n_0\
    );
\sum_reg[6][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[6][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[6]\(6),
      R => \sum[6][13]_i_1_n_0\
    );
\sum_reg[6][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[6][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[6]\(7),
      R => \sum[6][13]_i_1_n_0\
    );
\sum_reg[6][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[6][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[6]\(8),
      R => \sum[6][13]_i_1_n_0\
    );
\sum_reg[6][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[6][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[6]\(9),
      R => \sum[6][13]_i_1_n_0\
    );
\sum_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[7][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[7]\(0),
      R => \sum[7][13]_i_1_n_0\
    );
\sum_reg[7][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[7][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[7]\(10),
      R => \sum[7][13]_i_1_n_0\
    );
\sum_reg[7][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[7][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[7]\(11),
      R => \sum[7][13]_i_1_n_0\
    );
\sum_reg[7][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[7][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[7]\(12),
      R => \sum[7][13]_i_1_n_0\
    );
\sum_reg[7][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[7][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[7]\(13),
      R => \sum[7][13]_i_1_n_0\
    );
\sum_reg[7][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[7][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[7]\(1),
      R => \sum[7][13]_i_1_n_0\
    );
\sum_reg[7][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[7][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[7]\(2),
      R => \sum[7][13]_i_1_n_0\
    );
\sum_reg[7][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[7][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[7]\(3),
      R => \sum[7][13]_i_1_n_0\
    );
\sum_reg[7][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[7][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[7]\(4),
      R => \sum[7][13]_i_1_n_0\
    );
\sum_reg[7][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[7][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[7]\(5),
      R => \sum[7][13]_i_1_n_0\
    );
\sum_reg[7][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[7][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[7]\(6),
      R => \sum[7][13]_i_1_n_0\
    );
\sum_reg[7][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[7][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[7]\(7),
      R => \sum[7][13]_i_1_n_0\
    );
\sum_reg[7][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[7][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[7]\(8),
      R => \sum[7][13]_i_1_n_0\
    );
\sum_reg[7][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[7][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[7]\(9),
      R => \sum[7][13]_i_1_n_0\
    );
\sum_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[8][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[8]\(0),
      R => \sum[8][13]_i_1_n_0\
    );
\sum_reg[8][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[8][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[8]\(10),
      R => \sum[8][13]_i_1_n_0\
    );
\sum_reg[8][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[8][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[8]\(11),
      R => \sum[8][13]_i_1_n_0\
    );
\sum_reg[8][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[8][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[8]\(12),
      R => \sum[8][13]_i_1_n_0\
    );
\sum_reg[8][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[8][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[8]\(13),
      R => \sum[8][13]_i_1_n_0\
    );
\sum_reg[8][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[8][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[8]\(1),
      R => \sum[8][13]_i_1_n_0\
    );
\sum_reg[8][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[8][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[8]\(2),
      R => \sum[8][13]_i_1_n_0\
    );
\sum_reg[8][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[8][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[8]\(3),
      R => \sum[8][13]_i_1_n_0\
    );
\sum_reg[8][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[8][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[8]\(4),
      R => \sum[8][13]_i_1_n_0\
    );
\sum_reg[8][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[8][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[8]\(5),
      R => \sum[8][13]_i_1_n_0\
    );
\sum_reg[8][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[8][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[8]\(6),
      R => \sum[8][13]_i_1_n_0\
    );
\sum_reg[8][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[8][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[8]\(7),
      R => \sum[8][13]_i_1_n_0\
    );
\sum_reg[8][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[8][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[8]\(8),
      R => \sum[8][13]_i_1_n_0\
    );
\sum_reg[8][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[8][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[8]\(9),
      R => \sum[8][13]_i_1_n_0\
    );
\sum_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[9][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_7\,
      Q => \sum_reg[9]\(0),
      R => \sum[9][13]_i_1_n_0\
    );
\sum_reg[9][10]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[9][13]_i_2_n_0\,
      D => p_0_in(4),
      Q => \sum_reg[9]\(10),
      R => \sum[9][13]_i_1_n_0\
    );
\sum_reg[9][11]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[9][13]_i_2_n_0\,
      D => p_0_in(5),
      Q => \sum_reg[9]\(11),
      R => \sum[9][13]_i_1_n_0\
    );
\sum_reg[9][12]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[9][13]_i_2_n_0\,
      D => p_0_in(6),
      Q => \sum_reg[9]\(12),
      R => \sum[9][13]_i_1_n_0\
    );
\sum_reg[9][13]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[9][13]_i_2_n_0\,
      D => p_0_in(7),
      Q => \sum_reg[9]\(13),
      R => \sum[9][13]_i_1_n_0\
    );
\sum_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[9][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_6\,
      Q => \sum_reg[9]\(1),
      R => \sum[9][13]_i_1_n_0\
    );
\sum_reg[9][2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[9][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_5\,
      Q => \sum_reg[9]\(2),
      R => \sum[9][13]_i_1_n_0\
    );
\sum_reg[9][3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[9][13]_i_2_n_0\,
      D => \sum_reg[0][3]_i_1_n_4\,
      Q => \sum_reg[9]\(3),
      R => \sum[9][13]_i_1_n_0\
    );
\sum_reg[9][4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[9][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_7\,
      Q => \sum_reg[9]\(4),
      R => \sum[9][13]_i_1_n_0\
    );
\sum_reg[9][5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[9][13]_i_2_n_0\,
      D => \pixel_data_avg_reg[1]_i_1_n_6\,
      Q => \sum_reg[9]\(5),
      R => \sum[9][13]_i_1_n_0\
    );
\sum_reg[9][6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[9][13]_i_2_n_0\,
      D => p_0_in(0),
      Q => \sum_reg[9]\(6),
      R => \sum[9][13]_i_1_n_0\
    );
\sum_reg[9][7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[9][13]_i_2_n_0\,
      D => p_0_in(1),
      Q => \sum_reg[9]\(7),
      R => \sum[9][13]_i_1_n_0\
    );
\sum_reg[9][8]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[9][13]_i_2_n_0\,
      D => p_0_in(2),
      Q => \sum_reg[9]\(8),
      R => \sum[9][13]_i_1_n_0\
    );
\sum_reg[9][9]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => \sum[9][13]_i_2_n_0\,
      D => p_0_in(3),
      Q => \sum_reg[9]\(9),
      R => \sum[9][13]_i_1_n_0\
    );
\x_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => input_valid,
      I1 => x_count(0),
      O => \x_count[0]_i_1_n_0\
    );
\x_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => x_count(0),
      I1 => input_valid,
      I2 => x_count(1),
      O => \x_count[1]_i_1_n_0\
    );
\x_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => x_count(0),
      I1 => x_count(1),
      I2 => input_valid,
      I3 => x_count(2),
      O => \x_count[2]_i_1_n_0\
    );
\x_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \x_count[0]_i_1_n_0\,
      Q => x_count(0),
      R => reset
    );
\x_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \x_count[1]_i_1_n_0\,
      Q => x_count(1),
      R => reset
    );
\x_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \x_count[2]_i_1_n_0\,
      Q => x_count(2),
      R => reset
    );
\y_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => y_count(0),
      I1 => \y_count_reg_n_0_[0]\,
      O => \y_count[0]_i_1_n_0\
    );
\y_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \y_count_reg_n_0_[0]\,
      I1 => y_count(0),
      I2 => \y_count_reg_n_0_[1]\,
      O => \y_count[1]_i_1_n_0\
    );
\y_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \y_count_reg_n_0_[1]\,
      I1 => \y_count_reg_n_0_[0]\,
      I2 => y_count(0),
      I3 => \y_count_reg_n_0_[2]\,
      O => \y_count[2]_i_1_n_0\
    );
\y_count[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => col_index(5),
      I1 => col_index(3),
      I2 => \y_count[2]_i_3_n_0\,
      I3 => col_index(2),
      I4 => col_index(4),
      I5 => input_valid,
      O => y_count(0)
    );
\y_count[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => x_count(0),
      I1 => col_index(1),
      I2 => col_index(0),
      I3 => x_count(2),
      I4 => x_count(1),
      O => \y_count[2]_i_3_n_0\
    );
\y_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \y_count[0]_i_1_n_0\,
      Q => \y_count_reg_n_0_[0]\,
      R => reset
    );
\y_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \y_count[1]_i_1_n_0\,
      Q => \y_count_reg_n_0_[1]\,
      R => reset
    );
\y_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => \y_count[2]_i_1_n_0\,
      Q => \y_count_reg_n_0_[2]\,
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_smoothing_0_0 is
  port (
    p_clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    pixel_data_grayscale : in STD_LOGIC_VECTOR ( 7 downto 0 );
    input_valid : in STD_LOGIC;
    pixel_data_avg : out STD_LOGIC_VECTOR ( 7 downto 0 );
    output_valid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_smoothing_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_smoothing_0_0 : entity is "design_1_smoothing_0_0,smoothing,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_smoothing_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_smoothing_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_smoothing_0_0 : entity is "smoothing,Vivado 2025.2";
end design_1_smoothing_0_0;

architecture STRUCTURE of design_1_smoothing_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of p_clk : signal is "xilinx.com:signal:clock:1.0 p_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of p_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of p_clk : signal is "XIL_INTERFACENAME p_clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_smoothing_0_0_smoothing
     port map (
      input_valid => input_valid,
      output_valid => output_valid,
      p_clk => p_clk,
      pixel_data_avg(7 downto 0) => pixel_data_avg(7 downto 0),
      pixel_data_grayscale(7 downto 0) => pixel_data_grayscale(7 downto 0),
      reset => reset
    );
end STRUCTURE;
