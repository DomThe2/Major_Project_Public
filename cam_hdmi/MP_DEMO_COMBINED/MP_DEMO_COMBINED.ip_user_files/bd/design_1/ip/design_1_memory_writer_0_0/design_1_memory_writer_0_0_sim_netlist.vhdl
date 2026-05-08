-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Thu Apr 23 12:42:35 2026
-- Host        : harun running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/harun/Documents/MP/MP_DEMO_COMBINED/MP_DEMO_COMBINED.gen/sources_1/bd/design_1/ip/design_1_memory_writer_0_0/design_1_memory_writer_0_0_sim_netlist.vhdl
-- Design      : design_1_memory_writer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_memory_writer_0_0_memory_writer is
  port (
    write_address : out STD_LOGIC_VECTOR ( 11 downto 0 );
    write_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    write_en : out STD_LOGIC;
    clk : in STD_LOGIC;
    pixel_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    frame_done : in STD_LOGIC;
    pixel_valid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_memory_writer_0_0_memory_writer : entity is "memory_writer";
end design_1_memory_writer_0_0_memory_writer;

architecture STRUCTURE of design_1_memory_writer_0_0_memory_writer is
  signal \FSM_onehot_FSM_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_FSM_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_FSM_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_FSM_state_reg_n_0_[2]\ : STD_LOGIC;
  signal pixel_counter : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pixel_counter0 : STD_LOGIC;
  signal \pixel_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal pixel_counter_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \pixel_counter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_counter_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \pixel_counter_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \pixel_counter_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \pixel_counter_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \pixel_counter_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \pixel_counter_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \pixel_counter_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \pixel_counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \pixel_counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \pixel_counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \pixel_counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \pixel_counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \pixel_counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \pixel_counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \pixel_counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \pixel_counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \pixel_counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \pixel_counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \pixel_counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \pixel_counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \pixel_counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^write_en\ : STD_LOGIC;
  signal write_en_i_1_n_0 : STD_LOGIC;
  signal \NLW_pixel_counter_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_FSM_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_FSM_state[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_FSM_state_reg[0]\ : label is "FSM_IDLE:001,FSM_WAIT:100,FSM_WRITE:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_FSM_state_reg[1]\ : label is "FSM_IDLE:001,FSM_WAIT:100,FSM_WRITE:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_FSM_state_reg[2]\ : label is "FSM_IDLE:001,FSM_WAIT:100,FSM_WRITE:010";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \pixel_counter_reg[0]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \pixel_counter_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \pixel_counter_reg[8]_i_1\ : label is 35;
begin
  write_en <= \^write_en\;
\FSM_onehot_FSM_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888BFF8B"
    )
        port map (
      I0 => frame_done,
      I1 => \FSM_onehot_FSM_state_reg_n_0_[2]\,
      I2 => pixel_counter(0),
      I3 => pixel_counter0,
      I4 => pixel_valid,
      O => \FSM_onehot_FSM_state[0]_i_1_n_0\
    );
\FSM_onehot_FSM_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C88"
    )
        port map (
      I0 => pixel_counter0,
      I1 => pixel_valid,
      I2 => frame_done,
      I3 => \FSM_onehot_FSM_state_reg_n_0_[2]\,
      O => \FSM_onehot_FSM_state[1]_i_1_n_0\
    );
\FSM_onehot_FSM_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => pixel_counter(0),
      I1 => frame_done,
      I2 => pixel_valid,
      I3 => \FSM_onehot_FSM_state_reg_n_0_[2]\,
      O => \FSM_onehot_FSM_state[2]_i_1_n_0\
    );
\FSM_onehot_FSM_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_FSM_state[0]_i_1_n_0\,
      Q => pixel_counter0,
      R => '0'
    );
\FSM_onehot_FSM_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_FSM_state[1]_i_1_n_0\,
      Q => pixel_counter(0),
      R => '0'
    );
\FSM_onehot_FSM_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_FSM_state[2]_i_1_n_0\,
      Q => \FSM_onehot_FSM_state_reg_n_0_[2]\,
      R => '0'
    );
\pixel_counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pixel_counter_reg(0),
      O => \pixel_counter[0]_i_2_n_0\
    );
\pixel_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => \pixel_counter_reg[0]_i_1_n_7\,
      Q => pixel_counter_reg(0),
      R => pixel_counter0
    );
\pixel_counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pixel_counter_reg[0]_i_1_n_0\,
      CO(2) => \pixel_counter_reg[0]_i_1_n_1\,
      CO(1) => \pixel_counter_reg[0]_i_1_n_2\,
      CO(0) => \pixel_counter_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \pixel_counter_reg[0]_i_1_n_4\,
      O(2) => \pixel_counter_reg[0]_i_1_n_5\,
      O(1) => \pixel_counter_reg[0]_i_1_n_6\,
      O(0) => \pixel_counter_reg[0]_i_1_n_7\,
      S(3 downto 1) => pixel_counter_reg(3 downto 1),
      S(0) => \pixel_counter[0]_i_2_n_0\
    );
\pixel_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => \pixel_counter_reg[8]_i_1_n_5\,
      Q => pixel_counter_reg(10),
      R => pixel_counter0
    );
\pixel_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => \pixel_counter_reg[8]_i_1_n_4\,
      Q => pixel_counter_reg(11),
      R => pixel_counter0
    );
\pixel_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => \pixel_counter_reg[0]_i_1_n_6\,
      Q => pixel_counter_reg(1),
      R => pixel_counter0
    );
\pixel_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => \pixel_counter_reg[0]_i_1_n_5\,
      Q => pixel_counter_reg(2),
      R => pixel_counter0
    );
\pixel_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => \pixel_counter_reg[0]_i_1_n_4\,
      Q => pixel_counter_reg(3),
      R => pixel_counter0
    );
