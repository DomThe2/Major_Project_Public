//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Mon Apr 20 16:58:11 2026
//Host        : Doms-Laptop running 64-bit major release  (build 9200)
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "system.hwdef" *) 
module system
   (S_AXIS_CAPTURE_tdata,
    S_AXIS_CAPTURE_tlast,
    S_AXIS_CAPTURE_tready,
    S_AXIS_CAPTURE_tuser,
    S_AXIS_CAPTURE_tvalid,
    aresetn_pixel,
    cam_pclk_i,
    cam_xclk,
    dbg_fifo_m_tvalid,
    fifo_m_tdata,
    hdmi_tx_clk_n,
    hdmi_tx_clk_p,
    hdmi_tx_d_n,
    hdmi_tx_d_p,
    mmcm_locked,
    pixel_clk,
    rgb2dvi_pll_locked,
    sys_clk,
    vid_active_i,
    vid_hsync_i,
    vid_pdata_i,
    vid_vsync_i);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CAPTURE TDATA" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_CAPTURE, CLK_DOMAIN system_cam_pclk_i, FREQ_HZ 24390000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [15:0]S_AXIS_CAPTURE_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CAPTURE TLAST" *) input S_AXIS_CAPTURE_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CAPTURE TREADY" *) output S_AXIS_CAPTURE_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CAPTURE TUSER" *) input [0:0]S_AXIS_CAPTURE_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CAPTURE TVALID" *) input S_AXIS_CAPTURE_tvalid;
  output [0:0]aresetn_pixel;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CAM_PCLK_I CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CAM_PCLK_I, ASSOCIATED_BUSIF S_AXIS_CAPTURE, CLK_DOMAIN system_cam_pclk_i, FREQ_HZ 24390000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input cam_pclk_i;
  output cam_xclk;
  output dbg_fifo_m_tvalid;
  output [15:0]fifo_m_tdata;
  output hdmi_tx_clk_n;
  output hdmi_tx_clk_p;
  output [2:0]hdmi_tx_d_n;
  output [2:0]hdmi_tx_d_p;
  output mmcm_locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PIXEL_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PIXEL_CLK, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 74250000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output pixel_clk;
  output rgb2dvi_pll_locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLK, CLK_DOMAIN system_sys_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sys_clk;
  input vid_active_i;
  input vid_hsync_i;
  input [23:0]vid_pdata_i;
  input vid_vsync_i;

  wire [15:0]S_AXIS_CAPTURE_tdata;
  wire S_AXIS_CAPTURE_tlast;
  wire S_AXIS_CAPTURE_tready;
  wire [0:0]S_AXIS_CAPTURE_tuser;
  wire S_AXIS_CAPTURE_tvalid;
  wire [0:0]aresetn_pixel;
  wire cam_pclk_i;
  wire cam_xclk;
  wire [0:0]const_vcc_dout;
  wire dbg_fifo_m_tvalid;
  wire [15:0]fifo_m_tdata;
  wire hdmi_tx_clk_n;
  wire hdmi_tx_clk_p;
  wire [2:0]hdmi_tx_d_n;
  wire [2:0]hdmi_tx_d_p;
  wire mmcm_locked;
  wire pixel_clk;
  wire rgb2dvi_pll_locked;
  wire sys_clk;
  wire vid_active_i;
  wire vid_hsync_i;
  wire [23:0]vid_pdata_i;
  wire vid_vsync_i;

  system_axis_data_fifo_0_0 axis_data_fifo_0
       (.m_axis_aclk(pixel_clk),
        .m_axis_tdata(fifo_m_tdata),
        .m_axis_tready(const_vcc_dout),
        .m_axis_tvalid(dbg_fifo_m_tvalid),
        .s_axis_aclk(cam_pclk_i),
        .s_axis_aresetn(aresetn_pixel),
        .s_axis_tdata(S_AXIS_CAPTURE_tdata),
        .s_axis_tlast(S_AXIS_CAPTURE_tlast),
        .s_axis_tready(S_AXIS_CAPTURE_tready),
        .s_axis_tuser(S_AXIS_CAPTURE_tuser),
        .s_axis_tvalid(S_AXIS_CAPTURE_tvalid));
  system_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clk),
        .clk_out1(pixel_clk),
        .clk_out2(cam_xclk),
        .locked(mmcm_locked),
        .resetn(const_vcc_dout));
  system_const_vcc_0 const_vcc
       (.dout(const_vcc_dout));
  system_rgb2dvi_0_0 rgb2dvi_0
       (.LockedOut(rgb2dvi_pll_locked),
        .PixelClk(pixel_clk),
        .TMDS_Clk_n(hdmi_tx_clk_n),
        .TMDS_Clk_p(hdmi_tx_clk_p),
        .TMDS_Data_n(hdmi_tx_d_n),
        .TMDS_Data_p(hdmi_tx_d_p),
        .aRst_n(aresetn_pixel),
        .vid_pData(vid_pdata_i),
        .vid_pHSync(vid_hsync_i),
        .vid_pVDE(vid_active_i),
        .vid_pVSync(vid_vsync_i));
  system_rst_pixel_74m_0 rst_pixel_74m
       (.aux_reset_in(1'b1),
        .dcm_locked(mmcm_locked),
        .ext_reset_in(const_vcc_dout),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(aresetn_pixel),
        .slowest_sync_clk(pixel_clk));
endmodule
