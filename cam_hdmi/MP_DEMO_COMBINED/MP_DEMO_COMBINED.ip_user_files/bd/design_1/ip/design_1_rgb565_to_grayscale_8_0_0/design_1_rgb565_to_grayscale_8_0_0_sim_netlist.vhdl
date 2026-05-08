-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Thu May  7 04:15:27 2026
-- Host        : harun running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/harun/Documents/MP/MP_DEMO_COMBINED/MP_DEMO_COMBINED.gen/sources_1/bd/design_1/ip/design_1_rgb565_to_grayscale_8_0_0/design_1_rgb565_to_grayscale_8_0_0_sim_netlist.vhdl
-- Design      : design_1_rgb565_to_grayscale_8_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rgb565_to_grayscale_8_0_0_rgb565_to_grayscale_8 is
  port (
    pixel_data_grayscale : out STD_LOGIC_VECTOR ( 7 downto 0 );
    output_valid : out STD_LOGIC;
    pixel_data_565 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    p_clk : in STD_LOGIC;
    input_valid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_rgb565_to_grayscale_8_0_0_rgb565_to_grayscale_8 : entity is "rgb565_to_grayscale_8";
end design_1_rgb565_to_grayscale_8_0_0_rgb565_to_grayscale_8;

architecture STRUCTURE of design_1_rgb565_to_grayscale_8_0_0_rgb565_to_grayscale_8 is
  signal C : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \i___27_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i___27_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i___27_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i___27_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i___27_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i___27_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i___27_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i___27_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i___27_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i___27_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i___27_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i___27_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i___27_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i___27_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i___27_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i___27_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i___27_carry_i_1_n_0\ : STD_LOGIC;
  signal \i___27_carry_i_2_n_0\ : STD_LOGIC;
  signal \i___27_carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal temp0 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal \temp0__23_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \temp0__23_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \temp0__23_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \temp0__23_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \temp0__23_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \temp0__23_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \temp0__23_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \temp0__23_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \temp0__23_carry__0_n_0\ : STD_LOGIC;
  signal \temp0__23_carry__0_n_1\ : STD_LOGIC;
  signal \temp0__23_carry__0_n_2\ : STD_LOGIC;
  signal \temp0__23_carry__0_n_3\ : STD_LOGIC;
  signal \temp0__23_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \temp0__23_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \temp0__23_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \temp0__23_carry__1_n_3\ : STD_LOGIC;
  signal \temp0__23_carry_i_1_n_0\ : STD_LOGIC;
  signal \temp0__23_carry_i_2_n_0\ : STD_LOGIC;
  signal \temp0__23_carry_i_3_n_0\ : STD_LOGIC;
  signal \temp0__23_carry_i_4_n_0\ : STD_LOGIC;
  signal \temp0__23_carry_i_5_n_0\ : STD_LOGIC;
  signal \temp0__23_carry_i_6_n_0\ : STD_LOGIC;
  signal \temp0__23_carry_i_7_n_0\ : STD_LOGIC;
  signal \temp0__23_carry_n_0\ : STD_LOGIC;
  signal \temp0__23_carry_n_1\ : STD_LOGIC;
  signal \temp0__23_carry_n_2\ : STD_LOGIC;
  signal \temp0__23_carry_n_3\ : STD_LOGIC;
  signal \temp0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \temp0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \temp0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \temp0_carry__0_n_0\ : STD_LOGIC;
  signal \temp0_carry__0_n_1\ : STD_LOGIC;
  signal \temp0_carry__0_n_2\ : STD_LOGIC;
  signal \temp0_carry__0_n_3\ : STD_LOGIC;
  signal \temp0_carry__0_n_4\ : STD_LOGIC;
  signal \temp0_carry__0_n_5\ : STD_LOGIC;
  signal \temp0_carry__0_n_6\ : STD_LOGIC;
  signal \temp0_carry__0_n_7\ : STD_LOGIC;
  signal \temp0_carry__1_n_2\ : STD_LOGIC;
  signal \temp0_carry__1_n_7\ : STD_LOGIC;
  signal temp0_carry_i_1_n_0 : STD_LOGIC;
  signal temp0_carry_i_2_n_0 : STD_LOGIC;
  signal temp0_carry_i_3_n_0 : STD_LOGIC;
  signal temp0_carry_n_0 : STD_LOGIC;
  signal temp0_carry_n_1 : STD_LOGIC;
  signal temp0_carry_n_2 : STD_LOGIC;
  signal temp0_carry_n_3 : STD_LOGIC;
  signal temp0_carry_n_4 : STD_LOGIC;
  signal temp0_carry_n_5 : STD_LOGIC;
  signal temp1 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \temp1__24_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \temp1__24_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \temp1__24_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \temp1__24_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \temp1__24_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \temp1__24_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \temp1__24_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \temp1__24_carry__0_n_0\ : STD_LOGIC;
  signal \temp1__24_carry__0_n_1\ : STD_LOGIC;
  signal \temp1__24_carry__0_n_2\ : STD_LOGIC;
  signal \temp1__24_carry__0_n_3\ : STD_LOGIC;
  signal \temp1__24_carry__0_n_4\ : STD_LOGIC;
  signal \temp1__24_carry__0_n_5\ : STD_LOGIC;
  signal \temp1__24_carry__0_n_6\ : STD_LOGIC;
  signal \temp1__24_carry__0_n_7\ : STD_LOGIC;
  signal \temp1__24_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \temp1__24_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \temp1__24_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \temp1__24_carry__1_n_0\ : STD_LOGIC;
  signal \temp1__24_carry__1_n_1\ : STD_LOGIC;
  signal \temp1__24_carry__1_n_2\ : STD_LOGIC;
  signal \temp1__24_carry__1_n_3\ : STD_LOGIC;
  signal \temp1__24_carry__1_n_4\ : STD_LOGIC;
  signal \temp1__24_carry__1_n_5\ : STD_LOGIC;
  signal \temp1__24_carry__1_n_6\ : STD_LOGIC;
  signal \temp1__24_carry__1_n_7\ : STD_LOGIC;
  signal \temp1__24_carry_i_1_n_0\ : STD_LOGIC;
  signal \temp1__24_carry_i_2_n_0\ : STD_LOGIC;
  signal \temp1__24_carry_i_3_n_0\ : STD_LOGIC;
  signal \temp1__24_carry_n_0\ : STD_LOGIC;
  signal \temp1__24_carry_n_1\ : STD_LOGIC;
  signal \temp1__24_carry_n_2\ : STD_LOGIC;
  signal \temp1__24_carry_n_3\ : STD_LOGIC;
  signal \temp1__24_carry_n_4\ : STD_LOGIC;
  signal \temp1__24_carry_n_5\ : STD_LOGIC;
  signal \temp1__24_carry_n_6\ : STD_LOGIC;
  signal \temp1__24_carry_n_7\ : STD_LOGIC;
  signal \temp1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \temp1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \temp1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \temp1_carry__0_n_0\ : STD_LOGIC;
  signal \temp1_carry__0_n_1\ : STD_LOGIC;
  signal \temp1_carry__0_n_2\ : STD_LOGIC;
  signal \temp1_carry__0_n_3\ : STD_LOGIC;
  signal \temp1_carry__0_n_4\ : STD_LOGIC;
  signal \temp1_carry__0_n_5\ : STD_LOGIC;
  signal \temp1_carry__0_n_6\ : STD_LOGIC;
  signal \temp1_carry__0_n_7\ : STD_LOGIC;
  signal \temp1_carry__1_n_2\ : STD_LOGIC;
  signal \temp1_carry__1_n_7\ : STD_LOGIC;
  signal temp1_carry_i_1_n_0 : STD_LOGIC;
  signal temp1_carry_i_2_n_0 : STD_LOGIC;
  signal temp1_carry_i_3_n_0 : STD_LOGIC;
  signal temp1_carry_n_0 : STD_LOGIC;
  signal temp1_carry_n_1 : STD_LOGIC;
  signal temp1_carry_n_2 : STD_LOGIC;
  signal temp1_carry_n_3 : STD_LOGIC;
  signal temp1_carry_n_4 : STD_LOGIC;
  signal temp1_carry_n_5 : STD_LOGIC;
  signal temp1_carry_n_6 : STD_LOGIC;
  signal temp1_carry_n_7 : STD_LOGIC;
  signal \temp1_inferred__0/i___27_carry__0_n_0\ : STD_LOGIC;
  signal \temp1_inferred__0/i___27_carry__0_n_1\ : STD_LOGIC;
  signal \temp1_inferred__0/i___27_carry__0_n_2\ : STD_LOGIC;
  signal \temp1_inferred__0/i___27_carry__0_n_3\ : STD_LOGIC;
  signal \temp1_inferred__0/i___27_carry__1_n_0\ : STD_LOGIC;
  signal \temp1_inferred__0/i___27_carry__1_n_1\ : STD_LOGIC;
  signal \temp1_inferred__0/i___27_carry__1_n_2\ : STD_LOGIC;
  signal \temp1_inferred__0/i___27_carry__1_n_3\ : STD_LOGIC;
  signal \temp1_inferred__0/i___27_carry_n_0\ : STD_LOGIC;
  signal \temp1_inferred__0/i___27_carry_n_1\ : STD_LOGIC;
  signal \temp1_inferred__0/i___27_carry_n_2\ : STD_LOGIC;
  signal \temp1_inferred__0/i___27_carry_n_3\ : STD_LOGIC;
  signal \temp1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \temp1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \temp1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \temp1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \temp1_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \temp1_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \temp1_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \temp1_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \temp1_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \temp1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \temp1_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \temp1_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \temp1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \temp1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \temp1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \temp1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \temp1_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \temp1_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \temp__41_carry__0_n_0\ : STD_LOGIC;
  signal \temp__41_carry__0_n_1\ : STD_LOGIC;
  signal \temp__41_carry__0_n_2\ : STD_LOGIC;
  signal \temp__41_carry__0_n_3\ : STD_LOGIC;
  signal \temp__41_carry__1_n_0\ : STD_LOGIC;
  signal \temp__41_carry__1_n_1\ : STD_LOGIC;
  signal \temp__41_carry__1_n_2\ : STD_LOGIC;
  signal \temp__41_carry__1_n_3\ : STD_LOGIC;
  signal \temp__41_carry__2_n_2\ : STD_LOGIC;
  signal \temp__41_carry__2_n_3\ : STD_LOGIC;
  signal \temp__41_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \temp__41_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \temp__41_carry_i_1__2_n_0\ : STD_LOGIC;
  signal \temp__41_carry_i_1_n_0\ : STD_LOGIC;
  signal \temp__41_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \temp__41_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \temp__41_carry_i_2__2_n_0\ : STD_LOGIC;
  signal \temp__41_carry_i_2_n_0\ : STD_LOGIC;
  signal \temp__41_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \temp__41_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \temp__41_carry_i_3__2_n_0\ : STD_LOGIC;
  signal \temp__41_carry_i_3_n_0\ : STD_LOGIC;
  signal \temp__41_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \temp__41_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \temp__41_carry_i_4_n_0\ : STD_LOGIC;
  signal \temp__41_carry_n_0\ : STD_LOGIC;
  signal \temp__41_carry_n_1\ : STD_LOGIC;
  signal \temp__41_carry_n_2\ : STD_LOGIC;
  signal \temp__41_carry_n_3\ : STD_LOGIC;
  signal \temp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \temp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \temp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \temp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \temp_carry__0_n_0\ : STD_LOGIC;
  signal \temp_carry__0_n_1\ : STD_LOGIC;
  signal \temp_carry__0_n_2\ : STD_LOGIC;
  signal \temp_carry__0_n_3\ : STD_LOGIC;
  signal \temp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \temp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \temp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \temp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \temp_carry__1_n_0\ : STD_LOGIC;
  signal \temp_carry__1_n_1\ : STD_LOGIC;
  signal \temp_carry__1_n_2\ : STD_LOGIC;
  signal \temp_carry__1_n_3\ : STD_LOGIC;
  signal \temp_carry__2_i_1_n_3\ : STD_LOGIC;
  signal \temp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \temp_carry__2_n_0\ : STD_LOGIC;
  signal \temp_carry__2_n_2\ : STD_LOGIC;
  signal \temp_carry__2_n_3\ : STD_LOGIC;
  signal temp_carry_i_1_n_0 : STD_LOGIC;
  signal temp_carry_i_2_n_0 : STD_LOGIC;
  signal temp_carry_i_3_n_0 : STD_LOGIC;
  signal temp_carry_i_4_n_0 : STD_LOGIC;
  signal temp_carry_n_0 : STD_LOGIC;
  signal temp_carry_n_1 : STD_LOGIC;
  signal temp_carry_n_2 : STD_LOGIC;
  signal temp_carry_n_3 : STD_LOGIC;
  signal \NLW_temp0__23_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_temp0__23_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_temp0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_temp0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_temp1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_temp1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_temp1_inferred__0/i___27_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_temp1_inferred__0/i___27_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_temp1_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_temp1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_temp__41_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_temp__41_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_temp__41_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_temp__41_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_temp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_temp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_temp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_temp_carry__2_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_temp_carry__2_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HLUTNM : string;
  attribute HLUTNM of \i___27_carry__0_i_1\ : label is "lutpair4";
  attribute HLUTNM of \i___27_carry__0_i_2\ : label is "lutpair3";
  attribute HLUTNM of \i___27_carry__0_i_4\ : label is "lutpair5";
  attribute HLUTNM of \i___27_carry__0_i_5\ : label is "lutpair4";
  attribute HLUTNM of \i___27_carry__0_i_6\ : label is "lutpair3";
  attribute HLUTNM of \i___27_carry__1_i_4\ : label is "lutpair5";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \temp0__23_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \temp0__23_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \temp0__23_carry__1\ : label is 35;
  attribute HLUTNM of \temp1__24_carry__0_i_1\ : label is "lutpair1";
  attribute HLUTNM of \temp1__24_carry__0_i_2\ : label is "lutpair0";
  attribute HLUTNM of \temp1__24_carry__0_i_4\ : label is "lutpair2";
  attribute HLUTNM of \temp1__24_carry__0_i_5\ : label is "lutpair1";
  attribute HLUTNM of \temp1__24_carry__0_i_6\ : label is "lutpair0";
  attribute HLUTNM of \temp1__24_carry__1_i_1\ : label is "lutpair2";
  attribute ADDER_THRESHOLD of \temp1_inferred__0/i___27_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \temp1_inferred__0/i___27_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \temp1_inferred__0/i___27_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \temp1_inferred__0/i___27_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \temp__41_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \temp__41_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \temp__41_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \temp__41_carry__2\ : label is 35;
begin
\i___27_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => pixel_data_565(8),
      I1 => \temp1_inferred__0/i__carry__1_n_7\,
      I2 => pixel_data_565(5),
      O => \i___27_carry__0_i_1_n_0\
    );
