// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu May  7 01:07:06 2026
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
