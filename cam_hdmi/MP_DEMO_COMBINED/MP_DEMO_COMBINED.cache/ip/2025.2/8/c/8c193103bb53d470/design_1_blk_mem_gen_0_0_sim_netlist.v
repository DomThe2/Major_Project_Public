// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu May  7 00:43:07 2026
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27168)
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