\i___27_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => pixel_data_565(7),
      I1 => \temp1_inferred__0/i__carry__0_n_4\,
      I2 => pixel_data_565(10),
      O => \i___27_carry__0_i_2_n_0\
    );
\i___27_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => pixel_data_565(10),
      I1 => pixel_data_565(7),
      I2 => \temp1_inferred__0/i__carry__0_n_4\,
      O => \i___27_carry__0_i_3_n_0\
    );
\i___27_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => pixel_data_565(9),
      I1 => \temp1_inferred__0/i__carry__1_n_6\,
      I2 => pixel_data_565(6),
      I3 => \i___27_carry__0_i_1_n_0\,
      O => \i___27_carry__0_i_4_n_0\
    );
\i___27_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => pixel_data_565(8),
      I1 => \temp1_inferred__0/i__carry__1_n_7\,
      I2 => pixel_data_565(5),
      I3 => \i___27_carry__0_i_2_n_0\,
      O => \i___27_carry__0_i_5_n_0\
    );
\i___27_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => pixel_data_565(7),
      I1 => \temp1_inferred__0/i__carry__0_n_4\,
      I2 => pixel_data_565(10),
      I3 => \temp1_inferred__0/i__carry__0_n_5\,
      I4 => pixel_data_565(6),
      O => \i___27_carry__0_i_6_n_0\
    );
