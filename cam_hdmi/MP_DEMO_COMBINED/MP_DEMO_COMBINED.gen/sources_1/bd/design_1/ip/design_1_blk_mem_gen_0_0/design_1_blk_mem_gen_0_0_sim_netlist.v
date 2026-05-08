// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu May  7 04:06:33 2026
// Host        : harun running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/harun/Documents/MP/MP_DEMO_COMBINED/MP_DEMO_COMBINED.gen/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_0_0
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE WRITE_ONLY, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [11:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]doutb;
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
  (* C_DEFAULT_DATA = "0" *) 
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
  (* C_HAS_ENB = "0" *) 
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
  (* C_USE_DEFAULT_DATA = "0" *) 
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
  design_1_blk_mem_gen_0_0_blk_mem_gen_v8_4_12 U0
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
        .enb(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26992)
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
