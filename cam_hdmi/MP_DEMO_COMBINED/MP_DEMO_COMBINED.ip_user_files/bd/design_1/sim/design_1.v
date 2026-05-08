//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Thu May  7 04:38:17 2026
//Host        : harun running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (cam_data,
    cam_href,
    cam_pclk,
    cam_scl,
    cam_sda,
    cam_vsync,
    cam_xclk,
    hdmi_tx_clk_n,
    hdmi_tx_clk_p,
    hdmi_tx_d_n,
    hdmi_tx_d_p,
    hdmi_tx_hpd,
    led4_g,
    led5_g,
    led_mmcm_locked,
    led_pixel_active,
    led_pll_locked,
    led_vid_locked,
    rst,
    sys_clk);
  input [7:0]cam_data;
  input cam_href;
  input cam_pclk;
  output cam_scl;
  inout cam_sda;
  input cam_vsync;
  output cam_xclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HDMI_TX_CLK_N CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HDMI_TX_CLK_N, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output hdmi_tx_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HDMI_TX_CLK_P CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HDMI_TX_CLK_P, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output hdmi_tx_clk_p;
  output [2:0]hdmi_tx_d_n;
  output [2:0]hdmi_tx_d_p;
  output hdmi_tx_hpd;
  output led4_g;
  output led5_g;
  output led_mmcm_locked;
  output led_pixel_active;
  output led_pll_locked;
  output led_vid_locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLK, ASSOCIATED_RESET rst, CLK_DOMAIN design_1_sys_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sys_clk;

  wire [7:0]cam_data;
  wire cam_href;
  wire cam_pclk;
  wire cam_scl;
  wire cam_sda;
  wire cam_vsync;
  wire cam_xclk;
  wire hdmi_tx_clk_n;
  wire hdmi_tx_clk_p;
  wire [2:0]hdmi_tx_d_n;
  wire [2:0]hdmi_tx_d_p;
  wire hdmi_tx_hpd;
  wire [7:0]image_7_doutb;
  wire led4_g;
  wire led5_g;
  wire led_mmcm_locked;
  wire led_pixel_active;
  wire led_pll_locked;
  wire led_vid_locked;
  wire [11:0]memory_writer_0_write_address;
  wire [7:0]memory_writer_0_write_data;
  wire memory_writer_0_write_en;
  wire rgb565_to_grayscale_8_0_output_valid;
  wire [7:0]rgb565_to_grayscale_8_0_pixel_data_grayscale;
  wire rst;
  wire smoothing_0_output_valid;
  wire [7:0]smoothing_0_pixel_data_avg;
  wire sys_clk;
  wire top_0_bram_en;
  wire [11:0]top_0_bram_read_addr;
  wire top_0_frame_done;
  wire top_0_pixel_clk;
  wire [15:0]top_0_pixel_data;

  design_1_blk_mem_gen_0_0 bram_hdmi_48
       (.addra(memory_writer_0_write_address),
        .addrb(top_0_bram_read_addr),
        .clka(cam_pclk),
        .clkb(top_0_pixel_clk),
        .dina(memory_writer_0_write_data),
        .doutb(image_7_doutb),
        .wea(memory_writer_0_write_en));
  design_1_blk_mem_gen_0_1 image_7
       (.addra(memory_writer_0_write_address),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(cam_pclk),
        .clkb(1'b0),
        .dina(memory_writer_0_write_data),
        .enb(1'b0),
        .wea(memory_writer_0_write_en));
  design_1_memory_writer_0_0 memory_writer_0
       (.clk(cam_pclk),
        .frame_done(top_0_frame_done),
        .pixel_data(smoothing_0_pixel_data_avg),
        .pixel_valid(smoothing_0_output_valid),
        .write_address(memory_writer_0_write_address),
        .write_data(memory_writer_0_write_data),
        .write_en(memory_writer_0_write_en));
  design_1_rgb565_to_grayscale_8_0_0 rgb565_to_grayscale_8_0
       (.input_valid(top_0_bram_en),
        .output_valid(rgb565_to_grayscale_8_0_output_valid),
        .p_clk(cam_pclk),
        .pixel_data_565(top_0_pixel_data),
        .pixel_data_grayscale(rgb565_to_grayscale_8_0_pixel_data_grayscale));
  design_1_smoothing_0_0 smoothing_0
       (.input_valid(rgb565_to_grayscale_8_0_output_valid),
        .output_valid(smoothing_0_output_valid),
        .p_clk(cam_pclk),
        .pixel_data_avg(smoothing_0_pixel_data_avg),
        .pixel_data_grayscale(rgb565_to_grayscale_8_0_pixel_data_grayscale),
        .reset(top_0_frame_done));
  design_1_top_0_0 top_0
       (.bram_en(top_0_bram_en),
        .bram_read_addr(top_0_bram_read_addr),
        .bram_read_data(image_7_doutb),
        .cam_data(cam_data),
        .cam_href(cam_href),
        .cam_pclk(cam_pclk),
        .cam_scl(cam_scl),
        .cam_sda(cam_sda),
        .cam_vsync(cam_vsync),
        .cam_xclk(cam_xclk),
        .frame_done(top_0_frame_done),
        .hdmi_tx_clk_n(hdmi_tx_clk_n),
        .hdmi_tx_clk_p(hdmi_tx_clk_p),
        .hdmi_tx_d_n(hdmi_tx_d_n),
        .hdmi_tx_d_p(hdmi_tx_d_p),
        .hdmi_tx_hpd(hdmi_tx_hpd),
        .led4_g(led4_g),
        .led5_g(led5_g),
        .led_mmcm_locked(led_mmcm_locked),
        .led_pixel_active(led_pixel_active),
        .led_pll_locked(led_pll_locked),
        .led_vid_locked(led_vid_locked),
        .pixel_clk(top_0_pixel_clk),
        .pixel_data(top_0_pixel_data),
        .rst(rst),
        .sys_clk(sys_clk));
endmodule
