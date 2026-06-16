// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sun Jun 14 18:36:13 2026
// Host        : GREENGOBLIN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/ameen.shaikh/Desktop/projects/rmii_ethernet/rmii_ethernet.gen/sources_1/bd/design_1/ip/design_1_axi_bram_ctrl_0_bram_0/design_1_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : design_1_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_axi_bram_ctrl_0_bram_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    rsta_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  output rsta_busy;

  wire [31:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.3746 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "design_1_axi_bram_ctrl_0_bram_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_axi_bram_ctrl_0_bram_0_blk_mem_gen_v8_4_12 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53584)
`pragma protect data_block
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
omtbZw==
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
