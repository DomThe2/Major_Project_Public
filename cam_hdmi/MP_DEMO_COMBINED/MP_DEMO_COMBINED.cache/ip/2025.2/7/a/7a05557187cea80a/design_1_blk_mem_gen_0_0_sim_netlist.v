// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu May  7 04:06:32 2026
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26896)
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
