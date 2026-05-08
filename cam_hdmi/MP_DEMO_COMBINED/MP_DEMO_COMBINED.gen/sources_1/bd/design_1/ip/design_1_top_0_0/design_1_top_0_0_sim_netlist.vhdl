-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Thu May  7 04:39:49 2026
-- Host        : harun running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/harun/Documents/MP/MP_DEMO_COMBINED/MP_DEMO_COMBINED.gen/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_OV7670_config_FSM is
  port (
    SCCB_start : out STD_LOGIC;
    FSM_state : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \SCCB_interface_addr_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \SCCB_interface_data_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pixel_clk : in STD_LOGIC;
    \FSM_state_reg[0]_0\ : in STD_LOGIC;
    \timer_reg[1]_0\ : in STD_LOGIC;
    SCCB_ready : in STD_LOGIC;
    \timer_reg[1]_1\ : in STD_LOGIC;
    \FSM_state_reg[1]_0\ : in STD_LOGIC;
    \FSM_state_reg[1]_1\ : in STD_LOGIC;
    \timer_reg[0]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \rom_addr_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_OV7670_config_FSM : entity is "OV7670_config_FSM";
end design_1_top_0_0_OV7670_config_FSM;

architecture STRUCTURE of design_1_top_0_0_OV7670_config_FSM is
  signal \^fsm_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \FSM_state[1]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_state[1]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SCCB_interface_start_i_1_n_0 : STD_LOGIC;
  signal \^sccb_start\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rom_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \rom_addr[7]_i_4_n_0\ : STD_LOGIC;
  signal timer : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \timer1_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__0_n_1\ : STD_LOGIC;
  signal \timer1_carry__0_n_2\ : STD_LOGIC;
  signal \timer1_carry__0_n_3\ : STD_LOGIC;
  signal \timer1_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__1_n_0\ : STD_LOGIC;
  signal \timer1_carry__1_n_1\ : STD_LOGIC;
  signal \timer1_carry__1_n_2\ : STD_LOGIC;
  signal \timer1_carry__1_n_3\ : STD_LOGIC;
  signal \timer1_carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__2_n_0\ : STD_LOGIC;
  signal \timer1_carry__2_n_1\ : STD_LOGIC;
  signal \timer1_carry__2_n_2\ : STD_LOGIC;
  signal \timer1_carry__2_n_3\ : STD_LOGIC;
  signal \timer1_carry__3_i_1__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__3_i_2__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__3_i_3__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__3_i_4__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__3_n_0\ : STD_LOGIC;
  signal \timer1_carry__3_n_1\ : STD_LOGIC;
  signal \timer1_carry__3_n_2\ : STD_LOGIC;
  signal \timer1_carry__3_n_3\ : STD_LOGIC;
  signal \timer1_carry__4_i_1__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__4_i_2__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__4_i_3__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__4_i_4__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__4_n_0\ : STD_LOGIC;
  signal \timer1_carry__4_n_1\ : STD_LOGIC;
  signal \timer1_carry__4_n_2\ : STD_LOGIC;
  signal \timer1_carry__4_n_3\ : STD_LOGIC;
  signal \timer1_carry__5_i_1__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__5_i_2__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__5_i_3__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__5_i_4__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__5_n_0\ : STD_LOGIC;
  signal \timer1_carry__5_n_1\ : STD_LOGIC;
  signal \timer1_carry__5_n_2\ : STD_LOGIC;
  signal \timer1_carry__5_n_3\ : STD_LOGIC;
  signal \timer1_carry__6_i_1__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__6_i_2__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__6_i_3__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__6_n_2\ : STD_LOGIC;
  signal \timer1_carry__6_n_3\ : STD_LOGIC;
  signal \timer1_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \timer1_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \timer1_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \timer1_carry_i_4__0_n_0\ : STD_LOGIC;
  signal timer1_carry_n_0 : STD_LOGIC;
  signal timer1_carry_n_1 : STD_LOGIC;
  signal timer1_carry_n_2 : STD_LOGIC;
  signal timer1_carry_n_3 : STD_LOGIC;
  signal \timer[0]_i_1_n_0\ : STD_LOGIC;
  signal \timer[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \timer[12]_i_1_n_0\ : STD_LOGIC;
  signal \timer[14]_i_1_n_0\ : STD_LOGIC;
  signal \timer[16]_i_1_n_0\ : STD_LOGIC;
  signal \timer[17]_i_1_n_0\ : STD_LOGIC;
  signal \timer[19]_i_1_n_0\ : STD_LOGIC;
  signal \timer[19]_i_2_n_0\ : STD_LOGIC;
  signal \timer[2]_i_1_n_0\ : STD_LOGIC;
  signal \timer[31]_i_11_n_0\ : STD_LOGIC;
  signal \timer[31]_i_12_n_0\ : STD_LOGIC;
  signal \timer[31]_i_1_n_0\ : STD_LOGIC;
  signal \timer[31]_i_2_n_0\ : STD_LOGIC;
  signal \timer[31]_i_3_n_0\ : STD_LOGIC;
  signal \timer[31]_i_5_n_0\ : STD_LOGIC;
  signal \timer[31]_i_6_n_0\ : STD_LOGIC;
  signal \timer[31]_i_7_n_0\ : STD_LOGIC;
  signal \timer[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \timer[6]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_timer1_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_timer1_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_state[1]_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rom_addr[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rom_addr[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rom_addr[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rom_addr[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rom_addr[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rom_addr[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rom_addr[7]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rom_addr[7]_i_4\ : label is "soft_lutpair10";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of timer1_carry : label is 35;
  attribute ADDER_THRESHOLD of \timer1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \timer1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \timer1_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \timer1_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \timer1_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \timer1_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \timer1_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \timer[10]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \timer[12]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \timer[14]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \timer[16]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \timer[17]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \timer[19]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \timer[31]_i_11\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \timer[5]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \timer[6]_i_1\ : label is "soft_lutpair16";
begin
  FSM_state(1 downto 0) <= \^fsm_state\(1 downto 0);
  Q(7 downto 0) <= \^q\(7 downto 0);
  SCCB_start <= \^sccb_start\;
\FSM_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA8A8A800AAAAAA"
    )
        port map (
      I0 => \^fsm_state\(0),
      I1 => timer(0),
      I2 => \FSM_state[1]_i_2_n_0\,
      I3 => \FSM_state_reg[1]_0\,
      I4 => \FSM_state_reg[1]_1\,
      I5 => \^fsm_state\(1),
      O => \FSM_state[1]_i_1_n_0\
    );
\FSM_state[1]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer(20),
      I1 => timer(21),
      I2 => timer(19),
      I3 => timer(18),
      O => \FSM_state[1]_i_13_n_0\
    );
\FSM_state[1]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer(13),
      I1 => timer(12),
      I2 => timer(10),
      I3 => timer(11),
      O => \FSM_state[1]_i_14_n_0\
    );
\FSM_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_state[1]_i_5_n_0\,
      I1 => timer(30),
      I2 => timer(31),
      I3 => timer(1),
      I4 => \FSM_state[1]_i_6_n_0\,
      I5 => \FSM_state[1]_i_7_n_0\,
      O => \FSM_state[1]_i_2_n_0\
    );
\FSM_state[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => timer(24),
      I1 => timer(23),
      I2 => timer(22),
      I3 => timer(25),
      I4 => \FSM_state[1]_i_13_n_0\,
      O => \FSM_state[1]_i_5_n_0\
    );
\FSM_state[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer(28),
      I1 => timer(29),
      I2 => timer(26),
      I3 => timer(27),
      O => \FSM_state[1]_i_6_n_0\
    );
\FSM_state[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_state[1]_i_14_n_0\,
      I1 => timer(16),
      I2 => timer(14),
      I3 => timer(15),
      I4 => timer(17),
      I5 => \timer[31]_i_6_n_0\,
      O => \FSM_state[1]_i_7_n_0\
    );
\FSM_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => '1',
      D => \FSM_state_reg[0]_0\,
      Q => \^fsm_state\(0),
      R => '0'
    );
\FSM_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => '1',
      D => \FSM_state[1]_i_1_n_0\,
      Q => \^fsm_state\(1),
      R => '0'
    );
\SCCB_interface_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \out\(8),
      Q => \SCCB_interface_addr_reg[7]_0\(0),
      R => '0'
    );
\SCCB_interface_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \out\(9),
      Q => \SCCB_interface_addr_reg[7]_0\(1),
      R => '0'
    );
\SCCB_interface_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \out\(10),
      Q => \SCCB_interface_addr_reg[7]_0\(2),
      R => '0'
    );
\SCCB_interface_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \out\(11),
      Q => \SCCB_interface_addr_reg[7]_0\(3),
      R => '0'
    );
\SCCB_interface_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \out\(12),
      Q => \SCCB_interface_addr_reg[7]_0\(4),
      R => '0'
    );
\SCCB_interface_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \out\(13),
      Q => \SCCB_interface_addr_reg[7]_0\(5),
      R => '0'
    );
\SCCB_interface_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \out\(14),
      Q => \SCCB_interface_addr_reg[7]_0\(6),
      R => '0'
    );
\SCCB_interface_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \out\(15),
      Q => \SCCB_interface_addr_reg[7]_0\(7),
      R => '0'
    );
\SCCB_interface_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \out\(0),
      Q => \SCCB_interface_data_reg[7]_0\(0),
      R => '0'
    );
\SCCB_interface_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \out\(1),
      Q => \SCCB_interface_data_reg[7]_0\(1),
      R => '0'
    );
\SCCB_interface_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \out\(2),
      Q => \SCCB_interface_data_reg[7]_0\(2),
      R => '0'
    );
\SCCB_interface_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \out\(3),
      Q => \SCCB_interface_data_reg[7]_0\(3),
      R => '0'
    );
\SCCB_interface_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \out\(4),
      Q => \SCCB_interface_data_reg[7]_0\(4),
      R => '0'
    );
\SCCB_interface_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \out\(5),
      Q => \SCCB_interface_data_reg[7]_0\(5),
      R => '0'
    );
\SCCB_interface_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \out\(6),
      Q => \SCCB_interface_data_reg[7]_0\(6),
      R => '0'
    );
\SCCB_interface_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => E(0),
      D => \out\(7),
      Q => \SCCB_interface_data_reg[7]_0\(7),
      R => '0'
    );
SCCB_interface_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AABAAAAAAAAA"
    )
        port map (
      I0 => \^sccb_start\,
      I1 => \timer_reg[1]_0\,
      I2 => SCCB_ready,
      I3 => \timer_reg[1]_1\,
      I4 => \^fsm_state\(1),
      I5 => \^fsm_state\(0),
      O => SCCB_interface_start_i_1_n_0
    );
SCCB_interface_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => '1',
      D => SCCB_interface_start_i_1_n_0,
      Q => \^sccb_start\,
      R => '0'
    );
\rom_addr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => p_0_in(0)
    );
\rom_addr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => p_0_in(1)
    );
\rom_addr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => p_0_in(2)
    );
\rom_addr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => p_0_in(3)
    );
\rom_addr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => p_0_in(4)
    );
\rom_addr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => p_0_in(5)
    );
\rom_addr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(6),
      I1 => \rom_addr[7]_i_4_n_0\,
      I2 => \^q\(5),
      O => p_0_in(6)
    );
\rom_addr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^fsm_state\(0),
      I1 => \^fsm_state\(1),
      O => \rom_addr[7]_i_1_n_0\
    );
\rom_addr[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \rom_addr[7]_i_4_n_0\,
      I3 => \^q\(6),
      O => p_0_in(7)
    );
\rom_addr[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \rom_addr[7]_i_4_n_0\
    );
\rom_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \rom_addr_reg[0]_0\(0),
      D => p_0_in(0),
      Q => \^q\(0),
      R => \rom_addr[7]_i_1_n_0\
    );
\rom_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \rom_addr_reg[0]_0\(0),
      D => p_0_in(1),
      Q => \^q\(1),
      R => \rom_addr[7]_i_1_n_0\
    );
\rom_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \rom_addr_reg[0]_0\(0),
      D => p_0_in(2),
      Q => \^q\(2),
      R => \rom_addr[7]_i_1_n_0\
    );
\rom_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \rom_addr_reg[0]_0\(0),
      D => p_0_in(3),
      Q => \^q\(3),
      R => \rom_addr[7]_i_1_n_0\
    );
\rom_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \rom_addr_reg[0]_0\(0),
      D => p_0_in(4),
      Q => \^q\(4),
      R => \rom_addr[7]_i_1_n_0\
    );
\rom_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \rom_addr_reg[0]_0\(0),
      D => p_0_in(5),
      Q => \^q\(5),
      R => \rom_addr[7]_i_1_n_0\
    );
\rom_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \rom_addr_reg[0]_0\(0),
      D => p_0_in(6),
      Q => \^q\(6),
      R => \rom_addr[7]_i_1_n_0\
    );
\rom_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \rom_addr_reg[0]_0\(0),
      D => p_0_in(7),
      Q => \^q\(7),
      R => \rom_addr[7]_i_1_n_0\
    );
timer1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => timer1_carry_n_0,
      CO(2) => timer1_carry_n_1,
      CO(1) => timer1_carry_n_2,
      CO(0) => timer1_carry_n_3,
      CYINIT => timer(0),
      DI(3 downto 0) => timer(4 downto 1),
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \timer1_carry_i_1__0_n_0\,
      S(2) => \timer1_carry_i_2__0_n_0\,
      S(1) => \timer1_carry_i_3__0_n_0\,
      S(0) => \timer1_carry_i_4__0_n_0\
    );
\timer1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => timer1_carry_n_0,
      CO(3) => \timer1_carry__0_n_0\,
      CO(2) => \timer1_carry__0_n_1\,
      CO(1) => \timer1_carry__0_n_2\,
      CO(0) => \timer1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => timer(8 downto 5),
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \timer1_carry__0_i_1__0_n_0\,
      S(2) => \timer1_carry__0_i_2__0_n_0\,
      S(1) => \timer1_carry__0_i_3__0_n_0\,
      S(0) => \timer1_carry__0_i_4__0_n_0\
    );
\timer1_carry__0_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(8),
      O => \timer1_carry__0_i_1__0_n_0\
    );
\timer1_carry__0_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(7),
      O => \timer1_carry__0_i_2__0_n_0\
    );
\timer1_carry__0_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(6),
      O => \timer1_carry__0_i_3__0_n_0\
    );
\timer1_carry__0_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(5),
      O => \timer1_carry__0_i_4__0_n_0\
    );
\timer1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer1_carry__0_n_0\,
      CO(3) => \timer1_carry__1_n_0\,
      CO(2) => \timer1_carry__1_n_1\,
      CO(1) => \timer1_carry__1_n_2\,
      CO(0) => \timer1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => timer(12 downto 9),
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \timer1_carry__1_i_1__0_n_0\,
      S(2) => \timer1_carry__1_i_2__0_n_0\,
      S(1) => \timer1_carry__1_i_3__0_n_0\,
      S(0) => \timer1_carry__1_i_4__0_n_0\
    );
\timer1_carry__1_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(12),
      O => \timer1_carry__1_i_1__0_n_0\
    );
\timer1_carry__1_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(11),
      O => \timer1_carry__1_i_2__0_n_0\
    );
\timer1_carry__1_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(10),
      O => \timer1_carry__1_i_3__0_n_0\
    );
\timer1_carry__1_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(9),
      O => \timer1_carry__1_i_4__0_n_0\
    );
\timer1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer1_carry__1_n_0\,
      CO(3) => \timer1_carry__2_n_0\,
      CO(2) => \timer1_carry__2_n_1\,
      CO(1) => \timer1_carry__2_n_2\,
      CO(0) => \timer1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => timer(16 downto 13),
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \timer1_carry__2_i_1__0_n_0\,
      S(2) => \timer1_carry__2_i_2__0_n_0\,
      S(1) => \timer1_carry__2_i_3__0_n_0\,
      S(0) => \timer1_carry__2_i_4__0_n_0\
    );
\timer1_carry__2_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(16),
      O => \timer1_carry__2_i_1__0_n_0\
    );
\timer1_carry__2_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(15),
      O => \timer1_carry__2_i_2__0_n_0\
    );
\timer1_carry__2_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(14),
      O => \timer1_carry__2_i_3__0_n_0\
    );
\timer1_carry__2_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(13),
      O => \timer1_carry__2_i_4__0_n_0\
    );
\timer1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer1_carry__2_n_0\,
      CO(3) => \timer1_carry__3_n_0\,
      CO(2) => \timer1_carry__3_n_1\,
      CO(1) => \timer1_carry__3_n_2\,
      CO(0) => \timer1_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => timer(20 downto 17),
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \timer1_carry__3_i_1__0_n_0\,
      S(2) => \timer1_carry__3_i_2__0_n_0\,
      S(1) => \timer1_carry__3_i_3__0_n_0\,
      S(0) => \timer1_carry__3_i_4__0_n_0\
    );
\timer1_carry__3_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(20),
      O => \timer1_carry__3_i_1__0_n_0\
    );
\timer1_carry__3_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(19),
      O => \timer1_carry__3_i_2__0_n_0\
    );
\timer1_carry__3_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(18),
      O => \timer1_carry__3_i_3__0_n_0\
    );
\timer1_carry__3_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(17),
      O => \timer1_carry__3_i_4__0_n_0\
    );
\timer1_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer1_carry__3_n_0\,
      CO(3) => \timer1_carry__4_n_0\,
      CO(2) => \timer1_carry__4_n_1\,
      CO(1) => \timer1_carry__4_n_2\,
      CO(0) => \timer1_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => timer(24 downto 21),
      O(3 downto 0) => data0(24 downto 21),
      S(3) => \timer1_carry__4_i_1__0_n_0\,
      S(2) => \timer1_carry__4_i_2__0_n_0\,
      S(1) => \timer1_carry__4_i_3__0_n_0\,
      S(0) => \timer1_carry__4_i_4__0_n_0\
    );
\timer1_carry__4_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(24),
      O => \timer1_carry__4_i_1__0_n_0\
    );
\timer1_carry__4_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(23),
      O => \timer1_carry__4_i_2__0_n_0\
    );
\timer1_carry__4_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(22),
      O => \timer1_carry__4_i_3__0_n_0\
    );
\timer1_carry__4_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(21),
      O => \timer1_carry__4_i_4__0_n_0\
    );
\timer1_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer1_carry__4_n_0\,
      CO(3) => \timer1_carry__5_n_0\,
      CO(2) => \timer1_carry__5_n_1\,
      CO(1) => \timer1_carry__5_n_2\,
      CO(0) => \timer1_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => timer(28 downto 25),
      O(3 downto 0) => data0(28 downto 25),
      S(3) => \timer1_carry__5_i_1__0_n_0\,
      S(2) => \timer1_carry__5_i_2__0_n_0\,
      S(1) => \timer1_carry__5_i_3__0_n_0\,
      S(0) => \timer1_carry__5_i_4__0_n_0\
    );
\timer1_carry__5_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(28),
      O => \timer1_carry__5_i_1__0_n_0\
    );
\timer1_carry__5_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(27),
      O => \timer1_carry__5_i_2__0_n_0\
    );
\timer1_carry__5_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(26),
      O => \timer1_carry__5_i_3__0_n_0\
    );
\timer1_carry__5_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(25),
      O => \timer1_carry__5_i_4__0_n_0\
    );
\timer1_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer1_carry__5_n_0\,
      CO(3 downto 2) => \NLW_timer1_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \timer1_carry__6_n_2\,
      CO(0) => \timer1_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => timer(30 downto 29),
      O(3) => \NLW_timer1_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2) => \timer1_carry__6_i_1__0_n_0\,
      S(1) => \timer1_carry__6_i_2__0_n_0\,
      S(0) => \timer1_carry__6_i_3__0_n_0\
    );
\timer1_carry__6_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(31),
      O => \timer1_carry__6_i_1__0_n_0\
    );
\timer1_carry__6_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(30),
      O => \timer1_carry__6_i_2__0_n_0\
    );
\timer1_carry__6_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(29),
      O => \timer1_carry__6_i_3__0_n_0\
    );
\timer1_carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(4),
      O => \timer1_carry_i_1__0_n_0\
    );
\timer1_carry_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(3),
      O => \timer1_carry_i_2__0_n_0\
    );
\timer1_carry_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(2),
      O => \timer1_carry_i_3__0_n_0\
    );
\timer1_carry_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(1),
      O => \timer1_carry_i_4__0_n_0\
    );
\timer[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000003FF88888800"
    )
        port map (
      I0 => \FSM_state[1]_i_2_n_0\,
      I1 => \^fsm_state\(1),
      I2 => \timer_reg[1]_0\,
      I3 => \^fsm_state\(0),
      I4 => \timer_reg[0]_0\,
      I5 => timer(0),
      O => \timer[0]_i_1_n_0\
    );
\timer[10]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(10),
      I1 => \timer[31]_i_3_n_0\,
      O => \timer[10]_i_1__0_n_0\
    );
\timer[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(12),
      I1 => \timer[31]_i_3_n_0\,
      O => \timer[12]_i_1_n_0\
    );
\timer[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(14),
      I1 => \timer[31]_i_3_n_0\,
      O => \timer[14]_i_1_n_0\
    );
\timer[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(16),
      I1 => \timer[31]_i_3_n_0\,
      O => \timer[16]_i_1_n_0\
    );
\timer[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(17),
      I1 => \timer[31]_i_3_n_0\,
      O => \timer[17]_i_1_n_0\
    );
\timer[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^fsm_state\(0),
      I1 => \timer_reg[1]_0\,
      I2 => \^fsm_state\(1),
      O => \timer[19]_i_1_n_0\
    );
\timer[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(19),
      I1 => \timer[31]_i_3_n_0\,
      O => \timer[19]_i_2_n_0\
    );
\timer[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(2),
      I1 => \timer[31]_i_3_n_0\,
      O => \timer[2]_i_1_n_0\
    );
\timer[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A0A0A00080"
    )
        port map (
      I0 => \timer[31]_i_3_n_0\,
      I1 => SCCB_ready,
      I2 => \^fsm_state\(0),
      I3 => \timer_reg[1]_1\,
      I4 => \timer_reg[1]_0\,
      I5 => \^fsm_state\(1),
      O => \timer[31]_i_1_n_0\
    );
\timer[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer(25),
      I1 => timer(22),
      I2 => timer(23),
      I3 => timer(24),
      O => \timer[31]_i_11_n_0\
    );
\timer[31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer(4),
      I1 => timer(5),
      I2 => timer(2),
      I3 => timer(3),
      O => \timer[31]_i_12_n_0\
    );
\timer[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EF00EE00"
    )
        port map (
      I0 => \^fsm_state\(1),
      I1 => \timer_reg[1]_0\,
      I2 => \timer_reg[1]_1\,
      I3 => \^fsm_state\(0),
      I4 => SCCB_ready,
      O => \timer[31]_i_2_n_0\
    );
\timer[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => \timer[31]_i_5_n_0\,
      I1 => \timer[31]_i_6_n_0\,
      I2 => \timer[31]_i_7_n_0\,
      I3 => timer(0),
      I4 => \^fsm_state\(1),
      O => \timer[31]_i_3_n_0\
    );
\timer[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_state[1]_i_6_n_0\,
      I1 => timer(1),
      I2 => timer(31),
      I3 => timer(30),
      I4 => \FSM_state[1]_i_13_n_0\,
      I5 => \timer[31]_i_11_n_0\,
      O => \timer[31]_i_5_n_0\
    );
\timer[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => timer(9),
      I1 => timer(7),
      I2 => timer(8),
      I3 => timer(6),
      I4 => \timer[31]_i_12_n_0\,
      O => \timer[31]_i_6_n_0\
    );
\timer[31]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => timer(17),
      I1 => timer(15),
      I2 => timer(14),
      I3 => timer(16),
      I4 => \FSM_state[1]_i_14_n_0\,
      O => \timer[31]_i_7_n_0\
    );
\timer[5]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(5),
      I1 => \timer[31]_i_3_n_0\,
      O => \timer[5]_i_1__0_n_0\
    );
\timer[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(6),
      I1 => \timer[31]_i_3_n_0\,
      O => \timer[6]_i_1_n_0\
    );
\timer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => '1',
      D => \timer[0]_i_1_n_0\,
      Q => timer(0),
      R => '0'
    );
\timer_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => \timer[10]_i_1__0_n_0\,
      Q => timer(10),
      S => \timer[19]_i_1_n_0\
    );
\timer_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => data0(11),
      Q => timer(11),
      R => \timer[31]_i_1_n_0\
    );
\timer_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => \timer[12]_i_1_n_0\,
      Q => timer(12),
      S => \timer[19]_i_1_n_0\
    );
\timer_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => data0(13),
      Q => timer(13),
      R => \timer[31]_i_1_n_0\
    );
\timer_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => \timer[14]_i_1_n_0\,
      Q => timer(14),
      S => \timer[19]_i_1_n_0\
    );
\timer_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => data0(15),
      Q => timer(15),
      R => \timer[31]_i_1_n_0\
    );
\timer_reg[16]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => \timer[16]_i_1_n_0\,
      Q => timer(16),
      S => \timer[19]_i_1_n_0\
    );
\timer_reg[17]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => \timer[17]_i_1_n_0\,
      Q => timer(17),
      S => \timer[19]_i_1_n_0\
    );
\timer_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => data0(18),
      Q => timer(18),
      R => \timer[31]_i_1_n_0\
    );
\timer_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => \timer[19]_i_2_n_0\,
      Q => timer(19),
      S => \timer[19]_i_1_n_0\
    );
\timer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => data0(1),
      Q => timer(1),
      R => \timer[31]_i_1_n_0\
    );
\timer_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => data0(20),
      Q => timer(20),
      R => \timer[31]_i_1_n_0\
    );
\timer_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => data0(21),
      Q => timer(21),
      R => \timer[31]_i_1_n_0\
    );
\timer_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => data0(22),
      Q => timer(22),
      R => \timer[31]_i_1_n_0\
    );
\timer_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => data0(23),
      Q => timer(23),
      R => \timer[31]_i_1_n_0\
    );
\timer_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => data0(24),
      Q => timer(24),
      R => \timer[31]_i_1_n_0\
    );
\timer_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => data0(25),
      Q => timer(25),
      R => \timer[31]_i_1_n_0\
    );
\timer_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => data0(26),
      Q => timer(26),
      R => \timer[31]_i_1_n_0\
    );
\timer_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => data0(27),
      Q => timer(27),
      R => \timer[31]_i_1_n_0\
    );
\timer_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => data0(28),
      Q => timer(28),
      R => \timer[31]_i_1_n_0\
    );
\timer_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => data0(29),
      Q => timer(29),
      R => \timer[31]_i_1_n_0\
    );
\timer_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => \timer[2]_i_1_n_0\,
      Q => timer(2),
      S => \timer[19]_i_1_n_0\
    );
\timer_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => data0(30),
      Q => timer(30),
      R => \timer[31]_i_1_n_0\
    );
\timer_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => data0(31),
      Q => timer(31),
      R => \timer[31]_i_1_n_0\
    );
\timer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => data0(3),
      Q => timer(3),
      R => \timer[31]_i_1_n_0\
    );
\timer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => data0(4),
      Q => timer(4),
      R => \timer[31]_i_1_n_0\
    );
\timer_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => \timer[5]_i_1__0_n_0\,
      Q => timer(5),
      S => \timer[19]_i_1_n_0\
    );
\timer_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => \timer[6]_i_1_n_0\,
      Q => timer(6),
      S => \timer[19]_i_1_n_0\
    );
\timer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => data0(7),
      Q => timer(7),
      R => \timer[31]_i_1_n_0\
    );
\timer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => data0(8),
      Q => timer(8),
      R => \timer[31]_i_1_n_0\
    );
\timer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[31]_i_2_n_0\,
      D => data0(9),
      Q => timer(9),
      R => \timer[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_OV7670_config_rom is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \FSM_state_reg[1]\ : out STD_LOGIC;
    ready_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    dout_reg_0 : out STD_LOGIC;
    dout_reg_1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_state_reg[0]\ : out STD_LOGIC;
    ready_reg_0 : out STD_LOGIC;
    sccb_start_reg : out STD_LOGIC;
    pixel_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    FSM_state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SCCB_ready : in STD_LOGIC;
    \FSM_state_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_OV7670_config_rom : entity is "OV7670_config_rom";
end design_1_top_0_0_OV7670_config_rom;

architecture STRUCTURE of design_1_top_0_0_OV7670_config_rom is
  signal \FSM_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_state[1]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_state[1]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \^fsm_state_reg[0]\ : STD_LOGIC;
  signal \^dout_reg_0\ : STD_LOGIC;
  signal \^dout_reg_1\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \timer[31]_i_10_n_0\ : STD_LOGIC;
  signal \timer[31]_i_8_n_0\ : STD_LOGIC;
  signal \timer[31]_i_9_n_0\ : STD_LOGIC;
  signal NLW_dout_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_dout_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_dout_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_state[1]_i_11\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_state[1]_i_12\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_state[1]_i_9\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \SCCB_interface_addr[7]_i_1\ : label is "soft_lutpair18";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of dout_reg : label is "p0_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of dout_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of dout_reg : label is 4096;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of dout_reg : label is "camera_configure/rom1/dout_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of dout_reg : label is "NONE";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of dout_reg : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of dout_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of dout_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of dout_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of dout_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of dout_reg : label is 15;
  attribute SOFT_HLUTNM of \rom_addr[7]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \timer[31]_i_8\ : label is "soft_lutpair20";
begin
  \FSM_state_reg[0]\ <= \^fsm_state_reg[0]\;
  dout_reg_0 <= \^dout_reg_0\;
  dout_reg_1 <= \^dout_reg_1\;
  \out\(15 downto 0) <= \^out\(15 downto 0);
\FSM_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCFFCCCCEECCE2"
    )
        port map (
      I0 => \FSM_state_reg[0]_0\,
      I1 => \^fsm_state_reg[0]\,
      I2 => SCCB_ready,
      I3 => FSM_state(1),
      I4 => \^dout_reg_1\,
      I5 => FSM_state(0),
      O => sccb_start_reg
    );
\FSM_state[0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \FSM_state[1]_i_10_n_0\,
      I1 => \FSM_state[1]_i_9_n_0\,
      I2 => \FSM_state[1]_i_8_n_0\,
      I3 => \FSM_state[1]_i_12_n_0\,
      O => \^dout_reg_1\
    );
\FSM_state[1]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^out\(11),
      I1 => \^out\(7),
      I2 => \^out\(8),
      I3 => \^out\(4),
      O => \FSM_state[1]_i_10_n_0\
    );
\FSM_state[1]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^out\(3),
      I2 => \^out\(0),
      I3 => \^out\(2),
      O => \FSM_state[1]_i_11_n_0\
    );
\FSM_state[1]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^out\(3),
      I2 => \^out\(0),
      I3 => \^out\(2),
      O => \FSM_state[1]_i_12_n_0\
    );
\FSM_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8AAAA"
    )
        port map (
      I0 => FSM_state(0),
      I1 => \FSM_state[1]_i_8_n_0\,
      I2 => \FSM_state[1]_i_9_n_0\,
      I3 => \FSM_state[1]_i_10_n_0\,
      I4 => \FSM_state[1]_i_11_n_0\,
      O => \^fsm_state_reg[0]\
    );
\FSM_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFFE"
    )
        port map (
      I0 => \FSM_state[1]_i_10_n_0\,
      I1 => \FSM_state[1]_i_9_n_0\,
      I2 => \FSM_state[1]_i_8_n_0\,
      I3 => \FSM_state[1]_i_12_n_0\,
      I4 => FSM_state(1),
      I5 => SCCB_ready,
      O => \FSM_state_reg[1]\
    );
\FSM_state[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^out\(9),
      I1 => \^out\(5),
      I2 => \^out\(15),
      I3 => \^out\(6),
      O => \FSM_state[1]_i_8_n_0\
    );
\FSM_state[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^out\(12),
      I1 => \^out\(14),
      I2 => \^out\(10),
      I3 => \^out\(13),
      O => \FSM_state[1]_i_9_n_0\
    );
\SCCB_interface_addr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \^dout_reg_0\,
      I1 => SCCB_ready,
      I2 => FSM_state(0),
      I3 => FSM_state(1),
      I4 => \^dout_reg_1\,
      O => E(0)
    );
dout_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"523D510050B34FB314183A0440D004003E000C0011801204FFF01280FFF01280",
      INIT_01 => X"740069003C78330B1E000F41030A1A7B19033280180217143D00589E54E453A7",
      INIT_02 => X"80767F697E5A7D357C1E7B107A20A20273F072117135703AB380B20EB10CB084",
      INIT_03 => X"AB07A50514180D401000000013E089E888D787C486AF85A38496838F82888180",
      INIT_04 => X"FFFFFFFFFFFFFFFF13E7AA94A990A8F0A7D8A6D8A103A0689F7826E325332495",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11 downto 4) => Q(7 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => pixel_clk,
      CLKBWRCLK => '0',
      DIADI(15 downto 0) => B"1111111111111111",
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => \^out\(15 downto 0),
      DOBDO(15 downto 0) => NLW_dout_reg_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_dout_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_dout_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
\rom_addr[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F40000"
    )
        port map (
      I0 => \^dout_reg_0\,
      I1 => SCCB_ready,
      I2 => \^dout_reg_1\,
      I3 => FSM_state(1),
      I4 => FSM_state(0),
      O => ready_reg(0)
    );
\timer[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888088888888"
    )
        port map (
      I0 => SCCB_ready,
      I1 => FSM_state(0),
      I2 => \timer[31]_i_10_n_0\,
      I3 => \timer[31]_i_9_n_0\,
      I4 => \timer[31]_i_8_n_0\,
      I5 => \FSM_state[1]_i_11_n_0\,
      O => ready_reg_0
    );
\timer[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^out\(5),
      I1 => \^out\(6),
      I2 => \^out\(4),
      I3 => \^out\(7),
      O => \timer[31]_i_10_n_0\
    );
\timer[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_state[1]_i_11_n_0\,
      I1 => \timer[31]_i_8_n_0\,
      I2 => \timer[31]_i_9_n_0\,
      I3 => \timer[31]_i_10_n_0\,
      O => \^dout_reg_0\
    );
\timer[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^out\(14),
      I1 => \^out\(15),
      I2 => \^out\(12),
      I3 => \^out\(13),
      O => \timer[31]_i_8_n_0\
    );
\timer[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^out\(10),
      I1 => \^out\(11),
      I2 => \^out\(8),
      I3 => \^out\(9),
      O => \timer[31]_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_SCCB_FSM_interface is
  port (
    SCCB_ready : out STD_LOGIC;
    SCCB_SIOC_oe : out STD_LOGIC;
    SCCB_SIOD_oe : out STD_LOGIC;
    SCCB_start : in STD_LOGIC;
    pixel_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \latched_address_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_SCCB_FSM_interface : entity is "SCCB_FSM_interface";
end design_1_top_0_0_SCCB_FSM_interface;

architecture STRUCTURE of design_1_top_0_0_SCCB_FSM_interface is
  signal FSM_return_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \FSM_return_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_return_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_return_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_return_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_return_state_reg_n_0_[3]\ : STD_LOGIC;
  signal FSM_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \FSM_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_state[3]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \^sccb_sioc_oe\ : STD_LOGIC;
  signal \^sccb_siod_oe\ : STD_LOGIC;
  signal \^sccb_ready\ : STD_LOGIC;
  signal SIOC_oe_i_1_n_0 : STD_LOGIC;
  signal SIOD_oe_i_1_n_0 : STD_LOGIC;
  signal SIOD_oe_i_2_n_0 : STD_LOGIC;
  signal byte_counter : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \byte_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \byte_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal byte_index : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \byte_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index[3]_i_1_n_0\ : STD_LOGIC;
  signal \byte_index[3]_i_2_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal latched_address : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \latched_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \latched_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \latched_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \latched_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \latched_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \latched_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \latched_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \latched_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \latched_data_reg_n_0_[7]\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal ready_i_1_n_0 : STD_LOGIC;
  signal timer : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \timer1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \timer1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \timer1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \timer1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \timer1_carry__0_n_0\ : STD_LOGIC;
  signal \timer1_carry__0_n_1\ : STD_LOGIC;
  signal \timer1_carry__0_n_2\ : STD_LOGIC;
  signal \timer1_carry__0_n_3\ : STD_LOGIC;
  signal \timer1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \timer1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \timer1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \timer1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \timer1_carry__1_n_0\ : STD_LOGIC;
  signal \timer1_carry__1_n_1\ : STD_LOGIC;
  signal \timer1_carry__1_n_2\ : STD_LOGIC;
  signal \timer1_carry__1_n_3\ : STD_LOGIC;
  signal \timer1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \timer1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \timer1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \timer1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \timer1_carry__2_n_0\ : STD_LOGIC;
  signal \timer1_carry__2_n_1\ : STD_LOGIC;
  signal \timer1_carry__2_n_2\ : STD_LOGIC;
  signal \timer1_carry__2_n_3\ : STD_LOGIC;
  signal \timer1_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \timer1_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \timer1_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \timer1_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \timer1_carry__3_n_0\ : STD_LOGIC;
  signal \timer1_carry__3_n_1\ : STD_LOGIC;
  signal \timer1_carry__3_n_2\ : STD_LOGIC;
  signal \timer1_carry__3_n_3\ : STD_LOGIC;
  signal \timer1_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \timer1_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \timer1_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \timer1_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \timer1_carry__4_n_0\ : STD_LOGIC;
  signal \timer1_carry__4_n_1\ : STD_LOGIC;
  signal \timer1_carry__4_n_2\ : STD_LOGIC;
  signal \timer1_carry__4_n_3\ : STD_LOGIC;
  signal \timer1_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \timer1_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \timer1_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \timer1_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \timer1_carry__5_n_0\ : STD_LOGIC;
  signal \timer1_carry__5_n_1\ : STD_LOGIC;
  signal \timer1_carry__5_n_2\ : STD_LOGIC;
  signal \timer1_carry__5_n_3\ : STD_LOGIC;
  signal \timer1_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \timer1_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \timer1_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \timer1_carry__6_n_2\ : STD_LOGIC;
  signal \timer1_carry__6_n_3\ : STD_LOGIC;
  signal timer1_carry_i_1_n_0 : STD_LOGIC;
  signal timer1_carry_i_2_n_0 : STD_LOGIC;
  signal timer1_carry_i_3_n_0 : STD_LOGIC;
  signal timer1_carry_i_4_n_0 : STD_LOGIC;
  signal timer1_carry_n_0 : STD_LOGIC;
  signal timer1_carry_n_1 : STD_LOGIC;
  signal timer1_carry_n_2 : STD_LOGIC;
  signal timer1_carry_n_3 : STD_LOGIC;
  signal \timer[10]_i_10_n_0\ : STD_LOGIC;
  signal \timer[10]_i_1_n_0\ : STD_LOGIC;
  signal \timer[10]_i_3_n_0\ : STD_LOGIC;
  signal \timer[10]_i_4_n_0\ : STD_LOGIC;
  signal \timer[10]_i_5_n_0\ : STD_LOGIC;
  signal \timer[10]_i_6_n_0\ : STD_LOGIC;
  signal \timer[10]_i_7_n_0\ : STD_LOGIC;
  signal \timer[10]_i_8_n_0\ : STD_LOGIC;
  signal \timer[10]_i_9_n_0\ : STD_LOGIC;
  signal \timer[31]_i_1__0_n_0\ : STD_LOGIC;
  signal tx_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \tx_byte[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_byte[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_byte[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_byte[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_byte[4]_i_1_n_0\ : STD_LOGIC;
  signal \tx_byte[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_byte[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_byte[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_byte[7]_i_2_n_0\ : STD_LOGIC;
  signal \NLW_timer1_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_timer1_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_return_state[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_return_state[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_return_state[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_return_state[3]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_state[0]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_state[0]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_state[3]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \byte_index[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \byte_index[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \byte_index[3]_i_2\ : label is "soft_lutpair5";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of timer1_carry : label is 35;
  attribute ADDER_THRESHOLD of \timer1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \timer1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \timer1_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \timer1_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \timer1_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \timer1_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \timer1_carry__6\ : label is 35;
begin
  SCCB_SIOC_oe <= \^sccb_sioc_oe\;
  SCCB_SIOD_oe <= \^sccb_siod_oe\;
  SCCB_ready <= \^sccb_ready\;
\FSM_return_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F04"
    )
        port map (
      I0 => \FSM_state_reg_n_0_[1]\,
      I1 => \FSM_state_reg_n_0_[2]\,
      I2 => \FSM_state_reg_n_0_[0]\,
      I3 => \FSM_state_reg_n_0_[3]\,
      O => FSM_return_state(0)
    );
\FSM_return_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"33C1"
    )
        port map (
      I0 => \FSM_state_reg_n_0_[2]\,
      I1 => \FSM_state_reg_n_0_[1]\,
      I2 => \FSM_state_reg_n_0_[3]\,
      I3 => \FSM_state_reg_n_0_[0]\,
      O => FSM_return_state(1)
    );
\FSM_return_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => \FSM_state_reg_n_0_[3]\,
      I1 => \FSM_state_reg_n_0_[1]\,
      I2 => \FSM_state_reg_n_0_[2]\,
      O => FSM_return_state(2)
    );
\FSM_return_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5F52"
    )
        port map (
      I0 => \FSM_state_reg_n_0_[2]\,
      I1 => \FSM_state_reg_n_0_[1]\,
      I2 => \FSM_state_reg_n_0_[3]\,
      I3 => \FSM_state_reg_n_0_[0]\,
      O => \FSM_return_state[3]_i_1_n_0\
    );
\FSM_return_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"77C0"
    )
        port map (
      I0 => \FSM_state_reg_n_0_[0]\,
      I1 => \FSM_state_reg_n_0_[1]\,
      I2 => \FSM_state_reg_n_0_[2]\,
      I3 => \FSM_state_reg_n_0_[3]\,
      O => FSM_return_state(3)
    );
\FSM_return_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \FSM_return_state[3]_i_1_n_0\,
      D => FSM_return_state(0),
      Q => \FSM_return_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_return_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \FSM_return_state[3]_i_1_n_0\,
      D => FSM_return_state(1),
      Q => \FSM_return_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_return_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \FSM_return_state[3]_i_1_n_0\,
      D => FSM_return_state(2),
      Q => \FSM_return_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_return_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \FSM_return_state[3]_i_1_n_0\,
      D => FSM_return_state(3),
      Q => \FSM_return_state_reg_n_0_[3]\,
      R => '0'
    );
\FSM_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAEAAAA"
    )
        port map (
      I0 => \FSM_state[0]_i_2_n_0\,
      I1 => \FSM_return_state_reg_n_0_[0]\,
      I2 => \FSM_state[3]_i_5_n_0\,
      I3 => \FSM_state_reg_n_0_[0]\,
      I4 => \FSM_state_reg_n_0_[3]\,
      I5 => \FSM_state[3]_i_4_n_0\,
      O => FSM_state(0)
    );
\FSM_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0080008F"
    )
        port map (
      I0 => \FSM_state[0]_i_3_n_0\,
      I1 => \FSM_state_reg_n_0_[1]\,
      I2 => \FSM_state_reg_n_0_[2]\,
      I3 => \FSM_state_reg_n_0_[0]\,
      I4 => \FSM_state_reg_n_0_[3]\,
      O => \FSM_state[0]_i_2_n_0\
    );
\FSM_state[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => byte_index(3),
      I1 => byte_index(1),
      I2 => byte_index(2),
      I3 => byte_index(0),
      O => \FSM_state[0]_i_3_n_0\
    );
\FSM_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000200FF00020000"
    )
        port map (
      I0 => \FSM_return_state_reg_n_0_[1]\,
      I1 => \FSM_state[3]_i_5_n_0\,
      I2 => \FSM_state[3]_i_4_n_0\,
      I3 => \FSM_state_reg_n_0_[0]\,
      I4 => \FSM_state_reg_n_0_[3]\,
      I5 => \FSM_state_reg_n_0_[1]\,
      O => FSM_state(1)
    );
\FSM_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEEEA"
    )
        port map (
      I0 => \FSM_state[2]_i_2_n_0\,
      I1 => \FSM_state_reg_n_0_[3]\,
      I2 => \FSM_state[3]_i_4_n_0\,
      I3 => \FSM_return_state_reg_n_0_[2]\,
      I4 => \FSM_state[3]_i_5_n_0\,
      O => FSM_state(2)
    );
\FSM_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFFEAEAAAAA"
    )
        port map (
      I0 => \FSM_state_reg_n_0_[0]\,
      I1 => byte_counter(0),
      I2 => byte_counter(1),
      I3 => \FSM_state_reg_n_0_[3]\,
      I4 => \FSM_state_reg_n_0_[1]\,
      I5 => \FSM_state_reg_n_0_[2]\,
      O => \FSM_state[2]_i_2_n_0\
    );
\FSM_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F5FFFFE"
    )
        port map (
      I0 => \FSM_state_reg_n_0_[1]\,
      I1 => SCCB_start,
      I2 => \FSM_state_reg_n_0_[3]\,
      I3 => \FSM_state_reg_n_0_[0]\,
      I4 => \FSM_state_reg_n_0_[2]\,
      O => \FSM_state[3]_i_1_n_0\
    );
\FSM_state[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => timer(16),
      I1 => timer(15),
      I2 => timer(17),
      I3 => timer(13),
      I4 => timer(12),
      I5 => timer(14),
      O => \FSM_state[3]_i_10_n_0\
    );
\FSM_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEAAAA"
    )
        port map (
      I0 => \FSM_state[3]_i_3_n_0\,
      I1 => \FSM_state[3]_i_4_n_0\,
      I2 => \FSM_return_state_reg_n_0_[3]\,
      I3 => \FSM_state[3]_i_5_n_0\,
      I4 => \FSM_state_reg_n_0_[3]\,
      O => FSM_state(3)
    );
\FSM_state[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF10"
    )
        port map (
      I0 => \FSM_state_reg_n_0_[1]\,
      I1 => \FSM_state_reg_n_0_[3]\,
      I2 => \FSM_state_reg_n_0_[2]\,
      I3 => \FSM_state_reg_n_0_[0]\,
      O => \FSM_state[3]_i_3_n_0\
    );
\FSM_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => timer(31),
      I1 => timer(30),
      I2 => \FSM_state_reg_n_0_[2]\,
      I3 => timer(28),
      I4 => timer(27),
      I5 => timer(29),
      O => \FSM_state[3]_i_4_n_0\
    );
\FSM_state[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_state[3]_i_6_n_0\,
      I1 => \FSM_state[3]_i_7_n_0\,
      I2 => \FSM_state[3]_i_8_n_0\,
      I3 => \FSM_state[3]_i_9_n_0\,
      I4 => \FSM_state[3]_i_10_n_0\,
      O => \FSM_state[3]_i_5_n_0\
    );
\FSM_state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => timer(22),
      I1 => timer(21),
      I2 => timer(23),
      I3 => timer(19),
      I4 => timer(18),
      I5 => timer(20),
      O => \FSM_state[3]_i_6_n_0\
    );
\FSM_state[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => timer(4),
      I1 => timer(3),
      I2 => timer(5),
      I3 => timer(1),
      I4 => timer(0),
      I5 => timer(2),
      O => \FSM_state[3]_i_7_n_0\
    );
\FSM_state[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => timer(26),
      I1 => timer(24),
      I2 => timer(25),
      O => \FSM_state[3]_i_8_n_0\
    );
\FSM_state[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => timer(10),
      I1 => timer(9),
      I2 => timer(11),
      I3 => timer(7),
      I4 => timer(6),
      I5 => timer(8),
      O => \FSM_state[3]_i_9_n_0\
    );
\FSM_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \FSM_state[3]_i_1_n_0\,
      D => FSM_state(0),
      Q => \FSM_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \FSM_state[3]_i_1_n_0\,
      D => FSM_state(1),
      Q => \FSM_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \FSM_state[3]_i_1_n_0\,
      D => FSM_state(2),
      Q => \FSM_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \FSM_state[3]_i_1_n_0\,
      D => FSM_state(3),
      Q => \FSM_state_reg_n_0_[3]\,
      R => '0'
    );
SIOC_oe_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFF0A00"
    )
        port map (
      I0 => \FSM_state_reg_n_0_[1]\,
      I1 => \FSM_state_reg_n_0_[2]\,
      I2 => \FSM_state_reg_n_0_[3]\,
      I3 => \FSM_state_reg_n_0_[0]\,
      I4 => \^sccb_sioc_oe\,
      O => SIOC_oe_i_1_n_0
    );
SIOC_oe_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => '1',
      D => SIOC_oe_i_1_n_0,
      Q => \^sccb_sioc_oe\,
      R => '0'
    );
SIOD_oe_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEBF000302B0"
    )
        port map (
      I0 => SIOD_oe_i_2_n_0,
      I1 => \FSM_state_reg_n_0_[1]\,
      I2 => \FSM_state_reg_n_0_[3]\,
      I3 => \FSM_state_reg_n_0_[2]\,
      I4 => \FSM_state_reg_n_0_[0]\,
      I5 => \^sccb_siod_oe\,
      O => SIOD_oe_i_1_n_0
    );
SIOD_oe_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111011111111"
    )
        port map (
      I0 => tx_byte(7),
      I1 => \FSM_state_reg_n_0_[1]\,
      I2 => byte_index(0),
      I3 => byte_index(2),
      I4 => byte_index(1),
      I5 => byte_index(3),
      O => SIOD_oe_i_2_n_0
    );
SIOD_oe_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => '1',
      D => SIOD_oe_i_1_n_0,
      Q => \^sccb_siod_oe\,
      R => '0'
    );
\byte_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFC0002"
    )
        port map (
      I0 => \FSM_state_reg_n_0_[1]\,
      I1 => \FSM_state_reg_n_0_[2]\,
      I2 => \FSM_state_reg_n_0_[0]\,
      I3 => \FSM_state_reg_n_0_[3]\,
      I4 => byte_counter(0),
      O => \byte_counter[0]_i_1_n_0\
    );
\byte_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FFFFF400000008"
    )
        port map (
      I0 => byte_counter(0),
      I1 => \FSM_state_reg_n_0_[1]\,
      I2 => \FSM_state_reg_n_0_[2]\,
      I3 => \FSM_state_reg_n_0_[0]\,
      I4 => \FSM_state_reg_n_0_[3]\,
      I5 => byte_counter(1),
      O => \byte_counter[1]_i_1_n_0\
    );
\byte_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => '1',
      D => \byte_counter[0]_i_1_n_0\,
      Q => byte_counter(0),
      R => '0'
    );
\byte_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => '1',
      D => \byte_counter[1]_i_1_n_0\,
      Q => byte_counter(1),
      R => '0'
    );
\byte_index[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_state_reg_n_0_[2]\,
      I1 => byte_index(0),
      O => \byte_index[0]_i_1_n_0\
    );
\byte_index[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => byte_index(0),
      I1 => \FSM_state_reg_n_0_[2]\,
      I2 => byte_index(1),
      O => \byte_index[1]_i_1_n_0\
    );
\byte_index[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => byte_index(1),
      I1 => byte_index(0),
      I2 => \FSM_state_reg_n_0_[2]\,
      I3 => byte_index(2),
      O => \byte_index[2]_i_1_n_0\
    );
\byte_index[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000D"
    )
        port map (
      I0 => \FSM_state_reg_n_0_[2]\,
      I1 => \FSM_state_reg_n_0_[1]\,
      I2 => \FSM_state_reg_n_0_[3]\,
      I3 => \FSM_state_reg_n_0_[0]\,
      O => \byte_index[3]_i_1_n_0\
    );
\byte_index[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => byte_index(2),
      I1 => byte_index(0),
      I2 => byte_index(1),
      I3 => \FSM_state_reg_n_0_[2]\,
      I4 => byte_index(3),
      O => \byte_index[3]_i_2_n_0\
    );
\byte_index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \byte_index[3]_i_1_n_0\,
      D => \byte_index[0]_i_1_n_0\,
      Q => byte_index(0),
      R => '0'
    );
\byte_index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \byte_index[3]_i_1_n_0\,
      D => \byte_index[1]_i_1_n_0\,
      Q => byte_index(1),
      R => '0'
    );
\byte_index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \byte_index[3]_i_1_n_0\,
      D => \byte_index[2]_i_1_n_0\,
      Q => byte_index(2),
      R => '0'
    );
\byte_index_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \byte_index[3]_i_1_n_0\,
      D => \byte_index[3]_i_2_n_0\,
      Q => byte_index(3),
      R => '0'
    );
\latched_address_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => \latched_data[7]_i_1_n_0\,
      D => \latched_address_reg[7]_0\(0),
      Q => latched_address(0),
      R => '0'
    );
\latched_address_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => \latched_data[7]_i_1_n_0\,
      D => \latched_address_reg[7]_0\(1),
      Q => latched_address(1),
      R => '0'
    );
\latched_address_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => \latched_data[7]_i_1_n_0\,
      D => \latched_address_reg[7]_0\(2),
      Q => latched_address(2),
      R => '0'
    );
\latched_address_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => \latched_data[7]_i_1_n_0\,
      D => \latched_address_reg[7]_0\(3),
      Q => latched_address(3),
      R => '0'
    );
\latched_address_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => \latched_data[7]_i_1_n_0\,
      D => \latched_address_reg[7]_0\(4),
      Q => latched_address(4),
      R => '0'
    );
\latched_address_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => \latched_data[7]_i_1_n_0\,
      D => \latched_address_reg[7]_0\(5),
      Q => latched_address(5),
      R => '0'
    );
\latched_address_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => \latched_data[7]_i_1_n_0\,
      D => \latched_address_reg[7]_0\(6),
      Q => latched_address(6),
      R => '0'
    );
\latched_address_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => \latched_data[7]_i_1_n_0\,
      D => \latched_address_reg[7]_0\(7),
      Q => latched_address(7),
      R => '0'
    );
\latched_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => SCCB_start,
      I1 => \FSM_state_reg_n_0_[1]\,
      I2 => \FSM_state_reg_n_0_[2]\,
      I3 => \FSM_state_reg_n_0_[3]\,
      I4 => \FSM_state_reg_n_0_[0]\,
      O => \latched_data[7]_i_1_n_0\
    );
\latched_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => \latched_data[7]_i_1_n_0\,
      D => Q(0),
      Q => \latched_data_reg_n_0_[0]\,
      R => '0'
    );
\latched_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => \latched_data[7]_i_1_n_0\,
      D => Q(1),
      Q => \latched_data_reg_n_0_[1]\,
      R => '0'
    );
\latched_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => \latched_data[7]_i_1_n_0\,
      D => Q(2),
      Q => \latched_data_reg_n_0_[2]\,
      R => '0'
    );
\latched_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => \latched_data[7]_i_1_n_0\,
      D => Q(3),
      Q => \latched_data_reg_n_0_[3]\,
      R => '0'
    );
\latched_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => \latched_data[7]_i_1_n_0\,
      D => Q(4),
      Q => \latched_data_reg_n_0_[4]\,
      R => '0'
    );
\latched_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => \latched_data[7]_i_1_n_0\,
      D => Q(5),
      Q => \latched_data_reg_n_0_[5]\,
      R => '0'
    );
\latched_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => \latched_data[7]_i_1_n_0\,
      D => Q(6),
      Q => \latched_data_reg_n_0_[6]\,
      R => '0'
    );
\latched_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pixel_clk,
      CE => \latched_data[7]_i_1_n_0\,
      D => Q(7),
      Q => \latched_data_reg_n_0_[7]\,
      R => '0'
    );
ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000001"
    )
        port map (
      I0 => SCCB_start,
      I1 => \FSM_state_reg_n_0_[2]\,
      I2 => \FSM_state_reg_n_0_[1]\,
      I3 => \FSM_state_reg_n_0_[3]\,
      I4 => \FSM_state_reg_n_0_[0]\,
      I5 => \^sccb_ready\,
      O => ready_i_1_n_0
    );
ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => pixel_clk,
      CE => '1',
      D => ready_i_1_n_0,
      Q => \^sccb_ready\,
      R => '0'
    );
timer1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => timer1_carry_n_0,
      CO(2) => timer1_carry_n_1,
      CO(1) => timer1_carry_n_2,
      CO(0) => timer1_carry_n_3,
      CYINIT => timer(0),
      DI(3 downto 0) => timer(4 downto 1),
      O(3 downto 0) => data0(4 downto 1),
      S(3) => timer1_carry_i_1_n_0,
      S(2) => timer1_carry_i_2_n_0,
      S(1) => timer1_carry_i_3_n_0,
      S(0) => timer1_carry_i_4_n_0
    );
\timer1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => timer1_carry_n_0,
      CO(3) => \timer1_carry__0_n_0\,
      CO(2) => \timer1_carry__0_n_1\,
      CO(1) => \timer1_carry__0_n_2\,
      CO(0) => \timer1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => timer(8 downto 5),
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \timer1_carry__0_i_1_n_0\,
      S(2) => \timer1_carry__0_i_2_n_0\,
      S(1) => \timer1_carry__0_i_3_n_0\,
      S(0) => \timer1_carry__0_i_4_n_0\
    );
\timer1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(8),
      O => \timer1_carry__0_i_1_n_0\
    );
\timer1_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(7),
      O => \timer1_carry__0_i_2_n_0\
    );
\timer1_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(6),
      O => \timer1_carry__0_i_3_n_0\
    );
\timer1_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(5),
      O => \timer1_carry__0_i_4_n_0\
    );
\timer1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer1_carry__0_n_0\,
      CO(3) => \timer1_carry__1_n_0\,
      CO(2) => \timer1_carry__1_n_1\,
      CO(1) => \timer1_carry__1_n_2\,
      CO(0) => \timer1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => timer(12 downto 9),
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \timer1_carry__1_i_1_n_0\,
      S(2) => \timer1_carry__1_i_2_n_0\,
      S(1) => \timer1_carry__1_i_3_n_0\,
      S(0) => \timer1_carry__1_i_4_n_0\
    );
\timer1_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(12),
      O => \timer1_carry__1_i_1_n_0\
    );
\timer1_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(11),
      O => \timer1_carry__1_i_2_n_0\
    );
\timer1_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(10),
      O => \timer1_carry__1_i_3_n_0\
    );
\timer1_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(9),
      O => \timer1_carry__1_i_4_n_0\
    );
\timer1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer1_carry__1_n_0\,
      CO(3) => \timer1_carry__2_n_0\,
      CO(2) => \timer1_carry__2_n_1\,
      CO(1) => \timer1_carry__2_n_2\,
      CO(0) => \timer1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => timer(16 downto 13),
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \timer1_carry__2_i_1_n_0\,
      S(2) => \timer1_carry__2_i_2_n_0\,
      S(1) => \timer1_carry__2_i_3_n_0\,
      S(0) => \timer1_carry__2_i_4_n_0\
    );
\timer1_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(16),
      O => \timer1_carry__2_i_1_n_0\
    );
\timer1_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(15),
      O => \timer1_carry__2_i_2_n_0\
    );
\timer1_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(14),
      O => \timer1_carry__2_i_3_n_0\
    );
\timer1_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(13),
      O => \timer1_carry__2_i_4_n_0\
    );
\timer1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer1_carry__2_n_0\,
      CO(3) => \timer1_carry__3_n_0\,
      CO(2) => \timer1_carry__3_n_1\,
      CO(1) => \timer1_carry__3_n_2\,
      CO(0) => \timer1_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => timer(20 downto 17),
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \timer1_carry__3_i_1_n_0\,
      S(2) => \timer1_carry__3_i_2_n_0\,
      S(1) => \timer1_carry__3_i_3_n_0\,
      S(0) => \timer1_carry__3_i_4_n_0\
    );
\timer1_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(20),
      O => \timer1_carry__3_i_1_n_0\
    );
\timer1_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(19),
      O => \timer1_carry__3_i_2_n_0\
    );
\timer1_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(18),
      O => \timer1_carry__3_i_3_n_0\
    );
\timer1_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(17),
      O => \timer1_carry__3_i_4_n_0\
    );
\timer1_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer1_carry__3_n_0\,
      CO(3) => \timer1_carry__4_n_0\,
      CO(2) => \timer1_carry__4_n_1\,
      CO(1) => \timer1_carry__4_n_2\,
      CO(0) => \timer1_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => timer(24 downto 21),
      O(3 downto 0) => data0(24 downto 21),
      S(3) => \timer1_carry__4_i_1_n_0\,
      S(2) => \timer1_carry__4_i_2_n_0\,
      S(1) => \timer1_carry__4_i_3_n_0\,
      S(0) => \timer1_carry__4_i_4_n_0\
    );
\timer1_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(24),
      O => \timer1_carry__4_i_1_n_0\
    );
\timer1_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(23),
      O => \timer1_carry__4_i_2_n_0\
    );
\timer1_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(22),
      O => \timer1_carry__4_i_3_n_0\
    );
\timer1_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(21),
      O => \timer1_carry__4_i_4_n_0\
    );
\timer1_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer1_carry__4_n_0\,
      CO(3) => \timer1_carry__5_n_0\,
      CO(2) => \timer1_carry__5_n_1\,
      CO(1) => \timer1_carry__5_n_2\,
      CO(0) => \timer1_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => timer(28 downto 25),
      O(3 downto 0) => data0(28 downto 25),
      S(3) => \timer1_carry__5_i_1_n_0\,
      S(2) => \timer1_carry__5_i_2_n_0\,
      S(1) => \timer1_carry__5_i_3_n_0\,
      S(0) => \timer1_carry__5_i_4_n_0\
    );
\timer1_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(28),
      O => \timer1_carry__5_i_1_n_0\
    );
\timer1_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(27),
      O => \timer1_carry__5_i_2_n_0\
    );
\timer1_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(26),
      O => \timer1_carry__5_i_3_n_0\
    );
\timer1_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(25),
      O => \timer1_carry__5_i_4_n_0\
    );
\timer1_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer1_carry__5_n_0\,
      CO(3 downto 2) => \NLW_timer1_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \timer1_carry__6_n_2\,
      CO(0) => \timer1_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => timer(30 downto 29),
      O(3) => \NLW_timer1_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2) => \timer1_carry__6_i_1_n_0\,
      S(1) => \timer1_carry__6_i_2_n_0\,
      S(0) => \timer1_carry__6_i_3_n_0\
    );
\timer1_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(31),
      O => \timer1_carry__6_i_1_n_0\
    );
\timer1_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(30),
      O => \timer1_carry__6_i_2_n_0\
    );
\timer1_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(29),
      O => \timer1_carry__6_i_3_n_0\
    );
timer1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(4),
      O => timer1_carry_i_1_n_0
    );
timer1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(3),
      O => timer1_carry_i_2_n_0
    );
timer1_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(2),
      O => timer1_carry_i_3_n_0
    );
timer1_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer(1),
      O => timer1_carry_i_4_n_0
    );
\timer[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FFF"
    )
        port map (
      I0 => timer(0),
      I1 => \timer[10]_i_3_n_0\,
      I2 => \FSM_state_reg_n_0_[3]\,
      I3 => \FSM_state_reg_n_0_[2]\,
      O => p_1_in(0)
    );
\timer[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47EE"
    )
        port map (
      I0 => \FSM_state_reg_n_0_[3]\,
      I1 => \FSM_state_reg_n_0_[0]\,
      I2 => \FSM_state_reg_n_0_[1]\,
      I3 => \FSM_state_reg_n_0_[2]\,
      O => \timer[10]_i_1_n_0\
    );
\timer[10]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer(23),
      I1 => timer(20),
      I2 => timer(25),
      I3 => timer(22),
      O => \timer[10]_i_10_n_0\
    );
\timer[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80CC800080008000"
    )
        port map (
      I0 => \timer[10]_i_3_n_0\,
      I1 => \FSM_state_reg_n_0_[3]\,
      I2 => data0(10),
      I3 => \FSM_state_reg_n_0_[2]\,
      I4 => \FSM_state_reg_n_0_[1]\,
      I5 => \FSM_state_reg_n_0_[0]\,
      O => p_1_in(10)
    );
\timer[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \timer[10]_i_4_n_0\,
      I1 => timer(14),
      I2 => timer(15),
      I3 => \timer[10]_i_5_n_0\,
      I4 => \timer[10]_i_6_n_0\,
      O => \timer[10]_i_3_n_0\
    );
\timer[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \timer[10]_i_7_n_0\,
      I1 => timer(5),
      I2 => timer(4),
      I3 => timer(3),
      I4 => timer(2),
      O => \timer[10]_i_4_n_0\
    );
\timer[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \timer[10]_i_8_n_0\,
      I1 => \timer[10]_i_9_n_0\,
      I2 => timer(29),
      I3 => timer(26),
      I4 => timer(17),
      I5 => \timer[10]_i_10_n_0\,
      O => \timer[10]_i_5_n_0\
    );
\timer[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer(6),
      I1 => timer(7),
      I2 => timer(8),
      I3 => timer(9),
      O => \timer[10]_i_6_n_0\
    );
\timer[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => timer(13),
      I1 => timer(12),
      I2 => timer(11),
      I3 => timer(10),
      I4 => timer(0),
      I5 => timer(1),
      O => \timer[10]_i_7_n_0\
    );
\timer[10]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => timer(27),
      I1 => timer(24),
      I2 => timer(31),
      I3 => timer(30),
      I4 => timer(28),
      O => \timer[10]_i_8_n_0\
    );
\timer[10]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer(19),
      I1 => timer(16),
      I2 => timer(21),
      I3 => timer(18),
      O => \timer[10]_i_9_n_0\
    );
\timer[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000000800000"
    )
        port map (
      I0 => \timer[10]_i_3_n_0\,
      I1 => \FSM_state_reg_n_0_[3]\,
      I2 => data0(1),
      I3 => \FSM_state_reg_n_0_[1]\,
      I4 => \FSM_state_reg_n_0_[2]\,
      I5 => \FSM_state_reg_n_0_[0]\,
      O => p_1_in(1)
    );
\timer[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80CC800080008000"
    )
        port map (
      I0 => \timer[10]_i_3_n_0\,
      I1 => \FSM_state_reg_n_0_[3]\,
      I2 => data0(2),
      I3 => \FSM_state_reg_n_0_[2]\,
      I4 => \FSM_state_reg_n_0_[1]\,
      I5 => \FSM_state_reg_n_0_[0]\,
      O => p_1_in(2)
    );
\timer[31]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3307FFCC"
    )
        port map (
      I0 => \timer[10]_i_3_n_0\,
      I1 => \FSM_state_reg_n_0_[3]\,
      I2 => \FSM_state_reg_n_0_[1]\,
      I3 => \FSM_state_reg_n_0_[0]\,
      I4 => \FSM_state_reg_n_0_[2]\,
      O => \timer[31]_i_1__0_n_0\
    );
\timer[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF8FFF0FFFFFF"
    )
        port map (
      I0 => \timer[10]_i_3_n_0\,
      I1 => data0(3),
      I2 => \FSM_state_reg_n_0_[1]\,
      I3 => \FSM_state_reg_n_0_[2]\,
      I4 => \FSM_state_reg_n_0_[0]\,
      I5 => \FSM_state_reg_n_0_[3]\,
      O => p_1_in(3)
    );
\timer[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08F8FFFF0FFFFFFF"
    )
        port map (
      I0 => \timer[10]_i_3_n_0\,
      I1 => data0(4),
      I2 => \FSM_state_reg_n_0_[1]\,
      I3 => \FSM_state_reg_n_0_[0]\,
      I4 => \FSM_state_reg_n_0_[3]\,
      I5 => \FSM_state_reg_n_0_[2]\,
      O => p_1_in(4)
    );
\timer[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08F8FFFF0FFFFFFF"
    )
        port map (
      I0 => \timer[10]_i_3_n_0\,
      I1 => data0(5),
      I2 => \FSM_state_reg_n_0_[1]\,
      I3 => \FSM_state_reg_n_0_[0]\,
      I4 => \FSM_state_reg_n_0_[3]\,
      I5 => \FSM_state_reg_n_0_[2]\,
      O => p_1_in(5)
    );
\timer[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFF0080CC000000"
    )
        port map (
      I0 => \timer[10]_i_3_n_0\,
      I1 => \FSM_state_reg_n_0_[3]\,
      I2 => data0(6),
      I3 => \FSM_state_reg_n_0_[1]\,
      I4 => \FSM_state_reg_n_0_[0]\,
      I5 => \FSM_state_reg_n_0_[2]\,
      O => p_1_in(6)
    );
\timer[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF8FFF0FFFFFF"
    )
        port map (
      I0 => \timer[10]_i_3_n_0\,
      I1 => data0(7),
      I2 => \FSM_state_reg_n_0_[1]\,
      I3 => \FSM_state_reg_n_0_[2]\,
      I4 => \FSM_state_reg_n_0_[0]\,
      I5 => \FSM_state_reg_n_0_[3]\,
      O => p_1_in(7)
    );
\timer[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFF0080CC000000"
    )
        port map (
      I0 => \timer[10]_i_3_n_0\,
      I1 => \FSM_state_reg_n_0_[3]\,
      I2 => data0(8),
      I3 => \FSM_state_reg_n_0_[1]\,
      I4 => \FSM_state_reg_n_0_[0]\,
      I5 => \FSM_state_reg_n_0_[2]\,
      O => p_1_in(8)
    );
\timer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => p_1_in(0),
      Q => timer(0),
      R => '0'
    );
\timer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => p_1_in(10),
      Q => timer(10),
      R => '0'
    );
\timer_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => data0(11),
      Q => timer(11),
      R => \timer[31]_i_1__0_n_0\
    );
\timer_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => data0(12),
      Q => timer(12),
      R => \timer[31]_i_1__0_n_0\
    );
\timer_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => data0(13),
      Q => timer(13),
      R => \timer[31]_i_1__0_n_0\
    );
\timer_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => data0(14),
      Q => timer(14),
      R => \timer[31]_i_1__0_n_0\
    );
\timer_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => data0(15),
      Q => timer(15),
      R => \timer[31]_i_1__0_n_0\
    );
\timer_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => data0(16),
      Q => timer(16),
      R => \timer[31]_i_1__0_n_0\
    );
\timer_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => data0(17),
      Q => timer(17),
      R => \timer[31]_i_1__0_n_0\
    );
\timer_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => data0(18),
      Q => timer(18),
      R => \timer[31]_i_1__0_n_0\
    );
\timer_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => data0(19),
      Q => timer(19),
      R => \timer[31]_i_1__0_n_0\
    );
\timer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => p_1_in(1),
      Q => timer(1),
      R => '0'
    );
\timer_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => data0(20),
      Q => timer(20),
      R => \timer[31]_i_1__0_n_0\
    );
\timer_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => data0(21),
      Q => timer(21),
      R => \timer[31]_i_1__0_n_0\
    );
\timer_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => data0(22),
      Q => timer(22),
      R => \timer[31]_i_1__0_n_0\
    );
\timer_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => data0(23),
      Q => timer(23),
      R => \timer[31]_i_1__0_n_0\
    );
\timer_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => data0(24),
      Q => timer(24),
      R => \timer[31]_i_1__0_n_0\
    );
\timer_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => data0(25),
      Q => timer(25),
      R => \timer[31]_i_1__0_n_0\
    );
\timer_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => data0(26),
      Q => timer(26),
      R => \timer[31]_i_1__0_n_0\
    );
\timer_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => data0(27),
      Q => timer(27),
      R => \timer[31]_i_1__0_n_0\
    );
\timer_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => data0(28),
      Q => timer(28),
      R => \timer[31]_i_1__0_n_0\
    );
\timer_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => data0(29),
      Q => timer(29),
      R => \timer[31]_i_1__0_n_0\
    );
\timer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => p_1_in(2),
      Q => timer(2),
      R => '0'
    );
\timer_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => data0(30),
      Q => timer(30),
      R => \timer[31]_i_1__0_n_0\
    );
\timer_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => data0(31),
      Q => timer(31),
      R => \timer[31]_i_1__0_n_0\
    );
\timer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => p_1_in(3),
      Q => timer(3),
      R => '0'
    );
\timer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => p_1_in(4),
      Q => timer(4),
      R => '0'
    );
\timer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => p_1_in(5),
      Q => timer(5),
      R => '0'
    );
\timer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => p_1_in(6),
      Q => timer(6),
      R => '0'
    );
\timer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => p_1_in(7),
      Q => timer(7),
      R => '0'
    );
\timer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => p_1_in(8),
      Q => timer(8),
      R => '0'
    );
\timer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \timer[10]_i_1_n_0\,
      D => data0(9),
      Q => timer(9),
      R => \timer[31]_i_1__0_n_0\
    );
\tx_byte[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAC0"
    )
        port map (
      I0 => \latched_data_reg_n_0_[0]\,
      I1 => latched_address(0),
      I2 => byte_counter(0),
      I3 => byte_counter(1),
      I4 => \FSM_state_reg_n_0_[2]\,
      O => \tx_byte[0]_i_1_n_0\
    );
\tx_byte[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFF30F03"
    )
        port map (
      I0 => tx_byte(0),
      I1 => byte_counter(0),
      I2 => byte_counter(1),
      I3 => latched_address(1),
      I4 => \latched_data_reg_n_0_[1]\,
      I5 => \FSM_state_reg_n_0_[2]\,
      O => \tx_byte[1]_i_1_n_0\
    );
\tx_byte[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA400000EA40"
    )
        port map (
      I0 => byte_counter(1),
      I1 => byte_counter(0),
      I2 => latched_address(2),
      I3 => \latched_data_reg_n_0_[2]\,
      I4 => \FSM_state_reg_n_0_[2]\,
      I5 => tx_byte(1),
      O => \tx_byte[2]_i_1_n_0\
    );
\tx_byte[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA400000EA40"
    )
        port map (
      I0 => byte_counter(1),
      I1 => byte_counter(0),
      I2 => latched_address(3),
      I3 => \latched_data_reg_n_0_[3]\,
      I4 => \FSM_state_reg_n_0_[2]\,
      I5 => tx_byte(2),
      O => \tx_byte[3]_i_1_n_0\
    );
\tx_byte[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA400000EA40"
    )
        port map (
      I0 => byte_counter(1),
      I1 => byte_counter(0),
      I2 => latched_address(4),
      I3 => \latched_data_reg_n_0_[4]\,
      I4 => \FSM_state_reg_n_0_[2]\,
      I5 => tx_byte(3),
      O => \tx_byte[4]_i_1_n_0\
    );
\tx_byte[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA400000EA40"
    )
        port map (
      I0 => byte_counter(1),
      I1 => byte_counter(0),
      I2 => latched_address(5),
      I3 => \latched_data_reg_n_0_[5]\,
      I4 => \FSM_state_reg_n_0_[2]\,
      I5 => tx_byte(4),
      O => \tx_byte[5]_i_1_n_0\
    );
\tx_byte[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFF30F03"
    )
        port map (
      I0 => tx_byte(5),
      I1 => byte_counter(0),
      I2 => byte_counter(1),
      I3 => latched_address(6),
      I4 => \latched_data_reg_n_0_[6]\,
      I5 => \FSM_state_reg_n_0_[2]\,
      O => \tx_byte[6]_i_1_n_0\
    );
\tx_byte[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \FSM_state_reg_n_0_[1]\,
      I1 => \FSM_state_reg_n_0_[3]\,
      I2 => \FSM_state_reg_n_0_[0]\,
      O => \tx_byte[7]_i_1_n_0\
    );
\tx_byte[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA400000EA40"
    )
        port map (
      I0 => byte_counter(1),
      I1 => byte_counter(0),
      I2 => latched_address(7),
      I3 => \latched_data_reg_n_0_[7]\,
      I4 => \FSM_state_reg_n_0_[2]\,
      I5 => tx_byte(6),
      O => \tx_byte[7]_i_2_n_0\
    );
\tx_byte_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \tx_byte[7]_i_1_n_0\,
      D => \tx_byte[0]_i_1_n_0\,
      Q => tx_byte(0),
      R => '0'
    );
\tx_byte_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \tx_byte[7]_i_1_n_0\,
      D => \tx_byte[1]_i_1_n_0\,
      Q => tx_byte(1),
      R => '0'
    );
\tx_byte_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \tx_byte[7]_i_1_n_0\,
      D => \tx_byte[2]_i_1_n_0\,
      Q => tx_byte(2),
      R => '0'
    );
\tx_byte_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \tx_byte[7]_i_1_n_0\,
      D => \tx_byte[3]_i_1_n_0\,
      Q => tx_byte(3),
      R => '0'
    );
\tx_byte_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \tx_byte[7]_i_1_n_0\,
      D => \tx_byte[4]_i_1_n_0\,
      Q => tx_byte(4),
      R => '0'
    );
\tx_byte_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \tx_byte[7]_i_1_n_0\,
      D => \tx_byte[5]_i_1_n_0\,
      Q => tx_byte(5),
      R => '0'
    );
\tx_byte_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \tx_byte[7]_i_1_n_0\,
      D => \tx_byte[6]_i_1_n_0\,
      Q => tx_byte(6),
      R => '0'
    );
\tx_byte_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pixel_clk,
      CE => \tx_byte[7]_i_1_n_0\,
      D => \tx_byte[7]_i_2_n_0\,
      Q => tx_byte(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_read_pixels is
  port (
    rp_pixel_valid : out STD_LOGIC;
    frame_done : out STD_LOGIC;
    bram_en : out STD_LOGIC;
    \cam_x_reg[0]\ : out STD_LOGIC;
    \cam_x_reg[0]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \pixel_data_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cam_pclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cam_href : in STD_LOGIC;
    qvga_waddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cam_vsync : in STD_LOGIC;
    \cam_x_reg[9]\ : in STD_LOGIC;
    cam_data : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_read_pixels : entity is "read_pixels";
end design_1_top_0_0_read_pixels;

architecture STRUCTURE of design_1_top_0_0_read_pixels is
  signal FSM_sequential_state_reg_n_0 : STD_LOGIC;
  signal \^bram_en\ : STD_LOGIC;
  signal bram_en_i_1_n_0 : STD_LOGIC;
  signal bram_en_i_2_n_0 : STD_LOGIC;
  signal bram_en_i_3_n_0 : STD_LOGIC;
  signal bram_en_i_4_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal end_of_pixel : STD_LOGIC;
  signal frame_done_i_1_n_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal pixel_data : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal pixel_half_i_1_n_0 : STD_LOGIC;
  signal pixel_half_reg_n_0 : STD_LOGIC;
  signal pixel_valid_i_1_n_0 : STD_LOGIC;
  signal \^rp_pixel_valid\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \x_counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \x_counter[9]_i_3_n_0\ : STD_LOGIC;
  signal \x_counter[9]_i_4_n_0\ : STD_LOGIC;
  signal \x_counter[9]_i_5_n_0\ : STD_LOGIC;
  signal x_counter_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \x_mod10[0]_i_1_n_0\ : STD_LOGIC;
  signal \x_mod10[1]_i_1_n_0\ : STD_LOGIC;
  signal \x_mod10[2]_i_1_n_0\ : STD_LOGIC;
  signal \x_mod10[3]_i_1_n_0\ : STD_LOGIC;
  signal \x_mod10[3]_i_3_n_0\ : STD_LOGIC;
  signal \x_mod10_reg_n_0_[0]\ : STD_LOGIC;
  signal \x_mod10_reg_n_0_[1]\ : STD_LOGIC;
  signal \x_mod10_reg_n_0_[2]\ : STD_LOGIC;
  signal \x_mod10_reg_n_0_[3]\ : STD_LOGIC;
  signal y_mod10 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \y_mod10[0]_i_1_n_0\ : STD_LOGIC;
  signal \y_mod10[1]_i_1_n_0\ : STD_LOGIC;
  signal \y_mod10[2]_i_1_n_0\ : STD_LOGIC;
  signal \y_mod10[3]_i_1_n_0\ : STD_LOGIC;
  signal \y_mod10[3]_i_2_n_0\ : STD_LOGIC;
  signal \y_mod10[3]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FSM_sequential_state_i_1 : label is "soft_lutpair32";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of FSM_sequential_state_reg : label is "READ_ROW:1,START_FRAME:0";
  attribute SOFT_HLUTNM of bram_en_i_2 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of frame_done_i_1 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of pixel_half_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of pixel_valid_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \x_counter[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \x_counter[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \x_counter[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \x_counter[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \x_counter[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \x_counter[6]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \x_counter[7]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \x_counter[8]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \x_counter[9]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \x_counter[9]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \x_counter[9]_i_5\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \x_mod10[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \x_mod10[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \x_mod10[3]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \y_mod10[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \y_mod10[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \y_mod10[2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \y_mod10[3]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \y_mod10[3]_i_3\ : label is "soft_lutpair21";
begin
  bram_en <= \^bram_en\;
  rp_pixel_valid <= \^rp_pixel_valid\;
FSM_sequential_state_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cam_vsync,
      O => state(0)
    );
FSM_sequential_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => state(0),
      Q => FSM_sequential_state_reg_n_0,
      R => '0'
    );
bram_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => bram_en_i_2_n_0,
      I1 => bram_en_i_3_n_0,
      I2 => bram_en_i_4_n_0,
      I3 => FSM_sequential_state_reg_n_0,
      I4 => \^bram_en\,
      O => bram_en_i_1_n_0
    );
bram_en_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3336"
    )
        port map (
      I0 => \x_mod10_reg_n_0_[2]\,
      I1 => \x_mod10_reg_n_0_[3]\,
      I2 => \x_mod10_reg_n_0_[1]\,
      I3 => \x_mod10_reg_n_0_[0]\,
      O => bram_en_i_2_n_0
    );
bram_en_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F1E000000000000"
    )
        port map (
      I0 => y_mod10(0),
      I1 => y_mod10(1),
      I2 => y_mod10(3),
      I3 => y_mod10(2),
      I4 => pixel_half_reg_n_0,
      I5 => cam_href,
      O => bram_en_i_3_n_0
    );
bram_en_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555554662"
    )
        port map (
      I0 => x_counter_reg(9),
      I1 => x_counter_reg(6),
      I2 => x_counter_reg(4),
      I3 => x_counter_reg(5),
      I4 => x_counter_reg(8),
      I5 => x_counter_reg(7),
      O => bram_en_i_4_n_0
    );
bram_en_reg: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => '1',
      D => bram_en_i_1_n_0,
      Q => \^bram_en\,
      R => '0'
    );
frame_buf_reg_0_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => Q(0),
      I1 => \^rp_pixel_valid\,
      I2 => cam_href,
      I3 => qvga_waddr(1),
      O => \cam_x_reg[0]\
    );
\frame_buf_reg_1_0__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => Q(0),
      I1 => \^rp_pixel_valid\,
      I2 => cam_href,
      I3 => qvga_waddr(0),
      I4 => qvga_waddr(1),
      O => \cam_x_reg[0]_0\
    );
frame_done_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cam_vsync,
      I1 => FSM_sequential_state_reg_n_0,
      O => frame_done_i_1_n_0
    );
frame_done_reg: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => '1',
      D => frame_done_i_1_n_0,
      Q => frame_done,
      R => '0'
    );
\pixel_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => pixel_half_reg_n_0,
      I1 => FSM_sequential_state_reg_n_0,
      I2 => cam_href,
      O => pixel_data(15)
    );
\pixel_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pixel_half_reg_n_0,
      I1 => cam_href,
      I2 => FSM_sequential_state_reg_n_0,
      O => pixel_data(7)
    );
\pixel_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => pixel_data(7),
      D => cam_data(0),
      Q => \pixel_data_reg[15]_0\(0),
      R => '0'
    );
\pixel_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => pixel_data(15),
      D => cam_data(2),
      Q => \pixel_data_reg[15]_0\(10),
      R => '0'
    );
\pixel_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => pixel_data(15),
      D => cam_data(3),
      Q => \pixel_data_reg[15]_0\(11),
      R => '0'
    );
\pixel_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => pixel_data(15),
      D => cam_data(4),
      Q => \pixel_data_reg[15]_0\(12),
      R => '0'
    );
\pixel_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => pixel_data(15),
      D => cam_data(5),
      Q => \pixel_data_reg[15]_0\(13),
      R => '0'
    );
\pixel_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => pixel_data(15),
      D => cam_data(6),
      Q => \pixel_data_reg[15]_0\(14),
      R => '0'
    );
\pixel_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => pixel_data(15),
      D => cam_data(7),
      Q => \pixel_data_reg[15]_0\(15),
      R => '0'
    );
\pixel_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => pixel_data(7),
      D => cam_data(1),
      Q => \pixel_data_reg[15]_0\(1),
      R => '0'
    );
\pixel_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => pixel_data(7),
      D => cam_data(2),
      Q => \pixel_data_reg[15]_0\(2),
      R => '0'
    );
\pixel_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => pixel_data(7),
      D => cam_data(3),
      Q => \pixel_data_reg[15]_0\(3),
      R => '0'
    );
\pixel_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => pixel_data(7),
      D => cam_data(4),
      Q => \pixel_data_reg[15]_0\(4),
      R => '0'
    );
\pixel_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => pixel_data(7),
      D => cam_data(5),
      Q => \pixel_data_reg[15]_0\(5),
      R => '0'
    );
\pixel_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => pixel_data(7),
      D => cam_data(6),
      Q => \pixel_data_reg[15]_0\(6),
      R => '0'
    );
\pixel_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => pixel_data(7),
      D => cam_data(7),
      Q => \pixel_data_reg[15]_0\(7),
      R => '0'
    );
\pixel_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => pixel_data(15),
      D => cam_data(0),
      Q => \pixel_data_reg[15]_0\(8),
      R => '0'
    );
\pixel_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => pixel_data(15),
      D => cam_data(1),
      Q => \pixel_data_reg[15]_0\(9),
      R => '0'
    );
pixel_half_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => pixel_half_reg_n_0,
      I1 => cam_href,
      I2 => FSM_sequential_state_reg_n_0,
      O => pixel_half_i_1_n_0
    );
pixel_half_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => pixel_half_i_1_n_0,
      Q => pixel_half_reg_n_0,
      R => '0'
    );
pixel_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => cam_href,
      I1 => pixel_half_reg_n_0,
      I2 => FSM_sequential_state_reg_n_0,
      I3 => \^rp_pixel_valid\,
      O => pixel_valid_i_1_n_0
    );
pixel_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => '1',
      D => pixel_valid_i_1_n_0,
      Q => \^rp_pixel_valid\,
      R => '0'
    );
qvga_waddr_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808088808080808"
    )
        port map (
      I0 => cam_href,
      I1 => \^rp_pixel_valid\,
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \cam_x_reg[9]\,
      O => E(0)
    );
\x_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_counter_reg(0),
      O => \p_0_in__0\(0)
    );
\x_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => x_counter_reg(0),
      I1 => x_counter_reg(1),
      O => \p_0_in__0\(1)
    );
\x_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => x_counter_reg(1),
      I1 => x_counter_reg(0),
      I2 => x_counter_reg(2),
      O => \p_0_in__0\(2)
    );
\x_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => x_counter_reg(2),
      I1 => x_counter_reg(0),
      I2 => x_counter_reg(1),
      I3 => x_counter_reg(3),
      O => \p_0_in__0\(3)
    );
\x_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => x_counter_reg(3),
      I1 => x_counter_reg(1),
      I2 => x_counter_reg(0),
      I3 => x_counter_reg(2),
      I4 => x_counter_reg(4),
      O => \p_0_in__0\(4)
    );
\x_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => x_counter_reg(4),
      I1 => x_counter_reg(2),
      I2 => x_counter_reg(0),
      I3 => x_counter_reg(1),
      I4 => x_counter_reg(3),
      I5 => x_counter_reg(5),
      O => \p_0_in__0\(5)
    );
\x_counter[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => x_counter_reg(4),
      I1 => x_counter_reg(5),
      I2 => \x_counter[8]_i_2_n_0\,
      I3 => x_counter_reg(6),
      O => \p_0_in__0\(6)
    );
\x_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => x_counter_reg(6),
      I1 => \x_counter[8]_i_2_n_0\,
      I2 => x_counter_reg(5),
      I3 => x_counter_reg(4),
      I4 => x_counter_reg(7),
      O => \p_0_in__0\(7)
    );
\x_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => x_counter_reg(7),
      I1 => x_counter_reg(4),
      I2 => x_counter_reg(5),
      I3 => \x_counter[8]_i_2_n_0\,
      I4 => x_counter_reg(6),
      I5 => x_counter_reg(8),
      O => \p_0_in__0\(8)
    );
\x_counter[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => x_counter_reg(2),
      I1 => x_counter_reg(0),
      I2 => x_counter_reg(1),
      I3 => x_counter_reg(3),
      O => \x_counter[8]_i_2_n_0\
    );
\x_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0FFF0FFFFFFFE"
    )
        port map (
      I0 => x_counter_reg(0),
      I1 => x_counter_reg(2),
      I2 => cam_vsync,
      I3 => \x_counter[9]_i_3_n_0\,
      I4 => x_counter_reg(1),
      I5 => cam_href,
      O => clear
    );
\x_counter[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \y_mod10[3]_i_3_n_0\,
      I1 => x_counter_reg(7),
      I2 => x_counter_reg(8),
      I3 => x_counter_reg(9),
      O => \p_0_in__0\(9)
    );
\x_counter[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF0000FFFE"
    )
        port map (
      I0 => x_counter_reg(3),
      I1 => x_counter_reg(6),
      I2 => x_counter_reg(9),
      I3 => \x_counter[9]_i_4_n_0\,
      I4 => cam_href,
      I5 => \x_counter[9]_i_5_n_0\,
      O => \x_counter[9]_i_3_n_0\
    );
\x_counter[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x_counter_reg(7),
      I1 => x_counter_reg(8),
      O => \x_counter[9]_i_4_n_0\
    );
\x_counter[9]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x_counter_reg(4),
      I1 => x_counter_reg(5),
      O => \x_counter[9]_i_5_n_0\
    );
\x_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => end_of_pixel,
      D => \p_0_in__0\(0),
      Q => x_counter_reg(0),
      R => clear
    );
\x_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => end_of_pixel,
      D => \p_0_in__0\(1),
      Q => x_counter_reg(1),
      R => clear
    );
\x_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => end_of_pixel,
      D => \p_0_in__0\(2),
      Q => x_counter_reg(2),
      R => clear
    );
\x_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => end_of_pixel,
      D => \p_0_in__0\(3),
      Q => x_counter_reg(3),
      R => clear
    );
\x_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => end_of_pixel,
      D => \p_0_in__0\(4),
      Q => x_counter_reg(4),
      R => clear
    );
\x_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => end_of_pixel,
      D => \p_0_in__0\(5),
      Q => x_counter_reg(5),
      R => clear
    );
\x_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => end_of_pixel,
      D => \p_0_in__0\(6),
      Q => x_counter_reg(6),
      R => clear
    );
\x_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => end_of_pixel,
      D => \p_0_in__0\(7),
      Q => x_counter_reg(7),
      R => clear
    );
\x_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => end_of_pixel,
      D => \p_0_in__0\(8),
      Q => x_counter_reg(8),
      R => clear
    );
\x_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => end_of_pixel,
      D => \p_0_in__0\(9),
      Q => x_counter_reg(9),
      R => clear
    );
\x_mod10[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \x_mod10_reg_n_0_[0]\,
      O => \x_mod10[0]_i_1_n_0\
    );
\x_mod10[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0DF0"
    )
        port map (
      I0 => \x_mod10_reg_n_0_[3]\,
      I1 => \x_mod10_reg_n_0_[2]\,
      I2 => \x_mod10_reg_n_0_[1]\,
      I3 => \x_mod10_reg_n_0_[0]\,
      O => \x_mod10[1]_i_1_n_0\
    );
\x_mod10[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \x_mod10_reg_n_0_[2]\,
      I1 => \x_mod10_reg_n_0_[1]\,
      I2 => \x_mod10_reg_n_0_[0]\,
      O => \x_mod10[2]_i_1_n_0\
    );
\x_mod10[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \y_mod10[3]_i_1_n_0\,
      I1 => cam_vsync,
      O => \x_mod10[3]_i_1_n_0\
    );
\x_mod10[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cam_href,
      I1 => pixel_half_reg_n_0,
      O => end_of_pixel
    );
\x_mod10[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"68AA"
    )
        port map (
      I0 => \x_mod10_reg_n_0_[3]\,
      I1 => \x_mod10_reg_n_0_[2]\,
      I2 => \x_mod10_reg_n_0_[1]\,
      I3 => \x_mod10_reg_n_0_[0]\,
      O => \x_mod10[3]_i_3_n_0\
    );
\x_mod10_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => end_of_pixel,
      D => \x_mod10[0]_i_1_n_0\,
      Q => \x_mod10_reg_n_0_[0]\,
      R => \x_mod10[3]_i_1_n_0\
    );
\x_mod10_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => end_of_pixel,
      D => \x_mod10[1]_i_1_n_0\,
      Q => \x_mod10_reg_n_0_[1]\,
      R => \x_mod10[3]_i_1_n_0\
    );
\x_mod10_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => end_of_pixel,
      D => \x_mod10[2]_i_1_n_0\,
      Q => \x_mod10_reg_n_0_[2]\,
      R => \x_mod10[3]_i_1_n_0\
    );
\x_mod10_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => end_of_pixel,
      D => \x_mod10[3]_i_3_n_0\,
      Q => \x_mod10_reg_n_0_[3]\,
      R => \x_mod10[3]_i_1_n_0\
    );
\y_mod10[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => y_mod10(0),
      O => \y_mod10[0]_i_1_n_0\
    );
\y_mod10[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0DF0"
    )
        port map (
      I0 => y_mod10(3),
      I1 => y_mod10(2),
      I2 => y_mod10(1),
      I3 => y_mod10(0),
      O => \y_mod10[1]_i_1_n_0\
    );
\y_mod10[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => y_mod10(2),
      I1 => y_mod10(1),
      I2 => y_mod10(0),
      O => \y_mod10[2]_i_1_n_0\
    );
\y_mod10[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => x_counter_reg(7),
      I1 => x_counter_reg(8),
      I2 => pixel_half_reg_n_0,
      I3 => cam_href,
      I4 => x_counter_reg(9),
      I5 => \y_mod10[3]_i_3_n_0\,
      O => \y_mod10[3]_i_1_n_0\
    );
\y_mod10[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"68AA"
    )
        port map (
      I0 => y_mod10(3),
      I1 => y_mod10(2),
      I2 => y_mod10(1),
      I3 => y_mod10(0),
      O => \y_mod10[3]_i_2_n_0\
    );
\y_mod10[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => x_counter_reg(4),
      I1 => x_counter_reg(5),
      I2 => \x_counter[8]_i_2_n_0\,
      I3 => x_counter_reg(6),
      O => \y_mod10[3]_i_3_n_0\
    );
\y_mod10_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => \y_mod10[3]_i_1_n_0\,
      D => \y_mod10[0]_i_1_n_0\,
      Q => y_mod10(0),
      R => cam_vsync
    );
\y_mod10_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => \y_mod10[3]_i_1_n_0\,
      D => \y_mod10[1]_i_1_n_0\,
      Q => y_mod10(1),
      R => cam_vsync
    );
\y_mod10_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => \y_mod10[3]_i_1_n_0\,
      D => \y_mod10[2]_i_1_n_0\,
      Q => y_mod10(2),
      R => cam_vsync
    );
\y_mod10_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => \y_mod10[3]_i_1_n_0\,
      D => \y_mod10[3]_i_2_n_0\,
      Q => y_mod10(3),
      R => cam_vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_read_pixels_axis_adapter is
  port (
    S_AXIS_CAPTURE_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_CAPTURE_tlast : out STD_LOGIC;
    cam_vsync : in STD_LOGIC;
    cam_pclk : in STD_LOGIC;
    rp_pixel_valid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_read_pixels_axis_adapter : entity is "read_pixels_axis_adapter";
end design_1_top_0_0_read_pixels_axis_adapter;

architecture STRUCTURE of design_1_top_0_0_read_pixels_axis_adapter is
  signal data0 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal pixel_cnt : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \pixel_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_cnt[9]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \pixel_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \pixel_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \pixel_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \pixel_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \pixel_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \pixel_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \pixel_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \pixel_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \pixel_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal sof_pending : STD_LOGIC;
  signal sof_pending00_out : STD_LOGIC;
  signal sof_pending_i_1_n_0 : STD_LOGIC;
  signal system_i_i_2_n_0 : STD_LOGIC;
  signal vsync_prev : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of m_axis_tuser_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pixel_cnt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pixel_cnt[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pixel_cnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pixel_cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pixel_cnt[5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pixel_cnt[9]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of sof_pending_i_1 : label is "soft_lutpair2";
begin
m_axis_tuser_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sof_pending,
      I1 => rp_pixel_valid,
      O => sof_pending00_out
    );
m_axis_tuser_reg: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => '1',
      D => sof_pending00_out,
      Q => S_AXIS_CAPTURE_tuser(0),
      R => '0'
    );
\pixel_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EE"
    )
        port map (
      I0 => system_i_i_2_n_0,
      I1 => \pixel_cnt_reg_n_0_[2]\,
      I2 => \pixel_cnt_reg_n_0_[1]\,
      I3 => \pixel_cnt_reg_n_0_[0]\,
      O => pixel_cnt(0)
    );
\pixel_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0EE0"
    )
        port map (
      I0 => system_i_i_2_n_0,
      I1 => \pixel_cnt_reg_n_0_[2]\,
      I2 => \pixel_cnt_reg_n_0_[0]\,
      I3 => \pixel_cnt_reg_n_0_[1]\,
      O => pixel_cnt(1)
    );
\pixel_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2CCC"
    )
        port map (
      I0 => system_i_i_2_n_0,
      I1 => \pixel_cnt_reg_n_0_[2]\,
      I2 => \pixel_cnt_reg_n_0_[0]\,
      I3 => \pixel_cnt_reg_n_0_[1]\,
      O => pixel_cnt(2)
    );
\pixel_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28C8C8C8"
    )
        port map (
      I0 => system_i_i_2_n_0,
      I1 => \pixel_cnt_reg_n_0_[3]\,
      I2 => \pixel_cnt_reg_n_0_[2]\,
      I3 => \pixel_cnt_reg_n_0_[0]\,
      I4 => \pixel_cnt_reg_n_0_[1]\,
      O => pixel_cnt(3)
    );
\pixel_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888CC88CC88CC88"
    )
        port map (
      I0 => system_i_i_2_n_0,
      I1 => \pixel_cnt_reg_n_0_[4]\,
      I2 => \pixel_cnt_reg_n_0_[3]\,
      I3 => \pixel_cnt_reg_n_0_[2]\,
      I4 => \pixel_cnt_reg_n_0_[0]\,
      I5 => \pixel_cnt_reg_n_0_[1]\,
      O => pixel_cnt(4)
    );
\pixel_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88C8C8C8"
    )
        port map (
      I0 => system_i_i_2_n_0,
      I1 => data0(5),
      I2 => \pixel_cnt_reg_n_0_[2]\,
      I3 => \pixel_cnt_reg_n_0_[0]\,
      I4 => \pixel_cnt_reg_n_0_[1]\,
      O => pixel_cnt(5)
    );
\pixel_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \pixel_cnt_reg_n_0_[3]\,
      I1 => \pixel_cnt_reg_n_0_[1]\,
      I2 => \pixel_cnt_reg_n_0_[2]\,
      I3 => \pixel_cnt_reg_n_0_[4]\,
      I4 => \pixel_cnt_reg_n_0_[0]\,
      I5 => \pixel_cnt_reg_n_0_[5]\,
      O => data0(5)
    );
\pixel_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8282CC88C382CC88"
    )
        port map (
      I0 => system_i_i_2_n_0,
      I1 => \pixel_cnt_reg_n_0_[6]\,
      I2 => \pixel_cnt[6]_i_2_n_0\,
      I3 => \pixel_cnt_reg_n_0_[2]\,
      I4 => \pixel_cnt_reg_n_0_[0]\,
      I5 => \pixel_cnt_reg_n_0_[1]\,
      O => pixel_cnt(6)
    );
\pixel_cnt[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \pixel_cnt_reg_n_0_[4]\,
      I1 => \pixel_cnt_reg_n_0_[2]\,
      I2 => \pixel_cnt_reg_n_0_[1]\,
      I3 => \pixel_cnt_reg_n_0_[3]\,
      I4 => \pixel_cnt_reg_n_0_[5]\,
      O => \pixel_cnt[6]_i_2_n_0\
    );
\pixel_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA45AAAAAA55AAAA"
    )
        port map (
      I0 => \pixel_cnt_reg_n_0_[7]\,
      I1 => \pixel_cnt_reg_n_0_[8]\,
      I2 => \pixel_cnt_reg_n_0_[9]\,
      I3 => \pixel_cnt[9]_i_2_n_0\,
      I4 => \pixel_cnt_reg_n_0_[0]\,
      I5 => \pixel_cnt[9]_i_3_n_0\,
      O => pixel_cnt(7)
    );
\pixel_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC66CCCCCC66CCCC"
    )
        port map (
      I0 => \pixel_cnt_reg_n_0_[7]\,
      I1 => \pixel_cnt_reg_n_0_[8]\,
      I2 => \pixel_cnt_reg_n_0_[9]\,
      I3 => \pixel_cnt[9]_i_2_n_0\,
      I4 => \pixel_cnt_reg_n_0_[0]\,
      I5 => \pixel_cnt[9]_i_3_n_0\,
      O => pixel_cnt(8)
    );
\pixel_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F068F0E0F078F0F0"
    )
        port map (
      I0 => \pixel_cnt_reg_n_0_[7]\,
      I1 => \pixel_cnt_reg_n_0_[8]\,
      I2 => \pixel_cnt_reg_n_0_[9]\,
      I3 => \pixel_cnt[9]_i_2_n_0\,
      I4 => \pixel_cnt_reg_n_0_[0]\,
      I5 => \pixel_cnt[9]_i_3_n_0\,
      O => pixel_cnt(9)
    );
\pixel_cnt[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \pixel_cnt_reg_n_0_[5]\,
      I1 => \pixel_cnt_reg_n_0_[3]\,
      I2 => \pixel_cnt_reg_n_0_[1]\,
      I3 => \pixel_cnt_reg_n_0_[2]\,
      I4 => \pixel_cnt_reg_n_0_[4]\,
      I5 => \pixel_cnt_reg_n_0_[6]\,
      O => \pixel_cnt[9]_i_2_n_0\
    );
\pixel_cnt[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \pixel_cnt_reg_n_0_[1]\,
      I1 => \pixel_cnt_reg_n_0_[0]\,
      I2 => \pixel_cnt_reg_n_0_[2]\,
      O => \pixel_cnt[9]_i_3_n_0\
    );
\pixel_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => rp_pixel_valid,
      D => pixel_cnt(0),
      Q => \pixel_cnt_reg_n_0_[0]\,
      R => '0'
    );
\pixel_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => rp_pixel_valid,
      D => pixel_cnt(1),
      Q => \pixel_cnt_reg_n_0_[1]\,
      R => '0'
    );
\pixel_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => rp_pixel_valid,
      D => pixel_cnt(2),
      Q => \pixel_cnt_reg_n_0_[2]\,
      R => '0'
    );
\pixel_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => rp_pixel_valid,
      D => pixel_cnt(3),
      Q => \pixel_cnt_reg_n_0_[3]\,
      R => '0'
    );
\pixel_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => rp_pixel_valid,
      D => pixel_cnt(4),
      Q => \pixel_cnt_reg_n_0_[4]\,
      R => '0'
    );
\pixel_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => rp_pixel_valid,
      D => pixel_cnt(5),
      Q => \pixel_cnt_reg_n_0_[5]\,
      R => '0'
    );
\pixel_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => rp_pixel_valid,
      D => pixel_cnt(6),
      Q => \pixel_cnt_reg_n_0_[6]\,
      R => '0'
    );
\pixel_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => rp_pixel_valid,
      D => pixel_cnt(7),
      Q => \pixel_cnt_reg_n_0_[7]\,
      R => '0'
    );
\pixel_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => rp_pixel_valid,
      D => pixel_cnt(8),
      Q => \pixel_cnt_reg_n_0_[8]\,
      R => '0'
    );
\pixel_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => rp_pixel_valid,
      D => pixel_cnt(9),
      Q => \pixel_cnt_reg_n_0_[9]\,
      R => '0'
    );
sof_pending_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4744"
    )
        port map (
      I0 => rp_pixel_valid,
      I1 => sof_pending,
      I2 => vsync_prev,
      I3 => cam_vsync,
      O => sof_pending_i_1_n_0
    );
sof_pending_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => sof_pending_i_1_n_0,
      Q => sof_pending,
      R => '0'
    );
system_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rp_pixel_valid,
      I1 => \pixel_cnt_reg_n_0_[0]\,
      I2 => system_i_i_2_n_0,
      O => S_AXIS_CAPTURE_tlast
    );
system_i_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \pixel_cnt_reg_n_0_[7]\,
      I1 => \pixel_cnt_reg_n_0_[8]\,
      I2 => \pixel_cnt_reg_n_0_[9]\,
      I3 => \pixel_cnt[9]_i_2_n_0\,
      O => system_i_i_2_n_0
    );
vsync_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => cam_vsync,
      Q => vsync_prev,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_camera_configure is
  port (
    cam_sda : out STD_LOGIC;
    cam_scl : out STD_LOGIC;
    pixel_clk : in STD_LOGIC;
    \FSM_state_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_camera_configure : entity is "camera_configure";
end design_1_top_0_0_camera_configure;

architecture STRUCTURE of design_1_top_0_0_camera_configure is
  signal FSM_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal SCCB_SIOC_oe : STD_LOGIC;
  signal SCCB_SIOD_oe : STD_LOGIC;
  signal SCCB_addr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SCCB_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SCCB_ready : STD_LOGIC;
  signal SCCB_start : STD_LOGIC;
  signal rom1_n_16 : STD_LOGIC;
  signal rom1_n_17 : STD_LOGIC;
  signal rom1_n_18 : STD_LOGIC;
  signal rom1_n_19 : STD_LOGIC;
  signal rom1_n_20 : STD_LOGIC;
  signal rom1_n_21 : STD_LOGIC;
  signal rom1_n_22 : STD_LOGIC;
  signal rom1_n_23 : STD_LOGIC;
  signal rom_addr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rom_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
SCCB1: entity work.design_1_top_0_0_SCCB_FSM_interface
     port map (
      Q(7 downto 0) => SCCB_data(7 downto 0),
      SCCB_SIOC_oe => SCCB_SIOC_oe,
      SCCB_SIOD_oe => SCCB_SIOD_oe,
      SCCB_ready => SCCB_ready,
      SCCB_start => SCCB_start,
      \latched_address_reg[7]_0\(7 downto 0) => SCCB_addr(7 downto 0),
      pixel_clk => pixel_clk
    );
cam_scl_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SCCB_SIOC_oe,
      O => cam_scl
    );
config_1: entity work.design_1_top_0_0_OV7670_config_FSM
     port map (
      E(0) => rom1_n_20,
      FSM_state(1 downto 0) => FSM_state(1 downto 0),
      \FSM_state_reg[0]_0\ => rom1_n_23,
      \FSM_state_reg[1]_0\ => rom1_n_21,
      \FSM_state_reg[1]_1\ => rom1_n_16,
      Q(7 downto 0) => rom_addr(7 downto 0),
      \SCCB_interface_addr_reg[7]_0\(7 downto 0) => SCCB_addr(7 downto 0),
      \SCCB_interface_data_reg[7]_0\(7 downto 0) => SCCB_data(7 downto 0),
      SCCB_ready => SCCB_ready,
      SCCB_start => SCCB_start,
      \out\(15 downto 0) => rom_dout(15 downto 0),
      pixel_clk => pixel_clk,
      \rom_addr_reg[0]_0\(0) => rom1_n_17,
      \timer_reg[0]_0\ => rom1_n_22,
      \timer_reg[1]_0\ => rom1_n_19,
      \timer_reg[1]_1\ => rom1_n_18
    );
\p_0_out_inferred__0/i_\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SCCB_SIOD_oe,
      O => cam_sda
    );
rom1: entity work.design_1_top_0_0_OV7670_config_rom
     port map (
      E(0) => rom1_n_20,
      FSM_state(1 downto 0) => FSM_state(1 downto 0),
      \FSM_state_reg[0]\ => rom1_n_21,
      \FSM_state_reg[0]_0\ => \FSM_state_reg[0]\,
      \FSM_state_reg[1]\ => rom1_n_16,
      Q(7 downto 0) => rom_addr(7 downto 0),
      SCCB_ready => SCCB_ready,
      dout_reg_0 => rom1_n_18,
      dout_reg_1 => rom1_n_19,
      \out\(15 downto 0) => rom_dout(15 downto 0),
      pixel_clk => pixel_clk,
      ready_reg(0) => rom1_n_17,
      ready_reg_0 => rom1_n_22,
      sccb_start_reg => rom1_n_23
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_system is
  port (
    S_AXIS_CAPTURE_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXIS_CAPTURE_tlast : in STD_LOGIC;
    S_AXIS_CAPTURE_tready : out STD_LOGIC;
    S_AXIS_CAPTURE_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_CAPTURE_tvalid : in STD_LOGIC;
    aresetn_pixel : out STD_LOGIC_VECTOR ( 0 to 0 );
    cam_pclk_i : in STD_LOGIC;
    cam_xclk : out STD_LOGIC;
    dbg_fifo_m_tvalid : out STD_LOGIC;
    fifo_m_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    hdmi_tx_clk_n : out STD_LOGIC;
    hdmi_tx_clk_p : out STD_LOGIC;
    hdmi_tx_d_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_tx_d_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mmcm_locked : out STD_LOGIC;
    pixel_clk : out STD_LOGIC;
    rgb2dvi_pll_locked : out STD_LOGIC;
    sys_clk : in STD_LOGIC;
    vid_active_i : in STD_LOGIC;
    vid_hsync_i : in STD_LOGIC;
    vid_pdata_i : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_vsync_i : in STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1_top_0_0_system : entity is "system.hwdef";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_system : entity is "system";
end design_1_top_0_0_system;

architecture STRUCTURE of design_1_top_0_0_system is
  component design_1_top_0_0_system_axis_data_fifo_0_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_top_0_0_system_axis_data_fifo_0_0;
  component design_1_top_0_0_system_clk_wiz_0_0 is
  port (
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  end component design_1_top_0_0_system_clk_wiz_0_0;
  component design_1_top_0_0_system_rgb2dvi_0_0 is
  port (
    TMDS_Clk_p : out STD_LOGIC;
    TMDS_Clk_n : out STD_LOGIC;
    TMDS_Data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_Data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    aRst_n : in STD_LOGIC;
    vid_pData : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_pVDE : in STD_LOGIC;
    vid_pHSync : in STD_LOGIC;
    vid_pVSync : in STD_LOGIC;
    PixelClk : in STD_LOGIC;
    LockedOut : out STD_LOGIC
  );
  end component design_1_top_0_0_system_rgb2dvi_0_0;
  component design_1_top_0_0_system_rst_pixel_74m_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_top_0_0_system_rst_pixel_74m_0;
  signal \<const0>\ : STD_LOGIC;
  signal \^aresetn_pixel\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axis_data_fifo_0_n_0 : STD_LOGIC;
  signal axis_data_fifo_0_n_1 : STD_LOGIC;
  signal axis_data_fifo_0_n_10 : STD_LOGIC;
  signal axis_data_fifo_0_n_11 : STD_LOGIC;
  signal axis_data_fifo_0_n_12 : STD_LOGIC;
  signal axis_data_fifo_0_n_13 : STD_LOGIC;
  signal axis_data_fifo_0_n_14 : STD_LOGIC;
  signal axis_data_fifo_0_n_15 : STD_LOGIC;
  signal axis_data_fifo_0_n_16 : STD_LOGIC;
  signal axis_data_fifo_0_n_17 : STD_LOGIC;
  signal axis_data_fifo_0_n_2 : STD_LOGIC;
  signal axis_data_fifo_0_n_3 : STD_LOGIC;
  signal axis_data_fifo_0_n_4 : STD_LOGIC;
  signal axis_data_fifo_0_n_5 : STD_LOGIC;
  signal axis_data_fifo_0_n_6 : STD_LOGIC;
  signal axis_data_fifo_0_n_7 : STD_LOGIC;
  signal axis_data_fifo_0_n_8 : STD_LOGIC;
  signal axis_data_fifo_0_n_9 : STD_LOGIC;
  signal \^mmcm_locked\ : STD_LOGIC;
  signal \^pixel_clk\ : STD_LOGIC;
  signal NLW_axis_data_fifo_0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axis_data_fifo_0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_pixel_74m_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_pixel_74m_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_pixel_74m_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_pixel_74m_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axis_data_fifo_0 : label is "system_axis_data_fifo_0_0,axis_data_fifo_v2_0_17_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of axis_data_fifo_0 : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axis_data_fifo_0 : label is "axis_data_fifo_v2_0_17_top,Vivado 2025.2";
  attribute CHECK_LICENSE_TYPE of rgb2dvi_0 : label is "system_rgb2dvi_0_0,rgb2dvi,{}";
  attribute DowngradeIPIdentifiedWarnings of rgb2dvi_0 : label is "yes";
  attribute X_CORE_INFO of rgb2dvi_0 : label is "rgb2dvi,Vivado 2025.2";
  attribute CHECK_LICENSE_TYPE of rst_pixel_74m : label is "system_rst_pixel_74m_0,proc_sys_reset,{}";
  attribute DowngradeIPIdentifiedWarnings of rst_pixel_74m : label is "yes";
  attribute X_CORE_INFO of rst_pixel_74m : label is "proc_sys_reset,Vivado 2025.2";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXIS_CAPTURE_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS_CAPTURE TLAST";
  attribute X_INTERFACE_INFO of S_AXIS_CAPTURE_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS_CAPTURE TREADY";
  attribute X_INTERFACE_INFO of S_AXIS_CAPTURE_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_CAPTURE TVALID";
  attribute X_INTERFACE_INFO of cam_pclk_i : signal is "xilinx.com:signal:clock:1.0 CLK.CAM_PCLK_I CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of cam_pclk_i : signal is "XIL_INTERFACENAME CLK.CAM_PCLK_I, ASSOCIATED_BUSIF S_AXIS_CAPTURE, CLK_DOMAIN system_cam_pclk_i, FREQ_HZ 24390000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of pixel_clk : signal is "xilinx.com:signal:clock:1.0 CLK.PIXEL_CLK CLK";
  attribute X_INTERFACE_PARAMETER of pixel_clk : signal is "XIL_INTERFACENAME CLK.PIXEL_CLK, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 74250000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of sys_clk : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLK CLK";
  attribute X_INTERFACE_PARAMETER of sys_clk : signal is "XIL_INTERFACENAME CLK.SYS_CLK, CLK_DOMAIN system_sys_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of S_AXIS_CAPTURE_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_CAPTURE TDATA";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of S_AXIS_CAPTURE_tdata : signal is "Slave";
  attribute X_INTERFACE_PARAMETER of S_AXIS_CAPTURE_tdata : signal is "XIL_INTERFACENAME S_AXIS_CAPTURE, CLK_DOMAIN system_cam_pclk_i, FREQ_HZ 24390000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXIS_CAPTURE_tuser : signal is "xilinx.com:interface:axis:1.0 S_AXIS_CAPTURE TUSER";
begin
  S_AXIS_CAPTURE_tready <= \<const0>\;
  aresetn_pixel(0) <= \^aresetn_pixel\(0);
  dbg_fifo_m_tvalid <= \<const0>\;
  fifo_m_tdata(15) <= \<const0>\;
  fifo_m_tdata(14) <= \<const0>\;
  fifo_m_tdata(13) <= \<const0>\;
  fifo_m_tdata(12) <= \<const0>\;
  fifo_m_tdata(11) <= \<const0>\;
  fifo_m_tdata(10) <= \<const0>\;
  fifo_m_tdata(9) <= \<const0>\;
  fifo_m_tdata(8) <= \<const0>\;
  fifo_m_tdata(7) <= \<const0>\;
  fifo_m_tdata(6) <= \<const0>\;
  fifo_m_tdata(5) <= \<const0>\;
  fifo_m_tdata(4) <= \<const0>\;
  fifo_m_tdata(3) <= \<const0>\;
  fifo_m_tdata(2) <= \<const0>\;
  fifo_m_tdata(1) <= \<const0>\;
  fifo_m_tdata(0) <= \<const0>\;
  mmcm_locked <= \^mmcm_locked\;
  pixel_clk <= \^pixel_clk\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
axis_data_fifo_0: component design_1_top_0_0_system_axis_data_fifo_0_0
     port map (
      m_axis_aclk => \^pixel_clk\,
      m_axis_tdata(15) => axis_data_fifo_0_n_2,
      m_axis_tdata(14) => axis_data_fifo_0_n_3,
      m_axis_tdata(13) => axis_data_fifo_0_n_4,
      m_axis_tdata(12) => axis_data_fifo_0_n_5,
      m_axis_tdata(11) => axis_data_fifo_0_n_6,
      m_axis_tdata(10) => axis_data_fifo_0_n_7,
      m_axis_tdata(9) => axis_data_fifo_0_n_8,
      m_axis_tdata(8) => axis_data_fifo_0_n_9,
      m_axis_tdata(7) => axis_data_fifo_0_n_10,
      m_axis_tdata(6) => axis_data_fifo_0_n_11,
      m_axis_tdata(5) => axis_data_fifo_0_n_12,
      m_axis_tdata(4) => axis_data_fifo_0_n_13,
      m_axis_tdata(3) => axis_data_fifo_0_n_14,
      m_axis_tdata(2) => axis_data_fifo_0_n_15,
      m_axis_tdata(1) => axis_data_fifo_0_n_16,
      m_axis_tdata(0) => axis_data_fifo_0_n_17,
      m_axis_tlast => NLW_axis_data_fifo_0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '1',
      m_axis_tuser(0) => NLW_axis_data_fifo_0_m_axis_tuser_UNCONNECTED(0),
      m_axis_tvalid => axis_data_fifo_0_n_1,
      s_axis_aclk => cam_pclk_i,
      s_axis_aresetn => \^aresetn_pixel\(0),
      s_axis_tdata(15 downto 0) => S_AXIS_CAPTURE_tdata(15 downto 0),
      s_axis_tlast => S_AXIS_CAPTURE_tlast,
      s_axis_tready => axis_data_fifo_0_n_0,
      s_axis_tuser(0) => S_AXIS_CAPTURE_tuser(0),
      s_axis_tvalid => S_AXIS_CAPTURE_tvalid
    );
clk_wiz_0: component design_1_top_0_0_system_clk_wiz_0_0
     port map (
      clk_in1 => sys_clk,
      clk_out1 => \^pixel_clk\,
      clk_out2 => cam_xclk,
      locked => \^mmcm_locked\,
      resetn => '1'
    );
rgb2dvi_0: component design_1_top_0_0_system_rgb2dvi_0_0
     port map (
      LockedOut => rgb2dvi_pll_locked,
      PixelClk => \^pixel_clk\,
      TMDS_Clk_n => hdmi_tx_clk_n,
      TMDS_Clk_p => hdmi_tx_clk_p,
      TMDS_Data_n(2 downto 0) => hdmi_tx_d_n(2 downto 0),
      TMDS_Data_p(2 downto 0) => hdmi_tx_d_p(2 downto 0),
      aRst_n => \^aresetn_pixel\(0),
      vid_pData(23 downto 16) => vid_pdata_i(23 downto 16),
      vid_pData(15 downto 8) => vid_pdata_i(23 downto 16),
      vid_pData(7 downto 0) => vid_pdata_i(23 downto 16),
      vid_pHSync => vid_hsync_i,
      vid_pVDE => vid_active_i,
      vid_pVSync => vid_vsync_i
    );
rst_pixel_74m: component design_1_top_0_0_system_rst_pixel_74m_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_pixel_74m_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => \^mmcm_locked\,
      ext_reset_in => '1',
      interconnect_aresetn(0) => NLW_rst_pixel_74m_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_pixel_74m_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => \^aresetn_pixel\(0),
      peripheral_reset(0) => NLW_rst_pixel_74m_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => \^pixel_clk\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_system_wrapper is
  port (
    cam_xclk : out STD_LOGIC;
    hdmi_tx_clk_n : out STD_LOGIC;
    hdmi_tx_clk_p : out STD_LOGIC;
    hdmi_tx_d_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_tx_d_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mmcm_locked : out STD_LOGIC;
    pixel_clk : out STD_LOGIC;
    led4_g : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sync_h_reg[9]\ : out STD_LOGIC;
    rst_0 : out STD_LOGIC;
    rst_1 : out STD_LOGIC;
    \bbstub_peripheral_aresetn[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sync_h_reg[10]\ : out STD_LOGIC;
    \sync_h_reg[8]\ : out STD_LOGIC;
    \sync_v_reg[0]\ : out STD_LOGIC;
    sccb_fired_reg : out STD_LOGIC;
    axis_data_fifo_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXIS_CAPTURE_tlast : in STD_LOGIC;
    S_AXIS_CAPTURE_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    rp_pixel_valid : in STD_LOGIC;
    cam_pclk : in STD_LOGIC;
    sys_clk : in STD_LOGIC;
    vid_active_i : in STD_LOGIC;
    vid_hsync_i : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    vid_vsync_i : in STD_LOGIC;
    in_panel_d2 : in STD_LOGIC;
    \vid_pdata_r_reg[23]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    sccb_fired1_out : in STD_LOGIC;
    rst : in STD_LOGIC;
    sync_h_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    vid_active_r_reg : in STD_LOGIC;
    vid_active_r_reg_0 : in STD_LOGIC;
    vid_hsync_r_reg : in STD_LOGIC;
    vid_hsync_r_reg_0 : in STD_LOGIC;
    vid_hsync_r_reg_1 : in STD_LOGIC;
    vid_vsync_r_reg : in STD_LOGIC;
    vid_vsync_r_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sccb_fired : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_system_wrapper : entity is "system_wrapper";
end design_1_top_0_0_system_wrapper;

architecture STRUCTURE of design_1_top_0_0_system_wrapper is
  signal aresetn_pixel : STD_LOGIC;
  signal \^mmcm_locked\ : STD_LOGIC;
  signal NLW_system_i_S_AXIS_CAPTURE_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_system_i_dbg_fifo_m_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_system_i_fifo_m_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of sccb_fired_i_1 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of sccb_start_i_1 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \sync_h[0]_i_1\ : label is "soft_lutpair34";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of system_i : label is "system.hwdef";
  attribute SOFT_HLUTNM of \vid_pdata_r[23]_i_1\ : label is "soft_lutpair34";
begin
  mmcm_locked <= \^mmcm_locked\;
\sccb_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rst,
      I1 => \^mmcm_locked\,
      O => rst_1
    );
sccb_fired_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => sccb_fired,
      I1 => sccb_fired1_out,
      I2 => \^mmcm_locked\,
      I3 => rst,
      O => sccb_fired_reg
    );
sccb_start_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => sccb_fired1_out,
      I1 => rst,
      I2 => \^mmcm_locked\,
      O => rst_0
    );
\sync_h[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => E(0),
      I1 => aresetn_pixel,
      O => \sync_h_reg[9]\
    );
\sync_v[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn_pixel,
      O => \bbstub_peripheral_aresetn[0]\(0)
    );
system_i: entity work.design_1_top_0_0_system
     port map (
      S_AXIS_CAPTURE_tdata(15 downto 0) => axis_data_fifo_0(15 downto 0),
      S_AXIS_CAPTURE_tlast => S_AXIS_CAPTURE_tlast,
      S_AXIS_CAPTURE_tready => NLW_system_i_S_AXIS_CAPTURE_tready_UNCONNECTED,
      S_AXIS_CAPTURE_tuser(0) => S_AXIS_CAPTURE_tuser(0),
      S_AXIS_CAPTURE_tvalid => rp_pixel_valid,
      aresetn_pixel(0) => aresetn_pixel,
      cam_pclk_i => cam_pclk,
      cam_xclk => cam_xclk,
      dbg_fifo_m_tvalid => NLW_system_i_dbg_fifo_m_tvalid_UNCONNECTED,
      fifo_m_tdata(15 downto 0) => NLW_system_i_fifo_m_tdata_UNCONNECTED(15 downto 0),
      hdmi_tx_clk_n => hdmi_tx_clk_n,
      hdmi_tx_clk_p => hdmi_tx_clk_p,
      hdmi_tx_d_n(2 downto 0) => hdmi_tx_d_n(2 downto 0),
      hdmi_tx_d_p(2 downto 0) => hdmi_tx_d_p(2 downto 0),
      mmcm_locked => \^mmcm_locked\,
      pixel_clk => pixel_clk,
      rgb2dvi_pll_locked => led4_g,
      sys_clk => sys_clk,
      vid_active_i => vid_active_i,
      vid_hsync_i => vid_hsync_i,
      vid_pdata_i(23 downto 16) => Q(7 downto 0),
      vid_pdata_i(15 downto 0) => B"0000000000000000",
      vid_vsync_i => vid_vsync_i
    );
vid_active_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0507000000000000"
    )
        port map (
      I0 => sync_h_reg(3),
      I1 => sync_h_reg(1),
      I2 => vid_active_r_reg,
      I3 => sync_h_reg(2),
      I4 => vid_active_r_reg_0,
      I5 => aresetn_pixel,
      O => \sync_h_reg[10]\
    );
vid_hsync_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2030200000000000"
    )
        port map (
      I0 => vid_hsync_r_reg,
      I1 => vid_hsync_r_reg_0,
      I2 => sync_h_reg(1),
      I3 => sync_h_reg(0),
      I4 => vid_hsync_r_reg_1,
      I5 => aresetn_pixel,
      O => \sync_h_reg[8]\
    );
\vid_pdata_r[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => in_panel_d2,
      I1 => \vid_pdata_r_reg[23]\,
      I2 => aresetn_pixel,
      O => SR(0)
    );
vid_vsync_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0054555500000000"
    )
        port map (
      I0 => vid_vsync_r_reg,
      I1 => vid_vsync_r_reg_0(0),
      I2 => vid_vsync_r_reg_0(1),
      I3 => vid_vsync_r_reg_0(3),
      I4 => vid_vsync_r_reg_0(2),
      I5 => aresetn_pixel,
      O => \sync_v_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_top is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    led_mmcm_locked : out STD_LOGIC;
    bram_read_addr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    pixel_clk : out STD_LOGIC;
    cam_sda : out STD_LOGIC;
    cam_scl : out STD_LOGIC;
    hdmi_tx_clk_n : out STD_LOGIC;
    hdmi_tx_clk_p : out STD_LOGIC;
    hdmi_tx_d_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_tx_d_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    led4_g : out STD_LOGIC;
    \pixel_data_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cam_xclk : out STD_LOGIC;
    led5_g : out STD_LOGIC;
    bram_read_en : out STD_LOGIC;
    led_pll_locked : out STD_LOGIC;
    led_vid_locked : out STD_LOGIC;
    led_pixel_active : out STD_LOGIC;
    bram_en : out STD_LOGIC;
    frame_done : out STD_LOGIC;
    rst : in STD_LOGIC;
    cam_href : in STD_LOGIC;
    cam_pclk : in STD_LOGIC;
    sys_clk : in STD_LOGIC;
    cam_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cam_vsync : in STD_LOGIC;
    bram_read_data : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_top : entity is "top";
end design_1_top_0_0_top;

architecture STRUCTURE of design_1_top_0_0_top is
  signal A : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal B : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RSTC : STD_LOGIC;
  signal \^bram_read_addr\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \bram_read_addr[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \bram_read_addr[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \bram_read_addr[4]_INST_0_n_0\ : STD_LOGIC;
  signal \bram_read_addr[4]_INST_0_n_1\ : STD_LOGIC;
  signal \bram_read_addr[4]_INST_0_n_2\ : STD_LOGIC;
  signal \bram_read_addr[4]_INST_0_n_3\ : STD_LOGIC;
  signal \bram_read_addr[8]_INST_0_n_1\ : STD_LOGIC;
  signal \bram_read_addr[8]_INST_0_n_2\ : STD_LOGIC;
  signal \bram_read_addr[8]_INST_0_n_3\ : STD_LOGIC;
  signal \^bram_read_en\ : STD_LOGIC;
  signal bram_read_en_INST_0_i_1_n_0 : STD_LOGIC;
  signal bram_read_en_INST_0_i_2_n_0 : STD_LOGIC;
  signal bram_read_en_INST_0_i_3_n_0 : STD_LOGIC;
  signal bram_read_en_INST_0_i_4_n_0 : STD_LOGIC;
  signal bram_read_en_INST_0_i_5_n_0 : STD_LOGIC;
  signal bram_read_en_INST_0_i_6_n_0 : STD_LOGIC;
  signal cam_href_d : STD_LOGIC;
  signal cam_x : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cam_x_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal cam_xclk_o : STD_LOGIC;
  signal cam_y : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cam_y_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal capture_axis_tlast : STD_LOGIC;
  signal capture_axis_tuser : STD_LOGIC;
  signal cnn_raddr0 : STD_LOGIC_VECTOR ( 11 downto 4 );
  signal \cnn_raddr0__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \cnn_raddr0__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \cnn_raddr0__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \cnn_raddr0__0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \cnn_raddr0__0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \cnn_raddr0__0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \cnn_raddr0__0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \cnn_raddr0__0_carry__0_n_0\ : STD_LOGIC;
  signal \cnn_raddr0__0_carry__0_n_1\ : STD_LOGIC;
  signal \cnn_raddr0__0_carry__0_n_2\ : STD_LOGIC;
  signal \cnn_raddr0__0_carry__0_n_3\ : STD_LOGIC;
  signal \cnn_raddr0__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \cnn_raddr0__0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \cnn_raddr0__0_carry__1_n_3\ : STD_LOGIC;
  signal \cnn_raddr0__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \cnn_raddr0__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \cnn_raddr0__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \cnn_raddr0__0_carry_n_0\ : STD_LOGIC;
  signal \cnn_raddr0__0_carry_n_1\ : STD_LOGIC;
  signal \cnn_raddr0__0_carry_n_2\ : STD_LOGIC;
  signal \cnn_raddr0__0_carry_n_3\ : STD_LOGIC;
  signal \cnn_raddr0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \cnn_raddr0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \cnn_raddr0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \cnn_raddr0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \cnn_raddr0_carry__0_n_1\ : STD_LOGIC;
  signal \cnn_raddr0_carry__0_n_2\ : STD_LOGIC;
  signal \cnn_raddr0_carry__0_n_3\ : STD_LOGIC;
  signal cnn_raddr0_carry_i_2_n_0 : STD_LOGIC;
  signal cnn_raddr0_carry_i_3_n_0 : STD_LOGIC;
  signal cnn_raddr0_carry_n_0 : STD_LOGIC;
  signal cnn_raddr0_carry_n_1 : STD_LOGIC;
  signal cnn_raddr0_carry_n_2 : STD_LOGIC;
  signal cnn_raddr0_carry_n_3 : STD_LOGIC;
  signal disp_cam_x : STD_LOGIC_VECTOR ( 9 to 9 );
  signal frame_buf_reg_0_0_i_10_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_11_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_11_n_1 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_11_n_2 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_11_n_3 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_12_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_13_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_14_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_16_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_16_n_1 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_16_n_2 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_16_n_3 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_17_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_17_n_1 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_17_n_2 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_17_n_3 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_18_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_19_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_20_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_21_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_22_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_23_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_24_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_25_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_26_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_27_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_28_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_29_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_2_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_30_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_31_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_32_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_33_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_34_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_35_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_36_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_37_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_3_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_4_n_2 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_4_n_3 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_4_n_5 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_4_n_6 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_4_n_7 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_5_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_5_n_1 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_5_n_2 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_5_n_3 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_5_n_4 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_5_n_5 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_5_n_6 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_5_n_7 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_6_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_6_n_1 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_6_n_2 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_6_n_3 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_6_n_4 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_6_n_5 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_6_n_6 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_6_n_7 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_7_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_7_n_1 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_7_n_2 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_7_n_3 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_8_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_8_n_1 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_8_n_2 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_8_n_3 : STD_LOGIC;
  signal frame_buf_reg_0_0_i_9_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_0_n_1 : STD_LOGIC;
  signal frame_buf_reg_0_1_i_1_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_1_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_1_n_1 : STD_LOGIC;
  signal frame_buf_reg_0_2_i_1_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_2_i_1_n_1 : STD_LOGIC;
  signal frame_buf_reg_0_2_i_1_n_2 : STD_LOGIC;
  signal frame_buf_reg_0_2_i_1_n_3 : STD_LOGIC;
  signal frame_buf_reg_0_2_i_2_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_2_i_3_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_2_i_4_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_2_i_5_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_2_i_6_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_2_i_7_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_2_i_8_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_2_i_9_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_2_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_2_n_1 : STD_LOGIC;
  signal frame_buf_reg_0_3_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_3_n_1 : STD_LOGIC;
  signal frame_buf_reg_0_4_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_4_n_1 : STD_LOGIC;
  signal frame_buf_reg_0_5_i_1_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_5_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_5_n_1 : STD_LOGIC;
  signal frame_buf_reg_0_6_i_2_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_6_i_3_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_6_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_6_n_1 : STD_LOGIC;
  signal frame_buf_reg_0_7_n_0 : STD_LOGIC;
  signal frame_buf_reg_0_7_n_1 : STD_LOGIC;
  signal \frame_buf_reg_1_0__0_i_2_n_0\ : STD_LOGIC;
  signal \frame_buf_reg_1_0__0_i_3_n_0\ : STD_LOGIC;
  signal \frame_buf_reg_1_0__0_i_4_n_0\ : STD_LOGIC;
  signal \frame_buf_reg_1_0__0_n_35\ : STD_LOGIC;
  signal \frame_buf_reg_1_0__0_n_67\ : STD_LOGIC;
  signal frame_buf_reg_1_0_n_67 : STD_LOGIC;
  signal \frame_buf_reg_1_1__0_n_35\ : STD_LOGIC;
  signal \frame_buf_reg_1_1__0_n_67\ : STD_LOGIC;
  signal frame_buf_reg_1_1_n_67 : STD_LOGIC;
  signal \frame_buf_reg_1_2__0_n_35\ : STD_LOGIC;
  signal \frame_buf_reg_1_2__0_n_67\ : STD_LOGIC;
  signal frame_buf_reg_1_2_i_1_n_0 : STD_LOGIC;
  signal frame_buf_reg_1_2_n_67 : STD_LOGIC;
  signal \frame_buf_reg_1_3__0_i_1_n_0\ : STD_LOGIC;
  signal \frame_buf_reg_1_3__0_n_35\ : STD_LOGIC;
  signal \frame_buf_reg_1_3__0_n_67\ : STD_LOGIC;
  signal frame_buf_reg_1_3_i_1_n_0 : STD_LOGIC;
  signal frame_buf_reg_1_3_n_67 : STD_LOGIC;
  signal \frame_buf_reg_1_4__0_n_35\ : STD_LOGIC;
  signal \frame_buf_reg_1_4__0_n_67\ : STD_LOGIC;
  signal frame_buf_reg_1_4_n_67 : STD_LOGIC;
  signal \frame_buf_reg_1_5__0_i_1_n_0\ : STD_LOGIC;
  signal \frame_buf_reg_1_5__0_n_35\ : STD_LOGIC;
  signal \frame_buf_reg_1_5__0_n_67\ : STD_LOGIC;
  signal frame_buf_reg_1_5_n_67 : STD_LOGIC;
  signal \frame_buf_reg_1_6__0_n_35\ : STD_LOGIC;
  signal \frame_buf_reg_1_6__0_n_67\ : STD_LOGIC;
  signal frame_buf_reg_1_6_n_67 : STD_LOGIC;
  signal \frame_buf_reg_1_7__0_n_35\ : STD_LOGIC;
  signal \frame_buf_reg_1_7__0_n_67\ : STD_LOGIC;
  signal frame_buf_reg_1_7_i_1_n_0 : STD_LOGIC;
  signal frame_buf_reg_1_7_n_67 : STD_LOGIC;
  signal \frame_buf_reg_mux_sel_b_pos_0__6_i_1_n_2\ : STD_LOGIC;
  signal \frame_buf_reg_mux_sel_b_pos_0__6_i_1_n_3\ : STD_LOGIC;
  signal \frame_buf_reg_mux_sel_b_pos_0__6_n_0\ : STD_LOGIC;
  signal \frame_buf_reg_mux_sel_b_pos_1__6_n_0\ : STD_LOGIC;
  signal \hr_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \hr_cnt[13]_i_1_n_0\ : STD_LOGIC;
  signal \hr_cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \hr_cnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \hr_cnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \hr_cnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \hr_cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \hr_cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \hr_cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \hr_cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \hr_cnt_reg[13]_i_2_n_3\ : STD_LOGIC;
  signal \hr_cnt_reg[13]_i_2_n_6\ : STD_LOGIC;
  signal \hr_cnt_reg[13]_i_2_n_7\ : STD_LOGIC;
  signal \hr_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \hr_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \hr_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \hr_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \hr_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \hr_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \hr_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \hr_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \hr_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \hr_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \hr_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \hr_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \hr_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \hr_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \hr_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \hr_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \hr_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \hr_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \hr_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \hr_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \hr_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \hr_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \hr_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \hr_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \hr_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \hr_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \hr_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \hr_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \hr_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal hr_prev : STD_LOGIC;
  signal hr_s2 : STD_LOGIC;
  signal in_panel_d1 : STD_LOGIC;
  signal in_panel_d2 : STD_LOGIC;
  signal \^led5_g\ : STD_LOGIC;
  signal \^led_pixel_active\ : STD_LOGIC;
  signal \^led_pll_locked\ : STD_LOGIC;
  signal \^led_vid_locked\ : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 16 downto 7 );
  signal p_11_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal panel_y_pixel : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \panel_y_pixel[7]_i_1_n_0\ : STD_LOGIC;
  signal \pclk_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \pclk_cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \pclk_cnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \pclk_cnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \pclk_cnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \pclk_cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \pclk_cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \pclk_cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \pclk_cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \pclk_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \pclk_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \pclk_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \pclk_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \pclk_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \pclk_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \pclk_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \pclk_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \pclk_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \pclk_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \pclk_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \pclk_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \pclk_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \pclk_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \pclk_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \pclk_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \pclk_cnt_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \pclk_cnt_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \pclk_cnt_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \pclk_cnt_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \pclk_cnt_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \pclk_cnt_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \pclk_cnt_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \pclk_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \pclk_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \pclk_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \pclk_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \pclk_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \pclk_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \pclk_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \pclk_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \pclk_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \pclk_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \pclk_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \pclk_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \pclk_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \pclk_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \pclk_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \pclk_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \pclk_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \^pixel_clk\ : STD_LOGIC;
  signal \^pixel_data_reg[15]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal qvga_raddr : STD_LOGIC_VECTOR ( 16 downto 6 );
  signal qvga_raddr0 : STD_LOGIC_VECTOR ( 16 downto 8 );
  signal \qvga_waddr__0_i_1_n_0\ : STD_LOGIC;
  signal \qvga_waddr__0_n_0\ : STD_LOGIC;
  signal \qvga_waddr__10_n_0\ : STD_LOGIC;
  signal \qvga_waddr__11_i_1_n_0\ : STD_LOGIC;
  signal \qvga_waddr__11_n_0\ : STD_LOGIC;
  signal \qvga_waddr__12_i_1_n_0\ : STD_LOGIC;
  signal \qvga_waddr__12_n_0\ : STD_LOGIC;
  signal \qvga_waddr__13_i_1_n_0\ : STD_LOGIC;
  signal \qvga_waddr__13_n_0\ : STD_LOGIC;
  signal \qvga_waddr__14_i_1_n_0\ : STD_LOGIC;
  signal \qvga_waddr__14_n_0\ : STD_LOGIC;
  signal \qvga_waddr__15_n_0\ : STD_LOGIC;
  signal \qvga_waddr__1_i_1_n_0\ : STD_LOGIC;
  signal \qvga_waddr__1_n_0\ : STD_LOGIC;
  signal \qvga_waddr__2_i_1_n_0\ : STD_LOGIC;
  signal \qvga_waddr__2_i_2_n_0\ : STD_LOGIC;
  signal \qvga_waddr__2_n_0\ : STD_LOGIC;
  signal \qvga_waddr__3_i_1_n_0\ : STD_LOGIC;
  signal \qvga_waddr__3_n_0\ : STD_LOGIC;
  signal \qvga_waddr__4_i_1_n_0\ : STD_LOGIC;
  signal \qvga_waddr__4_n_0\ : STD_LOGIC;
  signal \qvga_waddr__5_i_1_n_0\ : STD_LOGIC;
  signal \qvga_waddr__5_n_0\ : STD_LOGIC;
  signal \qvga_waddr__6_i_1_n_0\ : STD_LOGIC;
  signal \qvga_waddr__6_n_0\ : STD_LOGIC;
  signal \qvga_waddr__7_i_1_n_0\ : STD_LOGIC;
  signal \qvga_waddr__7_n_0\ : STD_LOGIC;
  signal \qvga_waddr__8_i_3_n_0\ : STD_LOGIC;
  signal \qvga_waddr__8_i_4_n_0\ : STD_LOGIC;
  signal \qvga_waddr__8_n_0\ : STD_LOGIC;
  signal \qvga_waddr__9_n_0\ : STD_LOGIC;
  signal qvga_waddr_i_3_n_0 : STD_LOGIC;
  signal qvga_waddr_i_4_n_0 : STD_LOGIC;
  signal qvga_waddr_n_0 : STD_LOGIC;
  signal rp_pixel_valid : STD_LOGIC;
  signal \sccb_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \sccb_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \sccb_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \sccb_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \sccb_cnt[0]_i_8_n_0\ : STD_LOGIC;
  signal \sccb_cnt[0]_i_9_n_0\ : STD_LOGIC;
  signal sccb_cnt_reg : STD_LOGIC_VECTOR ( 22 downto 3 );
  signal \sccb_cnt_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \sccb_cnt_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \sccb_cnt_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \sccb_cnt_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \sccb_cnt_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \sccb_cnt_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \sccb_cnt_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \sccb_cnt_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \sccb_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \sccb_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \sccb_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \sccb_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \sccb_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \sccb_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \sccb_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \sccb_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \sccb_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \sccb_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \sccb_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \sccb_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \sccb_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \sccb_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \sccb_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \sccb_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \sccb_cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \sccb_cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \sccb_cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \sccb_cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \sccb_cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \sccb_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sccb_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \sccb_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \sccb_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \sccb_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \sccb_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \sccb_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \sccb_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \sccb_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sccb_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \sccb_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sccb_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \sccb_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \sccb_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \sccb_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \sccb_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \sccb_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \sccb_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \sccb_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal sccb_fired : STD_LOGIC;
  signal sccb_fired1_out : STD_LOGIC;
  signal sccb_start : STD_LOGIC;
  signal sccb_start_reg_n_0 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal \sync_h[0]_i_3_n_0\ : STD_LOGIC;
  signal sync_h_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \sync_h_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \sync_h_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \sync_h_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \sync_h_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \sync_h_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \sync_h_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \sync_h_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \sync_h_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \sync_h_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sync_h_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \sync_h_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \sync_h_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \sync_h_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \sync_h_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \sync_h_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \sync_h_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \sync_h_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sync_h_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \sync_h_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \sync_h_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \sync_h_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal sync_v : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \sync_v1_carry__0_n_0\ : STD_LOGIC;
  signal \sync_v1_carry__0_n_1\ : STD_LOGIC;
  signal \sync_v1_carry__0_n_2\ : STD_LOGIC;
  signal \sync_v1_carry__0_n_3\ : STD_LOGIC;
  signal \sync_v1_carry__0_n_4\ : STD_LOGIC;
  signal \sync_v1_carry__0_n_5\ : STD_LOGIC;
  signal \sync_v1_carry__0_n_6\ : STD_LOGIC;
  signal \sync_v1_carry__0_n_7\ : STD_LOGIC;
  signal \sync_v1_carry__1_n_2\ : STD_LOGIC;
  signal \sync_v1_carry__1_n_3\ : STD_LOGIC;
  signal \sync_v1_carry__1_n_5\ : STD_LOGIC;
  signal \sync_v1_carry__1_n_6\ : STD_LOGIC;
  signal \sync_v1_carry__1_n_7\ : STD_LOGIC;
  signal sync_v1_carry_n_0 : STD_LOGIC;
  signal sync_v1_carry_n_1 : STD_LOGIC;
  signal sync_v1_carry_n_2 : STD_LOGIC;
  signal sync_v1_carry_n_3 : STD_LOGIC;
  signal sync_v1_carry_n_4 : STD_LOGIC;
  signal sync_v1_carry_n_5 : STD_LOGIC;
  signal sync_v1_carry_n_6 : STD_LOGIC;
  signal sync_v1_carry_n_7 : STD_LOGIC;
  signal \sync_v[0]_i_1_n_0\ : STD_LOGIC;
  signal \sync_v[10]_i_1_n_0\ : STD_LOGIC;
  signal \sync_v[11]_i_1_n_0\ : STD_LOGIC;
  signal \sync_v[1]_i_1_n_0\ : STD_LOGIC;
  signal \sync_v[2]_i_3_n_0\ : STD_LOGIC;
  signal \sync_v[2]_i_4_n_0\ : STD_LOGIC;
  signal \sync_v[2]_i_5_n_0\ : STD_LOGIC;
  signal \sync_v[2]_i_6_n_0\ : STD_LOGIC;
  signal \sync_v[2]_i_7_n_0\ : STD_LOGIC;
  signal \sync_v[3]_i_1_n_0\ : STD_LOGIC;
  signal \sync_v[4]_i_1_n_0\ : STD_LOGIC;
  signal \sync_v[5]_i_1_n_0\ : STD_LOGIC;
  signal \sync_v[6]_i_1_n_0\ : STD_LOGIC;
  signal \sync_v[7]_i_1_n_0\ : STD_LOGIC;
  signal \sync_v[8]_i_1_n_0\ : STD_LOGIC;
  signal \sync_v[9]_i_1_n_0\ : STD_LOGIC;
  signal \sync_v_reg_n_0_[0]\ : STD_LOGIC;
  signal \sync_v_reg_n_0_[10]\ : STD_LOGIC;
  signal \sync_v_reg_n_0_[11]\ : STD_LOGIC;
  signal \sync_v_reg_n_0_[1]\ : STD_LOGIC;
  signal \sync_v_reg_n_0_[3]\ : STD_LOGIC;
  signal \sync_v_reg_n_0_[4]\ : STD_LOGIC;
  signal \sync_v_reg_n_0_[5]\ : STD_LOGIC;
  signal \sync_v_reg_n_0_[6]\ : STD_LOGIC;
  signal \sync_v_reg_n_0_[7]\ : STD_LOGIC;
  signal \sync_v_reg_n_0_[8]\ : STD_LOGIC;
  signal \sync_v_reg_n_0_[9]\ : STD_LOGIC;
  signal u_read_pixels_n_3 : STD_LOGIC;
  signal u_read_pixels_n_4 : STD_LOGIC;
  signal u_system_n_12 : STD_LOGIC;
  signal u_system_n_13 : STD_LOGIC;
  signal u_system_n_14 : STD_LOGIC;
  signal u_system_n_15 : STD_LOGIC;
  signal u_system_n_16 : STD_LOGIC;
  signal u_system_n_17 : STD_LOGIC;
  signal u_system_n_18 : STD_LOGIC;
  signal u_system_n_19 : STD_LOGIC;
  signal u_system_n_20 : STD_LOGIC;
  signal vid_active_r : STD_LOGIC;
  signal vid_active_r_i_2_n_0 : STD_LOGIC;
  signal vid_active_r_i_3_n_0 : STD_LOGIC;
  signal vid_hsync_r : STD_LOGIC;
  signal vid_hsync_r_i_2_n_0 : STD_LOGIC;
  signal vid_hsync_r_i_3_n_0 : STD_LOGIC;
  signal vid_hsync_r_i_4_n_0 : STD_LOGIC;
  signal \vid_pdata_r_reg_n_0_[16]\ : STD_LOGIC;
  signal \vid_pdata_r_reg_n_0_[17]\ : STD_LOGIC;
  signal \vid_pdata_r_reg_n_0_[18]\ : STD_LOGIC;
  signal \vid_pdata_r_reg_n_0_[19]\ : STD_LOGIC;
  signal \vid_pdata_r_reg_n_0_[20]\ : STD_LOGIC;
  signal \vid_pdata_r_reg_n_0_[21]\ : STD_LOGIC;
  signal \vid_pdata_r_reg_n_0_[22]\ : STD_LOGIC;
  signal \vid_pdata_r_reg_n_0_[23]\ : STD_LOGIC;
  signal vid_vsync_r : STD_LOGIC;
  signal vid_vsync_r_i_2_n_0 : STD_LOGIC;
  signal vid_vsync_r_i_3_n_0 : STD_LOGIC;
  signal \vs_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \vs_cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \vs_cnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \vs_cnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \vs_cnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \vs_cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \vs_cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \vs_cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \vs_cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \vs_cnt_reg[5]_i_2_n_3\ : STD_LOGIC;
  signal \vs_cnt_reg[5]_i_2_n_6\ : STD_LOGIC;
  signal \vs_cnt_reg[5]_i_2_n_7\ : STD_LOGIC;
  signal \vs_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \vs_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \vs_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \vs_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \vs_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal vs_prev : STD_LOGIC;
  signal vs_s2 : STD_LOGIC;
  signal \xclk_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \xclk_cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \xclk_cnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \xclk_cnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \xclk_cnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \xclk_cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \xclk_cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \xclk_cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \xclk_cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \xclk_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \xclk_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \xclk_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \xclk_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \xclk_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \xclk_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \xclk_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \xclk_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \xclk_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \xclk_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \xclk_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \xclk_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \xclk_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \xclk_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \xclk_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \xclk_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \xclk_cnt_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \xclk_cnt_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \xclk_cnt_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \xclk_cnt_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \xclk_cnt_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \xclk_cnt_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \xclk_cnt_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \xclk_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \xclk_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \xclk_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \xclk_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \xclk_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \xclk_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \xclk_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \xclk_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \xclk_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \xclk_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \xclk_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \xclk_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \xclk_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \xclk_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \xclk_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \xclk_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \xclk_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \xclk_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \xclk_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \xclk_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \xclk_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \xclk_cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \xclk_cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \xclk_cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \xclk_cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \xclk_cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \xclk_cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \xclk_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \xclk_cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \xclk_cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \xclk_cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \xclk_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \xclk_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \xclk_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \xclk_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \xclk_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \xclk_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \xclk_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \xclk_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal y_luma : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_bram_read_addr[8]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cnn_raddr0__0_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_cnn_raddr0__0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_cnn_raddr0__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnn_raddr0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_frame_buf_reg_0_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_0_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_0_0_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_0_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_buf_reg_0_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_buf_reg_0_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_0_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_0_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_buf_reg_0_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_buf_reg_0_0_i_11_O_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_frame_buf_reg_0_0_i_15_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_0_0_i_15_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_frame_buf_reg_0_0_i_4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_frame_buf_reg_0_0_i_4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_frame_buf_reg_0_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_1_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_0_1_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_0_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_buf_reg_0_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_buf_reg_0_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_0_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_0_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_buf_reg_0_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_buf_reg_0_2_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_2_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_2_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_2_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_2_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_0_2_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_0_2_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_buf_reg_0_2_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_buf_reg_0_2_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_0_2_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_0_2_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_buf_reg_0_2_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_buf_reg_0_3_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_3_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_3_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_3_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_3_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_0_3_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_0_3_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_buf_reg_0_3_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_buf_reg_0_3_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_0_3_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_0_3_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_buf_reg_0_3_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_buf_reg_0_4_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_4_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_4_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_4_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_4_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_0_4_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_0_4_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_buf_reg_0_4_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_buf_reg_0_4_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_0_4_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_0_4_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_buf_reg_0_4_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_buf_reg_0_5_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_5_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_5_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_5_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_5_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_0_5_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_0_5_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_buf_reg_0_5_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_buf_reg_0_5_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_0_5_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_0_5_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_buf_reg_0_5_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_buf_reg_0_6_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_6_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_6_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_6_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_6_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_0_6_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_0_6_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_buf_reg_0_6_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_buf_reg_0_6_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_0_6_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_0_6_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_buf_reg_0_6_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_buf_reg_0_6_i_1_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_0_6_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_frame_buf_reg_0_7_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_7_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_7_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_7_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_0_7_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_0_7_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_0_7_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_buf_reg_0_7_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_buf_reg_0_7_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_0_7_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_0_7_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_buf_reg_0_7_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_buf_reg_1_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_0_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_1_0_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_1_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_buf_reg_1_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_frame_buf_reg_1_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_1_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_1_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_buf_reg_1_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_frame_buf_reg_1_0__0_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_0__0_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_0__0_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_0__0_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_0__0_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_0__0_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_0__0_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_frame_buf_reg_1_0__0_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_frame_buf_reg_1_0__0_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_frame_buf_reg_1_0__0_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_frame_buf_reg_1_0__0_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_frame_buf_reg_1_0__0_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_buf_reg_1_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_1_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_1_1_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_1_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_buf_reg_1_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_frame_buf_reg_1_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_1_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_1_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_buf_reg_1_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_frame_buf_reg_1_1__0_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_1__0_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_1__0_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_1__0_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_1__0_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_1__0_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_1__0_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_frame_buf_reg_1_1__0_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_frame_buf_reg_1_1__0_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_frame_buf_reg_1_1__0_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_frame_buf_reg_1_1__0_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_frame_buf_reg_1_1__0_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_buf_reg_1_2_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_2_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_2_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_2_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_2_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_2_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_2_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_1_2_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_1_2_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_buf_reg_1_2_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_frame_buf_reg_1_2_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_1_2_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_1_2_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_buf_reg_1_2_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_frame_buf_reg_1_2__0_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_2__0_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_2__0_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_2__0_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_2__0_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_2__0_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_2__0_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_frame_buf_reg_1_2__0_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_frame_buf_reg_1_2__0_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_frame_buf_reg_1_2__0_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_frame_buf_reg_1_2__0_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_frame_buf_reg_1_2__0_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_buf_reg_1_3_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_3_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_3_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_3_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_3_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_3_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_3_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_1_3_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_1_3_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_buf_reg_1_3_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_frame_buf_reg_1_3_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_1_3_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_1_3_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_buf_reg_1_3_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_frame_buf_reg_1_3__0_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_3__0_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_3__0_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_3__0_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_3__0_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_3__0_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_3__0_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_frame_buf_reg_1_3__0_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_frame_buf_reg_1_3__0_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_frame_buf_reg_1_3__0_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_frame_buf_reg_1_3__0_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_frame_buf_reg_1_3__0_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_buf_reg_1_4_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_4_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_4_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_4_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_4_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_4_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_4_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_1_4_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_1_4_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_buf_reg_1_4_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_frame_buf_reg_1_4_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_1_4_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_1_4_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_buf_reg_1_4_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_frame_buf_reg_1_4__0_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_4__0_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_4__0_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_4__0_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_4__0_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_4__0_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_4__0_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_frame_buf_reg_1_4__0_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_frame_buf_reg_1_4__0_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_frame_buf_reg_1_4__0_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_frame_buf_reg_1_4__0_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_frame_buf_reg_1_4__0_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_buf_reg_1_5_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_5_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_5_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_5_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_5_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_5_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_5_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_1_5_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_1_5_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_buf_reg_1_5_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_frame_buf_reg_1_5_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_1_5_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_1_5_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_buf_reg_1_5_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_frame_buf_reg_1_5__0_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_5__0_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_5__0_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_5__0_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_5__0_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_5__0_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_5__0_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_frame_buf_reg_1_5__0_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_frame_buf_reg_1_5__0_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_frame_buf_reg_1_5__0_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_frame_buf_reg_1_5__0_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_frame_buf_reg_1_5__0_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_buf_reg_1_6_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_6_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_6_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_6_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_6_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_6_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_6_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_1_6_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_1_6_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_buf_reg_1_6_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_frame_buf_reg_1_6_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_1_6_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_1_6_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_buf_reg_1_6_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_frame_buf_reg_1_6__0_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_6__0_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_6__0_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_6__0_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_6__0_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_6__0_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_6__0_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_frame_buf_reg_1_6__0_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_frame_buf_reg_1_6__0_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_frame_buf_reg_1_6__0_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_frame_buf_reg_1_6__0_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_frame_buf_reg_1_6__0_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_frame_buf_reg_1_7_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_7_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_7_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_7_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_7_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_7_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_frame_buf_reg_1_7_DIPADIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_1_7_DIPBDIP_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_frame_buf_reg_1_7_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_frame_buf_reg_1_7_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal NLW_frame_buf_reg_1_7_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_1_7_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_frame_buf_reg_1_7_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_frame_buf_reg_1_7_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_frame_buf_reg_1_7__0_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_7__0_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_7__0_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_7__0_INJECTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_7__0_INJECTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_7__0_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_frame_buf_reg_1_7__0_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_frame_buf_reg_1_7__0_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_frame_buf_reg_1_7__0_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_frame_buf_reg_1_7__0_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_frame_buf_reg_1_7__0_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_frame_buf_reg_1_7__0_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_frame_buf_reg_mux_sel_b_pos_0__6_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_frame_buf_reg_mux_sel_b_pos_0__6_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_hr_cnt_reg[13]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_hr_cnt_reg[13]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_pclk_cnt_reg[23]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sccb_cnt_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sccb_cnt_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sync_h_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sync_h_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sync_v1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sync_v1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_u_xclk_oddr_R_UNCONNECTED : STD_LOGIC;
  signal NLW_u_xclk_oddr_S_UNCONNECTED : STD_LOGIC;
  signal \NLW_vs_cnt_reg[5]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_vs_cnt_reg[5]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_xclk_cnt_reg[23]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bram_read_addr[3]_INST_0\ : label is "soft_lutpair44";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \bram_read_addr[4]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \bram_read_addr[8]_INST_0\ : label is 35;
  attribute SOFT_HLUTNM of bram_read_en_INST_0_i_2 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of bram_read_en_INST_0_i_4 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of bram_read_en_INST_0_i_5 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of bram_read_en_INST_0_i_6 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \cam_y[0]_i_1\ : label is "soft_lutpair52";
  attribute ADDER_THRESHOLD of cnn_raddr0_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnn_raddr0_carry__0\ : label is 35;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_buf_reg_0_0 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_buf_reg_0_0 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of frame_buf_reg_0_0 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of frame_buf_reg_0_0 : label is 614400;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of frame_buf_reg_0_0 : label is "design_1_top_0_0/inst/frame_buf_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of frame_buf_reg_0_0 : label is "block";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of frame_buf_reg_0_0 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of frame_buf_reg_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of frame_buf_reg_0_0 : label is 32767;
  attribute ram_offset : integer;
  attribute ram_offset of frame_buf_reg_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of frame_buf_reg_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of frame_buf_reg_0_0 : label is 0;
  attribute SOFT_HLUTNM of frame_buf_reg_0_0_i_14 : label is "soft_lutpair39";
  attribute HLUTNM : string;
  attribute HLUTNM of frame_buf_reg_0_0_i_24 : label is "lutpair0";
  attribute HLUTNM of frame_buf_reg_0_0_i_26 : label is "lutpair1";
  attribute HLUTNM of frame_buf_reg_0_0_i_27 : label is "lutpair0";
  attribute SOFT_HLUTNM of frame_buf_reg_0_0_i_30 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of frame_buf_reg_0_0_i_37 : label is "soft_lutpair39";
  attribute ADDER_THRESHOLD of frame_buf_reg_0_0_i_4 : label is 35;
  attribute ADDER_THRESHOLD of frame_buf_reg_0_0_i_5 : label is 35;
  attribute ADDER_THRESHOLD of frame_buf_reg_0_0_i_6 : label is 35;
  attribute ADDER_THRESHOLD of frame_buf_reg_0_0_i_7 : label is 35;
  attribute ADDER_THRESHOLD of frame_buf_reg_0_0_i_8 : label is 35;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_buf_reg_0_1 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_buf_reg_0_1 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_buf_reg_0_1 : label is "";
  attribute RTL_RAM_BITS of frame_buf_reg_0_1 : label is 614400;
  attribute RTL_RAM_NAME of frame_buf_reg_0_1 : label is "design_1_top_0_0/inst/frame_buf_reg";
  attribute RTL_RAM_STYLE of frame_buf_reg_0_1 : label is "block";
  attribute RTL_RAM_TYPE of frame_buf_reg_0_1 : label is "RAM_SDP";
  attribute ram_addr_begin of frame_buf_reg_0_1 : label is 0;
  attribute ram_addr_end of frame_buf_reg_0_1 : label is 32767;
  attribute ram_offset of frame_buf_reg_0_1 : label is 0;
  attribute ram_slice_begin of frame_buf_reg_0_1 : label is 1;
  attribute ram_slice_end of frame_buf_reg_0_1 : label is 1;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_buf_reg_0_2 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_buf_reg_0_2 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_buf_reg_0_2 : label is "";
  attribute RTL_RAM_BITS of frame_buf_reg_0_2 : label is 614400;
  attribute RTL_RAM_NAME of frame_buf_reg_0_2 : label is "design_1_top_0_0/inst/frame_buf_reg";
  attribute RTL_RAM_STYLE of frame_buf_reg_0_2 : label is "block";
  attribute RTL_RAM_TYPE of frame_buf_reg_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of frame_buf_reg_0_2 : label is 0;
  attribute ram_addr_end of frame_buf_reg_0_2 : label is 32767;
  attribute ram_offset of frame_buf_reg_0_2 : label is 0;
  attribute ram_slice_begin of frame_buf_reg_0_2 : label is 2;
  attribute ram_slice_end of frame_buf_reg_0_2 : label is 2;
  attribute HLUTNM of frame_buf_reg_0_2_i_2 : label is "lutpair4";
  attribute HLUTNM of frame_buf_reg_0_2_i_3 : label is "lutpair3";
  attribute HLUTNM of frame_buf_reg_0_2_i_4 : label is "lutpair2";
  attribute HLUTNM of frame_buf_reg_0_2_i_5 : label is "lutpair1";
  attribute HLUTNM of frame_buf_reg_0_2_i_7 : label is "lutpair4";
  attribute HLUTNM of frame_buf_reg_0_2_i_8 : label is "lutpair3";
  attribute HLUTNM of frame_buf_reg_0_2_i_9 : label is "lutpair2";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_buf_reg_0_3 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_buf_reg_0_3 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_buf_reg_0_3 : label is "";
  attribute RTL_RAM_BITS of frame_buf_reg_0_3 : label is 614400;
  attribute RTL_RAM_NAME of frame_buf_reg_0_3 : label is "design_1_top_0_0/inst/frame_buf_reg";
  attribute RTL_RAM_STYLE of frame_buf_reg_0_3 : label is "block";
  attribute RTL_RAM_TYPE of frame_buf_reg_0_3 : label is "RAM_SDP";
  attribute ram_addr_begin of frame_buf_reg_0_3 : label is 0;
  attribute ram_addr_end of frame_buf_reg_0_3 : label is 32767;
  attribute ram_offset of frame_buf_reg_0_3 : label is 0;
  attribute ram_slice_begin of frame_buf_reg_0_3 : label is 3;
  attribute ram_slice_end of frame_buf_reg_0_3 : label is 3;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_buf_reg_0_4 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_buf_reg_0_4 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_buf_reg_0_4 : label is "";
  attribute RTL_RAM_BITS of frame_buf_reg_0_4 : label is 614400;
  attribute RTL_RAM_NAME of frame_buf_reg_0_4 : label is "design_1_top_0_0/inst/frame_buf_reg";
  attribute RTL_RAM_STYLE of frame_buf_reg_0_4 : label is "block";
  attribute RTL_RAM_TYPE of frame_buf_reg_0_4 : label is "RAM_SDP";
  attribute ram_addr_begin of frame_buf_reg_0_4 : label is 0;
  attribute ram_addr_end of frame_buf_reg_0_4 : label is 32767;
  attribute ram_offset of frame_buf_reg_0_4 : label is 0;
  attribute ram_slice_begin of frame_buf_reg_0_4 : label is 4;
  attribute ram_slice_end of frame_buf_reg_0_4 : label is 4;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_buf_reg_0_5 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_buf_reg_0_5 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_buf_reg_0_5 : label is "";
  attribute RTL_RAM_BITS of frame_buf_reg_0_5 : label is 614400;
  attribute RTL_RAM_NAME of frame_buf_reg_0_5 : label is "design_1_top_0_0/inst/frame_buf_reg";
  attribute RTL_RAM_STYLE of frame_buf_reg_0_5 : label is "block";
  attribute RTL_RAM_TYPE of frame_buf_reg_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin of frame_buf_reg_0_5 : label is 0;
  attribute ram_addr_end of frame_buf_reg_0_5 : label is 32767;
  attribute ram_offset of frame_buf_reg_0_5 : label is 0;
  attribute ram_slice_begin of frame_buf_reg_0_5 : label is 5;
  attribute ram_slice_end of frame_buf_reg_0_5 : label is 5;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_buf_reg_0_6 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_buf_reg_0_6 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_buf_reg_0_6 : label is "";
  attribute RTL_RAM_BITS of frame_buf_reg_0_6 : label is 614400;
  attribute RTL_RAM_NAME of frame_buf_reg_0_6 : label is "design_1_top_0_0/inst/frame_buf_reg";
  attribute RTL_RAM_STYLE of frame_buf_reg_0_6 : label is "block";
  attribute RTL_RAM_TYPE of frame_buf_reg_0_6 : label is "RAM_SDP";
  attribute ram_addr_begin of frame_buf_reg_0_6 : label is 0;
  attribute ram_addr_end of frame_buf_reg_0_6 : label is 32767;
  attribute ram_offset of frame_buf_reg_0_6 : label is 0;
  attribute ram_slice_begin of frame_buf_reg_0_6 : label is 6;
  attribute ram_slice_end of frame_buf_reg_0_6 : label is 6;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_buf_reg_0_7 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_buf_reg_0_7 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_buf_reg_0_7 : label is "";
  attribute RTL_RAM_BITS of frame_buf_reg_0_7 : label is 614400;
  attribute RTL_RAM_NAME of frame_buf_reg_0_7 : label is "design_1_top_0_0/inst/frame_buf_reg";
  attribute RTL_RAM_STYLE of frame_buf_reg_0_7 : label is "block";
  attribute RTL_RAM_TYPE of frame_buf_reg_0_7 : label is "RAM_SDP";
  attribute ram_addr_begin of frame_buf_reg_0_7 : label is 0;
  attribute ram_addr_end of frame_buf_reg_0_7 : label is 32767;
  attribute ram_offset of frame_buf_reg_0_7 : label is 0;
  attribute ram_slice_begin of frame_buf_reg_0_7 : label is 7;
  attribute ram_slice_end of frame_buf_reg_0_7 : label is 7;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_buf_reg_1_0 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_buf_reg_1_0 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_buf_reg_1_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of frame_buf_reg_1_0 : label is 614400;
  attribute RTL_RAM_NAME of frame_buf_reg_1_0 : label is "design_1_top_0_0/inst/frame_buf_reg";
  attribute RTL_RAM_STYLE of frame_buf_reg_1_0 : label is "block";
  attribute RTL_RAM_TYPE of frame_buf_reg_1_0 : label is "RAM_SDP";
  attribute ram_addr_begin of frame_buf_reg_1_0 : label is 32768;
  attribute ram_addr_end of frame_buf_reg_1_0 : label is 65535;
  attribute ram_offset of frame_buf_reg_1_0 : label is 0;
  attribute ram_slice_begin of frame_buf_reg_1_0 : label is 0;
  attribute ram_slice_end of frame_buf_reg_1_0 : label is 0;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \frame_buf_reg_1_0__0\ : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \frame_buf_reg_1_0__0\ : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of \frame_buf_reg_1_0__0\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \frame_buf_reg_1_0__0\ : label is 614400;
  attribute RTL_RAM_NAME of \frame_buf_reg_1_0__0\ : label is "design_1_top_0_0/inst/frame_buf_reg";
  attribute RTL_RAM_STYLE of \frame_buf_reg_1_0__0\ : label is "block";
  attribute RTL_RAM_TYPE of \frame_buf_reg_1_0__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \frame_buf_reg_1_0__0\ : label is 32768;
  attribute ram_addr_end of \frame_buf_reg_1_0__0\ : label is 65535;
  attribute ram_offset of \frame_buf_reg_1_0__0\ : label is 0;
  attribute ram_slice_begin of \frame_buf_reg_1_0__0\ : label is 0;
  attribute ram_slice_end of \frame_buf_reg_1_0__0\ : label is 0;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_buf_reg_1_1 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_buf_reg_1_1 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_buf_reg_1_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of frame_buf_reg_1_1 : label is 614400;
  attribute RTL_RAM_NAME of frame_buf_reg_1_1 : label is "design_1_top_0_0/inst/frame_buf_reg";
  attribute RTL_RAM_STYLE of frame_buf_reg_1_1 : label is "block";
  attribute RTL_RAM_TYPE of frame_buf_reg_1_1 : label is "RAM_SDP";
  attribute ram_addr_begin of frame_buf_reg_1_1 : label is 32768;
  attribute ram_addr_end of frame_buf_reg_1_1 : label is 65535;
  attribute ram_offset of frame_buf_reg_1_1 : label is 0;
  attribute ram_slice_begin of frame_buf_reg_1_1 : label is 1;
  attribute ram_slice_end of frame_buf_reg_1_1 : label is 1;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \frame_buf_reg_1_1__0\ : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \frame_buf_reg_1_1__0\ : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of \frame_buf_reg_1_1__0\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \frame_buf_reg_1_1__0\ : label is 614400;
  attribute RTL_RAM_NAME of \frame_buf_reg_1_1__0\ : label is "design_1_top_0_0/inst/frame_buf_reg";
  attribute RTL_RAM_STYLE of \frame_buf_reg_1_1__0\ : label is "block";
  attribute RTL_RAM_TYPE of \frame_buf_reg_1_1__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \frame_buf_reg_1_1__0\ : label is 32768;
  attribute ram_addr_end of \frame_buf_reg_1_1__0\ : label is 65535;
  attribute ram_offset of \frame_buf_reg_1_1__0\ : label is 0;
  attribute ram_slice_begin of \frame_buf_reg_1_1__0\ : label is 1;
  attribute ram_slice_end of \frame_buf_reg_1_1__0\ : label is 1;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_buf_reg_1_2 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_buf_reg_1_2 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_buf_reg_1_2 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of frame_buf_reg_1_2 : label is 614400;
  attribute RTL_RAM_NAME of frame_buf_reg_1_2 : label is "design_1_top_0_0/inst/frame_buf_reg";
  attribute RTL_RAM_STYLE of frame_buf_reg_1_2 : label is "block";
  attribute RTL_RAM_TYPE of frame_buf_reg_1_2 : label is "RAM_SDP";
  attribute ram_addr_begin of frame_buf_reg_1_2 : label is 32768;
  attribute ram_addr_end of frame_buf_reg_1_2 : label is 65535;
  attribute ram_offset of frame_buf_reg_1_2 : label is 0;
  attribute ram_slice_begin of frame_buf_reg_1_2 : label is 2;
  attribute ram_slice_end of frame_buf_reg_1_2 : label is 2;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \frame_buf_reg_1_2__0\ : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \frame_buf_reg_1_2__0\ : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of \frame_buf_reg_1_2__0\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \frame_buf_reg_1_2__0\ : label is 614400;
  attribute RTL_RAM_NAME of \frame_buf_reg_1_2__0\ : label is "design_1_top_0_0/inst/frame_buf_reg";
  attribute RTL_RAM_STYLE of \frame_buf_reg_1_2__0\ : label is "block";
  attribute RTL_RAM_TYPE of \frame_buf_reg_1_2__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \frame_buf_reg_1_2__0\ : label is 32768;
  attribute ram_addr_end of \frame_buf_reg_1_2__0\ : label is 65535;
  attribute ram_offset of \frame_buf_reg_1_2__0\ : label is 0;
  attribute ram_slice_begin of \frame_buf_reg_1_2__0\ : label is 2;
  attribute ram_slice_end of \frame_buf_reg_1_2__0\ : label is 2;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_buf_reg_1_3 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_buf_reg_1_3 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_buf_reg_1_3 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of frame_buf_reg_1_3 : label is 614400;
  attribute RTL_RAM_NAME of frame_buf_reg_1_3 : label is "design_1_top_0_0/inst/frame_buf_reg";
  attribute RTL_RAM_STYLE of frame_buf_reg_1_3 : label is "block";
  attribute RTL_RAM_TYPE of frame_buf_reg_1_3 : label is "RAM_SDP";
  attribute ram_addr_begin of frame_buf_reg_1_3 : label is 32768;
  attribute ram_addr_end of frame_buf_reg_1_3 : label is 65535;
  attribute ram_offset of frame_buf_reg_1_3 : label is 0;
  attribute ram_slice_begin of frame_buf_reg_1_3 : label is 3;
  attribute ram_slice_end of frame_buf_reg_1_3 : label is 3;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \frame_buf_reg_1_3__0\ : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \frame_buf_reg_1_3__0\ : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of \frame_buf_reg_1_3__0\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \frame_buf_reg_1_3__0\ : label is 614400;
  attribute RTL_RAM_NAME of \frame_buf_reg_1_3__0\ : label is "design_1_top_0_0/inst/frame_buf_reg";
  attribute RTL_RAM_STYLE of \frame_buf_reg_1_3__0\ : label is "block";
  attribute RTL_RAM_TYPE of \frame_buf_reg_1_3__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \frame_buf_reg_1_3__0\ : label is 32768;
  attribute ram_addr_end of \frame_buf_reg_1_3__0\ : label is 65535;
  attribute ram_offset of \frame_buf_reg_1_3__0\ : label is 0;
  attribute ram_slice_begin of \frame_buf_reg_1_3__0\ : label is 3;
  attribute ram_slice_end of \frame_buf_reg_1_3__0\ : label is 3;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_buf_reg_1_4 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_buf_reg_1_4 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_buf_reg_1_4 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of frame_buf_reg_1_4 : label is 614400;
  attribute RTL_RAM_NAME of frame_buf_reg_1_4 : label is "design_1_top_0_0/inst/frame_buf_reg";
  attribute RTL_RAM_STYLE of frame_buf_reg_1_4 : label is "block";
  attribute RTL_RAM_TYPE of frame_buf_reg_1_4 : label is "RAM_SDP";
  attribute ram_addr_begin of frame_buf_reg_1_4 : label is 32768;
  attribute ram_addr_end of frame_buf_reg_1_4 : label is 65535;
  attribute ram_offset of frame_buf_reg_1_4 : label is 0;
  attribute ram_slice_begin of frame_buf_reg_1_4 : label is 4;
  attribute ram_slice_end of frame_buf_reg_1_4 : label is 4;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \frame_buf_reg_1_4__0\ : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \frame_buf_reg_1_4__0\ : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of \frame_buf_reg_1_4__0\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \frame_buf_reg_1_4__0\ : label is 614400;
  attribute RTL_RAM_NAME of \frame_buf_reg_1_4__0\ : label is "design_1_top_0_0/inst/frame_buf_reg";
  attribute RTL_RAM_STYLE of \frame_buf_reg_1_4__0\ : label is "block";
  attribute RTL_RAM_TYPE of \frame_buf_reg_1_4__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \frame_buf_reg_1_4__0\ : label is 32768;
  attribute ram_addr_end of \frame_buf_reg_1_4__0\ : label is 65535;
  attribute ram_offset of \frame_buf_reg_1_4__0\ : label is 0;
  attribute ram_slice_begin of \frame_buf_reg_1_4__0\ : label is 4;
  attribute ram_slice_end of \frame_buf_reg_1_4__0\ : label is 4;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_buf_reg_1_5 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_buf_reg_1_5 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_buf_reg_1_5 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of frame_buf_reg_1_5 : label is 614400;
  attribute RTL_RAM_NAME of frame_buf_reg_1_5 : label is "design_1_top_0_0/inst/frame_buf_reg";
  attribute RTL_RAM_STYLE of frame_buf_reg_1_5 : label is "block";
  attribute RTL_RAM_TYPE of frame_buf_reg_1_5 : label is "RAM_SDP";
  attribute ram_addr_begin of frame_buf_reg_1_5 : label is 32768;
  attribute ram_addr_end of frame_buf_reg_1_5 : label is 65535;
  attribute ram_offset of frame_buf_reg_1_5 : label is 0;
  attribute ram_slice_begin of frame_buf_reg_1_5 : label is 5;
  attribute ram_slice_end of frame_buf_reg_1_5 : label is 5;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \frame_buf_reg_1_5__0\ : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \frame_buf_reg_1_5__0\ : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of \frame_buf_reg_1_5__0\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \frame_buf_reg_1_5__0\ : label is 614400;
  attribute RTL_RAM_NAME of \frame_buf_reg_1_5__0\ : label is "design_1_top_0_0/inst/frame_buf_reg";
  attribute RTL_RAM_STYLE of \frame_buf_reg_1_5__0\ : label is "block";
  attribute RTL_RAM_TYPE of \frame_buf_reg_1_5__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \frame_buf_reg_1_5__0\ : label is 32768;
  attribute ram_addr_end of \frame_buf_reg_1_5__0\ : label is 65535;
  attribute ram_offset of \frame_buf_reg_1_5__0\ : label is 0;
  attribute ram_slice_begin of \frame_buf_reg_1_5__0\ : label is 5;
  attribute ram_slice_end of \frame_buf_reg_1_5__0\ : label is 5;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_buf_reg_1_6 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_buf_reg_1_6 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_buf_reg_1_6 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of frame_buf_reg_1_6 : label is 614400;
  attribute RTL_RAM_NAME of frame_buf_reg_1_6 : label is "design_1_top_0_0/inst/frame_buf_reg";
  attribute RTL_RAM_STYLE of frame_buf_reg_1_6 : label is "block";
  attribute RTL_RAM_TYPE of frame_buf_reg_1_6 : label is "RAM_SDP";
  attribute ram_addr_begin of frame_buf_reg_1_6 : label is 32768;
  attribute ram_addr_end of frame_buf_reg_1_6 : label is 65535;
  attribute ram_offset of frame_buf_reg_1_6 : label is 0;
  attribute ram_slice_begin of frame_buf_reg_1_6 : label is 6;
  attribute ram_slice_end of frame_buf_reg_1_6 : label is 6;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \frame_buf_reg_1_6__0\ : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \frame_buf_reg_1_6__0\ : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of \frame_buf_reg_1_6__0\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \frame_buf_reg_1_6__0\ : label is 614400;
  attribute RTL_RAM_NAME of \frame_buf_reg_1_6__0\ : label is "design_1_top_0_0/inst/frame_buf_reg";
  attribute RTL_RAM_STYLE of \frame_buf_reg_1_6__0\ : label is "block";
  attribute RTL_RAM_TYPE of \frame_buf_reg_1_6__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \frame_buf_reg_1_6__0\ : label is 32768;
  attribute ram_addr_end of \frame_buf_reg_1_6__0\ : label is 65535;
  attribute ram_offset of \frame_buf_reg_1_6__0\ : label is 0;
  attribute ram_slice_begin of \frame_buf_reg_1_6__0\ : label is 6;
  attribute ram_slice_end of \frame_buf_reg_1_6__0\ : label is 6;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of frame_buf_reg_1_7 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of frame_buf_reg_1_7 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of frame_buf_reg_1_7 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of frame_buf_reg_1_7 : label is 614400;
  attribute RTL_RAM_NAME of frame_buf_reg_1_7 : label is "design_1_top_0_0/inst/frame_buf_reg";
  attribute RTL_RAM_STYLE of frame_buf_reg_1_7 : label is "block";
  attribute RTL_RAM_TYPE of frame_buf_reg_1_7 : label is "RAM_SDP";
  attribute ram_addr_begin of frame_buf_reg_1_7 : label is 32768;
  attribute ram_addr_end of frame_buf_reg_1_7 : label is 65535;
  attribute ram_offset of frame_buf_reg_1_7 : label is 0;
  attribute ram_slice_begin of frame_buf_reg_1_7 : label is 7;
  attribute ram_slice_end of frame_buf_reg_1_7 : label is 7;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \frame_buf_reg_1_7__0\ : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \frame_buf_reg_1_7__0\ : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of \frame_buf_reg_1_7__0\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of \frame_buf_reg_1_7__0\ : label is 614400;
  attribute RTL_RAM_NAME of \frame_buf_reg_1_7__0\ : label is "design_1_top_0_0/inst/frame_buf_reg";
  attribute RTL_RAM_STYLE of \frame_buf_reg_1_7__0\ : label is "block";
  attribute RTL_RAM_TYPE of \frame_buf_reg_1_7__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \frame_buf_reg_1_7__0\ : label is 32768;
  attribute ram_addr_end of \frame_buf_reg_1_7__0\ : label is 65535;
  attribute ram_offset of \frame_buf_reg_1_7__0\ : label is 0;
  attribute ram_slice_begin of \frame_buf_reg_1_7__0\ : label is 7;
  attribute ram_slice_end of \frame_buf_reg_1_7__0\ : label is 7;
  attribute ADDER_THRESHOLD of \frame_buf_reg_mux_sel_b_pos_0__6_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \pclk_cnt_reg[0]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \pclk_cnt_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \pclk_cnt_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \pclk_cnt_reg[23]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \pclk_cnt_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \pclk_cnt_reg[8]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \qvga_waddr__0_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \qvga_waddr__12_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \qvga_waddr__13_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \qvga_waddr__14_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \qvga_waddr__15_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \qvga_waddr__2_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \qvga_waddr__4_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \qvga_waddr__5_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \qvga_waddr__6_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \qvga_waddr__7_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \qvga_waddr__8_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \qvga_waddr__8_i_3\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \qvga_waddr__9_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of qvga_waddr_i_3 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of qvga_waddr_i_4 : label is "soft_lutpair51";
  attribute ADDER_THRESHOLD of \sccb_cnt_reg[0]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \sccb_cnt_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \sccb_cnt_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \sccb_cnt_reg[20]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \sccb_cnt_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \sccb_cnt_reg[8]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of sync_v1_carry : label is 35;
  attribute ADDER_THRESHOLD of \sync_v1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sync_v1_carry__1\ : label is 35;
  attribute SOFT_HLUTNM of \sync_v[10]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \sync_v[11]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \sync_v[2]_i_3\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \sync_v[2]_i_5\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \sync_v[3]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \sync_v[4]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \sync_v[5]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \sync_v[6]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \sync_v[7]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \sync_v[8]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \sync_v[9]_i_1\ : label is "soft_lutpair47";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of u_xclk_oddr : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of u_xclk_oddr : label is "MLO";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of u_xclk_oddr : label is "TRUE";
  attribute SOFT_HLUTNM of vid_hsync_r_i_3 : label is "soft_lutpair40";
  attribute ADDER_THRESHOLD of \xclk_cnt_reg[0]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \xclk_cnt_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \xclk_cnt_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \xclk_cnt_reg[23]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \xclk_cnt_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \xclk_cnt_reg[8]_i_1\ : label is 35;
begin
  Q(0) <= \^q\(0);
  bram_read_addr(10 downto 0) <= \^bram_read_addr\(10 downto 0);
  bram_read_en <= \^bram_read_en\;
  led5_g <= \^led5_g\;
  led_pixel_active <= \^led_pixel_active\;
  led_pll_locked <= \^led_pll_locked\;
  led_vid_locked <= \^led_vid_locked\;
  pixel_clk <= \^pixel_clk\;
  \pixel_data_reg[15]\(15 downto 0) <= \^pixel_data_reg[15]\(15 downto 0);
\bram_read_addr[1]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sync_v_reg_n_0_[3]\,
      O => \^bram_read_addr\(0)
    );
\bram_read_addr[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sync_v_reg_n_0_[4]\,
      I1 => \sync_v_reg_n_0_[3]\,
      O => \^bram_read_addr\(1)
    );
\bram_read_addr[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \sync_v_reg_n_0_[4]\,
      I1 => \sync_v_reg_n_0_[3]\,
      I2 => \sync_v_reg_n_0_[5]\,
      O => \^bram_read_addr\(2)
    );
\bram_read_addr[4]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \bram_read_addr[4]_INST_0_n_0\,
      CO(2) => \bram_read_addr[4]_INST_0_n_1\,
      CO(1) => \bram_read_addr[4]_INST_0_n_2\,
      CO(0) => \bram_read_addr[4]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => cnn_raddr0(5 downto 4),
      O(3 downto 0) => \^bram_read_addr\(6 downto 3),
      S(3 downto 2) => cnn_raddr0(7 downto 6),
      S(1) => \bram_read_addr[4]_INST_0_i_1_n_0\,
      S(0) => \bram_read_addr[4]_INST_0_i_2_n_0\
    );
\bram_read_addr[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555556AAAAAAA9"
    )
        port map (
      I0 => cnn_raddr0(5),
      I1 => \sync_v_reg_n_0_[6]\,
      I2 => \sync_v_reg_n_0_[5]\,
      I3 => \sync_v_reg_n_0_[4]\,
      I4 => \sync_v_reg_n_0_[3]\,
      I5 => \sync_v_reg_n_0_[7]\,
      O => \bram_read_addr[4]_INST_0_i_1_n_0\
    );
\bram_read_addr[4]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5556AAA9"
    )
        port map (
      I0 => cnn_raddr0(4),
      I1 => \sync_v_reg_n_0_[3]\,
      I2 => \sync_v_reg_n_0_[4]\,
      I3 => \sync_v_reg_n_0_[5]\,
      I4 => \sync_v_reg_n_0_[6]\,
      O => \bram_read_addr[4]_INST_0_i_2_n_0\
    );
\bram_read_addr[8]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \bram_read_addr[4]_INST_0_n_0\,
      CO(3) => \NLW_bram_read_addr[8]_INST_0_CO_UNCONNECTED\(3),
      CO(2) => \bram_read_addr[8]_INST_0_n_1\,
      CO(1) => \bram_read_addr[8]_INST_0_n_2\,
      CO(0) => \bram_read_addr[8]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^bram_read_addr\(10 downto 7),
      S(3 downto 0) => cnn_raddr0(11 downto 8)
    );
bram_read_en_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080808080008"
    )
        port map (
      I0 => bram_read_en_INST_0_i_1_n_0,
      I1 => \sync_v_reg_n_0_[8]\,
      I2 => \sync_v_reg_n_0_[9]\,
      I3 => bram_read_en_INST_0_i_2_n_0,
      I4 => \sync_v_reg_n_0_[6]\,
      I5 => \sync_v_reg_n_0_[7]\,
      O => \^bram_read_en\
    );
bram_read_en_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => bram_read_en_INST_0_i_3_n_0,
      I1 => bram_read_en_INST_0_i_4_n_0,
      I2 => sync_h_reg(9),
      I3 => sync_h_reg(8),
      I4 => sync_h_reg(7),
      I5 => bram_read_en_INST_0_i_5_n_0,
      O => bram_read_en_INST_0_i_1_n_0
    );
bram_read_en_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \sync_v_reg_n_0_[3]\,
      I1 => \sync_v_reg_n_0_[4]\,
      I2 => \sync_v_reg_n_0_[5]\,
      O => bram_read_en_INST_0_i_2_n_0
    );
bram_read_en_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000103FFFF"
    )
        port map (
      I0 => sync_h_reg(3),
      I1 => sync_h_reg(5),
      I2 => sync_h_reg(6),
      I3 => sync_h_reg(4),
      I4 => sync_h_reg(7),
      I5 => bram_read_en_INST_0_i_6_n_0,
      O => bram_read_en_INST_0_i_3_n_0
    );
bram_read_en_INST_0_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sync_h_reg(10),
      I1 => \sync_v_reg_n_0_[10]\,
      I2 => \sync_v_reg_n_0_[11]\,
      O => bram_read_en_INST_0_i_4_n_0
    );
bram_read_en_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F800"
    )
        port map (
      I0 => sync_h_reg(4),
      I1 => sync_h_reg(3),
      I2 => sync_h_reg(5),
      I3 => sync_h_reg(6),
      O => bram_read_en_INST_0_i_5_n_0
    );
bram_read_en_INST_0_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \sync_v_reg_n_0_[11]\,
      I1 => \sync_v_reg_n_0_[10]\,
      I2 => sync_h_reg(8),
      I3 => sync_h_reg(10),
      I4 => sync_h_reg(9),
      O => bram_read_en_INST_0_i_6_n_0
    );
cam_href_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => cam_href,
      Q => cam_href_d,
      R => '0'
    );
\cam_x[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cam_x_reg(0),
      O => \p_0_in__1\(0)
    );
\cam_x_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => cam_x(0),
      D => \p_0_in__1\(0),
      Q => cam_x_reg(0),
      R => RSTC
    );
\cam_x_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => cam_x(0),
      D => \qvga_waddr__7_i_1_n_0\,
      Q => cam_x_reg(1),
      R => RSTC
    );
\cam_x_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => cam_x(0),
      D => \qvga_waddr__6_i_1_n_0\,
      Q => cam_x_reg(2),
      R => RSTC
    );
\cam_x_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => cam_x(0),
      D => \qvga_waddr__5_i_1_n_0\,
      Q => cam_x_reg(3),
      R => RSTC
    );
\cam_x_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => cam_x(0),
      D => \qvga_waddr__4_i_1_n_0\,
      Q => cam_x_reg(4),
      R => RSTC
    );
\cam_x_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => cam_x(0),
      D => \qvga_waddr__3_i_1_n_0\,
      Q => cam_x_reg(5),
      R => RSTC
    );
\cam_x_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => cam_x(0),
      D => \qvga_waddr__2_i_1_n_0\,
      Q => cam_x_reg(6),
      R => RSTC
    );
\cam_x_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => cam_x(0),
      D => \qvga_waddr__1_i_1_n_0\,
      Q => cam_x_reg(7),
      R => RSTC
    );
\cam_x_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => cam_x(0),
      D => \qvga_waddr__0_i_1_n_0\,
      Q => cam_x_reg(8),
      R => RSTC
    );
\cam_x_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => cam_x(0),
      D => qvga_waddr_i_3_n_0,
      Q => cam_x_reg(9),
      R => RSTC
    );
\cam_y[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cam_y_reg(0),
      O => p_11_in
    );
\cam_y_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => cam_y(0),
      D => p_11_in,
      Q => cam_y_reg(0),
      R => cam_vsync
    );
\cam_y_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => cam_y(0),
      D => B(0),
      Q => cam_y_reg(1),
      R => cam_vsync
    );
\cam_y_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => cam_y(0),
      D => \qvga_waddr__14_i_1_n_0\,
      Q => cam_y_reg(2),
      R => cam_vsync
    );
\cam_y_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => cam_y(0),
      D => \qvga_waddr__13_i_1_n_0\,
      Q => cam_y_reg(3),
      R => cam_vsync
    );
\cam_y_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => cam_y(0),
      D => \qvga_waddr__12_i_1_n_0\,
      Q => cam_y_reg(4),
      R => cam_vsync
    );
\cam_y_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => cam_y(0),
      D => \qvga_waddr__11_i_1_n_0\,
      Q => cam_y_reg(5),
      R => cam_vsync
    );
\cam_y_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => cam_y(0),
      D => B(5),
      Q => cam_y_reg(6),
      R => cam_vsync
    );
\cam_y_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => cam_y(0),
      D => B(6),
      Q => cam_y_reg(7),
      R => cam_vsync
    );
\cam_y_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => cam_y(0),
      D => B(7),
      Q => cam_y_reg(8),
      R => cam_vsync
    );
\cnn_raddr0__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnn_raddr0__0_carry_n_0\,
      CO(2) => \cnn_raddr0__0_carry_n_1\,
      CO(1) => \cnn_raddr0__0_carry_n_2\,
      CO(0) => \cnn_raddr0__0_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => sync_h_reg(3 downto 2),
      DI(1) => sync_h_reg(3),
      DI(0) => '0',
      O(3 downto 1) => qvga_raddr0(10 downto 8),
      O(0) => \NLW_cnn_raddr0__0_carry_O_UNCONNECTED\(0),
      S(3) => \cnn_raddr0__0_carry_i_1_n_0\,
      S(2) => \cnn_raddr0__0_carry_i_2_n_0\,
      S(1) => \cnn_raddr0__0_carry_i_3_n_0\,
      S(0) => sync_h_reg(2)
    );
\cnn_raddr0__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnn_raddr0__0_carry_n_0\,
      CO(3) => \cnn_raddr0__0_carry__0_n_0\,
      CO(2) => \cnn_raddr0__0_carry__0_n_1\,
      CO(1) => \cnn_raddr0__0_carry__0_n_2\,
      CO(0) => \cnn_raddr0__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => disp_cam_x(9),
      DI(2) => \cnn_raddr0__0_carry__0_i_2_n_0\,
      DI(1) => \cnn_raddr0__0_carry__0_i_3_n_0\,
      DI(0) => \cnn_raddr0__0_carry__0_i_4_n_0\,
      O(3 downto 0) => qvga_raddr0(14 downto 11),
      S(3) => \cnn_raddr0__0_carry__0_i_5_n_0\,
      S(2) => \cnn_raddr0__0_carry__0_i_6_n_0\,
      S(1) => \cnn_raddr0__0_carry__0_i_7_n_0\,
      S(0) => \cnn_raddr0__0_carry__0_i_8_n_0\
    );
\cnn_raddr0__0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00000001FFFFFF"
    )
        port map (
      I0 => sync_h_reg(6),
      I1 => sync_h_reg(4),
      I2 => sync_h_reg(5),
      I3 => sync_h_reg(8),
      I4 => sync_h_reg(7),
      I5 => sync_h_reg(9),
      O => disp_cam_x(9)
    );
\cnn_raddr0__0_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5557AAA8"
    )
        port map (
      I0 => sync_h_reg(7),
      I1 => sync_h_reg(6),
      I2 => sync_h_reg(4),
      I3 => sync_h_reg(5),
      I4 => sync_h_reg(8),
      O => \cnn_raddr0__0_carry__0_i_2_n_0\
    );
\cnn_raddr0__0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => sync_h_reg(5),
      I1 => sync_h_reg(4),
      I2 => sync_h_reg(6),
      I3 => sync_h_reg(7),
      O => \cnn_raddr0__0_carry__0_i_3_n_0\
    );
\cnn_raddr0__0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => sync_h_reg(6),
      I1 => sync_h_reg(4),
      I2 => sync_h_reg(5),
      O => \cnn_raddr0__0_carry__0_i_4_n_0\
    );
\cnn_raddr0__0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A9A9A9A9A9A9AA5"
    )
        port map (
      I0 => sync_h_reg(9),
      I1 => sync_h_reg(8),
      I2 => sync_h_reg(7),
      I3 => sync_h_reg(6),
      I4 => sync_h_reg(4),
      I5 => sync_h_reg(5),
      O => \cnn_raddr0__0_carry__0_i_5_n_0\
    );
\cnn_raddr0__0_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966665"
    )
        port map (
      I0 => sync_h_reg(8),
      I1 => sync_h_reg(7),
      I2 => sync_h_reg(5),
      I3 => sync_h_reg(4),
      I4 => sync_h_reg(6),
      O => \cnn_raddr0__0_carry__0_i_6_n_0\
    );
\cnn_raddr0__0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A559"
    )
        port map (
      I0 => sync_h_reg(7),
      I1 => sync_h_reg(6),
      I2 => sync_h_reg(4),
      I3 => sync_h_reg(5),
      O => \cnn_raddr0__0_carry__0_i_7_n_0\
    );
\cnn_raddr0__0_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C6"
    )
        port map (
      I0 => sync_h_reg(5),
      I1 => sync_h_reg(6),
      I2 => sync_h_reg(4),
      O => \cnn_raddr0__0_carry__0_i_8_n_0\
    );
\cnn_raddr0__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnn_raddr0__0_carry__0_n_0\,
      CO(3 downto 1) => \NLW_cnn_raddr0__0_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \cnn_raddr0__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_cnn_raddr0__0_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => qvga_raddr0(16 downto 15),
      S(3 downto 2) => B"00",
      S(1) => \cnn_raddr0__0_carry__1_i_1_n_0\,
      S(0) => \cnn_raddr0__0_carry__1_i_2_n_0\
    );
\cnn_raddr0__0_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00000001FFFFFF"
    )
        port map (
      I0 => sync_h_reg(6),
      I1 => sync_h_reg(4),
      I2 => sync_h_reg(5),
      I3 => sync_h_reg(8),
      I4 => sync_h_reg(7),
      I5 => sync_h_reg(9),
      O => \cnn_raddr0__0_carry__1_i_1_n_0\
    );
\cnn_raddr0__0_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5557AAA8"
    )
        port map (
      I0 => sync_h_reg(7),
      I1 => sync_h_reg(6),
      I2 => sync_h_reg(4),
      I3 => sync_h_reg(5),
      I4 => sync_h_reg(8),
      O => \cnn_raddr0__0_carry__1_i_2_n_0\
    );
\cnn_raddr0__0_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => sync_h_reg(4),
      I1 => sync_h_reg(5),
      I2 => sync_h_reg(3),
      O => \cnn_raddr0__0_carry_i_1_n_0\
    );
\cnn_raddr0__0_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sync_h_reg(4),
      I1 => sync_h_reg(2),
      O => \cnn_raddr0__0_carry_i_2_n_0\
    );
\cnn_raddr0__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sync_h_reg(3),
      I1 => sync_h_reg(1),
      O => \cnn_raddr0__0_carry_i_3_n_0\
    );
cnn_raddr0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnn_raddr0_carry_n_0,
      CO(2) => cnn_raddr0_carry_n_1,
      CO(1) => cnn_raddr0_carry_n_2,
      CO(0) => cnn_raddr0_carry_n_3,
      CYINIT => '0',
      DI(3) => A(1),
      DI(2) => sync_h_reg(2),
      DI(1 downto 0) => B"01",
      O(3 downto 0) => cnn_raddr0(7 downto 4),
      S(3) => cnn_raddr0_carry_i_2_n_0,
      S(2) => cnn_raddr0_carry_i_3_n_0,
      S(1 downto 0) => sync_h_reg(3 downto 2)
    );
\cnn_raddr0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnn_raddr0_carry_n_0,
      CO(3) => \NLW_cnn_raddr0_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \cnn_raddr0_carry__0_n_1\,
      CO(1) => \cnn_raddr0_carry__0_n_2\,
      CO(0) => \cnn_raddr0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"01",
      DI(1 downto 0) => A(3 downto 2),
      O(3 downto 0) => cnn_raddr0(11 downto 8),
      S(3) => \cnn_raddr0_carry__0_i_3_n_0\,
      S(2) => \cnn_raddr0_carry__0_i_4_n_0\,
      S(1) => \cnn_raddr0_carry__0_i_5_n_0\,
      S(0) => \cnn_raddr0_carry__0_i_6_n_0\
    );
\cnn_raddr0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => sync_h_reg(4),
      I1 => sync_h_reg(3),
      I2 => sync_h_reg(5),
      O => A(3)
    );
\cnn_raddr0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sync_h_reg(3),
      I1 => sync_h_reg(4),
      O => A(2)
    );
\cnn_raddr0_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99959595"
    )
        port map (
      I0 => sync_h_reg(7),
      I1 => sync_h_reg(6),
      I2 => sync_h_reg(5),
      I3 => sync_h_reg(3),
      I4 => sync_h_reg(4),
      O => \cnn_raddr0_carry__0_i_3_n_0\
    );
\cnn_raddr0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA95"
    )
        port map (
      I0 => sync_h_reg(6),
      I1 => sync_h_reg(4),
      I2 => sync_h_reg(3),
      I3 => sync_h_reg(5),
      O => \cnn_raddr0_carry__0_i_4_n_0\
    );
\cnn_raddr0_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F878078"
    )
        port map (
      I0 => sync_h_reg(4),
      I1 => sync_h_reg(3),
      I2 => sync_h_reg(5),
      I3 => sync_h_reg(6),
      I4 => sync_h_reg(7),
      O => \cnn_raddr0_carry__0_i_5_n_0\
    );
\cnn_raddr0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D629"
    )
        port map (
      I0 => sync_h_reg(5),
      I1 => sync_h_reg(3),
      I2 => sync_h_reg(4),
      I3 => sync_h_reg(6),
      O => \cnn_raddr0_carry__0_i_6_n_0\
    );
cnn_raddr0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sync_h_reg(3),
      O => A(1)
    );
cnn_raddr0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => sync_h_reg(4),
      I1 => sync_h_reg(3),
      I2 => sync_h_reg(5),
      O => cnn_raddr0_carry_i_2_n_0
    );
cnn_raddr0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => sync_h_reg(2),
      I1 => sync_h_reg(4),
      I2 => sync_h_reg(3),
      O => cnn_raddr0_carry_i_3_n_0
    );
frame_buf_reg_0_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => frame_buf_reg_0_0_i_4_n_6,
      ADDRARDADDR(14) => frame_buf_reg_0_0_i_4_n_7,
      ADDRARDADDR(13) => frame_buf_reg_0_0_i_5_n_4,
      ADDRARDADDR(12) => frame_buf_reg_0_0_i_5_n_5,
      ADDRARDADDR(11) => frame_buf_reg_0_0_i_5_n_6,
      ADDRARDADDR(10) => frame_buf_reg_0_0_i_5_n_7,
      ADDRARDADDR(9) => frame_buf_reg_0_0_i_6_n_4,
      ADDRARDADDR(8) => frame_buf_reg_0_0_i_6_n_5,
      ADDRARDADDR(7) => frame_buf_reg_0_0_i_6_n_6,
      ADDRARDADDR(6) => frame_buf_reg_0_0_i_6_n_7,
      ADDRARDADDR(5) => \qvga_waddr__2_n_0\,
      ADDRARDADDR(4) => \qvga_waddr__3_n_0\,
      ADDRARDADDR(3) => \qvga_waddr__4_n_0\,
      ADDRARDADDR(2) => \qvga_waddr__5_n_0\,
      ADDRARDADDR(1) => \qvga_waddr__6_n_0\,
      ADDRARDADDR(0) => \qvga_waddr__7_n_0\,
      ADDRBWRADDR(15 downto 6) => qvga_raddr(15 downto 6),
      ADDRBWRADDR(5) => frame_buf_reg_0_0_i_9_n_0,
      ADDRBWRADDR(4) => frame_buf_reg_0_0_i_10_n_0,
      ADDRBWRADDR(3 downto 2) => \^bram_read_addr\(1 downto 0),
      ADDRBWRADDR(1) => \^q\(0),
      ADDRBWRADDR(0) => \sync_v_reg_n_0_[1]\,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => frame_buf_reg_0_0_n_0,
      CASCADEOUTB => frame_buf_reg_0_0_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => \^pixel_clk\,
      DBITERR => NLW_frame_buf_reg_0_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => y_luma(0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_buf_reg_0_0_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_buf_reg_0_0_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_buf_reg_0_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_frame_buf_reg_0_0_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_frame_buf_reg_0_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_buf_reg_0_0_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_buf_reg_0_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => u_read_pixels_n_3,
      ENBWREN => frame_buf_reg_0_0_i_2_n_0,
      INJECTDBITERR => NLW_frame_buf_reg_0_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_buf_reg_0_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_buf_reg_0_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => frame_buf_reg_0_0_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_buf_reg_0_0_SBITERR_UNCONNECTED,
      WEA(3) => frame_buf_reg_0_0_i_12_n_0,
      WEA(2) => frame_buf_reg_0_0_i_12_n_0,
      WEA(1) => frame_buf_reg_0_0_i_12_n_0,
      WEA(0) => frame_buf_reg_0_0_i_12_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_buf_reg_0_0_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => \sync_v_reg_n_0_[5]\,
      I1 => \sync_v_reg_n_0_[3]\,
      I2 => \sync_v_reg_n_0_[4]\,
      O => frame_buf_reg_0_0_i_10_n_0
    );
frame_buf_reg_0_0_i_11: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => frame_buf_reg_0_0_i_11_n_0,
      CO(2) => frame_buf_reg_0_0_i_11_n_1,
      CO(1) => frame_buf_reg_0_0_i_11_n_2,
      CO(0) => frame_buf_reg_0_0_i_11_n_3,
      CYINIT => '0',
      DI(3) => frame_buf_reg_0_0_i_24_n_0,
      DI(2) => frame_buf_reg_0_0_i_25_n_0,
      DI(1 downto 0) => \^pixel_data_reg[15]\(14 downto 13),
      O(3 downto 2) => y_luma(1 downto 0),
      O(1 downto 0) => NLW_frame_buf_reg_0_0_i_11_O_UNCONNECTED(1 downto 0),
      S(3) => frame_buf_reg_0_0_i_26_n_0,
      S(2) => frame_buf_reg_0_0_i_27_n_0,
      S(1) => frame_buf_reg_0_0_i_28_n_0,
      S(0) => frame_buf_reg_0_0_i_29_n_0
    );
frame_buf_reg_0_0_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cam_y_reg(0),
      I1 => frame_buf_reg_0_0_i_4_n_5,
      O => frame_buf_reg_0_0_i_12_n_0
    );
frame_buf_reg_0_0_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDDDDDEFEDDDDD"
    )
        port map (
      I0 => sync_h_reg(9),
      I1 => bram_read_en_INST_0_i_4_n_0,
      I2 => sync_h_reg(7),
      I3 => \sync_v[2]_i_4_n_0\,
      I4 => sync_h_reg(8),
      I5 => frame_buf_reg_0_0_i_30_n_0,
      O => frame_buf_reg_0_0_i_13_n_0
    );
frame_buf_reg_0_0_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \sync_v_reg_n_0_[5]\,
      I1 => \sync_v_reg_n_0_[3]\,
      I2 => \sync_v_reg_n_0_[4]\,
      O => frame_buf_reg_0_0_i_14_n_0
    );
frame_buf_reg_0_0_i_15: unisim.vcomponents.CARRY4
     port map (
      CI => frame_buf_reg_0_0_i_16_n_0,
      CO(3 downto 2) => NLW_frame_buf_reg_0_0_i_15_CO_UNCONNECTED(3 downto 2),
      CO(1) => p_0_out(16),
      CO(0) => NLW_frame_buf_reg_0_0_i_15_CO_UNCONNECTED(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => NLW_frame_buf_reg_0_0_i_15_O_UNCONNECTED(3 downto 1),
      O(0) => p_0_out(15),
      S(3 downto 1) => B"001",
      S(0) => \qvga_waddr__8_n_0\
    );
frame_buf_reg_0_0_i_16: unisim.vcomponents.CARRY4
     port map (
      CI => frame_buf_reg_0_0_i_17_n_0,
      CO(3) => frame_buf_reg_0_0_i_16_n_0,
      CO(2) => frame_buf_reg_0_0_i_16_n_1,
      CO(1) => frame_buf_reg_0_0_i_16_n_2,
      CO(0) => frame_buf_reg_0_0_i_16_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \qvga_waddr__8_n_0\,
      DI(1) => \qvga_waddr__9_n_0\,
      DI(0) => \qvga_waddr__10_n_0\,
      O(3 downto 0) => p_0_out(14 downto 11),
      S(3) => \qvga_waddr__9_n_0\,
      S(2) => frame_buf_reg_0_0_i_31_n_0,
      S(1) => frame_buf_reg_0_0_i_32_n_0,
      S(0) => frame_buf_reg_0_0_i_33_n_0
    );
frame_buf_reg_0_0_i_17: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => frame_buf_reg_0_0_i_17_n_0,
      CO(2) => frame_buf_reg_0_0_i_17_n_1,
      CO(1) => frame_buf_reg_0_0_i_17_n_2,
      CO(0) => frame_buf_reg_0_0_i_17_n_3,
      CYINIT => '0',
      DI(3) => \qvga_waddr__11_n_0\,
      DI(2) => \qvga_waddr__12_n_0\,
      DI(1) => \qvga_waddr__13_n_0\,
      DI(0) => '0',
      O(3 downto 0) => p_0_out(10 downto 7),
      S(3) => frame_buf_reg_0_0_i_34_n_0,
      S(2) => frame_buf_reg_0_0_i_35_n_0,
      S(1) => frame_buf_reg_0_0_i_36_n_0,
      S(0) => \qvga_waddr__14_n_0\
    );
frame_buf_reg_0_0_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_out(8),
      I1 => qvga_waddr_n_0,
      O => frame_buf_reg_0_0_i_18_n_0
    );
frame_buf_reg_0_0_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_out(7),
      I1 => \qvga_waddr__0_n_0\,
      O => frame_buf_reg_0_0_i_19_n_0
    );
frame_buf_reg_0_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => frame_buf_reg_0_0_i_3_n_0,
      I1 => qvga_raddr(16),
      O => frame_buf_reg_0_0_i_2_n_0
    );
frame_buf_reg_0_0_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \qvga_waddr__15_n_0\,
      I1 => \qvga_waddr__1_n_0\,
      O => frame_buf_reg_0_0_i_20_n_0
    );
frame_buf_reg_0_0_i_21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5559AAA6"
    )
        port map (
      I0 => qvga_raddr0(8),
      I1 => frame_buf_reg_0_0_i_37_n_0,
      I2 => \sync_v_reg_n_0_[8]\,
      I3 => \sync_v_reg_n_0_[7]\,
      I4 => \sync_v_reg_n_0_[9]\,
      O => frame_buf_reg_0_0_i_21_n_0
    );
frame_buf_reg_0_0_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6966"
    )
        port map (
      I0 => sync_h_reg(2),
      I1 => \sync_v_reg_n_0_[8]\,
      I2 => \sync_v_reg_n_0_[7]\,
      I3 => frame_buf_reg_0_0_i_37_n_0,
      O => frame_buf_reg_0_0_i_22_n_0
    );
frame_buf_reg_0_0_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55566666AAA99999"
    )
        port map (
      I0 => sync_h_reg(1),
      I1 => \sync_v_reg_n_0_[6]\,
      I2 => \sync_v_reg_n_0_[4]\,
      I3 => \sync_v_reg_n_0_[3]\,
      I4 => \sync_v_reg_n_0_[5]\,
      I5 => \sync_v_reg_n_0_[7]\,
      O => frame_buf_reg_0_0_i_23_n_0
    );
frame_buf_reg_0_0_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^pixel_data_reg[15]\(10),
      I1 => \^pixel_data_reg[15]\(4),
      I2 => \^pixel_data_reg[15]\(15),
      O => frame_buf_reg_0_0_i_24_n_0
    );
frame_buf_reg_0_0_i_25: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^pixel_data_reg[15]\(15),
      I1 => \^pixel_data_reg[15]\(10),
      I2 => \^pixel_data_reg[15]\(4),
      O => frame_buf_reg_0_0_i_25_n_0
    );
frame_buf_reg_0_0_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^pixel_data_reg[15]\(5),
      I1 => \^pixel_data_reg[15]\(0),
      I2 => \^pixel_data_reg[15]\(11),
      I3 => frame_buf_reg_0_0_i_24_n_0,
      O => frame_buf_reg_0_0_i_26_n_0
    );
frame_buf_reg_0_0_i_27: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \^pixel_data_reg[15]\(10),
      I1 => \^pixel_data_reg[15]\(4),
      I2 => \^pixel_data_reg[15]\(15),
      I3 => \^pixel_data_reg[15]\(3),
      I4 => \^pixel_data_reg[15]\(9),
      O => frame_buf_reg_0_0_i_27_n_0
    );
frame_buf_reg_0_0_i_28: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^pixel_data_reg[15]\(9),
      I1 => \^pixel_data_reg[15]\(3),
      I2 => \^pixel_data_reg[15]\(14),
      O => frame_buf_reg_0_0_i_28_n_0
    );
frame_buf_reg_0_0_i_29: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^pixel_data_reg[15]\(13),
      I1 => \^pixel_data_reg[15]\(2),
      O => frame_buf_reg_0_0_i_29_n_0
    );
frame_buf_reg_0_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAEAEAFAFAEAAB"
    )
        port map (
      I0 => frame_buf_reg_0_0_i_13_n_0,
      I1 => \sync_v_reg_n_0_[7]\,
      I2 => \sync_v_reg_n_0_[9]\,
      I3 => \sync_v_reg_n_0_[6]\,
      I4 => \sync_v_reg_n_0_[8]\,
      I5 => frame_buf_reg_0_0_i_14_n_0,
      O => frame_buf_reg_0_0_i_3_n_0
    );
frame_buf_reg_0_0_i_30: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => sync_h_reg(6),
      I1 => sync_h_reg(4),
      I2 => sync_h_reg(5),
      O => frame_buf_reg_0_0_i_30_n_0
    );
frame_buf_reg_0_0_i_31: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \qvga_waddr__8_n_0\,
      I1 => \qvga_waddr__10_n_0\,
      O => frame_buf_reg_0_0_i_31_n_0
    );
frame_buf_reg_0_0_i_32: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \qvga_waddr__9_n_0\,
      I1 => \qvga_waddr__11_n_0\,
      O => frame_buf_reg_0_0_i_32_n_0
    );
frame_buf_reg_0_0_i_33: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \qvga_waddr__10_n_0\,
      I1 => \qvga_waddr__12_n_0\,
      O => frame_buf_reg_0_0_i_33_n_0
    );
frame_buf_reg_0_0_i_34: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \qvga_waddr__11_n_0\,
      I1 => \qvga_waddr__13_n_0\,
      O => frame_buf_reg_0_0_i_34_n_0
    );
frame_buf_reg_0_0_i_35: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \qvga_waddr__12_n_0\,
      I1 => \qvga_waddr__14_n_0\,
      O => frame_buf_reg_0_0_i_35_n_0
    );
frame_buf_reg_0_0_i_36: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \qvga_waddr__13_n_0\,
      I1 => \qvga_waddr__15_n_0\,
      O => frame_buf_reg_0_0_i_36_n_0
    );
frame_buf_reg_0_0_i_37: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0155"
    )
        port map (
      I0 => \sync_v_reg_n_0_[6]\,
      I1 => \sync_v_reg_n_0_[4]\,
      I2 => \sync_v_reg_n_0_[3]\,
      I3 => \sync_v_reg_n_0_[5]\,
      O => frame_buf_reg_0_0_i_37_n_0
    );
frame_buf_reg_0_0_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => frame_buf_reg_0_0_i_5_n_0,
      CO(3 downto 2) => NLW_frame_buf_reg_0_0_i_4_CO_UNCONNECTED(3 downto 2),
      CO(1) => frame_buf_reg_0_0_i_4_n_2,
      CO(0) => frame_buf_reg_0_0_i_4_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => NLW_frame_buf_reg_0_0_i_4_O_UNCONNECTED(3),
      O(2) => frame_buf_reg_0_0_i_4_n_5,
      O(1) => frame_buf_reg_0_0_i_4_n_6,
      O(0) => frame_buf_reg_0_0_i_4_n_7,
      S(3) => '0',
      S(2 downto 0) => p_0_out(16 downto 14)
    );
frame_buf_reg_0_0_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => frame_buf_reg_0_0_i_6_n_0,
      CO(3) => frame_buf_reg_0_0_i_5_n_0,
      CO(2) => frame_buf_reg_0_0_i_5_n_1,
      CO(1) => frame_buf_reg_0_0_i_5_n_2,
      CO(0) => frame_buf_reg_0_0_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => frame_buf_reg_0_0_i_5_n_4,
      O(2) => frame_buf_reg_0_0_i_5_n_5,
      O(1) => frame_buf_reg_0_0_i_5_n_6,
      O(0) => frame_buf_reg_0_0_i_5_n_7,
      S(3 downto 0) => p_0_out(13 downto 10)
    );
frame_buf_reg_0_0_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => frame_buf_reg_0_0_i_6_n_0,
      CO(2) => frame_buf_reg_0_0_i_6_n_1,
      CO(1) => frame_buf_reg_0_0_i_6_n_2,
      CO(0) => frame_buf_reg_0_0_i_6_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 1) => p_0_out(8 downto 7),
      DI(0) => \qvga_waddr__15_n_0\,
      O(3) => frame_buf_reg_0_0_i_6_n_4,
      O(2) => frame_buf_reg_0_0_i_6_n_5,
      O(1) => frame_buf_reg_0_0_i_6_n_6,
      O(0) => frame_buf_reg_0_0_i_6_n_7,
      S(3) => p_0_out(9),
      S(2) => frame_buf_reg_0_0_i_18_n_0,
      S(1) => frame_buf_reg_0_0_i_19_n_0,
      S(0) => frame_buf_reg_0_0_i_20_n_0
    );
frame_buf_reg_0_0_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => frame_buf_reg_0_0_i_8_n_0,
      CO(3) => frame_buf_reg_0_0_i_7_n_0,
      CO(2) => frame_buf_reg_0_0_i_7_n_1,
      CO(1) => frame_buf_reg_0_0_i_7_n_2,
      CO(0) => frame_buf_reg_0_0_i_7_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => qvga_raddr(13 downto 10),
      S(3 downto 0) => qvga_raddr0(13 downto 10)
    );
frame_buf_reg_0_0_i_8: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => frame_buf_reg_0_0_i_8_n_0,
      CO(2) => frame_buf_reg_0_0_i_8_n_1,
      CO(1) => frame_buf_reg_0_0_i_8_n_2,
      CO(0) => frame_buf_reg_0_0_i_8_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => qvga_raddr0(8),
      DI(1 downto 0) => sync_h_reg(2 downto 1),
      O(3 downto 0) => qvga_raddr(9 downto 6),
      S(3) => qvga_raddr0(9),
      S(2) => frame_buf_reg_0_0_i_21_n_0,
      S(1) => frame_buf_reg_0_0_i_22_n_0,
      S(0) => frame_buf_reg_0_0_i_23_n_0
    );
frame_buf_reg_0_0_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A955"
    )
        port map (
      I0 => \sync_v_reg_n_0_[6]\,
      I1 => \sync_v_reg_n_0_[4]\,
      I2 => \sync_v_reg_n_0_[3]\,
      I3 => \sync_v_reg_n_0_[5]\,
      O => frame_buf_reg_0_0_i_9_n_0
    );
frame_buf_reg_0_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => frame_buf_reg_0_0_i_4_n_6,
      ADDRARDADDR(14) => frame_buf_reg_0_0_i_4_n_7,
      ADDRARDADDR(13) => frame_buf_reg_0_0_i_5_n_4,
      ADDRARDADDR(12) => frame_buf_reg_0_0_i_5_n_5,
      ADDRARDADDR(11) => frame_buf_reg_0_0_i_5_n_6,
      ADDRARDADDR(10) => frame_buf_reg_0_0_i_5_n_7,
      ADDRARDADDR(9) => frame_buf_reg_0_0_i_6_n_4,
      ADDRARDADDR(8) => frame_buf_reg_0_0_i_6_n_5,
      ADDRARDADDR(7) => frame_buf_reg_0_0_i_6_n_6,
      ADDRARDADDR(6) => frame_buf_reg_0_0_i_6_n_7,
      ADDRARDADDR(5) => \qvga_waddr__2_n_0\,
      ADDRARDADDR(4) => \qvga_waddr__3_n_0\,
      ADDRARDADDR(3) => \qvga_waddr__4_n_0\,
      ADDRARDADDR(2) => \qvga_waddr__5_n_0\,
      ADDRARDADDR(1) => \qvga_waddr__6_n_0\,
      ADDRARDADDR(0) => \qvga_waddr__7_n_0\,
      ADDRBWRADDR(15 downto 6) => qvga_raddr(15 downto 6),
      ADDRBWRADDR(5) => frame_buf_reg_0_0_i_9_n_0,
      ADDRBWRADDR(4) => frame_buf_reg_0_0_i_10_n_0,
      ADDRBWRADDR(3 downto 2) => \^bram_read_addr\(1 downto 0),
      ADDRBWRADDR(1) => \^q\(0),
      ADDRBWRADDR(0) => \sync_v_reg_n_0_[1]\,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => frame_buf_reg_0_1_n_0,
      CASCADEOUTB => frame_buf_reg_0_1_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => \^pixel_clk\,
      DBITERR => NLW_frame_buf_reg_0_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => y_luma(1),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_buf_reg_0_1_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_buf_reg_0_1_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_buf_reg_0_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_frame_buf_reg_0_1_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_frame_buf_reg_0_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_buf_reg_0_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_buf_reg_0_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => u_read_pixels_n_3,
      ENBWREN => frame_buf_reg_0_0_i_2_n_0,
      INJECTDBITERR => NLW_frame_buf_reg_0_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_buf_reg_0_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_buf_reg_0_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => frame_buf_reg_0_0_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_buf_reg_0_1_SBITERR_UNCONNECTED,
      WEA(3) => frame_buf_reg_0_1_i_1_n_0,
      WEA(2) => frame_buf_reg_0_1_i_1_n_0,
      WEA(1) => frame_buf_reg_0_0_i_12_n_0,
      WEA(0) => frame_buf_reg_0_0_i_12_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_buf_reg_0_1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cam_y_reg(0),
      I1 => frame_buf_reg_0_0_i_4_n_5,
      O => frame_buf_reg_0_1_i_1_n_0
    );
frame_buf_reg_0_2: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => frame_buf_reg_0_0_i_4_n_6,
      ADDRARDADDR(14) => frame_buf_reg_0_0_i_4_n_7,
      ADDRARDADDR(13) => frame_buf_reg_0_0_i_5_n_4,
      ADDRARDADDR(12) => frame_buf_reg_0_0_i_5_n_5,
      ADDRARDADDR(11) => frame_buf_reg_0_0_i_5_n_6,
      ADDRARDADDR(10) => frame_buf_reg_0_0_i_5_n_7,
      ADDRARDADDR(9) => frame_buf_reg_0_0_i_6_n_4,
      ADDRARDADDR(8) => frame_buf_reg_0_0_i_6_n_5,
      ADDRARDADDR(7) => frame_buf_reg_0_0_i_6_n_6,
      ADDRARDADDR(6) => frame_buf_reg_0_0_i_6_n_7,
      ADDRARDADDR(5) => \qvga_waddr__2_n_0\,
      ADDRARDADDR(4) => \qvga_waddr__3_n_0\,
      ADDRARDADDR(3) => \qvga_waddr__4_n_0\,
      ADDRARDADDR(2) => \qvga_waddr__5_n_0\,
      ADDRARDADDR(1) => \qvga_waddr__6_n_0\,
      ADDRARDADDR(0) => \qvga_waddr__7_n_0\,
      ADDRBWRADDR(15 downto 6) => qvga_raddr(15 downto 6),
      ADDRBWRADDR(5) => frame_buf_reg_0_0_i_9_n_0,
      ADDRBWRADDR(4) => frame_buf_reg_0_0_i_10_n_0,
      ADDRBWRADDR(3 downto 2) => \^bram_read_addr\(1 downto 0),
      ADDRBWRADDR(1) => \^q\(0),
      ADDRBWRADDR(0) => \sync_v_reg_n_0_[1]\,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => frame_buf_reg_0_2_n_0,
      CASCADEOUTB => frame_buf_reg_0_2_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => \^pixel_clk\,
      DBITERR => NLW_frame_buf_reg_0_2_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => y_luma(2),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_buf_reg_0_2_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_buf_reg_0_2_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_buf_reg_0_2_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_frame_buf_reg_0_2_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_frame_buf_reg_0_2_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_buf_reg_0_2_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_buf_reg_0_2_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => u_read_pixels_n_3,
      ENBWREN => frame_buf_reg_0_0_i_2_n_0,
      INJECTDBITERR => NLW_frame_buf_reg_0_2_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_buf_reg_0_2_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_buf_reg_0_2_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => frame_buf_reg_0_0_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_buf_reg_0_2_SBITERR_UNCONNECTED,
      WEA(3) => frame_buf_reg_0_1_i_1_n_0,
      WEA(2) => frame_buf_reg_0_1_i_1_n_0,
      WEA(1) => frame_buf_reg_0_1_i_1_n_0,
      WEA(0) => frame_buf_reg_0_1_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_buf_reg_0_2_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => frame_buf_reg_0_0_i_11_n_0,
      CO(3) => frame_buf_reg_0_2_i_1_n_0,
      CO(2) => frame_buf_reg_0_2_i_1_n_1,
      CO(1) => frame_buf_reg_0_2_i_1_n_2,
      CO(0) => frame_buf_reg_0_2_i_1_n_3,
      CYINIT => '0',
      DI(3) => frame_buf_reg_0_2_i_2_n_0,
      DI(2) => frame_buf_reg_0_2_i_3_n_0,
      DI(1) => frame_buf_reg_0_2_i_4_n_0,
      DI(0) => frame_buf_reg_0_2_i_5_n_0,
      O(3 downto 0) => y_luma(5 downto 2),
      S(3) => frame_buf_reg_0_2_i_6_n_0,
      S(2) => frame_buf_reg_0_2_i_7_n_0,
      S(1) => frame_buf_reg_0_2_i_8_n_0,
      S(0) => frame_buf_reg_0_2_i_9_n_0
    );
frame_buf_reg_0_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^pixel_data_reg[15]\(8),
      I1 => \^pixel_data_reg[15]\(3),
      I2 => \^pixel_data_reg[15]\(14),
      O => frame_buf_reg_0_2_i_2_n_0
    );
frame_buf_reg_0_2_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^pixel_data_reg[15]\(7),
      I1 => \^pixel_data_reg[15]\(2),
      I2 => \^pixel_data_reg[15]\(13),
      O => frame_buf_reg_0_2_i_3_n_0
    );
frame_buf_reg_0_2_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^pixel_data_reg[15]\(6),
      I1 => \^pixel_data_reg[15]\(1),
      I2 => \^pixel_data_reg[15]\(12),
      O => frame_buf_reg_0_2_i_4_n_0
    );
frame_buf_reg_0_2_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \^pixel_data_reg[15]\(5),
      I1 => \^pixel_data_reg[15]\(0),
      I2 => \^pixel_data_reg[15]\(11),
      O => frame_buf_reg_0_2_i_5_n_0
    );
frame_buf_reg_0_2_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => frame_buf_reg_0_2_i_2_n_0,
      I1 => \^pixel_data_reg[15]\(4),
      I2 => \^pixel_data_reg[15]\(9),
      I3 => \^pixel_data_reg[15]\(15),
      O => frame_buf_reg_0_2_i_6_n_0
    );
frame_buf_reg_0_2_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^pixel_data_reg[15]\(8),
      I1 => \^pixel_data_reg[15]\(3),
      I2 => \^pixel_data_reg[15]\(14),
      I3 => frame_buf_reg_0_2_i_3_n_0,
      O => frame_buf_reg_0_2_i_7_n_0
    );
frame_buf_reg_0_2_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^pixel_data_reg[15]\(7),
      I1 => \^pixel_data_reg[15]\(2),
      I2 => \^pixel_data_reg[15]\(13),
      I3 => frame_buf_reg_0_2_i_4_n_0,
      O => frame_buf_reg_0_2_i_8_n_0
    );
frame_buf_reg_0_2_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^pixel_data_reg[15]\(6),
      I1 => \^pixel_data_reg[15]\(1),
      I2 => \^pixel_data_reg[15]\(12),
      I3 => frame_buf_reg_0_2_i_5_n_0,
      O => frame_buf_reg_0_2_i_9_n_0
    );
frame_buf_reg_0_3: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => frame_buf_reg_0_0_i_4_n_6,
      ADDRARDADDR(14) => frame_buf_reg_0_0_i_4_n_7,
      ADDRARDADDR(13) => frame_buf_reg_0_0_i_5_n_4,
      ADDRARDADDR(12) => frame_buf_reg_0_0_i_5_n_5,
      ADDRARDADDR(11) => frame_buf_reg_0_0_i_5_n_6,
      ADDRARDADDR(10) => frame_buf_reg_0_0_i_5_n_7,
      ADDRARDADDR(9) => frame_buf_reg_0_0_i_6_n_4,
      ADDRARDADDR(8) => frame_buf_reg_0_0_i_6_n_5,
      ADDRARDADDR(7) => frame_buf_reg_0_0_i_6_n_6,
      ADDRARDADDR(6) => frame_buf_reg_0_0_i_6_n_7,
      ADDRARDADDR(5) => \qvga_waddr__2_n_0\,
      ADDRARDADDR(4) => \qvga_waddr__3_n_0\,
      ADDRARDADDR(3) => \qvga_waddr__4_n_0\,
      ADDRARDADDR(2) => \qvga_waddr__5_n_0\,
      ADDRARDADDR(1) => \qvga_waddr__6_n_0\,
      ADDRARDADDR(0) => \qvga_waddr__7_n_0\,
      ADDRBWRADDR(15 downto 6) => qvga_raddr(15 downto 6),
      ADDRBWRADDR(5) => frame_buf_reg_0_0_i_9_n_0,
      ADDRBWRADDR(4) => frame_buf_reg_0_0_i_10_n_0,
      ADDRBWRADDR(3 downto 2) => \^bram_read_addr\(1 downto 0),
      ADDRBWRADDR(1) => \^q\(0),
      ADDRBWRADDR(0) => \sync_v_reg_n_0_[1]\,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => frame_buf_reg_0_3_n_0,
      CASCADEOUTB => frame_buf_reg_0_3_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => \^pixel_clk\,
      DBITERR => NLW_frame_buf_reg_0_3_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => y_luma(3),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_buf_reg_0_3_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_buf_reg_0_3_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_buf_reg_0_3_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_frame_buf_reg_0_3_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_frame_buf_reg_0_3_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_buf_reg_0_3_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_buf_reg_0_3_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => u_read_pixels_n_3,
      ENBWREN => frame_buf_reg_0_0_i_2_n_0,
      INJECTDBITERR => NLW_frame_buf_reg_0_3_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_buf_reg_0_3_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_buf_reg_0_3_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => frame_buf_reg_0_0_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_buf_reg_0_3_SBITERR_UNCONNECTED,
      WEA(3) => frame_buf_reg_1_2_i_1_n_0,
      WEA(2) => frame_buf_reg_1_2_i_1_n_0,
      WEA(1) => frame_buf_reg_1_2_i_1_n_0,
      WEA(0) => frame_buf_reg_1_2_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_buf_reg_0_4: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => frame_buf_reg_0_0_i_4_n_6,
      ADDRARDADDR(14) => frame_buf_reg_0_0_i_4_n_7,
      ADDRARDADDR(13) => frame_buf_reg_0_0_i_5_n_4,
      ADDRARDADDR(12) => frame_buf_reg_0_0_i_5_n_5,
      ADDRARDADDR(11) => frame_buf_reg_0_0_i_5_n_6,
      ADDRARDADDR(10) => frame_buf_reg_0_0_i_5_n_7,
      ADDRARDADDR(9) => frame_buf_reg_0_0_i_6_n_4,
      ADDRARDADDR(8) => frame_buf_reg_0_0_i_6_n_5,
      ADDRARDADDR(7) => frame_buf_reg_0_0_i_6_n_6,
      ADDRARDADDR(6) => frame_buf_reg_0_0_i_6_n_7,
      ADDRARDADDR(5) => \qvga_waddr__2_n_0\,
      ADDRARDADDR(4) => \qvga_waddr__3_n_0\,
      ADDRARDADDR(3) => \qvga_waddr__4_n_0\,
      ADDRARDADDR(2) => \qvga_waddr__5_n_0\,
      ADDRARDADDR(1) => \qvga_waddr__6_n_0\,
      ADDRARDADDR(0) => \qvga_waddr__7_n_0\,
      ADDRBWRADDR(15 downto 6) => qvga_raddr(15 downto 6),
      ADDRBWRADDR(5) => frame_buf_reg_0_0_i_9_n_0,
      ADDRBWRADDR(4) => frame_buf_reg_0_0_i_10_n_0,
      ADDRBWRADDR(3 downto 2) => \^bram_read_addr\(1 downto 0),
      ADDRBWRADDR(1) => \^q\(0),
      ADDRBWRADDR(0) => \sync_v_reg_n_0_[1]\,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => frame_buf_reg_0_4_n_0,
      CASCADEOUTB => frame_buf_reg_0_4_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => \^pixel_clk\,
      DBITERR => NLW_frame_buf_reg_0_4_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => y_luma(4),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_buf_reg_0_4_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_buf_reg_0_4_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_buf_reg_0_4_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_frame_buf_reg_0_4_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_frame_buf_reg_0_4_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_buf_reg_0_4_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_buf_reg_0_4_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => u_read_pixels_n_3,
      ENBWREN => frame_buf_reg_0_0_i_2_n_0,
      INJECTDBITERR => NLW_frame_buf_reg_0_4_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_buf_reg_0_4_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_buf_reg_0_4_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => frame_buf_reg_0_0_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_buf_reg_0_4_SBITERR_UNCONNECTED,
      WEA(3) => frame_buf_reg_1_3_i_1_n_0,
      WEA(2) => frame_buf_reg_1_3_i_1_n_0,
      WEA(1) => frame_buf_reg_1_3_i_1_n_0,
      WEA(0) => frame_buf_reg_1_3_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_buf_reg_0_5: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => frame_buf_reg_0_0_i_4_n_6,
      ADDRARDADDR(14) => frame_buf_reg_0_0_i_4_n_7,
      ADDRARDADDR(13) => frame_buf_reg_0_0_i_5_n_4,
      ADDRARDADDR(12) => frame_buf_reg_0_0_i_5_n_5,
      ADDRARDADDR(11) => frame_buf_reg_0_0_i_5_n_6,
      ADDRARDADDR(10) => frame_buf_reg_0_0_i_5_n_7,
      ADDRARDADDR(9) => frame_buf_reg_0_0_i_6_n_4,
      ADDRARDADDR(8) => frame_buf_reg_0_0_i_6_n_5,
      ADDRARDADDR(7) => frame_buf_reg_0_0_i_6_n_6,
      ADDRARDADDR(6) => frame_buf_reg_0_0_i_6_n_7,
      ADDRARDADDR(5) => \qvga_waddr__2_n_0\,
      ADDRARDADDR(4) => \qvga_waddr__3_n_0\,
      ADDRARDADDR(3) => \qvga_waddr__4_n_0\,
      ADDRARDADDR(2) => \qvga_waddr__5_n_0\,
      ADDRARDADDR(1) => \qvga_waddr__6_n_0\,
      ADDRARDADDR(0) => \qvga_waddr__7_n_0\,
      ADDRBWRADDR(15 downto 6) => qvga_raddr(15 downto 6),
      ADDRBWRADDR(5) => frame_buf_reg_0_0_i_9_n_0,
      ADDRBWRADDR(4) => frame_buf_reg_0_0_i_10_n_0,
      ADDRBWRADDR(3 downto 2) => \^bram_read_addr\(1 downto 0),
      ADDRBWRADDR(1) => \^q\(0),
      ADDRBWRADDR(0) => \sync_v_reg_n_0_[1]\,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => frame_buf_reg_0_5_n_0,
      CASCADEOUTB => frame_buf_reg_0_5_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => \^pixel_clk\,
      DBITERR => NLW_frame_buf_reg_0_5_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => y_luma(5),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_buf_reg_0_5_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_buf_reg_0_5_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_buf_reg_0_5_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_frame_buf_reg_0_5_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_frame_buf_reg_0_5_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_buf_reg_0_5_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_buf_reg_0_5_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => u_read_pixels_n_3,
      ENBWREN => frame_buf_reg_0_0_i_2_n_0,
      INJECTDBITERR => NLW_frame_buf_reg_0_5_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_buf_reg_0_5_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_buf_reg_0_5_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => frame_buf_reg_0_0_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_buf_reg_0_5_SBITERR_UNCONNECTED,
      WEA(3) => frame_buf_reg_0_5_i_1_n_0,
      WEA(2) => frame_buf_reg_0_5_i_1_n_0,
      WEA(1) => frame_buf_reg_0_5_i_1_n_0,
      WEA(0) => frame_buf_reg_0_5_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_buf_reg_0_5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cam_y_reg(0),
      I1 => frame_buf_reg_0_0_i_4_n_5,
      O => frame_buf_reg_0_5_i_1_n_0
    );
frame_buf_reg_0_6: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => frame_buf_reg_0_0_i_4_n_6,
      ADDRARDADDR(14) => frame_buf_reg_0_0_i_4_n_7,
      ADDRARDADDR(13) => frame_buf_reg_0_0_i_5_n_4,
      ADDRARDADDR(12) => frame_buf_reg_0_0_i_5_n_5,
      ADDRARDADDR(11) => frame_buf_reg_0_0_i_5_n_6,
      ADDRARDADDR(10) => frame_buf_reg_0_0_i_5_n_7,
      ADDRARDADDR(9) => frame_buf_reg_0_0_i_6_n_4,
      ADDRARDADDR(8) => frame_buf_reg_0_0_i_6_n_5,
      ADDRARDADDR(7) => frame_buf_reg_0_0_i_6_n_6,
      ADDRARDADDR(6) => frame_buf_reg_0_0_i_6_n_7,
      ADDRARDADDR(5) => \qvga_waddr__2_n_0\,
      ADDRARDADDR(4) => \qvga_waddr__3_n_0\,
      ADDRARDADDR(3) => \qvga_waddr__4_n_0\,
      ADDRARDADDR(2) => \qvga_waddr__5_n_0\,
      ADDRARDADDR(1) => \qvga_waddr__6_n_0\,
      ADDRARDADDR(0) => \qvga_waddr__7_n_0\,
      ADDRBWRADDR(15 downto 6) => qvga_raddr(15 downto 6),
      ADDRBWRADDR(5) => frame_buf_reg_0_0_i_9_n_0,
      ADDRBWRADDR(4) => frame_buf_reg_0_0_i_10_n_0,
      ADDRBWRADDR(3 downto 2) => \^bram_read_addr\(1 downto 0),
      ADDRBWRADDR(1) => \^q\(0),
      ADDRBWRADDR(0) => \sync_v_reg_n_0_[1]\,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => frame_buf_reg_0_6_n_0,
      CASCADEOUTB => frame_buf_reg_0_6_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => \^pixel_clk\,
      DBITERR => NLW_frame_buf_reg_0_6_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => y_luma(6),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_buf_reg_0_6_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_buf_reg_0_6_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_buf_reg_0_6_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_frame_buf_reg_0_6_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_frame_buf_reg_0_6_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_buf_reg_0_6_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_buf_reg_0_6_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => u_read_pixels_n_3,
      ENBWREN => frame_buf_reg_0_0_i_2_n_0,
      INJECTDBITERR => NLW_frame_buf_reg_0_6_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_buf_reg_0_6_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_buf_reg_0_6_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => frame_buf_reg_0_0_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_buf_reg_0_6_SBITERR_UNCONNECTED,
      WEA(3) => frame_buf_reg_0_6_i_2_n_0,
      WEA(2) => frame_buf_reg_0_6_i_2_n_0,
      WEA(1) => frame_buf_reg_0_5_i_1_n_0,
      WEA(0) => frame_buf_reg_0_5_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_buf_reg_0_6_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => frame_buf_reg_0_2_i_1_n_0,
      CO(3 downto 2) => NLW_frame_buf_reg_0_6_i_1_CO_UNCONNECTED(3 downto 2),
      CO(1) => y_luma(7),
      CO(0) => NLW_frame_buf_reg_0_6_i_1_CO_UNCONNECTED(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^pixel_data_reg[15]\(10),
      O(3 downto 1) => NLW_frame_buf_reg_0_6_i_1_O_UNCONNECTED(3 downto 1),
      O(0) => y_luma(6),
      S(3 downto 1) => B"001",
      S(0) => frame_buf_reg_0_6_i_3_n_0
    );
frame_buf_reg_0_6_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cam_y_reg(0),
      I1 => frame_buf_reg_0_0_i_4_n_5,
      O => frame_buf_reg_0_6_i_2_n_0
    );
frame_buf_reg_0_6_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"17E8"
    )
        port map (
      I0 => \^pixel_data_reg[15]\(15),
      I1 => \^pixel_data_reg[15]\(4),
      I2 => \^pixel_data_reg[15]\(9),
      I3 => \^pixel_data_reg[15]\(10),
      O => frame_buf_reg_0_6_i_3_n_0
    );
frame_buf_reg_0_7: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => frame_buf_reg_0_0_i_4_n_6,
      ADDRARDADDR(14) => frame_buf_reg_0_0_i_4_n_7,
      ADDRARDADDR(13) => frame_buf_reg_0_0_i_5_n_4,
      ADDRARDADDR(12) => frame_buf_reg_0_0_i_5_n_5,
      ADDRARDADDR(11) => frame_buf_reg_0_0_i_5_n_6,
      ADDRARDADDR(10) => frame_buf_reg_0_0_i_5_n_7,
      ADDRARDADDR(9) => frame_buf_reg_0_0_i_6_n_4,
      ADDRARDADDR(8) => frame_buf_reg_0_0_i_6_n_5,
      ADDRARDADDR(7) => frame_buf_reg_0_0_i_6_n_6,
      ADDRARDADDR(6) => frame_buf_reg_0_0_i_6_n_7,
      ADDRARDADDR(5) => \qvga_waddr__2_n_0\,
      ADDRARDADDR(4) => \qvga_waddr__3_n_0\,
      ADDRARDADDR(3) => \qvga_waddr__4_n_0\,
      ADDRARDADDR(2) => \qvga_waddr__5_n_0\,
      ADDRARDADDR(1) => \qvga_waddr__6_n_0\,
      ADDRARDADDR(0) => \qvga_waddr__7_n_0\,
      ADDRBWRADDR(15 downto 6) => qvga_raddr(15 downto 6),
      ADDRBWRADDR(5) => frame_buf_reg_0_0_i_9_n_0,
      ADDRBWRADDR(4) => frame_buf_reg_0_0_i_10_n_0,
      ADDRBWRADDR(3 downto 2) => \^bram_read_addr\(1 downto 0),
      ADDRBWRADDR(1) => \^q\(0),
      ADDRBWRADDR(0) => \sync_v_reg_n_0_[1]\,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => frame_buf_reg_0_7_n_0,
      CASCADEOUTB => frame_buf_reg_0_7_n_1,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => \^pixel_clk\,
      DBITERR => NLW_frame_buf_reg_0_7_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => y_luma(7),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_buf_reg_0_7_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_buf_reg_0_7_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_buf_reg_0_7_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 0) => NLW_frame_buf_reg_0_7_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_frame_buf_reg_0_7_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_buf_reg_0_7_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_buf_reg_0_7_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => u_read_pixels_n_3,
      ENBWREN => frame_buf_reg_0_0_i_2_n_0,
      INJECTDBITERR => NLW_frame_buf_reg_0_7_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_buf_reg_0_7_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_buf_reg_0_7_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => frame_buf_reg_0_0_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_buf_reg_0_7_SBITERR_UNCONNECTED,
      WEA(3) => frame_buf_reg_0_6_i_2_n_0,
      WEA(2) => frame_buf_reg_0_6_i_2_n_0,
      WEA(1) => frame_buf_reg_0_6_i_2_n_0,
      WEA(0) => frame_buf_reg_0_6_i_2_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_buf_reg_1_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => frame_buf_reg_0_0_i_4_n_6,
      ADDRARDADDR(14) => frame_buf_reg_0_0_i_4_n_7,
      ADDRARDADDR(13) => frame_buf_reg_0_0_i_5_n_4,
      ADDRARDADDR(12) => frame_buf_reg_0_0_i_5_n_5,
      ADDRARDADDR(11) => frame_buf_reg_0_0_i_5_n_6,
      ADDRARDADDR(10) => frame_buf_reg_0_0_i_5_n_7,
      ADDRARDADDR(9) => frame_buf_reg_0_0_i_6_n_4,
      ADDRARDADDR(8) => frame_buf_reg_0_0_i_6_n_5,
      ADDRARDADDR(7) => frame_buf_reg_0_0_i_6_n_6,
      ADDRARDADDR(6) => frame_buf_reg_0_0_i_6_n_7,
      ADDRARDADDR(5) => \qvga_waddr__2_n_0\,
      ADDRARDADDR(4) => \qvga_waddr__3_n_0\,
      ADDRARDADDR(3) => \qvga_waddr__4_n_0\,
      ADDRARDADDR(2) => \qvga_waddr__5_n_0\,
      ADDRARDADDR(1) => \qvga_waddr__6_n_0\,
      ADDRARDADDR(0) => \qvga_waddr__7_n_0\,
      ADDRBWRADDR(15 downto 6) => qvga_raddr(15 downto 6),
      ADDRBWRADDR(5) => frame_buf_reg_0_0_i_9_n_0,
      ADDRBWRADDR(4) => frame_buf_reg_0_0_i_10_n_0,
      ADDRBWRADDR(3 downto 2) => \^bram_read_addr\(1 downto 0),
      ADDRBWRADDR(1) => \^q\(0),
      ADDRBWRADDR(0) => \sync_v_reg_n_0_[1]\,
      CASCADEINA => frame_buf_reg_0_0_n_0,
      CASCADEINB => frame_buf_reg_0_0_n_1,
      CASCADEOUTA => NLW_frame_buf_reg_1_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_frame_buf_reg_1_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => \^pixel_clk\,
      DBITERR => NLW_frame_buf_reg_1_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => y_luma(0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_buf_reg_1_0_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_buf_reg_1_0_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_buf_reg_1_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_frame_buf_reg_1_0_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => frame_buf_reg_1_0_n_67,
      DOPADOP(3 downto 0) => NLW_frame_buf_reg_1_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_buf_reg_1_0_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_buf_reg_1_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => u_read_pixels_n_3,
      ENBWREN => frame_buf_reg_0_0_i_2_n_0,
      INJECTDBITERR => NLW_frame_buf_reg_1_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_buf_reg_1_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_buf_reg_1_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => frame_buf_reg_0_0_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_buf_reg_1_0_SBITERR_UNCONNECTED,
      WEA(3) => frame_buf_reg_0_0_i_12_n_0,
      WEA(2) => frame_buf_reg_0_0_i_12_n_0,
      WEA(1) => frame_buf_reg_0_0_i_12_n_0,
      WEA(0) => frame_buf_reg_0_0_i_12_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
\frame_buf_reg_1_0__0\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => frame_buf_reg_0_0_i_4_n_7,
      ADDRARDADDR(13) => frame_buf_reg_0_0_i_5_n_4,
      ADDRARDADDR(12) => frame_buf_reg_0_0_i_5_n_5,
      ADDRARDADDR(11) => frame_buf_reg_0_0_i_5_n_6,
      ADDRARDADDR(10) => frame_buf_reg_0_0_i_5_n_7,
      ADDRARDADDR(9) => frame_buf_reg_0_0_i_6_n_4,
      ADDRARDADDR(8) => frame_buf_reg_0_0_i_6_n_5,
      ADDRARDADDR(7) => frame_buf_reg_0_0_i_6_n_6,
      ADDRARDADDR(6) => frame_buf_reg_0_0_i_6_n_7,
      ADDRARDADDR(5) => \qvga_waddr__2_n_0\,
      ADDRARDADDR(4) => \qvga_waddr__3_n_0\,
      ADDRARDADDR(3) => \qvga_waddr__4_n_0\,
      ADDRARDADDR(2) => \qvga_waddr__5_n_0\,
      ADDRARDADDR(1) => \qvga_waddr__6_n_0\,
      ADDRARDADDR(0) => \qvga_waddr__7_n_0\,
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 6) => qvga_raddr(14 downto 6),
      ADDRBWRADDR(5) => frame_buf_reg_0_0_i_9_n_0,
      ADDRBWRADDR(4) => frame_buf_reg_0_0_i_10_n_0,
      ADDRBWRADDR(3 downto 2) => \^bram_read_addr\(1 downto 0),
      ADDRBWRADDR(1) => \^q\(0),
      ADDRBWRADDR(0) => \sync_v_reg_n_0_[1]\,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => \NLW_frame_buf_reg_1_0__0_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_frame_buf_reg_1_0__0_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => \^pixel_clk\,
      DBITERR => \NLW_frame_buf_reg_1_0__0_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => y_luma(0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_frame_buf_reg_1_0__0_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => \frame_buf_reg_1_0__0_n_35\,
      DOBDO(31 downto 1) => \NLW_frame_buf_reg_1_0__0_DOBDO_UNCONNECTED\(31 downto 1),
      DOBDO(0) => \frame_buf_reg_1_0__0_n_67\,
      DOPADOP(3 downto 0) => \NLW_frame_buf_reg_1_0__0_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_frame_buf_reg_1_0__0_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_frame_buf_reg_1_0__0_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => u_read_pixels_n_4,
      ENBWREN => \frame_buf_reg_1_0__0_i_2_n_0\,
      INJECTDBITERR => \NLW_frame_buf_reg_1_0__0_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_frame_buf_reg_1_0__0_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_frame_buf_reg_1_0__0_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => frame_buf_reg_0_0_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_frame_buf_reg_1_0__0_SBITERR_UNCONNECTED\,
      WEA(3) => \frame_buf_reg_1_0__0_i_3_n_0\,
      WEA(2) => \frame_buf_reg_1_0__0_i_3_n_0\,
      WEA(1) => \frame_buf_reg_1_0__0_i_4_n_0\,
      WEA(0) => \frame_buf_reg_1_0__0_i_4_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\frame_buf_reg_1_0__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => qvga_raddr(15),
      I1 => qvga_raddr(16),
      I2 => frame_buf_reg_0_0_i_3_n_0,
      O => \frame_buf_reg_1_0__0_i_2_n_0\
    );
\frame_buf_reg_1_0__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => frame_buf_reg_0_0_i_4_n_6,
      I1 => frame_buf_reg_0_0_i_4_n_5,
      I2 => cam_y_reg(0),
      O => \frame_buf_reg_1_0__0_i_3_n_0\
    );
\frame_buf_reg_1_0__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => frame_buf_reg_0_0_i_4_n_6,
      I1 => frame_buf_reg_0_0_i_4_n_5,
      I2 => cam_y_reg(0),
      O => \frame_buf_reg_1_0__0_i_4_n_0\
    );
frame_buf_reg_1_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => frame_buf_reg_0_0_i_4_n_6,
      ADDRARDADDR(14) => frame_buf_reg_0_0_i_4_n_7,
      ADDRARDADDR(13) => frame_buf_reg_0_0_i_5_n_4,
      ADDRARDADDR(12) => frame_buf_reg_0_0_i_5_n_5,
      ADDRARDADDR(11) => frame_buf_reg_0_0_i_5_n_6,
      ADDRARDADDR(10) => frame_buf_reg_0_0_i_5_n_7,
      ADDRARDADDR(9) => frame_buf_reg_0_0_i_6_n_4,
      ADDRARDADDR(8) => frame_buf_reg_0_0_i_6_n_5,
      ADDRARDADDR(7) => frame_buf_reg_0_0_i_6_n_6,
      ADDRARDADDR(6) => frame_buf_reg_0_0_i_6_n_7,
      ADDRARDADDR(5) => \qvga_waddr__2_n_0\,
      ADDRARDADDR(4) => \qvga_waddr__3_n_0\,
      ADDRARDADDR(3) => \qvga_waddr__4_n_0\,
      ADDRARDADDR(2) => \qvga_waddr__5_n_0\,
      ADDRARDADDR(1) => \qvga_waddr__6_n_0\,
      ADDRARDADDR(0) => \qvga_waddr__7_n_0\,
      ADDRBWRADDR(15 downto 6) => qvga_raddr(15 downto 6),
      ADDRBWRADDR(5) => frame_buf_reg_0_0_i_9_n_0,
      ADDRBWRADDR(4) => frame_buf_reg_0_0_i_10_n_0,
      ADDRBWRADDR(3 downto 2) => \^bram_read_addr\(1 downto 0),
      ADDRBWRADDR(1) => \^q\(0),
      ADDRBWRADDR(0) => \sync_v_reg_n_0_[1]\,
      CASCADEINA => frame_buf_reg_0_1_n_0,
      CASCADEINB => frame_buf_reg_0_1_n_1,
      CASCADEOUTA => NLW_frame_buf_reg_1_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_frame_buf_reg_1_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => \^pixel_clk\,
      DBITERR => NLW_frame_buf_reg_1_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => y_luma(1),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_buf_reg_1_1_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_buf_reg_1_1_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_buf_reg_1_1_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_frame_buf_reg_1_1_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => frame_buf_reg_1_1_n_67,
      DOPADOP(3 downto 0) => NLW_frame_buf_reg_1_1_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_buf_reg_1_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_buf_reg_1_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => u_read_pixels_n_3,
      ENBWREN => frame_buf_reg_0_0_i_2_n_0,
      INJECTDBITERR => NLW_frame_buf_reg_1_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_buf_reg_1_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_buf_reg_1_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => frame_buf_reg_0_0_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_buf_reg_1_1_SBITERR_UNCONNECTED,
      WEA(3) => frame_buf_reg_0_1_i_1_n_0,
      WEA(2) => frame_buf_reg_0_1_i_1_n_0,
      WEA(1) => frame_buf_reg_0_1_i_1_n_0,
      WEA(0) => frame_buf_reg_0_1_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
\frame_buf_reg_1_1__0\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => frame_buf_reg_0_0_i_4_n_7,
      ADDRARDADDR(13) => frame_buf_reg_0_0_i_5_n_4,
      ADDRARDADDR(12) => frame_buf_reg_0_0_i_5_n_5,
      ADDRARDADDR(11) => frame_buf_reg_0_0_i_5_n_6,
      ADDRARDADDR(10) => frame_buf_reg_0_0_i_5_n_7,
      ADDRARDADDR(9) => frame_buf_reg_0_0_i_6_n_4,
      ADDRARDADDR(8) => frame_buf_reg_0_0_i_6_n_5,
      ADDRARDADDR(7) => frame_buf_reg_0_0_i_6_n_6,
      ADDRARDADDR(6) => frame_buf_reg_0_0_i_6_n_7,
      ADDRARDADDR(5) => \qvga_waddr__2_n_0\,
      ADDRARDADDR(4) => \qvga_waddr__3_n_0\,
      ADDRARDADDR(3) => \qvga_waddr__4_n_0\,
      ADDRARDADDR(2) => \qvga_waddr__5_n_0\,
      ADDRARDADDR(1) => \qvga_waddr__6_n_0\,
      ADDRARDADDR(0) => \qvga_waddr__7_n_0\,
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 6) => qvga_raddr(14 downto 6),
      ADDRBWRADDR(5) => frame_buf_reg_0_0_i_9_n_0,
      ADDRBWRADDR(4) => frame_buf_reg_0_0_i_10_n_0,
      ADDRBWRADDR(3 downto 2) => \^bram_read_addr\(1 downto 0),
      ADDRBWRADDR(1) => \^q\(0),
      ADDRBWRADDR(0) => \sync_v_reg_n_0_[1]\,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => \NLW_frame_buf_reg_1_1__0_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_frame_buf_reg_1_1__0_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => \^pixel_clk\,
      DBITERR => \NLW_frame_buf_reg_1_1__0_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => y_luma(1),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_frame_buf_reg_1_1__0_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => \frame_buf_reg_1_1__0_n_35\,
      DOBDO(31 downto 1) => \NLW_frame_buf_reg_1_1__0_DOBDO_UNCONNECTED\(31 downto 1),
      DOBDO(0) => \frame_buf_reg_1_1__0_n_67\,
      DOPADOP(3 downto 0) => \NLW_frame_buf_reg_1_1__0_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_frame_buf_reg_1_1__0_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_frame_buf_reg_1_1__0_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => u_read_pixels_n_4,
      ENBWREN => \frame_buf_reg_1_0__0_i_2_n_0\,
      INJECTDBITERR => \NLW_frame_buf_reg_1_1__0_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_frame_buf_reg_1_1__0_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_frame_buf_reg_1_1__0_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => frame_buf_reg_0_0_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_frame_buf_reg_1_1__0_SBITERR_UNCONNECTED\,
      WEA(3) => \frame_buf_reg_1_0__0_i_3_n_0\,
      WEA(2) => \frame_buf_reg_1_0__0_i_3_n_0\,
      WEA(1) => \frame_buf_reg_1_0__0_i_3_n_0\,
      WEA(0) => \frame_buf_reg_1_0__0_i_3_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_buf_reg_1_2: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => frame_buf_reg_0_0_i_4_n_6,
      ADDRARDADDR(14) => frame_buf_reg_0_0_i_4_n_7,
      ADDRARDADDR(13) => frame_buf_reg_0_0_i_5_n_4,
      ADDRARDADDR(12) => frame_buf_reg_0_0_i_5_n_5,
      ADDRARDADDR(11) => frame_buf_reg_0_0_i_5_n_6,
      ADDRARDADDR(10) => frame_buf_reg_0_0_i_5_n_7,
      ADDRARDADDR(9) => frame_buf_reg_0_0_i_6_n_4,
      ADDRARDADDR(8) => frame_buf_reg_0_0_i_6_n_5,
      ADDRARDADDR(7) => frame_buf_reg_0_0_i_6_n_6,
      ADDRARDADDR(6) => frame_buf_reg_0_0_i_6_n_7,
      ADDRARDADDR(5) => \qvga_waddr__2_n_0\,
      ADDRARDADDR(4) => \qvga_waddr__3_n_0\,
      ADDRARDADDR(3) => \qvga_waddr__4_n_0\,
      ADDRARDADDR(2) => \qvga_waddr__5_n_0\,
      ADDRARDADDR(1) => \qvga_waddr__6_n_0\,
      ADDRARDADDR(0) => \qvga_waddr__7_n_0\,
      ADDRBWRADDR(15 downto 6) => qvga_raddr(15 downto 6),
      ADDRBWRADDR(5) => frame_buf_reg_0_0_i_9_n_0,
      ADDRBWRADDR(4) => frame_buf_reg_0_0_i_10_n_0,
      ADDRBWRADDR(3 downto 2) => \^bram_read_addr\(1 downto 0),
      ADDRBWRADDR(1) => \^q\(0),
      ADDRBWRADDR(0) => \sync_v_reg_n_0_[1]\,
      CASCADEINA => frame_buf_reg_0_2_n_0,
      CASCADEINB => frame_buf_reg_0_2_n_1,
      CASCADEOUTA => NLW_frame_buf_reg_1_2_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_frame_buf_reg_1_2_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => \^pixel_clk\,
      DBITERR => NLW_frame_buf_reg_1_2_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => y_luma(2),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_buf_reg_1_2_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_buf_reg_1_2_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_buf_reg_1_2_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_frame_buf_reg_1_2_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => frame_buf_reg_1_2_n_67,
      DOPADOP(3 downto 0) => NLW_frame_buf_reg_1_2_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_buf_reg_1_2_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_buf_reg_1_2_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => u_read_pixels_n_3,
      ENBWREN => frame_buf_reg_0_0_i_2_n_0,
      INJECTDBITERR => NLW_frame_buf_reg_1_2_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_buf_reg_1_2_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_buf_reg_1_2_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => frame_buf_reg_0_0_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_buf_reg_1_2_SBITERR_UNCONNECTED,
      WEA(3) => frame_buf_reg_1_2_i_1_n_0,
      WEA(2) => frame_buf_reg_1_2_i_1_n_0,
      WEA(1) => frame_buf_reg_1_2_i_1_n_0,
      WEA(0) => frame_buf_reg_1_2_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
\frame_buf_reg_1_2__0\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => frame_buf_reg_0_0_i_4_n_7,
      ADDRARDADDR(13) => frame_buf_reg_0_0_i_5_n_4,
      ADDRARDADDR(12) => frame_buf_reg_0_0_i_5_n_5,
      ADDRARDADDR(11) => frame_buf_reg_0_0_i_5_n_6,
      ADDRARDADDR(10) => frame_buf_reg_0_0_i_5_n_7,
      ADDRARDADDR(9) => frame_buf_reg_0_0_i_6_n_4,
      ADDRARDADDR(8) => frame_buf_reg_0_0_i_6_n_5,
      ADDRARDADDR(7) => frame_buf_reg_0_0_i_6_n_6,
      ADDRARDADDR(6) => frame_buf_reg_0_0_i_6_n_7,
      ADDRARDADDR(5) => \qvga_waddr__2_n_0\,
      ADDRARDADDR(4) => \qvga_waddr__3_n_0\,
      ADDRARDADDR(3) => \qvga_waddr__4_n_0\,
      ADDRARDADDR(2) => \qvga_waddr__5_n_0\,
      ADDRARDADDR(1) => \qvga_waddr__6_n_0\,
      ADDRARDADDR(0) => \qvga_waddr__7_n_0\,
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 6) => qvga_raddr(14 downto 6),
      ADDRBWRADDR(5) => frame_buf_reg_0_0_i_9_n_0,
      ADDRBWRADDR(4) => frame_buf_reg_0_0_i_10_n_0,
      ADDRBWRADDR(3 downto 2) => \^bram_read_addr\(1 downto 0),
      ADDRBWRADDR(1) => \^q\(0),
      ADDRBWRADDR(0) => \sync_v_reg_n_0_[1]\,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => \NLW_frame_buf_reg_1_2__0_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_frame_buf_reg_1_2__0_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => \^pixel_clk\,
      DBITERR => \NLW_frame_buf_reg_1_2__0_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => y_luma(2),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_frame_buf_reg_1_2__0_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => \frame_buf_reg_1_2__0_n_35\,
      DOBDO(31 downto 1) => \NLW_frame_buf_reg_1_2__0_DOBDO_UNCONNECTED\(31 downto 1),
      DOBDO(0) => \frame_buf_reg_1_2__0_n_67\,
      DOPADOP(3 downto 0) => \NLW_frame_buf_reg_1_2__0_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_frame_buf_reg_1_2__0_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_frame_buf_reg_1_2__0_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => u_read_pixels_n_4,
      ENBWREN => \frame_buf_reg_1_0__0_i_2_n_0\,
      INJECTDBITERR => \NLW_frame_buf_reg_1_2__0_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_frame_buf_reg_1_2__0_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_frame_buf_reg_1_2__0_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => frame_buf_reg_0_0_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_frame_buf_reg_1_2__0_SBITERR_UNCONNECTED\,
      WEA(3) => \frame_buf_reg_1_0__0_i_3_n_0\,
      WEA(2) => \frame_buf_reg_1_0__0_i_3_n_0\,
      WEA(1) => \frame_buf_reg_1_0__0_i_3_n_0\,
      WEA(0) => \frame_buf_reg_1_0__0_i_3_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_buf_reg_1_2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cam_y_reg(0),
      I1 => frame_buf_reg_0_0_i_4_n_5,
      O => frame_buf_reg_1_2_i_1_n_0
    );
frame_buf_reg_1_3: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => frame_buf_reg_0_0_i_4_n_6,
      ADDRARDADDR(14) => frame_buf_reg_0_0_i_4_n_7,
      ADDRARDADDR(13) => frame_buf_reg_0_0_i_5_n_4,
      ADDRARDADDR(12) => frame_buf_reg_0_0_i_5_n_5,
      ADDRARDADDR(11) => frame_buf_reg_0_0_i_5_n_6,
      ADDRARDADDR(10) => frame_buf_reg_0_0_i_5_n_7,
      ADDRARDADDR(9) => frame_buf_reg_0_0_i_6_n_4,
      ADDRARDADDR(8) => frame_buf_reg_0_0_i_6_n_5,
      ADDRARDADDR(7) => frame_buf_reg_0_0_i_6_n_6,
      ADDRARDADDR(6) => frame_buf_reg_0_0_i_6_n_7,
      ADDRARDADDR(5) => \qvga_waddr__2_n_0\,
      ADDRARDADDR(4) => \qvga_waddr__3_n_0\,
      ADDRARDADDR(3) => \qvga_waddr__4_n_0\,
      ADDRARDADDR(2) => \qvga_waddr__5_n_0\,
      ADDRARDADDR(1) => \qvga_waddr__6_n_0\,
      ADDRARDADDR(0) => \qvga_waddr__7_n_0\,
      ADDRBWRADDR(15 downto 6) => qvga_raddr(15 downto 6),
      ADDRBWRADDR(5) => frame_buf_reg_0_0_i_9_n_0,
      ADDRBWRADDR(4) => frame_buf_reg_0_0_i_10_n_0,
      ADDRBWRADDR(3 downto 2) => \^bram_read_addr\(1 downto 0),
      ADDRBWRADDR(1) => \^q\(0),
      ADDRBWRADDR(0) => \sync_v_reg_n_0_[1]\,
      CASCADEINA => frame_buf_reg_0_3_n_0,
      CASCADEINB => frame_buf_reg_0_3_n_1,
      CASCADEOUTA => NLW_frame_buf_reg_1_3_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_frame_buf_reg_1_3_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => \^pixel_clk\,
      DBITERR => NLW_frame_buf_reg_1_3_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => y_luma(3),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_buf_reg_1_3_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_buf_reg_1_3_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_buf_reg_1_3_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_frame_buf_reg_1_3_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => frame_buf_reg_1_3_n_67,
      DOPADOP(3 downto 0) => NLW_frame_buf_reg_1_3_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_buf_reg_1_3_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_buf_reg_1_3_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => u_read_pixels_n_3,
      ENBWREN => frame_buf_reg_0_0_i_2_n_0,
      INJECTDBITERR => NLW_frame_buf_reg_1_3_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_buf_reg_1_3_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_buf_reg_1_3_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => frame_buf_reg_0_0_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_buf_reg_1_3_SBITERR_UNCONNECTED,
      WEA(3) => frame_buf_reg_1_3_i_1_n_0,
      WEA(2) => frame_buf_reg_1_3_i_1_n_0,
      WEA(1) => frame_buf_reg_1_2_i_1_n_0,
      WEA(0) => frame_buf_reg_1_2_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
\frame_buf_reg_1_3__0\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => frame_buf_reg_0_0_i_4_n_7,
      ADDRARDADDR(13) => frame_buf_reg_0_0_i_5_n_4,
      ADDRARDADDR(12) => frame_buf_reg_0_0_i_5_n_5,
      ADDRARDADDR(11) => frame_buf_reg_0_0_i_5_n_6,
      ADDRARDADDR(10) => frame_buf_reg_0_0_i_5_n_7,
      ADDRARDADDR(9) => frame_buf_reg_0_0_i_6_n_4,
      ADDRARDADDR(8) => frame_buf_reg_0_0_i_6_n_5,
      ADDRARDADDR(7) => frame_buf_reg_0_0_i_6_n_6,
      ADDRARDADDR(6) => frame_buf_reg_0_0_i_6_n_7,
      ADDRARDADDR(5) => \qvga_waddr__2_n_0\,
      ADDRARDADDR(4) => \qvga_waddr__3_n_0\,
      ADDRARDADDR(3) => \qvga_waddr__4_n_0\,
      ADDRARDADDR(2) => \qvga_waddr__5_n_0\,
      ADDRARDADDR(1) => \qvga_waddr__6_n_0\,
      ADDRARDADDR(0) => \qvga_waddr__7_n_0\,
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 6) => qvga_raddr(14 downto 6),
      ADDRBWRADDR(5) => frame_buf_reg_0_0_i_9_n_0,
      ADDRBWRADDR(4) => frame_buf_reg_0_0_i_10_n_0,
      ADDRBWRADDR(3 downto 2) => \^bram_read_addr\(1 downto 0),
      ADDRBWRADDR(1) => \^q\(0),
      ADDRBWRADDR(0) => \sync_v_reg_n_0_[1]\,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => \NLW_frame_buf_reg_1_3__0_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_frame_buf_reg_1_3__0_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => \^pixel_clk\,
      DBITERR => \NLW_frame_buf_reg_1_3__0_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => y_luma(3),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_frame_buf_reg_1_3__0_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => \frame_buf_reg_1_3__0_n_35\,
      DOBDO(31 downto 1) => \NLW_frame_buf_reg_1_3__0_DOBDO_UNCONNECTED\(31 downto 1),
      DOBDO(0) => \frame_buf_reg_1_3__0_n_67\,
      DOPADOP(3 downto 0) => \NLW_frame_buf_reg_1_3__0_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_frame_buf_reg_1_3__0_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_frame_buf_reg_1_3__0_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => u_read_pixels_n_4,
      ENBWREN => \frame_buf_reg_1_0__0_i_2_n_0\,
      INJECTDBITERR => \NLW_frame_buf_reg_1_3__0_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_frame_buf_reg_1_3__0_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_frame_buf_reg_1_3__0_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => frame_buf_reg_0_0_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_frame_buf_reg_1_3__0_SBITERR_UNCONNECTED\,
      WEA(3) => \frame_buf_reg_1_3__0_i_1_n_0\,
      WEA(2) => \frame_buf_reg_1_3__0_i_1_n_0\,
      WEA(1) => \frame_buf_reg_1_3__0_i_1_n_0\,
      WEA(0) => \frame_buf_reg_1_3__0_i_1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\frame_buf_reg_1_3__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => frame_buf_reg_0_0_i_4_n_6,
      I1 => frame_buf_reg_0_0_i_4_n_5,
      I2 => cam_y_reg(0),
      O => \frame_buf_reg_1_3__0_i_1_n_0\
    );
frame_buf_reg_1_3_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cam_y_reg(0),
      I1 => frame_buf_reg_0_0_i_4_n_5,
      O => frame_buf_reg_1_3_i_1_n_0
    );
frame_buf_reg_1_4: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => frame_buf_reg_0_0_i_4_n_6,
      ADDRARDADDR(14) => frame_buf_reg_0_0_i_4_n_7,
      ADDRARDADDR(13) => frame_buf_reg_0_0_i_5_n_4,
      ADDRARDADDR(12) => frame_buf_reg_0_0_i_5_n_5,
      ADDRARDADDR(11) => frame_buf_reg_0_0_i_5_n_6,
      ADDRARDADDR(10) => frame_buf_reg_0_0_i_5_n_7,
      ADDRARDADDR(9) => frame_buf_reg_0_0_i_6_n_4,
      ADDRARDADDR(8) => frame_buf_reg_0_0_i_6_n_5,
      ADDRARDADDR(7) => frame_buf_reg_0_0_i_6_n_6,
      ADDRARDADDR(6) => frame_buf_reg_0_0_i_6_n_7,
      ADDRARDADDR(5) => \qvga_waddr__2_n_0\,
      ADDRARDADDR(4) => \qvga_waddr__3_n_0\,
      ADDRARDADDR(3) => \qvga_waddr__4_n_0\,
      ADDRARDADDR(2) => \qvga_waddr__5_n_0\,
      ADDRARDADDR(1) => \qvga_waddr__6_n_0\,
      ADDRARDADDR(0) => \qvga_waddr__7_n_0\,
      ADDRBWRADDR(15 downto 6) => qvga_raddr(15 downto 6),
      ADDRBWRADDR(5) => frame_buf_reg_0_0_i_9_n_0,
      ADDRBWRADDR(4) => frame_buf_reg_0_0_i_10_n_0,
      ADDRBWRADDR(3 downto 2) => \^bram_read_addr\(1 downto 0),
      ADDRBWRADDR(1) => \^q\(0),
      ADDRBWRADDR(0) => \sync_v_reg_n_0_[1]\,
      CASCADEINA => frame_buf_reg_0_4_n_0,
      CASCADEINB => frame_buf_reg_0_4_n_1,
      CASCADEOUTA => NLW_frame_buf_reg_1_4_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_frame_buf_reg_1_4_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => \^pixel_clk\,
      DBITERR => NLW_frame_buf_reg_1_4_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => y_luma(4),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_buf_reg_1_4_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_buf_reg_1_4_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_buf_reg_1_4_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_frame_buf_reg_1_4_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => frame_buf_reg_1_4_n_67,
      DOPADOP(3 downto 0) => NLW_frame_buf_reg_1_4_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_buf_reg_1_4_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_buf_reg_1_4_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => u_read_pixels_n_3,
      ENBWREN => frame_buf_reg_0_0_i_2_n_0,
      INJECTDBITERR => NLW_frame_buf_reg_1_4_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_buf_reg_1_4_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_buf_reg_1_4_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => frame_buf_reg_0_0_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_buf_reg_1_4_SBITERR_UNCONNECTED,
      WEA(3) => frame_buf_reg_1_3_i_1_n_0,
      WEA(2) => frame_buf_reg_1_3_i_1_n_0,
      WEA(1) => frame_buf_reg_1_3_i_1_n_0,
      WEA(0) => frame_buf_reg_1_3_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
\frame_buf_reg_1_4__0\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => frame_buf_reg_0_0_i_4_n_7,
      ADDRARDADDR(13) => frame_buf_reg_0_0_i_5_n_4,
      ADDRARDADDR(12) => frame_buf_reg_0_0_i_5_n_5,
      ADDRARDADDR(11) => frame_buf_reg_0_0_i_5_n_6,
      ADDRARDADDR(10) => frame_buf_reg_0_0_i_5_n_7,
      ADDRARDADDR(9) => frame_buf_reg_0_0_i_6_n_4,
      ADDRARDADDR(8) => frame_buf_reg_0_0_i_6_n_5,
      ADDRARDADDR(7) => frame_buf_reg_0_0_i_6_n_6,
      ADDRARDADDR(6) => frame_buf_reg_0_0_i_6_n_7,
      ADDRARDADDR(5) => \qvga_waddr__2_n_0\,
      ADDRARDADDR(4) => \qvga_waddr__3_n_0\,
      ADDRARDADDR(3) => \qvga_waddr__4_n_0\,
      ADDRARDADDR(2) => \qvga_waddr__5_n_0\,
      ADDRARDADDR(1) => \qvga_waddr__6_n_0\,
      ADDRARDADDR(0) => \qvga_waddr__7_n_0\,
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 6) => qvga_raddr(14 downto 6),
      ADDRBWRADDR(5) => frame_buf_reg_0_0_i_9_n_0,
      ADDRBWRADDR(4) => frame_buf_reg_0_0_i_10_n_0,
      ADDRBWRADDR(3 downto 2) => \^bram_read_addr\(1 downto 0),
      ADDRBWRADDR(1) => \^q\(0),
      ADDRBWRADDR(0) => \sync_v_reg_n_0_[1]\,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => \NLW_frame_buf_reg_1_4__0_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_frame_buf_reg_1_4__0_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => \^pixel_clk\,
      DBITERR => \NLW_frame_buf_reg_1_4__0_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => y_luma(4),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_frame_buf_reg_1_4__0_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => \frame_buf_reg_1_4__0_n_35\,
      DOBDO(31 downto 1) => \NLW_frame_buf_reg_1_4__0_DOBDO_UNCONNECTED\(31 downto 1),
      DOBDO(0) => \frame_buf_reg_1_4__0_n_67\,
      DOPADOP(3 downto 0) => \NLW_frame_buf_reg_1_4__0_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_frame_buf_reg_1_4__0_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_frame_buf_reg_1_4__0_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => u_read_pixels_n_4,
      ENBWREN => \frame_buf_reg_1_0__0_i_2_n_0\,
      INJECTDBITERR => \NLW_frame_buf_reg_1_4__0_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_frame_buf_reg_1_4__0_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_frame_buf_reg_1_4__0_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => frame_buf_reg_0_0_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_frame_buf_reg_1_4__0_SBITERR_UNCONNECTED\,
      WEA(3) => \frame_buf_reg_1_3__0_i_1_n_0\,
      WEA(2) => \frame_buf_reg_1_3__0_i_1_n_0\,
      WEA(1) => \frame_buf_reg_1_3__0_i_1_n_0\,
      WEA(0) => \frame_buf_reg_1_3__0_i_1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_buf_reg_1_5: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => frame_buf_reg_0_0_i_4_n_6,
      ADDRARDADDR(14) => frame_buf_reg_0_0_i_4_n_7,
      ADDRARDADDR(13) => frame_buf_reg_0_0_i_5_n_4,
      ADDRARDADDR(12) => frame_buf_reg_0_0_i_5_n_5,
      ADDRARDADDR(11) => frame_buf_reg_0_0_i_5_n_6,
      ADDRARDADDR(10) => frame_buf_reg_0_0_i_5_n_7,
      ADDRARDADDR(9) => frame_buf_reg_0_0_i_6_n_4,
      ADDRARDADDR(8) => frame_buf_reg_0_0_i_6_n_5,
      ADDRARDADDR(7) => frame_buf_reg_0_0_i_6_n_6,
      ADDRARDADDR(6) => frame_buf_reg_0_0_i_6_n_7,
      ADDRARDADDR(5) => \qvga_waddr__2_n_0\,
      ADDRARDADDR(4) => \qvga_waddr__3_n_0\,
      ADDRARDADDR(3) => \qvga_waddr__4_n_0\,
      ADDRARDADDR(2) => \qvga_waddr__5_n_0\,
      ADDRARDADDR(1) => \qvga_waddr__6_n_0\,
      ADDRARDADDR(0) => \qvga_waddr__7_n_0\,
      ADDRBWRADDR(15 downto 6) => qvga_raddr(15 downto 6),
      ADDRBWRADDR(5) => frame_buf_reg_0_0_i_9_n_0,
      ADDRBWRADDR(4) => frame_buf_reg_0_0_i_10_n_0,
      ADDRBWRADDR(3 downto 2) => \^bram_read_addr\(1 downto 0),
      ADDRBWRADDR(1) => \^q\(0),
      ADDRBWRADDR(0) => \sync_v_reg_n_0_[1]\,
      CASCADEINA => frame_buf_reg_0_5_n_0,
      CASCADEINB => frame_buf_reg_0_5_n_1,
      CASCADEOUTA => NLW_frame_buf_reg_1_5_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_frame_buf_reg_1_5_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => \^pixel_clk\,
      DBITERR => NLW_frame_buf_reg_1_5_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => y_luma(5),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_buf_reg_1_5_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_buf_reg_1_5_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_buf_reg_1_5_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_frame_buf_reg_1_5_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => frame_buf_reg_1_5_n_67,
      DOPADOP(3 downto 0) => NLW_frame_buf_reg_1_5_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_buf_reg_1_5_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_buf_reg_1_5_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => u_read_pixels_n_3,
      ENBWREN => frame_buf_reg_0_0_i_2_n_0,
      INJECTDBITERR => NLW_frame_buf_reg_1_5_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_buf_reg_1_5_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_buf_reg_1_5_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => frame_buf_reg_0_0_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_buf_reg_1_5_SBITERR_UNCONNECTED,
      WEA(3) => frame_buf_reg_0_5_i_1_n_0,
      WEA(2) => frame_buf_reg_0_5_i_1_n_0,
      WEA(1) => frame_buf_reg_0_5_i_1_n_0,
      WEA(0) => frame_buf_reg_0_5_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
\frame_buf_reg_1_5__0\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => frame_buf_reg_0_0_i_4_n_7,
      ADDRARDADDR(13) => frame_buf_reg_0_0_i_5_n_4,
      ADDRARDADDR(12) => frame_buf_reg_0_0_i_5_n_5,
      ADDRARDADDR(11) => frame_buf_reg_0_0_i_5_n_6,
      ADDRARDADDR(10) => frame_buf_reg_0_0_i_5_n_7,
      ADDRARDADDR(9) => frame_buf_reg_0_0_i_6_n_4,
      ADDRARDADDR(8) => frame_buf_reg_0_0_i_6_n_5,
      ADDRARDADDR(7) => frame_buf_reg_0_0_i_6_n_6,
      ADDRARDADDR(6) => frame_buf_reg_0_0_i_6_n_7,
      ADDRARDADDR(5) => \qvga_waddr__2_n_0\,
      ADDRARDADDR(4) => \qvga_waddr__3_n_0\,
      ADDRARDADDR(3) => \qvga_waddr__4_n_0\,
      ADDRARDADDR(2) => \qvga_waddr__5_n_0\,
      ADDRARDADDR(1) => \qvga_waddr__6_n_0\,
      ADDRARDADDR(0) => \qvga_waddr__7_n_0\,
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 6) => qvga_raddr(14 downto 6),
      ADDRBWRADDR(5) => frame_buf_reg_0_0_i_9_n_0,
      ADDRBWRADDR(4) => frame_buf_reg_0_0_i_10_n_0,
      ADDRBWRADDR(3 downto 2) => \^bram_read_addr\(1 downto 0),
      ADDRBWRADDR(1) => \^q\(0),
      ADDRBWRADDR(0) => \sync_v_reg_n_0_[1]\,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => \NLW_frame_buf_reg_1_5__0_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_frame_buf_reg_1_5__0_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => \^pixel_clk\,
      DBITERR => \NLW_frame_buf_reg_1_5__0_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => y_luma(5),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_frame_buf_reg_1_5__0_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => \frame_buf_reg_1_5__0_n_35\,
      DOBDO(31 downto 1) => \NLW_frame_buf_reg_1_5__0_DOBDO_UNCONNECTED\(31 downto 1),
      DOBDO(0) => \frame_buf_reg_1_5__0_n_67\,
      DOPADOP(3 downto 0) => \NLW_frame_buf_reg_1_5__0_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_frame_buf_reg_1_5__0_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_frame_buf_reg_1_5__0_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => u_read_pixels_n_4,
      ENBWREN => \frame_buf_reg_1_0__0_i_2_n_0\,
      INJECTDBITERR => \NLW_frame_buf_reg_1_5__0_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_frame_buf_reg_1_5__0_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_frame_buf_reg_1_5__0_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => frame_buf_reg_0_0_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_frame_buf_reg_1_5__0_SBITERR_UNCONNECTED\,
      WEA(3) => \frame_buf_reg_1_5__0_i_1_n_0\,
      WEA(2) => \frame_buf_reg_1_5__0_i_1_n_0\,
      WEA(1) => \frame_buf_reg_1_3__0_i_1_n_0\,
      WEA(0) => \frame_buf_reg_1_3__0_i_1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
\frame_buf_reg_1_5__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => frame_buf_reg_0_0_i_4_n_6,
      I1 => frame_buf_reg_0_0_i_4_n_5,
      I2 => cam_y_reg(0),
      O => \frame_buf_reg_1_5__0_i_1_n_0\
    );
frame_buf_reg_1_6: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => frame_buf_reg_0_0_i_4_n_6,
      ADDRARDADDR(14) => frame_buf_reg_0_0_i_4_n_7,
      ADDRARDADDR(13) => frame_buf_reg_0_0_i_5_n_4,
      ADDRARDADDR(12) => frame_buf_reg_0_0_i_5_n_5,
      ADDRARDADDR(11) => frame_buf_reg_0_0_i_5_n_6,
      ADDRARDADDR(10) => frame_buf_reg_0_0_i_5_n_7,
      ADDRARDADDR(9) => frame_buf_reg_0_0_i_6_n_4,
      ADDRARDADDR(8) => frame_buf_reg_0_0_i_6_n_5,
      ADDRARDADDR(7) => frame_buf_reg_0_0_i_6_n_6,
      ADDRARDADDR(6) => frame_buf_reg_0_0_i_6_n_7,
      ADDRARDADDR(5) => \qvga_waddr__2_n_0\,
      ADDRARDADDR(4) => \qvga_waddr__3_n_0\,
      ADDRARDADDR(3) => \qvga_waddr__4_n_0\,
      ADDRARDADDR(2) => \qvga_waddr__5_n_0\,
      ADDRARDADDR(1) => \qvga_waddr__6_n_0\,
      ADDRARDADDR(0) => \qvga_waddr__7_n_0\,
      ADDRBWRADDR(15 downto 6) => qvga_raddr(15 downto 6),
      ADDRBWRADDR(5) => frame_buf_reg_0_0_i_9_n_0,
      ADDRBWRADDR(4) => frame_buf_reg_0_0_i_10_n_0,
      ADDRBWRADDR(3 downto 2) => \^bram_read_addr\(1 downto 0),
      ADDRBWRADDR(1) => \^q\(0),
      ADDRBWRADDR(0) => \sync_v_reg_n_0_[1]\,
      CASCADEINA => frame_buf_reg_0_6_n_0,
      CASCADEINB => frame_buf_reg_0_6_n_1,
      CASCADEOUTA => NLW_frame_buf_reg_1_6_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_frame_buf_reg_1_6_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => \^pixel_clk\,
      DBITERR => NLW_frame_buf_reg_1_6_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => y_luma(6),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_buf_reg_1_6_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_buf_reg_1_6_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_buf_reg_1_6_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_frame_buf_reg_1_6_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => frame_buf_reg_1_6_n_67,
      DOPADOP(3 downto 0) => NLW_frame_buf_reg_1_6_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_buf_reg_1_6_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_buf_reg_1_6_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => u_read_pixels_n_3,
      ENBWREN => frame_buf_reg_0_0_i_2_n_0,
      INJECTDBITERR => NLW_frame_buf_reg_1_6_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_buf_reg_1_6_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_buf_reg_1_6_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => frame_buf_reg_0_0_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_buf_reg_1_6_SBITERR_UNCONNECTED,
      WEA(3) => frame_buf_reg_0_6_i_2_n_0,
      WEA(2) => frame_buf_reg_0_6_i_2_n_0,
      WEA(1) => frame_buf_reg_0_6_i_2_n_0,
      WEA(0) => frame_buf_reg_0_6_i_2_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
\frame_buf_reg_1_6__0\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => frame_buf_reg_0_0_i_4_n_7,
      ADDRARDADDR(13) => frame_buf_reg_0_0_i_5_n_4,
      ADDRARDADDR(12) => frame_buf_reg_0_0_i_5_n_5,
      ADDRARDADDR(11) => frame_buf_reg_0_0_i_5_n_6,
      ADDRARDADDR(10) => frame_buf_reg_0_0_i_5_n_7,
      ADDRARDADDR(9) => frame_buf_reg_0_0_i_6_n_4,
      ADDRARDADDR(8) => frame_buf_reg_0_0_i_6_n_5,
      ADDRARDADDR(7) => frame_buf_reg_0_0_i_6_n_6,
      ADDRARDADDR(6) => frame_buf_reg_0_0_i_6_n_7,
      ADDRARDADDR(5) => \qvga_waddr__2_n_0\,
      ADDRARDADDR(4) => \qvga_waddr__3_n_0\,
      ADDRARDADDR(3) => \qvga_waddr__4_n_0\,
      ADDRARDADDR(2) => \qvga_waddr__5_n_0\,
      ADDRARDADDR(1) => \qvga_waddr__6_n_0\,
      ADDRARDADDR(0) => \qvga_waddr__7_n_0\,
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 6) => qvga_raddr(14 downto 6),
      ADDRBWRADDR(5) => frame_buf_reg_0_0_i_9_n_0,
      ADDRBWRADDR(4) => frame_buf_reg_0_0_i_10_n_0,
      ADDRBWRADDR(3 downto 2) => \^bram_read_addr\(1 downto 0),
      ADDRBWRADDR(1) => \^q\(0),
      ADDRBWRADDR(0) => \sync_v_reg_n_0_[1]\,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => \NLW_frame_buf_reg_1_6__0_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_frame_buf_reg_1_6__0_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => \^pixel_clk\,
      DBITERR => \NLW_frame_buf_reg_1_6__0_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => y_luma(6),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_frame_buf_reg_1_6__0_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => \frame_buf_reg_1_6__0_n_35\,
      DOBDO(31 downto 1) => \NLW_frame_buf_reg_1_6__0_DOBDO_UNCONNECTED\(31 downto 1),
      DOBDO(0) => \frame_buf_reg_1_6__0_n_67\,
      DOPADOP(3 downto 0) => \NLW_frame_buf_reg_1_6__0_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_frame_buf_reg_1_6__0_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_frame_buf_reg_1_6__0_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => u_read_pixels_n_4,
      ENBWREN => \frame_buf_reg_1_0__0_i_2_n_0\,
      INJECTDBITERR => \NLW_frame_buf_reg_1_6__0_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_frame_buf_reg_1_6__0_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_frame_buf_reg_1_6__0_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => frame_buf_reg_0_0_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_frame_buf_reg_1_6__0_SBITERR_UNCONNECTED\,
      WEA(3) => \frame_buf_reg_1_5__0_i_1_n_0\,
      WEA(2) => \frame_buf_reg_1_5__0_i_1_n_0\,
      WEA(1) => \frame_buf_reg_1_5__0_i_1_n_0\,
      WEA(0) => \frame_buf_reg_1_5__0_i_1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_buf_reg_1_7: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => frame_buf_reg_0_0_i_4_n_6,
      ADDRARDADDR(14) => frame_buf_reg_0_0_i_4_n_7,
      ADDRARDADDR(13) => frame_buf_reg_0_0_i_5_n_4,
      ADDRARDADDR(12) => frame_buf_reg_0_0_i_5_n_5,
      ADDRARDADDR(11) => frame_buf_reg_0_0_i_5_n_6,
      ADDRARDADDR(10) => frame_buf_reg_0_0_i_5_n_7,
      ADDRARDADDR(9) => frame_buf_reg_0_0_i_6_n_4,
      ADDRARDADDR(8) => frame_buf_reg_0_0_i_6_n_5,
      ADDRARDADDR(7) => frame_buf_reg_0_0_i_6_n_6,
      ADDRARDADDR(6) => frame_buf_reg_0_0_i_6_n_7,
      ADDRARDADDR(5) => \qvga_waddr__2_n_0\,
      ADDRARDADDR(4) => \qvga_waddr__3_n_0\,
      ADDRARDADDR(3) => \qvga_waddr__4_n_0\,
      ADDRARDADDR(2) => \qvga_waddr__5_n_0\,
      ADDRARDADDR(1) => \qvga_waddr__6_n_0\,
      ADDRARDADDR(0) => \qvga_waddr__7_n_0\,
      ADDRBWRADDR(15 downto 6) => qvga_raddr(15 downto 6),
      ADDRBWRADDR(5) => frame_buf_reg_0_0_i_9_n_0,
      ADDRBWRADDR(4) => frame_buf_reg_0_0_i_10_n_0,
      ADDRBWRADDR(3 downto 2) => \^bram_read_addr\(1 downto 0),
      ADDRBWRADDR(1) => \^q\(0),
      ADDRBWRADDR(0) => \sync_v_reg_n_0_[1]\,
      CASCADEINA => frame_buf_reg_0_7_n_0,
      CASCADEINB => frame_buf_reg_0_7_n_1,
      CASCADEOUTA => NLW_frame_buf_reg_1_7_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_frame_buf_reg_1_7_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => \^pixel_clk\,
      DBITERR => NLW_frame_buf_reg_1_7_DBITERR_UNCONNECTED,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => y_luma(7),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => NLW_frame_buf_reg_1_7_DIPADIP_UNCONNECTED(0),
      DIPBDIP(3 downto 1) => B"000",
      DIPBDIP(0) => NLW_frame_buf_reg_1_7_DIPBDIP_UNCONNECTED(0),
      DOADO(31 downto 0) => NLW_frame_buf_reg_1_7_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 1) => NLW_frame_buf_reg_1_7_DOBDO_UNCONNECTED(31 downto 1),
      DOBDO(0) => frame_buf_reg_1_7_n_67,
      DOPADOP(3 downto 0) => NLW_frame_buf_reg_1_7_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_frame_buf_reg_1_7_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_frame_buf_reg_1_7_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => u_read_pixels_n_3,
      ENBWREN => frame_buf_reg_0_0_i_2_n_0,
      INJECTDBITERR => NLW_frame_buf_reg_1_7_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_frame_buf_reg_1_7_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_frame_buf_reg_1_7_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => frame_buf_reg_0_0_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_frame_buf_reg_1_7_SBITERR_UNCONNECTED,
      WEA(3) => frame_buf_reg_1_7_i_1_n_0,
      WEA(2) => frame_buf_reg_1_7_i_1_n_0,
      WEA(1) => frame_buf_reg_1_7_i_1_n_0,
      WEA(0) => frame_buf_reg_1_7_i_1_n_0,
      WEBWE(7 downto 0) => B"00000000"
    );
\frame_buf_reg_1_7__0\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => frame_buf_reg_0_0_i_4_n_7,
      ADDRARDADDR(13) => frame_buf_reg_0_0_i_5_n_4,
      ADDRARDADDR(12) => frame_buf_reg_0_0_i_5_n_5,
      ADDRARDADDR(11) => frame_buf_reg_0_0_i_5_n_6,
      ADDRARDADDR(10) => frame_buf_reg_0_0_i_5_n_7,
      ADDRARDADDR(9) => frame_buf_reg_0_0_i_6_n_4,
      ADDRARDADDR(8) => frame_buf_reg_0_0_i_6_n_5,
      ADDRARDADDR(7) => frame_buf_reg_0_0_i_6_n_6,
      ADDRARDADDR(6) => frame_buf_reg_0_0_i_6_n_7,
      ADDRARDADDR(5) => \qvga_waddr__2_n_0\,
      ADDRARDADDR(4) => \qvga_waddr__3_n_0\,
      ADDRARDADDR(3) => \qvga_waddr__4_n_0\,
      ADDRARDADDR(2) => \qvga_waddr__5_n_0\,
      ADDRARDADDR(1) => \qvga_waddr__6_n_0\,
      ADDRARDADDR(0) => \qvga_waddr__7_n_0\,
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 6) => qvga_raddr(14 downto 6),
      ADDRBWRADDR(5) => frame_buf_reg_0_0_i_9_n_0,
      ADDRBWRADDR(4) => frame_buf_reg_0_0_i_10_n_0,
      ADDRBWRADDR(3 downto 2) => \^bram_read_addr\(1 downto 0),
      ADDRBWRADDR(1) => \^q\(0),
      ADDRBWRADDR(0) => \sync_v_reg_n_0_[1]\,
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => \NLW_frame_buf_reg_1_7__0_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_frame_buf_reg_1_7__0_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => cam_pclk,
      CLKBWRCLK => \^pixel_clk\,
      DBITERR => \NLW_frame_buf_reg_1_7__0_DBITERR_UNCONNECTED\,
      DIADI(31 downto 1) => B"0000000000000000000000000000000",
      DIADI(0) => y_luma(7),
      DIBDI(31 downto 0) => B"00000000000000000000000000000001",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_frame_buf_reg_1_7__0_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => \frame_buf_reg_1_7__0_n_35\,
      DOBDO(31 downto 1) => \NLW_frame_buf_reg_1_7__0_DOBDO_UNCONNECTED\(31 downto 1),
      DOBDO(0) => \frame_buf_reg_1_7__0_n_67\,
      DOPADOP(3 downto 0) => \NLW_frame_buf_reg_1_7__0_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_frame_buf_reg_1_7__0_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_frame_buf_reg_1_7__0_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => u_read_pixels_n_4,
      ENBWREN => \frame_buf_reg_1_0__0_i_2_n_0\,
      INJECTDBITERR => \NLW_frame_buf_reg_1_7__0_INJECTDBITERR_UNCONNECTED\,
      INJECTSBITERR => \NLW_frame_buf_reg_1_7__0_INJECTSBITERR_UNCONNECTED\,
      RDADDRECC(8 downto 0) => \NLW_frame_buf_reg_1_7__0_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => frame_buf_reg_0_0_i_3_n_0,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_frame_buf_reg_1_7__0_SBITERR_UNCONNECTED\,
      WEA(3) => \frame_buf_reg_1_5__0_i_1_n_0\,
      WEA(2) => \frame_buf_reg_1_5__0_i_1_n_0\,
      WEA(1) => \frame_buf_reg_1_5__0_i_1_n_0\,
      WEA(0) => \frame_buf_reg_1_5__0_i_1_n_0\,
      WEBWE(7 downto 0) => B"00000000"
    );
frame_buf_reg_1_7_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cam_y_reg(0),
      I1 => frame_buf_reg_0_0_i_4_n_5,
      O => frame_buf_reg_1_7_i_1_n_0
    );
\frame_buf_reg_mux_sel_b_pos_0__6\: unisim.vcomponents.FDRE
     port map (
      C => \^pixel_clk\,
      CE => '1',
      D => qvga_raddr(16),
      Q => \frame_buf_reg_mux_sel_b_pos_0__6_n_0\,
      R => '0'
    );
\frame_buf_reg_mux_sel_b_pos_0__6_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => frame_buf_reg_0_0_i_7_n_0,
      CO(3 downto 2) => \NLW_frame_buf_reg_mux_sel_b_pos_0__6_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \frame_buf_reg_mux_sel_b_pos_0__6_i_1_n_2\,
      CO(0) => \frame_buf_reg_mux_sel_b_pos_0__6_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_frame_buf_reg_mux_sel_b_pos_0__6_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => qvga_raddr(16 downto 14),
      S(3) => '0',
      S(2 downto 0) => qvga_raddr0(16 downto 14)
    );
\frame_buf_reg_mux_sel_b_pos_1__6\: unisim.vcomponents.FDRE
     port map (
      C => \^pixel_clk\,
      CE => '1',
      D => qvga_raddr(15),
      Q => \frame_buf_reg_mux_sel_b_pos_1__6_n_0\,
      R => '0'
    );
\hr_cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hr_cnt_reg_n_0_[0]\,
      O => \hr_cnt[0]_i_2_n_0\
    );
\hr_cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => hr_s2,
      I1 => hr_prev,
      O => \hr_cnt[13]_i_1_n_0\
    );
\hr_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => \hr_cnt[13]_i_1_n_0\,
      D => \hr_cnt_reg[0]_i_1_n_7\,
      Q => \hr_cnt_reg_n_0_[0]\,
      R => '0'
    );
\hr_cnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \hr_cnt_reg[0]_i_1_n_0\,
      CO(2) => \hr_cnt_reg[0]_i_1_n_1\,
      CO(1) => \hr_cnt_reg[0]_i_1_n_2\,
      CO(0) => \hr_cnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \hr_cnt_reg[0]_i_1_n_4\,
      O(2) => \hr_cnt_reg[0]_i_1_n_5\,
      O(1) => \hr_cnt_reg[0]_i_1_n_6\,
      O(0) => \hr_cnt_reg[0]_i_1_n_7\,
      S(3) => \hr_cnt_reg_n_0_[3]\,
      S(2) => \hr_cnt_reg_n_0_[2]\,
      S(1) => \hr_cnt_reg_n_0_[1]\,
      S(0) => \hr_cnt[0]_i_2_n_0\
    );
\hr_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => \hr_cnt[13]_i_1_n_0\,
      D => \hr_cnt_reg[8]_i_1_n_5\,
      Q => \hr_cnt_reg_n_0_[10]\,
      R => '0'
    );
\hr_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => \hr_cnt[13]_i_1_n_0\,
      D => \hr_cnt_reg[8]_i_1_n_4\,
      Q => \hr_cnt_reg_n_0_[11]\,
      R => '0'
    );
\hr_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => \hr_cnt[13]_i_1_n_0\,
      D => \hr_cnt_reg[13]_i_2_n_7\,
      Q => \hr_cnt_reg_n_0_[12]\,
      R => '0'
    );
\hr_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => \hr_cnt[13]_i_1_n_0\,
      D => \hr_cnt_reg[13]_i_2_n_6\,
      Q => \^led_vid_locked\,
      R => '0'
    );
\hr_cnt_reg[13]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hr_cnt_reg[8]_i_1_n_0\,
      CO(3 downto 1) => \NLW_hr_cnt_reg[13]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \hr_cnt_reg[13]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_hr_cnt_reg[13]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1) => \hr_cnt_reg[13]_i_2_n_6\,
      O(0) => \hr_cnt_reg[13]_i_2_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \^led_vid_locked\,
      S(0) => \hr_cnt_reg_n_0_[12]\
    );
\hr_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => \hr_cnt[13]_i_1_n_0\,
      D => \hr_cnt_reg[0]_i_1_n_6\,
      Q => \hr_cnt_reg_n_0_[1]\,
      R => '0'
    );
\hr_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => \hr_cnt[13]_i_1_n_0\,
      D => \hr_cnt_reg[0]_i_1_n_5\,
      Q => \hr_cnt_reg_n_0_[2]\,
      R => '0'
    );
\hr_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => \hr_cnt[13]_i_1_n_0\,
      D => \hr_cnt_reg[0]_i_1_n_4\,
      Q => \hr_cnt_reg_n_0_[3]\,
      R => '0'
    );
\hr_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => \hr_cnt[13]_i_1_n_0\,
      D => \hr_cnt_reg[4]_i_1_n_7\,
      Q => \hr_cnt_reg_n_0_[4]\,
      R => '0'
    );
\hr_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hr_cnt_reg[0]_i_1_n_0\,
      CO(3) => \hr_cnt_reg[4]_i_1_n_0\,
      CO(2) => \hr_cnt_reg[4]_i_1_n_1\,
      CO(1) => \hr_cnt_reg[4]_i_1_n_2\,
      CO(0) => \hr_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \hr_cnt_reg[4]_i_1_n_4\,
      O(2) => \hr_cnt_reg[4]_i_1_n_5\,
      O(1) => \hr_cnt_reg[4]_i_1_n_6\,
      O(0) => \hr_cnt_reg[4]_i_1_n_7\,
      S(3) => \hr_cnt_reg_n_0_[7]\,
      S(2) => \hr_cnt_reg_n_0_[6]\,
      S(1) => \hr_cnt_reg_n_0_[5]\,
      S(0) => \hr_cnt_reg_n_0_[4]\
    );
\hr_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => \hr_cnt[13]_i_1_n_0\,
      D => \hr_cnt_reg[4]_i_1_n_6\,
      Q => \hr_cnt_reg_n_0_[5]\,
      R => '0'
    );
\hr_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => \hr_cnt[13]_i_1_n_0\,
      D => \hr_cnt_reg[4]_i_1_n_5\,
      Q => \hr_cnt_reg_n_0_[6]\,
      R => '0'
    );
\hr_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => \hr_cnt[13]_i_1_n_0\,
      D => \hr_cnt_reg[4]_i_1_n_4\,
      Q => \hr_cnt_reg_n_0_[7]\,
      R => '0'
    );
\hr_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => \hr_cnt[13]_i_1_n_0\,
      D => \hr_cnt_reg[8]_i_1_n_7\,
      Q => \hr_cnt_reg_n_0_[8]\,
      R => '0'
    );
\hr_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hr_cnt_reg[4]_i_1_n_0\,
      CO(3) => \hr_cnt_reg[8]_i_1_n_0\,
      CO(2) => \hr_cnt_reg[8]_i_1_n_1\,
      CO(1) => \hr_cnt_reg[8]_i_1_n_2\,
      CO(0) => \hr_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \hr_cnt_reg[8]_i_1_n_4\,
      O(2) => \hr_cnt_reg[8]_i_1_n_5\,
      O(1) => \hr_cnt_reg[8]_i_1_n_6\,
      O(0) => \hr_cnt_reg[8]_i_1_n_7\,
      S(3) => \hr_cnt_reg_n_0_[11]\,
      S(2) => \hr_cnt_reg_n_0_[10]\,
      S(1) => \hr_cnt_reg_n_0_[9]\,
      S(0) => \hr_cnt_reg_n_0_[8]\
    );
\hr_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => \hr_cnt[13]_i_1_n_0\,
      D => \hr_cnt_reg[8]_i_1_n_6\,
      Q => \hr_cnt_reg_n_0_[9]\,
      R => '0'
    );
hr_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => hr_s2,
      Q => hr_prev,
      R => '0'
    );
hr_s2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => cam_href,
      Q => hr_s2,
      R => '0'
    );
in_panel_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => \^bram_read_en\,
      Q => in_panel_d1,
      R => '0'
    );
in_panel_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => in_panel_d1,
      Q => in_panel_d2,
      R => '0'
    );
\panel_y_pixel[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in_panel_d2,
      O => \panel_y_pixel[7]_i_1_n_0\
    );
\panel_y_pixel_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => bram_read_data(0),
      Q => panel_y_pixel(0),
      R => \panel_y_pixel[7]_i_1_n_0\
    );
\panel_y_pixel_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => bram_read_data(1),
      Q => panel_y_pixel(1),
      R => \panel_y_pixel[7]_i_1_n_0\
    );
\panel_y_pixel_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => bram_read_data(2),
      Q => panel_y_pixel(2),
      R => \panel_y_pixel[7]_i_1_n_0\
    );
\panel_y_pixel_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => bram_read_data(3),
      Q => panel_y_pixel(3),
      R => \panel_y_pixel[7]_i_1_n_0\
    );
\panel_y_pixel_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => bram_read_data(4),
      Q => panel_y_pixel(4),
      R => \panel_y_pixel[7]_i_1_n_0\
    );
\panel_y_pixel_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => bram_read_data(5),
      Q => panel_y_pixel(5),
      R => \panel_y_pixel[7]_i_1_n_0\
    );
\panel_y_pixel_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => bram_read_data(6),
      Q => panel_y_pixel(6),
      R => \panel_y_pixel[7]_i_1_n_0\
    );
\panel_y_pixel_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => bram_read_data(7),
      Q => panel_y_pixel(7),
      R => \panel_y_pixel[7]_i_1_n_0\
    );
\pclk_cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pclk_cnt_reg_n_0_[0]\,
      O => \pclk_cnt[0]_i_2_n_0\
    );
\pclk_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => \pclk_cnt_reg[0]_i_1_n_7\,
      Q => \pclk_cnt_reg_n_0_[0]\,
      R => '0'
    );
\pclk_cnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pclk_cnt_reg[0]_i_1_n_0\,
      CO(2) => \pclk_cnt_reg[0]_i_1_n_1\,
      CO(1) => \pclk_cnt_reg[0]_i_1_n_2\,
      CO(0) => \pclk_cnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \pclk_cnt_reg[0]_i_1_n_4\,
      O(2) => \pclk_cnt_reg[0]_i_1_n_5\,
      O(1) => \pclk_cnt_reg[0]_i_1_n_6\,
      O(0) => \pclk_cnt_reg[0]_i_1_n_7\,
      S(3) => \pclk_cnt_reg_n_0_[3]\,
      S(2) => \pclk_cnt_reg_n_0_[2]\,
      S(1) => \pclk_cnt_reg_n_0_[1]\,
      S(0) => \pclk_cnt[0]_i_2_n_0\
    );
\pclk_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => \pclk_cnt_reg[8]_i_1_n_5\,
      Q => \pclk_cnt_reg_n_0_[10]\,
      R => '0'
    );
\pclk_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => \pclk_cnt_reg[8]_i_1_n_4\,
      Q => \pclk_cnt_reg_n_0_[11]\,
      R => '0'
    );
\pclk_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => \pclk_cnt_reg[12]_i_1_n_7\,
      Q => \pclk_cnt_reg_n_0_[12]\,
      R => '0'
    );
\pclk_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pclk_cnt_reg[8]_i_1_n_0\,
      CO(3) => \pclk_cnt_reg[12]_i_1_n_0\,
      CO(2) => \pclk_cnt_reg[12]_i_1_n_1\,
      CO(1) => \pclk_cnt_reg[12]_i_1_n_2\,
      CO(0) => \pclk_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pclk_cnt_reg[12]_i_1_n_4\,
      O(2) => \pclk_cnt_reg[12]_i_1_n_5\,
      O(1) => \pclk_cnt_reg[12]_i_1_n_6\,
      O(0) => \pclk_cnt_reg[12]_i_1_n_7\,
      S(3) => \pclk_cnt_reg_n_0_[15]\,
      S(2) => \pclk_cnt_reg_n_0_[14]\,
      S(1) => \pclk_cnt_reg_n_0_[13]\,
      S(0) => \pclk_cnt_reg_n_0_[12]\
    );
\pclk_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => \pclk_cnt_reg[12]_i_1_n_6\,
      Q => \pclk_cnt_reg_n_0_[13]\,
      R => '0'
    );
\pclk_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => \pclk_cnt_reg[12]_i_1_n_5\,
      Q => \pclk_cnt_reg_n_0_[14]\,
      R => '0'
    );
\pclk_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => \pclk_cnt_reg[12]_i_1_n_4\,
      Q => \pclk_cnt_reg_n_0_[15]\,
      R => '0'
    );
\pclk_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => \pclk_cnt_reg[16]_i_1_n_7\,
      Q => \pclk_cnt_reg_n_0_[16]\,
      R => '0'
    );
\pclk_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pclk_cnt_reg[12]_i_1_n_0\,
      CO(3) => \pclk_cnt_reg[16]_i_1_n_0\,
      CO(2) => \pclk_cnt_reg[16]_i_1_n_1\,
      CO(1) => \pclk_cnt_reg[16]_i_1_n_2\,
      CO(0) => \pclk_cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pclk_cnt_reg[16]_i_1_n_4\,
      O(2) => \pclk_cnt_reg[16]_i_1_n_5\,
      O(1) => \pclk_cnt_reg[16]_i_1_n_6\,
      O(0) => \pclk_cnt_reg[16]_i_1_n_7\,
      S(3) => \pclk_cnt_reg_n_0_[19]\,
      S(2) => \pclk_cnt_reg_n_0_[18]\,
      S(1) => \pclk_cnt_reg_n_0_[17]\,
      S(0) => \pclk_cnt_reg_n_0_[16]\
    );
\pclk_cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => \pclk_cnt_reg[16]_i_1_n_6\,
      Q => \pclk_cnt_reg_n_0_[17]\,
      R => '0'
    );
\pclk_cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => \pclk_cnt_reg[16]_i_1_n_5\,
      Q => \pclk_cnt_reg_n_0_[18]\,
      R => '0'
    );
\pclk_cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => \pclk_cnt_reg[16]_i_1_n_4\,
      Q => \pclk_cnt_reg_n_0_[19]\,
      R => '0'
    );
\pclk_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => \pclk_cnt_reg[0]_i_1_n_6\,
      Q => \pclk_cnt_reg_n_0_[1]\,
      R => '0'
    );
\pclk_cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => \pclk_cnt_reg[23]_i_1_n_7\,
      Q => \pclk_cnt_reg_n_0_[20]\,
      R => '0'
    );
\pclk_cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => \pclk_cnt_reg[23]_i_1_n_6\,
      Q => \pclk_cnt_reg_n_0_[21]\,
      R => '0'
    );
\pclk_cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => \pclk_cnt_reg[23]_i_1_n_5\,
      Q => \pclk_cnt_reg_n_0_[22]\,
      R => '0'
    );
\pclk_cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => \pclk_cnt_reg[23]_i_1_n_4\,
      Q => \^led_pixel_active\,
      R => '0'
    );
\pclk_cnt_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pclk_cnt_reg[16]_i_1_n_0\,
      CO(3) => \NLW_pclk_cnt_reg[23]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \pclk_cnt_reg[23]_i_1_n_1\,
      CO(1) => \pclk_cnt_reg[23]_i_1_n_2\,
      CO(0) => \pclk_cnt_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pclk_cnt_reg[23]_i_1_n_4\,
      O(2) => \pclk_cnt_reg[23]_i_1_n_5\,
      O(1) => \pclk_cnt_reg[23]_i_1_n_6\,
      O(0) => \pclk_cnt_reg[23]_i_1_n_7\,
      S(3) => \^led_pixel_active\,
      S(2) => \pclk_cnt_reg_n_0_[22]\,
      S(1) => \pclk_cnt_reg_n_0_[21]\,
      S(0) => \pclk_cnt_reg_n_0_[20]\
    );
\pclk_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => \pclk_cnt_reg[0]_i_1_n_5\,
      Q => \pclk_cnt_reg_n_0_[2]\,
      R => '0'
    );
\pclk_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => \pclk_cnt_reg[0]_i_1_n_4\,
      Q => \pclk_cnt_reg_n_0_[3]\,
      R => '0'
    );
\pclk_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => \pclk_cnt_reg[4]_i_1_n_7\,
      Q => \pclk_cnt_reg_n_0_[4]\,
      R => '0'
    );
\pclk_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pclk_cnt_reg[0]_i_1_n_0\,
      CO(3) => \pclk_cnt_reg[4]_i_1_n_0\,
      CO(2) => \pclk_cnt_reg[4]_i_1_n_1\,
      CO(1) => \pclk_cnt_reg[4]_i_1_n_2\,
      CO(0) => \pclk_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pclk_cnt_reg[4]_i_1_n_4\,
      O(2) => \pclk_cnt_reg[4]_i_1_n_5\,
      O(1) => \pclk_cnt_reg[4]_i_1_n_6\,
      O(0) => \pclk_cnt_reg[4]_i_1_n_7\,
      S(3) => \pclk_cnt_reg_n_0_[7]\,
      S(2) => \pclk_cnt_reg_n_0_[6]\,
      S(1) => \pclk_cnt_reg_n_0_[5]\,
      S(0) => \pclk_cnt_reg_n_0_[4]\
    );
\pclk_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => \pclk_cnt_reg[4]_i_1_n_6\,
      Q => \pclk_cnt_reg_n_0_[5]\,
      R => '0'
    );
\pclk_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => \pclk_cnt_reg[4]_i_1_n_5\,
      Q => \pclk_cnt_reg_n_0_[6]\,
      R => '0'
    );
\pclk_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => \pclk_cnt_reg[4]_i_1_n_4\,
      Q => \pclk_cnt_reg_n_0_[7]\,
      R => '0'
    );
\pclk_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => \pclk_cnt_reg[8]_i_1_n_7\,
      Q => \pclk_cnt_reg_n_0_[8]\,
      R => '0'
    );
\pclk_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pclk_cnt_reg[4]_i_1_n_0\,
      CO(3) => \pclk_cnt_reg[8]_i_1_n_0\,
      CO(2) => \pclk_cnt_reg[8]_i_1_n_1\,
      CO(1) => \pclk_cnt_reg[8]_i_1_n_2\,
      CO(0) => \pclk_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pclk_cnt_reg[8]_i_1_n_4\,
      O(2) => \pclk_cnt_reg[8]_i_1_n_5\,
      O(1) => \pclk_cnt_reg[8]_i_1_n_6\,
      O(0) => \pclk_cnt_reg[8]_i_1_n_7\,
      S(3) => \pclk_cnt_reg_n_0_[11]\,
      S(2) => \pclk_cnt_reg_n_0_[10]\,
      S(1) => \pclk_cnt_reg_n_0_[9]\,
      S(0) => \pclk_cnt_reg_n_0_[8]\
    );
\pclk_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_pclk,
      CE => '1',
      D => \pclk_cnt_reg[8]_i_1_n_6\,
      Q => \pclk_cnt_reg_n_0_[9]\,
      R => '0'
    );
qvga_waddr: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => cam_x(0),
      D => qvga_waddr_i_3_n_0,
      Q => qvga_waddr_n_0,
      R => RSTC
    );
\qvga_waddr__0\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => cam_x(0),
      D => \qvga_waddr__0_i_1_n_0\,
      Q => \qvga_waddr__0_n_0\,
      R => RSTC
    );
\qvga_waddr__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => qvga_waddr_i_4_n_0,
      I1 => cam_x_reg(7),
      I2 => cam_x_reg(8),
      O => \qvga_waddr__0_i_1_n_0\
    );
\qvga_waddr__1\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => cam_x(0),
      D => \qvga_waddr__1_i_1_n_0\,
      Q => \qvga_waddr__1_n_0\,
      R => RSTC
    );
\qvga_waddr__10\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => cam_y(0),
      D => B(5),
      Q => \qvga_waddr__10_n_0\,
      R => cam_vsync
    );
\qvga_waddr__10_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \qvga_waddr__8_i_3_n_0\,
      I1 => cam_y_reg(5),
      I2 => cam_y_reg(6),
      O => B(5)
    );
\qvga_waddr__11\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => cam_y(0),
      D => \qvga_waddr__11_i_1_n_0\,
      Q => \qvga_waddr__11_n_0\,
      R => cam_vsync
    );
\qvga_waddr__11_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => cam_y_reg(4),
      I1 => cam_y_reg(2),
      I2 => cam_y_reg(0),
      I3 => cam_y_reg(1),
      I4 => cam_y_reg(3),
      I5 => cam_y_reg(5),
      O => \qvga_waddr__11_i_1_n_0\
    );
\qvga_waddr__12\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => cam_y(0),
      D => \qvga_waddr__12_i_1_n_0\,
      Q => \qvga_waddr__12_n_0\,
      R => cam_vsync
    );
\qvga_waddr__12_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => cam_y_reg(3),
      I1 => cam_y_reg(1),
      I2 => cam_y_reg(0),
      I3 => cam_y_reg(2),
      I4 => cam_y_reg(4),
      O => \qvga_waddr__12_i_1_n_0\
    );
\qvga_waddr__13\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => cam_y(0),
      D => \qvga_waddr__13_i_1_n_0\,
      Q => \qvga_waddr__13_n_0\,
      R => cam_vsync
    );
\qvga_waddr__13_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => cam_y_reg(2),
      I1 => cam_y_reg(0),
      I2 => cam_y_reg(1),
      I3 => cam_y_reg(3),
      O => \qvga_waddr__13_i_1_n_0\
    );
\qvga_waddr__14\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => cam_y(0),
      D => \qvga_waddr__14_i_1_n_0\,
      Q => \qvga_waddr__14_n_0\,
      R => cam_vsync
    );
\qvga_waddr__14_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cam_y_reg(1),
      I1 => cam_y_reg(0),
      I2 => cam_y_reg(2),
      O => \qvga_waddr__14_i_1_n_0\
    );
\qvga_waddr__15\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => cam_y(0),
      D => B(0),
      Q => \qvga_waddr__15_n_0\,
      R => cam_vsync
    );
\qvga_waddr__15_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cam_y_reg(0),
      I1 => cam_y_reg(1),
      O => B(0)
    );
\qvga_waddr__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => qvga_waddr_i_4_n_0,
      I1 => cam_x_reg(7),
      O => \qvga_waddr__1_i_1_n_0\
    );
\qvga_waddr__2\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => cam_x(0),
      D => \qvga_waddr__2_i_1_n_0\,
      Q => \qvga_waddr__2_n_0\,
      R => RSTC
    );
\qvga_waddr__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \qvga_waddr__2_i_2_n_0\,
      I1 => cam_x_reg(6),
      O => \qvga_waddr__2_i_1_n_0\
    );
\qvga_waddr__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => cam_x_reg(4),
      I1 => cam_x_reg(2),
      I2 => cam_x_reg(0),
      I3 => cam_x_reg(1),
      I4 => cam_x_reg(3),
      I5 => cam_x_reg(5),
      O => \qvga_waddr__2_i_2_n_0\
    );
\qvga_waddr__3\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => cam_x(0),
      D => \qvga_waddr__3_i_1_n_0\,
      Q => \qvga_waddr__3_n_0\,
      R => RSTC
    );
\qvga_waddr__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => cam_x_reg(4),
      I1 => cam_x_reg(2),
      I2 => cam_x_reg(0),
      I3 => cam_x_reg(1),
      I4 => cam_x_reg(3),
      I5 => cam_x_reg(5),
      O => \qvga_waddr__3_i_1_n_0\
    );
\qvga_waddr__4\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => cam_x(0),
      D => \qvga_waddr__4_i_1_n_0\,
      Q => \qvga_waddr__4_n_0\,
      R => RSTC
    );
\qvga_waddr__4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => cam_x_reg(3),
      I1 => cam_x_reg(1),
      I2 => cam_x_reg(0),
      I3 => cam_x_reg(2),
      I4 => cam_x_reg(4),
      O => \qvga_waddr__4_i_1_n_0\
    );
\qvga_waddr__5\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => cam_x(0),
      D => \qvga_waddr__5_i_1_n_0\,
      Q => \qvga_waddr__5_n_0\,
      R => RSTC
    );
\qvga_waddr__5_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => cam_x_reg(2),
      I1 => cam_x_reg(0),
      I2 => cam_x_reg(1),
      I3 => cam_x_reg(3),
      O => \qvga_waddr__5_i_1_n_0\
    );
\qvga_waddr__6\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => cam_x(0),
      D => \qvga_waddr__6_i_1_n_0\,
      Q => \qvga_waddr__6_n_0\,
      R => RSTC
    );
\qvga_waddr__6_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cam_x_reg(1),
      I1 => cam_x_reg(0),
      I2 => cam_x_reg(2),
      O => \qvga_waddr__6_i_1_n_0\
    );
\qvga_waddr__7\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => cam_x(0),
      D => \qvga_waddr__7_i_1_n_0\,
      Q => \qvga_waddr__7_n_0\,
      R => RSTC
    );
\qvga_waddr__7_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cam_x_reg(0),
      I1 => cam_x_reg(1),
      O => \qvga_waddr__7_i_1_n_0\
    );
\qvga_waddr__8\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => cam_y(0),
      D => B(7),
      Q => \qvga_waddr__8_n_0\,
      R => cam_vsync
    );
\qvga_waddr__8_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F0000FF7F0000"
    )
        port map (
      I0 => cam_y_reg(8),
      I1 => cam_y_reg(7),
      I2 => cam_y_reg(6),
      I3 => \qvga_waddr__8_i_3_n_0\,
      I4 => \qvga_waddr__8_i_4_n_0\,
      I5 => cam_y_reg(5),
      O => cam_y(0)
    );
\qvga_waddr__8_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => \qvga_waddr__8_i_3_n_0\,
      I1 => cam_y_reg(5),
      I2 => cam_y_reg(7),
      I3 => cam_y_reg(6),
      I4 => cam_y_reg(8),
      O => B(7)
    );
\qvga_waddr__8_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => cam_y_reg(3),
      I1 => cam_y_reg(1),
      I2 => cam_y_reg(0),
      I3 => cam_y_reg(2),
      I4 => cam_y_reg(4),
      O => \qvga_waddr__8_i_3_n_0\
    );
\qvga_waddr__8_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cam_href_d,
      I1 => cam_href,
      O => \qvga_waddr__8_i_4_n_0\
    );
\qvga_waddr__9\: unisim.vcomponents.FDRE
     port map (
      C => cam_pclk,
      CE => cam_y(0),
      D => B(6),
      Q => \qvga_waddr__9_n_0\,
      R => cam_vsync
    );
\qvga_waddr__9_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \qvga_waddr__8_i_3_n_0\,
      I1 => cam_y_reg(5),
      I2 => cam_y_reg(6),
      I3 => cam_y_reg(7),
      O => B(6)
    );
qvga_waddr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => cam_href,
      I1 => cam_href_d,
      I2 => cam_vsync,
      O => RSTC
    );
qvga_waddr_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => qvga_waddr_i_4_n_0,
      I1 => cam_x_reg(7),
      I2 => cam_x_reg(8),
      I3 => cam_x_reg(9),
      O => qvga_waddr_i_3_n_0
    );
qvga_waddr_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \qvga_waddr__2_i_2_n_0\,
      I1 => cam_x_reg(6),
      O => qvga_waddr_i_4_n_0
    );
\sccb_cnt[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007FFF"
    )
        port map (
      I0 => \sccb_cnt[0]_i_4_n_0\,
      I1 => sccb_cnt_reg(20),
      I2 => sccb_cnt_reg(21),
      I3 => sccb_cnt_reg(22),
      I4 => sccb_fired,
      O => sccb_start
    );
\sccb_cnt[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8000FFFF"
    )
        port map (
      I0 => sccb_cnt_reg(11),
      I1 => sccb_cnt_reg(16),
      I2 => sccb_cnt_reg(14),
      I3 => \sccb_cnt[0]_i_6_n_0\,
      I4 => \sccb_cnt[0]_i_7_n_0\,
      O => \sccb_cnt[0]_i_4_n_0\
    );
\sccb_cnt[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sccb_cnt_reg_n_0_[0]\,
      O => \sccb_cnt[0]_i_5_n_0\
    );
\sccb_cnt[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => sccb_cnt_reg(5),
      I1 => sccb_cnt_reg(8),
      I2 => sccb_cnt_reg(9),
      I3 => \sccb_cnt[0]_i_8_n_0\,
      O => \sccb_cnt[0]_i_6_n_0\
    );
\sccb_cnt[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000007"
    )
        port map (
      I0 => \sccb_cnt[0]_i_9_n_0\,
      I1 => sccb_cnt_reg(16),
      I2 => sccb_cnt_reg(19),
      I3 => sccb_cnt_reg(18),
      I4 => sccb_cnt_reg(17),
      O => \sccb_cnt[0]_i_7_n_0\
    );
\sccb_cnt[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"777F"
    )
        port map (
      I0 => sccb_cnt_reg(6),
      I1 => sccb_cnt_reg(7),
      I2 => sccb_cnt_reg(3),
      I3 => sccb_cnt_reg(4),
      O => \sccb_cnt[0]_i_8_n_0\
    );
\sccb_cnt[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEAAA"
    )
        port map (
      I0 => sccb_cnt_reg(15),
      I1 => sccb_cnt_reg(14),
      I2 => sccb_cnt_reg(10),
      I3 => sccb_cnt_reg(11),
      I4 => sccb_cnt_reg(12),
      I5 => sccb_cnt_reg(13),
      O => \sccb_cnt[0]_i_9_n_0\
    );
\sccb_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sccb_start,
      D => \sccb_cnt_reg[0]_i_3_n_7\,
      Q => \sccb_cnt_reg_n_0_[0]\,
      R => u_system_n_15
    );
\sccb_cnt_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sccb_cnt_reg[0]_i_3_n_0\,
      CO(2) => \sccb_cnt_reg[0]_i_3_n_1\,
      CO(1) => \sccb_cnt_reg[0]_i_3_n_2\,
      CO(0) => \sccb_cnt_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \sccb_cnt_reg[0]_i_3_n_4\,
      O(2) => \sccb_cnt_reg[0]_i_3_n_5\,
      O(1) => \sccb_cnt_reg[0]_i_3_n_6\,
      O(0) => \sccb_cnt_reg[0]_i_3_n_7\,
      S(3) => sccb_cnt_reg(3),
      S(2) => \sccb_cnt_reg_n_0_[2]\,
      S(1) => \sccb_cnt_reg_n_0_[1]\,
      S(0) => \sccb_cnt[0]_i_5_n_0\
    );
\sccb_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sccb_start,
      D => \sccb_cnt_reg[8]_i_1_n_5\,
      Q => sccb_cnt_reg(10),
      R => u_system_n_15
    );
\sccb_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sccb_start,
      D => \sccb_cnt_reg[8]_i_1_n_4\,
      Q => sccb_cnt_reg(11),
      R => u_system_n_15
    );
\sccb_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sccb_start,
      D => \sccb_cnt_reg[12]_i_1_n_7\,
      Q => sccb_cnt_reg(12),
      R => u_system_n_15
    );
\sccb_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sccb_cnt_reg[8]_i_1_n_0\,
      CO(3) => \sccb_cnt_reg[12]_i_1_n_0\,
      CO(2) => \sccb_cnt_reg[12]_i_1_n_1\,
      CO(1) => \sccb_cnt_reg[12]_i_1_n_2\,
      CO(0) => \sccb_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sccb_cnt_reg[12]_i_1_n_4\,
      O(2) => \sccb_cnt_reg[12]_i_1_n_5\,
      O(1) => \sccb_cnt_reg[12]_i_1_n_6\,
      O(0) => \sccb_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => sccb_cnt_reg(15 downto 12)
    );
\sccb_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sccb_start,
      D => \sccb_cnt_reg[12]_i_1_n_6\,
      Q => sccb_cnt_reg(13),
      R => u_system_n_15
    );
\sccb_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sccb_start,
      D => \sccb_cnt_reg[12]_i_1_n_5\,
      Q => sccb_cnt_reg(14),
      R => u_system_n_15
    );
\sccb_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sccb_start,
      D => \sccb_cnt_reg[12]_i_1_n_4\,
      Q => sccb_cnt_reg(15),
      R => u_system_n_15
    );
\sccb_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sccb_start,
      D => \sccb_cnt_reg[16]_i_1_n_7\,
      Q => sccb_cnt_reg(16),
      R => u_system_n_15
    );
\sccb_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sccb_cnt_reg[12]_i_1_n_0\,
      CO(3) => \sccb_cnt_reg[16]_i_1_n_0\,
      CO(2) => \sccb_cnt_reg[16]_i_1_n_1\,
      CO(1) => \sccb_cnt_reg[16]_i_1_n_2\,
      CO(0) => \sccb_cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sccb_cnt_reg[16]_i_1_n_4\,
      O(2) => \sccb_cnt_reg[16]_i_1_n_5\,
      O(1) => \sccb_cnt_reg[16]_i_1_n_6\,
      O(0) => \sccb_cnt_reg[16]_i_1_n_7\,
      S(3 downto 0) => sccb_cnt_reg(19 downto 16)
    );
\sccb_cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sccb_start,
      D => \sccb_cnt_reg[16]_i_1_n_6\,
      Q => sccb_cnt_reg(17),
      R => u_system_n_15
    );
\sccb_cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sccb_start,
      D => \sccb_cnt_reg[16]_i_1_n_5\,
      Q => sccb_cnt_reg(18),
      R => u_system_n_15
    );
\sccb_cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sccb_start,
      D => \sccb_cnt_reg[16]_i_1_n_4\,
      Q => sccb_cnt_reg(19),
      R => u_system_n_15
    );
\sccb_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sccb_start,
      D => \sccb_cnt_reg[0]_i_3_n_6\,
      Q => \sccb_cnt_reg_n_0_[1]\,
      R => u_system_n_15
    );
\sccb_cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sccb_start,
      D => \sccb_cnt_reg[20]_i_1_n_7\,
      Q => sccb_cnt_reg(20),
      R => u_system_n_15
    );
\sccb_cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sccb_cnt_reg[16]_i_1_n_0\,
      CO(3 downto 2) => \NLW_sccb_cnt_reg[20]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \sccb_cnt_reg[20]_i_1_n_2\,
      CO(0) => \sccb_cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_sccb_cnt_reg[20]_i_1_O_UNCONNECTED\(3),
      O(2) => \sccb_cnt_reg[20]_i_1_n_5\,
      O(1) => \sccb_cnt_reg[20]_i_1_n_6\,
      O(0) => \sccb_cnt_reg[20]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => sccb_cnt_reg(22 downto 20)
    );
\sccb_cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sccb_start,
      D => \sccb_cnt_reg[20]_i_1_n_6\,
      Q => sccb_cnt_reg(21),
      R => u_system_n_15
    );
\sccb_cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sccb_start,
      D => \sccb_cnt_reg[20]_i_1_n_5\,
      Q => sccb_cnt_reg(22),
      R => u_system_n_15
    );
\sccb_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sccb_start,
      D => \sccb_cnt_reg[0]_i_3_n_5\,
      Q => \sccb_cnt_reg_n_0_[2]\,
      R => u_system_n_15
    );
\sccb_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sccb_start,
      D => \sccb_cnt_reg[0]_i_3_n_4\,
      Q => sccb_cnt_reg(3),
      R => u_system_n_15
    );
\sccb_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sccb_start,
      D => \sccb_cnt_reg[4]_i_1_n_7\,
      Q => sccb_cnt_reg(4),
      R => u_system_n_15
    );
\sccb_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sccb_cnt_reg[0]_i_3_n_0\,
      CO(3) => \sccb_cnt_reg[4]_i_1_n_0\,
      CO(2) => \sccb_cnt_reg[4]_i_1_n_1\,
      CO(1) => \sccb_cnt_reg[4]_i_1_n_2\,
      CO(0) => \sccb_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sccb_cnt_reg[4]_i_1_n_4\,
      O(2) => \sccb_cnt_reg[4]_i_1_n_5\,
      O(1) => \sccb_cnt_reg[4]_i_1_n_6\,
      O(0) => \sccb_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => sccb_cnt_reg(7 downto 4)
    );
\sccb_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sccb_start,
      D => \sccb_cnt_reg[4]_i_1_n_6\,
      Q => sccb_cnt_reg(5),
      R => u_system_n_15
    );
\sccb_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sccb_start,
      D => \sccb_cnt_reg[4]_i_1_n_5\,
      Q => sccb_cnt_reg(6),
      R => u_system_n_15
    );
\sccb_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sccb_start,
      D => \sccb_cnt_reg[4]_i_1_n_4\,
      Q => sccb_cnt_reg(7),
      R => u_system_n_15
    );
\sccb_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sccb_start,
      D => \sccb_cnt_reg[8]_i_1_n_7\,
      Q => sccb_cnt_reg(8),
      R => u_system_n_15
    );
\sccb_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sccb_cnt_reg[4]_i_1_n_0\,
      CO(3) => \sccb_cnt_reg[8]_i_1_n_0\,
      CO(2) => \sccb_cnt_reg[8]_i_1_n_1\,
      CO(1) => \sccb_cnt_reg[8]_i_1_n_2\,
      CO(0) => \sccb_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sccb_cnt_reg[8]_i_1_n_4\,
      O(2) => \sccb_cnt_reg[8]_i_1_n_5\,
      O(1) => \sccb_cnt_reg[8]_i_1_n_6\,
      O(0) => \sccb_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => sccb_cnt_reg(11 downto 8)
    );
\sccb_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sccb_start,
      D => \sccb_cnt_reg[8]_i_1_n_6\,
      Q => sccb_cnt_reg(9),
      R => u_system_n_15
    );
sccb_fired_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \sccb_cnt[0]_i_4_n_0\,
      I1 => sccb_cnt_reg(20),
      I2 => sccb_cnt_reg(21),
      I3 => sccb_cnt_reg(22),
      I4 => sccb_fired,
      O => sccb_fired1_out
    );
sccb_fired_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => u_system_n_20,
      Q => sccb_fired,
      R => '0'
    );
sccb_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => u_system_n_14,
      Q => sccb_start_reg_n_0,
      R => '0'
    );
\sync_h[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sync_h_reg(0),
      O => \sync_h[0]_i_3_n_0\
    );
\sync_h_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => \sync_h_reg[0]_i_2_n_7\,
      Q => sync_h_reg(0),
      R => u_system_n_13
    );
\sync_h_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sync_h_reg[0]_i_2_n_0\,
      CO(2) => \sync_h_reg[0]_i_2_n_1\,
      CO(1) => \sync_h_reg[0]_i_2_n_2\,
      CO(0) => \sync_h_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \sync_h_reg[0]_i_2_n_4\,
      O(2) => \sync_h_reg[0]_i_2_n_5\,
      O(1) => \sync_h_reg[0]_i_2_n_6\,
      O(0) => \sync_h_reg[0]_i_2_n_7\,
      S(3 downto 1) => sync_h_reg(3 downto 1),
      S(0) => \sync_h[0]_i_3_n_0\
    );
\sync_h_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => \sync_h_reg[8]_i_1_n_5\,
      Q => sync_h_reg(10),
      R => u_system_n_13
    );
\sync_h_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => \sync_h_reg[0]_i_2_n_6\,
      Q => sync_h_reg(1),
      R => u_system_n_13
    );
\sync_h_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => \sync_h_reg[0]_i_2_n_5\,
      Q => sync_h_reg(2),
      R => u_system_n_13
    );
\sync_h_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => \sync_h_reg[0]_i_2_n_4\,
      Q => sync_h_reg(3),
      R => u_system_n_13
    );
\sync_h_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => \sync_h_reg[4]_i_1_n_7\,
      Q => sync_h_reg(4),
      R => u_system_n_13
    );
\sync_h_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sync_h_reg[0]_i_2_n_0\,
      CO(3) => \sync_h_reg[4]_i_1_n_0\,
      CO(2) => \sync_h_reg[4]_i_1_n_1\,
      CO(1) => \sync_h_reg[4]_i_1_n_2\,
      CO(0) => \sync_h_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sync_h_reg[4]_i_1_n_4\,
      O(2) => \sync_h_reg[4]_i_1_n_5\,
      O(1) => \sync_h_reg[4]_i_1_n_6\,
      O(0) => \sync_h_reg[4]_i_1_n_7\,
      S(3 downto 0) => sync_h_reg(7 downto 4)
    );
\sync_h_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => \sync_h_reg[4]_i_1_n_6\,
      Q => sync_h_reg(5),
      R => u_system_n_13
    );
\sync_h_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => \sync_h_reg[4]_i_1_n_5\,
      Q => sync_h_reg(6),
      R => u_system_n_13
    );
\sync_h_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => \sync_h_reg[4]_i_1_n_4\,
      Q => sync_h_reg(7),
      R => u_system_n_13
    );
\sync_h_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => \sync_h_reg[8]_i_1_n_7\,
      Q => sync_h_reg(8),
      R => u_system_n_13
    );
\sync_h_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sync_h_reg[4]_i_1_n_0\,
      CO(3 downto 2) => \NLW_sync_h_reg[8]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \sync_h_reg[8]_i_1_n_2\,
      CO(0) => \sync_h_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_sync_h_reg[8]_i_1_O_UNCONNECTED\(3),
      O(2) => \sync_h_reg[8]_i_1_n_5\,
      O(1) => \sync_h_reg[8]_i_1_n_6\,
      O(0) => \sync_h_reg[8]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => sync_h_reg(10 downto 8)
    );
\sync_h_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => \sync_h_reg[8]_i_1_n_6\,
      Q => sync_h_reg(9),
      R => u_system_n_13
    );
sync_v1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sync_v1_carry_n_0,
      CO(2) => sync_v1_carry_n_1,
      CO(1) => sync_v1_carry_n_2,
      CO(0) => sync_v1_carry_n_3,
      CYINIT => \sync_v_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => sync_v1_carry_n_4,
      O(2) => sync_v1_carry_n_5,
      O(1) => sync_v1_carry_n_6,
      O(0) => sync_v1_carry_n_7,
      S(3) => \sync_v_reg_n_0_[4]\,
      S(2) => \sync_v_reg_n_0_[3]\,
      S(1) => \^q\(0),
      S(0) => \sync_v_reg_n_0_[1]\
    );
\sync_v1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sync_v1_carry_n_0,
      CO(3) => \sync_v1_carry__0_n_0\,
      CO(2) => \sync_v1_carry__0_n_1\,
      CO(1) => \sync_v1_carry__0_n_2\,
      CO(0) => \sync_v1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \sync_v1_carry__0_n_4\,
      O(2) => \sync_v1_carry__0_n_5\,
      O(1) => \sync_v1_carry__0_n_6\,
      O(0) => \sync_v1_carry__0_n_7\,
      S(3) => \sync_v_reg_n_0_[8]\,
      S(2) => \sync_v_reg_n_0_[7]\,
      S(1) => \sync_v_reg_n_0_[6]\,
      S(0) => \sync_v_reg_n_0_[5]\
    );
\sync_v1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sync_v1_carry__0_n_0\,
      CO(3 downto 2) => \NLW_sync_v1_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \sync_v1_carry__1_n_2\,
      CO(0) => \sync_v1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_sync_v1_carry__1_O_UNCONNECTED\(3),
      O(2) => \sync_v1_carry__1_n_5\,
      O(1) => \sync_v1_carry__1_n_6\,
      O(0) => \sync_v1_carry__1_n_7\,
      S(3) => '0',
      S(2) => \sync_v_reg_n_0_[11]\,
      S(1) => \sync_v_reg_n_0_[10]\,
      S(0) => \sync_v_reg_n_0_[9]\
    );
\sync_v[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sync_v_reg_n_0_[0]\,
      O => \sync_v[0]_i_1_n_0\
    );
\sync_v[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sync_v1_carry__1_n_6\,
      I1 => \sync_v[2]_i_6_n_0\,
      O => \sync_v[10]_i_1_n_0\
    );
\sync_v[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sync_v1_carry__1_n_5\,
      I1 => \sync_v[2]_i_6_n_0\,
      O => \sync_v[11]_i_1_n_0\
    );
\sync_v[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sync_v1_carry_n_7,
      I1 => \sync_v[2]_i_6_n_0\,
      O => \sync_v[1]_i_1_n_0\
    );
\sync_v[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \sync_v[2]_i_4_n_0\,
      I1 => \sync_v[2]_i_5_n_0\,
      I2 => sync_h_reg(9),
      I3 => sync_h_reg(3),
      I4 => sync_h_reg(0),
      I5 => sync_h_reg(8),
      O => sync_v(0)
    );
\sync_v[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sync_v1_carry_n_6,
      I1 => \sync_v[2]_i_6_n_0\,
      O => \sync_v[2]_i_3_n_0\
    );
\sync_v[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sync_h_reg(4),
      I1 => sync_h_reg(5),
      I2 => sync_h_reg(6),
      O => \sync_v[2]_i_4_n_0\
    );
\sync_v[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => sync_h_reg(10),
      I1 => sync_h_reg(1),
      I2 => sync_h_reg(2),
      I3 => sync_h_reg(7),
      O => \sync_v[2]_i_5_n_0\
    );
\sync_v[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \sync_v[2]_i_7_n_0\,
      I1 => \sync_v_reg_n_0_[0]\,
      I2 => \sync_v_reg_n_0_[5]\,
      I3 => \sync_v_reg_n_0_[4]\,
      I4 => \sync_v_reg_n_0_[3]\,
      I5 => \sync_v_reg_n_0_[1]\,
      O => \sync_v[2]_i_6_n_0\
    );
\sync_v[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFFFFFFFFFF"
    )
        port map (
      I0 => vid_active_r_i_2_n_0,
      I1 => \sync_v_reg_n_0_[6]\,
      I2 => \sync_v_reg_n_0_[7]\,
      I3 => \sync_v_reg_n_0_[9]\,
      I4 => \sync_v_reg_n_0_[8]\,
      I5 => \^q\(0),
      O => \sync_v[2]_i_7_n_0\
    );
\sync_v[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sync_v1_carry_n_5,
      I1 => \sync_v[2]_i_6_n_0\,
      O => \sync_v[3]_i_1_n_0\
    );
\sync_v[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sync_v1_carry_n_4,
      I1 => \sync_v[2]_i_6_n_0\,
      O => \sync_v[4]_i_1_n_0\
    );
\sync_v[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sync_v1_carry__0_n_7\,
      I1 => \sync_v[2]_i_6_n_0\,
      O => \sync_v[5]_i_1_n_0\
    );
\sync_v[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sync_v1_carry__0_n_6\,
      I1 => \sync_v[2]_i_6_n_0\,
      O => \sync_v[6]_i_1_n_0\
    );
\sync_v[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sync_v1_carry__0_n_5\,
      I1 => \sync_v[2]_i_6_n_0\,
      O => \sync_v[7]_i_1_n_0\
    );
\sync_v[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sync_v1_carry__0_n_4\,
      I1 => \sync_v[2]_i_6_n_0\,
      O => \sync_v[8]_i_1_n_0\
    );
\sync_v[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sync_v1_carry__1_n_7\,
      I1 => \sync_v[2]_i_6_n_0\,
      O => \sync_v[9]_i_1_n_0\
    );
\sync_v_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sync_v(0),
      D => \sync_v[0]_i_1_n_0\,
      Q => \sync_v_reg_n_0_[0]\,
      R => u_system_n_16
    );
\sync_v_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sync_v(0),
      D => \sync_v[10]_i_1_n_0\,
      Q => \sync_v_reg_n_0_[10]\,
      R => u_system_n_16
    );
\sync_v_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sync_v(0),
      D => \sync_v[11]_i_1_n_0\,
      Q => \sync_v_reg_n_0_[11]\,
      R => u_system_n_16
    );
\sync_v_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sync_v(0),
      D => \sync_v[1]_i_1_n_0\,
      Q => \sync_v_reg_n_0_[1]\,
      R => u_system_n_16
    );
\sync_v_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sync_v(0),
      D => \sync_v[2]_i_3_n_0\,
      Q => \^q\(0),
      R => u_system_n_16
    );
\sync_v_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sync_v(0),
      D => \sync_v[3]_i_1_n_0\,
      Q => \sync_v_reg_n_0_[3]\,
      R => u_system_n_16
    );
\sync_v_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sync_v(0),
      D => \sync_v[4]_i_1_n_0\,
      Q => \sync_v_reg_n_0_[4]\,
      R => u_system_n_16
    );
\sync_v_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sync_v(0),
      D => \sync_v[5]_i_1_n_0\,
      Q => \sync_v_reg_n_0_[5]\,
      R => u_system_n_16
    );
\sync_v_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sync_v(0),
      D => \sync_v[6]_i_1_n_0\,
      Q => \sync_v_reg_n_0_[6]\,
      R => u_system_n_16
    );
\sync_v_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sync_v(0),
      D => \sync_v[7]_i_1_n_0\,
      Q => \sync_v_reg_n_0_[7]\,
      R => u_system_n_16
    );
\sync_v_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sync_v(0),
      D => \sync_v[8]_i_1_n_0\,
      Q => \sync_v_reg_n_0_[8]\,
      R => u_system_n_16
    );
\sync_v_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sync_v(0),
      D => \sync_v[9]_i_1_n_0\,
      Q => \sync_v_reg_n_0_[9]\,
      R => u_system_n_16
    );
u_adapter: entity work.design_1_top_0_0_read_pixels_axis_adapter
     port map (
      S_AXIS_CAPTURE_tlast => capture_axis_tlast,
      S_AXIS_CAPTURE_tuser(0) => capture_axis_tuser,
      cam_pclk => cam_pclk,
      cam_vsync => cam_vsync,
      rp_pixel_valid => rp_pixel_valid
    );
u_cam_config: entity work.design_1_top_0_0_camera_configure
     port map (
      \FSM_state_reg[0]\ => sccb_start_reg_n_0,
      cam_scl => cam_scl,
      cam_sda => cam_sda,
      pixel_clk => \^pixel_clk\
    );
u_read_pixels: entity work.design_1_top_0_0_read_pixels
     port map (
      E(0) => cam_x(0),
      Q(3 downto 1) => cam_x_reg(9 downto 7),
      Q(0) => cam_x_reg(0),
      bram_en => bram_en,
      cam_data(7 downto 0) => cam_data(7 downto 0),
      cam_href => cam_href,
      cam_pclk => cam_pclk,
      cam_vsync => cam_vsync,
      \cam_x_reg[0]\ => u_read_pixels_n_3,
      \cam_x_reg[0]_0\ => u_read_pixels_n_4,
      \cam_x_reg[9]\ => qvga_waddr_i_4_n_0,
      frame_done => frame_done,
      \pixel_data_reg[15]_0\(15 downto 0) => \^pixel_data_reg[15]\(15 downto 0),
      qvga_waddr(1) => frame_buf_reg_0_0_i_4_n_5,
      qvga_waddr(0) => frame_buf_reg_0_0_i_4_n_6,
      rp_pixel_valid => rp_pixel_valid
    );
u_system: entity work.design_1_top_0_0_system_wrapper
     port map (
      E(0) => sync_v(0),
      Q(7) => \vid_pdata_r_reg_n_0_[23]\,
      Q(6) => \vid_pdata_r_reg_n_0_[22]\,
      Q(5) => \vid_pdata_r_reg_n_0_[21]\,
      Q(4) => \vid_pdata_r_reg_n_0_[20]\,
      Q(3) => \vid_pdata_r_reg_n_0_[19]\,
      Q(2) => \vid_pdata_r_reg_n_0_[18]\,
      Q(1) => \vid_pdata_r_reg_n_0_[17]\,
      Q(0) => \vid_pdata_r_reg_n_0_[16]\,
      SR(0) => u_system_n_12,
      S_AXIS_CAPTURE_tlast => capture_axis_tlast,
      S_AXIS_CAPTURE_tuser(0) => capture_axis_tuser,
      axis_data_fifo_0(15 downto 0) => \^pixel_data_reg[15]\(15 downto 0),
      \bbstub_peripheral_aresetn[0]\(0) => u_system_n_16,
      cam_pclk => cam_pclk,
      cam_xclk => cam_xclk_o,
      hdmi_tx_clk_n => hdmi_tx_clk_n,
      hdmi_tx_clk_p => hdmi_tx_clk_p,
      hdmi_tx_d_n(2 downto 0) => hdmi_tx_d_n(2 downto 0),
      hdmi_tx_d_p(2 downto 0) => hdmi_tx_d_p(2 downto 0),
      in_panel_d2 => in_panel_d2,
      led4_g => led4_g,
      mmcm_locked => led_mmcm_locked,
      pixel_clk => \^pixel_clk\,
      rp_pixel_valid => rp_pixel_valid,
      rst => rst,
      rst_0 => u_system_n_14,
      rst_1 => u_system_n_15,
      sccb_fired => sccb_fired,
      sccb_fired1_out => sccb_fired1_out,
      sccb_fired_reg => u_system_n_20,
      sync_h_reg(3 downto 0) => sync_h_reg(10 downto 7),
      \sync_h_reg[10]\ => u_system_n_17,
      \sync_h_reg[8]\ => u_system_n_18,
      \sync_h_reg[9]\ => u_system_n_13,
      \sync_v_reg[0]\ => u_system_n_19,
      sys_clk => sys_clk,
      vid_active_i => vid_active_r,
      vid_active_r_reg => vid_active_r_i_2_n_0,
      vid_active_r_reg_0 => vid_active_r_i_3_n_0,
      vid_hsync_i => vid_hsync_r,
      vid_hsync_r_reg => vid_hsync_r_i_2_n_0,
      vid_hsync_r_reg_0 => vid_hsync_r_i_3_n_0,
      vid_hsync_r_reg_1 => vid_hsync_r_i_4_n_0,
      \vid_pdata_r_reg[23]\ => frame_buf_reg_0_0_i_3_n_0,
      vid_vsync_i => vid_vsync_r,
      vid_vsync_r_reg => vid_vsync_r_i_2_n_0,
      vid_vsync_r_reg_0(3) => \sync_v_reg_n_0_[3]\,
      vid_vsync_r_reg_0(2) => \^q\(0),
      vid_vsync_r_reg_0(1) => \sync_v_reg_n_0_[1]\,
      vid_vsync_r_reg_0(0) => \sync_v_reg_n_0_[0]\
    );
u_xclk_oddr: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D1 => '1',
      D2 => '0',
      Q => cam_xclk,
      R => NLW_u_xclk_oddr_R_UNCONNECTED,
      S => NLW_u_xclk_oddr_S_UNCONNECTED
    );
vid_active_r_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \sync_v_reg_n_0_[11]\,
      I1 => \sync_v_reg_n_0_[10]\,
      O => vid_active_r_i_2_n_0
    );
vid_active_r_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F7F0F7F0F7F0FFF"
    )
        port map (
      I0 => \sync_v_reg_n_0_[6]\,
      I1 => \sync_v_reg_n_0_[7]\,
      I2 => \sync_v_reg_n_0_[9]\,
      I3 => \sync_v_reg_n_0_[8]\,
      I4 => \sync_v_reg_n_0_[5]\,
      I5 => \sync_v_reg_n_0_[4]\,
      O => vid_active_r_i_3_n_0
    );
vid_active_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => u_system_n_17,
      Q => vid_active_r,
      R => '0'
    );
vid_hsync_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000557F"
    )
        port map (
      I0 => sync_h_reg(4),
      I1 => sync_h_reg(2),
      I2 => sync_h_reg(1),
      I3 => sync_h_reg(3),
      I4 => sync_h_reg(5),
      I5 => sync_h_reg(6),
      O => vid_hsync_r_i_2_n_0
    );
vid_hsync_r_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sync_h_reg(9),
      I1 => sync_h_reg(10),
      O => vid_hsync_r_i_3_n_0
    );
vid_hsync_r_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C080808080808080"
    )
        port map (
      I0 => sync_h_reg(4),
      I1 => sync_h_reg(5),
      I2 => sync_h_reg(6),
      I3 => sync_h_reg(3),
      I4 => sync_h_reg(2),
      I5 => sync_h_reg(1),
      O => vid_hsync_r_i_4_n_0
    );
vid_hsync_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => u_system_n_18,
      Q => vid_hsync_r,
      R => '0'
    );
\vid_pdata_r[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => panel_y_pixel(0),
      I1 => frame_buf_reg_0_0_i_3_n_0,
      I2 => \frame_buf_reg_1_0__0_n_67\,
      I3 => \frame_buf_reg_mux_sel_b_pos_1__6_n_0\,
      I4 => \frame_buf_reg_mux_sel_b_pos_0__6_n_0\,
      I5 => frame_buf_reg_1_0_n_67,
      O => p_1_in(16)
    );
\vid_pdata_r[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => panel_y_pixel(1),
      I1 => frame_buf_reg_0_0_i_3_n_0,
      I2 => \frame_buf_reg_1_1__0_n_67\,
      I3 => \frame_buf_reg_mux_sel_b_pos_1__6_n_0\,
      I4 => \frame_buf_reg_mux_sel_b_pos_0__6_n_0\,
      I5 => frame_buf_reg_1_1_n_67,
      O => p_1_in(17)
    );
\vid_pdata_r[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => panel_y_pixel(2),
      I1 => frame_buf_reg_0_0_i_3_n_0,
      I2 => \frame_buf_reg_1_2__0_n_67\,
      I3 => \frame_buf_reg_mux_sel_b_pos_1__6_n_0\,
      I4 => \frame_buf_reg_mux_sel_b_pos_0__6_n_0\,
      I5 => frame_buf_reg_1_2_n_67,
      O => p_1_in(18)
    );
\vid_pdata_r[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => panel_y_pixel(3),
      I1 => frame_buf_reg_0_0_i_3_n_0,
      I2 => \frame_buf_reg_1_3__0_n_67\,
      I3 => \frame_buf_reg_mux_sel_b_pos_1__6_n_0\,
      I4 => \frame_buf_reg_mux_sel_b_pos_0__6_n_0\,
      I5 => frame_buf_reg_1_3_n_67,
      O => p_1_in(19)
    );
\vid_pdata_r[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => panel_y_pixel(4),
      I1 => frame_buf_reg_0_0_i_3_n_0,
      I2 => \frame_buf_reg_1_4__0_n_67\,
      I3 => \frame_buf_reg_mux_sel_b_pos_1__6_n_0\,
      I4 => \frame_buf_reg_mux_sel_b_pos_0__6_n_0\,
      I5 => frame_buf_reg_1_4_n_67,
      O => p_1_in(20)
    );
\vid_pdata_r[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => panel_y_pixel(5),
      I1 => frame_buf_reg_0_0_i_3_n_0,
      I2 => \frame_buf_reg_1_5__0_n_67\,
      I3 => \frame_buf_reg_mux_sel_b_pos_1__6_n_0\,
      I4 => \frame_buf_reg_mux_sel_b_pos_0__6_n_0\,
      I5 => frame_buf_reg_1_5_n_67,
      O => p_1_in(21)
    );
\vid_pdata_r[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => panel_y_pixel(6),
      I1 => frame_buf_reg_0_0_i_3_n_0,
      I2 => \frame_buf_reg_1_6__0_n_67\,
      I3 => \frame_buf_reg_mux_sel_b_pos_1__6_n_0\,
      I4 => \frame_buf_reg_mux_sel_b_pos_0__6_n_0\,
      I5 => frame_buf_reg_1_6_n_67,
      O => p_1_in(22)
    );
\vid_pdata_r[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => panel_y_pixel(7),
      I1 => frame_buf_reg_0_0_i_3_n_0,
      I2 => \frame_buf_reg_1_7__0_n_67\,
      I3 => \frame_buf_reg_mux_sel_b_pos_1__6_n_0\,
      I4 => \frame_buf_reg_mux_sel_b_pos_0__6_n_0\,
      I5 => frame_buf_reg_1_7_n_67,
      O => p_1_in(23)
    );
\vid_pdata_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => p_1_in(16),
      Q => \vid_pdata_r_reg_n_0_[16]\,
      R => u_system_n_12
    );
\vid_pdata_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => p_1_in(17),
      Q => \vid_pdata_r_reg_n_0_[17]\,
      R => u_system_n_12
    );
\vid_pdata_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => p_1_in(18),
      Q => \vid_pdata_r_reg_n_0_[18]\,
      R => u_system_n_12
    );
\vid_pdata_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => p_1_in(19),
      Q => \vid_pdata_r_reg_n_0_[19]\,
      R => u_system_n_12
    );
\vid_pdata_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => p_1_in(20),
      Q => \vid_pdata_r_reg_n_0_[20]\,
      R => u_system_n_12
    );
\vid_pdata_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => p_1_in(21),
      Q => \vid_pdata_r_reg_n_0_[21]\,
      R => u_system_n_12
    );
\vid_pdata_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => p_1_in(22),
      Q => \vid_pdata_r_reg_n_0_[22]\,
      R => u_system_n_12
    );
\vid_pdata_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => p_1_in(23),
      Q => \vid_pdata_r_reg_n_0_[23]\,
      R => u_system_n_12
    );
vid_vsync_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF7F"
    )
        port map (
      I0 => \sync_v_reg_n_0_[9]\,
      I1 => \sync_v_reg_n_0_[7]\,
      I2 => \sync_v_reg_n_0_[6]\,
      I3 => \sync_v_reg_n_0_[11]\,
      I4 => \sync_v_reg_n_0_[10]\,
      I5 => vid_vsync_r_i_3_n_0,
      O => vid_vsync_r_i_2_n_0
    );
vid_vsync_r_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0DFF"
    )
        port map (
      I0 => \sync_v_reg_n_0_[3]\,
      I1 => \sync_v_reg_n_0_[1]\,
      I2 => \^q\(0),
      I3 => \sync_v_reg_n_0_[4]\,
      I4 => \sync_v_reg_n_0_[8]\,
      I5 => \sync_v_reg_n_0_[5]\,
      O => vid_vsync_r_i_3_n_0
    );
vid_vsync_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => u_system_n_19,
      Q => vid_vsync_r,
      R => '0'
    );
\vs_cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \vs_cnt_reg_n_0_[0]\,
      O => \vs_cnt[0]_i_2_n_0\
    );
\vs_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vs_s2,
      I1 => vs_prev,
      O => sel
    );
\vs_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sel,
      D => \vs_cnt_reg[0]_i_1_n_7\,
      Q => \vs_cnt_reg_n_0_[0]\,
      R => '0'
    );
\vs_cnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \vs_cnt_reg[0]_i_1_n_0\,
      CO(2) => \vs_cnt_reg[0]_i_1_n_1\,
      CO(1) => \vs_cnt_reg[0]_i_1_n_2\,
      CO(0) => \vs_cnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \vs_cnt_reg[0]_i_1_n_4\,
      O(2) => \vs_cnt_reg[0]_i_1_n_5\,
      O(1) => \vs_cnt_reg[0]_i_1_n_6\,
      O(0) => \vs_cnt_reg[0]_i_1_n_7\,
      S(3) => \vs_cnt_reg_n_0_[3]\,
      S(2) => \vs_cnt_reg_n_0_[2]\,
      S(1) => \vs_cnt_reg_n_0_[1]\,
      S(0) => \vs_cnt[0]_i_2_n_0\
    );
\vs_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sel,
      D => \vs_cnt_reg[0]_i_1_n_6\,
      Q => \vs_cnt_reg_n_0_[1]\,
      R => '0'
    );
\vs_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sel,
      D => \vs_cnt_reg[0]_i_1_n_5\,
      Q => \vs_cnt_reg_n_0_[2]\,
      R => '0'
    );
\vs_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sel,
      D => \vs_cnt_reg[0]_i_1_n_4\,
      Q => \vs_cnt_reg_n_0_[3]\,
      R => '0'
    );
\vs_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sel,
      D => \vs_cnt_reg[5]_i_2_n_7\,
      Q => \vs_cnt_reg_n_0_[4]\,
      R => '0'
    );
\vs_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => sel,
      D => \vs_cnt_reg[5]_i_2_n_6\,
      Q => \^led_pll_locked\,
      R => '0'
    );
\vs_cnt_reg[5]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \vs_cnt_reg[0]_i_1_n_0\,
      CO(3 downto 1) => \NLW_vs_cnt_reg[5]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \vs_cnt_reg[5]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_vs_cnt_reg[5]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1) => \vs_cnt_reg[5]_i_2_n_6\,
      O(0) => \vs_cnt_reg[5]_i_2_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \^led_pll_locked\,
      S(0) => \vs_cnt_reg_n_0_[4]\
    );
vs_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => vs_s2,
      Q => vs_prev,
      R => '0'
    );
vs_s2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^pixel_clk\,
      CE => '1',
      D => cam_vsync,
      Q => vs_s2,
      R => '0'
    );
\xclk_cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \xclk_cnt_reg_n_0_[0]\,
      O => \xclk_cnt[0]_i_2_n_0\
    );
\xclk_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D => \xclk_cnt_reg[0]_i_1_n_7\,
      Q => \xclk_cnt_reg_n_0_[0]\,
      R => '0'
    );
\xclk_cnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \xclk_cnt_reg[0]_i_1_n_0\,
      CO(2) => \xclk_cnt_reg[0]_i_1_n_1\,
      CO(1) => \xclk_cnt_reg[0]_i_1_n_2\,
      CO(0) => \xclk_cnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \xclk_cnt_reg[0]_i_1_n_4\,
      O(2) => \xclk_cnt_reg[0]_i_1_n_5\,
      O(1) => \xclk_cnt_reg[0]_i_1_n_6\,
      O(0) => \xclk_cnt_reg[0]_i_1_n_7\,
      S(3) => \xclk_cnt_reg_n_0_[3]\,
      S(2) => \xclk_cnt_reg_n_0_[2]\,
      S(1) => \xclk_cnt_reg_n_0_[1]\,
      S(0) => \xclk_cnt[0]_i_2_n_0\
    );
\xclk_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D => \xclk_cnt_reg[8]_i_1_n_5\,
      Q => \xclk_cnt_reg_n_0_[10]\,
      R => '0'
    );
\xclk_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D => \xclk_cnt_reg[8]_i_1_n_4\,
      Q => \xclk_cnt_reg_n_0_[11]\,
      R => '0'
    );
\xclk_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D => \xclk_cnt_reg[12]_i_1_n_7\,
      Q => \xclk_cnt_reg_n_0_[12]\,
      R => '0'
    );
\xclk_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \xclk_cnt_reg[8]_i_1_n_0\,
      CO(3) => \xclk_cnt_reg[12]_i_1_n_0\,
      CO(2) => \xclk_cnt_reg[12]_i_1_n_1\,
      CO(1) => \xclk_cnt_reg[12]_i_1_n_2\,
      CO(0) => \xclk_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \xclk_cnt_reg[12]_i_1_n_4\,
      O(2) => \xclk_cnt_reg[12]_i_1_n_5\,
      O(1) => \xclk_cnt_reg[12]_i_1_n_6\,
      O(0) => \xclk_cnt_reg[12]_i_1_n_7\,
      S(3) => \xclk_cnt_reg_n_0_[15]\,
      S(2) => \xclk_cnt_reg_n_0_[14]\,
      S(1) => \xclk_cnt_reg_n_0_[13]\,
      S(0) => \xclk_cnt_reg_n_0_[12]\
    );
\xclk_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D => \xclk_cnt_reg[12]_i_1_n_6\,
      Q => \xclk_cnt_reg_n_0_[13]\,
      R => '0'
    );
\xclk_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D => \xclk_cnt_reg[12]_i_1_n_5\,
      Q => \xclk_cnt_reg_n_0_[14]\,
      R => '0'
    );
\xclk_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D => \xclk_cnt_reg[12]_i_1_n_4\,
      Q => \xclk_cnt_reg_n_0_[15]\,
      R => '0'
    );
\xclk_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D => \xclk_cnt_reg[16]_i_1_n_7\,
      Q => \xclk_cnt_reg_n_0_[16]\,
      R => '0'
    );
\xclk_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \xclk_cnt_reg[12]_i_1_n_0\,
      CO(3) => \xclk_cnt_reg[16]_i_1_n_0\,
      CO(2) => \xclk_cnt_reg[16]_i_1_n_1\,
      CO(1) => \xclk_cnt_reg[16]_i_1_n_2\,
      CO(0) => \xclk_cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \xclk_cnt_reg[16]_i_1_n_4\,
      O(2) => \xclk_cnt_reg[16]_i_1_n_5\,
      O(1) => \xclk_cnt_reg[16]_i_1_n_6\,
      O(0) => \xclk_cnt_reg[16]_i_1_n_7\,
      S(3) => \xclk_cnt_reg_n_0_[19]\,
      S(2) => \xclk_cnt_reg_n_0_[18]\,
      S(1) => \xclk_cnt_reg_n_0_[17]\,
      S(0) => \xclk_cnt_reg_n_0_[16]\
    );
\xclk_cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D => \xclk_cnt_reg[16]_i_1_n_6\,
      Q => \xclk_cnt_reg_n_0_[17]\,
      R => '0'
    );
\xclk_cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D => \xclk_cnt_reg[16]_i_1_n_5\,
      Q => \xclk_cnt_reg_n_0_[18]\,
      R => '0'
    );
\xclk_cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D => \xclk_cnt_reg[16]_i_1_n_4\,
      Q => \xclk_cnt_reg_n_0_[19]\,
      R => '0'
    );
\xclk_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D => \xclk_cnt_reg[0]_i_1_n_6\,
      Q => \xclk_cnt_reg_n_0_[1]\,
      R => '0'
    );
\xclk_cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D => \xclk_cnt_reg[23]_i_1_n_7\,
      Q => \xclk_cnt_reg_n_0_[20]\,
      R => '0'
    );
\xclk_cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D => \xclk_cnt_reg[23]_i_1_n_6\,
      Q => \xclk_cnt_reg_n_0_[21]\,
      R => '0'
    );
\xclk_cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D => \xclk_cnt_reg[23]_i_1_n_5\,
      Q => \xclk_cnt_reg_n_0_[22]\,
      R => '0'
    );
\xclk_cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D => \xclk_cnt_reg[23]_i_1_n_4\,
      Q => \^led5_g\,
      R => '0'
    );
\xclk_cnt_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \xclk_cnt_reg[16]_i_1_n_0\,
      CO(3) => \NLW_xclk_cnt_reg[23]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \xclk_cnt_reg[23]_i_1_n_1\,
      CO(1) => \xclk_cnt_reg[23]_i_1_n_2\,
      CO(0) => \xclk_cnt_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \xclk_cnt_reg[23]_i_1_n_4\,
      O(2) => \xclk_cnt_reg[23]_i_1_n_5\,
      O(1) => \xclk_cnt_reg[23]_i_1_n_6\,
      O(0) => \xclk_cnt_reg[23]_i_1_n_7\,
      S(3) => \^led5_g\,
      S(2) => \xclk_cnt_reg_n_0_[22]\,
      S(1) => \xclk_cnt_reg_n_0_[21]\,
      S(0) => \xclk_cnt_reg_n_0_[20]\
    );
\xclk_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D => \xclk_cnt_reg[0]_i_1_n_5\,
      Q => \xclk_cnt_reg_n_0_[2]\,
      R => '0'
    );
\xclk_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D => \xclk_cnt_reg[0]_i_1_n_4\,
      Q => \xclk_cnt_reg_n_0_[3]\,
      R => '0'
    );
\xclk_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D => \xclk_cnt_reg[4]_i_1_n_7\,
      Q => \xclk_cnt_reg_n_0_[4]\,
      R => '0'
    );
\xclk_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \xclk_cnt_reg[0]_i_1_n_0\,
      CO(3) => \xclk_cnt_reg[4]_i_1_n_0\,
      CO(2) => \xclk_cnt_reg[4]_i_1_n_1\,
      CO(1) => \xclk_cnt_reg[4]_i_1_n_2\,
      CO(0) => \xclk_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \xclk_cnt_reg[4]_i_1_n_4\,
      O(2) => \xclk_cnt_reg[4]_i_1_n_5\,
      O(1) => \xclk_cnt_reg[4]_i_1_n_6\,
      O(0) => \xclk_cnt_reg[4]_i_1_n_7\,
      S(3) => \xclk_cnt_reg_n_0_[7]\,
      S(2) => \xclk_cnt_reg_n_0_[6]\,
      S(1) => \xclk_cnt_reg_n_0_[5]\,
      S(0) => \xclk_cnt_reg_n_0_[4]\
    );
\xclk_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D => \xclk_cnt_reg[4]_i_1_n_6\,
      Q => \xclk_cnt_reg_n_0_[5]\,
      R => '0'
    );
\xclk_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D => \xclk_cnt_reg[4]_i_1_n_5\,
      Q => \xclk_cnt_reg_n_0_[6]\,
      R => '0'
    );
\xclk_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D => \xclk_cnt_reg[4]_i_1_n_4\,
      Q => \xclk_cnt_reg_n_0_[7]\,
      R => '0'
    );
\xclk_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D => \xclk_cnt_reg[8]_i_1_n_7\,
      Q => \xclk_cnt_reg_n_0_[8]\,
      R => '0'
    );
\xclk_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \xclk_cnt_reg[4]_i_1_n_0\,
      CO(3) => \xclk_cnt_reg[8]_i_1_n_0\,
      CO(2) => \xclk_cnt_reg[8]_i_1_n_1\,
      CO(1) => \xclk_cnt_reg[8]_i_1_n_2\,
      CO(0) => \xclk_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \xclk_cnt_reg[8]_i_1_n_4\,
      O(2) => \xclk_cnt_reg[8]_i_1_n_5\,
      O(1) => \xclk_cnt_reg[8]_i_1_n_6\,
      O(0) => \xclk_cnt_reg[8]_i_1_n_7\,
      S(3) => \xclk_cnt_reg_n_0_[11]\,
      S(2) => \xclk_cnt_reg_n_0_[10]\,
      S(1) => \xclk_cnt_reg_n_0_[9]\,
      S(0) => \xclk_cnt_reg_n_0_[8]\
    );
\xclk_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => cam_xclk_o,
      CE => '1',
      D => \xclk_cnt_reg[8]_i_1_n_6\,
      Q => \xclk_cnt_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0 is
  port (
    sys_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    hdmi_tx_clk_p : out STD_LOGIC;
    hdmi_tx_clk_n : out STD_LOGIC;
    hdmi_tx_d_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_tx_d_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_tx_hpd : out STD_LOGIC;
    cam_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cam_pclk : in STD_LOGIC;
    cam_href : in STD_LOGIC;
    cam_vsync : in STD_LOGIC;
    cam_xclk : out STD_LOGIC;
    cam_sda : inout STD_LOGIC;
    cam_scl : out STD_LOGIC;
    led_mmcm_locked : out STD_LOGIC;
    led_pixel_active : out STD_LOGIC;
    led_pll_locked : out STD_LOGIC;
    led_vid_locked : out STD_LOGIC;
    led4_g : out STD_LOGIC;
    led5_g : out STD_LOGIC;
    pixel_data : out STD_LOGIC_VECTOR ( 15 downto 0 );
    frame_done : out STD_LOGIC;
    bram_en : out STD_LOGIC;
    pixel_clk : out STD_LOGIC;
    bram_read_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    bram_read_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    bram_read_en : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_top_0_0 : entity is "design_1_top_0_0,top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_top_0_0 : entity is "top,Vivado 2025.2";
end design_1_top_0_0;

architecture STRUCTURE of design_1_top_0_0 is
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of hdmi_tx_clk_n : signal is "digilentinc.com:interface:tmds:1.0 hdmi_tx CLK_N";
  attribute X_INTERFACE_INFO of hdmi_tx_clk_p : signal is "digilentinc.com:interface:tmds:1.0 hdmi_tx CLK_P";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of hdmi_tx_clk_p : signal is "slave";
  attribute X_INTERFACE_INFO of pixel_clk : signal is "xilinx.com:signal:clock:1.0 pixel_clk CLK";
  attribute X_INTERFACE_MODE of pixel_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of pixel_clk : signal is "XIL_INTERFACENAME pixel_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_top_0_0_pixel_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_MODE of rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of sys_clk : signal is "xilinx.com:signal:clock:1.0 sys_clk CLK";
  attribute X_INTERFACE_MODE of sys_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of sys_clk : signal is "XIL_INTERFACENAME sys_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_sys_clk_0, INSERT_VIP 0";
begin
  hdmi_tx_hpd <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_top_0_0_top
     port map (
      Q(0) => bram_read_addr(0),
      bram_en => bram_en,
      bram_read_addr(10 downto 0) => bram_read_addr(11 downto 1),
      bram_read_data(7 downto 0) => bram_read_data(7 downto 0),
      bram_read_en => bram_read_en,
      cam_data(7 downto 0) => cam_data(7 downto 0),
      cam_href => cam_href,
      cam_pclk => cam_pclk,
      cam_scl => cam_scl,
      cam_sda => cam_sda,
      cam_vsync => cam_vsync,
      cam_xclk => cam_xclk,
      frame_done => frame_done,
      hdmi_tx_clk_n => hdmi_tx_clk_n,
      hdmi_tx_clk_p => hdmi_tx_clk_p,
      hdmi_tx_d_n(2 downto 0) => hdmi_tx_d_n(2 downto 0),
      hdmi_tx_d_p(2 downto 0) => hdmi_tx_d_p(2 downto 0),
      led4_g => led4_g,
      led5_g => led5_g,
      led_mmcm_locked => led_mmcm_locked,
      led_pixel_active => led_pixel_active,
      led_pll_locked => led_pll_locked,
      led_vid_locked => led_vid_locked,
      pixel_clk => pixel_clk,
      \pixel_data_reg[15]\(15 downto 0) => pixel_data(15 downto 0),
      rst => rst,
      sys_clk => sys_clk
    );
end STRUCTURE;
