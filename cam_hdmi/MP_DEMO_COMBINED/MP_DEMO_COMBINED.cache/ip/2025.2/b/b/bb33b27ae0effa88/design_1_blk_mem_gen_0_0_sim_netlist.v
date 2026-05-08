// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Wed May  6 23:19:44 2026
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.53475 mW" *) 
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
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
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
