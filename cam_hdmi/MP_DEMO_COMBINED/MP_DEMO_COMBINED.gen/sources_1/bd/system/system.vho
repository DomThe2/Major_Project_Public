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

-- MODULE VLNV: amd.com:blockdesign:system:1.0

-- The following code must appear in the VHDL architecture header.

-- COMP_TAG     ------ Begin cut for COMPONENT Declaration ------
COMPONENT system
  PORT (
    sys_clk : IN STD_LOGIC;
    hdmi_tx_clk_p : OUT STD_LOGIC;
    hdmi_tx_clk_n : OUT STD_LOGIC;
    hdmi_tx_d_p : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    hdmi_tx_d_n : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    cam_xclk : OUT STD_LOGIC;
    cam_pclk_i : IN STD_LOGIC;
    pixel_clk : OUT STD_LOGIC;
    mmcm_locked : OUT STD_LOGIC;
    aresetn_pixel : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    rgb2dvi_pll_locked : OUT STD_LOGIC;
    dbg_fifo_m_tvalid : OUT STD_LOGIC;
    fifo_m_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    vid_hsync_i : IN STD_LOGIC;
    vid_vsync_i : IN STD_LOGIC;
    vid_active_i : IN STD_LOGIC;
    vid_pdata_i : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    S_AXIS_CAPTURE_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    S_AXIS_CAPTURE_tlast : IN STD_LOGIC;
    S_AXIS_CAPTURE_tready : OUT STD_LOGIC;
    S_AXIS_CAPTURE_tuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    S_AXIS_CAPTURE_tvalid : IN STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------  End cut for COMPONENT Declaration  ------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

-- INST_TAG     ------ Begin cut for INSTANTIATION Template ------
your_instance_name : system
  PORT MAP (
    sys_clk => sys_clk,
    hdmi_tx_clk_p => hdmi_tx_clk_p,
    hdmi_tx_clk_n => hdmi_tx_clk_n,
    hdmi_tx_d_p => hdmi_tx_d_p,
    hdmi_tx_d_n => hdmi_tx_d_n,
    cam_xclk => cam_xclk,
    cam_pclk_i => cam_pclk_i,
    pixel_clk => pixel_clk,
    mmcm_locked => mmcm_locked,
    aresetn_pixel => aresetn_pixel,
    rgb2dvi_pll_locked => rgb2dvi_pll_locked,
    dbg_fifo_m_tvalid => dbg_fifo_m_tvalid,
    fifo_m_tdata => fifo_m_tdata,
    vid_hsync_i => vid_hsync_i,
    vid_vsync_i => vid_vsync_i,
    vid_active_i => vid_active_i,
    vid_pdata_i => vid_pdata_i,
    S_AXIS_CAPTURE_tdata => S_AXIS_CAPTURE_tdata,
    S_AXIS_CAPTURE_tlast => S_AXIS_CAPTURE_tlast,
    S_AXIS_CAPTURE_tready => S_AXIS_CAPTURE_tready,
    S_AXIS_CAPTURE_tuser => S_AXIS_CAPTURE_tuser,
    S_AXIS_CAPTURE_tvalid => S_AXIS_CAPTURE_tvalid
  );
-- INST_TAG_END ------  End cut for INSTANTIATION Template  ------

-- You must compile the wrapper file system.vhd when simulating
-- the module, system. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.
