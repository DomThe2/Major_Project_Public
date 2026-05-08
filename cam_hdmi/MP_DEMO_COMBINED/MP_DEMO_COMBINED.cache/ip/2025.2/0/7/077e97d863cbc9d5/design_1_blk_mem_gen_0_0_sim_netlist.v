// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Apr 23 12:42:46 2026
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