\i___27_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => pixel_data_565(6),
      I1 => \temp1_inferred__0/i__carry__0_n_5\,
      I2 => pixel_data_565(9),
      O => \i___27_carry__0_i_7_n_0\
    );
\i___27_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_data_565(9),
      I1 => \temp1_inferred__0/i__carry__1_n_1\,
      O => \i___27_carry__1_i_1_n_0\
    );
\i___27_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_data_565(8),
      I1 => \temp1_inferred__0/i__carry__1_n_1\,
      O => \i___27_carry__1_i_2_n_0\
    );
\i___27_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \temp1_inferred__0/i__carry__1_n_1\,
      I1 => pixel_data_565(10),
      I2 => pixel_data_565(7),
      O => \i___27_carry__1_i_3_n_0\
    );
\i___27_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => pixel_data_565(9),
      I1 => \temp1_inferred__0/i__carry__1_n_6\,
      I2 => pixel_data_565(6),
      O => \i___27_carry__1_i_4_n_0\
    );
\i___27_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => pixel_data_565(9),
      I1 => \temp1_inferred__0/i__carry__1_n_1\,
      I2 => pixel_data_565(10),
      O => \i___27_carry__1_i_5_n_0\
    );
\i___27_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => pixel_data_565(8),
      I1 => \temp1_inferred__0/i__carry__1_n_1\,
      I2 => pixel_data_565(9),
      O => \i___27_carry__1_i_6_n_0\
    );
\i___27_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E81"
    )
        port map (
      I0 => pixel_data_565(7),
      I1 => pixel_data_565(10),
      I2 => \temp1_inferred__0/i__carry__1_n_1\,
      I3 => pixel_data_565(8),
      O => \i___27_carry__1_i_7_n_0\
    );
\i___27_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \i___27_carry__1_i_4_n_0\,
      I1 => \temp1_inferred__0/i__carry__1_n_1\,
      I2 => pixel_data_565(10),
      I3 => pixel_data_565(7),
      O => \i___27_carry__1_i_8_n_0\
    );
\i___27_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pixel_data_565(10),
      I1 => \temp1_inferred__0/i__carry__1_n_1\,
      O => \i___27_carry__2_i_1_n_0\
    );
\i___27_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \temp1_inferred__0/i__carry__0_n_6\,
      I1 => pixel_data_565(5),
      O => \i___27_carry_i_1_n_0\
    );
\i___27_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \temp1_inferred__0/i__carry__0_n_7\,
      I1 => pixel_data_565(10),
      O => \i___27_carry_i_2_n_0\
    );
\i___27_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \temp1_inferred__0/i__carry_n_4\,
      I1 => pixel_data_565(9),
      O => \i___27_carry_i_3_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pixel_data_565(8),
      I1 => pixel_data_565(10),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pixel_data_565(7),
      I1 => pixel_data_565(9),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pixel_data_565(6),
      I1 => pixel_data_565(8),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pixel_data_565(5),
      I1 => pixel_data_565(7),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pixel_data_565(10),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pixel_data_565(9),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pixel_data_565(10),
      I1 => pixel_data_565(6),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pixel_data_565(9),
      I1 => pixel_data_565(5),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pixel_data_565(10),
      O => \i__carry_i_3_n_0\
    );
output_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => input_valid,
      Q => output_valid,
      R => '0'
    );
\pixel_data_grayscale_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => p_0_in(0),
      Q => pixel_data_grayscale(0),
      R => '0'
    );
