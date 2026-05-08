-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Thu May  7 04:39:49 2026
-- Host        : harun running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/harun/Documents/MP/MP_DEMO_COMBINED/MP_DEMO_COMBINED.gen/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_stub.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_top_0_0 is
  Port ( 
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

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_top_0_0 : entity is "design_1_top_0_0,top,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1_top_0_0 : entity is "design_1_top_0_0,top,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=top,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_top_0_0 : entity is "module_ref";
end design_1_top_0_0;

architecture stub of design_1_top_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "sys_clk,rst,hdmi_tx_clk_p,hdmi_tx_clk_n,hdmi_tx_d_p[2:0],hdmi_tx_d_n[2:0],hdmi_tx_hpd,cam_data[7:0],cam_pclk,cam_href,cam_vsync,cam_xclk,cam_sda,cam_scl,led_mmcm_locked,led_pixel_active,led_pll_locked,led_vid_locked,led4_g,led5_g,pixel_data[15:0],frame_done,bram_en,pixel_clk,bram_read_addr[11:0],bram_read_data[7:0],bram_read_en";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of sys_clk : signal is "xilinx.com:signal:clock:1.0 sys_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of sys_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of sys_clk : signal is "XIL_INTERFACENAME sys_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_sys_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_MODE of rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of hdmi_tx_clk_p : signal is "digilentinc.com:interface:tmds:1.0 hdmi_tx CLK_P";
  attribute X_INTERFACE_MODE of hdmi_tx_clk_p : signal is "slave";
  attribute X_INTERFACE_INFO of hdmi_tx_clk_n : signal is "digilentinc.com:interface:tmds:1.0 hdmi_tx CLK_N";
  attribute X_INTERFACE_INFO of pixel_clk : signal is "xilinx.com:signal:clock:1.0 pixel_clk CLK";
  attribute X_INTERFACE_MODE of pixel_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of pixel_clk : signal is "XIL_INTERFACENAME pixel_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_top_0_0_pixel_clk, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "top,Vivado 2025.2";
begin
end;
