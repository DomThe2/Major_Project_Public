// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu May  7 04:39:49 2026
// Host        : harun running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/harun/Documents/MP/MP_DEMO_COMBINED/MP_DEMO_COMBINED.gen/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.v
// Design      : design_1_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_top_0_0,top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "top,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_top_0_0
   (sys_clk,
    rst,
    hdmi_tx_clk_p,
    hdmi_tx_clk_n,
    hdmi_tx_d_p,
    hdmi_tx_d_n,
    hdmi_tx_hpd,
    cam_data,
    cam_pclk,
    cam_href,
    cam_vsync,
    cam_xclk,
    cam_sda,
    cam_scl,
    led_mmcm_locked,
    led_pixel_active,
    led_pll_locked,
    led_vid_locked,
    led4_g,
    led5_g,
    pixel_data,
    frame_done,
    bram_en,
    pixel_clk,
    bram_read_addr,
    bram_read_data,
    bram_read_en);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_sys_clk_0, INSERT_VIP 0" *) input sys_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_tx CLK_P" *) (* X_INTERFACE_MODE = "slave" *) output hdmi_tx_clk_p;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 hdmi_tx CLK_N" *) output hdmi_tx_clk_n;
  output [2:0]hdmi_tx_d_p;
  output [2:0]hdmi_tx_d_n;
  output hdmi_tx_hpd;
  input [7:0]cam_data;
  input cam_pclk;
  input cam_href;
  input cam_vsync;
  output cam_xclk;
  inout cam_sda;
  output cam_scl;
  output led_mmcm_locked;
  output led_pixel_active;
  output led_pll_locked;
  output led_vid_locked;
  output led4_g;
  output led5_g;
  output [15:0]pixel_data;
  output frame_done;
  output bram_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pixel_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pixel_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_top_0_0_pixel_clk, INSERT_VIP 0" *) output pixel_clk;
  output [11:0]bram_read_addr;
  input [7:0]bram_read_data;
  output bram_read_en;

  wire \<const1> ;
  wire bram_en;
  wire [11:0]bram_read_addr;
  wire [7:0]bram_read_data;
  wire bram_read_en;
  wire [7:0]cam_data;
  wire cam_href;
  wire cam_pclk;
  wire cam_scl;
  wire cam_sda;
  wire cam_vsync;
  wire cam_xclk;
  wire frame_done;
  wire hdmi_tx_clk_n;
  wire hdmi_tx_clk_p;
  wire [2:0]hdmi_tx_d_n;
  wire [2:0]hdmi_tx_d_p;
  wire led4_g;
  wire led5_g;
  wire led_mmcm_locked;
  wire led_pixel_active;
  wire led_pll_locked;
  wire led_vid_locked;
  wire pixel_clk;
  wire [15:0]pixel_data;
  wire rst;
  wire sys_clk;

  assign hdmi_tx_hpd = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  design_1_top_0_0_top inst
       (.Q(bram_read_addr[0]),
        .bram_en(bram_en),
        .bram_read_addr(bram_read_addr[11:1]),
        .bram_read_data(bram_read_data),
        .bram_read_en(bram_read_en),
        .cam_data(cam_data),
        .cam_href(cam_href),
        .cam_pclk(cam_pclk),
        .cam_scl(cam_scl),
        .cam_sda(cam_sda),
        .cam_vsync(cam_vsync),
        .cam_xclk(cam_xclk),
        .frame_done(frame_done),
        .hdmi_tx_clk_n(hdmi_tx_clk_n),
        .hdmi_tx_clk_p(hdmi_tx_clk_p),
        .hdmi_tx_d_n(hdmi_tx_d_n),
        .hdmi_tx_d_p(hdmi_tx_d_p),
        .led4_g(led4_g),
        .led5_g(led5_g),
        .led_mmcm_locked(led_mmcm_locked),
        .led_pixel_active(led_pixel_active),
        .led_pll_locked(led_pll_locked),
        .led_vid_locked(led_vid_locked),
        .pixel_clk(pixel_clk),
        .\pixel_data_reg[15] (pixel_data),
        .rst(rst),
        .sys_clk(sys_clk));
endmodule

(* ORIG_REF_NAME = "OV7670_config_FSM" *) 
module design_1_top_0_0_OV7670_config_FSM
   (SCCB_start,
    FSM_state,
    Q,
    \SCCB_interface_addr_reg[7]_0 ,
    \SCCB_interface_data_reg[7]_0 ,
    pixel_clk,
    \FSM_state_reg[0]_0 ,
    \timer_reg[1]_0 ,
    SCCB_ready,
    \timer_reg[1]_1 ,
    \FSM_state_reg[1]_0 ,
    \FSM_state_reg[1]_1 ,
    \timer_reg[0]_0 ,
    E,
    out,
    \rom_addr_reg[0]_0 );
  output SCCB_start;
  output [1:0]FSM_state;
  output [7:0]Q;
  output [7:0]\SCCB_interface_addr_reg[7]_0 ;
  output [7:0]\SCCB_interface_data_reg[7]_0 ;
  input pixel_clk;
  input \FSM_state_reg[0]_0 ;
  input \timer_reg[1]_0 ;
  input SCCB_ready;
  input \timer_reg[1]_1 ;
  input \FSM_state_reg[1]_0 ;
  input \FSM_state_reg[1]_1 ;
  input \timer_reg[0]_0 ;
  input [0:0]E;
  input [15:0]out;
  input [0:0]\rom_addr_reg[0]_0 ;

  wire [0:0]E;
  wire [1:0]FSM_state;
  wire \FSM_state[1]_i_13_n_0 ;
  wire \FSM_state[1]_i_14_n_0 ;
  wire \FSM_state[1]_i_1_n_0 ;
  wire \FSM_state[1]_i_2_n_0 ;
  wire \FSM_state[1]_i_5_n_0 ;
  wire \FSM_state[1]_i_6_n_0 ;
  wire \FSM_state[1]_i_7_n_0 ;
  wire \FSM_state_reg[0]_0 ;
  wire \FSM_state_reg[1]_0 ;
  wire \FSM_state_reg[1]_1 ;
  wire [7:0]Q;
  wire [7:0]\SCCB_interface_addr_reg[7]_0 ;
  wire [7:0]\SCCB_interface_data_reg[7]_0 ;
  wire SCCB_interface_start_i_1_n_0;
  wire SCCB_ready;
  wire SCCB_start;
  wire [31:1]data0;
  wire [15:0]out;
  wire [7:0]p_0_in;
  wire pixel_clk;
  wire \rom_addr[7]_i_1_n_0 ;
  wire \rom_addr[7]_i_4_n_0 ;
  wire [0:0]\rom_addr_reg[0]_0 ;
  wire [31:0]timer;
  wire timer1_carry__0_i_1__0_n_0;
  wire timer1_carry__0_i_2__0_n_0;
  wire timer1_carry__0_i_3__0_n_0;
  wire timer1_carry__0_i_4__0_n_0;
  wire timer1_carry__0_n_0;
  wire timer1_carry__0_n_1;
  wire timer1_carry__0_n_2;
  wire timer1_carry__0_n_3;
  wire timer1_carry__1_i_1__0_n_0;
  wire timer1_carry__1_i_2__0_n_0;
  wire timer1_carry__1_i_3__0_n_0;
  wire timer1_carry__1_i_4__0_n_0;
  wire timer1_carry__1_n_0;
  wire timer1_carry__1_n_1;
  wire timer1_carry__1_n_2;
  wire timer1_carry__1_n_3;
  wire timer1_carry__2_i_1__0_n_0;
  wire timer1_carry__2_i_2__0_n_0;
  wire timer1_carry__2_i_3__0_n_0;
  wire timer1_carry__2_i_4__0_n_0;
  wire timer1_carry__2_n_0;
  wire timer1_carry__2_n_1;
  wire timer1_carry__2_n_2;
  wire timer1_carry__2_n_3;
  wire timer1_carry__3_i_1__0_n_0;
  wire timer1_carry__3_i_2__0_n_0;
  wire timer1_carry__3_i_3__0_n_0;
  wire timer1_carry__3_i_4__0_n_0;
  wire timer1_carry__3_n_0;
  wire timer1_carry__3_n_1;
  wire timer1_carry__3_n_2;
  wire timer1_carry__3_n_3;
  wire timer1_carry__4_i_1__0_n_0;
  wire timer1_carry__4_i_2__0_n_0;
  wire timer1_carry__4_i_3__0_n_0;
  wire timer1_carry__4_i_4__0_n_0;
  wire timer1_carry__4_n_0;
  wire timer1_carry__4_n_1;
  wire timer1_carry__4_n_2;
  wire timer1_carry__4_n_3;
  wire timer1_carry__5_i_1__0_n_0;
  wire timer1_carry__5_i_2__0_n_0;
  wire timer1_carry__5_i_3__0_n_0;
  wire timer1_carry__5_i_4__0_n_0;
  wire timer1_carry__5_n_0;
  wire timer1_carry__5_n_1;
  wire timer1_carry__5_n_2;
  wire timer1_carry__5_n_3;
  wire timer1_carry__6_i_1__0_n_0;
  wire timer1_carry__6_i_2__0_n_0;
  wire timer1_carry__6_i_3__0_n_0;
  wire timer1_carry__6_n_2;
  wire timer1_carry__6_n_3;
  wire timer1_carry_i_1__0_n_0;
  wire timer1_carry_i_2__0_n_0;
  wire timer1_carry_i_3__0_n_0;
  wire timer1_carry_i_4__0_n_0;
  wire timer1_carry_n_0;
  wire timer1_carry_n_1;
  wire timer1_carry_n_2;
  wire timer1_carry_n_3;
  wire \timer[0]_i_1_n_0 ;
  wire \timer[10]_i_1__0_n_0 ;
  wire \timer[12]_i_1_n_0 ;
  wire \timer[14]_i_1_n_0 ;
  wire \timer[16]_i_1_n_0 ;
  wire \timer[17]_i_1_n_0 ;
  wire \timer[19]_i_1_n_0 ;
  wire \timer[19]_i_2_n_0 ;
  wire \timer[2]_i_1_n_0 ;
  wire \timer[31]_i_11_n_0 ;
  wire \timer[31]_i_12_n_0 ;
  wire \timer[31]_i_1_n_0 ;
  wire \timer[31]_i_2_n_0 ;
  wire \timer[31]_i_3_n_0 ;
  wire \timer[31]_i_5_n_0 ;
  wire \timer[31]_i_6_n_0 ;
  wire \timer[31]_i_7_n_0 ;
  wire \timer[5]_i_1__0_n_0 ;
  wire \timer[6]_i_1_n_0 ;
  wire \timer_reg[0]_0 ;
  wire \timer_reg[1]_0 ;
  wire \timer_reg[1]_1 ;
  wire [3:2]NLW_timer1_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_timer1_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFA8A8A800AAAAAA)) 
    \FSM_state[1]_i_1 
       (.I0(FSM_state[0]),
        .I1(timer[0]),
        .I2(\FSM_state[1]_i_2_n_0 ),
        .I3(\FSM_state_reg[1]_0 ),
        .I4(\FSM_state_reg[1]_1 ),
        .I5(FSM_state[1]),
        .O(\FSM_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_state[1]_i_13 
       (.I0(timer[20]),
        .I1(timer[21]),
        .I2(timer[19]),
        .I3(timer[18]),
        .O(\FSM_state[1]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_state[1]_i_14 
       (.I0(timer[13]),
        .I1(timer[12]),
        .I2(timer[10]),
        .I3(timer[11]),
        .O(\FSM_state[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_state[1]_i_2 
       (.I0(\FSM_state[1]_i_5_n_0 ),
        .I1(timer[30]),
        .I2(timer[31]),
        .I3(timer[1]),
        .I4(\FSM_state[1]_i_6_n_0 ),
        .I5(\FSM_state[1]_i_7_n_0 ),
        .O(\FSM_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_state[1]_i_5 
       (.I0(timer[24]),
        .I1(timer[23]),
        .I2(timer[22]),
        .I3(timer[25]),
        .I4(\FSM_state[1]_i_13_n_0 ),
        .O(\FSM_state[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_state[1]_i_6 
       (.I0(timer[28]),
        .I1(timer[29]),
        .I2(timer[26]),
        .I3(timer[27]),
        .O(\FSM_state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_state[1]_i_7 
       (.I0(\FSM_state[1]_i_14_n_0 ),
        .I1(timer[16]),
        .I2(timer[14]),
        .I3(timer[15]),
        .I4(timer[17]),
        .I5(\timer[31]_i_6_n_0 ),
        .O(\FSM_state[1]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_state_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\FSM_state_reg[0]_0 ),
        .Q(FSM_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_state_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\FSM_state[1]_i_1_n_0 ),
        .Q(FSM_state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SCCB_interface_addr_reg[0] 
       (.C(pixel_clk),
        .CE(E),
        .D(out[8]),
        .Q(\SCCB_interface_addr_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SCCB_interface_addr_reg[1] 
       (.C(pixel_clk),
        .CE(E),
        .D(out[9]),
        .Q(\SCCB_interface_addr_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SCCB_interface_addr_reg[2] 
       (.C(pixel_clk),
        .CE(E),
        .D(out[10]),
        .Q(\SCCB_interface_addr_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SCCB_interface_addr_reg[3] 
       (.C(pixel_clk),
        .CE(E),
        .D(out[11]),
        .Q(\SCCB_interface_addr_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SCCB_interface_addr_reg[4] 
       (.C(pixel_clk),
        .CE(E),
        .D(out[12]),
        .Q(\SCCB_interface_addr_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SCCB_interface_addr_reg[5] 
       (.C(pixel_clk),
        .CE(E),
        .D(out[13]),
        .Q(\SCCB_interface_addr_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SCCB_interface_addr_reg[6] 
       (.C(pixel_clk),
        .CE(E),
        .D(out[14]),
        .Q(\SCCB_interface_addr_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SCCB_interface_addr_reg[7] 
       (.C(pixel_clk),
        .CE(E),
        .D(out[15]),
        .Q(\SCCB_interface_addr_reg[7]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SCCB_interface_data_reg[0] 
       (.C(pixel_clk),
        .CE(E),
        .D(out[0]),
        .Q(\SCCB_interface_data_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SCCB_interface_data_reg[1] 
       (.C(pixel_clk),
        .CE(E),
        .D(out[1]),
        .Q(\SCCB_interface_data_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SCCB_interface_data_reg[2] 
       (.C(pixel_clk),
        .CE(E),
        .D(out[2]),
        .Q(\SCCB_interface_data_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SCCB_interface_data_reg[3] 
       (.C(pixel_clk),
        .CE(E),
        .D(out[3]),
        .Q(\SCCB_interface_data_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SCCB_interface_data_reg[4] 
       (.C(pixel_clk),
        .CE(E),
        .D(out[4]),
        .Q(\SCCB_interface_data_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SCCB_interface_data_reg[5] 
       (.C(pixel_clk),
        .CE(E),
        .D(out[5]),
        .Q(\SCCB_interface_data_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SCCB_interface_data_reg[6] 
       (.C(pixel_clk),
        .CE(E),
        .D(out[6]),
        .Q(\SCCB_interface_data_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SCCB_interface_data_reg[7] 
       (.C(pixel_clk),
        .CE(E),
        .D(out[7]),
        .Q(\SCCB_interface_data_reg[7]_0 [7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000AABAAAAAAAAA)) 
    SCCB_interface_start_i_1
       (.I0(SCCB_start),
        .I1(\timer_reg[1]_0 ),
        .I2(SCCB_ready),
        .I3(\timer_reg[1]_1 ),
        .I4(FSM_state[1]),
        .I5(FSM_state[0]),
        .O(SCCB_interface_start_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    SCCB_interface_start_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .D(SCCB_interface_start_i_1_n_0),
        .Q(SCCB_start),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rom_addr[0]_i_1 
       (.I0(Q[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rom_addr[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rom_addr[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rom_addr[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rom_addr[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \rom_addr[5]_i_1 
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rom_addr[6]_i_1 
       (.I0(Q[6]),
        .I1(\rom_addr[7]_i_4_n_0 ),
        .I2(Q[5]),
        .O(p_0_in[6]));
  LUT2 #(
    .INIT(4'h1)) 
    \rom_addr[7]_i_1 
       (.I0(FSM_state[0]),
        .I1(FSM_state[1]),
        .O(\rom_addr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rom_addr[7]_i_3 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\rom_addr[7]_i_4_n_0 ),
        .I3(Q[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \rom_addr[7]_i_4 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\rom_addr[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rom_addr_reg[0] 
       (.C(pixel_clk),
        .CE(\rom_addr_reg[0]_0 ),
        .D(p_0_in[0]),
        .Q(Q[0]),
        .R(\rom_addr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rom_addr_reg[1] 
       (.C(pixel_clk),
        .CE(\rom_addr_reg[0]_0 ),
        .D(p_0_in[1]),
        .Q(Q[1]),
        .R(\rom_addr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rom_addr_reg[2] 
       (.C(pixel_clk),
        .CE(\rom_addr_reg[0]_0 ),
        .D(p_0_in[2]),
        .Q(Q[2]),
        .R(\rom_addr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rom_addr_reg[3] 
       (.C(pixel_clk),
        .CE(\rom_addr_reg[0]_0 ),
        .D(p_0_in[3]),
        .Q(Q[3]),
        .R(\rom_addr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rom_addr_reg[4] 
       (.C(pixel_clk),
        .CE(\rom_addr_reg[0]_0 ),
        .D(p_0_in[4]),
        .Q(Q[4]),
        .R(\rom_addr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rom_addr_reg[5] 
       (.C(pixel_clk),
        .CE(\rom_addr_reg[0]_0 ),
        .D(p_0_in[5]),
        .Q(Q[5]),
        .R(\rom_addr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rom_addr_reg[6] 
       (.C(pixel_clk),
        .CE(\rom_addr_reg[0]_0 ),
        .D(p_0_in[6]),
        .Q(Q[6]),
        .R(\rom_addr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rom_addr_reg[7] 
       (.C(pixel_clk),
        .CE(\rom_addr_reg[0]_0 ),
        .D(p_0_in[7]),
        .Q(Q[7]),
        .R(\rom_addr[7]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer1_carry
       (.CI(1'b0),
        .CO({timer1_carry_n_0,timer1_carry_n_1,timer1_carry_n_2,timer1_carry_n_3}),
        .CYINIT(timer[0]),
        .DI(timer[4:1]),
        .O(data0[4:1]),
        .S({timer1_carry_i_1__0_n_0,timer1_carry_i_2__0_n_0,timer1_carry_i_3__0_n_0,timer1_carry_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer1_carry__0
       (.CI(timer1_carry_n_0),
        .CO({timer1_carry__0_n_0,timer1_carry__0_n_1,timer1_carry__0_n_2,timer1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(timer[8:5]),
        .O(data0[8:5]),
        .S({timer1_carry__0_i_1__0_n_0,timer1_carry__0_i_2__0_n_0,timer1_carry__0_i_3__0_n_0,timer1_carry__0_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__0_i_1__0
       (.I0(timer[8]),
        .O(timer1_carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__0_i_2__0
       (.I0(timer[7]),
        .O(timer1_carry__0_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__0_i_3__0
       (.I0(timer[6]),
        .O(timer1_carry__0_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__0_i_4__0
       (.I0(timer[5]),
        .O(timer1_carry__0_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer1_carry__1
       (.CI(timer1_carry__0_n_0),
        .CO({timer1_carry__1_n_0,timer1_carry__1_n_1,timer1_carry__1_n_2,timer1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(timer[12:9]),
        .O(data0[12:9]),
        .S({timer1_carry__1_i_1__0_n_0,timer1_carry__1_i_2__0_n_0,timer1_carry__1_i_3__0_n_0,timer1_carry__1_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__1_i_1__0
       (.I0(timer[12]),
        .O(timer1_carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__1_i_2__0
       (.I0(timer[11]),
        .O(timer1_carry__1_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__1_i_3__0
       (.I0(timer[10]),
        .O(timer1_carry__1_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__1_i_4__0
       (.I0(timer[9]),
        .O(timer1_carry__1_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer1_carry__2
       (.CI(timer1_carry__1_n_0),
        .CO({timer1_carry__2_n_0,timer1_carry__2_n_1,timer1_carry__2_n_2,timer1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(timer[16:13]),
        .O(data0[16:13]),
        .S({timer1_carry__2_i_1__0_n_0,timer1_carry__2_i_2__0_n_0,timer1_carry__2_i_3__0_n_0,timer1_carry__2_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__2_i_1__0
       (.I0(timer[16]),
        .O(timer1_carry__2_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__2_i_2__0
       (.I0(timer[15]),
        .O(timer1_carry__2_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__2_i_3__0
       (.I0(timer[14]),
        .O(timer1_carry__2_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__2_i_4__0
       (.I0(timer[13]),
        .O(timer1_carry__2_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer1_carry__3
       (.CI(timer1_carry__2_n_0),
        .CO({timer1_carry__3_n_0,timer1_carry__3_n_1,timer1_carry__3_n_2,timer1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(timer[20:17]),
        .O(data0[20:17]),
        .S({timer1_carry__3_i_1__0_n_0,timer1_carry__3_i_2__0_n_0,timer1_carry__3_i_3__0_n_0,timer1_carry__3_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__3_i_1__0
       (.I0(timer[20]),
        .O(timer1_carry__3_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__3_i_2__0
       (.I0(timer[19]),
        .O(timer1_carry__3_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__3_i_3__0
       (.I0(timer[18]),
        .O(timer1_carry__3_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__3_i_4__0
       (.I0(timer[17]),
        .O(timer1_carry__3_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer1_carry__4
       (.CI(timer1_carry__3_n_0),
        .CO({timer1_carry__4_n_0,timer1_carry__4_n_1,timer1_carry__4_n_2,timer1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(timer[24:21]),
        .O(data0[24:21]),
        .S({timer1_carry__4_i_1__0_n_0,timer1_carry__4_i_2__0_n_0,timer1_carry__4_i_3__0_n_0,timer1_carry__4_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__4_i_1__0
       (.I0(timer[24]),
        .O(timer1_carry__4_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__4_i_2__0
       (.I0(timer[23]),
        .O(timer1_carry__4_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__4_i_3__0
       (.I0(timer[22]),
        .O(timer1_carry__4_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__4_i_4__0
       (.I0(timer[21]),
        .O(timer1_carry__4_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer1_carry__5
       (.CI(timer1_carry__4_n_0),
        .CO({timer1_carry__5_n_0,timer1_carry__5_n_1,timer1_carry__5_n_2,timer1_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(timer[28:25]),
        .O(data0[28:25]),
        .S({timer1_carry__5_i_1__0_n_0,timer1_carry__5_i_2__0_n_0,timer1_carry__5_i_3__0_n_0,timer1_carry__5_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__5_i_1__0
       (.I0(timer[28]),
        .O(timer1_carry__5_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__5_i_2__0
       (.I0(timer[27]),
        .O(timer1_carry__5_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__5_i_3__0
       (.I0(timer[26]),
        .O(timer1_carry__5_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__5_i_4__0
       (.I0(timer[25]),
        .O(timer1_carry__5_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer1_carry__6
       (.CI(timer1_carry__5_n_0),
        .CO({NLW_timer1_carry__6_CO_UNCONNECTED[3:2],timer1_carry__6_n_2,timer1_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,timer[30:29]}),
        .O({NLW_timer1_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,timer1_carry__6_i_1__0_n_0,timer1_carry__6_i_2__0_n_0,timer1_carry__6_i_3__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__6_i_1__0
       (.I0(timer[31]),
        .O(timer1_carry__6_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__6_i_2__0
       (.I0(timer[30]),
        .O(timer1_carry__6_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__6_i_3__0
       (.I0(timer[29]),
        .O(timer1_carry__6_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry_i_1__0
       (.I0(timer[4]),
        .O(timer1_carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry_i_2__0
       (.I0(timer[3]),
        .O(timer1_carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry_i_3__0
       (.I0(timer[2]),
        .O(timer1_carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry_i_4__0
       (.I0(timer[1]),
        .O(timer1_carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h000003FF88888800)) 
    \timer[0]_i_1 
       (.I0(\FSM_state[1]_i_2_n_0 ),
        .I1(FSM_state[1]),
        .I2(\timer_reg[1]_0 ),
        .I3(FSM_state[0]),
        .I4(\timer_reg[0]_0 ),
        .I5(timer[0]),
        .O(\timer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer[10]_i_1__0 
       (.I0(data0[10]),
        .I1(\timer[31]_i_3_n_0 ),
        .O(\timer[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer[12]_i_1 
       (.I0(data0[12]),
        .I1(\timer[31]_i_3_n_0 ),
        .O(\timer[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer[14]_i_1 
       (.I0(data0[14]),
        .I1(\timer[31]_i_3_n_0 ),
        .O(\timer[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer[16]_i_1 
       (.I0(data0[16]),
        .I1(\timer[31]_i_3_n_0 ),
        .O(\timer[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer[17]_i_1 
       (.I0(data0[17]),
        .I1(\timer[31]_i_3_n_0 ),
        .O(\timer[17]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \timer[19]_i_1 
       (.I0(FSM_state[0]),
        .I1(\timer_reg[1]_0 ),
        .I2(FSM_state[1]),
        .O(\timer[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer[19]_i_2 
       (.I0(data0[19]),
        .I1(\timer[31]_i_3_n_0 ),
        .O(\timer[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \timer[2]_i_1 
       (.I0(data0[2]),
        .I1(\timer[31]_i_3_n_0 ),
        .O(\timer[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A0A0A00080)) 
    \timer[31]_i_1 
       (.I0(\timer[31]_i_3_n_0 ),
        .I1(SCCB_ready),
        .I2(FSM_state[0]),
        .I3(\timer_reg[1]_1 ),
        .I4(\timer_reg[1]_0 ),
        .I5(FSM_state[1]),
        .O(\timer[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[31]_i_11 
       (.I0(timer[25]),
        .I1(timer[22]),
        .I2(timer[23]),
        .I3(timer[24]),
        .O(\timer[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[31]_i_12 
       (.I0(timer[4]),
        .I1(timer[5]),
        .I2(timer[2]),
        .I3(timer[3]),
        .O(\timer[31]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hEF00EE00)) 
    \timer[31]_i_2 
       (.I0(FSM_state[1]),
        .I1(\timer_reg[1]_0 ),
        .I2(\timer_reg[1]_1 ),
        .I3(FSM_state[0]),
        .I4(SCCB_ready),
        .O(\timer[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \timer[31]_i_3 
       (.I0(\timer[31]_i_5_n_0 ),
        .I1(\timer[31]_i_6_n_0 ),
        .I2(\timer[31]_i_7_n_0 ),
        .I3(timer[0]),
        .I4(FSM_state[1]),
        .O(\timer[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer[31]_i_5 
       (.I0(\FSM_state[1]_i_6_n_0 ),
        .I1(timer[1]),
        .I2(timer[31]),
        .I3(timer[30]),
        .I4(\FSM_state[1]_i_13_n_0 ),
        .I5(\timer[31]_i_11_n_0 ),
        .O(\timer[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timer[31]_i_6 
       (.I0(timer[9]),
        .I1(timer[7]),
        .I2(timer[8]),
        .I3(timer[6]),
        .I4(\timer[31]_i_12_n_0 ),
        .O(\timer[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timer[31]_i_7 
       (.I0(timer[17]),
        .I1(timer[15]),
        .I2(timer[14]),
        .I3(timer[16]),
        .I4(\FSM_state[1]_i_14_n_0 ),
        .O(\timer[31]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer[5]_i_1__0 
       (.I0(data0[5]),
        .I1(\timer[31]_i_3_n_0 ),
        .O(\timer[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \timer[6]_i_1 
       (.I0(data0[6]),
        .I1(\timer[31]_i_3_n_0 ),
        .O(\timer[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\timer[0]_i_1_n_0 ),
        .Q(timer[0]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \timer_reg[10] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(\timer[10]_i_1__0_n_0 ),
        .Q(timer[10]),
        .S(\timer[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[11] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(data0[11]),
        .Q(timer[11]),
        .R(\timer[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \timer_reg[12] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(\timer[12]_i_1_n_0 ),
        .Q(timer[12]),
        .S(\timer[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[13] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(data0[13]),
        .Q(timer[13]),
        .R(\timer[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \timer_reg[14] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(\timer[14]_i_1_n_0 ),
        .Q(timer[14]),
        .S(\timer[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[15] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(data0[15]),
        .Q(timer[15]),
        .R(\timer[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \timer_reg[16] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(\timer[16]_i_1_n_0 ),
        .Q(timer[16]),
        .S(\timer[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \timer_reg[17] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(\timer[17]_i_1_n_0 ),
        .Q(timer[17]),
        .S(\timer[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[18] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(data0[18]),
        .Q(timer[18]),
        .R(\timer[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \timer_reg[19] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(\timer[19]_i_2_n_0 ),
        .Q(timer[19]),
        .S(\timer[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[1] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(data0[1]),
        .Q(timer[1]),
        .R(\timer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[20] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(data0[20]),
        .Q(timer[20]),
        .R(\timer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[21] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(data0[21]),
        .Q(timer[21]),
        .R(\timer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[22] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(data0[22]),
        .Q(timer[22]),
        .R(\timer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[23] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(data0[23]),
        .Q(timer[23]),
        .R(\timer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[24] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(data0[24]),
        .Q(timer[24]),
        .R(\timer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[25] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(data0[25]),
        .Q(timer[25]),
        .R(\timer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[26] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(data0[26]),
        .Q(timer[26]),
        .R(\timer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[27] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(data0[27]),
        .Q(timer[27]),
        .R(\timer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[28] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(data0[28]),
        .Q(timer[28]),
        .R(\timer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[29] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(data0[29]),
        .Q(timer[29]),
        .R(\timer[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \timer_reg[2] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(\timer[2]_i_1_n_0 ),
        .Q(timer[2]),
        .S(\timer[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[30] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(data0[30]),
        .Q(timer[30]),
        .R(\timer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[31] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(data0[31]),
        .Q(timer[31]),
        .R(\timer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[3] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(data0[3]),
        .Q(timer[3]),
        .R(\timer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[4] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(data0[4]),
        .Q(timer[4]),
        .R(\timer[31]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \timer_reg[5] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(\timer[5]_i_1__0_n_0 ),
        .Q(timer[5]),
        .S(\timer[19]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \timer_reg[6] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(\timer[6]_i_1_n_0 ),
        .Q(timer[6]),
        .S(\timer[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[7] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(data0[7]),
        .Q(timer[7]),
        .R(\timer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[8] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(data0[8]),
        .Q(timer[8]),
        .R(\timer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[9] 
       (.C(pixel_clk),
        .CE(\timer[31]_i_2_n_0 ),
        .D(data0[9]),
        .Q(timer[9]),
        .R(\timer[31]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "OV7670_config_rom" *) 
module design_1_top_0_0_OV7670_config_rom
   (out,
    \FSM_state_reg[1] ,
    ready_reg,
    dout_reg_0,
    dout_reg_1,
    E,
    \FSM_state_reg[0] ,
    ready_reg_0,
    sccb_start_reg,
    pixel_clk,
    Q,
    FSM_state,
    SCCB_ready,
    \FSM_state_reg[0]_0 );
  output [15:0]out;
  output \FSM_state_reg[1] ;
  output [0:0]ready_reg;
  output dout_reg_0;
  output dout_reg_1;
  output [0:0]E;
  output \FSM_state_reg[0] ;
  output ready_reg_0;
  output sccb_start_reg;
  input pixel_clk;
  input [7:0]Q;
  input [1:0]FSM_state;
  input SCCB_ready;
  input \FSM_state_reg[0]_0 ;

  wire [0:0]E;
  wire [1:0]FSM_state;
  wire \FSM_state[1]_i_10_n_0 ;
  wire \FSM_state[1]_i_11_n_0 ;
  wire \FSM_state[1]_i_12_n_0 ;
  wire \FSM_state[1]_i_8_n_0 ;
  wire \FSM_state[1]_i_9_n_0 ;
  wire \FSM_state_reg[0] ;
  wire \FSM_state_reg[0]_0 ;
  wire \FSM_state_reg[1] ;
  wire [7:0]Q;
  wire SCCB_ready;
  wire dout_reg_0;
  wire dout_reg_1;
  wire [15:0]out;
  wire pixel_clk;
  wire [0:0]ready_reg;
  wire ready_reg_0;
  wire sccb_start_reg;
  wire \timer[31]_i_10_n_0 ;
  wire \timer[31]_i_8_n_0 ;
  wire \timer[31]_i_9_n_0 ;
  wire [15:0]NLW_dout_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_dout_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_dout_reg_DOPBDOP_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFCCFFCCCCEECCE2)) 
    \FSM_state[0]_i_1 
       (.I0(\FSM_state_reg[0]_0 ),
        .I1(\FSM_state_reg[0] ),
        .I2(SCCB_ready),
        .I3(FSM_state[1]),
        .I4(dout_reg_1),
        .I5(FSM_state[0]),
        .O(sccb_start_reg));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_state[0]_i_2__0 
       (.I0(\FSM_state[1]_i_10_n_0 ),
        .I1(\FSM_state[1]_i_9_n_0 ),
        .I2(\FSM_state[1]_i_8_n_0 ),
        .I3(\FSM_state[1]_i_12_n_0 ),
        .O(dout_reg_1));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_state[1]_i_10 
       (.I0(out[11]),
        .I1(out[7]),
        .I2(out[8]),
        .I3(out[4]),
        .O(\FSM_state[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_state[1]_i_11 
       (.I0(out[1]),
        .I1(out[3]),
        .I2(out[0]),
        .I3(out[2]),
        .O(\FSM_state[1]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_state[1]_i_12 
       (.I0(out[1]),
        .I1(out[3]),
        .I2(out[0]),
        .I3(out[2]),
        .O(\FSM_state[1]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hAAA8AAAA)) 
    \FSM_state[1]_i_3 
       (.I0(FSM_state[0]),
        .I1(\FSM_state[1]_i_8_n_0 ),
        .I2(\FSM_state[1]_i_9_n_0 ),
        .I3(\FSM_state[1]_i_10_n_0 ),
        .I4(\FSM_state[1]_i_11_n_0 ),
        .O(\FSM_state_reg[0] ));
  LUT6 #(
    .INIT(64'h000000000000FFFE)) 
    \FSM_state[1]_i_4 
       (.I0(\FSM_state[1]_i_10_n_0 ),
        .I1(\FSM_state[1]_i_9_n_0 ),
        .I2(\FSM_state[1]_i_8_n_0 ),
        .I3(\FSM_state[1]_i_12_n_0 ),
        .I4(FSM_state[1]),
        .I5(SCCB_ready),
        .O(\FSM_state_reg[1] ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_state[1]_i_8 
       (.I0(out[9]),
        .I1(out[5]),
        .I2(out[15]),
        .I3(out[6]),
        .O(\FSM_state[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_state[1]_i_9 
       (.I0(out[12]),
        .I1(out[14]),
        .I2(out[10]),
        .I3(out[13]),
        .O(\FSM_state[1]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \SCCB_interface_addr[7]_i_1 
       (.I0(dout_reg_0),
        .I1(SCCB_ready),
        .I2(FSM_state[0]),
        .I3(FSM_state[1]),
        .I4(dout_reg_1),
        .O(E));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "camera_configure/rom1/dout_reg" *) 
  (* RTL_RAM_STYLE = "NONE" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h523D510050B34FB314183A0440D004003E000C0011801204FFF01280FFF01280),
    .INIT_01(256'h740069003C78330B1E000F41030A1A7B19033280180217143D00589E54E453A7),
    .INIT_02(256'h80767F697E5A7D357C1E7B107A20A20273F072117135703AB380B20EB10CB084),
    .INIT_03(256'hAB07A50514180D401000000013E089E888D787C486AF85A38496838F82888180),
    .INIT_04(256'hFFFFFFFFFFFFFFFF13E7AA94A990A8F0A7D8A6D8A103A0689F7826E325332495),
    .INIT_05(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_08(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    dout_reg
       (.ADDRARDADDR({1'b0,1'b0,Q,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(pixel_clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(out),
        .DOBDO(NLW_dout_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_dout_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_dout_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00F40000)) 
    \rom_addr[7]_i_2 
       (.I0(dout_reg_0),
        .I1(SCCB_ready),
        .I2(dout_reg_1),
        .I3(FSM_state[1]),
        .I4(FSM_state[0]),
        .O(ready_reg));
  LUT6 #(
    .INIT(64'h8888888088888888)) 
    \timer[0]_i_2 
       (.I0(SCCB_ready),
        .I1(FSM_state[0]),
        .I2(\timer[31]_i_10_n_0 ),
        .I3(\timer[31]_i_9_n_0 ),
        .I4(\timer[31]_i_8_n_0 ),
        .I5(\FSM_state[1]_i_11_n_0 ),
        .O(ready_reg_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \timer[31]_i_10 
       (.I0(out[5]),
        .I1(out[6]),
        .I2(out[4]),
        .I3(out[7]),
        .O(\timer[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \timer[31]_i_4 
       (.I0(\FSM_state[1]_i_11_n_0 ),
        .I1(\timer[31]_i_8_n_0 ),
        .I2(\timer[31]_i_9_n_0 ),
        .I3(\timer[31]_i_10_n_0 ),
        .O(dout_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \timer[31]_i_8 
       (.I0(out[14]),
        .I1(out[15]),
        .I2(out[12]),
        .I3(out[13]),
        .O(\timer[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \timer[31]_i_9 
       (.I0(out[10]),
        .I1(out[11]),
        .I2(out[8]),
        .I3(out[9]),
        .O(\timer[31]_i_9_n_0 ));
endmodule

(* ORIG_REF_NAME = "SCCB_FSM_interface" *) 
module design_1_top_0_0_SCCB_FSM_interface
   (SCCB_ready,
    SCCB_SIOC_oe,
    SCCB_SIOD_oe,
    SCCB_start,
    pixel_clk,
    Q,
    \latched_address_reg[7]_0 );
  output SCCB_ready;
  output SCCB_SIOC_oe;
  output SCCB_SIOD_oe;
  input SCCB_start;
  input pixel_clk;
  input [7:0]Q;
  input [7:0]\latched_address_reg[7]_0 ;

  wire [3:0]FSM_return_state;
  wire \FSM_return_state[3]_i_1_n_0 ;
  wire \FSM_return_state_reg_n_0_[0] ;
  wire \FSM_return_state_reg_n_0_[1] ;
  wire \FSM_return_state_reg_n_0_[2] ;
  wire \FSM_return_state_reg_n_0_[3] ;
  wire [3:0]FSM_state;
  wire \FSM_state[0]_i_2_n_0 ;
  wire \FSM_state[0]_i_3_n_0 ;
  wire \FSM_state[2]_i_2_n_0 ;
  wire \FSM_state[3]_i_10_n_0 ;
  wire \FSM_state[3]_i_1_n_0 ;
  wire \FSM_state[3]_i_3_n_0 ;
  wire \FSM_state[3]_i_4_n_0 ;
  wire \FSM_state[3]_i_5_n_0 ;
  wire \FSM_state[3]_i_6_n_0 ;
  wire \FSM_state[3]_i_7_n_0 ;
  wire \FSM_state[3]_i_8_n_0 ;
  wire \FSM_state[3]_i_9_n_0 ;
  wire \FSM_state_reg_n_0_[0] ;
  wire \FSM_state_reg_n_0_[1] ;
  wire \FSM_state_reg_n_0_[2] ;
  wire \FSM_state_reg_n_0_[3] ;
  wire [7:0]Q;
  wire SCCB_SIOC_oe;
  wire SCCB_SIOD_oe;
  wire SCCB_ready;
  wire SCCB_start;
  wire SIOC_oe_i_1_n_0;
  wire SIOD_oe_i_1_n_0;
  wire SIOD_oe_i_2_n_0;
  wire [1:0]byte_counter;
  wire \byte_counter[0]_i_1_n_0 ;
  wire \byte_counter[1]_i_1_n_0 ;
  wire [3:0]byte_index;
  wire \byte_index[0]_i_1_n_0 ;
  wire \byte_index[1]_i_1_n_0 ;
  wire \byte_index[2]_i_1_n_0 ;
  wire \byte_index[3]_i_1_n_0 ;
  wire \byte_index[3]_i_2_n_0 ;
  wire [31:1]data0;
  wire [7:0]latched_address;
  wire [7:0]\latched_address_reg[7]_0 ;
  wire \latched_data[7]_i_1_n_0 ;
  wire \latched_data_reg_n_0_[0] ;
  wire \latched_data_reg_n_0_[1] ;
  wire \latched_data_reg_n_0_[2] ;
  wire \latched_data_reg_n_0_[3] ;
  wire \latched_data_reg_n_0_[4] ;
  wire \latched_data_reg_n_0_[5] ;
  wire \latched_data_reg_n_0_[6] ;
  wire \latched_data_reg_n_0_[7] ;
  wire [10:0]p_1_in;
  wire pixel_clk;
  wire ready_i_1_n_0;
  wire [31:0]timer;
  wire timer1_carry__0_i_1_n_0;
  wire timer1_carry__0_i_2_n_0;
  wire timer1_carry__0_i_3_n_0;
  wire timer1_carry__0_i_4_n_0;
  wire timer1_carry__0_n_0;
  wire timer1_carry__0_n_1;
  wire timer1_carry__0_n_2;
  wire timer1_carry__0_n_3;
  wire timer1_carry__1_i_1_n_0;
  wire timer1_carry__1_i_2_n_0;
  wire timer1_carry__1_i_3_n_0;
  wire timer1_carry__1_i_4_n_0;
  wire timer1_carry__1_n_0;
  wire timer1_carry__1_n_1;
  wire timer1_carry__1_n_2;
  wire timer1_carry__1_n_3;
  wire timer1_carry__2_i_1_n_0;
  wire timer1_carry__2_i_2_n_0;
  wire timer1_carry__2_i_3_n_0;
  wire timer1_carry__2_i_4_n_0;
  wire timer1_carry__2_n_0;
  wire timer1_carry__2_n_1;
  wire timer1_carry__2_n_2;
  wire timer1_carry__2_n_3;
  wire timer1_carry__3_i_1_n_0;
  wire timer1_carry__3_i_2_n_0;
  wire timer1_carry__3_i_3_n_0;
  wire timer1_carry__3_i_4_n_0;
  wire timer1_carry__3_n_0;
  wire timer1_carry__3_n_1;
  wire timer1_carry__3_n_2;
  wire timer1_carry__3_n_3;
  wire timer1_carry__4_i_1_n_0;
  wire timer1_carry__4_i_2_n_0;
  wire timer1_carry__4_i_3_n_0;
  wire timer1_carry__4_i_4_n_0;
  wire timer1_carry__4_n_0;
  wire timer1_carry__4_n_1;
  wire timer1_carry__4_n_2;
  wire timer1_carry__4_n_3;
  wire timer1_carry__5_i_1_n_0;
  wire timer1_carry__5_i_2_n_0;
  wire timer1_carry__5_i_3_n_0;
  wire timer1_carry__5_i_4_n_0;
  wire timer1_carry__5_n_0;
  wire timer1_carry__5_n_1;
  wire timer1_carry__5_n_2;
  wire timer1_carry__5_n_3;
  wire timer1_carry__6_i_1_n_0;
  wire timer1_carry__6_i_2_n_0;
  wire timer1_carry__6_i_3_n_0;
  wire timer1_carry__6_n_2;
  wire timer1_carry__6_n_3;
  wire timer1_carry_i_1_n_0;
  wire timer1_carry_i_2_n_0;
  wire timer1_carry_i_3_n_0;
  wire timer1_carry_i_4_n_0;
  wire timer1_carry_n_0;
  wire timer1_carry_n_1;
  wire timer1_carry_n_2;
  wire timer1_carry_n_3;
  wire \timer[10]_i_10_n_0 ;
  wire \timer[10]_i_1_n_0 ;
  wire \timer[10]_i_3_n_0 ;
  wire \timer[10]_i_4_n_0 ;
  wire \timer[10]_i_5_n_0 ;
  wire \timer[10]_i_6_n_0 ;
  wire \timer[10]_i_7_n_0 ;
  wire \timer[10]_i_8_n_0 ;
  wire \timer[10]_i_9_n_0 ;
  wire \timer[31]_i_1__0_n_0 ;
  wire [7:0]tx_byte;
  wire \tx_byte[0]_i_1_n_0 ;
  wire \tx_byte[1]_i_1_n_0 ;
  wire \tx_byte[2]_i_1_n_0 ;
  wire \tx_byte[3]_i_1_n_0 ;
  wire \tx_byte[4]_i_1_n_0 ;
  wire \tx_byte[5]_i_1_n_0 ;
  wire \tx_byte[6]_i_1_n_0 ;
  wire \tx_byte[7]_i_1_n_0 ;
  wire \tx_byte[7]_i_2_n_0 ;
  wire [3:2]NLW_timer1_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_timer1_carry__6_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0F04)) 
    \FSM_return_state[0]_i_1 
       (.I0(\FSM_state_reg_n_0_[1] ),
        .I1(\FSM_state_reg_n_0_[2] ),
        .I2(\FSM_state_reg_n_0_[0] ),
        .I3(\FSM_state_reg_n_0_[3] ),
        .O(FSM_return_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h33C1)) 
    \FSM_return_state[1]_i_1 
       (.I0(\FSM_state_reg_n_0_[2] ),
        .I1(\FSM_state_reg_n_0_[1] ),
        .I2(\FSM_state_reg_n_0_[3] ),
        .I3(\FSM_state_reg_n_0_[0] ),
        .O(FSM_return_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \FSM_return_state[2]_i_1 
       (.I0(\FSM_state_reg_n_0_[3] ),
        .I1(\FSM_state_reg_n_0_[1] ),
        .I2(\FSM_state_reg_n_0_[2] ),
        .O(FSM_return_state[2]));
  LUT4 #(
    .INIT(16'h5F52)) 
    \FSM_return_state[3]_i_1 
       (.I0(\FSM_state_reg_n_0_[2] ),
        .I1(\FSM_state_reg_n_0_[1] ),
        .I2(\FSM_state_reg_n_0_[3] ),
        .I3(\FSM_state_reg_n_0_[0] ),
        .O(\FSM_return_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h77C0)) 
    \FSM_return_state[3]_i_2 
       (.I0(\FSM_state_reg_n_0_[0] ),
        .I1(\FSM_state_reg_n_0_[1] ),
        .I2(\FSM_state_reg_n_0_[2] ),
        .I3(\FSM_state_reg_n_0_[3] ),
        .O(FSM_return_state[3]));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_return_state_reg[0] 
       (.C(pixel_clk),
        .CE(\FSM_return_state[3]_i_1_n_0 ),
        .D(FSM_return_state[0]),
        .Q(\FSM_return_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_return_state_reg[1] 
       (.C(pixel_clk),
        .CE(\FSM_return_state[3]_i_1_n_0 ),
        .D(FSM_return_state[1]),
        .Q(\FSM_return_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_return_state_reg[2] 
       (.C(pixel_clk),
        .CE(\FSM_return_state[3]_i_1_n_0 ),
        .D(FSM_return_state[2]),
        .Q(\FSM_return_state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_return_state_reg[3] 
       (.C(pixel_clk),
        .CE(\FSM_return_state[3]_i_1_n_0 ),
        .D(FSM_return_state[3]),
        .Q(\FSM_return_state_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    \FSM_state[0]_i_1__0 
       (.I0(\FSM_state[0]_i_2_n_0 ),
        .I1(\FSM_return_state_reg_n_0_[0] ),
        .I2(\FSM_state[3]_i_5_n_0 ),
        .I3(\FSM_state_reg_n_0_[0] ),
        .I4(\FSM_state_reg_n_0_[3] ),
        .I5(\FSM_state[3]_i_4_n_0 ),
        .O(FSM_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0080008F)) 
    \FSM_state[0]_i_2 
       (.I0(\FSM_state[0]_i_3_n_0 ),
        .I1(\FSM_state_reg_n_0_[1] ),
        .I2(\FSM_state_reg_n_0_[2] ),
        .I3(\FSM_state_reg_n_0_[0] ),
        .I4(\FSM_state_reg_n_0_[3] ),
        .O(\FSM_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_state[0]_i_3 
       (.I0(byte_index[3]),
        .I1(byte_index[1]),
        .I2(byte_index[2]),
        .I3(byte_index[0]),
        .O(\FSM_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000200FF00020000)) 
    \FSM_state[1]_i_1__0 
       (.I0(\FSM_return_state_reg_n_0_[1] ),
        .I1(\FSM_state[3]_i_5_n_0 ),
        .I2(\FSM_state[3]_i_4_n_0 ),
        .I3(\FSM_state_reg_n_0_[0] ),
        .I4(\FSM_state_reg_n_0_[3] ),
        .I5(\FSM_state_reg_n_0_[1] ),
        .O(FSM_state[1]));
  LUT5 #(
    .INIT(32'hEEEEEEEA)) 
    \FSM_state[2]_i_1 
       (.I0(\FSM_state[2]_i_2_n_0 ),
        .I1(\FSM_state_reg_n_0_[3] ),
        .I2(\FSM_state[3]_i_4_n_0 ),
        .I3(\FSM_return_state_reg_n_0_[2] ),
        .I4(\FSM_state[3]_i_5_n_0 ),
        .O(FSM_state[2]));
  LUT6 #(
    .INIT(64'hAAAAAAFFEAEAAAAA)) 
    \FSM_state[2]_i_2 
       (.I0(\FSM_state_reg_n_0_[0] ),
        .I1(byte_counter[0]),
        .I2(byte_counter[1]),
        .I3(\FSM_state_reg_n_0_[3] ),
        .I4(\FSM_state_reg_n_0_[1] ),
        .I5(\FSM_state_reg_n_0_[2] ),
        .O(\FSM_state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0F5FFFFE)) 
    \FSM_state[3]_i_1 
       (.I0(\FSM_state_reg_n_0_[1] ),
        .I1(SCCB_start),
        .I2(\FSM_state_reg_n_0_[3] ),
        .I3(\FSM_state_reg_n_0_[0] ),
        .I4(\FSM_state_reg_n_0_[2] ),
        .O(\FSM_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_state[3]_i_10 
       (.I0(timer[16]),
        .I1(timer[15]),
        .I2(timer[17]),
        .I3(timer[13]),
        .I4(timer[12]),
        .I5(timer[14]),
        .O(\FSM_state[3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEAAAA)) 
    \FSM_state[3]_i_2 
       (.I0(\FSM_state[3]_i_3_n_0 ),
        .I1(\FSM_state[3]_i_4_n_0 ),
        .I2(\FSM_return_state_reg_n_0_[3] ),
        .I3(\FSM_state[3]_i_5_n_0 ),
        .I4(\FSM_state_reg_n_0_[3] ),
        .O(FSM_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFF10)) 
    \FSM_state[3]_i_3 
       (.I0(\FSM_state_reg_n_0_[1] ),
        .I1(\FSM_state_reg_n_0_[3] ),
        .I2(\FSM_state_reg_n_0_[2] ),
        .I3(\FSM_state_reg_n_0_[0] ),
        .O(\FSM_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \FSM_state[3]_i_4 
       (.I0(timer[31]),
        .I1(timer[30]),
        .I2(\FSM_state_reg_n_0_[2] ),
        .I3(timer[28]),
        .I4(timer[27]),
        .I5(timer[29]),
        .O(\FSM_state[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_state[3]_i_5 
       (.I0(\FSM_state[3]_i_6_n_0 ),
        .I1(\FSM_state[3]_i_7_n_0 ),
        .I2(\FSM_state[3]_i_8_n_0 ),
        .I3(\FSM_state[3]_i_9_n_0 ),
        .I4(\FSM_state[3]_i_10_n_0 ),
        .O(\FSM_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_state[3]_i_6 
       (.I0(timer[22]),
        .I1(timer[21]),
        .I2(timer[23]),
        .I3(timer[19]),
        .I4(timer[18]),
        .I5(timer[20]),
        .O(\FSM_state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_state[3]_i_7 
       (.I0(timer[4]),
        .I1(timer[3]),
        .I2(timer[5]),
        .I3(timer[1]),
        .I4(timer[0]),
        .I5(timer[2]),
        .O(\FSM_state[3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_state[3]_i_8 
       (.I0(timer[26]),
        .I1(timer[24]),
        .I2(timer[25]),
        .O(\FSM_state[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_state[3]_i_9 
       (.I0(timer[10]),
        .I1(timer[9]),
        .I2(timer[11]),
        .I3(timer[7]),
        .I4(timer[6]),
        .I5(timer[8]),
        .O(\FSM_state[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_state_reg[0] 
       (.C(pixel_clk),
        .CE(\FSM_state[3]_i_1_n_0 ),
        .D(FSM_state[0]),
        .Q(\FSM_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_state_reg[1] 
       (.C(pixel_clk),
        .CE(\FSM_state[3]_i_1_n_0 ),
        .D(FSM_state[1]),
        .Q(\FSM_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_state_reg[2] 
       (.C(pixel_clk),
        .CE(\FSM_state[3]_i_1_n_0 ),
        .D(FSM_state[2]),
        .Q(\FSM_state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_state_reg[3] 
       (.C(pixel_clk),
        .CE(\FSM_state[3]_i_1_n_0 ),
        .D(FSM_state[3]),
        .Q(\FSM_state_reg_n_0_[3] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEAFF0A00)) 
    SIOC_oe_i_1
       (.I0(\FSM_state_reg_n_0_[1] ),
        .I1(\FSM_state_reg_n_0_[2] ),
        .I2(\FSM_state_reg_n_0_[3] ),
        .I3(\FSM_state_reg_n_0_[0] ),
        .I4(SCCB_SIOC_oe),
        .O(SIOC_oe_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    SIOC_oe_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .D(SIOC_oe_i_1_n_0),
        .Q(SCCB_SIOC_oe),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFEBF000302B0)) 
    SIOD_oe_i_1
       (.I0(SIOD_oe_i_2_n_0),
        .I1(\FSM_state_reg_n_0_[1] ),
        .I2(\FSM_state_reg_n_0_[3] ),
        .I3(\FSM_state_reg_n_0_[2] ),
        .I4(\FSM_state_reg_n_0_[0] ),
        .I5(SCCB_SIOD_oe),
        .O(SIOD_oe_i_1_n_0));
  LUT6 #(
    .INIT(64'h1111111011111111)) 
    SIOD_oe_i_2
       (.I0(tx_byte[7]),
        .I1(\FSM_state_reg_n_0_[1] ),
        .I2(byte_index[0]),
        .I3(byte_index[2]),
        .I4(byte_index[1]),
        .I5(byte_index[3]),
        .O(SIOD_oe_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    SIOD_oe_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .D(SIOD_oe_i_1_n_0),
        .Q(SCCB_SIOD_oe),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hDFFC0002)) 
    \byte_counter[0]_i_1 
       (.I0(\FSM_state_reg_n_0_[1] ),
        .I1(\FSM_state_reg_n_0_[2] ),
        .I2(\FSM_state_reg_n_0_[0] ),
        .I3(\FSM_state_reg_n_0_[3] ),
        .I4(byte_counter[0]),
        .O(\byte_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFFFF400000008)) 
    \byte_counter[1]_i_1 
       (.I0(byte_counter[0]),
        .I1(\FSM_state_reg_n_0_[1] ),
        .I2(\FSM_state_reg_n_0_[2] ),
        .I3(\FSM_state_reg_n_0_[0] ),
        .I4(\FSM_state_reg_n_0_[3] ),
        .I5(byte_counter[1]),
        .O(\byte_counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \byte_counter_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\byte_counter[0]_i_1_n_0 ),
        .Q(byte_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_counter_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\byte_counter[1]_i_1_n_0 ),
        .Q(byte_counter[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \byte_index[0]_i_1 
       (.I0(\FSM_state_reg_n_0_[2] ),
        .I1(byte_index[0]),
        .O(\byte_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \byte_index[1]_i_1 
       (.I0(byte_index[0]),
        .I1(\FSM_state_reg_n_0_[2] ),
        .I2(byte_index[1]),
        .O(\byte_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \byte_index[2]_i_1 
       (.I0(byte_index[1]),
        .I1(byte_index[0]),
        .I2(\FSM_state_reg_n_0_[2] ),
        .I3(byte_index[2]),
        .O(\byte_index[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h000D)) 
    \byte_index[3]_i_1 
       (.I0(\FSM_state_reg_n_0_[2] ),
        .I1(\FSM_state_reg_n_0_[1] ),
        .I2(\FSM_state_reg_n_0_[3] ),
        .I3(\FSM_state_reg_n_0_[0] ),
        .O(\byte_index[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \byte_index[3]_i_2 
       (.I0(byte_index[2]),
        .I1(byte_index[0]),
        .I2(byte_index[1]),
        .I3(\FSM_state_reg_n_0_[2] ),
        .I4(byte_index[3]),
        .O(\byte_index[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \byte_index_reg[0] 
       (.C(pixel_clk),
        .CE(\byte_index[3]_i_1_n_0 ),
        .D(\byte_index[0]_i_1_n_0 ),
        .Q(byte_index[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_index_reg[1] 
       (.C(pixel_clk),
        .CE(\byte_index[3]_i_1_n_0 ),
        .D(\byte_index[1]_i_1_n_0 ),
        .Q(byte_index[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_index_reg[2] 
       (.C(pixel_clk),
        .CE(\byte_index[3]_i_1_n_0 ),
        .D(\byte_index[2]_i_1_n_0 ),
        .Q(byte_index[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_index_reg[3] 
       (.C(pixel_clk),
        .CE(\byte_index[3]_i_1_n_0 ),
        .D(\byte_index[3]_i_2_n_0 ),
        .Q(byte_index[3]),
        .R(1'b0));
  FDRE \latched_address_reg[0] 
       (.C(pixel_clk),
        .CE(\latched_data[7]_i_1_n_0 ),
        .D(\latched_address_reg[7]_0 [0]),
        .Q(latched_address[0]),
        .R(1'b0));
  FDRE \latched_address_reg[1] 
       (.C(pixel_clk),
        .CE(\latched_data[7]_i_1_n_0 ),
        .D(\latched_address_reg[7]_0 [1]),
        .Q(latched_address[1]),
        .R(1'b0));
  FDRE \latched_address_reg[2] 
       (.C(pixel_clk),
        .CE(\latched_data[7]_i_1_n_0 ),
        .D(\latched_address_reg[7]_0 [2]),
        .Q(latched_address[2]),
        .R(1'b0));
  FDRE \latched_address_reg[3] 
       (.C(pixel_clk),
        .CE(\latched_data[7]_i_1_n_0 ),
        .D(\latched_address_reg[7]_0 [3]),
        .Q(latched_address[3]),
        .R(1'b0));
  FDRE \latched_address_reg[4] 
       (.C(pixel_clk),
        .CE(\latched_data[7]_i_1_n_0 ),
        .D(\latched_address_reg[7]_0 [4]),
        .Q(latched_address[4]),
        .R(1'b0));
  FDRE \latched_address_reg[5] 
       (.C(pixel_clk),
        .CE(\latched_data[7]_i_1_n_0 ),
        .D(\latched_address_reg[7]_0 [5]),
        .Q(latched_address[5]),
        .R(1'b0));
  FDRE \latched_address_reg[6] 
       (.C(pixel_clk),
        .CE(\latched_data[7]_i_1_n_0 ),
        .D(\latched_address_reg[7]_0 [6]),
        .Q(latched_address[6]),
        .R(1'b0));
  FDRE \latched_address_reg[7] 
       (.C(pixel_clk),
        .CE(\latched_data[7]_i_1_n_0 ),
        .D(\latched_address_reg[7]_0 [7]),
        .Q(latched_address[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000002)) 
    \latched_data[7]_i_1 
       (.I0(SCCB_start),
        .I1(\FSM_state_reg_n_0_[1] ),
        .I2(\FSM_state_reg_n_0_[2] ),
        .I3(\FSM_state_reg_n_0_[3] ),
        .I4(\FSM_state_reg_n_0_[0] ),
        .O(\latched_data[7]_i_1_n_0 ));
  FDRE \latched_data_reg[0] 
       (.C(pixel_clk),
        .CE(\latched_data[7]_i_1_n_0 ),
        .D(Q[0]),
        .Q(\latched_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \latched_data_reg[1] 
       (.C(pixel_clk),
        .CE(\latched_data[7]_i_1_n_0 ),
        .D(Q[1]),
        .Q(\latched_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \latched_data_reg[2] 
       (.C(pixel_clk),
        .CE(\latched_data[7]_i_1_n_0 ),
        .D(Q[2]),
        .Q(\latched_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \latched_data_reg[3] 
       (.C(pixel_clk),
        .CE(\latched_data[7]_i_1_n_0 ),
        .D(Q[3]),
        .Q(\latched_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \latched_data_reg[4] 
       (.C(pixel_clk),
        .CE(\latched_data[7]_i_1_n_0 ),
        .D(Q[4]),
        .Q(\latched_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \latched_data_reg[5] 
       (.C(pixel_clk),
        .CE(\latched_data[7]_i_1_n_0 ),
        .D(Q[5]),
        .Q(\latched_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \latched_data_reg[6] 
       (.C(pixel_clk),
        .CE(\latched_data[7]_i_1_n_0 ),
        .D(Q[6]),
        .Q(\latched_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \latched_data_reg[7] 
       (.C(pixel_clk),
        .CE(\latched_data[7]_i_1_n_0 ),
        .D(Q[7]),
        .Q(\latched_data_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    ready_i_1
       (.I0(SCCB_start),
        .I1(\FSM_state_reg_n_0_[2] ),
        .I2(\FSM_state_reg_n_0_[1] ),
        .I3(\FSM_state_reg_n_0_[3] ),
        .I4(\FSM_state_reg_n_0_[0] ),
        .I5(SCCB_ready),
        .O(ready_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ready_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .D(ready_i_1_n_0),
        .Q(SCCB_ready),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer1_carry
       (.CI(1'b0),
        .CO({timer1_carry_n_0,timer1_carry_n_1,timer1_carry_n_2,timer1_carry_n_3}),
        .CYINIT(timer[0]),
        .DI(timer[4:1]),
        .O(data0[4:1]),
        .S({timer1_carry_i_1_n_0,timer1_carry_i_2_n_0,timer1_carry_i_3_n_0,timer1_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer1_carry__0
       (.CI(timer1_carry_n_0),
        .CO({timer1_carry__0_n_0,timer1_carry__0_n_1,timer1_carry__0_n_2,timer1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(timer[8:5]),
        .O(data0[8:5]),
        .S({timer1_carry__0_i_1_n_0,timer1_carry__0_i_2_n_0,timer1_carry__0_i_3_n_0,timer1_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__0_i_1
       (.I0(timer[8]),
        .O(timer1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__0_i_2
       (.I0(timer[7]),
        .O(timer1_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__0_i_3
       (.I0(timer[6]),
        .O(timer1_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__0_i_4
       (.I0(timer[5]),
        .O(timer1_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer1_carry__1
       (.CI(timer1_carry__0_n_0),
        .CO({timer1_carry__1_n_0,timer1_carry__1_n_1,timer1_carry__1_n_2,timer1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(timer[12:9]),
        .O(data0[12:9]),
        .S({timer1_carry__1_i_1_n_0,timer1_carry__1_i_2_n_0,timer1_carry__1_i_3_n_0,timer1_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__1_i_1
       (.I0(timer[12]),
        .O(timer1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__1_i_2
       (.I0(timer[11]),
        .O(timer1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__1_i_3
       (.I0(timer[10]),
        .O(timer1_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__1_i_4
       (.I0(timer[9]),
        .O(timer1_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer1_carry__2
       (.CI(timer1_carry__1_n_0),
        .CO({timer1_carry__2_n_0,timer1_carry__2_n_1,timer1_carry__2_n_2,timer1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(timer[16:13]),
        .O(data0[16:13]),
        .S({timer1_carry__2_i_1_n_0,timer1_carry__2_i_2_n_0,timer1_carry__2_i_3_n_0,timer1_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__2_i_1
       (.I0(timer[16]),
        .O(timer1_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__2_i_2
       (.I0(timer[15]),
        .O(timer1_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__2_i_3
       (.I0(timer[14]),
        .O(timer1_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__2_i_4
       (.I0(timer[13]),
        .O(timer1_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer1_carry__3
       (.CI(timer1_carry__2_n_0),
        .CO({timer1_carry__3_n_0,timer1_carry__3_n_1,timer1_carry__3_n_2,timer1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(timer[20:17]),
        .O(data0[20:17]),
        .S({timer1_carry__3_i_1_n_0,timer1_carry__3_i_2_n_0,timer1_carry__3_i_3_n_0,timer1_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__3_i_1
       (.I0(timer[20]),
        .O(timer1_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__3_i_2
       (.I0(timer[19]),
        .O(timer1_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__3_i_3
       (.I0(timer[18]),
        .O(timer1_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__3_i_4
       (.I0(timer[17]),
        .O(timer1_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer1_carry__4
       (.CI(timer1_carry__3_n_0),
        .CO({timer1_carry__4_n_0,timer1_carry__4_n_1,timer1_carry__4_n_2,timer1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(timer[24:21]),
        .O(data0[24:21]),
        .S({timer1_carry__4_i_1_n_0,timer1_carry__4_i_2_n_0,timer1_carry__4_i_3_n_0,timer1_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__4_i_1
       (.I0(timer[24]),
        .O(timer1_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__4_i_2
       (.I0(timer[23]),
        .O(timer1_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__4_i_3
       (.I0(timer[22]),
        .O(timer1_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__4_i_4
       (.I0(timer[21]),
        .O(timer1_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer1_carry__5
       (.CI(timer1_carry__4_n_0),
        .CO({timer1_carry__5_n_0,timer1_carry__5_n_1,timer1_carry__5_n_2,timer1_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(timer[28:25]),
        .O(data0[28:25]),
        .S({timer1_carry__5_i_1_n_0,timer1_carry__5_i_2_n_0,timer1_carry__5_i_3_n_0,timer1_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__5_i_1
       (.I0(timer[28]),
        .O(timer1_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__5_i_2
       (.I0(timer[27]),
        .O(timer1_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__5_i_3
       (.I0(timer[26]),
        .O(timer1_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__5_i_4
       (.I0(timer[25]),
        .O(timer1_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer1_carry__6
       (.CI(timer1_carry__5_n_0),
        .CO({NLW_timer1_carry__6_CO_UNCONNECTED[3:2],timer1_carry__6_n_2,timer1_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,timer[30:29]}),
        .O({NLW_timer1_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,timer1_carry__6_i_1_n_0,timer1_carry__6_i_2_n_0,timer1_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__6_i_1
       (.I0(timer[31]),
        .O(timer1_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__6_i_2
       (.I0(timer[30]),
        .O(timer1_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry__6_i_3
       (.I0(timer[29]),
        .O(timer1_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry_i_1
       (.I0(timer[4]),
        .O(timer1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry_i_2
       (.I0(timer[3]),
        .O(timer1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry_i_3
       (.I0(timer[2]),
        .O(timer1_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    timer1_carry_i_4
       (.I0(timer[1]),
        .O(timer1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h4FFF)) 
    \timer[0]_i_1__0 
       (.I0(timer[0]),
        .I1(\timer[10]_i_3_n_0 ),
        .I2(\FSM_state_reg_n_0_[3] ),
        .I3(\FSM_state_reg_n_0_[2] ),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'h47EE)) 
    \timer[10]_i_1 
       (.I0(\FSM_state_reg_n_0_[3] ),
        .I1(\FSM_state_reg_n_0_[0] ),
        .I2(\FSM_state_reg_n_0_[1] ),
        .I3(\FSM_state_reg_n_0_[2] ),
        .O(\timer[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[10]_i_10 
       (.I0(timer[23]),
        .I1(timer[20]),
        .I2(timer[25]),
        .I3(timer[22]),
        .O(\timer[10]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h80CC800080008000)) 
    \timer[10]_i_2 
       (.I0(\timer[10]_i_3_n_0 ),
        .I1(\FSM_state_reg_n_0_[3] ),
        .I2(data0[10]),
        .I3(\FSM_state_reg_n_0_[2] ),
        .I4(\FSM_state_reg_n_0_[1] ),
        .I5(\FSM_state_reg_n_0_[0] ),
        .O(p_1_in[10]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timer[10]_i_3 
       (.I0(\timer[10]_i_4_n_0 ),
        .I1(timer[14]),
        .I2(timer[15]),
        .I3(\timer[10]_i_5_n_0 ),
        .I4(\timer[10]_i_6_n_0 ),
        .O(\timer[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timer[10]_i_4 
       (.I0(\timer[10]_i_7_n_0 ),
        .I1(timer[5]),
        .I2(timer[4]),
        .I3(timer[3]),
        .I4(timer[2]),
        .O(\timer[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer[10]_i_5 
       (.I0(\timer[10]_i_8_n_0 ),
        .I1(\timer[10]_i_9_n_0 ),
        .I2(timer[29]),
        .I3(timer[26]),
        .I4(timer[17]),
        .I5(\timer[10]_i_10_n_0 ),
        .O(\timer[10]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[10]_i_6 
       (.I0(timer[6]),
        .I1(timer[7]),
        .I2(timer[8]),
        .I3(timer[9]),
        .O(\timer[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \timer[10]_i_7 
       (.I0(timer[13]),
        .I1(timer[12]),
        .I2(timer[11]),
        .I3(timer[10]),
        .I4(timer[0]),
        .I5(timer[1]),
        .O(\timer[10]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timer[10]_i_8 
       (.I0(timer[27]),
        .I1(timer[24]),
        .I2(timer[31]),
        .I3(timer[30]),
        .I4(timer[28]),
        .O(\timer[10]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[10]_i_9 
       (.I0(timer[19]),
        .I1(timer[16]),
        .I2(timer[21]),
        .I3(timer[18]),
        .O(\timer[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00FF000000800000)) 
    \timer[1]_i_1 
       (.I0(\timer[10]_i_3_n_0 ),
        .I1(\FSM_state_reg_n_0_[3] ),
        .I2(data0[1]),
        .I3(\FSM_state_reg_n_0_[1] ),
        .I4(\FSM_state_reg_n_0_[2] ),
        .I5(\FSM_state_reg_n_0_[0] ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h80CC800080008000)) 
    \timer[2]_i_1__0 
       (.I0(\timer[10]_i_3_n_0 ),
        .I1(\FSM_state_reg_n_0_[3] ),
        .I2(data0[2]),
        .I3(\FSM_state_reg_n_0_[2] ),
        .I4(\FSM_state_reg_n_0_[1] ),
        .I5(\FSM_state_reg_n_0_[0] ),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'h3307FFCC)) 
    \timer[31]_i_1__0 
       (.I0(\timer[10]_i_3_n_0 ),
        .I1(\FSM_state_reg_n_0_[3] ),
        .I2(\FSM_state_reg_n_0_[1] ),
        .I3(\FSM_state_reg_n_0_[0] ),
        .I4(\FSM_state_reg_n_0_[2] ),
        .O(\timer[31]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF8FFF0FFFFFF)) 
    \timer[3]_i_1 
       (.I0(\timer[10]_i_3_n_0 ),
        .I1(data0[3]),
        .I2(\FSM_state_reg_n_0_[1] ),
        .I3(\FSM_state_reg_n_0_[2] ),
        .I4(\FSM_state_reg_n_0_[0] ),
        .I5(\FSM_state_reg_n_0_[3] ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h08F8FFFF0FFFFFFF)) 
    \timer[4]_i_1 
       (.I0(\timer[10]_i_3_n_0 ),
        .I1(data0[4]),
        .I2(\FSM_state_reg_n_0_[1] ),
        .I3(\FSM_state_reg_n_0_[0] ),
        .I4(\FSM_state_reg_n_0_[3] ),
        .I5(\FSM_state_reg_n_0_[2] ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h08F8FFFF0FFFFFFF)) 
    \timer[5]_i_1 
       (.I0(\timer[10]_i_3_n_0 ),
        .I1(data0[5]),
        .I2(\FSM_state_reg_n_0_[1] ),
        .I3(\FSM_state_reg_n_0_[0] ),
        .I4(\FSM_state_reg_n_0_[3] ),
        .I5(\FSM_state_reg_n_0_[2] ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hCCFF0080CC000000)) 
    \timer[6]_i_1__0 
       (.I0(\timer[10]_i_3_n_0 ),
        .I1(\FSM_state_reg_n_0_[3] ),
        .I2(data0[6]),
        .I3(\FSM_state_reg_n_0_[1] ),
        .I4(\FSM_state_reg_n_0_[0] ),
        .I5(\FSM_state_reg_n_0_[2] ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hF0FFF8FFF0FFFFFF)) 
    \timer[7]_i_1 
       (.I0(\timer[10]_i_3_n_0 ),
        .I1(data0[7]),
        .I2(\FSM_state_reg_n_0_[1] ),
        .I3(\FSM_state_reg_n_0_[2] ),
        .I4(\FSM_state_reg_n_0_[0] ),
        .I5(\FSM_state_reg_n_0_[3] ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hCCFF0080CC000000)) 
    \timer[8]_i_1 
       (.I0(\timer[10]_i_3_n_0 ),
        .I1(\FSM_state_reg_n_0_[3] ),
        .I2(data0[8]),
        .I3(\FSM_state_reg_n_0_[1] ),
        .I4(\FSM_state_reg_n_0_[0] ),
        .I5(\FSM_state_reg_n_0_[2] ),
        .O(p_1_in[8]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[0] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(timer[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[10] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(timer[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[11] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(data0[11]),
        .Q(timer[11]),
        .R(\timer[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[12] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(data0[12]),
        .Q(timer[12]),
        .R(\timer[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[13] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(data0[13]),
        .Q(timer[13]),
        .R(\timer[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[14] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(data0[14]),
        .Q(timer[14]),
        .R(\timer[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[15] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(data0[15]),
        .Q(timer[15]),
        .R(\timer[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[16] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(data0[16]),
        .Q(timer[16]),
        .R(\timer[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[17] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(data0[17]),
        .Q(timer[17]),
        .R(\timer[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[18] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(data0[18]),
        .Q(timer[18]),
        .R(\timer[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[19] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(data0[19]),
        .Q(timer[19]),
        .R(\timer[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[1] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(timer[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[20] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(data0[20]),
        .Q(timer[20]),
        .R(\timer[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[21] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(data0[21]),
        .Q(timer[21]),
        .R(\timer[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[22] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(data0[22]),
        .Q(timer[22]),
        .R(\timer[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[23] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(data0[23]),
        .Q(timer[23]),
        .R(\timer[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[24] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(data0[24]),
        .Q(timer[24]),
        .R(\timer[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[25] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(data0[25]),
        .Q(timer[25]),
        .R(\timer[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[26] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(data0[26]),
        .Q(timer[26]),
        .R(\timer[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[27] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(data0[27]),
        .Q(timer[27]),
        .R(\timer[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[28] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(data0[28]),
        .Q(timer[28]),
        .R(\timer[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[29] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(data0[29]),
        .Q(timer[29]),
        .R(\timer[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[2] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(timer[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[30] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(data0[30]),
        .Q(timer[30]),
        .R(\timer[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[31] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(data0[31]),
        .Q(timer[31]),
        .R(\timer[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[3] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(timer[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[4] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(timer[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[5] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(timer[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[6] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(timer[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[7] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(timer[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[8] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(timer[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[9] 
       (.C(pixel_clk),
        .CE(\timer[10]_i_1_n_0 ),
        .D(data0[9]),
        .Q(timer[9]),
        .R(\timer[31]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000AAC0)) 
    \tx_byte[0]_i_1 
       (.I0(\latched_data_reg_n_0_[0] ),
        .I1(latched_address[0]),
        .I2(byte_counter[0]),
        .I3(byte_counter[1]),
        .I4(\FSM_state_reg_n_0_[2] ),
        .O(\tx_byte[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFF30F03)) 
    \tx_byte[1]_i_1 
       (.I0(tx_byte[0]),
        .I1(byte_counter[0]),
        .I2(byte_counter[1]),
        .I3(latched_address[1]),
        .I4(\latched_data_reg_n_0_[1] ),
        .I5(\FSM_state_reg_n_0_[2] ),
        .O(\tx_byte[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \tx_byte[2]_i_1 
       (.I0(byte_counter[1]),
        .I1(byte_counter[0]),
        .I2(latched_address[2]),
        .I3(\latched_data_reg_n_0_[2] ),
        .I4(\FSM_state_reg_n_0_[2] ),
        .I5(tx_byte[1]),
        .O(\tx_byte[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \tx_byte[3]_i_1 
       (.I0(byte_counter[1]),
        .I1(byte_counter[0]),
        .I2(latched_address[3]),
        .I3(\latched_data_reg_n_0_[3] ),
        .I4(\FSM_state_reg_n_0_[2] ),
        .I5(tx_byte[2]),
        .O(\tx_byte[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \tx_byte[4]_i_1 
       (.I0(byte_counter[1]),
        .I1(byte_counter[0]),
        .I2(latched_address[4]),
        .I3(\latched_data_reg_n_0_[4] ),
        .I4(\FSM_state_reg_n_0_[2] ),
        .I5(tx_byte[3]),
        .O(\tx_byte[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \tx_byte[5]_i_1 
       (.I0(byte_counter[1]),
        .I1(byte_counter[0]),
        .I2(latched_address[5]),
        .I3(\latched_data_reg_n_0_[5] ),
        .I4(\FSM_state_reg_n_0_[2] ),
        .I5(tx_byte[4]),
        .O(\tx_byte[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFF30F03)) 
    \tx_byte[6]_i_1 
       (.I0(tx_byte[5]),
        .I1(byte_counter[0]),
        .I2(byte_counter[1]),
        .I3(latched_address[6]),
        .I4(\latched_data_reg_n_0_[6] ),
        .I5(\FSM_state_reg_n_0_[2] ),
        .O(\tx_byte[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \tx_byte[7]_i_1 
       (.I0(\FSM_state_reg_n_0_[1] ),
        .I1(\FSM_state_reg_n_0_[3] ),
        .I2(\FSM_state_reg_n_0_[0] ),
        .O(\tx_byte[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \tx_byte[7]_i_2 
       (.I0(byte_counter[1]),
        .I1(byte_counter[0]),
        .I2(latched_address[7]),
        .I3(\latched_data_reg_n_0_[7] ),
        .I4(\FSM_state_reg_n_0_[2] ),
        .I5(tx_byte[6]),
        .O(\tx_byte[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tx_byte_reg[0] 
       (.C(pixel_clk),
        .CE(\tx_byte[7]_i_1_n_0 ),
        .D(\tx_byte[0]_i_1_n_0 ),
        .Q(tx_byte[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_byte_reg[1] 
       (.C(pixel_clk),
        .CE(\tx_byte[7]_i_1_n_0 ),
        .D(\tx_byte[1]_i_1_n_0 ),
        .Q(tx_byte[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_byte_reg[2] 
       (.C(pixel_clk),
        .CE(\tx_byte[7]_i_1_n_0 ),
        .D(\tx_byte[2]_i_1_n_0 ),
        .Q(tx_byte[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_byte_reg[3] 
       (.C(pixel_clk),
        .CE(\tx_byte[7]_i_1_n_0 ),
        .D(\tx_byte[3]_i_1_n_0 ),
        .Q(tx_byte[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_byte_reg[4] 
       (.C(pixel_clk),
        .CE(\tx_byte[7]_i_1_n_0 ),
        .D(\tx_byte[4]_i_1_n_0 ),
        .Q(tx_byte[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_byte_reg[5] 
       (.C(pixel_clk),
        .CE(\tx_byte[7]_i_1_n_0 ),
        .D(\tx_byte[5]_i_1_n_0 ),
        .Q(tx_byte[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_byte_reg[6] 
       (.C(pixel_clk),
        .CE(\tx_byte[7]_i_1_n_0 ),
        .D(\tx_byte[6]_i_1_n_0 ),
        .Q(tx_byte[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tx_byte_reg[7] 
       (.C(pixel_clk),
        .CE(\tx_byte[7]_i_1_n_0 ),
        .D(\tx_byte[7]_i_2_n_0 ),
        .Q(tx_byte[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "camera_configure" *) 
module design_1_top_0_0_camera_configure
   (cam_sda,
    cam_scl,
    pixel_clk,
    \FSM_state_reg[0] );
  output cam_sda;
  output cam_scl;
  input pixel_clk;
  input \FSM_state_reg[0] ;

  wire [1:0]FSM_state;
  wire \FSM_state_reg[0] ;
  wire SCCB_SIOC_oe;
  wire SCCB_SIOD_oe;
  wire [7:0]SCCB_addr;
  wire [7:0]SCCB_data;
  wire SCCB_ready;
  wire SCCB_start;
  wire cam_scl;
  wire cam_sda;
  wire pixel_clk;
  wire rom1_n_16;
  wire rom1_n_17;
  wire rom1_n_18;
  wire rom1_n_19;
  wire rom1_n_20;
  wire rom1_n_21;
  wire rom1_n_22;
  wire rom1_n_23;
  wire [7:0]rom_addr;
  wire [15:0]rom_dout;

  design_1_top_0_0_SCCB_FSM_interface SCCB1
       (.Q(SCCB_data),
        .SCCB_SIOC_oe(SCCB_SIOC_oe),
        .SCCB_SIOD_oe(SCCB_SIOD_oe),
        .SCCB_ready(SCCB_ready),
        .SCCB_start(SCCB_start),
        .\latched_address_reg[7]_0 (SCCB_addr),
        .pixel_clk(pixel_clk));
  LUT1 #(
    .INIT(2'h1)) 
    cam_scl_INST_0
       (.I0(SCCB_SIOC_oe),
        .O(cam_scl));
  design_1_top_0_0_OV7670_config_FSM config_1
       (.E(rom1_n_20),
        .FSM_state(FSM_state),
        .\FSM_state_reg[0]_0 (rom1_n_23),
        .\FSM_state_reg[1]_0 (rom1_n_21),
        .\FSM_state_reg[1]_1 (rom1_n_16),
        .Q(rom_addr),
        .\SCCB_interface_addr_reg[7]_0 (SCCB_addr),
        .\SCCB_interface_data_reg[7]_0 (SCCB_data),
        .SCCB_ready(SCCB_ready),
        .SCCB_start(SCCB_start),
        .out(rom_dout),
        .pixel_clk(pixel_clk),
        .\rom_addr_reg[0]_0 (rom1_n_17),
        .\timer_reg[0]_0 (rom1_n_22),
        .\timer_reg[1]_0 (rom1_n_19),
        .\timer_reg[1]_1 (rom1_n_18));
  LUT1 #(
    .INIT(2'h1)) 
    \p_0_out_inferred__0/i_ 
       (.I0(SCCB_SIOD_oe),
        .O(cam_sda));
  design_1_top_0_0_OV7670_config_rom rom1
       (.E(rom1_n_20),
        .FSM_state(FSM_state),
        .\FSM_state_reg[0] (rom1_n_21),
        .\FSM_state_reg[0]_0 (\FSM_state_reg[0] ),
        .\FSM_state_reg[1] (rom1_n_16),
        .Q(rom_addr),
        .SCCB_ready(SCCB_ready),
        .dout_reg_0(rom1_n_18),
        .dout_reg_1(rom1_n_19),
        .out(rom_dout),
        .pixel_clk(pixel_clk),
        .ready_reg(rom1_n_17),
        .ready_reg_0(rom1_n_22),
        .sccb_start_reg(rom1_n_23));
endmodule

(* ORIG_REF_NAME = "read_pixels" *) 
module design_1_top_0_0_read_pixels
   (rp_pixel_valid,
    frame_done,
    bram_en,
    \cam_x_reg[0] ,
    \cam_x_reg[0]_0 ,
    E,
    \pixel_data_reg[15]_0 ,
    cam_pclk,
    Q,
    cam_href,
    qvga_waddr,
    cam_vsync,
    \cam_x_reg[9] ,
    cam_data);
  output rp_pixel_valid;
  output frame_done;
  output bram_en;
  output \cam_x_reg[0] ;
  output \cam_x_reg[0]_0 ;
  output [0:0]E;
  output [15:0]\pixel_data_reg[15]_0 ;
  input cam_pclk;
  input [3:0]Q;
  input cam_href;
  input [1:0]qvga_waddr;
  input cam_vsync;
  input \cam_x_reg[9] ;
  input [7:0]cam_data;

  wire [0:0]E;
  wire FSM_sequential_state_reg_n_0;
  wire [3:0]Q;
  wire bram_en;
  wire bram_en_i_1_n_0;
  wire bram_en_i_2_n_0;
  wire bram_en_i_3_n_0;
  wire bram_en_i_4_n_0;
  wire [7:0]cam_data;
  wire cam_href;
  wire cam_pclk;
  wire cam_vsync;
  wire \cam_x_reg[0] ;
  wire \cam_x_reg[0]_0 ;
  wire \cam_x_reg[9] ;
  wire clear;
  wire end_of_pixel;
  wire frame_done;
  wire frame_done_i_1_n_0;
  wire [9:0]p_0_in__0;
  wire [15:7]pixel_data;
  wire [15:0]\pixel_data_reg[15]_0 ;
  wire pixel_half_i_1_n_0;
  wire pixel_half_reg_n_0;
  wire pixel_valid_i_1_n_0;
  wire [1:0]qvga_waddr;
  wire rp_pixel_valid;
  wire [0:0]state;
  wire \x_counter[8]_i_2_n_0 ;
  wire \x_counter[9]_i_3_n_0 ;
  wire \x_counter[9]_i_4_n_0 ;
  wire \x_counter[9]_i_5_n_0 ;
  wire [9:0]x_counter_reg;
  wire \x_mod10[0]_i_1_n_0 ;
  wire \x_mod10[1]_i_1_n_0 ;
  wire \x_mod10[2]_i_1_n_0 ;
  wire \x_mod10[3]_i_1_n_0 ;
  wire \x_mod10[3]_i_3_n_0 ;
  wire \x_mod10_reg_n_0_[0] ;
  wire \x_mod10_reg_n_0_[1] ;
  wire \x_mod10_reg_n_0_[2] ;
  wire \x_mod10_reg_n_0_[3] ;
  wire [3:0]y_mod10;
  wire \y_mod10[0]_i_1_n_0 ;
  wire \y_mod10[1]_i_1_n_0 ;
  wire \y_mod10[2]_i_1_n_0 ;
  wire \y_mod10[3]_i_1_n_0 ;
  wire \y_mod10[3]_i_2_n_0 ;
  wire \y_mod10[3]_i_3_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT1 #(
    .INIT(2'h1)) 
    FSM_sequential_state_i_1
       (.I0(cam_vsync),
        .O(state));
  (* FSM_ENCODED_STATES = "READ_ROW:1,START_FRAME:0" *) 
  FDRE #(
    .INIT(1'b0)) 
    FSM_sequential_state_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .D(state),
        .Q(FSM_sequential_state_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    bram_en_i_1
       (.I0(bram_en_i_2_n_0),
        .I1(bram_en_i_3_n_0),
        .I2(bram_en_i_4_n_0),
        .I3(FSM_sequential_state_reg_n_0),
        .I4(bram_en),
        .O(bram_en_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h3336)) 
    bram_en_i_2
       (.I0(\x_mod10_reg_n_0_[2] ),
        .I1(\x_mod10_reg_n_0_[3] ),
        .I2(\x_mod10_reg_n_0_[1] ),
        .I3(\x_mod10_reg_n_0_[0] ),
        .O(bram_en_i_2_n_0));
  LUT6 #(
    .INIT(64'h0F1E000000000000)) 
    bram_en_i_3
       (.I0(y_mod10[0]),
        .I1(y_mod10[1]),
        .I2(y_mod10[3]),
        .I3(y_mod10[2]),
        .I4(pixel_half_reg_n_0),
        .I5(cam_href),
        .O(bram_en_i_3_n_0));
  LUT6 #(
    .INIT(64'h5555555555554662)) 
    bram_en_i_4
       (.I0(x_counter_reg[9]),
        .I1(x_counter_reg[6]),
        .I2(x_counter_reg[4]),
        .I3(x_counter_reg[5]),
        .I4(x_counter_reg[8]),
        .I5(x_counter_reg[7]),
        .O(bram_en_i_4_n_0));
  FDRE bram_en_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .D(bram_en_i_1_n_0),
        .Q(bram_en),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0040)) 
    frame_buf_reg_0_0_i_1
       (.I0(Q[0]),
        .I1(rp_pixel_valid),
        .I2(cam_href),
        .I3(qvga_waddr[1]),
        .O(\cam_x_reg[0] ));
  LUT5 #(
    .INIT(32'h00400000)) 
    frame_buf_reg_1_0__0_i_1
       (.I0(Q[0]),
        .I1(rp_pixel_valid),
        .I2(cam_href),
        .I3(qvga_waddr[0]),
        .I4(qvga_waddr[1]),
        .O(\cam_x_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    frame_done_i_1
       (.I0(cam_vsync),
        .I1(FSM_sequential_state_reg_n_0),
        .O(frame_done_i_1_n_0));
  FDRE frame_done_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .D(frame_done_i_1_n_0),
        .Q(frame_done),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \pixel_data[15]_i_1 
       (.I0(pixel_half_reg_n_0),
        .I1(FSM_sequential_state_reg_n_0),
        .I2(cam_href),
        .O(pixel_data[15]));
  LUT3 #(
    .INIT(8'h80)) 
    \pixel_data[7]_i_1 
       (.I0(pixel_half_reg_n_0),
        .I1(cam_href),
        .I2(FSM_sequential_state_reg_n_0),
        .O(pixel_data[7]));
  FDRE \pixel_data_reg[0] 
       (.C(cam_pclk),
        .CE(pixel_data[7]),
        .D(cam_data[0]),
        .Q(\pixel_data_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \pixel_data_reg[10] 
       (.C(cam_pclk),
        .CE(pixel_data[15]),
        .D(cam_data[2]),
        .Q(\pixel_data_reg[15]_0 [10]),
        .R(1'b0));
  FDRE \pixel_data_reg[11] 
       (.C(cam_pclk),
        .CE(pixel_data[15]),
        .D(cam_data[3]),
        .Q(\pixel_data_reg[15]_0 [11]),
        .R(1'b0));
  FDRE \pixel_data_reg[12] 
       (.C(cam_pclk),
        .CE(pixel_data[15]),
        .D(cam_data[4]),
        .Q(\pixel_data_reg[15]_0 [12]),
        .R(1'b0));
  FDRE \pixel_data_reg[13] 
       (.C(cam_pclk),
        .CE(pixel_data[15]),
        .D(cam_data[5]),
        .Q(\pixel_data_reg[15]_0 [13]),
        .R(1'b0));
  FDRE \pixel_data_reg[14] 
       (.C(cam_pclk),
        .CE(pixel_data[15]),
        .D(cam_data[6]),
        .Q(\pixel_data_reg[15]_0 [14]),
        .R(1'b0));
  FDRE \pixel_data_reg[15] 
       (.C(cam_pclk),
        .CE(pixel_data[15]),
        .D(cam_data[7]),
        .Q(\pixel_data_reg[15]_0 [15]),
        .R(1'b0));
  FDRE \pixel_data_reg[1] 
       (.C(cam_pclk),
        .CE(pixel_data[7]),
        .D(cam_data[1]),
        .Q(\pixel_data_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \pixel_data_reg[2] 
       (.C(cam_pclk),
        .CE(pixel_data[7]),
        .D(cam_data[2]),
        .Q(\pixel_data_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \pixel_data_reg[3] 
       (.C(cam_pclk),
        .CE(pixel_data[7]),
        .D(cam_data[3]),
        .Q(\pixel_data_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \pixel_data_reg[4] 
       (.C(cam_pclk),
        .CE(pixel_data[7]),
        .D(cam_data[4]),
        .Q(\pixel_data_reg[15]_0 [4]),
        .R(1'b0));
  FDRE \pixel_data_reg[5] 
       (.C(cam_pclk),
        .CE(pixel_data[7]),
        .D(cam_data[5]),
        .Q(\pixel_data_reg[15]_0 [5]),
        .R(1'b0));
  FDRE \pixel_data_reg[6] 
       (.C(cam_pclk),
        .CE(pixel_data[7]),
        .D(cam_data[6]),
        .Q(\pixel_data_reg[15]_0 [6]),
        .R(1'b0));
  FDRE \pixel_data_reg[7] 
       (.C(cam_pclk),
        .CE(pixel_data[7]),
        .D(cam_data[7]),
        .Q(\pixel_data_reg[15]_0 [7]),
        .R(1'b0));
  FDRE \pixel_data_reg[8] 
       (.C(cam_pclk),
        .CE(pixel_data[15]),
        .D(cam_data[0]),
        .Q(\pixel_data_reg[15]_0 [8]),
        .R(1'b0));
  FDRE \pixel_data_reg[9] 
       (.C(cam_pclk),
        .CE(pixel_data[15]),
        .D(cam_data[1]),
        .Q(\pixel_data_reg[15]_0 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h60)) 
    pixel_half_i_1
       (.I0(pixel_half_reg_n_0),
        .I1(cam_href),
        .I2(FSM_sequential_state_reg_n_0),
        .O(pixel_half_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pixel_half_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .D(pixel_half_i_1_n_0),
        .Q(pixel_half_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    pixel_valid_i_1
       (.I0(cam_href),
        .I1(pixel_half_reg_n_0),
        .I2(FSM_sequential_state_reg_n_0),
        .I3(rp_pixel_valid),
        .O(pixel_valid_i_1_n_0));
  FDRE pixel_valid_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .D(pixel_valid_i_1_n_0),
        .Q(rp_pixel_valid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0808088808080808)) 
    qvga_waddr_i_2
       (.I0(cam_href),
        .I1(rp_pixel_valid),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\cam_x_reg[9] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \x_counter[0]_i_1 
       (.I0(x_counter_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \x_counter[1]_i_1 
       (.I0(x_counter_reg[0]),
        .I1(x_counter_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \x_counter[2]_i_1 
       (.I0(x_counter_reg[1]),
        .I1(x_counter_reg[0]),
        .I2(x_counter_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \x_counter[3]_i_1 
       (.I0(x_counter_reg[2]),
        .I1(x_counter_reg[0]),
        .I2(x_counter_reg[1]),
        .I3(x_counter_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \x_counter[4]_i_1 
       (.I0(x_counter_reg[3]),
        .I1(x_counter_reg[1]),
        .I2(x_counter_reg[0]),
        .I3(x_counter_reg[2]),
        .I4(x_counter_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \x_counter[5]_i_1 
       (.I0(x_counter_reg[4]),
        .I1(x_counter_reg[2]),
        .I2(x_counter_reg[0]),
        .I3(x_counter_reg[1]),
        .I4(x_counter_reg[3]),
        .I5(x_counter_reg[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \x_counter[6]_i_1 
       (.I0(x_counter_reg[4]),
        .I1(x_counter_reg[5]),
        .I2(\x_counter[8]_i_2_n_0 ),
        .I3(x_counter_reg[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \x_counter[7]_i_1 
       (.I0(x_counter_reg[6]),
        .I1(\x_counter[8]_i_2_n_0 ),
        .I2(x_counter_reg[5]),
        .I3(x_counter_reg[4]),
        .I4(x_counter_reg[7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \x_counter[8]_i_1 
       (.I0(x_counter_reg[7]),
        .I1(x_counter_reg[4]),
        .I2(x_counter_reg[5]),
        .I3(\x_counter[8]_i_2_n_0 ),
        .I4(x_counter_reg[6]),
        .I5(x_counter_reg[8]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \x_counter[8]_i_2 
       (.I0(x_counter_reg[2]),
        .I1(x_counter_reg[0]),
        .I2(x_counter_reg[1]),
        .I3(x_counter_reg[3]),
        .O(\x_counter[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0FFF0FFFFFFFE)) 
    \x_counter[9]_i_1 
       (.I0(x_counter_reg[0]),
        .I1(x_counter_reg[2]),
        .I2(cam_vsync),
        .I3(\x_counter[9]_i_3_n_0 ),
        .I4(x_counter_reg[1]),
        .I5(cam_href),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \x_counter[9]_i_2 
       (.I0(\y_mod10[3]_i_3_n_0 ),
        .I1(x_counter_reg[7]),
        .I2(x_counter_reg[8]),
        .I3(x_counter_reg[9]),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'h0000FFFF0000FFFE)) 
    \x_counter[9]_i_3 
       (.I0(x_counter_reg[3]),
        .I1(x_counter_reg[6]),
        .I2(x_counter_reg[9]),
        .I3(\x_counter[9]_i_4_n_0 ),
        .I4(cam_href),
        .I5(\x_counter[9]_i_5_n_0 ),
        .O(\x_counter[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \x_counter[9]_i_4 
       (.I0(x_counter_reg[7]),
        .I1(x_counter_reg[8]),
        .O(\x_counter[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \x_counter[9]_i_5 
       (.I0(x_counter_reg[4]),
        .I1(x_counter_reg[5]),
        .O(\x_counter[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \x_counter_reg[0] 
       (.C(cam_pclk),
        .CE(end_of_pixel),
        .D(p_0_in__0[0]),
        .Q(x_counter_reg[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \x_counter_reg[1] 
       (.C(cam_pclk),
        .CE(end_of_pixel),
        .D(p_0_in__0[1]),
        .Q(x_counter_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \x_counter_reg[2] 
       (.C(cam_pclk),
        .CE(end_of_pixel),
        .D(p_0_in__0[2]),
        .Q(x_counter_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \x_counter_reg[3] 
       (.C(cam_pclk),
        .CE(end_of_pixel),
        .D(p_0_in__0[3]),
        .Q(x_counter_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \x_counter_reg[4] 
       (.C(cam_pclk),
        .CE(end_of_pixel),
        .D(p_0_in__0[4]),
        .Q(x_counter_reg[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \x_counter_reg[5] 
       (.C(cam_pclk),
        .CE(end_of_pixel),
        .D(p_0_in__0[5]),
        .Q(x_counter_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \x_counter_reg[6] 
       (.C(cam_pclk),
        .CE(end_of_pixel),
        .D(p_0_in__0[6]),
        .Q(x_counter_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \x_counter_reg[7] 
       (.C(cam_pclk),
        .CE(end_of_pixel),
        .D(p_0_in__0[7]),
        .Q(x_counter_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \x_counter_reg[8] 
       (.C(cam_pclk),
        .CE(end_of_pixel),
        .D(p_0_in__0[8]),
        .Q(x_counter_reg[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \x_counter_reg[9] 
       (.C(cam_pclk),
        .CE(end_of_pixel),
        .D(p_0_in__0[9]),
        .Q(x_counter_reg[9]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \x_mod10[0]_i_1 
       (.I0(\x_mod10_reg_n_0_[0] ),
        .O(\x_mod10[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0DF0)) 
    \x_mod10[1]_i_1 
       (.I0(\x_mod10_reg_n_0_[3] ),
        .I1(\x_mod10_reg_n_0_[2] ),
        .I2(\x_mod10_reg_n_0_[1] ),
        .I3(\x_mod10_reg_n_0_[0] ),
        .O(\x_mod10[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \x_mod10[2]_i_1 
       (.I0(\x_mod10_reg_n_0_[2] ),
        .I1(\x_mod10_reg_n_0_[1] ),
        .I2(\x_mod10_reg_n_0_[0] ),
        .O(\x_mod10[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \x_mod10[3]_i_1 
       (.I0(\y_mod10[3]_i_1_n_0 ),
        .I1(cam_vsync),
        .O(\x_mod10[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \x_mod10[3]_i_2 
       (.I0(cam_href),
        .I1(pixel_half_reg_n_0),
        .O(end_of_pixel));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h68AA)) 
    \x_mod10[3]_i_3 
       (.I0(\x_mod10_reg_n_0_[3] ),
        .I1(\x_mod10_reg_n_0_[2] ),
        .I2(\x_mod10_reg_n_0_[1] ),
        .I3(\x_mod10_reg_n_0_[0] ),
        .O(\x_mod10[3]_i_3_n_0 ));
  FDRE \x_mod10_reg[0] 
       (.C(cam_pclk),
        .CE(end_of_pixel),
        .D(\x_mod10[0]_i_1_n_0 ),
        .Q(\x_mod10_reg_n_0_[0] ),
        .R(\x_mod10[3]_i_1_n_0 ));
  FDRE \x_mod10_reg[1] 
       (.C(cam_pclk),
        .CE(end_of_pixel),
        .D(\x_mod10[1]_i_1_n_0 ),
        .Q(\x_mod10_reg_n_0_[1] ),
        .R(\x_mod10[3]_i_1_n_0 ));
  FDRE \x_mod10_reg[2] 
       (.C(cam_pclk),
        .CE(end_of_pixel),
        .D(\x_mod10[2]_i_1_n_0 ),
        .Q(\x_mod10_reg_n_0_[2] ),
        .R(\x_mod10[3]_i_1_n_0 ));
  FDRE \x_mod10_reg[3] 
       (.C(cam_pclk),
        .CE(end_of_pixel),
        .D(\x_mod10[3]_i_3_n_0 ),
        .Q(\x_mod10_reg_n_0_[3] ),
        .R(\x_mod10[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \y_mod10[0]_i_1 
       (.I0(y_mod10[0]),
        .O(\y_mod10[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0DF0)) 
    \y_mod10[1]_i_1 
       (.I0(y_mod10[3]),
        .I1(y_mod10[2]),
        .I2(y_mod10[1]),
        .I3(y_mod10[0]),
        .O(\y_mod10[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \y_mod10[2]_i_1 
       (.I0(y_mod10[2]),
        .I1(y_mod10[1]),
        .I2(y_mod10[0]),
        .O(\y_mod10[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \y_mod10[3]_i_1 
       (.I0(x_counter_reg[7]),
        .I1(x_counter_reg[8]),
        .I2(pixel_half_reg_n_0),
        .I3(cam_href),
        .I4(x_counter_reg[9]),
        .I5(\y_mod10[3]_i_3_n_0 ),
        .O(\y_mod10[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h68AA)) 
    \y_mod10[3]_i_2 
       (.I0(y_mod10[3]),
        .I1(y_mod10[2]),
        .I2(y_mod10[1]),
        .I3(y_mod10[0]),
        .O(\y_mod10[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \y_mod10[3]_i_3 
       (.I0(x_counter_reg[4]),
        .I1(x_counter_reg[5]),
        .I2(\x_counter[8]_i_2_n_0 ),
        .I3(x_counter_reg[6]),
        .O(\y_mod10[3]_i_3_n_0 ));
  FDRE \y_mod10_reg[0] 
       (.C(cam_pclk),
        .CE(\y_mod10[3]_i_1_n_0 ),
        .D(\y_mod10[0]_i_1_n_0 ),
        .Q(y_mod10[0]),
        .R(cam_vsync));
  FDRE \y_mod10_reg[1] 
       (.C(cam_pclk),
        .CE(\y_mod10[3]_i_1_n_0 ),
        .D(\y_mod10[1]_i_1_n_0 ),
        .Q(y_mod10[1]),
        .R(cam_vsync));
  FDRE \y_mod10_reg[2] 
       (.C(cam_pclk),
        .CE(\y_mod10[3]_i_1_n_0 ),
        .D(\y_mod10[2]_i_1_n_0 ),
        .Q(y_mod10[2]),
        .R(cam_vsync));
  FDRE \y_mod10_reg[3] 
       (.C(cam_pclk),
        .CE(\y_mod10[3]_i_1_n_0 ),
        .D(\y_mod10[3]_i_2_n_0 ),
        .Q(y_mod10[3]),
        .R(cam_vsync));
endmodule

(* ORIG_REF_NAME = "read_pixels_axis_adapter" *) 
module design_1_top_0_0_read_pixels_axis_adapter
   (S_AXIS_CAPTURE_tuser,
    S_AXIS_CAPTURE_tlast,
    cam_vsync,
    cam_pclk,
    rp_pixel_valid);
  output [0:0]S_AXIS_CAPTURE_tuser;
  output S_AXIS_CAPTURE_tlast;
  input cam_vsync;
  input cam_pclk;
  input rp_pixel_valid;

  wire S_AXIS_CAPTURE_tlast;
  wire [0:0]S_AXIS_CAPTURE_tuser;
  wire cam_pclk;
  wire cam_vsync;
  wire [5:5]data0;
  wire [9:0]pixel_cnt;
  wire \pixel_cnt[6]_i_2_n_0 ;
  wire \pixel_cnt[9]_i_2_n_0 ;
  wire \pixel_cnt[9]_i_3_n_0 ;
  wire \pixel_cnt_reg_n_0_[0] ;
  wire \pixel_cnt_reg_n_0_[1] ;
  wire \pixel_cnt_reg_n_0_[2] ;
  wire \pixel_cnt_reg_n_0_[3] ;
  wire \pixel_cnt_reg_n_0_[4] ;
  wire \pixel_cnt_reg_n_0_[5] ;
  wire \pixel_cnt_reg_n_0_[6] ;
  wire \pixel_cnt_reg_n_0_[7] ;
  wire \pixel_cnt_reg_n_0_[8] ;
  wire \pixel_cnt_reg_n_0_[9] ;
  wire rp_pixel_valid;
  wire sof_pending;
  wire sof_pending00_out;
  wire sof_pending_i_1_n_0;
  wire system_i_i_2_n_0;
  wire vsync_prev;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_tuser_i_1
       (.I0(sof_pending),
        .I1(rp_pixel_valid),
        .O(sof_pending00_out));
  FDRE m_axis_tuser_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .D(sof_pending00_out),
        .Q(S_AXIS_CAPTURE_tuser),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00EE)) 
    \pixel_cnt[0]_i_1 
       (.I0(system_i_i_2_n_0),
        .I1(\pixel_cnt_reg_n_0_[2] ),
        .I2(\pixel_cnt_reg_n_0_[1] ),
        .I3(\pixel_cnt_reg_n_0_[0] ),
        .O(pixel_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0EE0)) 
    \pixel_cnt[1]_i_1 
       (.I0(system_i_i_2_n_0),
        .I1(\pixel_cnt_reg_n_0_[2] ),
        .I2(\pixel_cnt_reg_n_0_[0] ),
        .I3(\pixel_cnt_reg_n_0_[1] ),
        .O(pixel_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2CCC)) 
    \pixel_cnt[2]_i_1 
       (.I0(system_i_i_2_n_0),
        .I1(\pixel_cnt_reg_n_0_[2] ),
        .I2(\pixel_cnt_reg_n_0_[0] ),
        .I3(\pixel_cnt_reg_n_0_[1] ),
        .O(pixel_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h28C8C8C8)) 
    \pixel_cnt[3]_i_1 
       (.I0(system_i_i_2_n_0),
        .I1(\pixel_cnt_reg_n_0_[3] ),
        .I2(\pixel_cnt_reg_n_0_[2] ),
        .I3(\pixel_cnt_reg_n_0_[0] ),
        .I4(\pixel_cnt_reg_n_0_[1] ),
        .O(pixel_cnt[3]));
  LUT6 #(
    .INIT(64'h2888CC88CC88CC88)) 
    \pixel_cnt[4]_i_1 
       (.I0(system_i_i_2_n_0),
        .I1(\pixel_cnt_reg_n_0_[4] ),
        .I2(\pixel_cnt_reg_n_0_[3] ),
        .I3(\pixel_cnt_reg_n_0_[2] ),
        .I4(\pixel_cnt_reg_n_0_[0] ),
        .I5(\pixel_cnt_reg_n_0_[1] ),
        .O(pixel_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h88C8C8C8)) 
    \pixel_cnt[5]_i_1 
       (.I0(system_i_i_2_n_0),
        .I1(data0),
        .I2(\pixel_cnt_reg_n_0_[2] ),
        .I3(\pixel_cnt_reg_n_0_[0] ),
        .I4(\pixel_cnt_reg_n_0_[1] ),
        .O(pixel_cnt[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \pixel_cnt[5]_i_2 
       (.I0(\pixel_cnt_reg_n_0_[3] ),
        .I1(\pixel_cnt_reg_n_0_[1] ),
        .I2(\pixel_cnt_reg_n_0_[2] ),
        .I3(\pixel_cnt_reg_n_0_[4] ),
        .I4(\pixel_cnt_reg_n_0_[0] ),
        .I5(\pixel_cnt_reg_n_0_[5] ),
        .O(data0));
  LUT6 #(
    .INIT(64'h8282CC88C382CC88)) 
    \pixel_cnt[6]_i_1 
       (.I0(system_i_i_2_n_0),
        .I1(\pixel_cnt_reg_n_0_[6] ),
        .I2(\pixel_cnt[6]_i_2_n_0 ),
        .I3(\pixel_cnt_reg_n_0_[2] ),
        .I4(\pixel_cnt_reg_n_0_[0] ),
        .I5(\pixel_cnt_reg_n_0_[1] ),
        .O(pixel_cnt[6]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \pixel_cnt[6]_i_2 
       (.I0(\pixel_cnt_reg_n_0_[4] ),
        .I1(\pixel_cnt_reg_n_0_[2] ),
        .I2(\pixel_cnt_reg_n_0_[1] ),
        .I3(\pixel_cnt_reg_n_0_[3] ),
        .I4(\pixel_cnt_reg_n_0_[5] ),
        .O(\pixel_cnt[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAA45AAAAAA55AAAA)) 
    \pixel_cnt[7]_i_1 
       (.I0(\pixel_cnt_reg_n_0_[7] ),
        .I1(\pixel_cnt_reg_n_0_[8] ),
        .I2(\pixel_cnt_reg_n_0_[9] ),
        .I3(\pixel_cnt[9]_i_2_n_0 ),
        .I4(\pixel_cnt_reg_n_0_[0] ),
        .I5(\pixel_cnt[9]_i_3_n_0 ),
        .O(pixel_cnt[7]));
  LUT6 #(
    .INIT(64'hCC66CCCCCC66CCCC)) 
    \pixel_cnt[8]_i_1 
       (.I0(\pixel_cnt_reg_n_0_[7] ),
        .I1(\pixel_cnt_reg_n_0_[8] ),
        .I2(\pixel_cnt_reg_n_0_[9] ),
        .I3(\pixel_cnt[9]_i_2_n_0 ),
        .I4(\pixel_cnt_reg_n_0_[0] ),
        .I5(\pixel_cnt[9]_i_3_n_0 ),
        .O(pixel_cnt[8]));
  LUT6 #(
    .INIT(64'hF068F0E0F078F0F0)) 
    \pixel_cnt[9]_i_1 
       (.I0(\pixel_cnt_reg_n_0_[7] ),
        .I1(\pixel_cnt_reg_n_0_[8] ),
        .I2(\pixel_cnt_reg_n_0_[9] ),
        .I3(\pixel_cnt[9]_i_2_n_0 ),
        .I4(\pixel_cnt_reg_n_0_[0] ),
        .I5(\pixel_cnt[9]_i_3_n_0 ),
        .O(pixel_cnt[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \pixel_cnt[9]_i_2 
       (.I0(\pixel_cnt_reg_n_0_[5] ),
        .I1(\pixel_cnt_reg_n_0_[3] ),
        .I2(\pixel_cnt_reg_n_0_[1] ),
        .I3(\pixel_cnt_reg_n_0_[2] ),
        .I4(\pixel_cnt_reg_n_0_[4] ),
        .I5(\pixel_cnt_reg_n_0_[6] ),
        .O(\pixel_cnt[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \pixel_cnt[9]_i_3 
       (.I0(\pixel_cnt_reg_n_0_[1] ),
        .I1(\pixel_cnt_reg_n_0_[0] ),
        .I2(\pixel_cnt_reg_n_0_[2] ),
        .O(\pixel_cnt[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_cnt_reg[0] 
       (.C(cam_pclk),
        .CE(rp_pixel_valid),
        .D(pixel_cnt[0]),
        .Q(\pixel_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_cnt_reg[1] 
       (.C(cam_pclk),
        .CE(rp_pixel_valid),
        .D(pixel_cnt[1]),
        .Q(\pixel_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_cnt_reg[2] 
       (.C(cam_pclk),
        .CE(rp_pixel_valid),
        .D(pixel_cnt[2]),
        .Q(\pixel_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_cnt_reg[3] 
       (.C(cam_pclk),
        .CE(rp_pixel_valid),
        .D(pixel_cnt[3]),
        .Q(\pixel_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_cnt_reg[4] 
       (.C(cam_pclk),
        .CE(rp_pixel_valid),
        .D(pixel_cnt[4]),
        .Q(\pixel_cnt_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_cnt_reg[5] 
       (.C(cam_pclk),
        .CE(rp_pixel_valid),
        .D(pixel_cnt[5]),
        .Q(\pixel_cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_cnt_reg[6] 
       (.C(cam_pclk),
        .CE(rp_pixel_valid),
        .D(pixel_cnt[6]),
        .Q(\pixel_cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_cnt_reg[7] 
       (.C(cam_pclk),
        .CE(rp_pixel_valid),
        .D(pixel_cnt[7]),
        .Q(\pixel_cnt_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_cnt_reg[8] 
       (.C(cam_pclk),
        .CE(rp_pixel_valid),
        .D(pixel_cnt[8]),
        .Q(\pixel_cnt_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_cnt_reg[9] 
       (.C(cam_pclk),
        .CE(rp_pixel_valid),
        .D(pixel_cnt[9]),
        .Q(\pixel_cnt_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4744)) 
    sof_pending_i_1
       (.I0(rp_pixel_valid),
        .I1(sof_pending),
        .I2(vsync_prev),
        .I3(cam_vsync),
        .O(sof_pending_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sof_pending_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .D(sof_pending_i_1_n_0),
        .Q(sof_pending),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    system_i_i_1
       (.I0(rp_pixel_valid),
        .I1(\pixel_cnt_reg_n_0_[0] ),
        .I2(system_i_i_2_n_0),
        .O(S_AXIS_CAPTURE_tlast));
  LUT4 #(
    .INIT(16'hFFEF)) 
    system_i_i_2
       (.I0(\pixel_cnt_reg_n_0_[7] ),
        .I1(\pixel_cnt_reg_n_0_[8] ),
        .I2(\pixel_cnt_reg_n_0_[9] ),
        .I3(\pixel_cnt[9]_i_2_n_0 ),
        .O(system_i_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    vsync_prev_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .D(cam_vsync),
        .Q(vsync_prev),
        .R(1'b0));
endmodule

(* HW_HANDOFF = "system.hwdef" *) (* ORIG_REF_NAME = "system" *) 
module design_1_top_0_0_system
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

  wire \<const0> ;
  wire [15:0]S_AXIS_CAPTURE_tdata;
  wire S_AXIS_CAPTURE_tlast;
  wire [0:0]S_AXIS_CAPTURE_tuser;
  wire S_AXIS_CAPTURE_tvalid;
  wire [0:0]aresetn_pixel;
  wire axis_data_fifo_0_n_0;
  wire axis_data_fifo_0_n_1;
  wire axis_data_fifo_0_n_10;
  wire axis_data_fifo_0_n_11;
  wire axis_data_fifo_0_n_12;
  wire axis_data_fifo_0_n_13;
  wire axis_data_fifo_0_n_14;
  wire axis_data_fifo_0_n_15;
  wire axis_data_fifo_0_n_16;
  wire axis_data_fifo_0_n_17;
  wire axis_data_fifo_0_n_2;
  wire axis_data_fifo_0_n_3;
  wire axis_data_fifo_0_n_4;
  wire axis_data_fifo_0_n_5;
  wire axis_data_fifo_0_n_6;
  wire axis_data_fifo_0_n_7;
  wire axis_data_fifo_0_n_8;
  wire axis_data_fifo_0_n_9;
  wire cam_pclk_i;
  wire cam_xclk;
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
  wire NLW_axis_data_fifo_0_m_axis_tlast_UNCONNECTED;
  wire [0:0]NLW_axis_data_fifo_0_m_axis_tuser_UNCONNECTED;
  wire NLW_rst_pixel_74m_mb_reset_UNCONNECTED;
  wire [0:0]NLW_rst_pixel_74m_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_rst_pixel_74m_interconnect_aresetn_UNCONNECTED;
  wire [0:0]NLW_rst_pixel_74m_peripheral_reset_UNCONNECTED;

  assign S_AXIS_CAPTURE_tready = \<const0> ;
  assign dbg_fifo_m_tvalid = \<const0> ;
  assign fifo_m_tdata[15] = \<const0> ;
  assign fifo_m_tdata[14] = \<const0> ;
  assign fifo_m_tdata[13] = \<const0> ;
  assign fifo_m_tdata[12] = \<const0> ;
  assign fifo_m_tdata[11] = \<const0> ;
  assign fifo_m_tdata[10] = \<const0> ;
  assign fifo_m_tdata[9] = \<const0> ;
  assign fifo_m_tdata[8] = \<const0> ;
  assign fifo_m_tdata[7] = \<const0> ;
  assign fifo_m_tdata[6] = \<const0> ;
  assign fifo_m_tdata[5] = \<const0> ;
  assign fifo_m_tdata[4] = \<const0> ;
  assign fifo_m_tdata[3] = \<const0> ;
  assign fifo_m_tdata[2] = \<const0> ;
  assign fifo_m_tdata[1] = \<const0> ;
  assign fifo_m_tdata[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CHECK_LICENSE_TYPE = "system_axis_data_fifo_0_0,axis_data_fifo_v2_0_17_top,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "axis_data_fifo_v2_0_17_top,Vivado 2025.2" *) 
  design_1_top_0_0_system_axis_data_fifo_0_0 axis_data_fifo_0
       (.m_axis_aclk(pixel_clk),
        .m_axis_tdata({axis_data_fifo_0_n_2,axis_data_fifo_0_n_3,axis_data_fifo_0_n_4,axis_data_fifo_0_n_5,axis_data_fifo_0_n_6,axis_data_fifo_0_n_7,axis_data_fifo_0_n_8,axis_data_fifo_0_n_9,axis_data_fifo_0_n_10,axis_data_fifo_0_n_11,axis_data_fifo_0_n_12,axis_data_fifo_0_n_13,axis_data_fifo_0_n_14,axis_data_fifo_0_n_15,axis_data_fifo_0_n_16,axis_data_fifo_0_n_17}),
        .m_axis_tlast(NLW_axis_data_fifo_0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b1),
        .m_axis_tuser(NLW_axis_data_fifo_0_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(axis_data_fifo_0_n_1),
        .s_axis_aclk(cam_pclk_i),
        .s_axis_aresetn(aresetn_pixel),
        .s_axis_tdata(S_AXIS_CAPTURE_tdata),
        .s_axis_tlast(S_AXIS_CAPTURE_tlast),
        .s_axis_tready(axis_data_fifo_0_n_0),
        .s_axis_tuser(S_AXIS_CAPTURE_tuser),
        .s_axis_tvalid(S_AXIS_CAPTURE_tvalid));
  design_1_top_0_0_system_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clk),
        .clk_out1(pixel_clk),
        .clk_out2(cam_xclk),
        .locked(mmcm_locked),
        .resetn(1'b1));
  (* CHECK_LICENSE_TYPE = "system_rgb2dvi_0_0,rgb2dvi,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "rgb2dvi,Vivado 2025.2" *) 
  design_1_top_0_0_system_rgb2dvi_0_0 rgb2dvi_0
       (.LockedOut(rgb2dvi_pll_locked),
        .PixelClk(pixel_clk),
        .TMDS_Clk_n(hdmi_tx_clk_n),
        .TMDS_Clk_p(hdmi_tx_clk_p),
        .TMDS_Data_n(hdmi_tx_d_n),
        .TMDS_Data_p(hdmi_tx_d_p),
        .aRst_n(aresetn_pixel),
        .vid_pData({vid_pdata_i[23:16],vid_pdata_i[23:16],vid_pdata_i[23:16]}),
        .vid_pHSync(vid_hsync_i),
        .vid_pVDE(vid_active_i),
        .vid_pVSync(vid_vsync_i));
  (* CHECK_LICENSE_TYPE = "system_rst_pixel_74m_0,proc_sys_reset,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2025.2" *) 
  design_1_top_0_0_system_rst_pixel_74m_0 rst_pixel_74m
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_rst_pixel_74m_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(mmcm_locked),
        .ext_reset_in(1'b1),
        .interconnect_aresetn(NLW_rst_pixel_74m_interconnect_aresetn_UNCONNECTED[0]),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_rst_pixel_74m_mb_reset_UNCONNECTED),
        .peripheral_aresetn(aresetn_pixel),
        .peripheral_reset(NLW_rst_pixel_74m_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(pixel_clk));
endmodule

(* CHECK_LICENSE_TYPE = "system_axis_data_fifo_0_0,axis_data_fifo_v2_0_17_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "system_axis_data_fifo_0_0" *) 
(* X_CORE_INFO = "axis_data_fifo_v2_0_17_top,Vivado 2025.2" *) 
module design_1_top_0_0_system_axis_data_fifo_0_0
   (s_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tuser,
    m_axis_aclk,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tuser);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_RSTIF RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input s_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_CLKIF CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_CLKIF, ASSOCIATED_BUSIF S_AXIS, FREQ_HZ 24390000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_cam_pclk_i, ASSOCIATED_RESET s_axis_aresetn, INSERT_VIP 0, ASSOCIATED_CLKEN s_axis_aclken" *) 
  (* syn_isclock = "1" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 24390000, PHASE 0.0, CLK_DOMAIN system_cam_pclk_i, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [15:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TUSER" *) input [0:0]s_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_CLKIF CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_CLKIF, ASSOCIATED_BUSIF M_AXIS, FREQ_HZ 74250000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input m_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 74250000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [15:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) output [0:0]m_axis_tuser;


endmodule

(* ORIG_REF_NAME = "system_clk_wiz_0_0" *) 
module design_1_top_0_0_system_clk_wiz_0_0
   (clk_out1,
    clk_out2,
    resetn,
    locked,
    clk_in1);
  (* syn_isclock = "1" *) output clk_out1;
  (* syn_isclock = "1" *) output clk_out2;
  input resetn;
  output locked;
  input clk_in1;


endmodule

(* CHECK_LICENSE_TYPE = "system_rgb2dvi_0_0,rgb2dvi,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "system_rgb2dvi_0_0" *) 
(* X_CORE_INFO = "rgb2dvi,Vivado 2025.2" *) 
module design_1_top_0_0_system_rgb2dvi_0_0
   (TMDS_Clk_p,
    TMDS_Clk_n,
    TMDS_Data_p,
    TMDS_Data_n,
    aRst_n,
    vid_pData,
    vid_pVDE,
    vid_pHSync,
    vid_pVSync,
    PixelClk,
    LockedOut);
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 TMDS CLK_P, xilinx.com:signal:clock:1.0 TMDS_Clk_p CLK" *) (* X_INTERFACE_MODE = "master TMDS, master TMDS_Clk_p" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME TMDS, BOARD.ASSOCIATED_PARAM TMDS_BOARD_INTERFACE, XIL_INTERFACENAME TMDS_Clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) output TMDS_Clk_p;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 TMDS CLK_N, xilinx.com:signal:clock:1.0 TMDS_Clk_n CLK" *) (* X_INTERFACE_MODE = "master TMDS_Clk_n" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME TMDS_Clk_n, ASSOCIATED_RESET aRst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) output TMDS_Clk_n;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 TMDS DATA_P" *) output [2:0]TMDS_Data_p;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:tmds:1.0 TMDS DATA_N" *) output [2:0]TMDS_Data_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 AsyncRst_n RST" *) (* X_INTERFACE_MODE = "slave AsyncRst_n" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AsyncRst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aRst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB DATA" *) (* X_INTERFACE_MODE = "slave RGB" *) input [23:0]vid_pData;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB ACTIVE_VIDEO" *) input vid_pVDE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB HSYNC" *) input vid_pHSync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 RGB VSYNC" *) input vid_pVSync;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 PixelClk CLK" *) (* X_INTERFACE_MODE = "slave PixelClk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PixelClk, FREQ_HZ 74250000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input PixelClk;
  output LockedOut;


endmodule

(* CHECK_LICENSE_TYPE = "system_rst_pixel_74m_0,proc_sys_reset,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "system_rst_pixel_74m_0" *) 
(* X_CORE_INFO = "proc_sys_reset,Vivado 2025.2" *) 
module design_1_top_0_0_system_rst_pixel_74m_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *) (* X_INTERFACE_MODE = "slave clock" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock, ASSOCIATED_RESET mb_reset:bus_struct_reset:interconnect_aresetn:peripheral_aresetn:peripheral_reset, FREQ_HZ 74250000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input slowest_sync_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ext_reset RST" *) (* X_INTERFACE_MODE = "slave ext_reset" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ext_reset, BOARD.ASSOCIATED_PARAM RESET_BOARD_INTERFACE, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ext_reset_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aux_reset RST" *) (* X_INTERFACE_MODE = "slave aux_reset" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aux_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aux_reset_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 dbg_reset RST" *) (* X_INTERFACE_MODE = "slave dbg_reset" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dbg_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input mb_debug_sys_rst;
  input dcm_locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 mb_rst RST" *) (* X_INTERFACE_MODE = "master mb_rst" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mb_rst, POLARITY ACTIVE_HIGH, TYPE PROCESSOR, INSERT_VIP 0" *) output mb_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 bus_struct_reset RST" *) (* X_INTERFACE_MODE = "master bus_struct_reset" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bus_struct_reset, POLARITY ACTIVE_HIGH, TYPE INTERCONNECT, INSERT_VIP 0" *) output [0:0]bus_struct_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 peripheral_high_rst RST" *) (* X_INTERFACE_MODE = "master peripheral_high_rst" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME peripheral_high_rst, POLARITY ACTIVE_HIGH, TYPE PERIPHERAL, INSERT_VIP 0" *) output [0:0]peripheral_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 interconnect_low_rst RST" *) (* X_INTERFACE_MODE = "master interconnect_low_rst" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interconnect_low_rst, POLARITY ACTIVE_LOW, TYPE INTERCONNECT, INSERT_VIP 0" *) output [0:0]interconnect_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 peripheral_low_rst RST" *) (* X_INTERFACE_MODE = "master peripheral_low_rst" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME peripheral_low_rst, POLARITY ACTIVE_LOW, TYPE PERIPHERAL, INSERT_VIP 0" *) output [0:0]peripheral_aresetn;


endmodule

(* ORIG_REF_NAME = "system_wrapper" *) 
module design_1_top_0_0_system_wrapper
   (cam_xclk,
    hdmi_tx_clk_n,
    hdmi_tx_clk_p,
    hdmi_tx_d_n,
    hdmi_tx_d_p,
    mmcm_locked,
    pixel_clk,
    led4_g,
    SR,
    \sync_h_reg[9] ,
    rst_0,
    rst_1,
    \bbstub_peripheral_aresetn[0] ,
    \sync_h_reg[10] ,
    \sync_h_reg[8] ,
    \sync_v_reg[0] ,
    sccb_fired_reg,
    axis_data_fifo_0,
    S_AXIS_CAPTURE_tlast,
    S_AXIS_CAPTURE_tuser,
    rp_pixel_valid,
    cam_pclk,
    sys_clk,
    vid_active_i,
    vid_hsync_i,
    Q,
    vid_vsync_i,
    in_panel_d2,
    \vid_pdata_r_reg[23] ,
    E,
    sccb_fired1_out,
    rst,
    sync_h_reg,
    vid_active_r_reg,
    vid_active_r_reg_0,
    vid_hsync_r_reg,
    vid_hsync_r_reg_0,
    vid_hsync_r_reg_1,
    vid_vsync_r_reg,
    vid_vsync_r_reg_0,
    sccb_fired);
  output cam_xclk;
  output hdmi_tx_clk_n;
  output hdmi_tx_clk_p;
  output [2:0]hdmi_tx_d_n;
  output [2:0]hdmi_tx_d_p;
  output mmcm_locked;
  output pixel_clk;
  output led4_g;
  output [0:0]SR;
  output \sync_h_reg[9] ;
  output rst_0;
  output rst_1;
  output [0:0]\bbstub_peripheral_aresetn[0] ;
  output \sync_h_reg[10] ;
  output \sync_h_reg[8] ;
  output \sync_v_reg[0] ;
  output sccb_fired_reg;
  input [15:0]axis_data_fifo_0;
  input S_AXIS_CAPTURE_tlast;
  input [0:0]S_AXIS_CAPTURE_tuser;
  input rp_pixel_valid;
  input cam_pclk;
  input sys_clk;
  input vid_active_i;
  input vid_hsync_i;
  input [7:0]Q;
  input vid_vsync_i;
  input in_panel_d2;
  input \vid_pdata_r_reg[23] ;
  input [0:0]E;
  input sccb_fired1_out;
  input rst;
  input [3:0]sync_h_reg;
  input vid_active_r_reg;
  input vid_active_r_reg_0;
  input vid_hsync_r_reg;
  input vid_hsync_r_reg_0;
  input vid_hsync_r_reg_1;
  input vid_vsync_r_reg;
  input [3:0]vid_vsync_r_reg_0;
  input sccb_fired;

  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]SR;
  wire S_AXIS_CAPTURE_tlast;
  wire [0:0]S_AXIS_CAPTURE_tuser;
  wire aresetn_pixel;
  wire [15:0]axis_data_fifo_0;
  wire [0:0]\bbstub_peripheral_aresetn[0] ;
  wire cam_pclk;
  wire cam_xclk;
  wire hdmi_tx_clk_n;
  wire hdmi_tx_clk_p;
  wire [2:0]hdmi_tx_d_n;
  wire [2:0]hdmi_tx_d_p;
  wire in_panel_d2;
  wire led4_g;
  wire mmcm_locked;
  wire pixel_clk;
  wire rp_pixel_valid;
  wire rst;
  wire rst_0;
  wire rst_1;
  wire sccb_fired;
  wire sccb_fired1_out;
  wire sccb_fired_reg;
  wire [3:0]sync_h_reg;
  wire \sync_h_reg[10] ;
  wire \sync_h_reg[8] ;
  wire \sync_h_reg[9] ;
  wire \sync_v_reg[0] ;
  wire sys_clk;
  wire vid_active_i;
  wire vid_active_r_reg;
  wire vid_active_r_reg_0;
  wire vid_hsync_i;
  wire vid_hsync_r_reg;
  wire vid_hsync_r_reg_0;
  wire vid_hsync_r_reg_1;
  wire \vid_pdata_r_reg[23] ;
  wire vid_vsync_i;
  wire vid_vsync_r_reg;
  wire [3:0]vid_vsync_r_reg_0;
  wire NLW_system_i_S_AXIS_CAPTURE_tready_UNCONNECTED;
  wire NLW_system_i_dbg_fifo_m_tvalid_UNCONNECTED;
  wire [15:0]NLW_system_i_fifo_m_tdata_UNCONNECTED;

  LUT2 #(
    .INIT(4'hB)) 
    \sccb_cnt[0]_i_1 
       (.I0(rst),
        .I1(mmcm_locked),
        .O(rst_1));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    sccb_fired_i_1
       (.I0(sccb_fired),
        .I1(sccb_fired1_out),
        .I2(mmcm_locked),
        .I3(rst),
        .O(sccb_fired_reg));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h20)) 
    sccb_start_i_1
       (.I0(sccb_fired1_out),
        .I1(rst),
        .I2(mmcm_locked),
        .O(rst_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \sync_h[0]_i_1 
       (.I0(E),
        .I1(aresetn_pixel),
        .O(\sync_h_reg[9] ));
  LUT1 #(
    .INIT(2'h1)) 
    \sync_v[2]_i_1 
       (.I0(aresetn_pixel),
        .O(\bbstub_peripheral_aresetn[0] ));
  (* HW_HANDOFF = "system.hwdef" *) 
  design_1_top_0_0_system system_i
       (.S_AXIS_CAPTURE_tdata(axis_data_fifo_0),
        .S_AXIS_CAPTURE_tlast(S_AXIS_CAPTURE_tlast),
        .S_AXIS_CAPTURE_tready(NLW_system_i_S_AXIS_CAPTURE_tready_UNCONNECTED),
        .S_AXIS_CAPTURE_tuser(S_AXIS_CAPTURE_tuser),
        .S_AXIS_CAPTURE_tvalid(rp_pixel_valid),
        .aresetn_pixel(aresetn_pixel),
        .cam_pclk_i(cam_pclk),
        .cam_xclk(cam_xclk),
        .dbg_fifo_m_tvalid(NLW_system_i_dbg_fifo_m_tvalid_UNCONNECTED),
        .fifo_m_tdata(NLW_system_i_fifo_m_tdata_UNCONNECTED[15:0]),
        .hdmi_tx_clk_n(hdmi_tx_clk_n),
        .hdmi_tx_clk_p(hdmi_tx_clk_p),
        .hdmi_tx_d_n(hdmi_tx_d_n),
        .hdmi_tx_d_p(hdmi_tx_d_p),
        .mmcm_locked(mmcm_locked),
        .pixel_clk(pixel_clk),
        .rgb2dvi_pll_locked(led4_g),
        .sys_clk(sys_clk),
        .vid_active_i(vid_active_i),
        .vid_hsync_i(vid_hsync_i),
        .vid_pdata_i({Q,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .vid_vsync_i(vid_vsync_i));
  LUT6 #(
    .INIT(64'h0507000000000000)) 
    vid_active_r_i_1
       (.I0(sync_h_reg[3]),
        .I1(sync_h_reg[1]),
        .I2(vid_active_r_reg),
        .I3(sync_h_reg[2]),
        .I4(vid_active_r_reg_0),
        .I5(aresetn_pixel),
        .O(\sync_h_reg[10] ));
  LUT6 #(
    .INIT(64'h2030200000000000)) 
    vid_hsync_r_i_1
       (.I0(vid_hsync_r_reg),
        .I1(vid_hsync_r_reg_0),
        .I2(sync_h_reg[1]),
        .I3(sync_h_reg[0]),
        .I4(vid_hsync_r_reg_1),
        .I5(aresetn_pixel),
        .O(\sync_h_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \vid_pdata_r[23]_i_1 
       (.I0(in_panel_d2),
        .I1(\vid_pdata_r_reg[23] ),
        .I2(aresetn_pixel),
        .O(SR));
  LUT6 #(
    .INIT(64'h0054555500000000)) 
    vid_vsync_r_i_1
       (.I0(vid_vsync_r_reg),
        .I1(vid_vsync_r_reg_0[0]),
        .I2(vid_vsync_r_reg_0[1]),
        .I3(vid_vsync_r_reg_0[3]),
        .I4(vid_vsync_r_reg_0[2]),
        .I5(aresetn_pixel),
        .O(\sync_v_reg[0] ));
endmodule

(* ORIG_REF_NAME = "top" *) 
module design_1_top_0_0_top
   (Q,
    led_mmcm_locked,
    bram_read_addr,
    pixel_clk,
    cam_sda,
    cam_scl,
    hdmi_tx_clk_n,
    hdmi_tx_clk_p,
    hdmi_tx_d_n,
    hdmi_tx_d_p,
    led4_g,
    \pixel_data_reg[15] ,
    cam_xclk,
    led5_g,
    bram_read_en,
    led_pll_locked,
    led_vid_locked,
    led_pixel_active,
    bram_en,
    frame_done,
    rst,
    cam_href,
    cam_pclk,
    sys_clk,
    cam_data,
    cam_vsync,
    bram_read_data);
  output [0:0]Q;
  output led_mmcm_locked;
  output [10:0]bram_read_addr;
  output pixel_clk;
  output cam_sda;
  output cam_scl;
  output hdmi_tx_clk_n;
  output hdmi_tx_clk_p;
  output [2:0]hdmi_tx_d_n;
  output [2:0]hdmi_tx_d_p;
  output led4_g;
  output [15:0]\pixel_data_reg[15] ;
  output cam_xclk;
  output led5_g;
  output bram_read_en;
  output led_pll_locked;
  output led_vid_locked;
  output led_pixel_active;
  output bram_en;
  output frame_done;
  input rst;
  input cam_href;
  input cam_pclk;
  input sys_clk;
  input [7:0]cam_data;
  input cam_vsync;
  input [7:0]bram_read_data;

  wire [3:1]A;
  wire [7:0]B;
  wire [0:0]Q;
  wire RSTC;
  wire bram_en;
  wire [10:0]bram_read_addr;
  wire \bram_read_addr[4]_INST_0_i_1_n_0 ;
  wire \bram_read_addr[4]_INST_0_i_2_n_0 ;
  wire \bram_read_addr[4]_INST_0_n_0 ;
  wire \bram_read_addr[4]_INST_0_n_1 ;
  wire \bram_read_addr[4]_INST_0_n_2 ;
  wire \bram_read_addr[4]_INST_0_n_3 ;
  wire \bram_read_addr[8]_INST_0_n_1 ;
  wire \bram_read_addr[8]_INST_0_n_2 ;
  wire \bram_read_addr[8]_INST_0_n_3 ;
  wire [7:0]bram_read_data;
  wire bram_read_en;
  wire bram_read_en_INST_0_i_1_n_0;
  wire bram_read_en_INST_0_i_2_n_0;
  wire bram_read_en_INST_0_i_3_n_0;
  wire bram_read_en_INST_0_i_4_n_0;
  wire bram_read_en_INST_0_i_5_n_0;
  wire bram_read_en_INST_0_i_6_n_0;
  wire [7:0]cam_data;
  wire cam_href;
  wire cam_href_d;
  wire cam_pclk;
  wire cam_scl;
  wire cam_sda;
  wire cam_vsync;
  wire [0:0]cam_x;
  wire [9:0]cam_x_reg;
  wire cam_xclk;
  wire cam_xclk_o;
  wire [0:0]cam_y;
  wire [8:0]cam_y_reg;
  wire capture_axis_tlast;
  wire capture_axis_tuser;
  wire [11:4]cnn_raddr0;
  wire cnn_raddr0__0_carry__0_i_2_n_0;
  wire cnn_raddr0__0_carry__0_i_3_n_0;
  wire cnn_raddr0__0_carry__0_i_4_n_0;
  wire cnn_raddr0__0_carry__0_i_5_n_0;
  wire cnn_raddr0__0_carry__0_i_6_n_0;
  wire cnn_raddr0__0_carry__0_i_7_n_0;
  wire cnn_raddr0__0_carry__0_i_8_n_0;
  wire cnn_raddr0__0_carry__0_n_0;
  wire cnn_raddr0__0_carry__0_n_1;
  wire cnn_raddr0__0_carry__0_n_2;
  wire cnn_raddr0__0_carry__0_n_3;
  wire cnn_raddr0__0_carry__1_i_1_n_0;
  wire cnn_raddr0__0_carry__1_i_2_n_0;
  wire cnn_raddr0__0_carry__1_n_3;
  wire cnn_raddr0__0_carry_i_1_n_0;
  wire cnn_raddr0__0_carry_i_2_n_0;
  wire cnn_raddr0__0_carry_i_3_n_0;
  wire cnn_raddr0__0_carry_n_0;
  wire cnn_raddr0__0_carry_n_1;
  wire cnn_raddr0__0_carry_n_2;
  wire cnn_raddr0__0_carry_n_3;
  wire cnn_raddr0_carry__0_i_3_n_0;
  wire cnn_raddr0_carry__0_i_4_n_0;
  wire cnn_raddr0_carry__0_i_5_n_0;
  wire cnn_raddr0_carry__0_i_6_n_0;
  wire cnn_raddr0_carry__0_n_1;
  wire cnn_raddr0_carry__0_n_2;
  wire cnn_raddr0_carry__0_n_3;
  wire cnn_raddr0_carry_i_2_n_0;
  wire cnn_raddr0_carry_i_3_n_0;
  wire cnn_raddr0_carry_n_0;
  wire cnn_raddr0_carry_n_1;
  wire cnn_raddr0_carry_n_2;
  wire cnn_raddr0_carry_n_3;
  wire [9:9]disp_cam_x;
  wire frame_buf_reg_0_0_i_10_n_0;
  wire frame_buf_reg_0_0_i_11_n_0;
  wire frame_buf_reg_0_0_i_11_n_1;
  wire frame_buf_reg_0_0_i_11_n_2;
  wire frame_buf_reg_0_0_i_11_n_3;
  wire frame_buf_reg_0_0_i_12_n_0;
  wire frame_buf_reg_0_0_i_13_n_0;
  wire frame_buf_reg_0_0_i_14_n_0;
  wire frame_buf_reg_0_0_i_16_n_0;
  wire frame_buf_reg_0_0_i_16_n_1;
  wire frame_buf_reg_0_0_i_16_n_2;
  wire frame_buf_reg_0_0_i_16_n_3;
  wire frame_buf_reg_0_0_i_17_n_0;
  wire frame_buf_reg_0_0_i_17_n_1;
  wire frame_buf_reg_0_0_i_17_n_2;
  wire frame_buf_reg_0_0_i_17_n_3;
  wire frame_buf_reg_0_0_i_18_n_0;
  wire frame_buf_reg_0_0_i_19_n_0;
  wire frame_buf_reg_0_0_i_20_n_0;
  wire frame_buf_reg_0_0_i_21_n_0;
  wire frame_buf_reg_0_0_i_22_n_0;
  wire frame_buf_reg_0_0_i_23_n_0;
  wire frame_buf_reg_0_0_i_24_n_0;
  wire frame_buf_reg_0_0_i_25_n_0;
  wire frame_buf_reg_0_0_i_26_n_0;
  wire frame_buf_reg_0_0_i_27_n_0;
  wire frame_buf_reg_0_0_i_28_n_0;
  wire frame_buf_reg_0_0_i_29_n_0;
  wire frame_buf_reg_0_0_i_2_n_0;
  wire frame_buf_reg_0_0_i_30_n_0;
  wire frame_buf_reg_0_0_i_31_n_0;
  wire frame_buf_reg_0_0_i_32_n_0;
  wire frame_buf_reg_0_0_i_33_n_0;
  wire frame_buf_reg_0_0_i_34_n_0;
  wire frame_buf_reg_0_0_i_35_n_0;
  wire frame_buf_reg_0_0_i_36_n_0;
  wire frame_buf_reg_0_0_i_37_n_0;
  wire frame_buf_reg_0_0_i_3_n_0;
  wire frame_buf_reg_0_0_i_4_n_2;
  wire frame_buf_reg_0_0_i_4_n_3;
  wire frame_buf_reg_0_0_i_4_n_5;
  wire frame_buf_reg_0_0_i_4_n_6;
  wire frame_buf_reg_0_0_i_4_n_7;
  wire frame_buf_reg_0_0_i_5_n_0;
  wire frame_buf_reg_0_0_i_5_n_1;
  wire frame_buf_reg_0_0_i_5_n_2;
  wire frame_buf_reg_0_0_i_5_n_3;
  wire frame_buf_reg_0_0_i_5_n_4;
  wire frame_buf_reg_0_0_i_5_n_5;
  wire frame_buf_reg_0_0_i_5_n_6;
  wire frame_buf_reg_0_0_i_5_n_7;
  wire frame_buf_reg_0_0_i_6_n_0;
  wire frame_buf_reg_0_0_i_6_n_1;
  wire frame_buf_reg_0_0_i_6_n_2;
  wire frame_buf_reg_0_0_i_6_n_3;
  wire frame_buf_reg_0_0_i_6_n_4;
  wire frame_buf_reg_0_0_i_6_n_5;
  wire frame_buf_reg_0_0_i_6_n_6;
  wire frame_buf_reg_0_0_i_6_n_7;
  wire frame_buf_reg_0_0_i_7_n_0;
  wire frame_buf_reg_0_0_i_7_n_1;
  wire frame_buf_reg_0_0_i_7_n_2;
  wire frame_buf_reg_0_0_i_7_n_3;
  wire frame_buf_reg_0_0_i_8_n_0;
  wire frame_buf_reg_0_0_i_8_n_1;
  wire frame_buf_reg_0_0_i_8_n_2;
  wire frame_buf_reg_0_0_i_8_n_3;
  wire frame_buf_reg_0_0_i_9_n_0;
  wire frame_buf_reg_0_0_n_0;
  wire frame_buf_reg_0_0_n_1;
  wire frame_buf_reg_0_1_i_1_n_0;
  wire frame_buf_reg_0_1_n_0;
  wire frame_buf_reg_0_1_n_1;
  wire frame_buf_reg_0_2_i_1_n_0;
  wire frame_buf_reg_0_2_i_1_n_1;
  wire frame_buf_reg_0_2_i_1_n_2;
  wire frame_buf_reg_0_2_i_1_n_3;
  wire frame_buf_reg_0_2_i_2_n_0;
  wire frame_buf_reg_0_2_i_3_n_0;
  wire frame_buf_reg_0_2_i_4_n_0;
  wire frame_buf_reg_0_2_i_5_n_0;
  wire frame_buf_reg_0_2_i_6_n_0;
  wire frame_buf_reg_0_2_i_7_n_0;
  wire frame_buf_reg_0_2_i_8_n_0;
  wire frame_buf_reg_0_2_i_9_n_0;
  wire frame_buf_reg_0_2_n_0;
  wire frame_buf_reg_0_2_n_1;
  wire frame_buf_reg_0_3_n_0;
  wire frame_buf_reg_0_3_n_1;
  wire frame_buf_reg_0_4_n_0;
  wire frame_buf_reg_0_4_n_1;
  wire frame_buf_reg_0_5_i_1_n_0;
  wire frame_buf_reg_0_5_n_0;
  wire frame_buf_reg_0_5_n_1;
  wire frame_buf_reg_0_6_i_2_n_0;
  wire frame_buf_reg_0_6_i_3_n_0;
  wire frame_buf_reg_0_6_n_0;
  wire frame_buf_reg_0_6_n_1;
  wire frame_buf_reg_0_7_n_0;
  wire frame_buf_reg_0_7_n_1;
  wire frame_buf_reg_1_0__0_i_2_n_0;
  wire frame_buf_reg_1_0__0_i_3_n_0;
  wire frame_buf_reg_1_0__0_i_4_n_0;
  wire frame_buf_reg_1_0__0_n_35;
  wire frame_buf_reg_1_0__0_n_67;
  wire frame_buf_reg_1_0_n_67;
  wire frame_buf_reg_1_1__0_n_35;
  wire frame_buf_reg_1_1__0_n_67;
  wire frame_buf_reg_1_1_n_67;
  wire frame_buf_reg_1_2__0_n_35;
  wire frame_buf_reg_1_2__0_n_67;
  wire frame_buf_reg_1_2_i_1_n_0;
  wire frame_buf_reg_1_2_n_67;
  wire frame_buf_reg_1_3__0_i_1_n_0;
  wire frame_buf_reg_1_3__0_n_35;
  wire frame_buf_reg_1_3__0_n_67;
  wire frame_buf_reg_1_3_i_1_n_0;
  wire frame_buf_reg_1_3_n_67;
  wire frame_buf_reg_1_4__0_n_35;
  wire frame_buf_reg_1_4__0_n_67;
  wire frame_buf_reg_1_4_n_67;
  wire frame_buf_reg_1_5__0_i_1_n_0;
  wire frame_buf_reg_1_5__0_n_35;
  wire frame_buf_reg_1_5__0_n_67;
  wire frame_buf_reg_1_5_n_67;
  wire frame_buf_reg_1_6__0_n_35;
  wire frame_buf_reg_1_6__0_n_67;
  wire frame_buf_reg_1_6_n_67;
  wire frame_buf_reg_1_7__0_n_35;
  wire frame_buf_reg_1_7__0_n_67;
  wire frame_buf_reg_1_7_i_1_n_0;
  wire frame_buf_reg_1_7_n_67;
  wire frame_buf_reg_mux_sel_b_pos_0__6_i_1_n_2;
  wire frame_buf_reg_mux_sel_b_pos_0__6_i_1_n_3;
  wire frame_buf_reg_mux_sel_b_pos_0__6_n_0;
  wire frame_buf_reg_mux_sel_b_pos_1__6_n_0;
  wire frame_done;
  wire hdmi_tx_clk_n;
  wire hdmi_tx_clk_p;
  wire [2:0]hdmi_tx_d_n;
  wire [2:0]hdmi_tx_d_p;
  wire \hr_cnt[0]_i_2_n_0 ;
  wire \hr_cnt[13]_i_1_n_0 ;
  wire \hr_cnt_reg[0]_i_1_n_0 ;
  wire \hr_cnt_reg[0]_i_1_n_1 ;
  wire \hr_cnt_reg[0]_i_1_n_2 ;
  wire \hr_cnt_reg[0]_i_1_n_3 ;
  wire \hr_cnt_reg[0]_i_1_n_4 ;
  wire \hr_cnt_reg[0]_i_1_n_5 ;
  wire \hr_cnt_reg[0]_i_1_n_6 ;
  wire \hr_cnt_reg[0]_i_1_n_7 ;
  wire \hr_cnt_reg[13]_i_2_n_3 ;
  wire \hr_cnt_reg[13]_i_2_n_6 ;
  wire \hr_cnt_reg[13]_i_2_n_7 ;
  wire \hr_cnt_reg[4]_i_1_n_0 ;
  wire \hr_cnt_reg[4]_i_1_n_1 ;
  wire \hr_cnt_reg[4]_i_1_n_2 ;
  wire \hr_cnt_reg[4]_i_1_n_3 ;
  wire \hr_cnt_reg[4]_i_1_n_4 ;
  wire \hr_cnt_reg[4]_i_1_n_5 ;
  wire \hr_cnt_reg[4]_i_1_n_6 ;
  wire \hr_cnt_reg[4]_i_1_n_7 ;
  wire \hr_cnt_reg[8]_i_1_n_0 ;
  wire \hr_cnt_reg[8]_i_1_n_1 ;
  wire \hr_cnt_reg[8]_i_1_n_2 ;
  wire \hr_cnt_reg[8]_i_1_n_3 ;
  wire \hr_cnt_reg[8]_i_1_n_4 ;
  wire \hr_cnt_reg[8]_i_1_n_5 ;
  wire \hr_cnt_reg[8]_i_1_n_6 ;
  wire \hr_cnt_reg[8]_i_1_n_7 ;
  wire \hr_cnt_reg_n_0_[0] ;
  wire \hr_cnt_reg_n_0_[10] ;
  wire \hr_cnt_reg_n_0_[11] ;
  wire \hr_cnt_reg_n_0_[12] ;
  wire \hr_cnt_reg_n_0_[1] ;
  wire \hr_cnt_reg_n_0_[2] ;
  wire \hr_cnt_reg_n_0_[3] ;
  wire \hr_cnt_reg_n_0_[4] ;
  wire \hr_cnt_reg_n_0_[5] ;
  wire \hr_cnt_reg_n_0_[6] ;
  wire \hr_cnt_reg_n_0_[7] ;
  wire \hr_cnt_reg_n_0_[8] ;
  wire \hr_cnt_reg_n_0_[9] ;
  wire hr_prev;
  wire hr_s2;
  wire in_panel_d1;
  wire in_panel_d2;
  wire led4_g;
  wire led5_g;
  wire led_mmcm_locked;
  wire led_pixel_active;
  wire led_pll_locked;
  wire led_vid_locked;
  wire [0:0]p_0_in__1;
  wire [16:7]p_0_out;
  wire p_11_in;
  wire [23:16]p_1_in;
  wire [7:0]panel_y_pixel;
  wire \panel_y_pixel[7]_i_1_n_0 ;
  wire \pclk_cnt[0]_i_2_n_0 ;
  wire \pclk_cnt_reg[0]_i_1_n_0 ;
  wire \pclk_cnt_reg[0]_i_1_n_1 ;
  wire \pclk_cnt_reg[0]_i_1_n_2 ;
  wire \pclk_cnt_reg[0]_i_1_n_3 ;
  wire \pclk_cnt_reg[0]_i_1_n_4 ;
  wire \pclk_cnt_reg[0]_i_1_n_5 ;
  wire \pclk_cnt_reg[0]_i_1_n_6 ;
  wire \pclk_cnt_reg[0]_i_1_n_7 ;
  wire \pclk_cnt_reg[12]_i_1_n_0 ;
  wire \pclk_cnt_reg[12]_i_1_n_1 ;
  wire \pclk_cnt_reg[12]_i_1_n_2 ;
  wire \pclk_cnt_reg[12]_i_1_n_3 ;
  wire \pclk_cnt_reg[12]_i_1_n_4 ;
  wire \pclk_cnt_reg[12]_i_1_n_5 ;
  wire \pclk_cnt_reg[12]_i_1_n_6 ;
  wire \pclk_cnt_reg[12]_i_1_n_7 ;
  wire \pclk_cnt_reg[16]_i_1_n_0 ;
  wire \pclk_cnt_reg[16]_i_1_n_1 ;
  wire \pclk_cnt_reg[16]_i_1_n_2 ;
  wire \pclk_cnt_reg[16]_i_1_n_3 ;
  wire \pclk_cnt_reg[16]_i_1_n_4 ;
  wire \pclk_cnt_reg[16]_i_1_n_5 ;
  wire \pclk_cnt_reg[16]_i_1_n_6 ;
  wire \pclk_cnt_reg[16]_i_1_n_7 ;
  wire \pclk_cnt_reg[23]_i_1_n_1 ;
  wire \pclk_cnt_reg[23]_i_1_n_2 ;
  wire \pclk_cnt_reg[23]_i_1_n_3 ;
  wire \pclk_cnt_reg[23]_i_1_n_4 ;
  wire \pclk_cnt_reg[23]_i_1_n_5 ;
  wire \pclk_cnt_reg[23]_i_1_n_6 ;
  wire \pclk_cnt_reg[23]_i_1_n_7 ;
  wire \pclk_cnt_reg[4]_i_1_n_0 ;
  wire \pclk_cnt_reg[4]_i_1_n_1 ;
  wire \pclk_cnt_reg[4]_i_1_n_2 ;
  wire \pclk_cnt_reg[4]_i_1_n_3 ;
  wire \pclk_cnt_reg[4]_i_1_n_4 ;
  wire \pclk_cnt_reg[4]_i_1_n_5 ;
  wire \pclk_cnt_reg[4]_i_1_n_6 ;
  wire \pclk_cnt_reg[4]_i_1_n_7 ;
  wire \pclk_cnt_reg[8]_i_1_n_0 ;
  wire \pclk_cnt_reg[8]_i_1_n_1 ;
  wire \pclk_cnt_reg[8]_i_1_n_2 ;
  wire \pclk_cnt_reg[8]_i_1_n_3 ;
  wire \pclk_cnt_reg[8]_i_1_n_4 ;
  wire \pclk_cnt_reg[8]_i_1_n_5 ;
  wire \pclk_cnt_reg[8]_i_1_n_6 ;
  wire \pclk_cnt_reg[8]_i_1_n_7 ;
  wire \pclk_cnt_reg_n_0_[0] ;
  wire \pclk_cnt_reg_n_0_[10] ;
  wire \pclk_cnt_reg_n_0_[11] ;
  wire \pclk_cnt_reg_n_0_[12] ;
  wire \pclk_cnt_reg_n_0_[13] ;
  wire \pclk_cnt_reg_n_0_[14] ;
  wire \pclk_cnt_reg_n_0_[15] ;
  wire \pclk_cnt_reg_n_0_[16] ;
  wire \pclk_cnt_reg_n_0_[17] ;
  wire \pclk_cnt_reg_n_0_[18] ;
  wire \pclk_cnt_reg_n_0_[19] ;
  wire \pclk_cnt_reg_n_0_[1] ;
  wire \pclk_cnt_reg_n_0_[20] ;
  wire \pclk_cnt_reg_n_0_[21] ;
  wire \pclk_cnt_reg_n_0_[22] ;
  wire \pclk_cnt_reg_n_0_[2] ;
  wire \pclk_cnt_reg_n_0_[3] ;
  wire \pclk_cnt_reg_n_0_[4] ;
  wire \pclk_cnt_reg_n_0_[5] ;
  wire \pclk_cnt_reg_n_0_[6] ;
  wire \pclk_cnt_reg_n_0_[7] ;
  wire \pclk_cnt_reg_n_0_[8] ;
  wire \pclk_cnt_reg_n_0_[9] ;
  wire pixel_clk;
  wire [15:0]\pixel_data_reg[15] ;
  wire [16:6]qvga_raddr;
  wire [16:8]qvga_raddr0;
  wire qvga_waddr__0_i_1_n_0;
  wire qvga_waddr__0_n_0;
  wire qvga_waddr__10_n_0;
  wire qvga_waddr__11_i_1_n_0;
  wire qvga_waddr__11_n_0;
  wire qvga_waddr__12_i_1_n_0;
  wire qvga_waddr__12_n_0;
  wire qvga_waddr__13_i_1_n_0;
  wire qvga_waddr__13_n_0;
  wire qvga_waddr__14_i_1_n_0;
  wire qvga_waddr__14_n_0;
  wire qvga_waddr__15_n_0;
  wire qvga_waddr__1_i_1_n_0;
  wire qvga_waddr__1_n_0;
  wire qvga_waddr__2_i_1_n_0;
  wire qvga_waddr__2_i_2_n_0;
  wire qvga_waddr__2_n_0;
  wire qvga_waddr__3_i_1_n_0;
  wire qvga_waddr__3_n_0;
  wire qvga_waddr__4_i_1_n_0;
  wire qvga_waddr__4_n_0;
  wire qvga_waddr__5_i_1_n_0;
  wire qvga_waddr__5_n_0;
  wire qvga_waddr__6_i_1_n_0;
  wire qvga_waddr__6_n_0;
  wire qvga_waddr__7_i_1_n_0;
  wire qvga_waddr__7_n_0;
  wire qvga_waddr__8_i_3_n_0;
  wire qvga_waddr__8_i_4_n_0;
  wire qvga_waddr__8_n_0;
  wire qvga_waddr__9_n_0;
  wire qvga_waddr_i_3_n_0;
  wire qvga_waddr_i_4_n_0;
  wire qvga_waddr_n_0;
  wire rp_pixel_valid;
  wire rst;
  wire \sccb_cnt[0]_i_4_n_0 ;
  wire \sccb_cnt[0]_i_5_n_0 ;
  wire \sccb_cnt[0]_i_6_n_0 ;
  wire \sccb_cnt[0]_i_7_n_0 ;
  wire \sccb_cnt[0]_i_8_n_0 ;
  wire \sccb_cnt[0]_i_9_n_0 ;
  wire [22:3]sccb_cnt_reg;
  wire \sccb_cnt_reg[0]_i_3_n_0 ;
  wire \sccb_cnt_reg[0]_i_3_n_1 ;
  wire \sccb_cnt_reg[0]_i_3_n_2 ;
  wire \sccb_cnt_reg[0]_i_3_n_3 ;
  wire \sccb_cnt_reg[0]_i_3_n_4 ;
  wire \sccb_cnt_reg[0]_i_3_n_5 ;
  wire \sccb_cnt_reg[0]_i_3_n_6 ;
  wire \sccb_cnt_reg[0]_i_3_n_7 ;
  wire \sccb_cnt_reg[12]_i_1_n_0 ;
  wire \sccb_cnt_reg[12]_i_1_n_1 ;
  wire \sccb_cnt_reg[12]_i_1_n_2 ;
  wire \sccb_cnt_reg[12]_i_1_n_3 ;
  wire \sccb_cnt_reg[12]_i_1_n_4 ;
  wire \sccb_cnt_reg[12]_i_1_n_5 ;
  wire \sccb_cnt_reg[12]_i_1_n_6 ;
  wire \sccb_cnt_reg[12]_i_1_n_7 ;
  wire \sccb_cnt_reg[16]_i_1_n_0 ;
  wire \sccb_cnt_reg[16]_i_1_n_1 ;
  wire \sccb_cnt_reg[16]_i_1_n_2 ;
  wire \sccb_cnt_reg[16]_i_1_n_3 ;
  wire \sccb_cnt_reg[16]_i_1_n_4 ;
  wire \sccb_cnt_reg[16]_i_1_n_5 ;
  wire \sccb_cnt_reg[16]_i_1_n_6 ;
  wire \sccb_cnt_reg[16]_i_1_n_7 ;
  wire \sccb_cnt_reg[20]_i_1_n_2 ;
  wire \sccb_cnt_reg[20]_i_1_n_3 ;
  wire \sccb_cnt_reg[20]_i_1_n_5 ;
  wire \sccb_cnt_reg[20]_i_1_n_6 ;
  wire \sccb_cnt_reg[20]_i_1_n_7 ;
  wire \sccb_cnt_reg[4]_i_1_n_0 ;
  wire \sccb_cnt_reg[4]_i_1_n_1 ;
  wire \sccb_cnt_reg[4]_i_1_n_2 ;
  wire \sccb_cnt_reg[4]_i_1_n_3 ;
  wire \sccb_cnt_reg[4]_i_1_n_4 ;
  wire \sccb_cnt_reg[4]_i_1_n_5 ;
  wire \sccb_cnt_reg[4]_i_1_n_6 ;
  wire \sccb_cnt_reg[4]_i_1_n_7 ;
  wire \sccb_cnt_reg[8]_i_1_n_0 ;
  wire \sccb_cnt_reg[8]_i_1_n_1 ;
  wire \sccb_cnt_reg[8]_i_1_n_2 ;
  wire \sccb_cnt_reg[8]_i_1_n_3 ;
  wire \sccb_cnt_reg[8]_i_1_n_4 ;
  wire \sccb_cnt_reg[8]_i_1_n_5 ;
  wire \sccb_cnt_reg[8]_i_1_n_6 ;
  wire \sccb_cnt_reg[8]_i_1_n_7 ;
  wire \sccb_cnt_reg_n_0_[0] ;
  wire \sccb_cnt_reg_n_0_[1] ;
  wire \sccb_cnt_reg_n_0_[2] ;
  wire sccb_fired;
  wire sccb_fired1_out;
  wire sccb_start;
  wire sccb_start_reg_n_0;
  wire sel;
  wire \sync_h[0]_i_3_n_0 ;
  wire [10:0]sync_h_reg;
  wire \sync_h_reg[0]_i_2_n_0 ;
  wire \sync_h_reg[0]_i_2_n_1 ;
  wire \sync_h_reg[0]_i_2_n_2 ;
  wire \sync_h_reg[0]_i_2_n_3 ;
  wire \sync_h_reg[0]_i_2_n_4 ;
  wire \sync_h_reg[0]_i_2_n_5 ;
  wire \sync_h_reg[0]_i_2_n_6 ;
  wire \sync_h_reg[0]_i_2_n_7 ;
  wire \sync_h_reg[4]_i_1_n_0 ;
  wire \sync_h_reg[4]_i_1_n_1 ;
  wire \sync_h_reg[4]_i_1_n_2 ;
  wire \sync_h_reg[4]_i_1_n_3 ;
  wire \sync_h_reg[4]_i_1_n_4 ;
  wire \sync_h_reg[4]_i_1_n_5 ;
  wire \sync_h_reg[4]_i_1_n_6 ;
  wire \sync_h_reg[4]_i_1_n_7 ;
  wire \sync_h_reg[8]_i_1_n_2 ;
  wire \sync_h_reg[8]_i_1_n_3 ;
  wire \sync_h_reg[8]_i_1_n_5 ;
  wire \sync_h_reg[8]_i_1_n_6 ;
  wire \sync_h_reg[8]_i_1_n_7 ;
  wire [0:0]sync_v;
  wire sync_v1_carry__0_n_0;
  wire sync_v1_carry__0_n_1;
  wire sync_v1_carry__0_n_2;
  wire sync_v1_carry__0_n_3;
  wire sync_v1_carry__0_n_4;
  wire sync_v1_carry__0_n_5;
  wire sync_v1_carry__0_n_6;
  wire sync_v1_carry__0_n_7;
  wire sync_v1_carry__1_n_2;
  wire sync_v1_carry__1_n_3;
  wire sync_v1_carry__1_n_5;
  wire sync_v1_carry__1_n_6;
  wire sync_v1_carry__1_n_7;
  wire sync_v1_carry_n_0;
  wire sync_v1_carry_n_1;
  wire sync_v1_carry_n_2;
  wire sync_v1_carry_n_3;
  wire sync_v1_carry_n_4;
  wire sync_v1_carry_n_5;
  wire sync_v1_carry_n_6;
  wire sync_v1_carry_n_7;
  wire \sync_v[0]_i_1_n_0 ;
  wire \sync_v[10]_i_1_n_0 ;
  wire \sync_v[11]_i_1_n_0 ;
  wire \sync_v[1]_i_1_n_0 ;
  wire \sync_v[2]_i_3_n_0 ;
  wire \sync_v[2]_i_4_n_0 ;
  wire \sync_v[2]_i_5_n_0 ;
  wire \sync_v[2]_i_6_n_0 ;
  wire \sync_v[2]_i_7_n_0 ;
  wire \sync_v[3]_i_1_n_0 ;
  wire \sync_v[4]_i_1_n_0 ;
  wire \sync_v[5]_i_1_n_0 ;
  wire \sync_v[6]_i_1_n_0 ;
  wire \sync_v[7]_i_1_n_0 ;
  wire \sync_v[8]_i_1_n_0 ;
  wire \sync_v[9]_i_1_n_0 ;
  wire \sync_v_reg_n_0_[0] ;
  wire \sync_v_reg_n_0_[10] ;
  wire \sync_v_reg_n_0_[11] ;
  wire \sync_v_reg_n_0_[1] ;
  wire \sync_v_reg_n_0_[3] ;
  wire \sync_v_reg_n_0_[4] ;
  wire \sync_v_reg_n_0_[5] ;
  wire \sync_v_reg_n_0_[6] ;
  wire \sync_v_reg_n_0_[7] ;
  wire \sync_v_reg_n_0_[8] ;
  wire \sync_v_reg_n_0_[9] ;
  wire sys_clk;
  wire u_read_pixels_n_3;
  wire u_read_pixels_n_4;
  wire u_system_n_12;
  wire u_system_n_13;
  wire u_system_n_14;
  wire u_system_n_15;
  wire u_system_n_16;
  wire u_system_n_17;
  wire u_system_n_18;
  wire u_system_n_19;
  wire u_system_n_20;
  wire vid_active_r;
  wire vid_active_r_i_2_n_0;
  wire vid_active_r_i_3_n_0;
  wire vid_hsync_r;
  wire vid_hsync_r_i_2_n_0;
  wire vid_hsync_r_i_3_n_0;
  wire vid_hsync_r_i_4_n_0;
  wire \vid_pdata_r_reg_n_0_[16] ;
  wire \vid_pdata_r_reg_n_0_[17] ;
  wire \vid_pdata_r_reg_n_0_[18] ;
  wire \vid_pdata_r_reg_n_0_[19] ;
  wire \vid_pdata_r_reg_n_0_[20] ;
  wire \vid_pdata_r_reg_n_0_[21] ;
  wire \vid_pdata_r_reg_n_0_[22] ;
  wire \vid_pdata_r_reg_n_0_[23] ;
  wire vid_vsync_r;
  wire vid_vsync_r_i_2_n_0;
  wire vid_vsync_r_i_3_n_0;
  wire \vs_cnt[0]_i_2_n_0 ;
  wire \vs_cnt_reg[0]_i_1_n_0 ;
  wire \vs_cnt_reg[0]_i_1_n_1 ;
  wire \vs_cnt_reg[0]_i_1_n_2 ;
  wire \vs_cnt_reg[0]_i_1_n_3 ;
  wire \vs_cnt_reg[0]_i_1_n_4 ;
  wire \vs_cnt_reg[0]_i_1_n_5 ;
  wire \vs_cnt_reg[0]_i_1_n_6 ;
  wire \vs_cnt_reg[0]_i_1_n_7 ;
  wire \vs_cnt_reg[5]_i_2_n_3 ;
  wire \vs_cnt_reg[5]_i_2_n_6 ;
  wire \vs_cnt_reg[5]_i_2_n_7 ;
  wire \vs_cnt_reg_n_0_[0] ;
  wire \vs_cnt_reg_n_0_[1] ;
  wire \vs_cnt_reg_n_0_[2] ;
  wire \vs_cnt_reg_n_0_[3] ;
  wire \vs_cnt_reg_n_0_[4] ;
  wire vs_prev;
  wire vs_s2;
  wire \xclk_cnt[0]_i_2_n_0 ;
  wire \xclk_cnt_reg[0]_i_1_n_0 ;
  wire \xclk_cnt_reg[0]_i_1_n_1 ;
  wire \xclk_cnt_reg[0]_i_1_n_2 ;
  wire \xclk_cnt_reg[0]_i_1_n_3 ;
  wire \xclk_cnt_reg[0]_i_1_n_4 ;
  wire \xclk_cnt_reg[0]_i_1_n_5 ;
  wire \xclk_cnt_reg[0]_i_1_n_6 ;
  wire \xclk_cnt_reg[0]_i_1_n_7 ;
  wire \xclk_cnt_reg[12]_i_1_n_0 ;
  wire \xclk_cnt_reg[12]_i_1_n_1 ;
  wire \xclk_cnt_reg[12]_i_1_n_2 ;
  wire \xclk_cnt_reg[12]_i_1_n_3 ;
  wire \xclk_cnt_reg[12]_i_1_n_4 ;
  wire \xclk_cnt_reg[12]_i_1_n_5 ;
  wire \xclk_cnt_reg[12]_i_1_n_6 ;
  wire \xclk_cnt_reg[12]_i_1_n_7 ;
  wire \xclk_cnt_reg[16]_i_1_n_0 ;
  wire \xclk_cnt_reg[16]_i_1_n_1 ;
  wire \xclk_cnt_reg[16]_i_1_n_2 ;
  wire \xclk_cnt_reg[16]_i_1_n_3 ;
  wire \xclk_cnt_reg[16]_i_1_n_4 ;
  wire \xclk_cnt_reg[16]_i_1_n_5 ;
  wire \xclk_cnt_reg[16]_i_1_n_6 ;
  wire \xclk_cnt_reg[16]_i_1_n_7 ;
  wire \xclk_cnt_reg[23]_i_1_n_1 ;
  wire \xclk_cnt_reg[23]_i_1_n_2 ;
  wire \xclk_cnt_reg[23]_i_1_n_3 ;
  wire \xclk_cnt_reg[23]_i_1_n_4 ;
  wire \xclk_cnt_reg[23]_i_1_n_5 ;
  wire \xclk_cnt_reg[23]_i_1_n_6 ;
  wire \xclk_cnt_reg[23]_i_1_n_7 ;
  wire \xclk_cnt_reg[4]_i_1_n_0 ;
  wire \xclk_cnt_reg[4]_i_1_n_1 ;
  wire \xclk_cnt_reg[4]_i_1_n_2 ;
  wire \xclk_cnt_reg[4]_i_1_n_3 ;
  wire \xclk_cnt_reg[4]_i_1_n_4 ;
  wire \xclk_cnt_reg[4]_i_1_n_5 ;
  wire \xclk_cnt_reg[4]_i_1_n_6 ;
  wire \xclk_cnt_reg[4]_i_1_n_7 ;
  wire \xclk_cnt_reg[8]_i_1_n_0 ;
  wire \xclk_cnt_reg[8]_i_1_n_1 ;
  wire \xclk_cnt_reg[8]_i_1_n_2 ;
  wire \xclk_cnt_reg[8]_i_1_n_3 ;
  wire \xclk_cnt_reg[8]_i_1_n_4 ;
  wire \xclk_cnt_reg[8]_i_1_n_5 ;
  wire \xclk_cnt_reg[8]_i_1_n_6 ;
  wire \xclk_cnt_reg[8]_i_1_n_7 ;
  wire \xclk_cnt_reg_n_0_[0] ;
  wire \xclk_cnt_reg_n_0_[10] ;
  wire \xclk_cnt_reg_n_0_[11] ;
  wire \xclk_cnt_reg_n_0_[12] ;
  wire \xclk_cnt_reg_n_0_[13] ;
  wire \xclk_cnt_reg_n_0_[14] ;
  wire \xclk_cnt_reg_n_0_[15] ;
  wire \xclk_cnt_reg_n_0_[16] ;
  wire \xclk_cnt_reg_n_0_[17] ;
  wire \xclk_cnt_reg_n_0_[18] ;
  wire \xclk_cnt_reg_n_0_[19] ;
  wire \xclk_cnt_reg_n_0_[1] ;
  wire \xclk_cnt_reg_n_0_[20] ;
  wire \xclk_cnt_reg_n_0_[21] ;
  wire \xclk_cnt_reg_n_0_[22] ;
  wire \xclk_cnt_reg_n_0_[2] ;
  wire \xclk_cnt_reg_n_0_[3] ;
  wire \xclk_cnt_reg_n_0_[4] ;
  wire \xclk_cnt_reg_n_0_[5] ;
  wire \xclk_cnt_reg_n_0_[6] ;
  wire \xclk_cnt_reg_n_0_[7] ;
  wire \xclk_cnt_reg_n_0_[8] ;
  wire \xclk_cnt_reg_n_0_[9] ;
  wire [7:0]y_luma;
  wire [3:3]\NLW_bram_read_addr[8]_INST_0_CO_UNCONNECTED ;
  wire [0:0]NLW_cnn_raddr0__0_carry_O_UNCONNECTED;
  wire [3:1]NLW_cnn_raddr0__0_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_cnn_raddr0__0_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_cnn_raddr0_carry__0_CO_UNCONNECTED;
  wire NLW_frame_buf_reg_0_0_DBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_0_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_0_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_0_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_0_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_0_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_buf_reg_0_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_frame_buf_reg_0_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_0_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_0_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_buf_reg_0_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_buf_reg_0_0_RDADDRECC_UNCONNECTED;
  wire [1:0]NLW_frame_buf_reg_0_0_i_11_O_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_0_0_i_15_CO_UNCONNECTED;
  wire [3:1]NLW_frame_buf_reg_0_0_i_15_O_UNCONNECTED;
  wire [3:2]NLW_frame_buf_reg_0_0_i_4_CO_UNCONNECTED;
  wire [3:3]NLW_frame_buf_reg_0_0_i_4_O_UNCONNECTED;
  wire NLW_frame_buf_reg_0_1_DBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_0_1_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_0_1_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_0_1_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_buf_reg_0_1_DOADO_UNCONNECTED;
  wire [31:0]NLW_frame_buf_reg_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_buf_reg_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_buf_reg_0_1_RDADDRECC_UNCONNECTED;
  wire NLW_frame_buf_reg_0_2_DBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_0_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_0_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_0_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_0_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_0_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_buf_reg_0_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_frame_buf_reg_0_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_0_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_0_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_buf_reg_0_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_buf_reg_0_2_RDADDRECC_UNCONNECTED;
  wire NLW_frame_buf_reg_0_3_DBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_0_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_0_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_0_3_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_0_3_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_0_3_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_buf_reg_0_3_DOADO_UNCONNECTED;
  wire [31:0]NLW_frame_buf_reg_0_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_0_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_0_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_buf_reg_0_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_buf_reg_0_3_RDADDRECC_UNCONNECTED;
  wire NLW_frame_buf_reg_0_4_DBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_0_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_0_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_0_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_0_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_0_4_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_buf_reg_0_4_DOADO_UNCONNECTED;
  wire [31:0]NLW_frame_buf_reg_0_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_0_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_0_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_buf_reg_0_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_buf_reg_0_4_RDADDRECC_UNCONNECTED;
  wire NLW_frame_buf_reg_0_5_DBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_0_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_0_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_0_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_0_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_0_5_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_buf_reg_0_5_DOADO_UNCONNECTED;
  wire [31:0]NLW_frame_buf_reg_0_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_0_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_0_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_buf_reg_0_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_buf_reg_0_5_RDADDRECC_UNCONNECTED;
  wire NLW_frame_buf_reg_0_6_DBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_0_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_0_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_0_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_0_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_0_6_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_buf_reg_0_6_DOADO_UNCONNECTED;
  wire [31:0]NLW_frame_buf_reg_0_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_0_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_0_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_buf_reg_0_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_buf_reg_0_6_RDADDRECC_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_0_6_i_1_CO_UNCONNECTED;
  wire [3:1]NLW_frame_buf_reg_0_6_i_1_O_UNCONNECTED;
  wire NLW_frame_buf_reg_0_7_DBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_0_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_0_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_0_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_0_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_0_7_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_buf_reg_0_7_DOADO_UNCONNECTED;
  wire [31:0]NLW_frame_buf_reg_0_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_0_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_0_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_buf_reg_0_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_buf_reg_0_7_RDADDRECC_UNCONNECTED;
  wire NLW_frame_buf_reg_1_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_frame_buf_reg_1_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_frame_buf_reg_1_0_DBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_1_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_1_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_buf_reg_1_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_frame_buf_reg_1_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_buf_reg_1_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_buf_reg_1_0_RDADDRECC_UNCONNECTED;
  wire NLW_frame_buf_reg_1_0__0_CASCADEOUTA_UNCONNECTED;
  wire NLW_frame_buf_reg_1_0__0_CASCADEOUTB_UNCONNECTED;
  wire NLW_frame_buf_reg_1_0__0_DBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_0__0_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_0__0_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_0__0_SBITERR_UNCONNECTED;
  wire [31:1]NLW_frame_buf_reg_1_0__0_DOADO_UNCONNECTED;
  wire [31:1]NLW_frame_buf_reg_1_0__0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_0__0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_0__0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_buf_reg_1_0__0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_buf_reg_1_0__0_RDADDRECC_UNCONNECTED;
  wire NLW_frame_buf_reg_1_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_frame_buf_reg_1_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_frame_buf_reg_1_1_DBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_1_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_1_1_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_1_1_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_buf_reg_1_1_DOADO_UNCONNECTED;
  wire [31:1]NLW_frame_buf_reg_1_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_buf_reg_1_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_buf_reg_1_1_RDADDRECC_UNCONNECTED;
  wire NLW_frame_buf_reg_1_1__0_CASCADEOUTA_UNCONNECTED;
  wire NLW_frame_buf_reg_1_1__0_CASCADEOUTB_UNCONNECTED;
  wire NLW_frame_buf_reg_1_1__0_DBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_1__0_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_1__0_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_1__0_SBITERR_UNCONNECTED;
  wire [31:1]NLW_frame_buf_reg_1_1__0_DOADO_UNCONNECTED;
  wire [31:1]NLW_frame_buf_reg_1_1__0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_1__0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_1__0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_buf_reg_1_1__0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_buf_reg_1_1__0_RDADDRECC_UNCONNECTED;
  wire NLW_frame_buf_reg_1_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_frame_buf_reg_1_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_frame_buf_reg_1_2_DBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_1_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_1_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_buf_reg_1_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_frame_buf_reg_1_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_buf_reg_1_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_buf_reg_1_2_RDADDRECC_UNCONNECTED;
  wire NLW_frame_buf_reg_1_2__0_CASCADEOUTA_UNCONNECTED;
  wire NLW_frame_buf_reg_1_2__0_CASCADEOUTB_UNCONNECTED;
  wire NLW_frame_buf_reg_1_2__0_DBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_2__0_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_2__0_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_2__0_SBITERR_UNCONNECTED;
  wire [31:1]NLW_frame_buf_reg_1_2__0_DOADO_UNCONNECTED;
  wire [31:1]NLW_frame_buf_reg_1_2__0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_2__0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_2__0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_buf_reg_1_2__0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_buf_reg_1_2__0_RDADDRECC_UNCONNECTED;
  wire NLW_frame_buf_reg_1_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_frame_buf_reg_1_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_frame_buf_reg_1_3_DBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_3_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_1_3_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_1_3_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_buf_reg_1_3_DOADO_UNCONNECTED;
  wire [31:1]NLW_frame_buf_reg_1_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_buf_reg_1_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_buf_reg_1_3_RDADDRECC_UNCONNECTED;
  wire NLW_frame_buf_reg_1_3__0_CASCADEOUTA_UNCONNECTED;
  wire NLW_frame_buf_reg_1_3__0_CASCADEOUTB_UNCONNECTED;
  wire NLW_frame_buf_reg_1_3__0_DBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_3__0_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_3__0_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_3__0_SBITERR_UNCONNECTED;
  wire [31:1]NLW_frame_buf_reg_1_3__0_DOADO_UNCONNECTED;
  wire [31:1]NLW_frame_buf_reg_1_3__0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_3__0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_3__0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_buf_reg_1_3__0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_buf_reg_1_3__0_RDADDRECC_UNCONNECTED;
  wire NLW_frame_buf_reg_1_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_frame_buf_reg_1_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_frame_buf_reg_1_4_DBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_1_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_1_4_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_buf_reg_1_4_DOADO_UNCONNECTED;
  wire [31:1]NLW_frame_buf_reg_1_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_buf_reg_1_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_buf_reg_1_4_RDADDRECC_UNCONNECTED;
  wire NLW_frame_buf_reg_1_4__0_CASCADEOUTA_UNCONNECTED;
  wire NLW_frame_buf_reg_1_4__0_CASCADEOUTB_UNCONNECTED;
  wire NLW_frame_buf_reg_1_4__0_DBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_4__0_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_4__0_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_4__0_SBITERR_UNCONNECTED;
  wire [31:1]NLW_frame_buf_reg_1_4__0_DOADO_UNCONNECTED;
  wire [31:1]NLW_frame_buf_reg_1_4__0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_4__0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_4__0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_buf_reg_1_4__0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_buf_reg_1_4__0_RDADDRECC_UNCONNECTED;
  wire NLW_frame_buf_reg_1_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_frame_buf_reg_1_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_frame_buf_reg_1_5_DBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_1_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_1_5_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_buf_reg_1_5_DOADO_UNCONNECTED;
  wire [31:1]NLW_frame_buf_reg_1_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_buf_reg_1_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_buf_reg_1_5_RDADDRECC_UNCONNECTED;
  wire NLW_frame_buf_reg_1_5__0_CASCADEOUTA_UNCONNECTED;
  wire NLW_frame_buf_reg_1_5__0_CASCADEOUTB_UNCONNECTED;
  wire NLW_frame_buf_reg_1_5__0_DBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_5__0_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_5__0_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_5__0_SBITERR_UNCONNECTED;
  wire [31:1]NLW_frame_buf_reg_1_5__0_DOADO_UNCONNECTED;
  wire [31:1]NLW_frame_buf_reg_1_5__0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_5__0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_5__0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_buf_reg_1_5__0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_buf_reg_1_5__0_RDADDRECC_UNCONNECTED;
  wire NLW_frame_buf_reg_1_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_frame_buf_reg_1_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_frame_buf_reg_1_6_DBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_1_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_1_6_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_buf_reg_1_6_DOADO_UNCONNECTED;
  wire [31:1]NLW_frame_buf_reg_1_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_buf_reg_1_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_buf_reg_1_6_RDADDRECC_UNCONNECTED;
  wire NLW_frame_buf_reg_1_6__0_CASCADEOUTA_UNCONNECTED;
  wire NLW_frame_buf_reg_1_6__0_CASCADEOUTB_UNCONNECTED;
  wire NLW_frame_buf_reg_1_6__0_DBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_6__0_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_6__0_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_6__0_SBITERR_UNCONNECTED;
  wire [31:1]NLW_frame_buf_reg_1_6__0_DOADO_UNCONNECTED;
  wire [31:1]NLW_frame_buf_reg_1_6__0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_6__0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_6__0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_buf_reg_1_6__0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_buf_reg_1_6__0_RDADDRECC_UNCONNECTED;
  wire NLW_frame_buf_reg_1_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_frame_buf_reg_1_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_frame_buf_reg_1_7_DBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_1_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_frame_buf_reg_1_7_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_frame_buf_reg_1_7_DOADO_UNCONNECTED;
  wire [31:1]NLW_frame_buf_reg_1_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_buf_reg_1_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_buf_reg_1_7_RDADDRECC_UNCONNECTED;
  wire NLW_frame_buf_reg_1_7__0_CASCADEOUTA_UNCONNECTED;
  wire NLW_frame_buf_reg_1_7__0_CASCADEOUTB_UNCONNECTED;
  wire NLW_frame_buf_reg_1_7__0_DBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_7__0_INJECTDBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_7__0_INJECTSBITERR_UNCONNECTED;
  wire NLW_frame_buf_reg_1_7__0_SBITERR_UNCONNECTED;
  wire [31:1]NLW_frame_buf_reg_1_7__0_DOADO_UNCONNECTED;
  wire [31:1]NLW_frame_buf_reg_1_7__0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_7__0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_frame_buf_reg_1_7__0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_frame_buf_reg_1_7__0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_frame_buf_reg_1_7__0_RDADDRECC_UNCONNECTED;
  wire [3:2]NLW_frame_buf_reg_mux_sel_b_pos_0__6_i_1_CO_UNCONNECTED;
  wire [3:3]NLW_frame_buf_reg_mux_sel_b_pos_0__6_i_1_O_UNCONNECTED;
  wire [3:1]\NLW_hr_cnt_reg[13]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_hr_cnt_reg[13]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_pclk_cnt_reg[23]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_sccb_cnt_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_sccb_cnt_reg[20]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_sync_h_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_sync_h_reg[8]_i_1_O_UNCONNECTED ;
  wire [3:2]NLW_sync_v1_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_sync_v1_carry__1_O_UNCONNECTED;
  wire NLW_u_xclk_oddr_R_UNCONNECTED;
  wire NLW_u_xclk_oddr_S_UNCONNECTED;
  wire [3:1]\NLW_vs_cnt_reg[5]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_vs_cnt_reg[5]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_xclk_cnt_reg[23]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \bram_read_addr[1]_INST_0 
       (.I0(\sync_v_reg_n_0_[3] ),
        .O(bram_read_addr[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \bram_read_addr[2]_INST_0 
       (.I0(\sync_v_reg_n_0_[4] ),
        .I1(\sync_v_reg_n_0_[3] ),
        .O(bram_read_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \bram_read_addr[3]_INST_0 
       (.I0(\sync_v_reg_n_0_[4] ),
        .I1(\sync_v_reg_n_0_[3] ),
        .I2(\sync_v_reg_n_0_[5] ),
        .O(bram_read_addr[2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_read_addr[4]_INST_0 
       (.CI(1'b0),
        .CO({\bram_read_addr[4]_INST_0_n_0 ,\bram_read_addr[4]_INST_0_n_1 ,\bram_read_addr[4]_INST_0_n_2 ,\bram_read_addr[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,cnn_raddr0[5:4]}),
        .O(bram_read_addr[6:3]),
        .S({cnn_raddr0[7:6],\bram_read_addr[4]_INST_0_i_1_n_0 ,\bram_read_addr[4]_INST_0_i_2_n_0 }));
  LUT6 #(
    .INIT(64'h55555556AAAAAAA9)) 
    \bram_read_addr[4]_INST_0_i_1 
       (.I0(cnn_raddr0[5]),
        .I1(\sync_v_reg_n_0_[6] ),
        .I2(\sync_v_reg_n_0_[5] ),
        .I3(\sync_v_reg_n_0_[4] ),
        .I4(\sync_v_reg_n_0_[3] ),
        .I5(\sync_v_reg_n_0_[7] ),
        .O(\bram_read_addr[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h5556AAA9)) 
    \bram_read_addr[4]_INST_0_i_2 
       (.I0(cnn_raddr0[4]),
        .I1(\sync_v_reg_n_0_[3] ),
        .I2(\sync_v_reg_n_0_[4] ),
        .I3(\sync_v_reg_n_0_[5] ),
        .I4(\sync_v_reg_n_0_[6] ),
        .O(\bram_read_addr[4]_INST_0_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bram_read_addr[8]_INST_0 
       (.CI(\bram_read_addr[4]_INST_0_n_0 ),
        .CO({\NLW_bram_read_addr[8]_INST_0_CO_UNCONNECTED [3],\bram_read_addr[8]_INST_0_n_1 ,\bram_read_addr[8]_INST_0_n_2 ,\bram_read_addr[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bram_read_addr[10:7]),
        .S(cnn_raddr0[11:8]));
  LUT6 #(
    .INIT(64'h0800080808080008)) 
    bram_read_en_INST_0
       (.I0(bram_read_en_INST_0_i_1_n_0),
        .I1(\sync_v_reg_n_0_[8] ),
        .I2(\sync_v_reg_n_0_[9] ),
        .I3(bram_read_en_INST_0_i_2_n_0),
        .I4(\sync_v_reg_n_0_[6] ),
        .I5(\sync_v_reg_n_0_[7] ),
        .O(bram_read_en));
  LUT6 #(
    .INIT(64'hBAAAAAAAAAAAAAAA)) 
    bram_read_en_INST_0_i_1
       (.I0(bram_read_en_INST_0_i_3_n_0),
        .I1(bram_read_en_INST_0_i_4_n_0),
        .I2(sync_h_reg[9]),
        .I3(sync_h_reg[8]),
        .I4(sync_h_reg[7]),
        .I5(bram_read_en_INST_0_i_5_n_0),
        .O(bram_read_en_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h01)) 
    bram_read_en_INST_0_i_2
       (.I0(\sync_v_reg_n_0_[3] ),
        .I1(\sync_v_reg_n_0_[4] ),
        .I2(\sync_v_reg_n_0_[5] ),
        .O(bram_read_en_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000000103FFFF)) 
    bram_read_en_INST_0_i_3
       (.I0(sync_h_reg[3]),
        .I1(sync_h_reg[5]),
        .I2(sync_h_reg[6]),
        .I3(sync_h_reg[4]),
        .I4(sync_h_reg[7]),
        .I5(bram_read_en_INST_0_i_6_n_0),
        .O(bram_read_en_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    bram_read_en_INST_0_i_4
       (.I0(sync_h_reg[10]),
        .I1(\sync_v_reg_n_0_[10] ),
        .I2(\sync_v_reg_n_0_[11] ),
        .O(bram_read_en_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hF800)) 
    bram_read_en_INST_0_i_5
       (.I0(sync_h_reg[4]),
        .I1(sync_h_reg[3]),
        .I2(sync_h_reg[5]),
        .I3(sync_h_reg[6]),
        .O(bram_read_en_INST_0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    bram_read_en_INST_0_i_6
       (.I0(\sync_v_reg_n_0_[11] ),
        .I1(\sync_v_reg_n_0_[10] ),
        .I2(sync_h_reg[8]),
        .I3(sync_h_reg[10]),
        .I4(sync_h_reg[9]),
        .O(bram_read_en_INST_0_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cam_href_d_reg
       (.C(cam_pclk),
        .CE(1'b1),
        .D(cam_href),
        .Q(cam_href_d),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \cam_x[0]_i_1 
       (.I0(cam_x_reg[0]),
        .O(p_0_in__1));
  FDRE #(
    .INIT(1'b0)) 
    \cam_x_reg[0] 
       (.C(cam_pclk),
        .CE(cam_x),
        .D(p_0_in__1),
        .Q(cam_x_reg[0]),
        .R(RSTC));
  FDRE #(
    .INIT(1'b0)) 
    \cam_x_reg[1] 
       (.C(cam_pclk),
        .CE(cam_x),
        .D(qvga_waddr__7_i_1_n_0),
        .Q(cam_x_reg[1]),
        .R(RSTC));
  FDRE #(
    .INIT(1'b0)) 
    \cam_x_reg[2] 
       (.C(cam_pclk),
        .CE(cam_x),
        .D(qvga_waddr__6_i_1_n_0),
        .Q(cam_x_reg[2]),
        .R(RSTC));
  FDRE #(
    .INIT(1'b0)) 
    \cam_x_reg[3] 
       (.C(cam_pclk),
        .CE(cam_x),
        .D(qvga_waddr__5_i_1_n_0),
        .Q(cam_x_reg[3]),
        .R(RSTC));
  FDRE #(
    .INIT(1'b0)) 
    \cam_x_reg[4] 
       (.C(cam_pclk),
        .CE(cam_x),
        .D(qvga_waddr__4_i_1_n_0),
        .Q(cam_x_reg[4]),
        .R(RSTC));
  FDRE #(
    .INIT(1'b0)) 
    \cam_x_reg[5] 
       (.C(cam_pclk),
        .CE(cam_x),
        .D(qvga_waddr__3_i_1_n_0),
        .Q(cam_x_reg[5]),
        .R(RSTC));
  FDRE #(
    .INIT(1'b0)) 
    \cam_x_reg[6] 
       (.C(cam_pclk),
        .CE(cam_x),
        .D(qvga_waddr__2_i_1_n_0),
        .Q(cam_x_reg[6]),
        .R(RSTC));
  FDRE #(
    .INIT(1'b0)) 
    \cam_x_reg[7] 
       (.C(cam_pclk),
        .CE(cam_x),
        .D(qvga_waddr__1_i_1_n_0),
        .Q(cam_x_reg[7]),
        .R(RSTC));
  FDRE #(
    .INIT(1'b0)) 
    \cam_x_reg[8] 
       (.C(cam_pclk),
        .CE(cam_x),
        .D(qvga_waddr__0_i_1_n_0),
        .Q(cam_x_reg[8]),
        .R(RSTC));
  FDRE #(
    .INIT(1'b0)) 
    \cam_x_reg[9] 
       (.C(cam_pclk),
        .CE(cam_x),
        .D(qvga_waddr_i_3_n_0),
        .Q(cam_x_reg[9]),
        .R(RSTC));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cam_y[0]_i_1 
       (.I0(cam_y_reg[0]),
        .O(p_11_in));
  FDRE #(
    .INIT(1'b0)) 
    \cam_y_reg[0] 
       (.C(cam_pclk),
        .CE(cam_y),
        .D(p_11_in),
        .Q(cam_y_reg[0]),
        .R(cam_vsync));
  FDRE #(
    .INIT(1'b0)) 
    \cam_y_reg[1] 
       (.C(cam_pclk),
        .CE(cam_y),
        .D(B[0]),
        .Q(cam_y_reg[1]),
        .R(cam_vsync));
  FDRE #(
    .INIT(1'b0)) 
    \cam_y_reg[2] 
       (.C(cam_pclk),
        .CE(cam_y),
        .D(qvga_waddr__14_i_1_n_0),
        .Q(cam_y_reg[2]),
        .R(cam_vsync));
  FDRE #(
    .INIT(1'b0)) 
    \cam_y_reg[3] 
       (.C(cam_pclk),
        .CE(cam_y),
        .D(qvga_waddr__13_i_1_n_0),
        .Q(cam_y_reg[3]),
        .R(cam_vsync));
  FDRE #(
    .INIT(1'b0)) 
    \cam_y_reg[4] 
       (.C(cam_pclk),
        .CE(cam_y),
        .D(qvga_waddr__12_i_1_n_0),
        .Q(cam_y_reg[4]),
        .R(cam_vsync));
  FDRE #(
    .INIT(1'b0)) 
    \cam_y_reg[5] 
       (.C(cam_pclk),
        .CE(cam_y),
        .D(qvga_waddr__11_i_1_n_0),
        .Q(cam_y_reg[5]),
        .R(cam_vsync));
  FDRE #(
    .INIT(1'b0)) 
    \cam_y_reg[6] 
       (.C(cam_pclk),
        .CE(cam_y),
        .D(B[5]),
        .Q(cam_y_reg[6]),
        .R(cam_vsync));
  FDRE #(
    .INIT(1'b0)) 
    \cam_y_reg[7] 
       (.C(cam_pclk),
        .CE(cam_y),
        .D(B[6]),
        .Q(cam_y_reg[7]),
        .R(cam_vsync));
  FDRE #(
    .INIT(1'b0)) 
    \cam_y_reg[8] 
       (.C(cam_pclk),
        .CE(cam_y),
        .D(B[7]),
        .Q(cam_y_reg[8]),
        .R(cam_vsync));
  CARRY4 cnn_raddr0__0_carry
       (.CI(1'b0),
        .CO({cnn_raddr0__0_carry_n_0,cnn_raddr0__0_carry_n_1,cnn_raddr0__0_carry_n_2,cnn_raddr0__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({sync_h_reg[3:2],sync_h_reg[3],1'b0}),
        .O({qvga_raddr0[10:8],NLW_cnn_raddr0__0_carry_O_UNCONNECTED[0]}),
        .S({cnn_raddr0__0_carry_i_1_n_0,cnn_raddr0__0_carry_i_2_n_0,cnn_raddr0__0_carry_i_3_n_0,sync_h_reg[2]}));
  CARRY4 cnn_raddr0__0_carry__0
       (.CI(cnn_raddr0__0_carry_n_0),
        .CO({cnn_raddr0__0_carry__0_n_0,cnn_raddr0__0_carry__0_n_1,cnn_raddr0__0_carry__0_n_2,cnn_raddr0__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({disp_cam_x,cnn_raddr0__0_carry__0_i_2_n_0,cnn_raddr0__0_carry__0_i_3_n_0,cnn_raddr0__0_carry__0_i_4_n_0}),
        .O(qvga_raddr0[14:11]),
        .S({cnn_raddr0__0_carry__0_i_5_n_0,cnn_raddr0__0_carry__0_i_6_n_0,cnn_raddr0__0_carry__0_i_7_n_0,cnn_raddr0__0_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'hFE00000001FFFFFF)) 
    cnn_raddr0__0_carry__0_i_1
       (.I0(sync_h_reg[6]),
        .I1(sync_h_reg[4]),
        .I2(sync_h_reg[5]),
        .I3(sync_h_reg[8]),
        .I4(sync_h_reg[7]),
        .I5(sync_h_reg[9]),
        .O(disp_cam_x));
  LUT5 #(
    .INIT(32'h5557AAA8)) 
    cnn_raddr0__0_carry__0_i_2
       (.I0(sync_h_reg[7]),
        .I1(sync_h_reg[6]),
        .I2(sync_h_reg[4]),
        .I3(sync_h_reg[5]),
        .I4(sync_h_reg[8]),
        .O(cnn_raddr0__0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h01FE)) 
    cnn_raddr0__0_carry__0_i_3
       (.I0(sync_h_reg[5]),
        .I1(sync_h_reg[4]),
        .I2(sync_h_reg[6]),
        .I3(sync_h_reg[7]),
        .O(cnn_raddr0__0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hA9)) 
    cnn_raddr0__0_carry__0_i_4
       (.I0(sync_h_reg[6]),
        .I1(sync_h_reg[4]),
        .I2(sync_h_reg[5]),
        .O(cnn_raddr0__0_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9A9A9A9A9A9A9AA5)) 
    cnn_raddr0__0_carry__0_i_5
       (.I0(sync_h_reg[9]),
        .I1(sync_h_reg[8]),
        .I2(sync_h_reg[7]),
        .I3(sync_h_reg[6]),
        .I4(sync_h_reg[4]),
        .I5(sync_h_reg[5]),
        .O(cnn_raddr0__0_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h99966665)) 
    cnn_raddr0__0_carry__0_i_6
       (.I0(sync_h_reg[8]),
        .I1(sync_h_reg[7]),
        .I2(sync_h_reg[5]),
        .I3(sync_h_reg[4]),
        .I4(sync_h_reg[6]),
        .O(cnn_raddr0__0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'hA559)) 
    cnn_raddr0__0_carry__0_i_7
       (.I0(sync_h_reg[7]),
        .I1(sync_h_reg[6]),
        .I2(sync_h_reg[4]),
        .I3(sync_h_reg[5]),
        .O(cnn_raddr0__0_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'hC6)) 
    cnn_raddr0__0_carry__0_i_8
       (.I0(sync_h_reg[5]),
        .I1(sync_h_reg[6]),
        .I2(sync_h_reg[4]),
        .O(cnn_raddr0__0_carry__0_i_8_n_0));
  CARRY4 cnn_raddr0__0_carry__1
       (.CI(cnn_raddr0__0_carry__0_n_0),
        .CO({NLW_cnn_raddr0__0_carry__1_CO_UNCONNECTED[3:1],cnn_raddr0__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnn_raddr0__0_carry__1_O_UNCONNECTED[3:2],qvga_raddr0[16:15]}),
        .S({1'b0,1'b0,cnn_raddr0__0_carry__1_i_1_n_0,cnn_raddr0__0_carry__1_i_2_n_0}));
  LUT6 #(
    .INIT(64'hFE00000001FFFFFF)) 
    cnn_raddr0__0_carry__1_i_1
       (.I0(sync_h_reg[6]),
        .I1(sync_h_reg[4]),
        .I2(sync_h_reg[5]),
        .I3(sync_h_reg[8]),
        .I4(sync_h_reg[7]),
        .I5(sync_h_reg[9]),
        .O(cnn_raddr0__0_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'h5557AAA8)) 
    cnn_raddr0__0_carry__1_i_2
       (.I0(sync_h_reg[7]),
        .I1(sync_h_reg[6]),
        .I2(sync_h_reg[4]),
        .I3(sync_h_reg[5]),
        .I4(sync_h_reg[8]),
        .O(cnn_raddr0__0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    cnn_raddr0__0_carry_i_1
       (.I0(sync_h_reg[4]),
        .I1(sync_h_reg[5]),
        .I2(sync_h_reg[3]),
        .O(cnn_raddr0__0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    cnn_raddr0__0_carry_i_2
       (.I0(sync_h_reg[4]),
        .I1(sync_h_reg[2]),
        .O(cnn_raddr0__0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    cnn_raddr0__0_carry_i_3
       (.I0(sync_h_reg[3]),
        .I1(sync_h_reg[1]),
        .O(cnn_raddr0__0_carry_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnn_raddr0_carry
       (.CI(1'b0),
        .CO({cnn_raddr0_carry_n_0,cnn_raddr0_carry_n_1,cnn_raddr0_carry_n_2,cnn_raddr0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({A[1],sync_h_reg[2],1'b0,1'b1}),
        .O(cnn_raddr0[7:4]),
        .S({cnn_raddr0_carry_i_2_n_0,cnn_raddr0_carry_i_3_n_0,sync_h_reg[3:2]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnn_raddr0_carry__0
       (.CI(cnn_raddr0_carry_n_0),
        .CO({NLW_cnn_raddr0_carry__0_CO_UNCONNECTED[3],cnn_raddr0_carry__0_n_1,cnn_raddr0_carry__0_n_2,cnn_raddr0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,A[3:2]}),
        .O(cnn_raddr0[11:8]),
        .S({cnn_raddr0_carry__0_i_3_n_0,cnn_raddr0_carry__0_i_4_n_0,cnn_raddr0_carry__0_i_5_n_0,cnn_raddr0_carry__0_i_6_n_0}));
  LUT3 #(
    .INIT(8'h87)) 
    cnn_raddr0_carry__0_i_1
       (.I0(sync_h_reg[4]),
        .I1(sync_h_reg[3]),
        .I2(sync_h_reg[5]),
        .O(A[3]));
  LUT2 #(
    .INIT(4'h6)) 
    cnn_raddr0_carry__0_i_2
       (.I0(sync_h_reg[3]),
        .I1(sync_h_reg[4]),
        .O(A[2]));
  LUT5 #(
    .INIT(32'h99959595)) 
    cnn_raddr0_carry__0_i_3
       (.I0(sync_h_reg[7]),
        .I1(sync_h_reg[6]),
        .I2(sync_h_reg[5]),
        .I3(sync_h_reg[3]),
        .I4(sync_h_reg[4]),
        .O(cnn_raddr0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hAA95)) 
    cnn_raddr0_carry__0_i_4
       (.I0(sync_h_reg[6]),
        .I1(sync_h_reg[4]),
        .I2(sync_h_reg[3]),
        .I3(sync_h_reg[5]),
        .O(cnn_raddr0_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h7F878078)) 
    cnn_raddr0_carry__0_i_5
       (.I0(sync_h_reg[4]),
        .I1(sync_h_reg[3]),
        .I2(sync_h_reg[5]),
        .I3(sync_h_reg[6]),
        .I4(sync_h_reg[7]),
        .O(cnn_raddr0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'hD629)) 
    cnn_raddr0_carry__0_i_6
       (.I0(sync_h_reg[5]),
        .I1(sync_h_reg[3]),
        .I2(sync_h_reg[4]),
        .I3(sync_h_reg[6]),
        .O(cnn_raddr0_carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    cnn_raddr0_carry_i_1
       (.I0(sync_h_reg[3]),
        .O(A[1]));
  LUT3 #(
    .INIT(8'h4B)) 
    cnn_raddr0_carry_i_2
       (.I0(sync_h_reg[4]),
        .I1(sync_h_reg[3]),
        .I2(sync_h_reg[5]),
        .O(cnn_raddr0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    cnn_raddr0_carry_i_3
       (.I0(sync_h_reg[2]),
        .I1(sync_h_reg[4]),
        .I2(sync_h_reg[3]),
        .O(cnn_raddr0_carry_i_3_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "614400" *) 
  (* RTL_RAM_NAME = "design_1_top_0_0/inst/frame_buf_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_buf_reg_0_0
       (.ADDRARDADDR({frame_buf_reg_0_0_i_4_n_6,frame_buf_reg_0_0_i_4_n_7,frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7,frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7,qvga_waddr__2_n_0,qvga_waddr__3_n_0,qvga_waddr__4_n_0,qvga_waddr__5_n_0,qvga_waddr__6_n_0,qvga_waddr__7_n_0}),
        .ADDRBWRADDR({qvga_raddr[15:6],frame_buf_reg_0_0_i_9_n_0,frame_buf_reg_0_0_i_10_n_0,bram_read_addr[1:0],Q,\sync_v_reg_n_0_[1] }),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(frame_buf_reg_0_0_n_0),
        .CASCADEOUTB(frame_buf_reg_0_0_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(pixel_clk),
        .DBITERR(NLW_frame_buf_reg_0_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_luma[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_0_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_0_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_buf_reg_0_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_frame_buf_reg_0_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_frame_buf_reg_0_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_buf_reg_0_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_buf_reg_0_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_read_pixels_n_3),
        .ENBWREN(frame_buf_reg_0_0_i_2_n_0),
        .INJECTDBITERR(NLW_frame_buf_reg_0_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_buf_reg_0_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_buf_reg_0_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(frame_buf_reg_0_0_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_buf_reg_0_0_SBITERR_UNCONNECTED),
        .WEA({frame_buf_reg_0_0_i_12_n_0,frame_buf_reg_0_0_i_12_n_0,frame_buf_reg_0_0_i_12_n_0,frame_buf_reg_0_0_i_12_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h56)) 
    frame_buf_reg_0_0_i_10
       (.I0(\sync_v_reg_n_0_[5] ),
        .I1(\sync_v_reg_n_0_[3] ),
        .I2(\sync_v_reg_n_0_[4] ),
        .O(frame_buf_reg_0_0_i_10_n_0));
  CARRY4 frame_buf_reg_0_0_i_11
       (.CI(1'b0),
        .CO({frame_buf_reg_0_0_i_11_n_0,frame_buf_reg_0_0_i_11_n_1,frame_buf_reg_0_0_i_11_n_2,frame_buf_reg_0_0_i_11_n_3}),
        .CYINIT(1'b0),
        .DI({frame_buf_reg_0_0_i_24_n_0,frame_buf_reg_0_0_i_25_n_0,\pixel_data_reg[15] [14:13]}),
        .O({y_luma[1:0],NLW_frame_buf_reg_0_0_i_11_O_UNCONNECTED[1:0]}),
        .S({frame_buf_reg_0_0_i_26_n_0,frame_buf_reg_0_0_i_27_n_0,frame_buf_reg_0_0_i_28_n_0,frame_buf_reg_0_0_i_29_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    frame_buf_reg_0_0_i_12
       (.I0(cam_y_reg[0]),
        .I1(frame_buf_reg_0_0_i_4_n_5),
        .O(frame_buf_reg_0_0_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFDDDDDEFEDDDDD)) 
    frame_buf_reg_0_0_i_13
       (.I0(sync_h_reg[9]),
        .I1(bram_read_en_INST_0_i_4_n_0),
        .I2(sync_h_reg[7]),
        .I3(\sync_v[2]_i_4_n_0 ),
        .I4(sync_h_reg[8]),
        .I5(frame_buf_reg_0_0_i_30_n_0),
        .O(frame_buf_reg_0_0_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    frame_buf_reg_0_0_i_14
       (.I0(\sync_v_reg_n_0_[5] ),
        .I1(\sync_v_reg_n_0_[3] ),
        .I2(\sync_v_reg_n_0_[4] ),
        .O(frame_buf_reg_0_0_i_14_n_0));
  CARRY4 frame_buf_reg_0_0_i_15
       (.CI(frame_buf_reg_0_0_i_16_n_0),
        .CO({NLW_frame_buf_reg_0_0_i_15_CO_UNCONNECTED[3:2],p_0_out[16],NLW_frame_buf_reg_0_0_i_15_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_frame_buf_reg_0_0_i_15_O_UNCONNECTED[3:1],p_0_out[15]}),
        .S({1'b0,1'b0,1'b1,qvga_waddr__8_n_0}));
  CARRY4 frame_buf_reg_0_0_i_16
       (.CI(frame_buf_reg_0_0_i_17_n_0),
        .CO({frame_buf_reg_0_0_i_16_n_0,frame_buf_reg_0_0_i_16_n_1,frame_buf_reg_0_0_i_16_n_2,frame_buf_reg_0_0_i_16_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,qvga_waddr__8_n_0,qvga_waddr__9_n_0,qvga_waddr__10_n_0}),
        .O(p_0_out[14:11]),
        .S({qvga_waddr__9_n_0,frame_buf_reg_0_0_i_31_n_0,frame_buf_reg_0_0_i_32_n_0,frame_buf_reg_0_0_i_33_n_0}));
  CARRY4 frame_buf_reg_0_0_i_17
       (.CI(1'b0),
        .CO({frame_buf_reg_0_0_i_17_n_0,frame_buf_reg_0_0_i_17_n_1,frame_buf_reg_0_0_i_17_n_2,frame_buf_reg_0_0_i_17_n_3}),
        .CYINIT(1'b0),
        .DI({qvga_waddr__11_n_0,qvga_waddr__12_n_0,qvga_waddr__13_n_0,1'b0}),
        .O(p_0_out[10:7]),
        .S({frame_buf_reg_0_0_i_34_n_0,frame_buf_reg_0_0_i_35_n_0,frame_buf_reg_0_0_i_36_n_0,qvga_waddr__14_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    frame_buf_reg_0_0_i_18
       (.I0(p_0_out[8]),
        .I1(qvga_waddr_n_0),
        .O(frame_buf_reg_0_0_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    frame_buf_reg_0_0_i_19
       (.I0(p_0_out[7]),
        .I1(qvga_waddr__0_n_0),
        .O(frame_buf_reg_0_0_i_19_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    frame_buf_reg_0_0_i_2
       (.I0(frame_buf_reg_0_0_i_3_n_0),
        .I1(qvga_raddr[16]),
        .O(frame_buf_reg_0_0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    frame_buf_reg_0_0_i_20
       (.I0(qvga_waddr__15_n_0),
        .I1(qvga_waddr__1_n_0),
        .O(frame_buf_reg_0_0_i_20_n_0));
  LUT5 #(
    .INIT(32'h5559AAA6)) 
    frame_buf_reg_0_0_i_21
       (.I0(qvga_raddr0[8]),
        .I1(frame_buf_reg_0_0_i_37_n_0),
        .I2(\sync_v_reg_n_0_[8] ),
        .I3(\sync_v_reg_n_0_[7] ),
        .I4(\sync_v_reg_n_0_[9] ),
        .O(frame_buf_reg_0_0_i_21_n_0));
  LUT4 #(
    .INIT(16'h6966)) 
    frame_buf_reg_0_0_i_22
       (.I0(sync_h_reg[2]),
        .I1(\sync_v_reg_n_0_[8] ),
        .I2(\sync_v_reg_n_0_[7] ),
        .I3(frame_buf_reg_0_0_i_37_n_0),
        .O(frame_buf_reg_0_0_i_22_n_0));
  LUT6 #(
    .INIT(64'h55566666AAA99999)) 
    frame_buf_reg_0_0_i_23
       (.I0(sync_h_reg[1]),
        .I1(\sync_v_reg_n_0_[6] ),
        .I2(\sync_v_reg_n_0_[4] ),
        .I3(\sync_v_reg_n_0_[3] ),
        .I4(\sync_v_reg_n_0_[5] ),
        .I5(\sync_v_reg_n_0_[7] ),
        .O(frame_buf_reg_0_0_i_23_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    frame_buf_reg_0_0_i_24
       (.I0(\pixel_data_reg[15] [10]),
        .I1(\pixel_data_reg[15] [4]),
        .I2(\pixel_data_reg[15] [15]),
        .O(frame_buf_reg_0_0_i_24_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    frame_buf_reg_0_0_i_25
       (.I0(\pixel_data_reg[15] [15]),
        .I1(\pixel_data_reg[15] [10]),
        .I2(\pixel_data_reg[15] [4]),
        .O(frame_buf_reg_0_0_i_25_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    frame_buf_reg_0_0_i_26
       (.I0(\pixel_data_reg[15] [5]),
        .I1(\pixel_data_reg[15] [0]),
        .I2(\pixel_data_reg[15] [11]),
        .I3(frame_buf_reg_0_0_i_24_n_0),
        .O(frame_buf_reg_0_0_i_26_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    frame_buf_reg_0_0_i_27
       (.I0(\pixel_data_reg[15] [10]),
        .I1(\pixel_data_reg[15] [4]),
        .I2(\pixel_data_reg[15] [15]),
        .I3(\pixel_data_reg[15] [3]),
        .I4(\pixel_data_reg[15] [9]),
        .O(frame_buf_reg_0_0_i_27_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    frame_buf_reg_0_0_i_28
       (.I0(\pixel_data_reg[15] [9]),
        .I1(\pixel_data_reg[15] [3]),
        .I2(\pixel_data_reg[15] [14]),
        .O(frame_buf_reg_0_0_i_28_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    frame_buf_reg_0_0_i_29
       (.I0(\pixel_data_reg[15] [13]),
        .I1(\pixel_data_reg[15] [2]),
        .O(frame_buf_reg_0_0_i_29_n_0));
  LUT6 #(
    .INIT(64'hFAFAEAEAFAFAEAAB)) 
    frame_buf_reg_0_0_i_3
       (.I0(frame_buf_reg_0_0_i_13_n_0),
        .I1(\sync_v_reg_n_0_[7] ),
        .I2(\sync_v_reg_n_0_[9] ),
        .I3(\sync_v_reg_n_0_[6] ),
        .I4(\sync_v_reg_n_0_[8] ),
        .I5(frame_buf_reg_0_0_i_14_n_0),
        .O(frame_buf_reg_0_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h01)) 
    frame_buf_reg_0_0_i_30
       (.I0(sync_h_reg[6]),
        .I1(sync_h_reg[4]),
        .I2(sync_h_reg[5]),
        .O(frame_buf_reg_0_0_i_30_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    frame_buf_reg_0_0_i_31
       (.I0(qvga_waddr__8_n_0),
        .I1(qvga_waddr__10_n_0),
        .O(frame_buf_reg_0_0_i_31_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    frame_buf_reg_0_0_i_32
       (.I0(qvga_waddr__9_n_0),
        .I1(qvga_waddr__11_n_0),
        .O(frame_buf_reg_0_0_i_32_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    frame_buf_reg_0_0_i_33
       (.I0(qvga_waddr__10_n_0),
        .I1(qvga_waddr__12_n_0),
        .O(frame_buf_reg_0_0_i_33_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    frame_buf_reg_0_0_i_34
       (.I0(qvga_waddr__11_n_0),
        .I1(qvga_waddr__13_n_0),
        .O(frame_buf_reg_0_0_i_34_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    frame_buf_reg_0_0_i_35
       (.I0(qvga_waddr__12_n_0),
        .I1(qvga_waddr__14_n_0),
        .O(frame_buf_reg_0_0_i_35_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    frame_buf_reg_0_0_i_36
       (.I0(qvga_waddr__13_n_0),
        .I1(qvga_waddr__15_n_0),
        .O(frame_buf_reg_0_0_i_36_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0155)) 
    frame_buf_reg_0_0_i_37
       (.I0(\sync_v_reg_n_0_[6] ),
        .I1(\sync_v_reg_n_0_[4] ),
        .I2(\sync_v_reg_n_0_[3] ),
        .I3(\sync_v_reg_n_0_[5] ),
        .O(frame_buf_reg_0_0_i_37_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 frame_buf_reg_0_0_i_4
       (.CI(frame_buf_reg_0_0_i_5_n_0),
        .CO({NLW_frame_buf_reg_0_0_i_4_CO_UNCONNECTED[3:2],frame_buf_reg_0_0_i_4_n_2,frame_buf_reg_0_0_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_frame_buf_reg_0_0_i_4_O_UNCONNECTED[3],frame_buf_reg_0_0_i_4_n_5,frame_buf_reg_0_0_i_4_n_6,frame_buf_reg_0_0_i_4_n_7}),
        .S({1'b0,p_0_out[16:14]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 frame_buf_reg_0_0_i_5
       (.CI(frame_buf_reg_0_0_i_6_n_0),
        .CO({frame_buf_reg_0_0_i_5_n_0,frame_buf_reg_0_0_i_5_n_1,frame_buf_reg_0_0_i_5_n_2,frame_buf_reg_0_0_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7}),
        .S(p_0_out[13:10]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 frame_buf_reg_0_0_i_6
       (.CI(1'b0),
        .CO({frame_buf_reg_0_0_i_6_n_0,frame_buf_reg_0_0_i_6_n_1,frame_buf_reg_0_0_i_6_n_2,frame_buf_reg_0_0_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,p_0_out[8:7],qvga_waddr__15_n_0}),
        .O({frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7}),
        .S({p_0_out[9],frame_buf_reg_0_0_i_18_n_0,frame_buf_reg_0_0_i_19_n_0,frame_buf_reg_0_0_i_20_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 frame_buf_reg_0_0_i_7
       (.CI(frame_buf_reg_0_0_i_8_n_0),
        .CO({frame_buf_reg_0_0_i_7_n_0,frame_buf_reg_0_0_i_7_n_1,frame_buf_reg_0_0_i_7_n_2,frame_buf_reg_0_0_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(qvga_raddr[13:10]),
        .S(qvga_raddr0[13:10]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 frame_buf_reg_0_0_i_8
       (.CI(1'b0),
        .CO({frame_buf_reg_0_0_i_8_n_0,frame_buf_reg_0_0_i_8_n_1,frame_buf_reg_0_0_i_8_n_2,frame_buf_reg_0_0_i_8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,qvga_raddr0[8],sync_h_reg[2:1]}),
        .O(qvga_raddr[9:6]),
        .S({qvga_raddr0[9],frame_buf_reg_0_0_i_21_n_0,frame_buf_reg_0_0_i_22_n_0,frame_buf_reg_0_0_i_23_n_0}));
  LUT4 #(
    .INIT(16'hA955)) 
    frame_buf_reg_0_0_i_9
       (.I0(\sync_v_reg_n_0_[6] ),
        .I1(\sync_v_reg_n_0_[4] ),
        .I2(\sync_v_reg_n_0_[3] ),
        .I3(\sync_v_reg_n_0_[5] ),
        .O(frame_buf_reg_0_0_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "614400" *) 
  (* RTL_RAM_NAME = "design_1_top_0_0/inst/frame_buf_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_buf_reg_0_1
       (.ADDRARDADDR({frame_buf_reg_0_0_i_4_n_6,frame_buf_reg_0_0_i_4_n_7,frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7,frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7,qvga_waddr__2_n_0,qvga_waddr__3_n_0,qvga_waddr__4_n_0,qvga_waddr__5_n_0,qvga_waddr__6_n_0,qvga_waddr__7_n_0}),
        .ADDRBWRADDR({qvga_raddr[15:6],frame_buf_reg_0_0_i_9_n_0,frame_buf_reg_0_0_i_10_n_0,bram_read_addr[1:0],Q,\sync_v_reg_n_0_[1] }),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(frame_buf_reg_0_1_n_0),
        .CASCADEOUTB(frame_buf_reg_0_1_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(pixel_clk),
        .DBITERR(NLW_frame_buf_reg_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_luma[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_0_1_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_0_1_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_buf_reg_0_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_frame_buf_reg_0_1_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_frame_buf_reg_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_buf_reg_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_buf_reg_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_read_pixels_n_3),
        .ENBWREN(frame_buf_reg_0_0_i_2_n_0),
        .INJECTDBITERR(NLW_frame_buf_reg_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_buf_reg_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_buf_reg_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(frame_buf_reg_0_0_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_buf_reg_0_1_SBITERR_UNCONNECTED),
        .WEA({frame_buf_reg_0_1_i_1_n_0,frame_buf_reg_0_1_i_1_n_0,frame_buf_reg_0_0_i_12_n_0,frame_buf_reg_0_0_i_12_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h1)) 
    frame_buf_reg_0_1_i_1
       (.I0(cam_y_reg[0]),
        .I1(frame_buf_reg_0_0_i_4_n_5),
        .O(frame_buf_reg_0_1_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "614400" *) 
  (* RTL_RAM_NAME = "design_1_top_0_0/inst/frame_buf_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_buf_reg_0_2
       (.ADDRARDADDR({frame_buf_reg_0_0_i_4_n_6,frame_buf_reg_0_0_i_4_n_7,frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7,frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7,qvga_waddr__2_n_0,qvga_waddr__3_n_0,qvga_waddr__4_n_0,qvga_waddr__5_n_0,qvga_waddr__6_n_0,qvga_waddr__7_n_0}),
        .ADDRBWRADDR({qvga_raddr[15:6],frame_buf_reg_0_0_i_9_n_0,frame_buf_reg_0_0_i_10_n_0,bram_read_addr[1:0],Q,\sync_v_reg_n_0_[1] }),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(frame_buf_reg_0_2_n_0),
        .CASCADEOUTB(frame_buf_reg_0_2_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(pixel_clk),
        .DBITERR(NLW_frame_buf_reg_0_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_luma[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_0_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_0_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_buf_reg_0_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_frame_buf_reg_0_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_frame_buf_reg_0_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_buf_reg_0_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_buf_reg_0_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_read_pixels_n_3),
        .ENBWREN(frame_buf_reg_0_0_i_2_n_0),
        .INJECTDBITERR(NLW_frame_buf_reg_0_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_buf_reg_0_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_buf_reg_0_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(frame_buf_reg_0_0_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_buf_reg_0_2_SBITERR_UNCONNECTED),
        .WEA({frame_buf_reg_0_1_i_1_n_0,frame_buf_reg_0_1_i_1_n_0,frame_buf_reg_0_1_i_1_n_0,frame_buf_reg_0_1_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  CARRY4 frame_buf_reg_0_2_i_1
       (.CI(frame_buf_reg_0_0_i_11_n_0),
        .CO({frame_buf_reg_0_2_i_1_n_0,frame_buf_reg_0_2_i_1_n_1,frame_buf_reg_0_2_i_1_n_2,frame_buf_reg_0_2_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({frame_buf_reg_0_2_i_2_n_0,frame_buf_reg_0_2_i_3_n_0,frame_buf_reg_0_2_i_4_n_0,frame_buf_reg_0_2_i_5_n_0}),
        .O(y_luma[5:2]),
        .S({frame_buf_reg_0_2_i_6_n_0,frame_buf_reg_0_2_i_7_n_0,frame_buf_reg_0_2_i_8_n_0,frame_buf_reg_0_2_i_9_n_0}));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    frame_buf_reg_0_2_i_2
       (.I0(\pixel_data_reg[15] [8]),
        .I1(\pixel_data_reg[15] [3]),
        .I2(\pixel_data_reg[15] [14]),
        .O(frame_buf_reg_0_2_i_2_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    frame_buf_reg_0_2_i_3
       (.I0(\pixel_data_reg[15] [7]),
        .I1(\pixel_data_reg[15] [2]),
        .I2(\pixel_data_reg[15] [13]),
        .O(frame_buf_reg_0_2_i_3_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    frame_buf_reg_0_2_i_4
       (.I0(\pixel_data_reg[15] [6]),
        .I1(\pixel_data_reg[15] [1]),
        .I2(\pixel_data_reg[15] [12]),
        .O(frame_buf_reg_0_2_i_4_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    frame_buf_reg_0_2_i_5
       (.I0(\pixel_data_reg[15] [5]),
        .I1(\pixel_data_reg[15] [0]),
        .I2(\pixel_data_reg[15] [11]),
        .O(frame_buf_reg_0_2_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    frame_buf_reg_0_2_i_6
       (.I0(frame_buf_reg_0_2_i_2_n_0),
        .I1(\pixel_data_reg[15] [4]),
        .I2(\pixel_data_reg[15] [9]),
        .I3(\pixel_data_reg[15] [15]),
        .O(frame_buf_reg_0_2_i_6_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    frame_buf_reg_0_2_i_7
       (.I0(\pixel_data_reg[15] [8]),
        .I1(\pixel_data_reg[15] [3]),
        .I2(\pixel_data_reg[15] [14]),
        .I3(frame_buf_reg_0_2_i_3_n_0),
        .O(frame_buf_reg_0_2_i_7_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    frame_buf_reg_0_2_i_8
       (.I0(\pixel_data_reg[15] [7]),
        .I1(\pixel_data_reg[15] [2]),
        .I2(\pixel_data_reg[15] [13]),
        .I3(frame_buf_reg_0_2_i_4_n_0),
        .O(frame_buf_reg_0_2_i_8_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    frame_buf_reg_0_2_i_9
       (.I0(\pixel_data_reg[15] [6]),
        .I1(\pixel_data_reg[15] [1]),
        .I2(\pixel_data_reg[15] [12]),
        .I3(frame_buf_reg_0_2_i_5_n_0),
        .O(frame_buf_reg_0_2_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "614400" *) 
  (* RTL_RAM_NAME = "design_1_top_0_0/inst/frame_buf_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_buf_reg_0_3
       (.ADDRARDADDR({frame_buf_reg_0_0_i_4_n_6,frame_buf_reg_0_0_i_4_n_7,frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7,frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7,qvga_waddr__2_n_0,qvga_waddr__3_n_0,qvga_waddr__4_n_0,qvga_waddr__5_n_0,qvga_waddr__6_n_0,qvga_waddr__7_n_0}),
        .ADDRBWRADDR({qvga_raddr[15:6],frame_buf_reg_0_0_i_9_n_0,frame_buf_reg_0_0_i_10_n_0,bram_read_addr[1:0],Q,\sync_v_reg_n_0_[1] }),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(frame_buf_reg_0_3_n_0),
        .CASCADEOUTB(frame_buf_reg_0_3_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(pixel_clk),
        .DBITERR(NLW_frame_buf_reg_0_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_luma[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_0_3_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_0_3_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_buf_reg_0_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_frame_buf_reg_0_3_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_frame_buf_reg_0_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_buf_reg_0_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_buf_reg_0_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_read_pixels_n_3),
        .ENBWREN(frame_buf_reg_0_0_i_2_n_0),
        .INJECTDBITERR(NLW_frame_buf_reg_0_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_buf_reg_0_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_buf_reg_0_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(frame_buf_reg_0_0_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_buf_reg_0_3_SBITERR_UNCONNECTED),
        .WEA({frame_buf_reg_1_2_i_1_n_0,frame_buf_reg_1_2_i_1_n_0,frame_buf_reg_1_2_i_1_n_0,frame_buf_reg_1_2_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "614400" *) 
  (* RTL_RAM_NAME = "design_1_top_0_0/inst/frame_buf_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_buf_reg_0_4
       (.ADDRARDADDR({frame_buf_reg_0_0_i_4_n_6,frame_buf_reg_0_0_i_4_n_7,frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7,frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7,qvga_waddr__2_n_0,qvga_waddr__3_n_0,qvga_waddr__4_n_0,qvga_waddr__5_n_0,qvga_waddr__6_n_0,qvga_waddr__7_n_0}),
        .ADDRBWRADDR({qvga_raddr[15:6],frame_buf_reg_0_0_i_9_n_0,frame_buf_reg_0_0_i_10_n_0,bram_read_addr[1:0],Q,\sync_v_reg_n_0_[1] }),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(frame_buf_reg_0_4_n_0),
        .CASCADEOUTB(frame_buf_reg_0_4_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(pixel_clk),
        .DBITERR(NLW_frame_buf_reg_0_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_luma[4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_0_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_0_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_buf_reg_0_4_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_frame_buf_reg_0_4_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_frame_buf_reg_0_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_buf_reg_0_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_buf_reg_0_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_read_pixels_n_3),
        .ENBWREN(frame_buf_reg_0_0_i_2_n_0),
        .INJECTDBITERR(NLW_frame_buf_reg_0_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_buf_reg_0_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_buf_reg_0_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(frame_buf_reg_0_0_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_buf_reg_0_4_SBITERR_UNCONNECTED),
        .WEA({frame_buf_reg_1_3_i_1_n_0,frame_buf_reg_1_3_i_1_n_0,frame_buf_reg_1_3_i_1_n_0,frame_buf_reg_1_3_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "614400" *) 
  (* RTL_RAM_NAME = "design_1_top_0_0/inst/frame_buf_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_buf_reg_0_5
       (.ADDRARDADDR({frame_buf_reg_0_0_i_4_n_6,frame_buf_reg_0_0_i_4_n_7,frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7,frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7,qvga_waddr__2_n_0,qvga_waddr__3_n_0,qvga_waddr__4_n_0,qvga_waddr__5_n_0,qvga_waddr__6_n_0,qvga_waddr__7_n_0}),
        .ADDRBWRADDR({qvga_raddr[15:6],frame_buf_reg_0_0_i_9_n_0,frame_buf_reg_0_0_i_10_n_0,bram_read_addr[1:0],Q,\sync_v_reg_n_0_[1] }),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(frame_buf_reg_0_5_n_0),
        .CASCADEOUTB(frame_buf_reg_0_5_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(pixel_clk),
        .DBITERR(NLW_frame_buf_reg_0_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_luma[5]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_0_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_0_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_buf_reg_0_5_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_frame_buf_reg_0_5_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_frame_buf_reg_0_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_buf_reg_0_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_buf_reg_0_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_read_pixels_n_3),
        .ENBWREN(frame_buf_reg_0_0_i_2_n_0),
        .INJECTDBITERR(NLW_frame_buf_reg_0_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_buf_reg_0_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_buf_reg_0_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(frame_buf_reg_0_0_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_buf_reg_0_5_SBITERR_UNCONNECTED),
        .WEA({frame_buf_reg_0_5_i_1_n_0,frame_buf_reg_0_5_i_1_n_0,frame_buf_reg_0_5_i_1_n_0,frame_buf_reg_0_5_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h1)) 
    frame_buf_reg_0_5_i_1
       (.I0(cam_y_reg[0]),
        .I1(frame_buf_reg_0_0_i_4_n_5),
        .O(frame_buf_reg_0_5_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "614400" *) 
  (* RTL_RAM_NAME = "design_1_top_0_0/inst/frame_buf_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_buf_reg_0_6
       (.ADDRARDADDR({frame_buf_reg_0_0_i_4_n_6,frame_buf_reg_0_0_i_4_n_7,frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7,frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7,qvga_waddr__2_n_0,qvga_waddr__3_n_0,qvga_waddr__4_n_0,qvga_waddr__5_n_0,qvga_waddr__6_n_0,qvga_waddr__7_n_0}),
        .ADDRBWRADDR({qvga_raddr[15:6],frame_buf_reg_0_0_i_9_n_0,frame_buf_reg_0_0_i_10_n_0,bram_read_addr[1:0],Q,\sync_v_reg_n_0_[1] }),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(frame_buf_reg_0_6_n_0),
        .CASCADEOUTB(frame_buf_reg_0_6_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(pixel_clk),
        .DBITERR(NLW_frame_buf_reg_0_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_luma[6]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_0_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_0_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_buf_reg_0_6_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_frame_buf_reg_0_6_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_frame_buf_reg_0_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_buf_reg_0_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_buf_reg_0_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_read_pixels_n_3),
        .ENBWREN(frame_buf_reg_0_0_i_2_n_0),
        .INJECTDBITERR(NLW_frame_buf_reg_0_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_buf_reg_0_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_buf_reg_0_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(frame_buf_reg_0_0_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_buf_reg_0_6_SBITERR_UNCONNECTED),
        .WEA({frame_buf_reg_0_6_i_2_n_0,frame_buf_reg_0_6_i_2_n_0,frame_buf_reg_0_5_i_1_n_0,frame_buf_reg_0_5_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  CARRY4 frame_buf_reg_0_6_i_1
       (.CI(frame_buf_reg_0_2_i_1_n_0),
        .CO({NLW_frame_buf_reg_0_6_i_1_CO_UNCONNECTED[3:2],y_luma[7],NLW_frame_buf_reg_0_6_i_1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\pixel_data_reg[15] [10]}),
        .O({NLW_frame_buf_reg_0_6_i_1_O_UNCONNECTED[3:1],y_luma[6]}),
        .S({1'b0,1'b0,1'b1,frame_buf_reg_0_6_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    frame_buf_reg_0_6_i_2
       (.I0(cam_y_reg[0]),
        .I1(frame_buf_reg_0_0_i_4_n_5),
        .O(frame_buf_reg_0_6_i_2_n_0));
  LUT4 #(
    .INIT(16'h17E8)) 
    frame_buf_reg_0_6_i_3
       (.I0(\pixel_data_reg[15] [15]),
        .I1(\pixel_data_reg[15] [4]),
        .I2(\pixel_data_reg[15] [9]),
        .I3(\pixel_data_reg[15] [10]),
        .O(frame_buf_reg_0_6_i_3_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "614400" *) 
  (* RTL_RAM_NAME = "design_1_top_0_0/inst/frame_buf_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_buf_reg_0_7
       (.ADDRARDADDR({frame_buf_reg_0_0_i_4_n_6,frame_buf_reg_0_0_i_4_n_7,frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7,frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7,qvga_waddr__2_n_0,qvga_waddr__3_n_0,qvga_waddr__4_n_0,qvga_waddr__5_n_0,qvga_waddr__6_n_0,qvga_waddr__7_n_0}),
        .ADDRBWRADDR({qvga_raddr[15:6],frame_buf_reg_0_0_i_9_n_0,frame_buf_reg_0_0_i_10_n_0,bram_read_addr[1:0],Q,\sync_v_reg_n_0_[1] }),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(frame_buf_reg_0_7_n_0),
        .CASCADEOUTB(frame_buf_reg_0_7_n_1),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(pixel_clk),
        .DBITERR(NLW_frame_buf_reg_0_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_luma[7]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_0_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_0_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_buf_reg_0_7_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_frame_buf_reg_0_7_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_frame_buf_reg_0_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_buf_reg_0_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_buf_reg_0_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_read_pixels_n_3),
        .ENBWREN(frame_buf_reg_0_0_i_2_n_0),
        .INJECTDBITERR(NLW_frame_buf_reg_0_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_buf_reg_0_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_buf_reg_0_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(frame_buf_reg_0_0_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_buf_reg_0_7_SBITERR_UNCONNECTED),
        .WEA({frame_buf_reg_0_6_i_2_n_0,frame_buf_reg_0_6_i_2_n_0,frame_buf_reg_0_6_i_2_n_0,frame_buf_reg_0_6_i_2_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "614400" *) 
  (* RTL_RAM_NAME = "design_1_top_0_0/inst/frame_buf_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_buf_reg_1_0
       (.ADDRARDADDR({frame_buf_reg_0_0_i_4_n_6,frame_buf_reg_0_0_i_4_n_7,frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7,frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7,qvga_waddr__2_n_0,qvga_waddr__3_n_0,qvga_waddr__4_n_0,qvga_waddr__5_n_0,qvga_waddr__6_n_0,qvga_waddr__7_n_0}),
        .ADDRBWRADDR({qvga_raddr[15:6],frame_buf_reg_0_0_i_9_n_0,frame_buf_reg_0_0_i_10_n_0,bram_read_addr[1:0],Q,\sync_v_reg_n_0_[1] }),
        .CASCADEINA(frame_buf_reg_0_0_n_0),
        .CASCADEINB(frame_buf_reg_0_0_n_1),
        .CASCADEOUTA(NLW_frame_buf_reg_1_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_frame_buf_reg_1_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(pixel_clk),
        .DBITERR(NLW_frame_buf_reg_1_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_luma[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_1_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_1_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_buf_reg_1_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_frame_buf_reg_1_0_DOBDO_UNCONNECTED[31:1],frame_buf_reg_1_0_n_67}),
        .DOPADOP(NLW_frame_buf_reg_1_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_buf_reg_1_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_buf_reg_1_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_read_pixels_n_3),
        .ENBWREN(frame_buf_reg_0_0_i_2_n_0),
        .INJECTDBITERR(NLW_frame_buf_reg_1_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_buf_reg_1_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_buf_reg_1_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(frame_buf_reg_0_0_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_buf_reg_1_0_SBITERR_UNCONNECTED),
        .WEA({frame_buf_reg_0_0_i_12_n_0,frame_buf_reg_0_0_i_12_n_0,frame_buf_reg_0_0_i_12_n_0,frame_buf_reg_0_0_i_12_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "614400" *) 
  (* RTL_RAM_NAME = "design_1_top_0_0/inst/frame_buf_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_buf_reg_1_0__0
       (.ADDRARDADDR({1'b1,frame_buf_reg_0_0_i_4_n_7,frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7,frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7,qvga_waddr__2_n_0,qvga_waddr__3_n_0,qvga_waddr__4_n_0,qvga_waddr__5_n_0,qvga_waddr__6_n_0,qvga_waddr__7_n_0}),
        .ADDRBWRADDR({1'b1,qvga_raddr[14:6],frame_buf_reg_0_0_i_9_n_0,frame_buf_reg_0_0_i_10_n_0,bram_read_addr[1:0],Q,\sync_v_reg_n_0_[1] }),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_frame_buf_reg_1_0__0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_frame_buf_reg_1_0__0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(pixel_clk),
        .DBITERR(NLW_frame_buf_reg_1_0__0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_luma[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_frame_buf_reg_1_0__0_DOADO_UNCONNECTED[31:1],frame_buf_reg_1_0__0_n_35}),
        .DOBDO({NLW_frame_buf_reg_1_0__0_DOBDO_UNCONNECTED[31:1],frame_buf_reg_1_0__0_n_67}),
        .DOPADOP(NLW_frame_buf_reg_1_0__0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_buf_reg_1_0__0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_buf_reg_1_0__0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_read_pixels_n_4),
        .ENBWREN(frame_buf_reg_1_0__0_i_2_n_0),
        .INJECTDBITERR(NLW_frame_buf_reg_1_0__0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_buf_reg_1_0__0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_buf_reg_1_0__0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(frame_buf_reg_0_0_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_buf_reg_1_0__0_SBITERR_UNCONNECTED),
        .WEA({frame_buf_reg_1_0__0_i_3_n_0,frame_buf_reg_1_0__0_i_3_n_0,frame_buf_reg_1_0__0_i_4_n_0,frame_buf_reg_1_0__0_i_4_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'hF4)) 
    frame_buf_reg_1_0__0_i_2
       (.I0(qvga_raddr[15]),
        .I1(qvga_raddr[16]),
        .I2(frame_buf_reg_0_0_i_3_n_0),
        .O(frame_buf_reg_1_0__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    frame_buf_reg_1_0__0_i_3
       (.I0(frame_buf_reg_0_0_i_4_n_6),
        .I1(frame_buf_reg_0_0_i_4_n_5),
        .I2(cam_y_reg[0]),
        .O(frame_buf_reg_1_0__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    frame_buf_reg_1_0__0_i_4
       (.I0(frame_buf_reg_0_0_i_4_n_6),
        .I1(frame_buf_reg_0_0_i_4_n_5),
        .I2(cam_y_reg[0]),
        .O(frame_buf_reg_1_0__0_i_4_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "614400" *) 
  (* RTL_RAM_NAME = "design_1_top_0_0/inst/frame_buf_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_buf_reg_1_1
       (.ADDRARDADDR({frame_buf_reg_0_0_i_4_n_6,frame_buf_reg_0_0_i_4_n_7,frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7,frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7,qvga_waddr__2_n_0,qvga_waddr__3_n_0,qvga_waddr__4_n_0,qvga_waddr__5_n_0,qvga_waddr__6_n_0,qvga_waddr__7_n_0}),
        .ADDRBWRADDR({qvga_raddr[15:6],frame_buf_reg_0_0_i_9_n_0,frame_buf_reg_0_0_i_10_n_0,bram_read_addr[1:0],Q,\sync_v_reg_n_0_[1] }),
        .CASCADEINA(frame_buf_reg_0_1_n_0),
        .CASCADEINB(frame_buf_reg_0_1_n_1),
        .CASCADEOUTA(NLW_frame_buf_reg_1_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_frame_buf_reg_1_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(pixel_clk),
        .DBITERR(NLW_frame_buf_reg_1_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_luma[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_1_1_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_1_1_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_buf_reg_1_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_frame_buf_reg_1_1_DOBDO_UNCONNECTED[31:1],frame_buf_reg_1_1_n_67}),
        .DOPADOP(NLW_frame_buf_reg_1_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_buf_reg_1_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_buf_reg_1_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_read_pixels_n_3),
        .ENBWREN(frame_buf_reg_0_0_i_2_n_0),
        .INJECTDBITERR(NLW_frame_buf_reg_1_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_buf_reg_1_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_buf_reg_1_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(frame_buf_reg_0_0_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_buf_reg_1_1_SBITERR_UNCONNECTED),
        .WEA({frame_buf_reg_0_1_i_1_n_0,frame_buf_reg_0_1_i_1_n_0,frame_buf_reg_0_1_i_1_n_0,frame_buf_reg_0_1_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "614400" *) 
  (* RTL_RAM_NAME = "design_1_top_0_0/inst/frame_buf_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_buf_reg_1_1__0
       (.ADDRARDADDR({1'b1,frame_buf_reg_0_0_i_4_n_7,frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7,frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7,qvga_waddr__2_n_0,qvga_waddr__3_n_0,qvga_waddr__4_n_0,qvga_waddr__5_n_0,qvga_waddr__6_n_0,qvga_waddr__7_n_0}),
        .ADDRBWRADDR({1'b1,qvga_raddr[14:6],frame_buf_reg_0_0_i_9_n_0,frame_buf_reg_0_0_i_10_n_0,bram_read_addr[1:0],Q,\sync_v_reg_n_0_[1] }),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_frame_buf_reg_1_1__0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_frame_buf_reg_1_1__0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(pixel_clk),
        .DBITERR(NLW_frame_buf_reg_1_1__0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_luma[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_frame_buf_reg_1_1__0_DOADO_UNCONNECTED[31:1],frame_buf_reg_1_1__0_n_35}),
        .DOBDO({NLW_frame_buf_reg_1_1__0_DOBDO_UNCONNECTED[31:1],frame_buf_reg_1_1__0_n_67}),
        .DOPADOP(NLW_frame_buf_reg_1_1__0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_buf_reg_1_1__0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_buf_reg_1_1__0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_read_pixels_n_4),
        .ENBWREN(frame_buf_reg_1_0__0_i_2_n_0),
        .INJECTDBITERR(NLW_frame_buf_reg_1_1__0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_buf_reg_1_1__0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_buf_reg_1_1__0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(frame_buf_reg_0_0_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_buf_reg_1_1__0_SBITERR_UNCONNECTED),
        .WEA({frame_buf_reg_1_0__0_i_3_n_0,frame_buf_reg_1_0__0_i_3_n_0,frame_buf_reg_1_0__0_i_3_n_0,frame_buf_reg_1_0__0_i_3_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "614400" *) 
  (* RTL_RAM_NAME = "design_1_top_0_0/inst/frame_buf_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_buf_reg_1_2
       (.ADDRARDADDR({frame_buf_reg_0_0_i_4_n_6,frame_buf_reg_0_0_i_4_n_7,frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7,frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7,qvga_waddr__2_n_0,qvga_waddr__3_n_0,qvga_waddr__4_n_0,qvga_waddr__5_n_0,qvga_waddr__6_n_0,qvga_waddr__7_n_0}),
        .ADDRBWRADDR({qvga_raddr[15:6],frame_buf_reg_0_0_i_9_n_0,frame_buf_reg_0_0_i_10_n_0,bram_read_addr[1:0],Q,\sync_v_reg_n_0_[1] }),
        .CASCADEINA(frame_buf_reg_0_2_n_0),
        .CASCADEINB(frame_buf_reg_0_2_n_1),
        .CASCADEOUTA(NLW_frame_buf_reg_1_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_frame_buf_reg_1_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(pixel_clk),
        .DBITERR(NLW_frame_buf_reg_1_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_luma[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_1_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_1_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_buf_reg_1_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_frame_buf_reg_1_2_DOBDO_UNCONNECTED[31:1],frame_buf_reg_1_2_n_67}),
        .DOPADOP(NLW_frame_buf_reg_1_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_buf_reg_1_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_buf_reg_1_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_read_pixels_n_3),
        .ENBWREN(frame_buf_reg_0_0_i_2_n_0),
        .INJECTDBITERR(NLW_frame_buf_reg_1_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_buf_reg_1_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_buf_reg_1_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(frame_buf_reg_0_0_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_buf_reg_1_2_SBITERR_UNCONNECTED),
        .WEA({frame_buf_reg_1_2_i_1_n_0,frame_buf_reg_1_2_i_1_n_0,frame_buf_reg_1_2_i_1_n_0,frame_buf_reg_1_2_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "614400" *) 
  (* RTL_RAM_NAME = "design_1_top_0_0/inst/frame_buf_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_buf_reg_1_2__0
       (.ADDRARDADDR({1'b1,frame_buf_reg_0_0_i_4_n_7,frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7,frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7,qvga_waddr__2_n_0,qvga_waddr__3_n_0,qvga_waddr__4_n_0,qvga_waddr__5_n_0,qvga_waddr__6_n_0,qvga_waddr__7_n_0}),
        .ADDRBWRADDR({1'b1,qvga_raddr[14:6],frame_buf_reg_0_0_i_9_n_0,frame_buf_reg_0_0_i_10_n_0,bram_read_addr[1:0],Q,\sync_v_reg_n_0_[1] }),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_frame_buf_reg_1_2__0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_frame_buf_reg_1_2__0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(pixel_clk),
        .DBITERR(NLW_frame_buf_reg_1_2__0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_luma[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_frame_buf_reg_1_2__0_DOADO_UNCONNECTED[31:1],frame_buf_reg_1_2__0_n_35}),
        .DOBDO({NLW_frame_buf_reg_1_2__0_DOBDO_UNCONNECTED[31:1],frame_buf_reg_1_2__0_n_67}),
        .DOPADOP(NLW_frame_buf_reg_1_2__0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_buf_reg_1_2__0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_buf_reg_1_2__0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_read_pixels_n_4),
        .ENBWREN(frame_buf_reg_1_0__0_i_2_n_0),
        .INJECTDBITERR(NLW_frame_buf_reg_1_2__0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_buf_reg_1_2__0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_buf_reg_1_2__0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(frame_buf_reg_0_0_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_buf_reg_1_2__0_SBITERR_UNCONNECTED),
        .WEA({frame_buf_reg_1_0__0_i_3_n_0,frame_buf_reg_1_0__0_i_3_n_0,frame_buf_reg_1_0__0_i_3_n_0,frame_buf_reg_1_0__0_i_3_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h1)) 
    frame_buf_reg_1_2_i_1
       (.I0(cam_y_reg[0]),
        .I1(frame_buf_reg_0_0_i_4_n_5),
        .O(frame_buf_reg_1_2_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "614400" *) 
  (* RTL_RAM_NAME = "design_1_top_0_0/inst/frame_buf_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_buf_reg_1_3
       (.ADDRARDADDR({frame_buf_reg_0_0_i_4_n_6,frame_buf_reg_0_0_i_4_n_7,frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7,frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7,qvga_waddr__2_n_0,qvga_waddr__3_n_0,qvga_waddr__4_n_0,qvga_waddr__5_n_0,qvga_waddr__6_n_0,qvga_waddr__7_n_0}),
        .ADDRBWRADDR({qvga_raddr[15:6],frame_buf_reg_0_0_i_9_n_0,frame_buf_reg_0_0_i_10_n_0,bram_read_addr[1:0],Q,\sync_v_reg_n_0_[1] }),
        .CASCADEINA(frame_buf_reg_0_3_n_0),
        .CASCADEINB(frame_buf_reg_0_3_n_1),
        .CASCADEOUTA(NLW_frame_buf_reg_1_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_frame_buf_reg_1_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(pixel_clk),
        .DBITERR(NLW_frame_buf_reg_1_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_luma[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_1_3_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_1_3_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_buf_reg_1_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_frame_buf_reg_1_3_DOBDO_UNCONNECTED[31:1],frame_buf_reg_1_3_n_67}),
        .DOPADOP(NLW_frame_buf_reg_1_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_buf_reg_1_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_buf_reg_1_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_read_pixels_n_3),
        .ENBWREN(frame_buf_reg_0_0_i_2_n_0),
        .INJECTDBITERR(NLW_frame_buf_reg_1_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_buf_reg_1_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_buf_reg_1_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(frame_buf_reg_0_0_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_buf_reg_1_3_SBITERR_UNCONNECTED),
        .WEA({frame_buf_reg_1_3_i_1_n_0,frame_buf_reg_1_3_i_1_n_0,frame_buf_reg_1_2_i_1_n_0,frame_buf_reg_1_2_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "614400" *) 
  (* RTL_RAM_NAME = "design_1_top_0_0/inst/frame_buf_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_buf_reg_1_3__0
       (.ADDRARDADDR({1'b1,frame_buf_reg_0_0_i_4_n_7,frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7,frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7,qvga_waddr__2_n_0,qvga_waddr__3_n_0,qvga_waddr__4_n_0,qvga_waddr__5_n_0,qvga_waddr__6_n_0,qvga_waddr__7_n_0}),
        .ADDRBWRADDR({1'b1,qvga_raddr[14:6],frame_buf_reg_0_0_i_9_n_0,frame_buf_reg_0_0_i_10_n_0,bram_read_addr[1:0],Q,\sync_v_reg_n_0_[1] }),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_frame_buf_reg_1_3__0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_frame_buf_reg_1_3__0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(pixel_clk),
        .DBITERR(NLW_frame_buf_reg_1_3__0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_luma[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_frame_buf_reg_1_3__0_DOADO_UNCONNECTED[31:1],frame_buf_reg_1_3__0_n_35}),
        .DOBDO({NLW_frame_buf_reg_1_3__0_DOBDO_UNCONNECTED[31:1],frame_buf_reg_1_3__0_n_67}),
        .DOPADOP(NLW_frame_buf_reg_1_3__0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_buf_reg_1_3__0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_buf_reg_1_3__0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_read_pixels_n_4),
        .ENBWREN(frame_buf_reg_1_0__0_i_2_n_0),
        .INJECTDBITERR(NLW_frame_buf_reg_1_3__0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_buf_reg_1_3__0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_buf_reg_1_3__0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(frame_buf_reg_0_0_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_buf_reg_1_3__0_SBITERR_UNCONNECTED),
        .WEA({frame_buf_reg_1_3__0_i_1_n_0,frame_buf_reg_1_3__0_i_1_n_0,frame_buf_reg_1_3__0_i_1_n_0,frame_buf_reg_1_3__0_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h04)) 
    frame_buf_reg_1_3__0_i_1
       (.I0(frame_buf_reg_0_0_i_4_n_6),
        .I1(frame_buf_reg_0_0_i_4_n_5),
        .I2(cam_y_reg[0]),
        .O(frame_buf_reg_1_3__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    frame_buf_reg_1_3_i_1
       (.I0(cam_y_reg[0]),
        .I1(frame_buf_reg_0_0_i_4_n_5),
        .O(frame_buf_reg_1_3_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "614400" *) 
  (* RTL_RAM_NAME = "design_1_top_0_0/inst/frame_buf_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_buf_reg_1_4
       (.ADDRARDADDR({frame_buf_reg_0_0_i_4_n_6,frame_buf_reg_0_0_i_4_n_7,frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7,frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7,qvga_waddr__2_n_0,qvga_waddr__3_n_0,qvga_waddr__4_n_0,qvga_waddr__5_n_0,qvga_waddr__6_n_0,qvga_waddr__7_n_0}),
        .ADDRBWRADDR({qvga_raddr[15:6],frame_buf_reg_0_0_i_9_n_0,frame_buf_reg_0_0_i_10_n_0,bram_read_addr[1:0],Q,\sync_v_reg_n_0_[1] }),
        .CASCADEINA(frame_buf_reg_0_4_n_0),
        .CASCADEINB(frame_buf_reg_0_4_n_1),
        .CASCADEOUTA(NLW_frame_buf_reg_1_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_frame_buf_reg_1_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(pixel_clk),
        .DBITERR(NLW_frame_buf_reg_1_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_luma[4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_1_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_1_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_buf_reg_1_4_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_frame_buf_reg_1_4_DOBDO_UNCONNECTED[31:1],frame_buf_reg_1_4_n_67}),
        .DOPADOP(NLW_frame_buf_reg_1_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_buf_reg_1_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_buf_reg_1_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_read_pixels_n_3),
        .ENBWREN(frame_buf_reg_0_0_i_2_n_0),
        .INJECTDBITERR(NLW_frame_buf_reg_1_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_buf_reg_1_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_buf_reg_1_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(frame_buf_reg_0_0_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_buf_reg_1_4_SBITERR_UNCONNECTED),
        .WEA({frame_buf_reg_1_3_i_1_n_0,frame_buf_reg_1_3_i_1_n_0,frame_buf_reg_1_3_i_1_n_0,frame_buf_reg_1_3_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "614400" *) 
  (* RTL_RAM_NAME = "design_1_top_0_0/inst/frame_buf_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_buf_reg_1_4__0
       (.ADDRARDADDR({1'b1,frame_buf_reg_0_0_i_4_n_7,frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7,frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7,qvga_waddr__2_n_0,qvga_waddr__3_n_0,qvga_waddr__4_n_0,qvga_waddr__5_n_0,qvga_waddr__6_n_0,qvga_waddr__7_n_0}),
        .ADDRBWRADDR({1'b1,qvga_raddr[14:6],frame_buf_reg_0_0_i_9_n_0,frame_buf_reg_0_0_i_10_n_0,bram_read_addr[1:0],Q,\sync_v_reg_n_0_[1] }),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_frame_buf_reg_1_4__0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_frame_buf_reg_1_4__0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(pixel_clk),
        .DBITERR(NLW_frame_buf_reg_1_4__0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_luma[4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_frame_buf_reg_1_4__0_DOADO_UNCONNECTED[31:1],frame_buf_reg_1_4__0_n_35}),
        .DOBDO({NLW_frame_buf_reg_1_4__0_DOBDO_UNCONNECTED[31:1],frame_buf_reg_1_4__0_n_67}),
        .DOPADOP(NLW_frame_buf_reg_1_4__0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_buf_reg_1_4__0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_buf_reg_1_4__0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_read_pixels_n_4),
        .ENBWREN(frame_buf_reg_1_0__0_i_2_n_0),
        .INJECTDBITERR(NLW_frame_buf_reg_1_4__0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_buf_reg_1_4__0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_buf_reg_1_4__0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(frame_buf_reg_0_0_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_buf_reg_1_4__0_SBITERR_UNCONNECTED),
        .WEA({frame_buf_reg_1_3__0_i_1_n_0,frame_buf_reg_1_3__0_i_1_n_0,frame_buf_reg_1_3__0_i_1_n_0,frame_buf_reg_1_3__0_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "614400" *) 
  (* RTL_RAM_NAME = "design_1_top_0_0/inst/frame_buf_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_buf_reg_1_5
       (.ADDRARDADDR({frame_buf_reg_0_0_i_4_n_6,frame_buf_reg_0_0_i_4_n_7,frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7,frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7,qvga_waddr__2_n_0,qvga_waddr__3_n_0,qvga_waddr__4_n_0,qvga_waddr__5_n_0,qvga_waddr__6_n_0,qvga_waddr__7_n_0}),
        .ADDRBWRADDR({qvga_raddr[15:6],frame_buf_reg_0_0_i_9_n_0,frame_buf_reg_0_0_i_10_n_0,bram_read_addr[1:0],Q,\sync_v_reg_n_0_[1] }),
        .CASCADEINA(frame_buf_reg_0_5_n_0),
        .CASCADEINB(frame_buf_reg_0_5_n_1),
        .CASCADEOUTA(NLW_frame_buf_reg_1_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_frame_buf_reg_1_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(pixel_clk),
        .DBITERR(NLW_frame_buf_reg_1_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_luma[5]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_1_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_1_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_buf_reg_1_5_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_frame_buf_reg_1_5_DOBDO_UNCONNECTED[31:1],frame_buf_reg_1_5_n_67}),
        .DOPADOP(NLW_frame_buf_reg_1_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_buf_reg_1_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_buf_reg_1_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_read_pixels_n_3),
        .ENBWREN(frame_buf_reg_0_0_i_2_n_0),
        .INJECTDBITERR(NLW_frame_buf_reg_1_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_buf_reg_1_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_buf_reg_1_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(frame_buf_reg_0_0_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_buf_reg_1_5_SBITERR_UNCONNECTED),
        .WEA({frame_buf_reg_0_5_i_1_n_0,frame_buf_reg_0_5_i_1_n_0,frame_buf_reg_0_5_i_1_n_0,frame_buf_reg_0_5_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "614400" *) 
  (* RTL_RAM_NAME = "design_1_top_0_0/inst/frame_buf_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_buf_reg_1_5__0
       (.ADDRARDADDR({1'b1,frame_buf_reg_0_0_i_4_n_7,frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7,frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7,qvga_waddr__2_n_0,qvga_waddr__3_n_0,qvga_waddr__4_n_0,qvga_waddr__5_n_0,qvga_waddr__6_n_0,qvga_waddr__7_n_0}),
        .ADDRBWRADDR({1'b1,qvga_raddr[14:6],frame_buf_reg_0_0_i_9_n_0,frame_buf_reg_0_0_i_10_n_0,bram_read_addr[1:0],Q,\sync_v_reg_n_0_[1] }),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_frame_buf_reg_1_5__0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_frame_buf_reg_1_5__0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(pixel_clk),
        .DBITERR(NLW_frame_buf_reg_1_5__0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_luma[5]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_frame_buf_reg_1_5__0_DOADO_UNCONNECTED[31:1],frame_buf_reg_1_5__0_n_35}),
        .DOBDO({NLW_frame_buf_reg_1_5__0_DOBDO_UNCONNECTED[31:1],frame_buf_reg_1_5__0_n_67}),
        .DOPADOP(NLW_frame_buf_reg_1_5__0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_buf_reg_1_5__0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_buf_reg_1_5__0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_read_pixels_n_4),
        .ENBWREN(frame_buf_reg_1_0__0_i_2_n_0),
        .INJECTDBITERR(NLW_frame_buf_reg_1_5__0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_buf_reg_1_5__0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_buf_reg_1_5__0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(frame_buf_reg_0_0_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_buf_reg_1_5__0_SBITERR_UNCONNECTED),
        .WEA({frame_buf_reg_1_5__0_i_1_n_0,frame_buf_reg_1_5__0_i_1_n_0,frame_buf_reg_1_3__0_i_1_n_0,frame_buf_reg_1_3__0_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h04)) 
    frame_buf_reg_1_5__0_i_1
       (.I0(frame_buf_reg_0_0_i_4_n_6),
        .I1(frame_buf_reg_0_0_i_4_n_5),
        .I2(cam_y_reg[0]),
        .O(frame_buf_reg_1_5__0_i_1_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "614400" *) 
  (* RTL_RAM_NAME = "design_1_top_0_0/inst/frame_buf_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_buf_reg_1_6
       (.ADDRARDADDR({frame_buf_reg_0_0_i_4_n_6,frame_buf_reg_0_0_i_4_n_7,frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7,frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7,qvga_waddr__2_n_0,qvga_waddr__3_n_0,qvga_waddr__4_n_0,qvga_waddr__5_n_0,qvga_waddr__6_n_0,qvga_waddr__7_n_0}),
        .ADDRBWRADDR({qvga_raddr[15:6],frame_buf_reg_0_0_i_9_n_0,frame_buf_reg_0_0_i_10_n_0,bram_read_addr[1:0],Q,\sync_v_reg_n_0_[1] }),
        .CASCADEINA(frame_buf_reg_0_6_n_0),
        .CASCADEINB(frame_buf_reg_0_6_n_1),
        .CASCADEOUTA(NLW_frame_buf_reg_1_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_frame_buf_reg_1_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(pixel_clk),
        .DBITERR(NLW_frame_buf_reg_1_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_luma[6]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_1_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_1_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_buf_reg_1_6_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_frame_buf_reg_1_6_DOBDO_UNCONNECTED[31:1],frame_buf_reg_1_6_n_67}),
        .DOPADOP(NLW_frame_buf_reg_1_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_buf_reg_1_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_buf_reg_1_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_read_pixels_n_3),
        .ENBWREN(frame_buf_reg_0_0_i_2_n_0),
        .INJECTDBITERR(NLW_frame_buf_reg_1_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_buf_reg_1_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_buf_reg_1_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(frame_buf_reg_0_0_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_buf_reg_1_6_SBITERR_UNCONNECTED),
        .WEA({frame_buf_reg_0_6_i_2_n_0,frame_buf_reg_0_6_i_2_n_0,frame_buf_reg_0_6_i_2_n_0,frame_buf_reg_0_6_i_2_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "614400" *) 
  (* RTL_RAM_NAME = "design_1_top_0_0/inst/frame_buf_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_buf_reg_1_6__0
       (.ADDRARDADDR({1'b1,frame_buf_reg_0_0_i_4_n_7,frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7,frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7,qvga_waddr__2_n_0,qvga_waddr__3_n_0,qvga_waddr__4_n_0,qvga_waddr__5_n_0,qvga_waddr__6_n_0,qvga_waddr__7_n_0}),
        .ADDRBWRADDR({1'b1,qvga_raddr[14:6],frame_buf_reg_0_0_i_9_n_0,frame_buf_reg_0_0_i_10_n_0,bram_read_addr[1:0],Q,\sync_v_reg_n_0_[1] }),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_frame_buf_reg_1_6__0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_frame_buf_reg_1_6__0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(pixel_clk),
        .DBITERR(NLW_frame_buf_reg_1_6__0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_luma[6]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_frame_buf_reg_1_6__0_DOADO_UNCONNECTED[31:1],frame_buf_reg_1_6__0_n_35}),
        .DOBDO({NLW_frame_buf_reg_1_6__0_DOBDO_UNCONNECTED[31:1],frame_buf_reg_1_6__0_n_67}),
        .DOPADOP(NLW_frame_buf_reg_1_6__0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_buf_reg_1_6__0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_buf_reg_1_6__0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_read_pixels_n_4),
        .ENBWREN(frame_buf_reg_1_0__0_i_2_n_0),
        .INJECTDBITERR(NLW_frame_buf_reg_1_6__0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_buf_reg_1_6__0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_buf_reg_1_6__0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(frame_buf_reg_0_0_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_buf_reg_1_6__0_SBITERR_UNCONNECTED),
        .WEA({frame_buf_reg_1_5__0_i_1_n_0,frame_buf_reg_1_5__0_i_1_n_0,frame_buf_reg_1_5__0_i_1_n_0,frame_buf_reg_1_5__0_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "614400" *) 
  (* RTL_RAM_NAME = "design_1_top_0_0/inst/frame_buf_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_buf_reg_1_7
       (.ADDRARDADDR({frame_buf_reg_0_0_i_4_n_6,frame_buf_reg_0_0_i_4_n_7,frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7,frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7,qvga_waddr__2_n_0,qvga_waddr__3_n_0,qvga_waddr__4_n_0,qvga_waddr__5_n_0,qvga_waddr__6_n_0,qvga_waddr__7_n_0}),
        .ADDRBWRADDR({qvga_raddr[15:6],frame_buf_reg_0_0_i_9_n_0,frame_buf_reg_0_0_i_10_n_0,bram_read_addr[1:0],Q,\sync_v_reg_n_0_[1] }),
        .CASCADEINA(frame_buf_reg_0_7_n_0),
        .CASCADEINB(frame_buf_reg_0_7_n_1),
        .CASCADEOUTA(NLW_frame_buf_reg_1_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_frame_buf_reg_1_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(pixel_clk),
        .DBITERR(NLW_frame_buf_reg_1_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_luma[7]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_1_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_frame_buf_reg_1_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_frame_buf_reg_1_7_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_frame_buf_reg_1_7_DOBDO_UNCONNECTED[31:1],frame_buf_reg_1_7_n_67}),
        .DOPADOP(NLW_frame_buf_reg_1_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_buf_reg_1_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_buf_reg_1_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_read_pixels_n_3),
        .ENBWREN(frame_buf_reg_0_0_i_2_n_0),
        .INJECTDBITERR(NLW_frame_buf_reg_1_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_buf_reg_1_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_buf_reg_1_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(frame_buf_reg_0_0_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_buf_reg_1_7_SBITERR_UNCONNECTED),
        .WEA({frame_buf_reg_1_7_i_1_n_0,frame_buf_reg_1_7_i_1_n_0,frame_buf_reg_1_7_i_1_n_0,frame_buf_reg_1_7_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "614400" *) 
  (* RTL_RAM_NAME = "design_1_top_0_0/inst/frame_buf_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    frame_buf_reg_1_7__0
       (.ADDRARDADDR({1'b1,frame_buf_reg_0_0_i_4_n_7,frame_buf_reg_0_0_i_5_n_4,frame_buf_reg_0_0_i_5_n_5,frame_buf_reg_0_0_i_5_n_6,frame_buf_reg_0_0_i_5_n_7,frame_buf_reg_0_0_i_6_n_4,frame_buf_reg_0_0_i_6_n_5,frame_buf_reg_0_0_i_6_n_6,frame_buf_reg_0_0_i_6_n_7,qvga_waddr__2_n_0,qvga_waddr__3_n_0,qvga_waddr__4_n_0,qvga_waddr__5_n_0,qvga_waddr__6_n_0,qvga_waddr__7_n_0}),
        .ADDRBWRADDR({1'b1,qvga_raddr[14:6],frame_buf_reg_0_0_i_9_n_0,frame_buf_reg_0_0_i_10_n_0,bram_read_addr[1:0],Q,\sync_v_reg_n_0_[1] }),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_frame_buf_reg_1_7__0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_frame_buf_reg_1_7__0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(cam_pclk),
        .CLKBWRCLK(pixel_clk),
        .DBITERR(NLW_frame_buf_reg_1_7__0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,y_luma[7]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({NLW_frame_buf_reg_1_7__0_DOADO_UNCONNECTED[31:1],frame_buf_reg_1_7__0_n_35}),
        .DOBDO({NLW_frame_buf_reg_1_7__0_DOBDO_UNCONNECTED[31:1],frame_buf_reg_1_7__0_n_67}),
        .DOPADOP(NLW_frame_buf_reg_1_7__0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_frame_buf_reg_1_7__0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_frame_buf_reg_1_7__0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(u_read_pixels_n_4),
        .ENBWREN(frame_buf_reg_1_0__0_i_2_n_0),
        .INJECTDBITERR(NLW_frame_buf_reg_1_7__0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_frame_buf_reg_1_7__0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_frame_buf_reg_1_7__0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(frame_buf_reg_0_0_i_3_n_0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_frame_buf_reg_1_7__0_SBITERR_UNCONNECTED),
        .WEA({frame_buf_reg_1_5__0_i_1_n_0,frame_buf_reg_1_5__0_i_1_n_0,frame_buf_reg_1_5__0_i_1_n_0,frame_buf_reg_1_5__0_i_1_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h1)) 
    frame_buf_reg_1_7_i_1
       (.I0(cam_y_reg[0]),
        .I1(frame_buf_reg_0_0_i_4_n_5),
        .O(frame_buf_reg_1_7_i_1_n_0));
  FDRE frame_buf_reg_mux_sel_b_pos_0__6
       (.C(pixel_clk),
        .CE(1'b1),
        .D(qvga_raddr[16]),
        .Q(frame_buf_reg_mux_sel_b_pos_0__6_n_0),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 frame_buf_reg_mux_sel_b_pos_0__6_i_1
       (.CI(frame_buf_reg_0_0_i_7_n_0),
        .CO({NLW_frame_buf_reg_mux_sel_b_pos_0__6_i_1_CO_UNCONNECTED[3:2],frame_buf_reg_mux_sel_b_pos_0__6_i_1_n_2,frame_buf_reg_mux_sel_b_pos_0__6_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_frame_buf_reg_mux_sel_b_pos_0__6_i_1_O_UNCONNECTED[3],qvga_raddr[16:14]}),
        .S({1'b0,qvga_raddr0[16:14]}));
  FDRE frame_buf_reg_mux_sel_b_pos_1__6
       (.C(pixel_clk),
        .CE(1'b1),
        .D(qvga_raddr[15]),
        .Q(frame_buf_reg_mux_sel_b_pos_1__6_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \hr_cnt[0]_i_2 
       (.I0(\hr_cnt_reg_n_0_[0] ),
        .O(\hr_cnt[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \hr_cnt[13]_i_1 
       (.I0(hr_s2),
        .I1(hr_prev),
        .O(\hr_cnt[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hr_cnt_reg[0] 
       (.C(pixel_clk),
        .CE(\hr_cnt[13]_i_1_n_0 ),
        .D(\hr_cnt_reg[0]_i_1_n_7 ),
        .Q(\hr_cnt_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \hr_cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\hr_cnt_reg[0]_i_1_n_0 ,\hr_cnt_reg[0]_i_1_n_1 ,\hr_cnt_reg[0]_i_1_n_2 ,\hr_cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\hr_cnt_reg[0]_i_1_n_4 ,\hr_cnt_reg[0]_i_1_n_5 ,\hr_cnt_reg[0]_i_1_n_6 ,\hr_cnt_reg[0]_i_1_n_7 }),
        .S({\hr_cnt_reg_n_0_[3] ,\hr_cnt_reg_n_0_[2] ,\hr_cnt_reg_n_0_[1] ,\hr_cnt[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \hr_cnt_reg[10] 
       (.C(pixel_clk),
        .CE(\hr_cnt[13]_i_1_n_0 ),
        .D(\hr_cnt_reg[8]_i_1_n_5 ),
        .Q(\hr_cnt_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hr_cnt_reg[11] 
       (.C(pixel_clk),
        .CE(\hr_cnt[13]_i_1_n_0 ),
        .D(\hr_cnt_reg[8]_i_1_n_4 ),
        .Q(\hr_cnt_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hr_cnt_reg[12] 
       (.C(pixel_clk),
        .CE(\hr_cnt[13]_i_1_n_0 ),
        .D(\hr_cnt_reg[13]_i_2_n_7 ),
        .Q(\hr_cnt_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hr_cnt_reg[13] 
       (.C(pixel_clk),
        .CE(\hr_cnt[13]_i_1_n_0 ),
        .D(\hr_cnt_reg[13]_i_2_n_6 ),
        .Q(led_vid_locked),
        .R(1'b0));
  CARRY4 \hr_cnt_reg[13]_i_2 
       (.CI(\hr_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_hr_cnt_reg[13]_i_2_CO_UNCONNECTED [3:1],\hr_cnt_reg[13]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_hr_cnt_reg[13]_i_2_O_UNCONNECTED [3:2],\hr_cnt_reg[13]_i_2_n_6 ,\hr_cnt_reg[13]_i_2_n_7 }),
        .S({1'b0,1'b0,led_vid_locked,\hr_cnt_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \hr_cnt_reg[1] 
       (.C(pixel_clk),
        .CE(\hr_cnt[13]_i_1_n_0 ),
        .D(\hr_cnt_reg[0]_i_1_n_6 ),
        .Q(\hr_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hr_cnt_reg[2] 
       (.C(pixel_clk),
        .CE(\hr_cnt[13]_i_1_n_0 ),
        .D(\hr_cnt_reg[0]_i_1_n_5 ),
        .Q(\hr_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hr_cnt_reg[3] 
       (.C(pixel_clk),
        .CE(\hr_cnt[13]_i_1_n_0 ),
        .D(\hr_cnt_reg[0]_i_1_n_4 ),
        .Q(\hr_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hr_cnt_reg[4] 
       (.C(pixel_clk),
        .CE(\hr_cnt[13]_i_1_n_0 ),
        .D(\hr_cnt_reg[4]_i_1_n_7 ),
        .Q(\hr_cnt_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \hr_cnt_reg[4]_i_1 
       (.CI(\hr_cnt_reg[0]_i_1_n_0 ),
        .CO({\hr_cnt_reg[4]_i_1_n_0 ,\hr_cnt_reg[4]_i_1_n_1 ,\hr_cnt_reg[4]_i_1_n_2 ,\hr_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hr_cnt_reg[4]_i_1_n_4 ,\hr_cnt_reg[4]_i_1_n_5 ,\hr_cnt_reg[4]_i_1_n_6 ,\hr_cnt_reg[4]_i_1_n_7 }),
        .S({\hr_cnt_reg_n_0_[7] ,\hr_cnt_reg_n_0_[6] ,\hr_cnt_reg_n_0_[5] ,\hr_cnt_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \hr_cnt_reg[5] 
       (.C(pixel_clk),
        .CE(\hr_cnt[13]_i_1_n_0 ),
        .D(\hr_cnt_reg[4]_i_1_n_6 ),
        .Q(\hr_cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hr_cnt_reg[6] 
       (.C(pixel_clk),
        .CE(\hr_cnt[13]_i_1_n_0 ),
        .D(\hr_cnt_reg[4]_i_1_n_5 ),
        .Q(\hr_cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hr_cnt_reg[7] 
       (.C(pixel_clk),
        .CE(\hr_cnt[13]_i_1_n_0 ),
        .D(\hr_cnt_reg[4]_i_1_n_4 ),
        .Q(\hr_cnt_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hr_cnt_reg[8] 
       (.C(pixel_clk),
        .CE(\hr_cnt[13]_i_1_n_0 ),
        .D(\hr_cnt_reg[8]_i_1_n_7 ),
        .Q(\hr_cnt_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \hr_cnt_reg[8]_i_1 
       (.CI(\hr_cnt_reg[4]_i_1_n_0 ),
        .CO({\hr_cnt_reg[8]_i_1_n_0 ,\hr_cnt_reg[8]_i_1_n_1 ,\hr_cnt_reg[8]_i_1_n_2 ,\hr_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hr_cnt_reg[8]_i_1_n_4 ,\hr_cnt_reg[8]_i_1_n_5 ,\hr_cnt_reg[8]_i_1_n_6 ,\hr_cnt_reg[8]_i_1_n_7 }),
        .S({\hr_cnt_reg_n_0_[11] ,\hr_cnt_reg_n_0_[10] ,\hr_cnt_reg_n_0_[9] ,\hr_cnt_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \hr_cnt_reg[9] 
       (.C(pixel_clk),
        .CE(\hr_cnt[13]_i_1_n_0 ),
        .D(\hr_cnt_reg[8]_i_1_n_6 ),
        .Q(\hr_cnt_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    hr_prev_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .D(hr_s2),
        .Q(hr_prev),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    hr_s2_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .D(cam_href),
        .Q(hr_s2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    in_panel_d1_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .D(bram_read_en),
        .Q(in_panel_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    in_panel_d2_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .D(in_panel_d1),
        .Q(in_panel_d2),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \panel_y_pixel[7]_i_1 
       (.I0(in_panel_d2),
        .O(\panel_y_pixel[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \panel_y_pixel_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(bram_read_data[0]),
        .Q(panel_y_pixel[0]),
        .R(\panel_y_pixel[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \panel_y_pixel_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(bram_read_data[1]),
        .Q(panel_y_pixel[1]),
        .R(\panel_y_pixel[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \panel_y_pixel_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(bram_read_data[2]),
        .Q(panel_y_pixel[2]),
        .R(\panel_y_pixel[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \panel_y_pixel_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(bram_read_data[3]),
        .Q(panel_y_pixel[3]),
        .R(\panel_y_pixel[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \panel_y_pixel_reg[4] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(bram_read_data[4]),
        .Q(panel_y_pixel[4]),
        .R(\panel_y_pixel[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \panel_y_pixel_reg[5] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(bram_read_data[5]),
        .Q(panel_y_pixel[5]),
        .R(\panel_y_pixel[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \panel_y_pixel_reg[6] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(bram_read_data[6]),
        .Q(panel_y_pixel[6]),
        .R(\panel_y_pixel[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \panel_y_pixel_reg[7] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(bram_read_data[7]),
        .Q(panel_y_pixel[7]),
        .R(\panel_y_pixel[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pclk_cnt[0]_i_2 
       (.I0(\pclk_cnt_reg_n_0_[0] ),
        .O(\pclk_cnt[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[0] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\pclk_cnt_reg[0]_i_1_n_7 ),
        .Q(\pclk_cnt_reg_n_0_[0] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pclk_cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\pclk_cnt_reg[0]_i_1_n_0 ,\pclk_cnt_reg[0]_i_1_n_1 ,\pclk_cnt_reg[0]_i_1_n_2 ,\pclk_cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\pclk_cnt_reg[0]_i_1_n_4 ,\pclk_cnt_reg[0]_i_1_n_5 ,\pclk_cnt_reg[0]_i_1_n_6 ,\pclk_cnt_reg[0]_i_1_n_7 }),
        .S({\pclk_cnt_reg_n_0_[3] ,\pclk_cnt_reg_n_0_[2] ,\pclk_cnt_reg_n_0_[1] ,\pclk_cnt[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[10] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\pclk_cnt_reg[8]_i_1_n_5 ),
        .Q(\pclk_cnt_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[11] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\pclk_cnt_reg[8]_i_1_n_4 ),
        .Q(\pclk_cnt_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[12] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\pclk_cnt_reg[12]_i_1_n_7 ),
        .Q(\pclk_cnt_reg_n_0_[12] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pclk_cnt_reg[12]_i_1 
       (.CI(\pclk_cnt_reg[8]_i_1_n_0 ),
        .CO({\pclk_cnt_reg[12]_i_1_n_0 ,\pclk_cnt_reg[12]_i_1_n_1 ,\pclk_cnt_reg[12]_i_1_n_2 ,\pclk_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pclk_cnt_reg[12]_i_1_n_4 ,\pclk_cnt_reg[12]_i_1_n_5 ,\pclk_cnt_reg[12]_i_1_n_6 ,\pclk_cnt_reg[12]_i_1_n_7 }),
        .S({\pclk_cnt_reg_n_0_[15] ,\pclk_cnt_reg_n_0_[14] ,\pclk_cnt_reg_n_0_[13] ,\pclk_cnt_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[13] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\pclk_cnt_reg[12]_i_1_n_6 ),
        .Q(\pclk_cnt_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[14] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\pclk_cnt_reg[12]_i_1_n_5 ),
        .Q(\pclk_cnt_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[15] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\pclk_cnt_reg[12]_i_1_n_4 ),
        .Q(\pclk_cnt_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[16] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\pclk_cnt_reg[16]_i_1_n_7 ),
        .Q(\pclk_cnt_reg_n_0_[16] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pclk_cnt_reg[16]_i_1 
       (.CI(\pclk_cnt_reg[12]_i_1_n_0 ),
        .CO({\pclk_cnt_reg[16]_i_1_n_0 ,\pclk_cnt_reg[16]_i_1_n_1 ,\pclk_cnt_reg[16]_i_1_n_2 ,\pclk_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pclk_cnt_reg[16]_i_1_n_4 ,\pclk_cnt_reg[16]_i_1_n_5 ,\pclk_cnt_reg[16]_i_1_n_6 ,\pclk_cnt_reg[16]_i_1_n_7 }),
        .S({\pclk_cnt_reg_n_0_[19] ,\pclk_cnt_reg_n_0_[18] ,\pclk_cnt_reg_n_0_[17] ,\pclk_cnt_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[17] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\pclk_cnt_reg[16]_i_1_n_6 ),
        .Q(\pclk_cnt_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[18] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\pclk_cnt_reg[16]_i_1_n_5 ),
        .Q(\pclk_cnt_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[19] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\pclk_cnt_reg[16]_i_1_n_4 ),
        .Q(\pclk_cnt_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[1] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\pclk_cnt_reg[0]_i_1_n_6 ),
        .Q(\pclk_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[20] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\pclk_cnt_reg[23]_i_1_n_7 ),
        .Q(\pclk_cnt_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[21] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\pclk_cnt_reg[23]_i_1_n_6 ),
        .Q(\pclk_cnt_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[22] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\pclk_cnt_reg[23]_i_1_n_5 ),
        .Q(\pclk_cnt_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[23] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\pclk_cnt_reg[23]_i_1_n_4 ),
        .Q(led_pixel_active),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pclk_cnt_reg[23]_i_1 
       (.CI(\pclk_cnt_reg[16]_i_1_n_0 ),
        .CO({\NLW_pclk_cnt_reg[23]_i_1_CO_UNCONNECTED [3],\pclk_cnt_reg[23]_i_1_n_1 ,\pclk_cnt_reg[23]_i_1_n_2 ,\pclk_cnt_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pclk_cnt_reg[23]_i_1_n_4 ,\pclk_cnt_reg[23]_i_1_n_5 ,\pclk_cnt_reg[23]_i_1_n_6 ,\pclk_cnt_reg[23]_i_1_n_7 }),
        .S({led_pixel_active,\pclk_cnt_reg_n_0_[22] ,\pclk_cnt_reg_n_0_[21] ,\pclk_cnt_reg_n_0_[20] }));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[2] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\pclk_cnt_reg[0]_i_1_n_5 ),
        .Q(\pclk_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[3] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\pclk_cnt_reg[0]_i_1_n_4 ),
        .Q(\pclk_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[4] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\pclk_cnt_reg[4]_i_1_n_7 ),
        .Q(\pclk_cnt_reg_n_0_[4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pclk_cnt_reg[4]_i_1 
       (.CI(\pclk_cnt_reg[0]_i_1_n_0 ),
        .CO({\pclk_cnt_reg[4]_i_1_n_0 ,\pclk_cnt_reg[4]_i_1_n_1 ,\pclk_cnt_reg[4]_i_1_n_2 ,\pclk_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pclk_cnt_reg[4]_i_1_n_4 ,\pclk_cnt_reg[4]_i_1_n_5 ,\pclk_cnt_reg[4]_i_1_n_6 ,\pclk_cnt_reg[4]_i_1_n_7 }),
        .S({\pclk_cnt_reg_n_0_[7] ,\pclk_cnt_reg_n_0_[6] ,\pclk_cnt_reg_n_0_[5] ,\pclk_cnt_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[5] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\pclk_cnt_reg[4]_i_1_n_6 ),
        .Q(\pclk_cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[6] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\pclk_cnt_reg[4]_i_1_n_5 ),
        .Q(\pclk_cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[7] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\pclk_cnt_reg[4]_i_1_n_4 ),
        .Q(\pclk_cnt_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[8] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\pclk_cnt_reg[8]_i_1_n_7 ),
        .Q(\pclk_cnt_reg_n_0_[8] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pclk_cnt_reg[8]_i_1 
       (.CI(\pclk_cnt_reg[4]_i_1_n_0 ),
        .CO({\pclk_cnt_reg[8]_i_1_n_0 ,\pclk_cnt_reg[8]_i_1_n_1 ,\pclk_cnt_reg[8]_i_1_n_2 ,\pclk_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pclk_cnt_reg[8]_i_1_n_4 ,\pclk_cnt_reg[8]_i_1_n_5 ,\pclk_cnt_reg[8]_i_1_n_6 ,\pclk_cnt_reg[8]_i_1_n_7 }),
        .S({\pclk_cnt_reg_n_0_[11] ,\pclk_cnt_reg_n_0_[10] ,\pclk_cnt_reg_n_0_[9] ,\pclk_cnt_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \pclk_cnt_reg[9] 
       (.C(cam_pclk),
        .CE(1'b1),
        .D(\pclk_cnt_reg[8]_i_1_n_6 ),
        .Q(\pclk_cnt_reg_n_0_[9] ),
        .R(1'b0));
  FDRE qvga_waddr
       (.C(cam_pclk),
        .CE(cam_x),
        .D(qvga_waddr_i_3_n_0),
        .Q(qvga_waddr_n_0),
        .R(RSTC));
  FDRE qvga_waddr__0
       (.C(cam_pclk),
        .CE(cam_x),
        .D(qvga_waddr__0_i_1_n_0),
        .Q(qvga_waddr__0_n_0),
        .R(RSTC));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    qvga_waddr__0_i_1
       (.I0(qvga_waddr_i_4_n_0),
        .I1(cam_x_reg[7]),
        .I2(cam_x_reg[8]),
        .O(qvga_waddr__0_i_1_n_0));
  FDRE qvga_waddr__1
       (.C(cam_pclk),
        .CE(cam_x),
        .D(qvga_waddr__1_i_1_n_0),
        .Q(qvga_waddr__1_n_0),
        .R(RSTC));
  FDRE qvga_waddr__10
       (.C(cam_pclk),
        .CE(cam_y),
        .D(B[5]),
        .Q(qvga_waddr__10_n_0),
        .R(cam_vsync));
  LUT3 #(
    .INIT(8'hB4)) 
    qvga_waddr__10_i_1
       (.I0(qvga_waddr__8_i_3_n_0),
        .I1(cam_y_reg[5]),
        .I2(cam_y_reg[6]),
        .O(B[5]));
  FDRE qvga_waddr__11
       (.C(cam_pclk),
        .CE(cam_y),
        .D(qvga_waddr__11_i_1_n_0),
        .Q(qvga_waddr__11_n_0),
        .R(cam_vsync));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    qvga_waddr__11_i_1
       (.I0(cam_y_reg[4]),
        .I1(cam_y_reg[2]),
        .I2(cam_y_reg[0]),
        .I3(cam_y_reg[1]),
        .I4(cam_y_reg[3]),
        .I5(cam_y_reg[5]),
        .O(qvga_waddr__11_i_1_n_0));
  FDRE qvga_waddr__12
       (.C(cam_pclk),
        .CE(cam_y),
        .D(qvga_waddr__12_i_1_n_0),
        .Q(qvga_waddr__12_n_0),
        .R(cam_vsync));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    qvga_waddr__12_i_1
       (.I0(cam_y_reg[3]),
        .I1(cam_y_reg[1]),
        .I2(cam_y_reg[0]),
        .I3(cam_y_reg[2]),
        .I4(cam_y_reg[4]),
        .O(qvga_waddr__12_i_1_n_0));
  FDRE qvga_waddr__13
       (.C(cam_pclk),
        .CE(cam_y),
        .D(qvga_waddr__13_i_1_n_0),
        .Q(qvga_waddr__13_n_0),
        .R(cam_vsync));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    qvga_waddr__13_i_1
       (.I0(cam_y_reg[2]),
        .I1(cam_y_reg[0]),
        .I2(cam_y_reg[1]),
        .I3(cam_y_reg[3]),
        .O(qvga_waddr__13_i_1_n_0));
  FDRE qvga_waddr__14
       (.C(cam_pclk),
        .CE(cam_y),
        .D(qvga_waddr__14_i_1_n_0),
        .Q(qvga_waddr__14_n_0),
        .R(cam_vsync));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h78)) 
    qvga_waddr__14_i_1
       (.I0(cam_y_reg[1]),
        .I1(cam_y_reg[0]),
        .I2(cam_y_reg[2]),
        .O(qvga_waddr__14_i_1_n_0));
  FDRE qvga_waddr__15
       (.C(cam_pclk),
        .CE(cam_y),
        .D(B[0]),
        .Q(qvga_waddr__15_n_0),
        .R(cam_vsync));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    qvga_waddr__15_i_1
       (.I0(cam_y_reg[0]),
        .I1(cam_y_reg[1]),
        .O(B[0]));
  LUT2 #(
    .INIT(4'h9)) 
    qvga_waddr__1_i_1
       (.I0(qvga_waddr_i_4_n_0),
        .I1(cam_x_reg[7]),
        .O(qvga_waddr__1_i_1_n_0));
  FDRE qvga_waddr__2
       (.C(cam_pclk),
        .CE(cam_x),
        .D(qvga_waddr__2_i_1_n_0),
        .Q(qvga_waddr__2_n_0),
        .R(RSTC));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h9)) 
    qvga_waddr__2_i_1
       (.I0(qvga_waddr__2_i_2_n_0),
        .I1(cam_x_reg[6]),
        .O(qvga_waddr__2_i_1_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    qvga_waddr__2_i_2
       (.I0(cam_x_reg[4]),
        .I1(cam_x_reg[2]),
        .I2(cam_x_reg[0]),
        .I3(cam_x_reg[1]),
        .I4(cam_x_reg[3]),
        .I5(cam_x_reg[5]),
        .O(qvga_waddr__2_i_2_n_0));
  FDRE qvga_waddr__3
       (.C(cam_pclk),
        .CE(cam_x),
        .D(qvga_waddr__3_i_1_n_0),
        .Q(qvga_waddr__3_n_0),
        .R(RSTC));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    qvga_waddr__3_i_1
       (.I0(cam_x_reg[4]),
        .I1(cam_x_reg[2]),
        .I2(cam_x_reg[0]),
        .I3(cam_x_reg[1]),
        .I4(cam_x_reg[3]),
        .I5(cam_x_reg[5]),
        .O(qvga_waddr__3_i_1_n_0));
  FDRE qvga_waddr__4
       (.C(cam_pclk),
        .CE(cam_x),
        .D(qvga_waddr__4_i_1_n_0),
        .Q(qvga_waddr__4_n_0),
        .R(RSTC));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    qvga_waddr__4_i_1
       (.I0(cam_x_reg[3]),
        .I1(cam_x_reg[1]),
        .I2(cam_x_reg[0]),
        .I3(cam_x_reg[2]),
        .I4(cam_x_reg[4]),
        .O(qvga_waddr__4_i_1_n_0));
  FDRE qvga_waddr__5
       (.C(cam_pclk),
        .CE(cam_x),
        .D(qvga_waddr__5_i_1_n_0),
        .Q(qvga_waddr__5_n_0),
        .R(RSTC));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    qvga_waddr__5_i_1
       (.I0(cam_x_reg[2]),
        .I1(cam_x_reg[0]),
        .I2(cam_x_reg[1]),
        .I3(cam_x_reg[3]),
        .O(qvga_waddr__5_i_1_n_0));
  FDRE qvga_waddr__6
       (.C(cam_pclk),
        .CE(cam_x),
        .D(qvga_waddr__6_i_1_n_0),
        .Q(qvga_waddr__6_n_0),
        .R(RSTC));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h78)) 
    qvga_waddr__6_i_1
       (.I0(cam_x_reg[1]),
        .I1(cam_x_reg[0]),
        .I2(cam_x_reg[2]),
        .O(qvga_waddr__6_i_1_n_0));
  FDRE qvga_waddr__7
       (.C(cam_pclk),
        .CE(cam_x),
        .D(qvga_waddr__7_i_1_n_0),
        .Q(qvga_waddr__7_n_0),
        .R(RSTC));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    qvga_waddr__7_i_1
       (.I0(cam_x_reg[0]),
        .I1(cam_x_reg[1]),
        .O(qvga_waddr__7_i_1_n_0));
  FDRE qvga_waddr__8
       (.C(cam_pclk),
        .CE(cam_y),
        .D(B[7]),
        .Q(qvga_waddr__8_n_0),
        .R(cam_vsync));
  LUT6 #(
    .INIT(64'h7F7F0000FF7F0000)) 
    qvga_waddr__8_i_1
       (.I0(cam_y_reg[8]),
        .I1(cam_y_reg[7]),
        .I2(cam_y_reg[6]),
        .I3(qvga_waddr__8_i_3_n_0),
        .I4(qvga_waddr__8_i_4_n_0),
        .I5(cam_y_reg[5]),
        .O(cam_y));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    qvga_waddr__8_i_2
       (.I0(qvga_waddr__8_i_3_n_0),
        .I1(cam_y_reg[5]),
        .I2(cam_y_reg[7]),
        .I3(cam_y_reg[6]),
        .I4(cam_y_reg[8]),
        .O(B[7]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    qvga_waddr__8_i_3
       (.I0(cam_y_reg[3]),
        .I1(cam_y_reg[1]),
        .I2(cam_y_reg[0]),
        .I3(cam_y_reg[2]),
        .I4(cam_y_reg[4]),
        .O(qvga_waddr__8_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    qvga_waddr__8_i_4
       (.I0(cam_href_d),
        .I1(cam_href),
        .O(qvga_waddr__8_i_4_n_0));
  FDRE qvga_waddr__9
       (.C(cam_pclk),
        .CE(cam_y),
        .D(B[6]),
        .Q(qvga_waddr__9_n_0),
        .R(cam_vsync));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    qvga_waddr__9_i_1
       (.I0(qvga_waddr__8_i_3_n_0),
        .I1(cam_y_reg[5]),
        .I2(cam_y_reg[6]),
        .I3(cam_y_reg[7]),
        .O(B[6]));
  LUT3 #(
    .INIT(8'hF4)) 
    qvga_waddr_i_1
       (.I0(cam_href),
        .I1(cam_href_d),
        .I2(cam_vsync),
        .O(RSTC));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    qvga_waddr_i_3
       (.I0(qvga_waddr_i_4_n_0),
        .I1(cam_x_reg[7]),
        .I2(cam_x_reg[8]),
        .I3(cam_x_reg[9]),
        .O(qvga_waddr_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'hB)) 
    qvga_waddr_i_4
       (.I0(qvga_waddr__2_i_2_n_0),
        .I1(cam_x_reg[6]),
        .O(qvga_waddr_i_4_n_0));
  LUT5 #(
    .INIT(32'h00007FFF)) 
    \sccb_cnt[0]_i_2 
       (.I0(\sccb_cnt[0]_i_4_n_0 ),
        .I1(sccb_cnt_reg[20]),
        .I2(sccb_cnt_reg[21]),
        .I3(sccb_cnt_reg[22]),
        .I4(sccb_fired),
        .O(sccb_start));
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \sccb_cnt[0]_i_4 
       (.I0(sccb_cnt_reg[11]),
        .I1(sccb_cnt_reg[16]),
        .I2(sccb_cnt_reg[14]),
        .I3(\sccb_cnt[0]_i_6_n_0 ),
        .I4(\sccb_cnt[0]_i_7_n_0 ),
        .O(\sccb_cnt[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sccb_cnt[0]_i_5 
       (.I0(\sccb_cnt_reg_n_0_[0] ),
        .O(\sccb_cnt[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \sccb_cnt[0]_i_6 
       (.I0(sccb_cnt_reg[5]),
        .I1(sccb_cnt_reg[8]),
        .I2(sccb_cnt_reg[9]),
        .I3(\sccb_cnt[0]_i_8_n_0 ),
        .O(\sccb_cnt[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000007)) 
    \sccb_cnt[0]_i_7 
       (.I0(\sccb_cnt[0]_i_9_n_0 ),
        .I1(sccb_cnt_reg[16]),
        .I2(sccb_cnt_reg[19]),
        .I3(sccb_cnt_reg[18]),
        .I4(sccb_cnt_reg[17]),
        .O(\sccb_cnt[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h777F)) 
    \sccb_cnt[0]_i_8 
       (.I0(sccb_cnt_reg[6]),
        .I1(sccb_cnt_reg[7]),
        .I2(sccb_cnt_reg[3]),
        .I3(sccb_cnt_reg[4]),
        .O(\sccb_cnt[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEAAA)) 
    \sccb_cnt[0]_i_9 
       (.I0(sccb_cnt_reg[15]),
        .I1(sccb_cnt_reg[14]),
        .I2(sccb_cnt_reg[10]),
        .I3(sccb_cnt_reg[11]),
        .I4(sccb_cnt_reg[12]),
        .I5(sccb_cnt_reg[13]),
        .O(\sccb_cnt[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sccb_cnt_reg[0] 
       (.C(pixel_clk),
        .CE(sccb_start),
        .D(\sccb_cnt_reg[0]_i_3_n_7 ),
        .Q(\sccb_cnt_reg_n_0_[0] ),
        .R(u_system_n_15));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sccb_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\sccb_cnt_reg[0]_i_3_n_0 ,\sccb_cnt_reg[0]_i_3_n_1 ,\sccb_cnt_reg[0]_i_3_n_2 ,\sccb_cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\sccb_cnt_reg[0]_i_3_n_4 ,\sccb_cnt_reg[0]_i_3_n_5 ,\sccb_cnt_reg[0]_i_3_n_6 ,\sccb_cnt_reg[0]_i_3_n_7 }),
        .S({sccb_cnt_reg[3],\sccb_cnt_reg_n_0_[2] ,\sccb_cnt_reg_n_0_[1] ,\sccb_cnt[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sccb_cnt_reg[10] 
       (.C(pixel_clk),
        .CE(sccb_start),
        .D(\sccb_cnt_reg[8]_i_1_n_5 ),
        .Q(sccb_cnt_reg[10]),
        .R(u_system_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \sccb_cnt_reg[11] 
       (.C(pixel_clk),
        .CE(sccb_start),
        .D(\sccb_cnt_reg[8]_i_1_n_4 ),
        .Q(sccb_cnt_reg[11]),
        .R(u_system_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \sccb_cnt_reg[12] 
       (.C(pixel_clk),
        .CE(sccb_start),
        .D(\sccb_cnt_reg[12]_i_1_n_7 ),
        .Q(sccb_cnt_reg[12]),
        .R(u_system_n_15));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sccb_cnt_reg[12]_i_1 
       (.CI(\sccb_cnt_reg[8]_i_1_n_0 ),
        .CO({\sccb_cnt_reg[12]_i_1_n_0 ,\sccb_cnt_reg[12]_i_1_n_1 ,\sccb_cnt_reg[12]_i_1_n_2 ,\sccb_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sccb_cnt_reg[12]_i_1_n_4 ,\sccb_cnt_reg[12]_i_1_n_5 ,\sccb_cnt_reg[12]_i_1_n_6 ,\sccb_cnt_reg[12]_i_1_n_7 }),
        .S(sccb_cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \sccb_cnt_reg[13] 
       (.C(pixel_clk),
        .CE(sccb_start),
        .D(\sccb_cnt_reg[12]_i_1_n_6 ),
        .Q(sccb_cnt_reg[13]),
        .R(u_system_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \sccb_cnt_reg[14] 
       (.C(pixel_clk),
        .CE(sccb_start),
        .D(\sccb_cnt_reg[12]_i_1_n_5 ),
        .Q(sccb_cnt_reg[14]),
        .R(u_system_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \sccb_cnt_reg[15] 
       (.C(pixel_clk),
        .CE(sccb_start),
        .D(\sccb_cnt_reg[12]_i_1_n_4 ),
        .Q(sccb_cnt_reg[15]),
        .R(u_system_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \sccb_cnt_reg[16] 
       (.C(pixel_clk),
        .CE(sccb_start),
        .D(\sccb_cnt_reg[16]_i_1_n_7 ),
        .Q(sccb_cnt_reg[16]),
        .R(u_system_n_15));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sccb_cnt_reg[16]_i_1 
       (.CI(\sccb_cnt_reg[12]_i_1_n_0 ),
        .CO({\sccb_cnt_reg[16]_i_1_n_0 ,\sccb_cnt_reg[16]_i_1_n_1 ,\sccb_cnt_reg[16]_i_1_n_2 ,\sccb_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sccb_cnt_reg[16]_i_1_n_4 ,\sccb_cnt_reg[16]_i_1_n_5 ,\sccb_cnt_reg[16]_i_1_n_6 ,\sccb_cnt_reg[16]_i_1_n_7 }),
        .S(sccb_cnt_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \sccb_cnt_reg[17] 
       (.C(pixel_clk),
        .CE(sccb_start),
        .D(\sccb_cnt_reg[16]_i_1_n_6 ),
        .Q(sccb_cnt_reg[17]),
        .R(u_system_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \sccb_cnt_reg[18] 
       (.C(pixel_clk),
        .CE(sccb_start),
        .D(\sccb_cnt_reg[16]_i_1_n_5 ),
        .Q(sccb_cnt_reg[18]),
        .R(u_system_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \sccb_cnt_reg[19] 
       (.C(pixel_clk),
        .CE(sccb_start),
        .D(\sccb_cnt_reg[16]_i_1_n_4 ),
        .Q(sccb_cnt_reg[19]),
        .R(u_system_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \sccb_cnt_reg[1] 
       (.C(pixel_clk),
        .CE(sccb_start),
        .D(\sccb_cnt_reg[0]_i_3_n_6 ),
        .Q(\sccb_cnt_reg_n_0_[1] ),
        .R(u_system_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \sccb_cnt_reg[20] 
       (.C(pixel_clk),
        .CE(sccb_start),
        .D(\sccb_cnt_reg[20]_i_1_n_7 ),
        .Q(sccb_cnt_reg[20]),
        .R(u_system_n_15));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sccb_cnt_reg[20]_i_1 
       (.CI(\sccb_cnt_reg[16]_i_1_n_0 ),
        .CO({\NLW_sccb_cnt_reg[20]_i_1_CO_UNCONNECTED [3:2],\sccb_cnt_reg[20]_i_1_n_2 ,\sccb_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sccb_cnt_reg[20]_i_1_O_UNCONNECTED [3],\sccb_cnt_reg[20]_i_1_n_5 ,\sccb_cnt_reg[20]_i_1_n_6 ,\sccb_cnt_reg[20]_i_1_n_7 }),
        .S({1'b0,sccb_cnt_reg[22:20]}));
  FDRE #(
    .INIT(1'b0)) 
    \sccb_cnt_reg[21] 
       (.C(pixel_clk),
        .CE(sccb_start),
        .D(\sccb_cnt_reg[20]_i_1_n_6 ),
        .Q(sccb_cnt_reg[21]),
        .R(u_system_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \sccb_cnt_reg[22] 
       (.C(pixel_clk),
        .CE(sccb_start),
        .D(\sccb_cnt_reg[20]_i_1_n_5 ),
        .Q(sccb_cnt_reg[22]),
        .R(u_system_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \sccb_cnt_reg[2] 
       (.C(pixel_clk),
        .CE(sccb_start),
        .D(\sccb_cnt_reg[0]_i_3_n_5 ),
        .Q(\sccb_cnt_reg_n_0_[2] ),
        .R(u_system_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \sccb_cnt_reg[3] 
       (.C(pixel_clk),
        .CE(sccb_start),
        .D(\sccb_cnt_reg[0]_i_3_n_4 ),
        .Q(sccb_cnt_reg[3]),
        .R(u_system_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \sccb_cnt_reg[4] 
       (.C(pixel_clk),
        .CE(sccb_start),
        .D(\sccb_cnt_reg[4]_i_1_n_7 ),
        .Q(sccb_cnt_reg[4]),
        .R(u_system_n_15));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sccb_cnt_reg[4]_i_1 
       (.CI(\sccb_cnt_reg[0]_i_3_n_0 ),
        .CO({\sccb_cnt_reg[4]_i_1_n_0 ,\sccb_cnt_reg[4]_i_1_n_1 ,\sccb_cnt_reg[4]_i_1_n_2 ,\sccb_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sccb_cnt_reg[4]_i_1_n_4 ,\sccb_cnt_reg[4]_i_1_n_5 ,\sccb_cnt_reg[4]_i_1_n_6 ,\sccb_cnt_reg[4]_i_1_n_7 }),
        .S(sccb_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \sccb_cnt_reg[5] 
       (.C(pixel_clk),
        .CE(sccb_start),
        .D(\sccb_cnt_reg[4]_i_1_n_6 ),
        .Q(sccb_cnt_reg[5]),
        .R(u_system_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \sccb_cnt_reg[6] 
       (.C(pixel_clk),
        .CE(sccb_start),
        .D(\sccb_cnt_reg[4]_i_1_n_5 ),
        .Q(sccb_cnt_reg[6]),
        .R(u_system_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \sccb_cnt_reg[7] 
       (.C(pixel_clk),
        .CE(sccb_start),
        .D(\sccb_cnt_reg[4]_i_1_n_4 ),
        .Q(sccb_cnt_reg[7]),
        .R(u_system_n_15));
  FDRE #(
    .INIT(1'b0)) 
    \sccb_cnt_reg[8] 
       (.C(pixel_clk),
        .CE(sccb_start),
        .D(\sccb_cnt_reg[8]_i_1_n_7 ),
        .Q(sccb_cnt_reg[8]),
        .R(u_system_n_15));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sccb_cnt_reg[8]_i_1 
       (.CI(\sccb_cnt_reg[4]_i_1_n_0 ),
        .CO({\sccb_cnt_reg[8]_i_1_n_0 ,\sccb_cnt_reg[8]_i_1_n_1 ,\sccb_cnt_reg[8]_i_1_n_2 ,\sccb_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sccb_cnt_reg[8]_i_1_n_4 ,\sccb_cnt_reg[8]_i_1_n_5 ,\sccb_cnt_reg[8]_i_1_n_6 ,\sccb_cnt_reg[8]_i_1_n_7 }),
        .S(sccb_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \sccb_cnt_reg[9] 
       (.C(pixel_clk),
        .CE(sccb_start),
        .D(\sccb_cnt_reg[8]_i_1_n_6 ),
        .Q(sccb_cnt_reg[9]),
        .R(u_system_n_15));
  LUT5 #(
    .INIT(32'h00008000)) 
    sccb_fired_i_2
       (.I0(\sccb_cnt[0]_i_4_n_0 ),
        .I1(sccb_cnt_reg[20]),
        .I2(sccb_cnt_reg[21]),
        .I3(sccb_cnt_reg[22]),
        .I4(sccb_fired),
        .O(sccb_fired1_out));
  FDRE #(
    .INIT(1'b0)) 
    sccb_fired_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .D(u_system_n_20),
        .Q(sccb_fired),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sccb_start_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .D(u_system_n_14),
        .Q(sccb_start_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \sync_h[0]_i_3 
       (.I0(sync_h_reg[0]),
        .O(\sync_h[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sync_h_reg[0] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\sync_h_reg[0]_i_2_n_7 ),
        .Q(sync_h_reg[0]),
        .R(u_system_n_13));
  CARRY4 \sync_h_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\sync_h_reg[0]_i_2_n_0 ,\sync_h_reg[0]_i_2_n_1 ,\sync_h_reg[0]_i_2_n_2 ,\sync_h_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\sync_h_reg[0]_i_2_n_4 ,\sync_h_reg[0]_i_2_n_5 ,\sync_h_reg[0]_i_2_n_6 ,\sync_h_reg[0]_i_2_n_7 }),
        .S({sync_h_reg[3:1],\sync_h[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sync_h_reg[10] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\sync_h_reg[8]_i_1_n_5 ),
        .Q(sync_h_reg[10]),
        .R(u_system_n_13));
  FDRE #(
    .INIT(1'b0)) 
    \sync_h_reg[1] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\sync_h_reg[0]_i_2_n_6 ),
        .Q(sync_h_reg[1]),
        .R(u_system_n_13));
  FDRE #(
    .INIT(1'b0)) 
    \sync_h_reg[2] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\sync_h_reg[0]_i_2_n_5 ),
        .Q(sync_h_reg[2]),
        .R(u_system_n_13));
  FDRE #(
    .INIT(1'b0)) 
    \sync_h_reg[3] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\sync_h_reg[0]_i_2_n_4 ),
        .Q(sync_h_reg[3]),
        .R(u_system_n_13));
  FDRE #(
    .INIT(1'b0)) 
    \sync_h_reg[4] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\sync_h_reg[4]_i_1_n_7 ),
        .Q(sync_h_reg[4]),
        .R(u_system_n_13));
  CARRY4 \sync_h_reg[4]_i_1 
       (.CI(\sync_h_reg[0]_i_2_n_0 ),
        .CO({\sync_h_reg[4]_i_1_n_0 ,\sync_h_reg[4]_i_1_n_1 ,\sync_h_reg[4]_i_1_n_2 ,\sync_h_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sync_h_reg[4]_i_1_n_4 ,\sync_h_reg[4]_i_1_n_5 ,\sync_h_reg[4]_i_1_n_6 ,\sync_h_reg[4]_i_1_n_7 }),
        .S(sync_h_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \sync_h_reg[5] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\sync_h_reg[4]_i_1_n_6 ),
        .Q(sync_h_reg[5]),
        .R(u_system_n_13));
  FDRE #(
    .INIT(1'b0)) 
    \sync_h_reg[6] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\sync_h_reg[4]_i_1_n_5 ),
        .Q(sync_h_reg[6]),
        .R(u_system_n_13));
  FDRE #(
    .INIT(1'b0)) 
    \sync_h_reg[7] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\sync_h_reg[4]_i_1_n_4 ),
        .Q(sync_h_reg[7]),
        .R(u_system_n_13));
  FDRE #(
    .INIT(1'b0)) 
    \sync_h_reg[8] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\sync_h_reg[8]_i_1_n_7 ),
        .Q(sync_h_reg[8]),
        .R(u_system_n_13));
  CARRY4 \sync_h_reg[8]_i_1 
       (.CI(\sync_h_reg[4]_i_1_n_0 ),
        .CO({\NLW_sync_h_reg[8]_i_1_CO_UNCONNECTED [3:2],\sync_h_reg[8]_i_1_n_2 ,\sync_h_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sync_h_reg[8]_i_1_O_UNCONNECTED [3],\sync_h_reg[8]_i_1_n_5 ,\sync_h_reg[8]_i_1_n_6 ,\sync_h_reg[8]_i_1_n_7 }),
        .S({1'b0,sync_h_reg[10:8]}));
  FDRE #(
    .INIT(1'b0)) 
    \sync_h_reg[9] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(\sync_h_reg[8]_i_1_n_6 ),
        .Q(sync_h_reg[9]),
        .R(u_system_n_13));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sync_v1_carry
       (.CI(1'b0),
        .CO({sync_v1_carry_n_0,sync_v1_carry_n_1,sync_v1_carry_n_2,sync_v1_carry_n_3}),
        .CYINIT(\sync_v_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({sync_v1_carry_n_4,sync_v1_carry_n_5,sync_v1_carry_n_6,sync_v1_carry_n_7}),
        .S({\sync_v_reg_n_0_[4] ,\sync_v_reg_n_0_[3] ,Q,\sync_v_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sync_v1_carry__0
       (.CI(sync_v1_carry_n_0),
        .CO({sync_v1_carry__0_n_0,sync_v1_carry__0_n_1,sync_v1_carry__0_n_2,sync_v1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({sync_v1_carry__0_n_4,sync_v1_carry__0_n_5,sync_v1_carry__0_n_6,sync_v1_carry__0_n_7}),
        .S({\sync_v_reg_n_0_[8] ,\sync_v_reg_n_0_[7] ,\sync_v_reg_n_0_[6] ,\sync_v_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sync_v1_carry__1
       (.CI(sync_v1_carry__0_n_0),
        .CO({NLW_sync_v1_carry__1_CO_UNCONNECTED[3:2],sync_v1_carry__1_n_2,sync_v1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sync_v1_carry__1_O_UNCONNECTED[3],sync_v1_carry__1_n_5,sync_v1_carry__1_n_6,sync_v1_carry__1_n_7}),
        .S({1'b0,\sync_v_reg_n_0_[11] ,\sync_v_reg_n_0_[10] ,\sync_v_reg_n_0_[9] }));
  LUT1 #(
    .INIT(2'h1)) 
    \sync_v[0]_i_1 
       (.I0(\sync_v_reg_n_0_[0] ),
        .O(\sync_v[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sync_v[10]_i_1 
       (.I0(sync_v1_carry__1_n_6),
        .I1(\sync_v[2]_i_6_n_0 ),
        .O(\sync_v[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sync_v[11]_i_1 
       (.I0(sync_v1_carry__1_n_5),
        .I1(\sync_v[2]_i_6_n_0 ),
        .O(\sync_v[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sync_v[1]_i_1 
       (.I0(sync_v1_carry_n_7),
        .I1(\sync_v[2]_i_6_n_0 ),
        .O(\sync_v[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \sync_v[2]_i_2 
       (.I0(\sync_v[2]_i_4_n_0 ),
        .I1(\sync_v[2]_i_5_n_0 ),
        .I2(sync_h_reg[9]),
        .I3(sync_h_reg[3]),
        .I4(sync_h_reg[0]),
        .I5(sync_h_reg[8]),
        .O(sync_v));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sync_v[2]_i_3 
       (.I0(sync_v1_carry_n_6),
        .I1(\sync_v[2]_i_6_n_0 ),
        .O(\sync_v[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \sync_v[2]_i_4 
       (.I0(sync_h_reg[4]),
        .I1(sync_h_reg[5]),
        .I2(sync_h_reg[6]),
        .O(\sync_v[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \sync_v[2]_i_5 
       (.I0(sync_h_reg[10]),
        .I1(sync_h_reg[1]),
        .I2(sync_h_reg[2]),
        .I3(sync_h_reg[7]),
        .O(\sync_v[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \sync_v[2]_i_6 
       (.I0(\sync_v[2]_i_7_n_0 ),
        .I1(\sync_v_reg_n_0_[0] ),
        .I2(\sync_v_reg_n_0_[5] ),
        .I3(\sync_v_reg_n_0_[4] ),
        .I4(\sync_v_reg_n_0_[3] ),
        .I5(\sync_v_reg_n_0_[1] ),
        .O(\sync_v[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFFFFFFFFFF)) 
    \sync_v[2]_i_7 
       (.I0(vid_active_r_i_2_n_0),
        .I1(\sync_v_reg_n_0_[6] ),
        .I2(\sync_v_reg_n_0_[7] ),
        .I3(\sync_v_reg_n_0_[9] ),
        .I4(\sync_v_reg_n_0_[8] ),
        .I5(Q),
        .O(\sync_v[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sync_v[3]_i_1 
       (.I0(sync_v1_carry_n_5),
        .I1(\sync_v[2]_i_6_n_0 ),
        .O(\sync_v[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sync_v[4]_i_1 
       (.I0(sync_v1_carry_n_4),
        .I1(\sync_v[2]_i_6_n_0 ),
        .O(\sync_v[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sync_v[5]_i_1 
       (.I0(sync_v1_carry__0_n_7),
        .I1(\sync_v[2]_i_6_n_0 ),
        .O(\sync_v[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sync_v[6]_i_1 
       (.I0(sync_v1_carry__0_n_6),
        .I1(\sync_v[2]_i_6_n_0 ),
        .O(\sync_v[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sync_v[7]_i_1 
       (.I0(sync_v1_carry__0_n_5),
        .I1(\sync_v[2]_i_6_n_0 ),
        .O(\sync_v[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sync_v[8]_i_1 
       (.I0(sync_v1_carry__0_n_4),
        .I1(\sync_v[2]_i_6_n_0 ),
        .O(\sync_v[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sync_v[9]_i_1 
       (.I0(sync_v1_carry__1_n_7),
        .I1(\sync_v[2]_i_6_n_0 ),
        .O(\sync_v[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sync_v_reg[0] 
       (.C(pixel_clk),
        .CE(sync_v),
        .D(\sync_v[0]_i_1_n_0 ),
        .Q(\sync_v_reg_n_0_[0] ),
        .R(u_system_n_16));
  FDRE #(
    .INIT(1'b0)) 
    \sync_v_reg[10] 
       (.C(pixel_clk),
        .CE(sync_v),
        .D(\sync_v[10]_i_1_n_0 ),
        .Q(\sync_v_reg_n_0_[10] ),
        .R(u_system_n_16));
  FDRE #(
    .INIT(1'b0)) 
    \sync_v_reg[11] 
       (.C(pixel_clk),
        .CE(sync_v),
        .D(\sync_v[11]_i_1_n_0 ),
        .Q(\sync_v_reg_n_0_[11] ),
        .R(u_system_n_16));
  FDRE #(
    .INIT(1'b0)) 
    \sync_v_reg[1] 
       (.C(pixel_clk),
        .CE(sync_v),
        .D(\sync_v[1]_i_1_n_0 ),
        .Q(\sync_v_reg_n_0_[1] ),
        .R(u_system_n_16));
  FDRE #(
    .INIT(1'b0)) 
    \sync_v_reg[2] 
       (.C(pixel_clk),
        .CE(sync_v),
        .D(\sync_v[2]_i_3_n_0 ),
        .Q(Q),
        .R(u_system_n_16));
  FDRE #(
    .INIT(1'b0)) 
    \sync_v_reg[3] 
       (.C(pixel_clk),
        .CE(sync_v),
        .D(\sync_v[3]_i_1_n_0 ),
        .Q(\sync_v_reg_n_0_[3] ),
        .R(u_system_n_16));
  FDRE #(
    .INIT(1'b0)) 
    \sync_v_reg[4] 
       (.C(pixel_clk),
        .CE(sync_v),
        .D(\sync_v[4]_i_1_n_0 ),
        .Q(\sync_v_reg_n_0_[4] ),
        .R(u_system_n_16));
  FDRE #(
    .INIT(1'b0)) 
    \sync_v_reg[5] 
       (.C(pixel_clk),
        .CE(sync_v),
        .D(\sync_v[5]_i_1_n_0 ),
        .Q(\sync_v_reg_n_0_[5] ),
        .R(u_system_n_16));
  FDRE #(
    .INIT(1'b0)) 
    \sync_v_reg[6] 
       (.C(pixel_clk),
        .CE(sync_v),
        .D(\sync_v[6]_i_1_n_0 ),
        .Q(\sync_v_reg_n_0_[6] ),
        .R(u_system_n_16));
  FDRE #(
    .INIT(1'b0)) 
    \sync_v_reg[7] 
       (.C(pixel_clk),
        .CE(sync_v),
        .D(\sync_v[7]_i_1_n_0 ),
        .Q(\sync_v_reg_n_0_[7] ),
        .R(u_system_n_16));
  FDRE #(
    .INIT(1'b0)) 
    \sync_v_reg[8] 
       (.C(pixel_clk),
        .CE(sync_v),
        .D(\sync_v[8]_i_1_n_0 ),
        .Q(\sync_v_reg_n_0_[8] ),
        .R(u_system_n_16));
  FDRE #(
    .INIT(1'b0)) 
    \sync_v_reg[9] 
       (.C(pixel_clk),
        .CE(sync_v),
        .D(\sync_v[9]_i_1_n_0 ),
        .Q(\sync_v_reg_n_0_[9] ),
        .R(u_system_n_16));
  design_1_top_0_0_read_pixels_axis_adapter u_adapter
       (.S_AXIS_CAPTURE_tlast(capture_axis_tlast),
        .S_AXIS_CAPTURE_tuser(capture_axis_tuser),
        .cam_pclk(cam_pclk),
        .cam_vsync(cam_vsync),
        .rp_pixel_valid(rp_pixel_valid));
  design_1_top_0_0_camera_configure u_cam_config
       (.\FSM_state_reg[0] (sccb_start_reg_n_0),
        .cam_scl(cam_scl),
        .cam_sda(cam_sda),
        .pixel_clk(pixel_clk));
  design_1_top_0_0_read_pixels u_read_pixels
       (.E(cam_x),
        .Q({cam_x_reg[9:7],cam_x_reg[0]}),
        .bram_en(bram_en),
        .cam_data(cam_data),
        .cam_href(cam_href),
        .cam_pclk(cam_pclk),
        .cam_vsync(cam_vsync),
        .\cam_x_reg[0] (u_read_pixels_n_3),
        .\cam_x_reg[0]_0 (u_read_pixels_n_4),
        .\cam_x_reg[9] (qvga_waddr_i_4_n_0),
        .frame_done(frame_done),
        .\pixel_data_reg[15]_0 (\pixel_data_reg[15] ),
        .qvga_waddr({frame_buf_reg_0_0_i_4_n_5,frame_buf_reg_0_0_i_4_n_6}),
        .rp_pixel_valid(rp_pixel_valid));
  design_1_top_0_0_system_wrapper u_system
       (.E(sync_v),
        .Q({\vid_pdata_r_reg_n_0_[23] ,\vid_pdata_r_reg_n_0_[22] ,\vid_pdata_r_reg_n_0_[21] ,\vid_pdata_r_reg_n_0_[20] ,\vid_pdata_r_reg_n_0_[19] ,\vid_pdata_r_reg_n_0_[18] ,\vid_pdata_r_reg_n_0_[17] ,\vid_pdata_r_reg_n_0_[16] }),
        .SR(u_system_n_12),
        .S_AXIS_CAPTURE_tlast(capture_axis_tlast),
        .S_AXIS_CAPTURE_tuser(capture_axis_tuser),
        .axis_data_fifo_0(\pixel_data_reg[15] ),
        .\bbstub_peripheral_aresetn[0] (u_system_n_16),
        .cam_pclk(cam_pclk),
        .cam_xclk(cam_xclk_o),
        .hdmi_tx_clk_n(hdmi_tx_clk_n),
        .hdmi_tx_clk_p(hdmi_tx_clk_p),
        .hdmi_tx_d_n(hdmi_tx_d_n),
        .hdmi_tx_d_p(hdmi_tx_d_p),
        .in_panel_d2(in_panel_d2),
        .led4_g(led4_g),
        .mmcm_locked(led_mmcm_locked),
        .pixel_clk(pixel_clk),
        .rp_pixel_valid(rp_pixel_valid),
        .rst(rst),
        .rst_0(u_system_n_14),
        .rst_1(u_system_n_15),
        .sccb_fired(sccb_fired),
        .sccb_fired1_out(sccb_fired1_out),
        .sccb_fired_reg(u_system_n_20),
        .sync_h_reg(sync_h_reg[10:7]),
        .\sync_h_reg[10] (u_system_n_17),
        .\sync_h_reg[8] (u_system_n_18),
        .\sync_h_reg[9] (u_system_n_13),
        .\sync_v_reg[0] (u_system_n_19),
        .sys_clk(sys_clk),
        .vid_active_i(vid_active_r),
        .vid_active_r_reg(vid_active_r_i_2_n_0),
        .vid_active_r_reg_0(vid_active_r_i_3_n_0),
        .vid_hsync_i(vid_hsync_r),
        .vid_hsync_r_reg(vid_hsync_r_i_2_n_0),
        .vid_hsync_r_reg_0(vid_hsync_r_i_3_n_0),
        .vid_hsync_r_reg_1(vid_hsync_r_i_4_n_0),
        .\vid_pdata_r_reg[23] (frame_buf_reg_0_0_i_3_n_0),
        .vid_vsync_i(vid_vsync_r),
        .vid_vsync_r_reg(vid_vsync_r_i_2_n_0),
        .vid_vsync_r_reg_0({\sync_v_reg_n_0_[3] ,Q,\sync_v_reg_n_0_[1] ,\sync_v_reg_n_0_[0] }));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    u_xclk_oddr
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .Q(cam_xclk),
        .R(NLW_u_xclk_oddr_R_UNCONNECTED),
        .S(NLW_u_xclk_oddr_S_UNCONNECTED));
  LUT2 #(
    .INIT(4'hE)) 
    vid_active_r_i_2
       (.I0(\sync_v_reg_n_0_[11] ),
        .I1(\sync_v_reg_n_0_[10] ),
        .O(vid_active_r_i_2_n_0));
  LUT6 #(
    .INIT(64'h0F7F0F7F0F7F0FFF)) 
    vid_active_r_i_3
       (.I0(\sync_v_reg_n_0_[6] ),
        .I1(\sync_v_reg_n_0_[7] ),
        .I2(\sync_v_reg_n_0_[9] ),
        .I3(\sync_v_reg_n_0_[8] ),
        .I4(\sync_v_reg_n_0_[5] ),
        .I5(\sync_v_reg_n_0_[4] ),
        .O(vid_active_r_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vid_active_r_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .D(u_system_n_17),
        .Q(vid_active_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000000557F)) 
    vid_hsync_r_i_2
       (.I0(sync_h_reg[4]),
        .I1(sync_h_reg[2]),
        .I2(sync_h_reg[1]),
        .I3(sync_h_reg[3]),
        .I4(sync_h_reg[5]),
        .I5(sync_h_reg[6]),
        .O(vid_hsync_r_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hB)) 
    vid_hsync_r_i_3
       (.I0(sync_h_reg[9]),
        .I1(sync_h_reg[10]),
        .O(vid_hsync_r_i_3_n_0));
  LUT6 #(
    .INIT(64'hC080808080808080)) 
    vid_hsync_r_i_4
       (.I0(sync_h_reg[4]),
        .I1(sync_h_reg[5]),
        .I2(sync_h_reg[6]),
        .I3(sync_h_reg[3]),
        .I4(sync_h_reg[2]),
        .I5(sync_h_reg[1]),
        .O(vid_hsync_r_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vid_hsync_r_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .D(u_system_n_18),
        .Q(vid_hsync_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \vid_pdata_r[16]_i_1 
       (.I0(panel_y_pixel[0]),
        .I1(frame_buf_reg_0_0_i_3_n_0),
        .I2(frame_buf_reg_1_0__0_n_67),
        .I3(frame_buf_reg_mux_sel_b_pos_1__6_n_0),
        .I4(frame_buf_reg_mux_sel_b_pos_0__6_n_0),
        .I5(frame_buf_reg_1_0_n_67),
        .O(p_1_in[16]));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \vid_pdata_r[17]_i_1 
       (.I0(panel_y_pixel[1]),
        .I1(frame_buf_reg_0_0_i_3_n_0),
        .I2(frame_buf_reg_1_1__0_n_67),
        .I3(frame_buf_reg_mux_sel_b_pos_1__6_n_0),
        .I4(frame_buf_reg_mux_sel_b_pos_0__6_n_0),
        .I5(frame_buf_reg_1_1_n_67),
        .O(p_1_in[17]));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \vid_pdata_r[18]_i_1 
       (.I0(panel_y_pixel[2]),
        .I1(frame_buf_reg_0_0_i_3_n_0),
        .I2(frame_buf_reg_1_2__0_n_67),
        .I3(frame_buf_reg_mux_sel_b_pos_1__6_n_0),
        .I4(frame_buf_reg_mux_sel_b_pos_0__6_n_0),
        .I5(frame_buf_reg_1_2_n_67),
        .O(p_1_in[18]));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \vid_pdata_r[19]_i_1 
       (.I0(panel_y_pixel[3]),
        .I1(frame_buf_reg_0_0_i_3_n_0),
        .I2(frame_buf_reg_1_3__0_n_67),
        .I3(frame_buf_reg_mux_sel_b_pos_1__6_n_0),
        .I4(frame_buf_reg_mux_sel_b_pos_0__6_n_0),
        .I5(frame_buf_reg_1_3_n_67),
        .O(p_1_in[19]));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \vid_pdata_r[20]_i_1 
       (.I0(panel_y_pixel[4]),
        .I1(frame_buf_reg_0_0_i_3_n_0),
        .I2(frame_buf_reg_1_4__0_n_67),
        .I3(frame_buf_reg_mux_sel_b_pos_1__6_n_0),
        .I4(frame_buf_reg_mux_sel_b_pos_0__6_n_0),
        .I5(frame_buf_reg_1_4_n_67),
        .O(p_1_in[20]));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \vid_pdata_r[21]_i_1 
       (.I0(panel_y_pixel[5]),
        .I1(frame_buf_reg_0_0_i_3_n_0),
        .I2(frame_buf_reg_1_5__0_n_67),
        .I3(frame_buf_reg_mux_sel_b_pos_1__6_n_0),
        .I4(frame_buf_reg_mux_sel_b_pos_0__6_n_0),
        .I5(frame_buf_reg_1_5_n_67),
        .O(p_1_in[21]));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \vid_pdata_r[22]_i_1 
       (.I0(panel_y_pixel[6]),
        .I1(frame_buf_reg_0_0_i_3_n_0),
        .I2(frame_buf_reg_1_6__0_n_67),
        .I3(frame_buf_reg_mux_sel_b_pos_1__6_n_0),
        .I4(frame_buf_reg_mux_sel_b_pos_0__6_n_0),
        .I5(frame_buf_reg_1_6_n_67),
        .O(p_1_in[22]));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \vid_pdata_r[23]_i_2 
       (.I0(panel_y_pixel[7]),
        .I1(frame_buf_reg_0_0_i_3_n_0),
        .I2(frame_buf_reg_1_7__0_n_67),
        .I3(frame_buf_reg_mux_sel_b_pos_1__6_n_0),
        .I4(frame_buf_reg_mux_sel_b_pos_0__6_n_0),
        .I5(frame_buf_reg_1_7_n_67),
        .O(p_1_in[23]));
  FDRE #(
    .INIT(1'b0)) 
    \vid_pdata_r_reg[16] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(\vid_pdata_r_reg_n_0_[16] ),
        .R(u_system_n_12));
  FDRE #(
    .INIT(1'b0)) 
    \vid_pdata_r_reg[17] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(p_1_in[17]),
        .Q(\vid_pdata_r_reg_n_0_[17] ),
        .R(u_system_n_12));
  FDRE #(
    .INIT(1'b0)) 
    \vid_pdata_r_reg[18] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(p_1_in[18]),
        .Q(\vid_pdata_r_reg_n_0_[18] ),
        .R(u_system_n_12));
  FDRE #(
    .INIT(1'b0)) 
    \vid_pdata_r_reg[19] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(p_1_in[19]),
        .Q(\vid_pdata_r_reg_n_0_[19] ),
        .R(u_system_n_12));
  FDRE #(
    .INIT(1'b0)) 
    \vid_pdata_r_reg[20] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(p_1_in[20]),
        .Q(\vid_pdata_r_reg_n_0_[20] ),
        .R(u_system_n_12));
  FDRE #(
    .INIT(1'b0)) 
    \vid_pdata_r_reg[21] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(p_1_in[21]),
        .Q(\vid_pdata_r_reg_n_0_[21] ),
        .R(u_system_n_12));
  FDRE #(
    .INIT(1'b0)) 
    \vid_pdata_r_reg[22] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(p_1_in[22]),
        .Q(\vid_pdata_r_reg_n_0_[22] ),
        .R(u_system_n_12));
  FDRE #(
    .INIT(1'b0)) 
    \vid_pdata_r_reg[23] 
       (.C(pixel_clk),
        .CE(1'b1),
        .D(p_1_in[23]),
        .Q(\vid_pdata_r_reg_n_0_[23] ),
        .R(u_system_n_12));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    vid_vsync_r_i_2
       (.I0(\sync_v_reg_n_0_[9] ),
        .I1(\sync_v_reg_n_0_[7] ),
        .I2(\sync_v_reg_n_0_[6] ),
        .I3(\sync_v_reg_n_0_[11] ),
        .I4(\sync_v_reg_n_0_[10] ),
        .I5(vid_vsync_r_i_3_n_0),
        .O(vid_vsync_r_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0DFF)) 
    vid_vsync_r_i_3
       (.I0(\sync_v_reg_n_0_[3] ),
        .I1(\sync_v_reg_n_0_[1] ),
        .I2(Q),
        .I3(\sync_v_reg_n_0_[4] ),
        .I4(\sync_v_reg_n_0_[8] ),
        .I5(\sync_v_reg_n_0_[5] ),
        .O(vid_vsync_r_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vid_vsync_r_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .D(u_system_n_19),
        .Q(vid_vsync_r),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \vs_cnt[0]_i_2 
       (.I0(\vs_cnt_reg_n_0_[0] ),
        .O(\vs_cnt[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \vs_cnt[5]_i_1 
       (.I0(vs_s2),
        .I1(vs_prev),
        .O(sel));
  FDRE #(
    .INIT(1'b0)) 
    \vs_cnt_reg[0] 
       (.C(pixel_clk),
        .CE(sel),
        .D(\vs_cnt_reg[0]_i_1_n_7 ),
        .Q(\vs_cnt_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \vs_cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\vs_cnt_reg[0]_i_1_n_0 ,\vs_cnt_reg[0]_i_1_n_1 ,\vs_cnt_reg[0]_i_1_n_2 ,\vs_cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\vs_cnt_reg[0]_i_1_n_4 ,\vs_cnt_reg[0]_i_1_n_5 ,\vs_cnt_reg[0]_i_1_n_6 ,\vs_cnt_reg[0]_i_1_n_7 }),
        .S({\vs_cnt_reg_n_0_[3] ,\vs_cnt_reg_n_0_[2] ,\vs_cnt_reg_n_0_[1] ,\vs_cnt[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \vs_cnt_reg[1] 
       (.C(pixel_clk),
        .CE(sel),
        .D(\vs_cnt_reg[0]_i_1_n_6 ),
        .Q(\vs_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vs_cnt_reg[2] 
       (.C(pixel_clk),
        .CE(sel),
        .D(\vs_cnt_reg[0]_i_1_n_5 ),
        .Q(\vs_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vs_cnt_reg[3] 
       (.C(pixel_clk),
        .CE(sel),
        .D(\vs_cnt_reg[0]_i_1_n_4 ),
        .Q(\vs_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vs_cnt_reg[4] 
       (.C(pixel_clk),
        .CE(sel),
        .D(\vs_cnt_reg[5]_i_2_n_7 ),
        .Q(\vs_cnt_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vs_cnt_reg[5] 
       (.C(pixel_clk),
        .CE(sel),
        .D(\vs_cnt_reg[5]_i_2_n_6 ),
        .Q(led_pll_locked),
        .R(1'b0));
  CARRY4 \vs_cnt_reg[5]_i_2 
       (.CI(\vs_cnt_reg[0]_i_1_n_0 ),
        .CO({\NLW_vs_cnt_reg[5]_i_2_CO_UNCONNECTED [3:1],\vs_cnt_reg[5]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_vs_cnt_reg[5]_i_2_O_UNCONNECTED [3:2],\vs_cnt_reg[5]_i_2_n_6 ,\vs_cnt_reg[5]_i_2_n_7 }),
        .S({1'b0,1'b0,led_pll_locked,\vs_cnt_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    vs_prev_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .D(vs_s2),
        .Q(vs_prev),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    vs_s2_reg
       (.C(pixel_clk),
        .CE(1'b1),
        .D(cam_vsync),
        .Q(vs_s2),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \xclk_cnt[0]_i_2 
       (.I0(\xclk_cnt_reg_n_0_[0] ),
        .O(\xclk_cnt[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \xclk_cnt_reg[0] 
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D(\xclk_cnt_reg[0]_i_1_n_7 ),
        .Q(\xclk_cnt_reg_n_0_[0] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \xclk_cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\xclk_cnt_reg[0]_i_1_n_0 ,\xclk_cnt_reg[0]_i_1_n_1 ,\xclk_cnt_reg[0]_i_1_n_2 ,\xclk_cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\xclk_cnt_reg[0]_i_1_n_4 ,\xclk_cnt_reg[0]_i_1_n_5 ,\xclk_cnt_reg[0]_i_1_n_6 ,\xclk_cnt_reg[0]_i_1_n_7 }),
        .S({\xclk_cnt_reg_n_0_[3] ,\xclk_cnt_reg_n_0_[2] ,\xclk_cnt_reg_n_0_[1] ,\xclk_cnt[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \xclk_cnt_reg[10] 
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D(\xclk_cnt_reg[8]_i_1_n_5 ),
        .Q(\xclk_cnt_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xclk_cnt_reg[11] 
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D(\xclk_cnt_reg[8]_i_1_n_4 ),
        .Q(\xclk_cnt_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xclk_cnt_reg[12] 
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D(\xclk_cnt_reg[12]_i_1_n_7 ),
        .Q(\xclk_cnt_reg_n_0_[12] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \xclk_cnt_reg[12]_i_1 
       (.CI(\xclk_cnt_reg[8]_i_1_n_0 ),
        .CO({\xclk_cnt_reg[12]_i_1_n_0 ,\xclk_cnt_reg[12]_i_1_n_1 ,\xclk_cnt_reg[12]_i_1_n_2 ,\xclk_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\xclk_cnt_reg[12]_i_1_n_4 ,\xclk_cnt_reg[12]_i_1_n_5 ,\xclk_cnt_reg[12]_i_1_n_6 ,\xclk_cnt_reg[12]_i_1_n_7 }),
        .S({\xclk_cnt_reg_n_0_[15] ,\xclk_cnt_reg_n_0_[14] ,\xclk_cnt_reg_n_0_[13] ,\xclk_cnt_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \xclk_cnt_reg[13] 
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D(\xclk_cnt_reg[12]_i_1_n_6 ),
        .Q(\xclk_cnt_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xclk_cnt_reg[14] 
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D(\xclk_cnt_reg[12]_i_1_n_5 ),
        .Q(\xclk_cnt_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xclk_cnt_reg[15] 
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D(\xclk_cnt_reg[12]_i_1_n_4 ),
        .Q(\xclk_cnt_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xclk_cnt_reg[16] 
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D(\xclk_cnt_reg[16]_i_1_n_7 ),
        .Q(\xclk_cnt_reg_n_0_[16] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \xclk_cnt_reg[16]_i_1 
       (.CI(\xclk_cnt_reg[12]_i_1_n_0 ),
        .CO({\xclk_cnt_reg[16]_i_1_n_0 ,\xclk_cnt_reg[16]_i_1_n_1 ,\xclk_cnt_reg[16]_i_1_n_2 ,\xclk_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\xclk_cnt_reg[16]_i_1_n_4 ,\xclk_cnt_reg[16]_i_1_n_5 ,\xclk_cnt_reg[16]_i_1_n_6 ,\xclk_cnt_reg[16]_i_1_n_7 }),
        .S({\xclk_cnt_reg_n_0_[19] ,\xclk_cnt_reg_n_0_[18] ,\xclk_cnt_reg_n_0_[17] ,\xclk_cnt_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \xclk_cnt_reg[17] 
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D(\xclk_cnt_reg[16]_i_1_n_6 ),
        .Q(\xclk_cnt_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xclk_cnt_reg[18] 
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D(\xclk_cnt_reg[16]_i_1_n_5 ),
        .Q(\xclk_cnt_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xclk_cnt_reg[19] 
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D(\xclk_cnt_reg[16]_i_1_n_4 ),
        .Q(\xclk_cnt_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xclk_cnt_reg[1] 
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D(\xclk_cnt_reg[0]_i_1_n_6 ),
        .Q(\xclk_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xclk_cnt_reg[20] 
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D(\xclk_cnt_reg[23]_i_1_n_7 ),
        .Q(\xclk_cnt_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xclk_cnt_reg[21] 
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D(\xclk_cnt_reg[23]_i_1_n_6 ),
        .Q(\xclk_cnt_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xclk_cnt_reg[22] 
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D(\xclk_cnt_reg[23]_i_1_n_5 ),
        .Q(\xclk_cnt_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xclk_cnt_reg[23] 
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D(\xclk_cnt_reg[23]_i_1_n_4 ),
        .Q(led5_g),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \xclk_cnt_reg[23]_i_1 
       (.CI(\xclk_cnt_reg[16]_i_1_n_0 ),
        .CO({\NLW_xclk_cnt_reg[23]_i_1_CO_UNCONNECTED [3],\xclk_cnt_reg[23]_i_1_n_1 ,\xclk_cnt_reg[23]_i_1_n_2 ,\xclk_cnt_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\xclk_cnt_reg[23]_i_1_n_4 ,\xclk_cnt_reg[23]_i_1_n_5 ,\xclk_cnt_reg[23]_i_1_n_6 ,\xclk_cnt_reg[23]_i_1_n_7 }),
        .S({led5_g,\xclk_cnt_reg_n_0_[22] ,\xclk_cnt_reg_n_0_[21] ,\xclk_cnt_reg_n_0_[20] }));
  FDRE #(
    .INIT(1'b0)) 
    \xclk_cnt_reg[2] 
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D(\xclk_cnt_reg[0]_i_1_n_5 ),
        .Q(\xclk_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xclk_cnt_reg[3] 
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D(\xclk_cnt_reg[0]_i_1_n_4 ),
        .Q(\xclk_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xclk_cnt_reg[4] 
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D(\xclk_cnt_reg[4]_i_1_n_7 ),
        .Q(\xclk_cnt_reg_n_0_[4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \xclk_cnt_reg[4]_i_1 
       (.CI(\xclk_cnt_reg[0]_i_1_n_0 ),
        .CO({\xclk_cnt_reg[4]_i_1_n_0 ,\xclk_cnt_reg[4]_i_1_n_1 ,\xclk_cnt_reg[4]_i_1_n_2 ,\xclk_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\xclk_cnt_reg[4]_i_1_n_4 ,\xclk_cnt_reg[4]_i_1_n_5 ,\xclk_cnt_reg[4]_i_1_n_6 ,\xclk_cnt_reg[4]_i_1_n_7 }),
        .S({\xclk_cnt_reg_n_0_[7] ,\xclk_cnt_reg_n_0_[6] ,\xclk_cnt_reg_n_0_[5] ,\xclk_cnt_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \xclk_cnt_reg[5] 
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D(\xclk_cnt_reg[4]_i_1_n_6 ),
        .Q(\xclk_cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xclk_cnt_reg[6] 
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D(\xclk_cnt_reg[4]_i_1_n_5 ),
        .Q(\xclk_cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xclk_cnt_reg[7] 
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D(\xclk_cnt_reg[4]_i_1_n_4 ),
        .Q(\xclk_cnt_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \xclk_cnt_reg[8] 
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D(\xclk_cnt_reg[8]_i_1_n_7 ),
        .Q(\xclk_cnt_reg_n_0_[8] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \xclk_cnt_reg[8]_i_1 
       (.CI(\xclk_cnt_reg[4]_i_1_n_0 ),
        .CO({\xclk_cnt_reg[8]_i_1_n_0 ,\xclk_cnt_reg[8]_i_1_n_1 ,\xclk_cnt_reg[8]_i_1_n_2 ,\xclk_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\xclk_cnt_reg[8]_i_1_n_4 ,\xclk_cnt_reg[8]_i_1_n_5 ,\xclk_cnt_reg[8]_i_1_n_6 ,\xclk_cnt_reg[8]_i_1_n_7 }),
        .S({\xclk_cnt_reg_n_0_[11] ,\xclk_cnt_reg_n_0_[10] ,\xclk_cnt_reg_n_0_[9] ,\xclk_cnt_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \xclk_cnt_reg[9] 
       (.C(cam_xclk_o),
        .CE(1'b1),
        .D(\xclk_cnt_reg[8]_i_1_n_6 ),
        .Q(\xclk_cnt_reg_n_0_[9] ),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
