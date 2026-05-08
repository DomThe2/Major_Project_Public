// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu May  7 00:52:07 2026
// Host        : harun running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE WRITE_ONLY, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [11:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
  wire enb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_douta_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "FF" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.862099 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2304" *) 
  (* C_READ_DEPTH_B = "2304" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2304" *) 
  (* C_WRITE_DEPTH_B = "2304" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[7:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YqH9kwIC39+qbZg4PSfFsXuB9k9wnuxNryS/CfnEri6Ci9fSC6fsrQ/T/hnt3u/yolbJ8DJa1Qu6
Qnm24A9jLbA+fu3Nsmm6/rM6a4vU6OfVl/gTFd/CiWDutv6Dhn6Lim4uUNPahoOR/A2Yc4Zo2tdI
kMLO9gn9WlH2l3O2oXs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XJYO2VHd/cnMxQd3i7/2qRhl57dl+doEKuhAunQyv3vpGRG/jlNxj8PqrgLoF0HMdqE3qJUVE/oq
kBSapqjVjLDMOrNGQ+Tc6VGsKMZH8FE/TXHQJ/IM5Iuiu2eozEwwVUomF+7cfqn+9OsVsqCONQ1M
g0oRlangiqasJDhhMfnlGGqwAwmgWRGQA6dmhTuua1s8zdvIv540zY6p5au8cAKVhqyyKK7wbxEE
SGuFqX+NYoyRV+rfWCcWM+hJEmnWS8LNAKkd13YE2+17sPYzUdZ23DmTxXK6KlAxKFW27CBySUfg
qdNXp2DSs2KAQYih27pBNMuHfGbM/ATFPWFvxg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYoEi/e8HsDTz6N11EDe/B/iitERmeYndlCklmCluwgb0N4W80JUGVlkd7NlRZHRNhxaNBJPkcjC
n61nO0tb17NwsMwjbY5TF8JWRYTNw1JXCFacvQYrdKv4/7QNQEtwVGiCLxFhOA8aHlWMZIrc2fri
VRMVWaEBcPwCGorlVIM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QEw9fEsWFbdX0OQLvYs/gl+zyEOW3ak9TdQVaq+0AXXOT3LIqF7wDxJ6ZBnlf9mNbdsUVH5tAz1o
H8u7ihJl1L3THEvugW+TS8hkvVbEA9rKO2vV15KAj4Lla7UdFT/xDfe79RFarlLI7yGrubjgdoRi
QWy//UKsffG7IWNwmoSuppWiWB4ZHJtkunNyIkm70JPGyZF62VxJg1MTT+5LUbZG5vZjjuHZud9w
xJaKv1tFP/x8RVqLU5gPOqGqTW7/nKO2S+450Vo4D9vAmBVVcXpaL1EbSmCvQ+qJmcQKtf9qYFRV
Zko08hbpHjPxstqvTDro01jRzB8592m4xU2TWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TC7q853CWBPPJgbRfgDV1lmjUwSAtliljShAyNFg8sfRfwDzchthzoSPH1UCHV++E2JXacEKq1lB
UWsNP92U4Xh0/Gu+6esOI0pJb8I+TRTxyBN1I4cRQEfQHcwfhbSdeH3yX9OV3opLEqYmT37hWU+J
zCawYnxVESI0FtRzEXve9gdEWlrKKckrT/hp4mvxxOjvOkOSQBvy0elgUOqh6mEOZl+JnUbsR+Wm
CoZLE1eefMZy3FnVmyDNPv3JPXi88aLXMyimal0MYFkTiS4XJiGT3eAIMIbksehXY+eYi/KFpZWQ
GHpX+lG3UmiWWLwyPakFwKEHbrBc70AlJ2eV9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j9nmCKgjPWNChPbpSW6EWLrMA6oCG2JGPoum8px09v0PEAh0DRXZi0J8HPzXUsZgOEMcKpA7X54u
YFcDDCLAQ+urha/eSPbQYHQh4yGCursxAQ1C6LEyNQ2wJ0eLlO2bJeAl/gof06zqsYVM2lLJVNv5
wao1k2bmgPdfpfY3c9vPD0fSMuZPS41EoRS0cQhO5GTZnKdjxm6tEUL3GnTjB8ynSCIbCJUsMtAX
4FRHNa52gudx5B5fagR+lXgFhE7e++rWTJELr7SYB+r5Es8qZLTpCH8TrQxEkV0rY/+e4sAjNE2D
gHw8GD7VcUtc15B8y1BbVmh29qc8Nd3V2i/miA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UkCD6I/Vye4qNoNoa3hIexBXG3xyKUJPAHAjIo7UcNVCDXpMQiYEtPDqExZMfiPlJn2nswCYIfIJ
FYWqMCloKSQyyI/7yZ2EtbyWEklb/P5IyZyvGi6hhFUo/JFTb12b4bK0gZPr+bCDdlVQKTx5GVHz
wptdUJO2omSj8axVMPbLRRtVzlJIZ29dTJ2ATXVXAcBxPnFfHRAMnYYKLeeLExX61vQvpqrkLQHm
XG7hpVzJi56gYKAzxa2BLq072OCVpVS70bfWlhlSTVcSlCrUf+EcarEk4FD8+Ih2NCvrqremG6yn
TtcBn8Xr8M/6zhOYvLi6AD6eArDMKA8n+Ccv8A==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A5y5QVZU8yjPexRVPioSiAGohCHD5DX5FVobuMyhcgQRExLUhPvnnS8HOtxTj/2IapEcz68gFMGG
Hpi+m725u85/om/Vze9pGIW9Mn328Kz2FIg3W5EvGstfGwY+48LiAGAmTR269JS4lJGVYWYOz7Xk
S8cEsFd2m7j8iyKtARJzD90+UdXq/cIIh725jC9i8nbgxB364zddvm1Z/DF3JRw1qFp6GGcuRai1
KNcJ1j8c9wtIgktpsteU3e5+bxHEw8NT3gWXUFYjm00NDq97Jals8Jjktmum2nQxoF7ivPacfEey
gnSF6jRMkTsZObzc30hAhs0CEtc33hZLhPLHSn8pQ0WyvKJLHdd5s2yckgTZtqxC1Sbwe7WEgNXe
ZMX3pIkz+aoXsAL7GBLyVBMVQcyMoF0w8QGAaTe8sqatABwPqXidYRqNROTf62IYcMpV89XYgaTv
EwIn/oni9KOFd2BFVxRZbFGGC4IjvigsTBUijI+Dk6kVnDh240clGcc4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Omtp+lCaqUx7Z4qdFj2zrN8LpCkit2eX4hlMtig+ielGm/x4FSZkpjoFmiqdKFPi2eg0pg09MSai
XyGH68UzAR7Xrj8f1jlIoUmMKp4GcxfdqfTeuu7kWGOJEP6cvgTjSJFj2gawDv7f4yZcltnK2x0L
e4GW/rBTmGvZtKWb2ahjINLxPuh3dDaSaWdb+zVgbtyrI5FrjxBkq+aOxSjyNsqnCx1L0uWbxnkl
88NbXN3dTaECXHNm/fsleayM5hKis7kTv9BFajJMGy+BhQlmIYpE+F5zchnTTFUFJZCz1sX9Fc8e
HcY7irB8mR3ajdzjUZLBQEMktp096Nheq3U75A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hpeBLwN9x2ZFDwroYLlUe5GjjDepHik2l0c2s3/6S7JPCRkzQSyt2V1Ad/JewAs/QNp5SXSbYYB4
rQl0My1LDMF3xw43r0g2IbcyHVpPhGp0W5msuQdF67afnsRv90iJYWLMI3QkYGCTWAzl4HrLxFSg
3z8XZRK670IcxznOrlvgHmIKsvubZrBkuc1EynrVb9Nw16QnIx2rc4WgcEXeFf+4i1RoYLDd3gXK
NFCNMdtaRYUThunFP6Z4ViZ5UnDmKq+IMhd31jTaqIlWOBDxPI1+v5RJYxIyTbn4rxlKR2fNbl5/
z4OUjBTd+1GH3I2OXlqmAOvIhpe2Z2HH7nZu/A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mt2RhTSUwEIEWeNARbyL+EdfS1UF6nPaL/fKl/7oO2gina93egwCWDLl1fbBtkfaPco0cu4MJ9K3
OraAsyHRlY+MNShmJ1LzAIA1LjZx4y55lu9dlQqSUXR7AW7wVbkg1864mK+hM/1XygU0jvebKNW9
B7xSER+asLO6pxi0mt7uC2PHxLPAYEszFhmnap82TtbDGdQ2qtyekY+ngs+N2fAdsblxVwJruiMl
e6XJ127M8N1mYwhWU2HtRpBOSnnKoHgD9fG51XK/rhk8DxT66QnX9uLPB+H25eDupBJGi1Y5o6x8
hOwZiSUVlBLh7brfzevh7+eRn+7es6wBas0+3w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27184)
`pragma protect data_block
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
`pragma protect end_protected
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
