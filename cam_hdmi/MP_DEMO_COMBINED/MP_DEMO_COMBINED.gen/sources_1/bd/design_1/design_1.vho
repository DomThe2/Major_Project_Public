-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
-- -------------------------------------------------------------------------------
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
-- DO NOT MODIFY THIS FILE.

-- MODULE VLNV: amd.com:blockdesign:design_1:1.0

-- The following code must appear in the VHDL architecture header.

-- COMP_TAG     ------ Begin cut for COMPONENT Declaration ------
COMPONENT design_1
  PORT (
    cam_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    cam_href : IN STD_LOGIC;
    cam_pclk : IN STD_LOGIC;
    cam_scl : OUT STD_LOGIC;
    cam_sda : INOUT STD_LOGIC;
    cam_vsync : IN STD_LOGIC;
    cam_xclk : OUT STD_LOGIC;
    hdmi_tx_d_n : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    hdmi_tx_d_p : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    hdmi_tx_hpd : OUT STD_LOGIC;
    led4_g : OUT STD_LOGIC;
    led5_g : OUT STD_LOGIC;
    led_mmcm_locked : OUT STD_LOGIC;
    led_pixel_active : OUT STD_LOGIC;
    led_pll_locked : OUT STD_LOGIC;
    led_vid_locked : OUT STD_LOGIC;
    sys_clk : IN STD_LOGIC;
    hdmi_tx_clk_p : OUT STD_LOGIC;
    hdmi_tx_clk_n : OUT STD_LOGIC;
    rst : IN STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------  End cut for COMPONENT Declaration  ------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

-- INST_TAG     ------ Begin cut for INSTANTIATION Template ------
your_instance_name : design_1
  PORT MAP (
    cam_data => cam_data,
    cam_href => cam_href,
    cam_pclk => cam_pclk,
    cam_scl => cam_scl,
    cam_sda => cam_sda,
    cam_vsync => cam_vsync,
    cam_xclk => cam_xclk,
    hdmi_tx_d_n => hdmi_tx_d_n,
    hdmi_tx_d_p => hdmi_tx_d_p,
    hdmi_tx_hpd => hdmi_tx_hpd,
    led4_g => led4_g,
    led5_g => led5_g,
    led_mmcm_locked => led_mmcm_locked,
    led_pixel_active => led_pixel_active,
    led_pll_locked => led_pll_locked,
    led_vid_locked => led_vid_locked,
    sys_clk => sys_clk,
    hdmi_tx_clk_p => hdmi_tx_clk_p,
    hdmi_tx_clk_n => hdmi_tx_clk_n,
    rst => rst
  );
-- INST_TAG_END ------  End cut for INSTANTIATION Template  ------

-- You must compile the wrapper file design_1.vhd when simulating
-- the module, design_1. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.
