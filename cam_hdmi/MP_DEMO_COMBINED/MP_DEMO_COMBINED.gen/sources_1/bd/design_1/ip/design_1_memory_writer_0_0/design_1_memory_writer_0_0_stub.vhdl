-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Thu Apr 23 12:42:35 2026
-- Host        : harun running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/harun/Documents/MP/MP_DEMO_COMBINED/MP_DEMO_COMBINED.gen/sources_1/bd/design_1/ip/design_1_memory_writer_0_0/design_1_memory_writer_0_0_stub.vhdl
-- Design      : design_1_memory_writer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_memory_writer_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    pixel_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pixel_valid : in STD_LOGIC;
    frame_done : in STD_LOGIC;
    write_address : out STD_LOGIC_VECTOR ( 11 downto 0 );
    write_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    write_en : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_memory_writer_0_0 : entity is "design_1_memory_writer_0_0,memory_writer,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1_memory_writer_0_0 : entity is "design_1_memory_writer_0_0,memory_writer,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=memory_writer,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_memory_writer_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_memory_writer_0_0 : entity is "module_ref";
end design_1_memory_writer_0_0;

architecture stub of design_1_memory_writer_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,pixel_data[7:0],pixel_valid,frame_done,write_address[11:0],write_data[7:0],write_en";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "memory_writer,Vivado 2025.2";
begin
end;