\pixel_data_grayscale_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => p_0_in(1),
      Q => pixel_data_grayscale(1),
      R => '0'
    );
\pixel_data_grayscale_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => p_0_in(2),
      Q => pixel_data_grayscale(2),
      R => '0'
    );
\pixel_data_grayscale_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => p_0_in(3),
      Q => pixel_data_grayscale(3),
      R => '0'
    );
\pixel_data_grayscale_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => p_0_in(4),
      Q => pixel_data_grayscale(4),
      R => '0'
    );
\pixel_data_grayscale_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => p_0_in(5),
      Q => pixel_data_grayscale(5),
      R => '0'
    );
\pixel_data_grayscale_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => p_0_in(6),
      Q => pixel_data_grayscale(6),
      R => '0'
    );
\pixel_data_grayscale_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => p_clk,
      CE => '1',
      D => p_0_in(7),
      Q => pixel_data_grayscale(7),
      R => '0'
    );
\temp0__23_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \temp0__23_carry_n_0\,
      CO(2) => \temp0__23_carry_n_1\,
      CO(1) => \temp0__23_carry_n_2\,
      CO(0) => \temp0__23_carry_n_3\,
      CYINIT => '0',
      DI(3) => \temp0__23_carry_i_1_n_0\,
      DI(2) => \temp0__23_carry_i_2_n_0\,
      DI(1) => \temp0__23_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => temp0(6 downto 3),
      S(3) => \temp0__23_carry_i_4_n_0\,
      S(2) => \temp0__23_carry_i_5_n_0\,
      S(1) => \temp0__23_carry_i_6_n_0\,
      S(0) => \temp0__23_carry_i_7_n_0\
    );
\temp0__23_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp0__23_carry_n_0\,
      CO(3) => \temp0__23_carry__0_n_0\,
      CO(2) => \temp0__23_carry__0_n_1\,
      CO(1) => \temp0__23_carry__0_n_2\,
      CO(0) => \temp0__23_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \temp0__23_carry__0_i_1_n_0\,
      DI(2) => \temp0__23_carry__0_i_2_n_0\,
      DI(1) => \temp0__23_carry__0_i_3_n_0\,
      DI(0) => \temp0__23_carry__0_i_4_n_0\,
      O(3 downto 0) => temp0(10 downto 7),
      S(3) => \temp0__23_carry__0_i_5_n_0\,
      S(2) => \temp0__23_carry__0_i_6_n_0\,
      S(1) => \temp0__23_carry__0_i_7_n_0\,
      S(0) => \temp0__23_carry__0_i_8_n_0\
    );
\temp0__23_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => pixel_data_565(3),
      I1 => \temp0_carry__1_n_7\,
      I2 => pixel_data_565(1),
      O => \temp0__23_carry__0_i_1_n_0\
    );
\temp0__23_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => pixel_data_565(2),
      I1 => \temp0_carry__0_n_4\,
      I2 => pixel_data_565(0),
      O => \temp0__23_carry__0_i_2_n_0\
    );
\temp0__23_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => pixel_data_565(1),
      I1 => \temp0_carry__0_n_5\,
      I2 => pixel_data_565(4),
      O => \temp0__23_carry__0_i_3_n_0\
    );
\temp0__23_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => pixel_data_565(0),
      I1 => \temp0_carry__0_n_6\,
      I2 => pixel_data_565(3),
      O => \temp0__23_carry__0_i_4_n_0\
    );
\temp0__23_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => pixel_data_565(1),
      I1 => \temp0_carry__1_n_7\,
      I2 => pixel_data_565(3),
      I3 => pixel_data_565(4),
      I4 => \temp0_carry__1_n_2\,
      I5 => pixel_data_565(2),
      O => \temp0__23_carry__0_i_5_n_0\
    );
\temp0__23_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => pixel_data_565(0),
      I1 => \temp0_carry__0_n_4\,
      I2 => pixel_data_565(2),
      I3 => pixel_data_565(3),
      I4 => \temp0_carry__1_n_7\,
      I5 => pixel_data_565(1),
      O => \temp0__23_carry__0_i_6_n_0\
    );
\temp0__23_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => pixel_data_565(4),
      I1 => \temp0_carry__0_n_5\,
      I2 => pixel_data_565(1),
      I3 => pixel_data_565(2),
      I4 => \temp0_carry__0_n_4\,
      I5 => pixel_data_565(0),
      O => \temp0__23_carry__0_i_7_n_0\
    );
\temp0__23_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => pixel_data_565(3),
      I1 => \temp0_carry__0_n_6\,
      I2 => pixel_data_565(0),
      I3 => pixel_data_565(1),
      I4 => \temp0_carry__0_n_5\,
      I5 => pixel_data_565(4),
      O => \temp0__23_carry__0_i_8_n_0\
    );
\temp0__23_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp0__23_carry__0_n_0\,
      CO(3 downto 1) => \NLW_temp0__23_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \temp0__23_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \temp0__23_carry__1_i_1_n_0\,
      O(3 downto 2) => \NLW_temp0__23_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => temp0(12 downto 11),
      S(3 downto 2) => B"00",
      S(1) => \temp0__23_carry__1_i_2_n_0\,
      S(0) => \temp0__23_carry__1_i_3_n_0\
    );
\temp0__23_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => pixel_data_565(4),
      I1 => \temp0_carry__1_n_2\,
      I2 => pixel_data_565(2),
      O => \temp0__23_carry__1_i_1_n_0\
    );
\temp0__23_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => pixel_data_565(3),
      I1 => pixel_data_565(4),
      O => \temp0__23_carry__1_i_2_n_0\
    );
\temp0__23_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8E71"
    )
        port map (
      I0 => pixel_data_565(2),
      I1 => \temp0_carry__1_n_2\,
      I2 => pixel_data_565(4),
      I3 => pixel_data_565(3),
      O => \temp0__23_carry__1_i_3_n_0\
    );
\temp0__23_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => pixel_data_565(4),
      I1 => \temp0_carry__0_n_7\,
      I2 => pixel_data_565(2),
      O => \temp0__23_carry_i_1_n_0\
    );
\temp0__23_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => pixel_data_565(4),
      I1 => \temp0_carry__0_n_7\,
      I2 => pixel_data_565(2),
      O => \temp0__23_carry_i_2_n_0\
    );
\temp0__23_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => temp0_carry_n_5,
      I1 => pixel_data_565(2),
      O => \temp0__23_carry_i_3_n_0\
    );