\pixel_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => \pixel_counter_reg[4]_i_1_n_7\,
      Q => pixel_counter_reg(4),
      R => pixel_counter0
    );
\pixel_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_counter_reg[0]_i_1_n_0\,
      CO(3) => \pixel_counter_reg[4]_i_1_n_0\,
      CO(2) => \pixel_counter_reg[4]_i_1_n_1\,
      CO(1) => \pixel_counter_reg[4]_i_1_n_2\,
      CO(0) => \pixel_counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pixel_counter_reg[4]_i_1_n_4\,
      O(2) => \pixel_counter_reg[4]_i_1_n_5\,
      O(1) => \pixel_counter_reg[4]_i_1_n_6\,
      O(0) => \pixel_counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => pixel_counter_reg(7 downto 4)
    );
\pixel_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => \pixel_counter_reg[4]_i_1_n_6\,
      Q => pixel_counter_reg(5),
      R => pixel_counter0
    );
\pixel_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => \pixel_counter_reg[4]_i_1_n_5\,
      Q => pixel_counter_reg(6),
      R => pixel_counter0
    );
\pixel_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => \pixel_counter_reg[4]_i_1_n_4\,
      Q => pixel_counter_reg(7),
      R => pixel_counter0
    );
\pixel_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => \pixel_counter_reg[8]_i_1_n_7\,
      Q => pixel_counter_reg(8),
      R => pixel_counter0
    );
\pixel_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pixel_counter_reg[4]_i_1_n_0\,
      CO(3) => \NLW_pixel_counter_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \pixel_counter_reg[8]_i_1_n_1\,
      CO(1) => \pixel_counter_reg[8]_i_1_n_2\,
      CO(0) => \pixel_counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pixel_counter_reg[8]_i_1_n_4\,
      O(2) => \pixel_counter_reg[8]_i_1_n_5\,
      O(1) => \pixel_counter_reg[8]_i_1_n_6\,
      O(0) => \pixel_counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => pixel_counter_reg(11 downto 8)
    );
\pixel_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => \pixel_counter_reg[8]_i_1_n_6\,
      Q => pixel_counter_reg(9),
      R => pixel_counter0
    );
\write_address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => pixel_counter_reg(0),
      Q => write_address(0),
      R => pixel_counter0
    );
\write_address_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => pixel_counter_reg(10),
      Q => write_address(10),
      R => pixel_counter0
    );
\write_address_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => pixel_counter_reg(11),
      Q => write_address(11),
      R => pixel_counter0
    );
\write_address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => pixel_counter_reg(1),
      Q => write_address(1),
      R => pixel_counter0
    );
\write_address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => pixel_counter_reg(2),
      Q => write_address(2),
      R => pixel_counter0
    );
\write_address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => pixel_counter_reg(3),
      Q => write_address(3),
      R => pixel_counter0
    );
\write_address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => pixel_counter_reg(4),
      Q => write_address(4),
      R => pixel_counter0
    );
\write_address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => pixel_counter_reg(5),
      Q => write_address(5),
      R => pixel_counter0
    );
\write_address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => pixel_counter_reg(6),
      Q => write_address(6),
      R => pixel_counter0
    );
\write_address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => pixel_counter_reg(7),
      Q => write_address(7),
      R => pixel_counter0
    );
\write_address_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => pixel_counter_reg(8),
      Q => write_address(8),
      R => pixel_counter0
    );
\write_address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => pixel_counter_reg(9),
      Q => write_address(9),
      R => pixel_counter0
    );
\write_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => pixel_data(0),
      Q => write_data(0),
      R => pixel_counter0
    );
\write_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => pixel_data(1),
      Q => write_data(1),
      R => pixel_counter0
    );
\write_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => pixel_data(2),
      Q => write_data(2),
      R => pixel_counter0
    );
\write_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => pixel_data(3),
      Q => write_data(3),
      R => pixel_counter0
    );
\write_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => pixel_data(4),
      Q => write_data(4),
      R => pixel_counter0
    );
\write_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => pixel_data(5),
      Q => write_data(5),
      R => pixel_counter0
    );
\write_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => pixel_data(6),
      Q => write_data(6),
      R => pixel_counter0
    );
\write_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => pixel_counter(0),
      D => pixel_data(7),
      Q => write_data(7),
      R => pixel_counter0
    );
write_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => pixel_counter(0),
      I1 => pixel_counter0,
      I2 => \FSM_onehot_FSM_state_reg_n_0_[2]\,
      I3 => \^write_en\,
      O => write_en_i_1_n_0
    );
write_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => write_en_i_1_n_0,
      Q => \^write_en\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_memory_writer_0_0 is
  port (
    clk : in STD_LOGIC;
    pixel_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pixel_valid : in STD_LOGIC;
    frame_done : in STD_LOGIC;
    write_address : out STD_LOGIC_VECTOR ( 11 downto 0 );
    write_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    write_en : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_memory_writer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_memory_writer_0_0 : entity is "design_1_memory_writer_0_0,memory_writer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_memory_writer_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_memory_writer_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_memory_writer_0_0 : entity is "memory_writer,Vivado 2025.2";
end design_1_memory_writer_0_0;

architecture STRUCTURE of design_1_memory_writer_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
inst: entity work.design_1_memory_writer_0_0_memory_writer
     port map (
      clk => clk,
      frame_done => frame_done,
      pixel_data(7 downto 0) => pixel_data(7 downto 0),
      pixel_valid => pixel_valid,
      write_address(11 downto 0) => write_address(11 downto 0),
      write_data(7 downto 0) => write_data(7 downto 0),
      write_en => write_en
    );
end STRUCTURE;
