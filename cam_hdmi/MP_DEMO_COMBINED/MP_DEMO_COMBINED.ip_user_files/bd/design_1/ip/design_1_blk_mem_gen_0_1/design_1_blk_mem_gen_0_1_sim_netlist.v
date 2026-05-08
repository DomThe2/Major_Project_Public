// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Apr 23 12:42:46 2026
// Host        : harun running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_blk_mem_gen_0_1 -prefix
//               design_1_blk_mem_gen_0_1_ design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_0_1
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.53475 mW" *) 
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
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2304" *) 
  (* C_WRITE_DEPTH_B = "2304" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_blk_mem_gen_0_1_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26976)
`pragma protect data_block
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
CqsqZOGLwNpcdJptuDCS
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