\temp0__23_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => pixel_data_565(2),
      I1 => \temp0_carry__0_n_7\,
      I2 => pixel_data_565(4),
      I3 => pixel_data_565(0),
      I4 => \temp0_carry__0_n_6\,
      I5 => pixel_data_565(3),
      O => \temp0__23_carry_i_4_n_0\
    );
\temp0__23_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => pixel_data_565(4),
      I1 => \temp0_carry__0_n_7\,
      I2 => pixel_data_565(2),
      I3 => pixel_data_565(3),
      I4 => temp0_carry_n_4,
      O => \temp0__23_carry_i_5_n_0\
    );
\temp0__23_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => pixel_data_565(2),
      I1 => temp0_carry_n_5,
      I2 => temp0_carry_n_4,
      I3 => pixel_data_565(3),
      O => \temp0__23_carry_i_6_n_0\
    );
\temp0__23_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_data_565(2),
      I1 => temp0_carry_n_5,
      O => \temp0__23_carry_i_7_n_0\
    );
temp0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => temp0_carry_n_0,
      CO(2) => temp0_carry_n_1,
      CO(1) => temp0_carry_n_2,
      CO(0) => temp0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => pixel_data_565(1 downto 0),
      DI(1) => pixel_data_565(4),
      DI(0) => '0',
      O(3) => temp0_carry_n_4,
      O(2) => temp0_carry_n_5,
      O(1 downto 0) => temp0(2 downto 1),
      S(3) => temp0_carry_i_1_n_0,
      S(2) => temp0_carry_i_2_n_0,
      S(1) => temp0_carry_i_3_n_0,
      S(0) => pixel_data_565(3)
    );
\temp0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => temp0_carry_n_0,
      CO(3) => \temp0_carry__0_n_0\,
      CO(2) => \temp0_carry__0_n_1\,
      CO(1) => \temp0_carry__0_n_2\,
      CO(0) => \temp0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => pixel_data_565(4 downto 2),
      O(3) => \temp0_carry__0_n_4\,
      O(2) => \temp0_carry__0_n_5\,
      O(1) => \temp0_carry__0_n_6\,
      O(0) => \temp0_carry__0_n_7\,
      S(3) => pixel_data_565(3),
      S(2) => \temp0_carry__0_i_1_n_0\,
      S(1) => \temp0_carry__0_i_2_n_0\,
      S(0) => \temp0_carry__0_i_3_n_0\
    );
\temp0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_data_565(4),
      I1 => pixel_data_565(2),
      O => \temp0_carry__0_i_1_n_0\
    );
\temp0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_data_565(3),
      I1 => pixel_data_565(1),
      O => \temp0_carry__0_i_2_n_0\
    );
\temp0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_data_565(2),
      I1 => pixel_data_565(0),
      O => \temp0_carry__0_i_3_n_0\
    );
\temp0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_temp0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \temp0_carry__1_n_2\,
      CO(0) => \NLW_temp0_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_temp0_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \temp0_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => pixel_data_565(4)
    );
temp0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_data_565(1),
      I1 => pixel_data_565(4),
      O => temp0_carry_i_1_n_0
    );
temp0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_data_565(0),
      I1 => pixel_data_565(3),
      O => temp0_carry_i_2_n_0
    );
temp0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_data_565(4),
      I1 => pixel_data_565(2),
      O => temp0_carry_i_3_n_0
    );
\temp1__24_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \temp1__24_carry_n_0\,
      CO(2) => \temp1__24_carry_n_1\,
      CO(1) => \temp1__24_carry_n_2\,
      CO(0) => \temp1__24_carry_n_3\,
      CYINIT => '0',
      DI(3) => \temp1_carry__0_n_7\,
      DI(2) => temp1_carry_n_4,
      DI(1) => temp1_carry_n_5,
      DI(0) => '0',
      O(3) => \temp1__24_carry_n_4\,
      O(2) => \temp1__24_carry_n_5\,
      O(1) => \temp1__24_carry_n_6\,
      O(0) => \temp1__24_carry_n_7\,
      S(3) => \temp1__24_carry_i_1_n_0\,
      S(2) => \temp1__24_carry_i_2_n_0\,
      S(1) => \temp1__24_carry_i_3_n_0\,
      S(0) => temp1_carry_n_6
    );
\temp1__24_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp1__24_carry_n_0\,
      CO(3) => \temp1__24_carry__0_n_0\,
      CO(2) => \temp1__24_carry__0_n_1\,
      CO(1) => \temp1__24_carry__0_n_2\,
      CO(0) => \temp1__24_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \temp1__24_carry__0_i_1_n_0\,
      DI(2) => \temp1__24_carry__0_i_2_n_0\,
      DI(1) => \temp1__24_carry__0_i_3_n_0\,
      DI(0) => pixel_data_565(13),
      O(3) => \temp1__24_carry__0_n_4\,
      O(2) => \temp1__24_carry__0_n_5\,
      O(1) => \temp1__24_carry__0_n_6\,
      O(0) => \temp1__24_carry__0_n_7\,
      S(3) => \temp1__24_carry__0_i_4_n_0\,
      S(2) => \temp1__24_carry__0_i_5_n_0\,
      S(1) => \temp1__24_carry__0_i_6_n_0\,
      S(0) => \temp1__24_carry__0_i_7_n_0\
    );
\temp1__24_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => pixel_data_565(13),
      I1 => \temp1_carry__0_n_4\,
      I2 => pixel_data_565(15),
      O => \temp1__24_carry__0_i_1_n_0\
    );
\temp1__24_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => pixel_data_565(12),
      I1 => \temp1_carry__0_n_5\,
      I2 => pixel_data_565(14),
      O => \temp1__24_carry__0_i_2_n_0\
    );
\temp1__24_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => pixel_data_565(14),
      I1 => pixel_data_565(12),
      I2 => \temp1_carry__0_n_5\,
      O => \temp1__24_carry__0_i_3_n_0\
    );
\temp1__24_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => pixel_data_565(14),
      I1 => \temp1_carry__1_n_7\,
      I2 => pixel_data_565(11),
      I3 => \temp1__24_carry__0_i_1_n_0\,
      O => \temp1__24_carry__0_i_4_n_0\
    );
\temp1__24_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => pixel_data_565(13),
      I1 => \temp1_carry__0_n_4\,
      I2 => pixel_data_565(15),
      I3 => \temp1__24_carry__0_i_2_n_0\,
      O => \temp1__24_carry__0_i_5_n_0\
    );
