// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu May  7 01:15:58 2026
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
  (* C_INIT_FILE_NAME = "design_1_blk_mem_gen_0_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26912)
`pragma protect data_block
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
SzMMP//4B+Q=
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