\temp1__24_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => pixel_data_565(12),
      I1 => \temp1_carry__0_n_5\,
      I2 => pixel_data_565(14),
      I3 => \temp1_carry__0_n_6\,
      I4 => pixel_data_565(11),
      O => \temp1__24_carry__0_i_6_n_0\
    );
\temp1__24_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => pixel_data_565(11),
      I1 => \temp1_carry__0_n_6\,
      I2 => pixel_data_565(13),
      O => \temp1__24_carry__0_i_7_n_0\
    );
\temp1__24_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp1__24_carry__0_n_0\,
      CO(3) => \temp1__24_carry__1_n_0\,
      CO(2) => \temp1__24_carry__1_n_1\,
      CO(1) => \temp1__24_carry__1_n_2\,
      CO(0) => \temp1__24_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => pixel_data_565(13),
      DI(0) => \temp1__24_carry__1_i_1_n_0\,
      O(3) => \temp1__24_carry__1_n_4\,
      O(2) => \temp1__24_carry__1_n_5\,
      O(1) => \temp1__24_carry__1_n_6\,
      O(0) => \temp1__24_carry__1_n_7\,
      S(3 downto 2) => pixel_data_565(15 downto 14),
      S(1) => \temp1__24_carry__1_i_2_n_0\,
      S(0) => \temp1__24_carry__1_i_3_n_0\
    );
\temp1__24_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => pixel_data_565(14),
      I1 => \temp1_carry__1_n_7\,
      I2 => pixel_data_565(11),
      O => \temp1__24_carry__1_i_1_n_0\
    );
\temp1__24_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => pixel_data_565(12),
      I1 => \temp1_carry__1_n_2\,
      I2 => pixel_data_565(15),
      I3 => pixel_data_565(13),
      O => \temp1__24_carry__1_i_2_n_0\
    );
\temp1__24_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \temp1__24_carry__1_i_1_n_0\,
      I1 => \temp1_carry__1_n_2\,
      I2 => pixel_data_565(15),
      I3 => pixel_data_565(12),
      O => \temp1__24_carry__1_i_3_n_0\
    );
\temp1__24_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \temp1_carry__0_n_7\,
      I1 => pixel_data_565(15),
      O => \temp1__24_carry_i_1_n_0\
    );
\temp1__24_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp1_carry_n_4,
      I1 => pixel_data_565(14),
      O => \temp1__24_carry_i_2_n_0\
    );
\temp1__24_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp1_carry_n_5,
      I1 => pixel_data_565(13),
      O => \temp1__24_carry_i_3_n_0\
    );
temp1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => temp1_carry_n_0,
      CO(2) => temp1_carry_n_1,
      CO(1) => temp1_carry_n_2,
      CO(0) => temp1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => pixel_data_565(12 downto 11),
      DI(1) => pixel_data_565(15),
      DI(0) => '0',
      O(3) => temp1_carry_n_4,
      O(2) => temp1_carry_n_5,
      O(1) => temp1_carry_n_6,
      O(0) => temp1_carry_n_7,
      S(3) => temp1_carry_i_1_n_0,
      S(2) => temp1_carry_i_2_n_0,
      S(1) => temp1_carry_i_3_n_0,
      S(0) => pixel_data_565(14)
    );
\temp1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => temp1_carry_n_0,
      CO(3) => \temp1_carry__0_n_0\,
      CO(2) => \temp1_carry__0_n_1\,
      CO(1) => \temp1_carry__0_n_2\,
      CO(0) => \temp1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => pixel_data_565(15 downto 13),
      O(3) => \temp1_carry__0_n_4\,
      O(2) => \temp1_carry__0_n_5\,
      O(1) => \temp1_carry__0_n_6\,
      O(0) => \temp1_carry__0_n_7\,
      S(3) => pixel_data_565(14),
      S(2) => \temp1_carry__0_i_1_n_0\,
      S(1) => \temp1_carry__0_i_2_n_0\,
      S(0) => \temp1_carry__0_i_3_n_0\
    );
\temp1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_data_565(15),
      I1 => pixel_data_565(13),
      O => \temp1_carry__0_i_1_n_0\
    );
\temp1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_data_565(14),
      I1 => pixel_data_565(12),
      O => \temp1_carry__0_i_2_n_0\
    );
\temp1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_data_565(13),
      I1 => pixel_data_565(11),
      O => \temp1_carry__0_i_3_n_0\
    );
\temp1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp1_carry__0_n_0\,
      CO(3 downto 2) => \NLW_temp1_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \temp1_carry__1_n_2\,
      CO(0) => \NLW_temp1_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_temp1_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \temp1_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => pixel_data_565(15)
    );
temp1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_data_565(12),
      I1 => pixel_data_565(15),
      O => temp1_carry_i_1_n_0
    );
temp1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_data_565(11),
      I1 => pixel_data_565(14),
      O => temp1_carry_i_2_n_0
    );
temp1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_data_565(15),
      I1 => pixel_data_565(13),
      O => temp1_carry_i_3_n_0
    );
\temp1_inferred__0/i___27_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \temp1_inferred__0/i___27_carry_n_0\,
      CO(2) => \temp1_inferred__0/i___27_carry_n_1\,
      CO(1) => \temp1_inferred__0/i___27_carry_n_2\,
      CO(0) => \temp1_inferred__0/i___27_carry_n_3\,
      CYINIT => '0',
      DI(3) => \temp1_inferred__0/i__carry__0_n_6\,
      DI(2) => \temp1_inferred__0/i__carry__0_n_7\,
      DI(1) => \temp1_inferred__0/i__carry_n_4\,
      DI(0) => '0',
      O(3 downto 0) => temp1(6 downto 3),
      S(3) => \i___27_carry_i_1_n_0\,
      S(2) => \i___27_carry_i_2_n_0\,
      S(1) => \i___27_carry_i_3_n_0\,
      S(0) => \temp1_inferred__0/i__carry_n_5\
    );
\temp1_inferred__0/i___27_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp1_inferred__0/i___27_carry_n_0\,
      CO(3) => \temp1_inferred__0/i___27_carry__0_n_0\,
      CO(2) => \temp1_inferred__0/i___27_carry__0_n_1\,
      CO(1) => \temp1_inferred__0/i___27_carry__0_n_2\,
      CO(0) => \temp1_inferred__0/i___27_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i___27_carry__0_i_1_n_0\,
      DI(2) => \i___27_carry__0_i_2_n_0\,
      DI(1) => \i___27_carry__0_i_3_n_0\,
      DI(0) => pixel_data_565(9),
      O(3 downto 0) => temp1(10 downto 7),
      S(3) => \i___27_carry__0_i_4_n_0\,
      S(2) => \i___27_carry__0_i_5_n_0\,
      S(1) => \i___27_carry__0_i_6_n_0\,
      S(0) => \i___27_carry__0_i_7_n_0\
    );
\temp1_inferred__0/i___27_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp1_inferred__0/i___27_carry__0_n_0\,
      CO(3) => \temp1_inferred__0/i___27_carry__1_n_0\,
      CO(2) => \temp1_inferred__0/i___27_carry__1_n_1\,
      CO(1) => \temp1_inferred__0/i___27_carry__1_n_2\,
      CO(0) => \temp1_inferred__0/i___27_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i___27_carry__1_i_1_n_0\,
      DI(2) => \i___27_carry__1_i_2_n_0\,
      DI(1) => \i___27_carry__1_i_3_n_0\,
      DI(0) => \i___27_carry__1_i_4_n_0\,
      O(3 downto 0) => temp1(14 downto 11),
      S(3) => \i___27_carry__1_i_5_n_0\,
      S(2) => \i___27_carry__1_i_6_n_0\,
      S(1) => \i___27_carry__1_i_7_n_0\,
      S(0) => \i___27_carry__1_i_8_n_0\
    );
\temp1_inferred__0/i___27_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp1_inferred__0/i___27_carry__1_n_0\,
      CO(3 downto 0) => \NLW_temp1_inferred__0/i___27_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_temp1_inferred__0/i___27_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => temp1(15),
      S(3 downto 1) => B"000",
      S(0) => \i___27_carry__2_i_1_n_0\
    );
\temp1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \temp1_inferred__0/i__carry_n_0\,
      CO(2) => \temp1_inferred__0/i__carry_n_1\,
      CO(1) => \temp1_inferred__0/i__carry_n_2\,
      CO(0) => \temp1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => pixel_data_565(10 downto 9),
      DI(1 downto 0) => B"01",
      O(3) => \temp1_inferred__0/i__carry_n_4\,
      O(2) => \temp1_inferred__0/i__carry_n_5\,
      O(1 downto 0) => temp1(2 downto 1),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => pixel_data_565(9)
    );
\temp1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp1_inferred__0/i__carry_n_0\,
      CO(3) => \temp1_inferred__0/i__carry__0_n_0\,
      CO(2) => \temp1_inferred__0/i__carry__0_n_1\,
      CO(1) => \temp1_inferred__0/i__carry__0_n_2\,
      CO(0) => \temp1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pixel_data_565(8 downto 5),
      O(3) => \temp1_inferred__0/i__carry__0_n_4\,
      O(2) => \temp1_inferred__0/i__carry__0_n_5\,
      O(1) => \temp1_inferred__0/i__carry__0_n_6\,
      O(0) => \temp1_inferred__0/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\temp1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp1_inferred__0/i__carry__0_n_0\,
      CO(3) => \NLW_temp1_inferred__0/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => \temp1_inferred__0/i__carry__1_n_1\,
      CO(1) => \NLW_temp1_inferred__0/i__carry__1_CO_UNCONNECTED\(1),
      CO(0) => \temp1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => pixel_data_565(10 downto 9),
      O(3 downto 2) => \NLW_temp1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \temp1_inferred__0/i__carry__1_n_6\,
      O(0) => \temp1_inferred__0/i__carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \i__carry__1_i_1_n_0\,
      S(0) => \i__carry__1_i_2_n_0\
    );
\temp__41_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \temp__41_carry_n_0\,
      CO(2) => \temp__41_carry_n_1\,
      CO(1) => \temp__41_carry_n_2\,
      CO(0) => \temp__41_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => temp1(4 downto 1),
      O(3 downto 0) => \NLW_temp__41_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \temp__41_carry_i_1_n_0\,
      S(2) => \temp__41_carry_i_2_n_0\,
      S(1) => \temp__41_carry_i_3_n_0\,
      S(0) => \temp__41_carry_i_4_n_0\
    );
\temp__41_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp__41_carry_n_0\,
      CO(3) => \temp__41_carry__0_n_0\,
      CO(2) => \temp__41_carry__0_n_1\,
      CO(1) => \temp__41_carry__0_n_2\,
      CO(0) => \temp__41_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => temp1(8 downto 5),
      O(3) => p_0_in(0),
      O(2 downto 0) => \NLW_temp__41_carry__0_O_UNCONNECTED\(2 downto 0),
      S(3) => \temp__41_carry_i_1__0_n_0\,
      S(2) => \temp__41_carry_i_2__0_n_0\,
      S(1) => \temp__41_carry_i_3__0_n_0\,
      S(0) => \temp__41_carry_i_4__0_n_0\
    );
\temp__41_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp__41_carry__0_n_0\,
      CO(3) => \temp__41_carry__1_n_0\,
      CO(2) => \temp__41_carry__1_n_1\,
      CO(1) => \temp__41_carry__1_n_2\,
      CO(0) => \temp__41_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => temp1(12 downto 9),
      O(3 downto 0) => p_0_in(4 downto 1),
      S(3) => \temp__41_carry_i_1__1_n_0\,
      S(2) => \temp__41_carry_i_2__1_n_0\,
      S(1) => \temp__41_carry_i_3__1_n_0\,
      S(0) => \temp__41_carry_i_4__1_n_0\
    );
\temp__41_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp__41_carry__1_n_0\,
      CO(3 downto 2) => \NLW_temp__41_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \temp__41_carry__2_n_2\,
      CO(0) => \temp__41_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => temp1(14 downto 13),
      O(3) => \NLW_temp__41_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => p_0_in(7 downto 5),
      S(3) => '0',
      S(2) => \temp__41_carry_i_1__2_n_0\,
      S(1) => \temp__41_carry_i_2__2_n_0\,
      S(0) => \temp__41_carry_i_3__2_n_0\
    );
\temp__41_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp1(4),
      I1 => C(4),
      O => \temp__41_carry_i_1_n_0\
    );
\temp__41_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp1(8),
      I1 => C(8),
      O => \temp__41_carry_i_1__0_n_0\
    );
\temp__41_carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp1(12),
      I1 => C(12),
      O => \temp__41_carry_i_1__1_n_0\
    );
\temp__41_carry_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp1(15),
      I1 => \temp_carry__2_n_0\,
      O => \temp__41_carry_i_1__2_n_0\
    );
\temp__41_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp1(3),
      I1 => C(3),
      O => \temp__41_carry_i_2_n_0\
    );
\temp__41_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp1(7),
      I1 => C(7),
      O => \temp__41_carry_i_2__0_n_0\
    );
\temp__41_carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp1(11),
      I1 => C(11),
      O => \temp__41_carry_i_2__1_n_0\
    );
\temp__41_carry_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp1(14),
      I1 => C(14),
      O => \temp__41_carry_i_2__2_n_0\
    );
\temp__41_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp1(2),
      I1 => C(2),
      O => \temp__41_carry_i_3_n_0\
    );
\temp__41_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp1(6),
      I1 => C(6),
      O => \temp__41_carry_i_3__0_n_0\
    );
\temp__41_carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp1(10),
      I1 => C(10),
      O => \temp__41_carry_i_3__1_n_0\
    );
\temp__41_carry_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp1(13),
      I1 => C(13),
      O => \temp__41_carry_i_3__2_n_0\
    );
\temp__41_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp1(1),
      I1 => C(1),
      O => \temp__41_carry_i_4_n_0\
    );
\temp__41_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp1(5),
      I1 => C(5),
      O => \temp__41_carry_i_4__0_n_0\
    );
\temp__41_carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp1(9),
      I1 => C(9),
      O => \temp__41_carry_i_4__1_n_0\
    );
temp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => temp_carry_n_0,
      CO(2) => temp_carry_n_1,
      CO(1) => temp_carry_n_2,
      CO(0) => temp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => temp0(3 downto 1),
      DI(0) => pixel_data_565(2),
      O(3 downto 1) => C(3 downto 1),
      O(0) => NLW_temp_carry_O_UNCONNECTED(0),
      S(3) => temp_carry_i_1_n_0,
      S(2) => temp_carry_i_2_n_0,
      S(1) => temp_carry_i_3_n_0,
      S(0) => temp_carry_i_4_n_0
    );
\temp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => temp_carry_n_0,
      CO(3) => \temp_carry__0_n_0\,
      CO(2) => \temp_carry__0_n_1\,
      CO(1) => \temp_carry__0_n_2\,
      CO(0) => \temp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => temp0(7 downto 4),
      O(3 downto 0) => C(7 downto 4),
      S(3) => \temp_carry__0_i_1_n_0\,
      S(2) => \temp_carry__0_i_2_n_0\,
      S(1) => \temp_carry__0_i_3_n_0\,
      S(0) => \temp_carry__0_i_4_n_0\
    );
\temp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp0(7),
      I1 => \temp1__24_carry__0_n_6\,
      O => \temp_carry__0_i_1_n_0\
    );
\temp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp0(6),
      I1 => \temp1__24_carry__0_n_7\,
      O => \temp_carry__0_i_2_n_0\
    );
\temp_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp0(5),
      I1 => \temp1__24_carry_n_4\,
      O => \temp_carry__0_i_3_n_0\
    );
\temp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp0(4),
      I1 => \temp1__24_carry_n_5\,
      O => \temp_carry__0_i_4_n_0\
    );
\temp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_carry__0_n_0\,
      CO(3) => \temp_carry__1_n_0\,
      CO(2) => \temp_carry__1_n_1\,
      CO(1) => \temp_carry__1_n_2\,
      CO(0) => \temp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => temp0(11 downto 8),
      O(3 downto 0) => C(11 downto 8),
      S(3) => \temp_carry__1_i_1_n_0\,
      S(2) => \temp_carry__1_i_2_n_0\,
      S(1) => \temp_carry__1_i_3_n_0\,
      S(0) => \temp_carry__1_i_4_n_0\
    );
\temp_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp0(11),
      I1 => \temp1__24_carry__1_n_6\,
      O => \temp_carry__1_i_1_n_0\
    );
\temp_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp0(10),
      I1 => \temp1__24_carry__1_n_7\,
      O => \temp_carry__1_i_2_n_0\
    );
\temp_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp0(9),
      I1 => \temp1__24_carry__0_n_4\,
      O => \temp_carry__1_i_3_n_0\
    );
\temp_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp0(8),
      I1 => \temp1__24_carry__0_n_5\,
      O => \temp_carry__1_i_4_n_0\
    );
\temp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_carry__1_n_0\,
      CO(3) => \temp_carry__2_n_0\,
      CO(2) => \NLW_temp_carry__2_CO_UNCONNECTED\(2),
      CO(1) => \temp_carry__2_n_2\,
      CO(0) => \temp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => temp0(12),
      O(3) => \NLW_temp_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => C(14 downto 12),
      S(3) => '1',
      S(2) => \temp_carry__2_i_1_n_3\,
      S(1) => \temp1__24_carry__1_n_4\,
      S(0) => \temp_carry__2_i_2_n_0\
    );
\temp_carry__2_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp1__24_carry__1_n_0\,
      CO(3 downto 1) => \NLW_temp_carry__2_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \temp_carry__2_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_temp_carry__2_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\temp_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp0(12),
      I1 => \temp1__24_carry__1_n_5\,
      O => \temp_carry__2_i_2_n_0\
    );
temp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp0(3),
      I1 => \temp1__24_carry_n_6\,
      O => temp_carry_i_1_n_0
    );
temp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp0(2),
      I1 => \temp1__24_carry_n_7\,
      O => temp_carry_i_2_n_0
    );
temp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => temp0(1),
      I1 => temp1_carry_n_7,
      O => temp_carry_i_3_n_0
    );
temp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_data_565(2),
      I1 => pixel_data_565(13),
      O => temp_carry_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rgb565_to_grayscale_8_0_0 is
  port (
    p_clk : in STD_LOGIC;
    pixel_data_565 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    input_valid : in STD_LOGIC;
    pixel_data_grayscale : out STD_LOGIC_VECTOR ( 7 downto 0 );
    output_valid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_rgb565_to_grayscale_8_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_rgb565_to_grayscale_8_0_0 : entity is "design_1_rgb565_to_grayscale_8_0_0,rgb565_to_grayscale_8,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_rgb565_to_grayscale_8_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_rgb565_to_grayscale_8_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_rgb565_to_grayscale_8_0_0 : entity is "rgb565_to_grayscale_8,Vivado 2025.2";
end design_1_rgb565_to_grayscale_8_0_0;

architecture STRUCTURE of design_1_rgb565_to_grayscale_8_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of p_clk : signal is "xilinx.com:signal:clock:1.0 p_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of p_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of p_clk : signal is "XIL_INTERFACENAME p_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
inst: entity work.design_1_rgb565_to_grayscale_8_0_0_rgb565_to_grayscale_8
     port map (
      input_valid => input_valid,
      output_valid => output_valid,
      p_clk => p_clk,
      pixel_data_565(15 downto 0) => pixel_data_565(15 downto 0),
      pixel_data_grayscale(7 downto 0) => pixel_data_grayscale(7 downto 0)
    );
end STRUCTURE;
