// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sun Jun 14 18:36:12 2026
// Host        : GREENGOBLIN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : design_1_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_12 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53456)
`pragma protect data_block
p74NHEpvw46Wo+kvLwzCx0eXzmGv6mmFiNRj2qHqHK+GLdWoQiZqO0Su8HSd4f+BAiOvjU3Sncp8
mHPB0SY63P7/pJnyx+4guEftEFzUzkuIFVZDShwcAQnCd+hqlDI9nBTY5jT0jtKCMW1j88hFaizu
/PsWyH66+qqvI37phVdt/NGm2dt/ZBvYhmyardp2Gp2d2xOaKR2eGKemCkECNT0JPVbVdFd2nXXq
IQLPCl00UAQWbsPg+N+O1RPMO4N3vTx+ZjFfHs9Fl6KCrMnQQf9gdMupFCH9eBTaUEm8UzfFz9hZ
nOa7VaGE5004Vq42fm9WNIvMwfoZYFJUYhfs5ndwFqfnSMd54TZ5rDVqgCg7/BorcOa+8BQ+bb/9
SxBHJxtM2Rg7e4HIbptli1xAXz/6ocjHihEKgHEAlXqkgoToV4NxtOSwEBhJk3/WUkd5Rip1jHPH
k6Y1s6w1nbSzWb3fzbL60JTzs3jJuRWUyuBEATya6wNBlI5Dz76jVfhojafczQrOJlNSq/Xi29Gm
Y/XuaebbTnAQuJ515sV4CN0t+hNf05jSJwBmIcm6X3RqAQglGmRh2JfnJTRg/meGKpTp91BG7dsR
ieSlJZP/Hpvygo2Zc/ex102RQxjknS2yuMR2P+K8E0zFI0b0vPMKDgR6VszUS7eK4oa8PqtkZZ1z
1JUvi6MmwFMbs5QGUqQ/yVFlh/HsQTLlpjqRXJxHXiKTYkhmbqUl1km+q/mqoKZYjJGiu+x7jkZa
A7K3PK2KsIxhepCYek+N8/bkeC+6kUlIgJq3MNNopPq3MLdL4Guk68v5DHU7C2cEKwPDeFl0Ml0T
5/ZAjfZderoAV1eRqyFk6FKWDresTvUGXr0R8I7KyUbt1N6lNSA3v1pL5XFT58RWiqYDtc7nCI2a
QS+9SuK+L5pHKDPBdQFfMjagYYKBj5zb4Z2FkXQYJRwbKZI29KvcWTD4WVrlIJdG1XsxgbaDipa0
ABiNrWOO2nxlx+Tk0+soUZvGORveVXXIFWjg41RW1MvcfkOap3KeT3ClS9Y/dsPmXoAq97ZAuUD1
4XQEsiZPXs40mOh0P6vVcm/MIW4U3VVPK2AlCjSwYg9KJpielM2TtEJsRP1I4q5q3nC7G7M4cIxE
gcFyMiwD0WYaKkea4ZNkTRiZIJ48ysfKvy5OfE1FROyne7+UygwkwGl96uuVsjtaN8hjctJOzC1a
QQNtg0YpZhBVspGzHOL9JopbrZGTpfIG6+CGcz90N0FYNSVwgQjvvO3vQC3XNfmNR95pVo4j4Gg9
pxplsE99lCu4fENb6UadNCUAgdtuiL6YUl3+3C4RUD9lKt7zehocwab1HzzdcOaxSDMi84uYHye4
4VQM8AIsEbds3TWoxjj/vKCOkz0x/BUGy4nRChm6EdsO1sEUxmaUAx63TCxTHwJxhynidUaXk43L
k2BePBcwuq/m7IkjpPH2JXGR8an7TByESBJjlqwoY/F+I/tkzOs7LJfnpTVjQ4hIjZL8NxZF/p3h
kbRCWabqgDxSZb+tbWDYESwSI736zk9+aWCQ0goCXl1Vp8p+QCIVIagH5QKW7BXX1oq8ZX0jIO4G
BkM0Dssm6NOktn9vmuAZufh9TVfuLBJotNzQ/ylwXq8Z5DULq45DNysXZk41sUSYzvWyjoHNkwMN
aTVsXgoPCtAVhAhiN9FCEJrVyWxBqz9T7gmD/BUvHjjzD1sSsSxTF/yTBko0qSpR7B/V7+9H98UT
E6A9d3SgP+qlW9+igSq+xYd8LvCAmRbYQJc0qJ4GDCVZmu6mWcm6YuESRi1HskOvNlUpnJOOMLdN
VmQ/lzK3K39w3NVJ6i7Al7IOoi6OlFHLFLwLj5JKbaT3bpyKj6tQQkas03Z40aiPdr6QnNSYwPHT
q5OhWefliP8YCQxra9cY/VYCsYeo/a2UvPoE2R+ASiMe8mov6ZF80uGkQsfZL9u+uRCUN4uQvpvH
mWcedvKEYqvifC3zgujZlR006OMDLu8iId3Z9A7kkiT1eCS0vEC4tMcXLFpQ6wNlDR+jVmA8zazT
4AKnL6X4WxzVsODMTE423rmA7APlXPDomrL0KNvgfLkPpWYRL3aQlhuBq0ovWks3miW94q9TGjXy
Bho7ZOpXah7bxpWyK3r1Q6FBetwn908b2Qtcruw+PCnNukJ45jOSprW8G+HTK15BVGTh4PeRpyGp
KLKxyqdZRswWaB7xdLjQ0z1/Ra6k1OLuJyAuHLT0RZya799lxvuOJtmtfrzFYVouz5fne8BM02vP
M0YbVu75QTuvIT6joXuCkLiWtDhYKL/ToxK3lMB4WnF5/0rH4pDvH2TPoJMuw4XWWhHaUEjjH/bb
O+0F7tYgGWQNBX0WU0a0x9XcjVpYyg0Mq/tLLmaN3nWXvXk8TUmZFBCcqW+akxBHu+KJh8bqI5AF
rGVLlufJEkJsL20EKwC+W+ddJ4cxzfe58lkrfOMo3MDpRFkDXEhUdrEQE5AiCXJz+bBClc89Zfp1
z4VDp1X/eQba8RjXmMpqX+2rYHoX0XU9oYhEeuYmZK6lkruRaK7Kkr+MMJPCnZJwegUg63jgBmvV
bw3mRrGGKwp5TkYwgMf1QvwrYEcKVIc1hQZKXenedUGpWRfglKYmgA9F193yvj3Su05LEeVmr71v
pmeDO+tgf/50otXYefYb8eyI9Nz3KLZ0vXXl4xkhYRJ2yXlwwCHfzq/3nwOhQW7ACzVHAdBiCEX8
8YuYCaHCnjmOMQF8NtB/wUu7GraJQahlFoNmb2RAESCpZuTcdZF/WDpWgqqLp1EJcykoCzeBaV+T
zNDnZ+sh5X9KxaBwjby/bnMYwsgCULrnIUkPUq6xi2H5KAbjd5fk60x9N8nIy+uGk4uk8b7ReSa8
rI5AM95pBX/mhz3OmVsaoc1QLKSc2AGlA9toyF8DFLzTZk/FO9XZHmsWAzk1rA16nUcTwiwhokWU
N5qwq325x93h7BZGaazcWjN1a2dlr7jMgc9lJDwbNXSn5kZN91vyf5lBXkyFvdNm0NyuGNUDro0V
C2ilLQXbpKyS4pPTPAg4J6TzDFpNZZjEIp2bqGeDpDhsD8trRAfRvfnRKeLMKar9Q1Awq5HCuJ5j
NU7QjOalXUwTWMaR7mrAIWcI20yBDJvPIqMYrek4PJ8fSsy5uh9Zhu7sD+btCCD2X8K5nAOH0dRr
ZgHj+tOqsQzXvTRAd98/mcmu5WLid6IZUryt64zXMxAKvOYrqdlFJ1AwIHz98KSGvIyngprDwsUz
KZ/kvRSUhE6TWYttNyY8lB49LOXP8N7x+F3zZAR/SVikNpHOph9Vq7aPXVGTJSkNZM26Tc0COS0C
Utar07CI8JmT6dhs/02TeofB5SiujRBMxZno4U26r1RBGZ+1q91ZUP0Tbf/kG7sFfnTSiTtY2gQy
MEavN7Q8MR/eUIU6e+f8E6N5gB948T2YCXYcbLKO2/oRBytjtvwO+gJnovH5pkXrh7+ROHlR3J/E
uMn7piOPY2doNjGQAAJHSrlAhFyvuExf1nPACTJkHm00kKNJ0P1cznF5Jo4vQRZW21MwfnUneeYd
0S2pITUrxI+hoUKQoYw4if0B4No4+jK7obS4540vCR0iz3FqkcHnLtqAagSKvFZoRdEo6ZvO5Mzs
CzCSUjSAAxePmT4if2POO7Arw++yvf00kyuen4AQYRWhiJ6ucOL527TlvbO99Nh1Irh3VEUpVC0s
RcGasVZ8TqSo3yi3X9HZUIDYYM58XnApIkmKwD/mQgTC5Yo7pM+Gs7kw0P68Y//LAjVpRIyc4KE1
AQWmbAOGfpn5SUraowcPwPFRWkzzZyIa1PfQylvKN5j77hhFJs9GC4wBTcQyMm+k8JYx+S1yvJae
Y1hG6GT+mzrYEO7HYZHFv3z/YrJOZX2LU8aTCCf0/COHzG3BCHaK3cAIS/W2kxBTCTL3ryMd95lN
/6SPwo6D9ZwHnh9HRsf5qrUacJvOTgN9DcKPMIbG98CzxHam4ofsO5xauy3sLaHou2hmHlpjhAT7
jyg0kdrX2Ylhx9j5IWjJ2t0AbMAdmuNkr0zJP9COHn9JJq5EIK07jJPsfiiEGz2j3n/uD9cnLAav
ZgUUIq0F73dihNDg8+PJost75E/EohmB1Tis7RLcFdn12lIN7Dp+6U2zUIhxHjaFA1ZEDLxgPLW+
TYYjSm73y1ei99PJxU2NDGE+gwfiNVFjPo8PsmacNmW6icSidX4kI9eEcpe2z99yfaIiK+a/z9eA
dXTAVOL17WjRL+acAWPu4giCpo3VtJWd0bGjcU+QPBtXAd9bLNLFgjA96eNycR0zZkc1sO2X3DfW
nUWkgh5wTg1e8NtpBP9TB7PqMsVFvuvsoWb34kLRKgVOTekLn8DnR8BozQ9NFuybf9dDhdthXM+Y
SCHuL0Etdmm5iWh9Fedh8EL8HntrzwrqwV0d2SnYd5AmJQVz8TG8I0v+gJMVUObs6s7a57P+bxMs
GLDmubQclOQ8f3K664NIogg3k4o0GhLneUOZe1Eht+KO22K1/Ji5rud6YIW8hvJVMXhfv0FVZ0Ga
iSA3YYxbgrrj6HsQcRCtcwmJ/kBXYW9mmPVTs+nqGku5ftyYC9BBDyFtSH/HBpiGrzZE9AmIpeuP
vb6Av++/dtdiXO42yZIbhi7xaK9sYF+qLbg5m5Zb0bUp0Klik+xHZCDebIzMhn4CtpLYvHNtZwFc
v/+9f09SC6FQyF73kZHCDOARYpUuFb0MMk3f0tcVTf7yE2hpJyMai/Zhe7cWV2/uW1cdL66rGuu0
BE1XRu7TxnTVSocs1EpZfwOpqucTQSFgCxtPM1MbfS7KYZNBce86J1jzyIt7HJm8glGw+P8I5EDQ
FYZvnyuKnurYaGs6J40TnG5J52KRv+pOO+Ce8EkETZ4JxeJpQ3PmO8S340UDDCeGFywwzvC3jh7A
xKuGhRdBtlQL0aAwIQ8Y+1UP1n6vwH0udTbahuzEzPVPdPBfgEN6i+bDvv0i8cBh+tbA2xfGcCKS
w/Fh//oxkIkFY4JOrY2+EbEHW0lO/jdQUE5WmSDzI8vNRZIHe4UebqETL1PdeuqFfh8m/cZ59RwV
PmFJEL9I7WamlwF107tW7AYqbwf4V1nq7AW8WdC0mhMhu8bkVHFo4DGe5j+FtRf7nZMb1Lh8uSyA
JNS7MAubJMhRqtJNxTqLMuDCnxE5k5Qchmn/GAUy+afLldJtjSMQFMN205XZKTXWFBTpvQxfR4Yx
9PBExhAlSt54vEotjUgdgjUyK3Olz459zARQEhSBHgkHQN8Sk5z1taPMAq8UfDAoVkD6T9+MOJM7
fEBxSTv/dIhcZGEGNpA7Tu438/WL+oLQHrmSSzrUNsX5HCYxZyJky86neiP+65RmKUOtAZRZiW7v
y7NOwOlUrv6KVnkH6+T1kihFqvh95cUQg1bk5aijpaj9htD6Khr7znPyqt+aMGKJRgr3mveQ+rvN
doCh/yblJdIWtaWvujBqInfnIVV8AYXFFDc3cTqTdKUII3l+Zm4zXYsyXyQ2Hmdl650c/T9n4xnE
MnBxL6sm1PtjAl5bW1PVbIIC9H7BaxzIhlELgRCZSF52LmgiBE6uRdDH28DcjqdBVf9QuSjjmFLm
NYjg59RL4G7aqI4jUl3TH4t8iUbfV747oMLrlwr1DuVmTFxoQiRPWLhz2uqEGdIMw57P5eBoeqTI
grFvjUEYzmSPEL8XnKdXSWBnJqtt3IzmJOah2pf4bVqDuQVoskxZeXoaaxskmVGj2nmy7m/XiFPr
4zvX5KfSVdSu2tv1Fd5EAzlVq//gzcPsPoLlST630wP3LZ6kMhtpcmBK69JznyXiUKRp5kDfBGqO
MHvCepSeViSviPRnT6FDGRxjcKeqMzS0kL47KRsxe1YLGYiDTQRjT60eQ+QtttHtfCVOUpuMFfDz
/xI9NWFEYP8L4Ba4XN29EpU3p4V/7B7/biQcaVVX/T9tFMSMScXGVB7lr3E2/rRjbg4lwrtXbwOY
WIoIkIzRnisZ4kMTbo/s9FnOOid05awUw3kH8LQQ5RSqIzSHx5twNO/6N4RIIzY1UKRF058Lz3do
3SuapUjP/3JnfGH9DJHgKuThlJ+wPb0jwANa5pOqOC1ZFIeAzWQrcz8scZ8e0X87IfZNb7cH2glO
ITisNIW3Zu5q5qimQkB6LZObGWPRq1BaXtYpr/hnc1loY3PMSOCotqU+aT9YaKe8B04Ji+SGgS1l
DjUErhz8LiWySwodinK/f1nX7Rc6MK/SF37E1B7K0L7eeJTrqKw5bG0Lw4bMoj5n7hh15PSVEnYW
HtjkBAQshfGFyV+1caEcBsHUQqwNGtYqW+CgpqLaBKXxz+1s1etnwqnhk08AueS4mva5NGky8/eY
cjT+nnFT+YhlLnA/GMpErqZiLS5lWYRkle1iprtjEMKqeWzL4XfGLrzGeKfIZBoMTj5GsXBjhvM2
GtqQ1zTr6Y0gcKIKnNwwkZYV3bcpMOOtryBl6SUSUWZbJgRjV6Pso1KOGpRZ1XwhVeFpcI3ddUwG
0UvcnZv9GLTIcIqgdHPzZ18JIo9kd8OmNhuPnqJv182ktYxJLtBMWEVDqbu2wh0rpF/IV9jIWDy3
nrY7XAHjRQrgjy285WuxcQ2JBQTryxDPZvehRqhbZsaYCBopS3U+JtcjQ+QUsCakyXLz7fVXboIv
X7kdkzRyeVVnYv5tCzoBWP/MkbVGntPwYs9bYG3FnFiroPSdXp6M5j12D+ohEDAqqa1Rr8E1aPpR
sw66BFHvsxYP6syziwvDACCcSeLUwKkwuvD63oBgqnrxXkIdJ3vatuN4/ZKv8hIvt6sLg1xCDbqK
Uqk7PXEBTVLd+NO4Stqgh2y3NDxJtn2obE7QPUI0zCRFsJcDJzIZyBqV/H0K1oXkoLU+CMN0Zug4
moSKPqvelI1YcNYK+pUmI+pUJUnlEGkI9TCHTS7cIqTqnL/k+bg7p21pwwZuA8XKqgcp6LFRtCol
zymPMMx0mlqcUKkRnCRe7snPq5FQ+dvi4zJzyhhf2+3XDHjmDy51liCewtEnErvkB43nzpS58TFX
BpmzeenLZ2dU7KZqF5pc9CGbNT/GI0H2MeCizxIqkEMh5W7kN3dXq++xoWbDQHNpjF/2OcRAtO3/
mIhLVJ9ABssi6hvS19UfGw+q5lG2FRr5ZbBMwb6MHwozoX6/AvJf0v6PTYeZkJmY7I5PIiVIgI/1
ia0o8wrRGzCgDWZAFtKLPM3ASEeelOVVrAcF5lYmkmQ1hxsWEhxanqDg8RBsiJYq9aKNTCFGa4bB
x4WMUPWmQuc99isq+puVET4Ekuuzq/XQ/4kg256OlMcPyldAjzfKm7jnjCnKzgYdLRCJUfE0mGQq
Sy72Q+qPH8DUo4m/WXVJY4F3TISTG5imDhrg/4LeaNcz9QlxnONE5KX0fBLca+CGCYiEjI2m2age
dzs+4JEPNZUSb9u88iQ2DfW2XZsBA/9hccB2x9FSs9prmOhmrtWrA7Ynr3wyYdnIipKtrhonC6uS
yGF/cAt6PCv3kg4ZCbvuMEXXqNBDEcmA/wg557l4+LssOXHINaC3NMX9pWfOsXTJ5GWGQTMdsb/8
n/xG8pff84VjPT2HYm9Vmwa/hKX+bafxEJPUnbtz/V1ompL340iy2ZthlZgj4XZtxmjSN0K6JYEc
YXwz7yTqiVfQQ/Vh2vCf3UX7dB9Ny49wzfU966r36Ze3Y8PCPnPiVgYMDXPfrsrOjz+ODVn+XqEW
W1Z0LrA0JGK01cpCS+7qiGhj0wlMzSGhIsN+0vOEdvHOysN2QOloY7QxvgkLjQcHZL/qoObwcgXA
ftZOu0baGL9QXtRkO9KA3RLLpN01at41RjVCuGhvdYXdOVV9JYN3kqCUHCsbhYS5/peISeCV1MQm
Zsvjfnh0DSBkh9GIRteSWag572Ray83gx/4igsB7EJoTX+E+Bn6grQVHdM/uz2GnqIB5Ia/lxI2w
Vt5h0TmtGgFLI5uIwajrY8v1UZEhZAwUdP4oraXWdk64Bv2PmiFDArNvhv/9uWCq3MUi5eEcQ53L
LE+QqPv/2JmUzsAXXU74b9sMyJDZXzUvoyow9VEwAfxHId3t6e7iuX4sNo6vvgLrL69o5NyQ3SMi
0Xqna17hDoW66EVeqLbvwjjupSlpYTppMdw8Lp1N2gqd19TQtDYWUcn/M6bh6gkRoHoz1IorAxAT
EszVJ5703LcLt6EmkkBgcXOy3qE4Cqrtccx03ky0GQMzjR5uwiKa19sJfLoDg74BMU0X4xmitsbX
aBERrAdcLtx960hPUwKHynYWrJwOzAhNUfQzJwUdTI+s4GS6Bs8iY9a0xWFRooewc3R9EQkLP2LG
KAxHLaShPISJj/eFl27yFlcSg0EjTW8ya3I89HzWWGntuh//9cJDJrvrnBAgEnTyTYYfVykhKuZ7
lRry0oXSh/gc2cUdUeWZDP68dgId2K1ZsRh6LOXq4XBkjb7sVjoCHcIrY4YqGb5WeBHnez9tvCAj
zfRUAC51OpfD9j5lcdkvjhI7UmA2mVAan4JowTbqT62YD9tWpl/qnh8kAJHkVRU3Uzh8yIu8IzRm
UqApCdW0CrqhXw7OuLngxC+2sYF0304o/lome5k/kttWXHHY9mokH83xPJOsLCuomQbOVLR5rWwZ
CdKezTw9W0oZdVMulclneSKjYJQ5O5NuGQRqH4X7XF3caadk23JynfOF0PwYQFYnplllENWVd4RY
n4Km8yfN2RSRhHXOEWLuYUrht5TPio3mnFV5g+KYxOPuoW0qQ/Eu0476C6LtJhvfo1QrFsTlpiYF
CBLt316No9miEIL3o2TVzhUo6lwcX8JcO7DFYfXzrRG0zOGcUTHkl464UrLod0Mnq2hSPsvz0iCb
0Ti+qI569ofCYjc0e8OpeEsvXVAryBdq+LPLFAuCqnjZrzkmhNXlydEXbNXCtAs3c9lrKmlEUSzh
p/DhfirjRlRB0fmHlBVUfZUfAKM0uLEamzpFBiYLmzmTrN6YiuWk5ufNFHVKg9Ze344mxgTpt5rk
/VQj9frkpzU8Uy10vlWOdUmuIzUB9tqnRbFZheGWr5mM+pDU0DZgWy89iJVugDRf5Wj4xMrr+TNs
zScJTgX732Ga3Up9kD3eex/emj8I+RTSzH5XrzSVZ6RP3wzyusB4CVUc3UO7Kq13MwM/R3P0LvNw
nXJBotY8v7Y6cpKRRm2kxwt3QUAmTQRsuHbcwcRevlWptS60v2bhW/ZdbHC51LLdRdD9PBO9wKBJ
V+2ggeTXRu0YcEbQf0AH6I81LDyuO7qEJ2TCjhNzNbvMvX9hb02XomVkDw/4pgUx/uEQYziI7/TW
HHh/NGmvPMJqHTE81y0NwUGsqYSel05/gjWzw1uvjC5EIBBtsimM3CXXkiJrfnw3GF2TfIz5mxuc
wJ7tiLc8vUbv3pti933cTsH8T6eGkSyCrDoDsnxyHM2iUdO/FBfvxPJaM3WdcVlNc1rTGwfqFSba
IZQtnV/F2wX0scJb+3qPUjVoQAdnKVMVyUtct3hq6UHkuqy63fWRYigs0jmJn4L231uGi92oF8fT
eB2zrzNOQYt6uZITdvtxTzfLOySGmWsSAMJBCqnBfG/eNlqs+UK0w/fn5Jqzj50Z6hgo/yIaY/xF
qjHtSrlItqxCVfB/bUQpJp/ZOjvNDzAB4FMF4eHOlaArZo0xNLXSJoytE/thus0YmQSavjq2SAsU
NelnfB4Lyo+VckuGsEMw89wDi2Ni3thGMa1iMiXbIfvrHp38NX3PGHgUqXWY8nPH12/M6ardRAmF
pRjZGDtquITIdv9CMJn069dthkCpBt4Di4my0ZadouEuxlHKimDH93RmKa6CSVqZvRT++QwDTE0m
Hdq10T8or3DCzX68k7TTZjPvmwqoS3XHJ6AtIvDasqNkShV8rlbODh98dSCTSssNJQ+TjIMGdUZY
BmNQXaKuF4MnoUsGwvQLlxB/ZPxveTjzNDF3HIgxEapXA9YSqqE5U7q6TtVLeqbZvzU6x1IqgjxS
Ez9OZZPcGlMcbBCJf3vYfCabk2amMbxcE07/Ed1CdCH3As3k/ZlPf/LdA5FL50by3zh6ZUzSd72G
sVGfMGNtoJ+eIAAd0DZzv8d1I79/1yF2tce0Z/1vlwLgtMXIuEHQ9JW7vj7ISS9ZxHC+pUMz3LLf
wxUuipP9P+godE+Ng13P8XCHRVlilNZEGU/KaduX7LRSqvbDZBFktO1Tbc8jBB5Z9hT4f8fk9E22
hZjm/6MOfO1RN0hFxxOgjluq/Uel4Uyjq8j7bBtn8A30Gsggv4051iKi2MNVXKHkxjKVikZQW9fy
KbrIcGldjg1YN5UATzkrg1kZ6x+WjfZHVsmpH7hV9JtGXWr62OKWDt6p1NFD0RkOk1bAlw3KMEw4
p4GfmJtFIpKupUAKb7xkHQStTVdB6IBQz3f5WrjmKwgO93QioYI9+/l9B2lffVwVGL0Ot9amnD35
O1dLr/vQZjcagxgJxI+1rQQ0McMYIfjgCo+iiYlK/YRgA5Svhd+J0cNa7cuvDMBISnveEzgRcQyd
xMIaHLDDiS6vcEaRYCTSE3eUa9abkuRMzaJGdtAb+yt3AK8bD5RYe3A/LvMbtRxOIw5lqPqM38jP
HWIBJOSjiuGT4AQEndCID0laqOipANedwU4lcs6AMQ6ISFXlhCOuDZTNrbmhNTCsXaLLoUF7Ffs5
qGCdC3k6H2Wt4sDdGpl43ZdJ3uEOtsP/l1KkhDes24zbTGgghMdnaTzKCz5/6cJ7kyT+soHAPgM+
518Eh9l89uhIuYnf69NpcPdLgC8bjdGh/3vQlIVIPnjQUrFPrn9/G+0r42OWhu1ZjI+dfHQuwJjg
mJ2o4OMLz4OJl/HHDHtlPFEHt71LE/WLfWcEhXt8uSkkNRGH6ZIJ+HJ+wWkH+0blLVQ7SWgkR9Ez
Y4QnXCZ9+3istLF/ZLRf2bc+cafXXlHQaZkOrlhiMUXk1l1s6U8uihwd8SSwIo4oNc3H6Y2p2kp/
ATgyTboawG00YYk46MaDEihYEMcSwb30/gTZelWUCCRvx7iVuQsSe6Y+xVSM0uDHQaGo7iOy3eiR
fOvEIJu4pBq++YALeOSLZsF9l9zXT2To+AEIoB2C1SBwp5xc6dPiD9BBoRP88BtX8FR7Vy3EKh+G
19JTK+kShkB/dMmZmD/++UyRdI4CsGO1F5mPfDe00yIDwqp77a7aN12UVCfisOmrU12d7dPswywJ
3KYQvBW+R7rFOkBljpVMNgxuGtWq3GAXdKUEVJTNQ0ZXGFhFS10mxS1wkRl5UvvWdqa1HPtz9b6o
wyu+smzhN/+qVtXWwir1AwWXCKT/RlBg55+zU1u10acNiORmyXxgsMWvSoiCF6mpkv0TgAQ2hKf9
NrWGr6g79yArWidVvs58/ebz8AZqL8AIZGd/AYNIfaG90L3T1OLduVYiwGg7iptoiG1zx2Tf7yU3
mviUCOvpvHXLQf1IsalnCBMydqZEqJOy4tw99cirw4bVQyf4La50UB4XQWwJ2ORSwT+PYMXYEcKu
3Bh9fTci/xsq51Oxdrz2ShMEZRDNIOJ2Eaxqo+Qd3nNt3/kVNNU4Vsn6bxqkULbd+EINDd2HOKGC
CsaKhZswwBx465oiY/u32i8MV+gIQN6/RsBIpCatYIekSmy/zXBcpdTpUNihh7kYwqwaqbXzsdWQ
MIWoCuXhJlerf5p8D8QDigN610qMlNblOinqvrBYzcAVPyaPF1OUQRqjOIfstYJKMYxH84XwBCJb
tQnHcoRKBsNsgPtTCOtYWlFqb+MU9QzyhdpqtFmoBgPjctJSKllQPoVivvVwj5VQdDSZuBfamTAK
mdsQWRFk1MqRR5J7K9NZY+820IM8RCh6yYcw0LxuiCc28RRWnV710Z7Ix8oy6qRWHz6b0SeWPScg
7Osw7guPvkAVRu483AO7JekbyOhQNqFHh+qj/cZer9smNXjTfIIJWsI/WYK4rCZiC6dmFXIMbd+b
2O49uf7KuHzt8rx5MxJ5ZW39yLfTbqtUe64W/9CE5m3boeZiVKxDZ6/03rIdKDUK2n4vMU68xr6e
WiSl0x1Du+Q6cVK0E8NDaRoaobSv4Lqc98OG0ovcce5W4qTipy7XK0v13hBa6Gtt65+mkt5o5CMS
i7J2QIbAdt9sgFmadRNEjKx+cm53LfY3ToBDfITQo2Wek1cu8IR5oAcZT9krqgWAjuV/BEOBnwQd
zdhZ7fKVjVBRdOz5cQku6HkTcoF3ubDK/IbtmfPgrCNFCEHufoewH4WFVFKeFO6OjKw6tLASTbbP
qerXuqnHV9ou1h+5F6mTdpucdQ6FIxTluJuKm31QvT/bhifj56VVVuUtiMkUhXPvmaLSModLyxeA
Syewucta9IqtncXakOLxLsA9f8bO1TjY3wlyhqWSRupuRj2pI4kV2wJFCuscIBc5I0vE6Gqj69gI
39ej06YWrsiD/z+OPHsVH+x2KrXLfn1MoSoINLbBYC84AcY2WLKRcT9ksYjYPoOIYj/D5/7UZmyC
Zl6rCn3PD87GpgcjKrt/ocfinjtuBNyEQ7qI2dNcvv2r1qz9fSGUnRuYLIGQ6qNCiGKBcyVA9HYo
sSL8/vX16USL3VuS6m2EUYzgXcBw0i5PGjLptkYmdS55x8li8hZVWgS8ACVrOqQL/P7CWcFX2hNN
ThX2FM19P3QqYHSW0FsM3K7vlC494fWBd8DMsPv1rae97tYdqpJInJFCcVIrB/GmyYawvQmgKBf0
RHwzNIq1kqhsvmJcsoBiX+Bx7+/EgoFU0AINDquT3vZMg7GtG6X60i+lVK08TsrdgkjWfcbpUaXQ
oa7dUY3t6+1wADlYUe5DGolWJIiUyKei1N7wqDzk5IswoyiD6DKEavDypkAU9FaaD3Us6iLwJyFm
t/ykCt9cwoTG1BrK032kKbrrSeioOxxtlcgKcq5j63WmYuSz05pGk4mthkVAg6EOFKEtZl/qbsED
RJzE+4UhrjDQOgTiHgi2N7xybUajTpH/6M8BpHbYXtDg20POXHLIc9ds98HntlJLbY3ye9lYIczK
BqSO6ojHTZA9Q4mY0cL/SP8cjM0r7b2PJ6Kwqclyb7fE26/4dy0h4u33WmKd8JxNjtGLvLEBwWH8
qRT0RQ0KNXkrGxTR0zm/yCUT5JeKkmmqn5Py9fIFskaMkR71dOZfy3BPVB+jStXXNtUyy2srCGso
mgzEujwAE40VrbXfWl+RNftM8ErInRgeaEnhe6znMcjIN4COrNsObCraNWP/zOO3gmMjBUgG0rfU
231gMbIOVALmgl+1oLxo1pbHkQ8BQPaN2wdp5KXEchfu0aTnjuV5As9PgU+5xLyegU4b559UWUlO
3VZFsByUdSzccdHEa3HF0eNEDJELys/qnSKf4HgkuGCjz7pVGn2BFEYVngPC7kg4lVQaJCRtDv5k
EYBQcC3UAlP7qSRjvsDaOurBQG0gA16lIQy/2qu1v9dTlpsQLcNneCs9axKLD82vsAs6v/JPmtmF
cPnNc/kx9KEsRmYHn7dZ3jcoq+QccwmKgXAuHGQ33IL9fJwWx3E2W4iYaS7WkcJ7jjpzuU5Ut1qk
s4q72Y5ENqIQEth/kOd3Fqu8UB2KpQuMlyKe1FkbzegBKakF5CqEBY993LEabcVT6S7HUu3ZGd6n
7vP67KrcIfH14JRNZ0+rYKSmq2F6LCoI8r6gdcUzAplYNbl5DaweRLXd72WUXwYIR9iAUzkbiT4y
lG5ZOFMPsHjUpmqrp9sBCxlaerI4MIZANjuQ6siGfLvkgzv7qGsr245FWX3fFAS38M79/2RA1+YZ
unETsEaI8GI6DZlmPl1rGlMK9Q3ErBk5yzqp/yLOreA9rKR8Jr6G2IkObXFbpkJ405ze0xtSkppA
wXekb4eqe5kb4N++ONZwN70ZM8pcDZ2MlWTe/diD/DGtJONvX6tYLXJu3EzO1VW0RWIahPeRbo1b
+qEdmSt2F44fIvnv6rx6qLm+r9j5QDQJLfbm0W8tuYuI5G3HA8a+SGmM6b2h1B+PeJ3XlNBqioqE
oZEZWtU++dPhSXfsfIIVZjmUkP0OymLkFUsaZhSmZH9bxgsyfK6f5oVrMXew1s5fUUdXfPtbzUVw
iBY4r3OZWX9f+BSkqsYDZudJUMXj5wdaeuI9Eni+uQdCEnBWUukJLZGftBhLCEV7C54MMYtSnMEr
5VQOrTOMNTjPzReF8eHYlO5sV/3ixNrHM27ila1R1QdDYNV2Ohu3HgN+PjkVCyp2fltBR07kbXr1
RNIHtUgVRvlfVIKiHnYirR+Ms6Z+jG1Zg49rcvNRq+TpwCC7bH1Ue4EUbY4AIVtyDu2urNQyvbKk
0mQm3APNFWWSSNOvKcBKaLOUsuFXyLLSF7s0h1UDPhUhYMNZfQ293auCL/Y7KFfSQnJAjxbCp9x9
ZFk5pdeyv1RDXJVswkW2Peqomi2QJ7Hu1vc3ttNpLiMqT4WFYb+XRYkVxQM306eVwAFLehVz+gLW
njzyIRV46mHKLde81PNSASIYFzywG3tLxpHeL/oydLZyJyQvMGqF7oEB2hHtlRFki3mFrq7uIHpa
58raEWTfxZkkuZBmuzJxMtiVaWgm2FhWeAFYk2o8guqkNNlo1Yat+jCxvyGTCLe7TBJR8aaTGuFp
L5W7Tr8qcn4/ZdrLoW+p9MLK8T5b4DHTI3qxZGlcmFzWhk1PAvCDcMTwuQ4hn/P+IDD1CQh7K99O
YmNJ4Jy3FYbGRyPGB800PbuCr1+ceBkgfACfOBFnd7c64qqb9iIOn0UQV3jon4cxaMd0YOTgJ5vQ
nssCP8CSrs+Rm3LhJWqWh2M6tkVmvyDAxyZ3bm3PRmsvL2qcZ8f1NyT3ehIOuJeqjBWq7HxfU+BG
H0H7gMxAoYaWs0ybW7WOK3hunhUGggLnZWWHFP7q+QY/m2I23DmRV7v7fDFyxP40atJe4IpGX12T
fe1siIk5iuw6abalwWNYsCtSSeiWjBlbBBuVaKy2p5xVF5M5g9IRP1F/w2eqNX6uYNR43YhLghiB
iO7gEwsPANV/4BGGXDdJ1pjC4/BohsVeVcHFCW8Ph8tBtiZvLMjoJbx5o+s7apxrL2FpuN2foaCy
urg2LPppypehydPaMlfoiDfy9T7RNCtgZ28Rva76zCCKy/jYDx7jkqKpJD0rvIF0pkg45TW1is4C
cMudRItIJF4TQlKMdpifNvZn8qeV4WAg9AiPeI7KKi5M1VsMokukxx2PRZlf8szCY8znLtYj8UNR
XXw30do67Ky6AKT/NhoUVEsxdL02Nl4WldYZ+X+0KFsvSXDrrhk+OrjXkUlcKQTPDVs584RPpjtY
xqAvD6E/eqkvMzlDE9GfJTqiJ3FOC8Y1Gtk2Cw0ck0HqqHDmyrTlq+0X/+ZBL1Z5shoYX3u4S2de
20UsvOXS1NO/BszSw8YfkFdtQ/RXPuQC9IaC5pReh32ISSjCPIQSvFMrgTnJHGZcZ3bMOkchiy2m
5bdkKt6keFTh//1WPqxpw0we4wH8ZnciS2E56D0jxou9ZQ/1EJx3g0RKX2ebq9HX4EF7CgcQDQov
zIqSIL1S/meajtIJ6dXfh5VI/66nV6Gxpc8Dj6ke/LQ/lN4X1YFdRoqqHeu+MJ5y3o18KjxDD/9+
kPKM4OcL5IOf7cHeneIHKlSk2NrQfEhE+szjRBaR8S0X/cjlTEhXcknIqu01iuX7V4GXvz+0su3f
P0/6LqzL0ASQbWHmC10CngFzF3bpueNxtw7KQmX3t6xdoeYEzzGI9hv5aKGP6zoZ6tUZg6XAUWsm
IXqTTKPy6r+AJkHFynsmkAUM3ntufgl90SrViZuqO+6QyRVlSZaCPxvro5cjllb51uNZKEHNzTNa
rQ8vwMhOdaTa2VtrJcz6bkCnmGw9y4KDLQTY1SwOWD2UIYKwifPG3lA61AmwwjtJQbqO2YL97SUw
xfpvEtt3JtwldxMHGDu8lR2MOpqRlEiqm7BKPAM7zJ9tj9egfmwRk8NE4pq9mqCUSdIyN5C9Vo84
xTj000qH1FYf053kK/a4yzQLQ7PnX2gdhvlHOAQsCjkE+GVg1jxC32fkqSOYqOjA4A7nm6tBjjwy
hd0R5Ru+qyNwlCo2SIDKXlnq/fDLlwdpC1jkao0CZIMRCEkBQEYBEnrqbKVsUwiPzyHxex0B6/su
Gjj041P6J8QCWav35WrN7t9gFUjjK+Ro9falU5mfj/v/SVJrex+S0mvXSS3K3544ZAZzBFLFJmMK
xCALmJ2F7oN7eqP8FaHhhfM1mn2Ys5I+072KGoKj1m6cWfb4GNZG6Zr5t+HkU9DavWj92y7LISo1
w/Euom8bYYkkOwUEochYSqEzAUQkSC0CTM5PcmKuXvqg9QW0FH5fNP8U7aMBhYNFyv6JG5NB1jBN
nhuV9QutjSumExrf1ssfNY8kPcoBa0lONNXiTRmLoTrSn47TJrsDpGZDgDaRhW6O6HfSJMbe6uT9
k/RMN4WwhANDVXsQjOxIa4KAVW21ZQ6dgncVTvPVScE0ypK6pM1+dPpFRbltb72EUos5Fun+rjBQ
qcKIpyigtKrBb3Qgb4cK/SHjyrxxTwV80v8JRLo/UoAiPEOxk7blXS5SWnE+FIDTfIvsDHMT94Wh
cdxEUqWGyfSBljVWF6RdCUdhm6agxgaPlwnGgoQdChubal45JEwJLjVhfzA+vsISNKnqN1B7NxwZ
O22r5wYjx54zJmsedm+MtZOt3t0uxZD4urbnPgqW8f18LLkCncvl3CPY05TmIefdS604JHaCEa91
SpNBfEqWxBiqfJlUejccrATezOfDFCy1iO2v+jth1Yzfh07Xk1Kpr7R+KtiLHWaomMHPkrvmglXT
xs3mQkWq1LS5xOBYDCRjmhgsTZtp69f1dHUamcengII3cOuCst28D6Nzx5//p9KCdpSOkqQM/ARa
jHXXp67sVvvIQ1UOrjgvhaxxD8i1fNZ/HAZk9S6z8QAHFbtFIQ7hOoR3FnrZ8ph3k+FsmCkJ4oT6
fOxJXh6qG4pmjBCynvUVU27aYkbx3a4F4CfGNJ5kdylEhaJod+jaaH0DblFQXDiCOSESrKVSt0CH
WJgNjH8sBhty+V/hPcljqBcM8UndkNXlNiQiNorJWTA30B7UYVpC2NpClmSHFcunWy3dixG/67NS
rHFq16Qw3o+5gg88UHMDo6Q0/E2XE/9mpTACSEaQraUL/Bvnmy3eKMXmB50okPwxkpr8XO/jvKrI
5qGeGQPxn2qZAje0DwcXeFUS0v2jMVHL/Zzc3hVQQcptK21iwy+TkMpd1FeErpQY+7Z35ijc5Xfr
vPrHZG6PY0Lf5V+Yv+0EmIbEWBS2T+a0j0yV59Cl7b2kKBc4mCeHqNARS2uMLvS+OwfLCU7dfyku
hyc4DauHuQYLef760fymGp1aeDG1UIIU+v1bIRlB1qS0gtTr7XGP/0kmCTpPIN6AvvweoR1eas5c
0WpNZvWGChmLVJ+5pKzwShjGzmuNKEqLBDwnT3mSalhVpJfAXoEgO/GXWmz39lQPau50sAnf4cQ2
ckpmX4GUts45g7iSRsa87vYn222/00Feur3mix5ZiYpZRbyf0TOzWJfdNd3RpfLOo/vCklBAXmET
uNRlh9KRb1EV64bD2nQyjhmE2dupo7LTqz9JWPsgTNJFn0/7G5nVN7dRyjab0vyBeaOqvIYNOsEH
RuZCnWMQkPmQiROeEOtICFw9fDaWcls9wzJU3l1Fo/WIfokFeBlCHew11rSM/QgAT/NxYtNhEtvV
JI3bcqYN2tCBuZHv+AhQ0h0F7SFHCV4NqhwCbZcRviNWRKvJZLgIuZm9SaX9wsN+m0on68X3b+tQ
v+Df0QLHFhkYQvG7ii//bXv6E6bh7vrGX4H47+lg4A7zyaBBStojiz0jic1VpVhtw48PRHP4O2MB
uXZTj7P+yH7dKSy/hD4WA9qr05IqBlhsidRTw7H2sTtueE+w0ruKr0SIgZcCWQqPzfpwhz7v/khD
NR8ILil+bfYoja93LFp62CBIvCdKFBE+ywOviif68yqKUgtwIoY+xLB86u2LE0qczTvgnB9OPOb5
95LXlPCyxJLXzvMtaKsVA5dFtAC+4FQdNHlV4gtvQWyNhGHb4CqS4P7sJxuvDWRWYBh58mQzRppd
eCTVYFRsxGpmYoDE8BkvnotV8PsbLtvr/7DUAC0TXPQJfoDsapT4sxSNOk64NHxIJzPsfSJkZzM0
lbbcsTyn5b0dbDd6mKaSQ2mopsec7sAeC3lasMH2i/JB+6+LsdCzSdE2D75KXzvCOdB0sGdQxtZd
9bG4Jk/5mvpQb03sIMyGwTwuK8aJSAOTzJeRdUsMuQZy+qWd+IuroCJgZL7Ne5epqsGD9VA5BY2f
gk0h4I7CceubjhOgBy5xcXGpmGR3AvhzeajnTllNkrFk6kb31IFpv/0MfunFDxrihvFiiONtLCA6
3aqM1So3zAHaO5XM5s1/e1Fvq3cH15YYshRXEGioFFm9UFMu7Yrcb51Jr7eXcl6PME3w/65dzcVz
U/4zp7VI2KInX1f0/NrvL0nMCgpZP8rt2GwmQ8GUa0gVeLZG+XgJOl21LXBf3CgFdemQadahj2gW
OiFRUvqyrx63rLM++Wb4y82UrR11Q+P5OehQfs9SmTCocdq2LKulfmxwISVKpUN+Yd0QgOqA3kLu
hJgCgj81sOpk2dnXl1oRy5CJwW5cuyKMSU++seFRyzdcnt7m2XcpOBbQmPhlBlahl/8UCpjmIGD0
fpUkSdVkoO8K+KWn0/A6hYagP077f5evNy2X022lEKhjkAKXw48ierTRvyWCTp9h/pD6J/CM+zyF
7HBLJyUkZ0UvtMlHXwOxdCo+O3OpkijU7KCIjaP/prVFSoRqzT1HFDlXxvBncHMRPKakyrHWae29
/+fAF6coWZ4ck1dg1FL9cLczHn49lbnNbvXs+lG+nwUkdusdllskMJiv8WklvC6g9dhE/NopQ9Ud
RAcOwObY9sAgZ81Whn0+EEAy8kCJAX9v8Qd8trjJLdDJeqZTK6ztwmgFxsFXtYl+bwC+nT/cey5N
mqgVFaykoaS2XV/oBWVfz1a03iuw+PBF3142G8XhqK5NMMxxAL0rdVy7f46d6NI3FqFj2ibWPrOI
o9XtwKa9BB0d+JTuUbyCcAOsXvLbV2Yjzbu/Ywdl4rFxH8hXpr4hoe5kQLNw6DLzy7HjlBlhkcjp
cnyU4vLQ9lcQsLM9495lJOLCnfeGu/wkFWXgVnD2uX0TGwMPK6MnVmE3uJj9UiBHgheJgwcjujU6
p4pwN5ezkg0Eowp93HAHDB4b9mdur850aHnAGl35cemWNIH0B9EQPg9Oz3LJHF8vHPnUz1m/bvyy
L48vKgM0iY+XCoHAaSoaXdQald5GizJpBJc3C2qw0UYopX03WyQfV67y7FdqVVPgqu7Ywy9tc7P2
d9eWXXKKXyhZftwXic9BJTQzmqUZ7uMNAGEpp897X3Q6bRPb8iERlL5qF6nOw8fCHBGuc/cVdC5l
Cni5hV/cr3GToYr8I+frPXJKCoZTaBb98yu/82Euco9GALI2p9PP4HRUzPoouoScDfon5cP9XBJW
IyBTn3y1wpgvZRa9PEdhJzhAeXnhHxAIa3nyvgJJHaImCULFzP8NqQR6wTR6F6x3ofpVgq6juwlG
vRF0ku6OM8VNnG+JrTTkXVP+Wnp+YJ/DZJMjtJyZPoBB9DsPCYjVTBiLfGt9255kzb6S1gN6a8Hm
nAjWh9/ttl9B5SWWUOhT2UZiU61V1OySQvw1Tgm2+R8dP6pEDoqpfhwcpVYz44x5uX14NLDSsRXj
mqjYW15U/j8A4O6hLek5UOMRVkZ0/MLXDKIFkbYkOO++b42gLE0UzYbaSP5ODQcScy1CW8THTnKs
ZEYcFKU6lyz75USon5kKrYLvuiVjJ5sSljy/1POagdwnQngAgaEGR6yPrXqXcHlxk1S26FY2m+Uo
3XyrtuqG1iU5R1iCG2V086/koNfK/XhIXPFeUv2o+WYjfJO8FWaShkyjn8Y6DdIR9P98fAd+kEmE
RMn96gZ9kWFsI6T5H5iHzXDh28sNeDum0IRS2t/ahGoGzuDlXSuHnY4dQ0CLm7HIypf6a+RgaPR3
4uuk+WZpMcRfdW2tjbF+/zryeL1e1zpi89ldJWyyXh08oGPgUttCWF/QZO6sQeeHrK0Y3IfsKMlh
X59tEds85Upq3GZEmN0RK57LJesfma3Ljkni/mRdIxar5HALLfrd5neQkGV4tYUNWP9U7HUeRRqJ
CsFGTci1LEhdGwr69H7+JFreqP3qiuIh6CyiqB5bc7rXTP9swvqFHsURwYylePbyt6JPyV7YiD1y
vJWo4RwnFAl9G9JPJohn/Em6r+q9qMekWdnsaV6QY8spWSRC4q/dOl5G6/+95BUQPgxcTdnwWZUN
D9gbx63YRhcuOTAKUBLxzbdOZbb3QsvOPA8/N/fqhdHC+Eh9QqNFX/WYkwGLfnjp1ORtyjMYI0wE
uQfYFXvLGH8uGJpFA13kOgcfcpIT+WKwCKg9cKmqfBKHoVfM+OWNrdZEYCOJD3SmdlYn/an9zerE
ghCGvgI432Hwa648qb47TBkbh5W4Wp0V0LttZBJjVjT0TyMBIw4bGqoJW9uyKsAe3GHfkBYicj/L
whbwFhzGWcT3fX3QGsM1mSXAYipivLJOs4E3vsNvf4nc9S0nOETvb9bbspsL2FSumzz6ClxflJi0
uPHNRscjOiXfZQ/dqSKe4Ygt2Dc9wz+Hw0VNhdBpWp8BLjoBxD0l0yevRwQm0uVeeEg43am6sEtC
klmuTSLD3RVQ3pyn6z1+6hjLyS1fTL4VDMug2hZsOjLNCdkavOdQc+D6tDWrt2sfVsaprPt3W0Qa
T8Lzr99HqNOCwVg1zT+06GUYu9dwr5ylQnM53PQrdPT8YhKl82SSLbjqsmSvnbzpgfZCGHL+wiQS
pgWqDMWx1MMWBgsEI5c8C/cj20js6Ko9VGKm5K7PjXw6YnPcLpgNL/OBQFcuKMkJcfzGXLlSc1ig
0GAvxsxdMBpvHF7UdpejPX4HhHz0HhOgL7k7qnz27P+HzDEZaBZQVC2ONt0AY3KwIu3Epj6RTTtw
cNozfgaPq+NEPy1ZxPe4kMXyvTzeUmdpWQIpisCnK+N9J6eDI0Q8UTBdkbimVRAcw1fsCLtjq5i+
kcCEZoMcUa0hNenH5jOzfqak1T4jEn0Q8oAVL9OUDNwRN2joVK09aWvhvrq/a2iRDhaWXZTI2IeP
NAQ/o4yBrXTa2y8XfxM9BluvP7rhGCgFM7SFSxAz/vIkyqtYGt3OTurylHCzffxygmuBBj3SL2mP
/o1997XeSzkn5+0uT+YelYg3e5FfI3sR9puj5l5fMOTQARq+vDMNbuJAMu2Hs0Q3toqwWuHSvsII
YDmqQXo2t4Dabuw8lxpJTqKOdUewJHcw5CSXtgEHHWxf6OiJDRCUvy22M2C1qvMXYQqJRvZWYOIG
Ur0ePy2DkpI37e4gvzJtpRdKWrbfsBx9ZKJLypuVaxc3RF2lhQVdtb4axlM4jaGMTL9b5X59vnH/
geS6mEP/m3lycY3cnfgqRmhvFIYoVRH9Td3c4bCUyMkLw1peqR8A32hS+phMSvT7XWgGlia/ScL6
8MMtj1cPRQs2MID4XkIM5wXrQ+WbQGGVZCHc7f4u7X5mv1xFj3z656zblbwQTcajWVGLG7Fw9KHK
yC5SO+RUMAije5Hkl9Cxitbk13vCGXyI0jFYsid6nFKRyeG+8z1EUjtf7lGFbe6wd3deTyez0U2y
plpnkRPAUoslTnCE3l8oRIf0iJBquYbmxz+EX9MPpPMgR6TwXw/Mlps0RadWYEZa1GEvZ4XnWavi
w2vx9J6FrYoMOf6e9dFpZwTGn8pk+7yeKDGUkynKDmxHv+8CYiK0kQcc8b/5O+IqUb2lX11jROBG
Gn3cb846F7xZuc6u0PcgRneEUmJEDnpBEv3WP1K2qHbO5oyVp0TLylbtSZH4Q3u/I3LxcSo0LJYI
NvqaF5QxWEJIQXGMhsbzWqELs2qvq5PFk0ttcOu+OoGWIYD0cb5L7m+CB0xhaLzrDpIBK1Men7XP
FZpPudIc9tBVQgVBhqiGEexYBEFk0dVpHKhL1cau1fhTdM2lHQSXm7XwGrF0308xXfHCdBkxmIAP
us9GCwsygUpYzyZqiIF/XUr+tVdO97pD3jhf0CQfgdnm59CBTNWI2aBx6xrDf7oBWIi6HLGz1rqd
/fG1QYbQrvDcRDMm0iKQSMH5Xr3SmYfTNwzTplgxJXsg6r6ZOYQunOlBG/39rcjFF0vB5sVlepg7
MaWauQhizohWsefFQbAaUHkfMKOlF8hKsWOKCg0n0PlxZhIzd6JxURHcxvdBJ1QEaXmuTa7nAhdM
mWquseb20b+XOigtn9n94iXRbCGC07M5iODvmSbI4mC/aiD7GDB0CklqNTewZgJEPT6oVcWpsZym
ZJMNEY8qIl+rSCozWf/ZIQm5fALdExaycM0UW/8VCsr/ZJYeZChpJeS1nQW2KwP339juTe6SnGAh
HcvOHaHGrOMpLg40c8uNUGqvfXXdpAIPDmROkkjjfzkikRRwYdfLH+8wYHEvrBC6r8Ka3rw4ye22
2GjfH5ImgfAPof2AbvGCC1G6Kg1qSzcV1dOSsHSW3Hmgqf4FjiFxXRkgNOg0g6CfrSSuov2pDlfS
3TyoMInX0/F1YLXKq/T+zWJ7Y0d+CJDGDyF7E/sDHhXzKmdbe64Gzjphd+Y1sVkE/iuw/n3gI2kd
iHjIXjaB3noe5fSBiHo3y5ho+u8NspozRSXrdf/tCCrXfjbOiYk6EXn4MY3JHvYDR3Rak9tuwKmV
4OAGkJKJu6ndbcnx+AG7Y+CchvcNRX0xLhZvPX/5s3uFjFxEuTBozWtQ+oEwEmbZwXwJNgYlXoRH
GIK89HXd8QsOqKJQC9Pytpreq4LHZDeWfjCMa5Tn/p9HydHOBG16apDW08IYR5ScsM5F3MzJaL4U
D72jbY1TjAcuk8RcZYa1EWiN4kUrTuv5x7+VHwBY9TnUOX5V6fcC+GSVhlMN6QE+K03YW3mxc1Up
y7gE4anIKt70cwyW2D1xJG29H+nXukoPnMhbpGyc+vrskda6fnoGGwGYlGxFP7bOuJ433QsG1XoO
wucKRJeupvla34i3UQhx9xXpCpCTs7iPwsN7E3hI2P0CGt7rqSaA7FTlzhkY3/JaR34vMzLEG0c7
1NjHb5k95uiHXQsNja3cGOCvRi+5v5o46ZDGINtbSWUqVNe/YnicRjF+DyW2y3VEOMiyrfSsQluI
riRojgjmodPqCVjluBYxxcM3qhLEMMJ+OAwHslofcGk6qn3ZhP/CSk58DO+sbdXNOaC71iswyua6
Nwa1sfWeamNeiee6zReVpN+UtgrPuB34KM/UpQXildtYlA8Qwid2DodiTu5QMbiY7IpWA8w6zuwr
oi1gZrmljLZnw5tyrNI38nyu0D5pkWzNTi4VlhLWFr0E2xEWhLI6Nu/MqrKRWHuxCK+N8oB7++bb
ahfVF+otB8wJ+lB/cnVlNarmiac8nIOKogiXQqT26fVkbLPWU6sxr55mD2mHiBxYeQS7nVo0XuPZ
RvKPnAhDdH2i77pr4Qm99dHVycoCUohgJVpjAyEaZbEmfVsW/NMgk/8W11DuCuSmHS25IrQUumnj
Z4bDUayf4iKLrHWOCAb93rjuBKQQz37EYAysk2wh04YpAooF0xEDeharFOaBS6wgGvvTzH36ruaL
6+9oETSY+/yw0kM/1P+X+YY5gsGlxN5cNyOOSgm/vzC85iPR0LqtRTS4rBOLqa4HvxR/mYoAq3Cn
nJL16GtnhhT4SY+L5viVISYrAOWEQFrQb5wUvvekHjIlOObeVuhC5zG2WYBp4I/pnT8puNM+lKTY
bZy9kKC9oqcOHx3sWkwOxxJ2QTSoGjpRL1+Vz20eFTeJxIrUw+yt93tchAwlff4MFAXNndNsxFmt
W7TbzT3w3bhRnVXT30gOoN64bo0aj68MMIBTTR+oZPCJHHldLWq8Pd95hg37vkq5EA7JR/mz6/bT
w6qgELvuQt5hn6QNRn5VU4jgulq0ziUolK0R1vcpQDW6Mo1c6GlpH6C4P0V9IXNXQh9BhV4rnbma
6ERScU2wyhm7w6W2pQXQ4BSEBxf3l3a+SpEPGQy0eZQk+pcZf8j0fDItI/aF0Mokw78odB3c2euL
1SkVwFJGopUsebkQioteiEsPxrXvBsoxsVkOPQNLkqHsTrvGABSCoNAVegJhh/nEuF4heMyz1hMU
Vrzvdj9Q/ZJn4P3jrqjpc7UgSFVIcRFpVH9nfsxX9t3nLVlNgLhcU4kcZhTZZLt5XSr4Wta7jYzK
CnYJirfVepaX0btXQNU7v4DE6LrkJ8YJSBYs3Xjw5dDWuEauR+9Ay9do8enX5cvnpzY+XunIf29H
eSnpqLyb0it9PPN3RjLR8X4m26ORMhpXS5lx4HX7+Zol4dWM5FeQjLOv4CDTEHuZVgrXMn6B5UkW
M3FcKeAXnLWEnZ4lk3mtZbfwSk1tAzf+epdAKAwiGy7iMiri/sPxh58V17y/KIn87mnvgkLRKf+K
xmi10JuHFywqGvpPVSvWCq2IVICMIi3tmFZPvPcXP1il3R7E+alSesNCM3k/RcUocgGiGYL5/bfP
JS3ECxOe5R3VBgXsUcFY2mLiS6sR7hkD8JWUbWySF9HqkSYmPcsLnmrNGyWs0fQ+Ezl8B7AOvPCP
2MoNEa9HB7l64W/omB8sjqDwtNvuc1rdO4owK+Ct9f63zbTEsuOdemNPouxbx1s6YkN908B6BsFK
iYzr1VfA+T12CDiosi+OypK6ZqojiUE5kq7QLYyYNMJZwdyfHYcTV2uUXl5K1Jis6lHSNYo1GrX2
F5WH2ivWQvq78L88wKDX4qg8JmC54CweU0kabYn87usnt7rjtnbMqC3tFK385lIvImBqMu+8c1eq
TNtl+JYF/ZbL3E7tD4FQGEXrWmW8Wf/57+f56JYONsqORxshNvP6flydrdXx2QyJmQczW7RZOp2p
t5TBlE92A/TTAFEUlyKPs2RDA9h80eSk33TZ0F5g8G/HxO4hXZ/WbTNituwcYihHAjBh+es+cLJf
R3hDGf8rkJEUesh2CnAe42n0OMGscO++ZM6qzQ2N94FU3iMB+gLe5ukFRuPCU0pIlfuckxuXZfMi
an0VyMy4+D8ZZfAcF7DhMhNmEkdzYuyrIRa7EXjImCfzPJOdfwaPCnPYR8+KJt0vUsbfGg7AkpxQ
TX5zE11bjZidRivK++ygjO5M/DcMeScpe/EY2cius/5wz2Hzx9WmwDKbhgJWf8b5qXrVz39m2vVp
d4A1s+lkgxc7WEGqMqCpBBmR0DQFEjJe2KVmlYgFF7CHUmo6/XatyzM/v7LFEWQxkiN4UuLb2rqa
6T5w6L929U1/VAqtfBhp9nY7GqzVIHWlIt7BOmciU5lURDW8e7zyeD5l0b0+VkCl6xkDlB/20EOK
H9Ng1cvCVIGxAu9oN5GC70RcfcU3NwnD2X8VI2GlhrFSmC5XF1+3LUCRSyibSMZykuz1WGQXXy9z
iYh5qscDLJe0SOmZcYMH0ZHMTRltkJ/famLH9Er7O3iqOd5i0A7e+Mr+PFJm6gbnUZ2IAxwV2AC/
zvGbfWgaHebvGCxdpxj5hbbvpU7fLyXbDR47vI5ttli2lbZTOMm2oWrKXpprVeIDZVyWFbyfEOaj
uTdT8QUaGPg4XRw/JZtZZrLJHXjyMhaIKxCAJCmyldkw1IrTe3TmkiziAVc2oyTNX+HO0rP+x8sJ
+aXz1A3oxEWlAdA9/n0ywwc41Es+bW8ybOyFGpnEu2vgvu3Ru5DmVrlU3Ra/qUIbV57HInuoJepI
pLfxKB+mDSH/dp7NV+stoF14RGdQqhC0i8Sros+A6aga25cCtghPihOqp150wERs6or6YCeBhnQZ
zqNZsiYCh4lsuvz2RVD9SRV6gqsdUbUe55SXCHhvGZLUC28cm0h/5S/6vsmbnmZzAhMRcthZd1oL
8OjeXPgJif9YaU4EzLunfd2WNkPmhDnk4Qkyacl4VsT/HddET1m+dhT5BVbxidUyRs9XAxyVhX/7
4UP+3Xi/C5TYxwg21rxvkelnvuAJkTe+H6f2xoKQd9mEg6QPAvQTxE9NDHkrlQ5h+KKn5R8P/OQf
kW9WSN+mQjogPYHuSkgtlrWlE+eWG0Z5t4u95Kx5aiTlhYb082kXYkjCSWvgv0VCHAdUmM4bDHnu
tBMQEyTeEkeL4KIqN75Qc1+KQOVQUY30euQuJbCW2WztY1+nVmmV/wmO4/HJG7+cJDqTmjnDfCMl
mmfBAAaFCDaqxyzHUVDcWEAvhIbZ9hiHVimyfkoZVqUPgJ7Mf1phEh6XndDG7uepNf4ojJ0b03l7
jPfCACusZSTg5nzhuR1ojvOWp8Sd7pg5zlfhboRg5x/2tTDSdo+1j/6w893Txnn38Cco6On6AV7h
ulafy4c+7m9B0LyJVxXYTjViVLcTzCkJGiAbecw0eASwEjNvRP6yjREoKk94ehpNzOftkDt9p5Tz
7UYOIUqxiZCw1H5ut214vo93Sfb1SWYwVxiwSat64v+DQIzjIJwsk0VJY4aJIiLo43+ICGb9jV6l
lteI3kuofImqU/+cW750yX5dxjiknkxj1Wtp/4XNDSHTxzlCDNx1dR7dhHSCQDIqpVa9HYbeLngN
+4GHCYqXFBeCSSrm9OmONJlRYPLfYi/2iTekoL0PmTVtCMv3UtSAnplxiasnjoZt9P8lMRincE2/
xhxjcmBJVszhIr7UxQZ6ZPom9aJxOTKINRPRCOny1lcekj5kUDGOYSS2RYQw1DcCQH/gB4BT4AYs
hjG2/nxZMp7Yk50HqGZlbuv8Mj0wxCt+p/CbKh0EUKrshQvHASnF14fI6+GMHvVZRPpWHmkuJJaD
1d+V0xY9167xFQGDfqgB55bAwzlLtuFACdop8rw0Rr9Eh6G2kK731iRXnUvsjkNb3RB5+HrK1vLS
SrEo14E1b4kYg22xBMDZZR6Rf8pABAfx24meWmW70LWz7MPSZuXFcsdSoWyK1W/NBlme9IdD6Ex+
EtmzdZ4XFPGe1YUWVIEtk9x8vyF8BDJe6G19s2aRJfvNXsJpiGATf3Wy+DsfW1eCCvunVVTs66dh
ZhGW9YYmZ98ZAv3KrnurWZCfKx/SDwz8PEgNSFTSevjzdzK/9lIQR1kuM+G+SbQ8/2rhFufCYJZv
BDHMRX5DLMlcVRvyKe2dnQmHvlERrF29EmdmDLCiF/+je53/JabEPmh9C6h0nxhUR25g76BKGhCp
CBdioBM/wiQTGZT66eEIg/oo6k2jtqgcXlfiCFuPimRQpoCQZs8YSkp+l4Tl/ksCkvBNJX8Plbtc
W+E2PUtYIx26O1eifqSt0mbm1q5PRWqHuQqpiihVxOG1KUvJTYu11GG+92vMAreRm2y6hdrzzyWh
4wOtoQnCok8uvwW5YfLIutmqOXRdoTc9ubuG+uZZrCfKUPNbTxMODR4S5ehuybodW/ks8+mouOsj
gxfdsToXYOk/wjH+1iq/L8MVkeOEk7AGwT2A255cqmTHPB/z2d+EFqPs2UJvmruxY4suC/N8cgrn
RIHryXjAy0zz2VwR7EZEC0jkZ2EvSDEvw82rJLAAMPmRf+o9ZQXJI8DFDn9aQzjO7nGQMng8Qt72
f+Y2CyRnh+dnkUENpy+Ml31OOWQ6PtGiE7kZuQukK6G4ULR6akgfDQg3omKXrIb+32Xr3kCcSI+r
P++HlhSXm1lEQgYSTe0hJQfz/xfGUyMzJEgwXHO1QygKpLcbdIV0zXJXifh/QOVpgw5EBHM1VVvA
HnS73czXEmTuUBZ+eUWaJCqynDt0Cd96xlE7yS2yRvqiQf4TGiwVSQrWHKwTLyu8Eh32rwoBlBJg
rxoaseqC9TuMGz8mvjXjHWDvoOfH64IhaVa30sYew2TJpbZSxjPtaCmQ80z+UT6uyhWZB9hM99C6
2TUuRwDMimGbdUatZfldlWMUN0gpNCj6PemI/4Dr8ULB7jZm4nVXlpoLcZJ7cGedWn4M+8NsBVu7
XJcuXJd5SjezHlVSx3rB7kSkUg5YJ0z1P/AD+8CSe4D0fR3z5/qAnSGIhZUBRvLiisPM0Jw80dS4
6slMDQ4y/HAGOuvne3I/h8C1oYKClyP9vYdJJN8xjMCcCq8RpmaP86+YGdpqru9d4y9gGgR2fHNq
fyL3chVex16A84r2EGGGlOpwla0tLJfpxcgM4MQH43NV0XqL0RYJakQva/kcFfdlQBgiuDw0Gr1u
3J7woTLgi6bQwd0guftR5Nda7GB7Z6tAHwsAfyVZ2+OF+77DDi1gLxrmwpNBEFECypV6bD5Ykcsb
Jd3Qepbmv6xuxQ67y1AEElp8VQMtDIqbdJD+6eaHSdATxLnJmvAhVKFNEQ1ELgN8zYhyZOmAzM+V
de02KOEP6bMso4wrJRXow4QC592J5ESALi70WTVIxMSlbs6q4QiHAw67o815auIlKRa/jjOLEEYN
T9d43mP6DB26C+I62Z/N6nwI0OrQcP9nk3hBHJWZtGt+hrrHp0eAZUF+UPhGc2y6X4gUGdwJCT07
9pms0n/68TXjtyoK0ltbiqFyNSi1Q6inU7B2zDVu7qIb6EU1HRbFsyGnidgYa6H0L1SVhsAVn9+q
hH7sQrcFVM6pLaboDIyecuYJk/vwfpVlpvp6kDYuJxZrmS/0BnfgMht3p6OHLHc+fUJkgWi3DbzZ
Tt5Is2C8Cz9EENtyrv7agIJpiwcwgZcIuxp/WRpP/7hONoZNlKTo/B6ekFA5t6Vx3LJQfCRh68hh
QIvOkhMWVsSH0vevdi4zLk3H+tr9SuU9c0oeV6YS7SsKF3dbtYhkWB5ruoqeWpdW49h9B58z0fDf
YcWmBWZO4sQKDHhGPjbO/EpuGcS1+R8v+TaVoph8wF/yGP/jD0oktYnZHjPExTNCm8DyfLRBY9+S
jSldzWrIjT6pKtngd03lp7WfdpUpef39T1RUHlMHReIKwPUwymnrTWDEAgVmGXDe+Nq5poCzaarm
bCZr9UbmcEOUplCvh8Km2ATNRmvYkGL0+8Cf8+K6r1yctRQH7JEa3en0takn+e9dkBnPjf6LyxMV
2X7v5UvBlyJxBbUoYn+r+slUHVdJYEB7OuVxDrpL/p15hw5Z2+I9gAJU/UNReES/MwExI55GcKQU
0lj5jc+0q7RsEwhdYK/NFY7wwU9yWvyWxov1pMt/rAeVxH4+urXjuw5OdoNw3AOWn8SoykxDTvvw
SIWzIfQkGHj2zTfety9s5HinpJvEwVr1rNHYupr0Ple4W+lHjC5ZogsFIZgV+mVPS3Npx9IMf03P
IxiLK/QSAR+6JsZlL7ask9Gw848ZkW5B1uw8/Bx2QNTPkWoX/aCF7CDhWWfb2X5tyNnHnUmhANSA
B4WgZAM5vk0zMiHHD2S469+zdY7g5cD+NlYeYppXyrkjWXhGbyQmD4/B3xrx5x/OIVGItC9cXeFU
KqyB73OEwjTiT7x8LqTcIOnxtH29HF+Xq+IonfuQW+R+4P/Tyfcm15QaYCQpCp88tp/o3YzTiamn
B5AQKonEv3Wbc+SMNNIXA65koFeT0RBkm75zuktFnAyVaFd6z2a/uNbCXAnSVvt/PLUQrJSe5MJn
xC4A4XyA3fS3cRn0iBk0VKjpvpgVHiEI3s7x7kWhJ1gYA/hCjjGM6vRY6j2vHZquacHIYUcYKAu4
EAruYH2Da9NiHMLtu/8EnKBSzz8ELH4TTWoQ5/3xyur8Y4gECjVbbnq7nDYEcA8pbpUm+j+lNgRD
oG7/hQ73weskyMEp5cahi4+PW2YgLBowxw8ckJFzNnBeQ+vAiAgT5QWII6pUTWvkVKl9162B5ZJ4
8DG8U5NVgD4EEULg0qIXsIJ4WMXIjHodFMtsfmroFezXtc+m27AZMXagvtf+ebZUOKZYODYgFGhL
rdXC+GsCuPHDZCQui0Kdp2kzDcMUQ9mu5oPlYDGzm1FPw+gnRUPoV7GuCtjio0JoP7zM3s3eQAaa
JLCV/qHYDTLo4xDRK28UbtqeWCWf48lInjCKVKcyxBixu6ReKR9NUVoL2+ixAF1bNJ9zJ1CT+LFH
RwqS1Q6NDbSy8agHezewAQ919SOXfgQHi8WnhXWzq03dDgaWriucHGukt6RzU5732cXiV1I4tNCk
2jDwVjiL4gDCgfR9NkTiAnWjIkeZaO5wlgBhGHtUZc4tSPvTB/657xPTxoqe8fF1olcnvPlmYqxh
laXu56rTTBrlRWUgzmkKxhwcQDsrWc5HB0dosisr1/QoMpljK9vxoZITQ/DDbSFqiNDC3yYeeitU
2RMcEWfHOfnFn/48K/0EstIge/lK13QIp9Aya8/Ub++/3Ug98JZR7FBI41YAmHpOMN/UAjRDqash
ILNJFQLNM20ri2TDTfEkvwdmTbhFqrNFfe+E3sg9hyXZ8rLmqCtkR0QWvJC5PgCV6G5LdNYat2Lh
nmbhWfxQwXHyb8lNVXLx4e5MsPCjbvPOTm1H2Ke5PQZdPh2fZOMBc0FNTMUFrw660w1ScgUHpNbm
sqomJs5DMTuvqnOPVRrHkY7bnLRavCoxCU7YHSbYGB2Hz0i7psTXCgtr/6YmCE4mt+o7c3Pm/WEI
hXtkQ7l3l8Lv6fzXWx+RYhSgpxom691XLvMAhcyAiTQMkPBr1Xi6WuZ9clc0QxgJ26+fNENXGQtN
qGcYzXY8xthDg4cTr/sItEYHprMenTgVLXIwJP+fV67tKNJCxwbDxlGOZYspgrvVttVHwmMq2fWI
9q+DRUPR4F65XPlp3g2PxVCyN3L1GKomSlWiUwgIPhcOMGnzKSYYp/5lEG1wsXnFyFqwTF/meY82
tb7lYKEsHy0ohpQC39XMDunv3MQ484G+0MUEUqh3CvjqPtlgd+sOu4dvxFhYsvGn74OLqr82ONwA
o2yYWF2D1iV2wT/Kr9YbqvaUP+n9Pgd3gV5dGZhvJgQ8//J0E8umXlsgf4W2g5MXNioJtMVyg3jC
U3TMg99feAuYrKSprEflmQar9ESPH9hEwfsolDIylf+9NZzoUlrnh9fNT+GtbxkfyGnTvcjDNky9
Ni5c5wyXPdIJuJ3Izn2PV6+nONtP/1Cw5RB6PASCzXAXSck4yTKQResqBYd5PLF5adP6hz0bl4d6
uBBfuZrYzM6B4CMa6B/dmXgJWJV9/A/bdks8C7ambVRSkUJXHoHjPua3idd7/6n/oVgeFTs0M7Dk
RrJrPbUz7eh3OUzqB65M0Ru5qA6xV9PaH6/XdaOEW92VOxYq+fgXWOo6LSoKEfIkFovE9nulswYC
rlrPkapgIA5LY2MAPciP3tsFCKyJFHD66N2blB97p+9+WH2E4vDiXLG8WN6APkZrYvrmHywKyW88
OzI2ZMGIMUPngYR0csjX9gK9QGCy68IvM1DwfrtN0VDyJzKc+jVUyVCXvRCNk+bmF27Nk3pYhPm4
957SvPKOeqQeM4v8ObR2P9cbev3m09nZ2iD8OK9zwi2l3ZU+pNRPk4Jre88nQzsQQaeiMmk9TEuc
OwEd01Y/Qz2v7CcVLVaYCKbtw3dAHYtZUEAyEGWi69APvJ5bNQgGLibNROvhKsbnaJ+YpPcpHXy9
IEPNnHVF3AnQLJZf2U0edqw3n02fHxqekVQBhu/Vs3ioQtrFJr/BmCNVFR9YzZHLRyrMGV3VpLLM
kDfsiUSgcKijaWIhou+fZ/ahI5dHEl7O8Dbky79JwiLSwSahnV2Kk8/y0zmd6dkbPREGPIv1EheA
rFhw61JUSoyL1aJa6RM51Im93HkVno0UlLfruu3VlbPujNhOvGAEWTV/nJanShfa7bzqKREAJ2/D
pbmfCiHPDAe1K66xFNEQ2YOx6HY0nX21T/b5NonDseJIB137ja+0vBC4+032crGnmtqrtrgojh0x
ktb1aVYeZVoGij3q5Z0SYdMsRqyOUxkBYxPtGCt3blv66XcEhcqocRIJMXIXitLK7CASwt0efRq5
NNA/kOTpWIFnzFqZJ+Hvneo65pqy/8vXoayWyhJdLsI+Z9NGh9z5E8VHjRrElgGJdsWlsjh4LeCq
z45QMljm2+58erXHU3nXVjqKYgWgwffA+0cQZsZLnfobuH3sDeuNAvQr5cZz7Xu2FM1zxxqMKZsu
zdBIWAHrJggvx77wokFOZ2uw5D35ArI8ytblfTr6CjOLhEM7BBCnpR8G2E2LYn4CLexp/KoLMFZr
v9vh6H0+BUTPhOKJrmYGxVHvE10dmWQvkY/1tM2BYkMZBl6zgMclRpPoB4qwaLNKQ2/7ti6nDvcy
n/zkVLDv9Vjw0kTZsnFXtJoLhn3LvkpWct4ZgOG3arOYgmTLl7nPr4Xp7HkE7WRFHt4RG7kM075Z
Nd8wwfQ/n4Kj569uXSY6gcGKkVeJz2Jz2O32WrzObZDPRNhA1Du46cFhRKSINYQvThW8LuRp3Zfv
HTCj4ejWNBn91sv7c3sXZR4Bo2iSShqWRolB6JGRMwBPi/9FUiJAAtxeYwdCrYa+M6BCWXY5YlIo
x4Q7jWicQ7sdGouhW6R8xk+ppqyj9sfMBDCjFGS9lbvNAZt2hMp0ewTzv0kr7Pwf/maD09BVsoTp
hxsIt/0RXSvik7+7mlMhreIvJM+7jAhbdi5wTe8xvBFFHs8o9f3TXRva3eUxEyy3mxCfllDX5ZF1
z9WKwnEF8e69ZAx0Jt8P1mIyqU9YmcNhGB/Z6ObLQw9u/1kY/n8vfcfqwjfK87GzdJWvz2xwQnMG
A6FrsI3+XJaR5VNbg3QwnqvVXvDwFiwVnDBqbVkOhalSkdq/ZSa+MEUR0rnxz0bI4jNxA/bNMnLr
UP5N4xG9jPlD1hMMOZ2If1Q3vEwJNhy1UfSH0/JNluriZLY7EXINIZEZgcr7PUzEJMGx8qoHkRn6
rAGNvywlvozS6eNSs1a9P+Qh5nXwbJzzBl3H3ipxEARGw5Pe5hzBdQ7b6dF/98ynGYzX0MVVE0jX
qi6eOpCuoyRzgCmVcaQrpNXT5fFFc/r+fzVnWvhujBPWfGEQFIDS4sjUX1ARgwRc7GUAhYCDPaI8
iJFcdla/PrX0Y4YNeRO8wTlik2B3gYjdVzrwo2fQ3osBy2pKGqq2cXdY3PHPkbqDejshqjleOA2A
6ovJT/sKgJ05mqYQ5FkkrD5CvDlMryLcyMMEXzRhk41H3wHco1Wb2J764dt7im2e7Ig3/cuFGJy7
1NGnkOU5SxsokvFefwRkbpNglIIlO9yF7VlRDxIC0LQLeuhOhUWcneogfilQh0odbmEwXkLX+jC+
cNT1y2cAcp1lSiXSS9hS4S26DuUvYHPpbAUA6cUlQfNZ7P9AXOJvqqoJXIR1rQchXHCU8MW97/3r
pmsamjAwAkW6vFzS8TZrl5thffWuj8IjoHOsoE9AG78YXLg4IzNTSfETNH3wsnoiyAln/7peh1lh
zmyNL8OQfecMQbCksLoqMoF4xeuRzh95+wA1vWUePqJiT1m8mp4PKTzPLduc8aW77LRre9CnCyGy
wdDJ+SABC8HlmJjPcUmWu5dYJSoGpWhO/CQunORRFnWOpFA5F/N1TLl5/aWV7erxXv8Wq2fydtOB
BsJE3W9Ic0+AlXKZaLd3kRaRaxyUTH4wsoEl+qJjG3IdxMh5omcK7hosqcf7Knx3F3eV2kKR9RVV
/zKifNpgiOL0taK32I3GykS/MUaAViDgHQ4O6rnLOqBlFseO0LpzaXW/0qeEOOfIYNz27GpQaw16
Oa746lTV2UU2EJWGDGDQNLjVE7tbNQRgKjRRQZMclFIDIvbZdS9Ab79bJClgj41PZZzz4Ehzq2Yb
jVM8QMCImIKUjn0fb1qjoef/He33gSVh51ONoZppjKmk3WzxlcnORuOkTmCV3ABT/+/8K8GrpfHr
HzeQOKBMsrRPQb2Dr2/EbsknqhnmsFUXLEXyl6FLB6SArk2vZ8pT4D4g13Ww19JUn9XzyFp0lj+N
KQQAaiQImFpGfsRxlREqqLzGs8uUTaFoTQRW1ahP3jIZyWQVLiul4WWnjhbWYM+54z8EBkPQtUmQ
U+aYRdqBID7Wi6f/TpKuwZLvqQ3/AQDByo9FPwsyNjR8uxSKkjwVVbdCmpaxE8e2xXQkjTiQo4se
C+Y2h2CPia3ZnHaaJ94W229ErUQGXBbPBzjsF0oshikp5cfqD3EHmdjLQw4XA9CvrnanNFreZEGU
H7VFugHNjmOYybtVqGz3HjN74SE5mc80UH2VTocUjL7NuGrCS6bywVQrmG9kbgO/yTH0F5ak6L5u
KHyEs+JzA+W6ITaGfULltBYD14xSAeE4d/WICfi9KDIIaEiQpB5ykEU+TOx9gReECw0cVh2gR0xB
Ysw4Os6sizrdveAeoFqUuAQkkyJ/oj/dr/0VCKj2J+wvMr/jPO+STIo0JFLITQnU9Au65z6i9Psr
p7/DuaGBewkIt878JYe2daKUIyeewnXPeasSeQilbOyzXI2a9DRrrobHshSZWAxGSaBVD/VbelYQ
Mu2oE9s8Ej6IeO2urhfUa004/icxmIN0jskoez8kuMp0Hq8zdwckGHcZaLpJ8YeA4iv9+vO2hi7m
AjUORSqkoNDS936G+vIu1Vi4rTLdzi5WFRv4uJT0RmKsTta48ZvUDUcZZvf1Pby+SsC4+5tU5yPf
dQKmj7TlKqzu9FLTJgNFjfO2hHNkKqeluC/eYMT7HbPe2gFhvCwPxEcajTXnOJYaajzoo1+D1Win
LwieMvTsGB/O4HLLECbwyrcmuls7GJfcVImXfFJdXOLkchnqm8PSuSoZy8lwwAyzu3jnoHt/112T
oh8uyHzYIKwL0FoAgpFljIwiVPqtNY2DxMWVkedPpir+veEiiVRnNaWQcUJhKhU1DtCOU42Fwhgc
BMPsF5iJKgFOiPGSYBRSJ0pN14UrTt7j6DRotjEbQMkom/ejkniDylhTy63nzM0ava5wchjTS4T5
uQJEnKOvLk/ApDx8g631Vaq86Z99oUMA1quHnSIBSF4AEb1k50ikb1PqKB8pO1WMtaPI0lcCOi4p
8IpUcAsFB90rELuyX5Hix2Sq6JoosTNOhcl4uLHIxlIGU1KQYcdutrGp4gJ5bDpCZnkzTIIoPfqh
RdaERqCc1KfO0KueYbgNUCdYvl7jJSektre1Tz9in0gm99uicqHDE2kjkYjeZpZUVLrcaEUmJILb
sdz0UM/MPBfchfuYzDyZet6ko5RAht2foeXu5UsD/Gb1sOW1UetWH/PiC9iemMXS82J93iBIqiTU
6iahIShthhX139aSAK+xefqdhm/kLDJmGF/aPwSqYNC8fctxbChB8ICGMyny/t3RUlvI42pWWuVK
PWPL1IJ3rHNlqTFXzaNP4tC6H4T5bSafHj2qUqJ+I8GMJjGDQ+fS2AqVvOFMT6uBKi3ABsI8G1nn
VRXmtub9LHs0kFs6S814w1dbDF6f3ouEQhr1eIRsE2GlmsLOhoWqlylbB+/D4REeNiNeL3UKkETJ
O8HosFVKweFpy7BH3LOm7NLISVeznLYOUExLqk6kHVx2ofOYAdTiATJx5jfS5EjKjlkOqJiiI0Fd
ojgoUtPAXdGKmKiScvGAZKqsCCTQn7ZffNt4NnY/AJFiGyn0rob26TbDLdEIEgKzHBlnsAZ9LQRo
b6UaDeM3NSq5uggaDMliQRJ9OwYYlvOvBNW1gNUh2hktnZzjG0qGL/C3Sn9SYFGdNs0K1e5p36/l
/7T8V+lt/3pG26TpiiV63kTlBLQcpr3d8c1Vn5VvYDEYoLOb3m2kbjCclcwif5S83iWg8x9f3SF2
xyWGIm87SZ00tPyE5Lt5+sD9CDdf2RIJZSUGJCj2W6KR8jpkndWanr1ATb59WW7PqFhRBBzfa49F
THe719xbeW8QWHK2TpbPrqXjFBRdH8yszuYUUFcT4HBXad+5M2fLxfHzzJWBDwlVA08w6UICeXbv
uksIsXmvWR4xuzGS401aKlZ4oXN6JloK9IrL5R0kQGx50CmbiXX4xHx3+h9X+OMmXuAmwjEKNQsT
uODF1ZTmYE+U90XjADISUIko1V56wWKAz8nT9S4aEPbwC3eJD9B8mGGh32qEAsUEKysKFlQGVV+z
sryAHUFqA2qvR1wAtLLosOhEOli+IkirdrctueZI148b7eP+6l4zAdHY42ChXaXAP2vilFjcSlb4
BQJ0wWS2igDYETFIqukWV88Tk5MYNyYLJKlus/ISRxyvv1co1jOWxHXcDOOzMhaYJRxKggCUXQ50
qzcrI71rlA3gQAQqxJmXEzqkyaa8ntQiW3PoWtVc1Vg8qovSyeoqhRlJQFhAkDsDwRuqMtaFIzUI
PKASZU3gqQBNhwwFD8bBrxzADsNh4JsyQhgNuiRthZZ2rN+1p6Yzng3gl6Pu4tVx1U27p4cPXYMT
YrFIwozDz2e02JUwF5bv8vOJXmbNJhRVTbh/emqIFE7uTVybM55pQilI1StoAy1JHlaOI+xX1Qno
GNvgvFArXn2EqATIRVEfDWxNL6YENw8hFKumIrDBtws0Zx6C0rpKstZPg+MaP7Y2GHkj0L4UEqt2
u0bRbU+xyNaI9fT2SqATveFJUjPrargnahiDnk7SD3n8hzsxq5J5M8rxAUvJ47UMeX0ryKljgtgA
gczZYDVWLxJoZpgYsGkhb/PRhIrmBN9DC7eA0Siwz71tlgEASm/LDKOuHC/9Xil+VbdKwulhUWrc
KKoOncLHmtfPIlPd4MblY+XSBkK9Ipku5dExTdh4Ckl+CnwTQET22sLy5YsfTLSauVFnWGUfTSB8
vTocEIkk/MHZfyiIfvggxR7Q83KRo3XgxPYLmaG3oy0vbfIKSQXO6ZfsKfR2iT5LIHeThpzRz6QZ
UH61c87JQBdvVo/674fa3GN4dFaN63EVsnD6ui72l/J14OuY6WR5zMoRQMjoRdaDS8en1OGuT2dg
1uq2jdHHrakq3uE3iJHvReQ1rK2HGqlgGuuXbieRD3TbXn7AgI6kQTUTcwc6ilMNfBR9XCGB1rN7
Kb16yliPw8Hs3yJzLm2SB+DtPnsbJOcnFnwJFqzO8eZDKFaVW6IGpVGtK2IndMnXdeveSsXfE8j6
PPKXgx6zWixsi/NCuZQuU7dOTj8laf/RuOqPeFkEt/7gCNMh59FgT9yn+zZqRAyFYSHT9chT12QJ
BcEm+IqHip8NNemo/tB3iC7MXF0lSMHF7IVko8lcRdKo2bVG0Uh9LqsPoZXLPMPW/NPLx10KMJSn
0fROl8x9Yd6U/AENCrOFLo8J87XKO5dl0hisY9Y6LL0e32NtbIiugHdIw9ZoPmVRYME4xN7JGD7b
F2bKPfZ3vBSj4GlLzgveTIJ8BNB0GbTp3uydnbQxB2QiAccW+nyjlyzQ+bJA/RhU2/AtPlVWau8b
sklxT5xnYbOXbMxGE3W5ZBXXXyZsj1VqM40z2nK0fF6MmdvAPcaw27/CVxBRr8Z/qeg1fuv0G/kS
hAqecWsNNt0Egpc7wvGst7EkE3A5wwDgpoW8Xy45jzPh2N2a4MTZEBxyxOkCiLi2UAzabuXAcjqV
3h331P4sKKCymkYug0RVrjdFlOR7E93teKj7fqFLf+69CMv7Z1Gi/9VH7dM/XPHfaI9EEo1RthBF
dTDD/KNih9XmoLWEN9eZFRL1sz69X+TVy1sER0ak3FNy6gdExm2zS8G+vEVEhXIvTEqosMiQ0ewx
/a23vmLYhP3qw0DPoYtuqhmwtuYQpw7lyOrmbY2QrgPPwkCHegPOt23Q4z0hO82vzwfzF8pM8bWR
kyD5vqzCBaAptr/K3TKB5NsRGWvMS3GFckOE2ZBX6ic1jOsDFsqG5i/w4lLCq+/MUieG6HcR9OEU
OhIIUu6PaKaXjBU2y7Gcj11bDATAhf6ECdXy4gZ5SNZXDdJgLHj369BsL8oXDuurjIHsHtUcr9vg
213ZhrWj2GAx9StPF+efwtE/CsLLKT3NdcMrr1ErNv0nS3ccWPZbHhzqVP+aijoImHe9iWrOpgSO
B2dOeubYI+kJxd5HlqfmptJD2xv276WeDHYdNqyGzaHlyaTjnqRIyPnDi8JKhIqJ04drxiQCAQbo
h7cbcN+p2vxFxGfgbm38Sty969ExD0kTB/+uKa3Pl1rhU0ScDIV8TDg5I/8Aya6FnMWlhrA/K47T
jZF7D7dqhK6Z41cqTg0sEF0IYBnK0NTNfYRCWT4mT3Ss1WsEIGvxMAeiZaM0HQbBR0OKXxHjbosJ
WZq60WRcCbjVkbRDg/VQpss1W/458ypou91+v8SX5It/XnCHClMhIf/qptJwIcSvmcoFv17l4LDK
e8C7Qa90EeHsHIsy/qEoxDKpOvsUKPU9LQAPlL7UxIF3qm1GFUAQ0yCFTQlU0UvpC3KSTnH0H0cs
fgL6SvmOvDbbhrVDHnYIaombdztc/ePYFGr71gIUu8XegUITVIxBnlJlZDXLcH4CPOY3vB9P05gr
vh2WKB2jGv9Xokv0g7ivzJGybhtZtzxEe0lUAmHg5gxp8f+EQ1jH7TJ5ST42qHskiKz5XESRKsp5
hRfzN87Sflnit846Qn/lgyBIwlZbaDCVkhbqJOHz6xMBgd3qejdJnEjkIEjjGCfXndPifZKe4hKs
UcxfC5itcNDFsAz60V5xjLG9q9tJp6TJquSVsA3NyP3dtGCJSvo74CdRqRIm5+H7is+wTIcJ9BLF
qkK8CiW0L4lhDm6X09N71UhpwZ0QFx9Lu0A60OGWq/rVLK1gxPFscqTbX6TsAUgit5HK+BfX21VX
dZwVFSmOZFqN6UaEk1wGkZXSufc4V5gZq35CxjOtWEYfuGPHYH6UxKnkACIhHAwD1pzUKkEX0NO6
S2cL4KPMOV4lWOwDwQegExXc0zWUU1U+nuBMBCtvlAcrqBgJlQK7vctFTX46HX+wo7A6s5HV/LM1
BozTjxTQKLKSiX31szhbjMzEjaDufX9GaBPw4VTL2lxYsLdHnHqsCZHh5XBFamxg7C6jnObNh70w
XFMB+2VRW7YooB3Dlw1MXLZJQNDiRKzR+fdnTkTcWOZYeQMxBgBQiqPHHa5wUYAzibTTSoUBqTu+
3RptTLV1u4ttwXg496qKwSY8uhc/PT1Fp9yeesSWgKze1SSENLOvaNYEpRP21B8uGAbI4Jl4+tgL
lwwgJHwRmWwgx1mR/CqAofl+Jzcjbqx4g51yxt/dAJ2qHUtckzyN3BokPlm3pk1Lzdtl8NLwR2hG
FmdgAu6DWrSVJYdcuPVMbnRZEsS9oFKE+y/SSm7y5T4Tli1UTY1xLInRRUukwdZLCRIuatGLZjgh
nYOjvPUKDjxPKhxdD8aKjpcURULz22qoAUsD2qBzl+ABmK+60ZAE9M9JZ7QEP/iZU7HPtiWdCMr+
hB8Nh7ji5dqtJE2D5kQF823xZqI3cZ3EABC6rg4upGPacLNjUuxtzXFN/qw8AnJCuUbyOk6wfAft
l0/STYkPrx6b3vKRfwaZUsXWXg5NKUuvWhhq5XsQGXTWEcG7dIZhGfcgXXPcd9S0QZEvZtScPIYz
p2CALgzO6NaFaGR2EPomoPyKPYnFQE/VJlomE6ud7EHyX4keNxGzh4PgDocDo3ZeO8fh6nHvSUxK
KEG1PvExRAEtq/O6TD6u0ZrUPt9NGi7CLxZQSQZxyilSVZNKqheKZrbtzKgORIK8KV/lR4B+l5qX
zDhG2+cZq7SoR+Cd//JzTXdWtloXg0BdyhrpibB2mJsMpOHjSodU+d+/9SvgkBktblxPaRMDS2+f
WOuLTOjBnDIKPWr3hoDhpDlktFVrZvrb5raxD8P5cJ6nlI71t0Vf5ptNrEPb5LSxd1cXc9feilGT
r+A+iG8Op/CvkZa27duBgaJSXogoJs1a4N961I0+twz1heIqdgM6tWPIBjAgNUo2saOuhnvy/AI/
BhWDdP9FA9En/WWX8YFmkXtvO26RJmsr3yZ5cQZo+bR5mPTaZt0J6KNeaDTLP839mCR2GAkMXFDS
S6zTaIz7/uFvXCoHaBbJVF4OJtwbLUXMtRCrnAPxTRwgOLy6P62TTFemb9jcsMwwBu291dYhfpx0
y14YPiiZZ5Uf89t/TqXSqSC/hpzhP7r6dgf9iyljLNqOwr+dJdDnnK9/eGRpVxLJtc7HxSeTToni
v7qpwizSPsY0g1F6yry6UY/lKzGwhl2XEk1hyjiApmd4EFmUBRSSxQsTqBLSwRet7Nk4Xo0WyN7t
1NsNhGxyTNe7j3SXRdEUdwj+34W/QkFK+LgOh7WP3Hhenur2XtJHGUE8kKHIJEtwXjd6kuVQSOhg
IaGVEbYomxUqK0BxyA5pk3xvmWWrY0LFTunU7ZY/0xthoslZAIT8CmNcHZJlIvEy09/JlMwaTo0l
NwdcTmEhDpKAaD6Zg4loHFMniCSP4wmRe7oxlZh2+FbAgwO48nP38aY5e1AOEvaaix3bp0FMz1lH
KXWkJcaLH+ePDrSR802/upSUIbyfv8WDrj0+1gjTPANfkYCFGIdJslondD5dJXEiHAs20q2O/haA
FV5nPpzY+xY58SRiq9pX0MDmL4PZ0WzEkBZ2N7KbVQk9tHX0zCsNW0AXS7y++ZqjyaP90ZDdlNHc
2ybv+6XU5gxhTJuLSew0fF4Jx2ClxVeyJu5+FFtCSNbvtKIFBeuudAf8t8Y6zug94QJ5q+O4cRXF
kESuVGBP3nICkCrVK2i9T3UWjEp774SL5sZbKZnOoPDoN0JFyvHmNOx9Q+mHCM9C7n9uF6TDLdmx
O/E3Vu7nPo0jc1Z5VLK/gFVjoalE8gqIvCucl6D3Ze5HMdy5E8wlW7kYRFpP8gu0ZBmwhBIVFbb8
kslty8BvZxzfa4myVUqDTEaJGNMTqQGymrSPzUk0TNLC7m/k3AI3r5FFPyzhL4GCH3OuMOXHJTGJ
w0fs5jGMp/kkOltbRgGO+Z2LJoKJPsZIkS+ISvRlSU3vfvFCXyXBujAdvuxmHqzeGahhNPgzY7br
GIN06nza/P3BO6hHYeCKHAJU3mQzeUmEp7dVFcLp8tpi4PJP6EmT5Hf5OaXVC+k2vrUeNHov3dDt
u9ibv+snsCmzXr2RR9BbYuHbQbEQ6kz8S/M8Y2NMPuePnIu0iaRbzocX1pt3ifXXmBHNmIvQ11sz
PIvS1JOCepA/IrcYmMbyoH4Q3pUtsOtuo4zVKMQC9w7UfyKJjRauR98oy6zOu5L6Y/seiBjgZBYK
VVQzvlLrJCj1UHO0plT/6i/mx0zE26dAY40Uf3+0hX8/foXzEapLB4RmH9jsGn4dhmeUBgTUGkwQ
gLyBLg1sZXItaLQ2pR2DRdhkaFqkN0fN6h1Igbgk9I2pq1yDvqCHZYB1re6eoTEreJ+tcT1pO/wx
EiDJZRr9oQ67y8aMZQeJ+4jG38z8oeoLE2nl/cedOrPR/aPMnOfW1yHxtgixnVqVgb7hVkPvIdbm
s1+0AVwm0WkDOSfIq9nHdEF3wJ+TnQ1EbP8BjFSdAX/8t6muWrOuC2vMArcB9B8GqsYM3vZaJ6kj
Z4WPo95JPJFTiQOvE5s4gvUGPu7N7PEiBqJc0/c9rcvHr0TD7zCrBZ5rEHEiKKVjrxKRxUfROjdq
0dzPR/72Lj0194prHVpR13E+vekMColOqYaddHqKwxbZWqXMWQaAjlho6B6F8DY4m8lkAJ1foWq0
OKHZc3kCxM3H2zgN1KR2m1EvM6NoW5Bb/du/YpEzpm27naXb6QMVYeuj4Mh0+sgrqyU394IDSSHx
IuAonQEf9oP4+YKdFOEXmNKESjtdiZftwWEsqo2/e3efVvVG4d9HqMkxrAiFNohpb78Ib5E0fLtc
K+hMfIgzoeXH9isQaJM6GomjPYVnoBvWIstr6vZAjBQECzV9kVAhBI1c7VXf/DEULlABHb7D72ie
u+kEbl+A61I/RuI6VV/y78iWZFRVnNCw6ATA5hC9MHptUZzamgMy/Zomy1SZcxPe3OMC1Hq/wSRd
pJ7jc44TYlgSVJ1NLJbKbDHtVXR3MKjQ7WluJsdnfohsnP4pPrBgPU7yazJBoiQpB/pYlFWk9+lg
QCiZ8VDRylqLAndoLPe+ZCA/ZfgyhJExlBWU9UXhUsp0Non13brAuxoy5ziiipk+s1sptHIrIbBW
x3xCT9PIaGxcY1hqkBzQQTZbD+b0gY4Gc9XftAqIznBhcZtmKkDn80YnAd5uKPF10kmvYsCk+CGz
A5I6w4vRnfGV1MUUfPRVZPStV/6K9/2wZMMP+O90/lWns04pR1NKbp5Z4AhRjYgyTO81KADa2mJN
6wOY2K80jZsteGhVqw3y2UvrwoX12zWTtcd5fm25pN3bF6nu68SjNaF3v/zyl2foYLE19MYmcM19
fRNS1cuvn0B2P6TlGBxnIzXhKDVzhuv+tnd7YWdOSEM4puO3HM0I31W6VnjS0cGUHuquEChho23o
9/D38FLZIvnEgfUnRlHRZCikDIN13tZKI7aH6nD5OYIn0ET5Je5tN7pb/hrnmLxTVXiVtgTTZtaC
5md8lo0ObKOC5FozaXO6tDDAcctyLgHdNsIQhcMzugYrrRN5DOHF0rzG+crj+VuGD860b5y4VJgL
QxgMpDJzdqDvPmVvSAeuL1OldHHmltY+VWXTuAyTF9E4HIG7RS7ygx2xXzutOzz/93DtIjPFaOqb
pwhYs/FmTg5KGzD5ZRhrKEV09CGKeiUeEebjarJn6JrDyXb1z4rhryI9/nvXG5JW5QFx5uHT+RMu
YZmcVnxwzjq8rQNYmf5sQJPHTCpfmWWz3t8I8+eaXHsBds29c0+2XxpKD1mk+B9uvp3NAFldZc5E
pHc5//pu4YfXYaiLWdKXDuHqEmuOiTgT6b+sOCkIoQx7svApwgOBeE4KdEAbnm8GKrYmcfp+mDyC
IhcKAp5BzK9Usx5x2B/dFmaofx7z1dptykDs8edeC7GmFyaSeL9ihAMH0hYCps6WfcnpecBz+FUC
NOGW1hlKoKr/FbeHQD7o4z1L4mt+KBn9Nfksj1aYSUrqBhrUybvljAcd4yqr9HNYvMSadhs3jnIg
rnuk0TNDkIkLkNqAl/6gT5fADDFJCvCds5zynDtxtFBtOUfhL+O27MGo6zi3Abk8gJwmY/fbyHO4
fGUtbRCh9TYHznvxnXWgC4uvHWeA2WWeLtZHfsheOqrvg4Kw8Xf1VjROciUOhrNJuv2VTAw/E7Ta
n5h0cmjIwG5RuZa5yOor+kAvkjgnKr7QCGiv1flhrGkhDHg+iZ9f/MLxeFb6n5HxdHJBCbgsjQQZ
YlwnlK4+79B5udgIN7jXv/+1Q1h81ZS2JZ0h8PsybTLSdmMEnlH6nOKC7TMluzoUPxpAyOc31jw0
pEcmUUiVL+51fi+iCy5kH3BhS4ctr1ChD5/gQqaJcz0QiJaPlm7ZnI4vPwsWZXp9CdOlC5r3kzS6
rFERZQ+g2yP38nh8Rp/yMQ8DNEcbUFiBc7XJ03HoRUghive7db+vHTHkc9rvZBTeWmQWBQf7lBri
mnTdxZI46n/MtZx2HmdhNLrE0d+obzy/o76Lvp4/cIwAAst68k35tepq0xpV3FpQUozPKoNUmOjv
LBbkTvpdbvUMSa7GNQ6bK2j4f11SkEVcyIMsdEj3so0hDRcSNMoMZVT5BPMlNZH4wGRJLx2YYIur
ZYrMJuVgDint55K6+FOtNqiK9wnpHcTL0iH3TaX6HL+3bXpjpiUEAaiW/+ociIq1DS+dDrABDhMP
6Yb+4iVK7d76xs4G7qWk0LDgJDTEB2y68ATRErFFSh6XZIsBoLB6zgHXK6qMCAQHuhJBmom+6DWD
Jrk4iXoMt1xbDwRsUBAXjC6wtf4b20uhUSCBVBg8y3OqXUIPNZkVss4MrYPXnrwI81TXQuX9CPBI
7W4ZUf0MQ6MRoX1mXS3t/f2uAsgEJwOUxiTfnJY7cZy1JbrPmRCwJ087XxRA744MoYelkGV+aBss
hxhZB8LB9U4blW1wo+CRZXfQrjAC/02idqVEYMBKOMdxUP4+rN+FF+8TEB3t5q3TnbWptvX6OLwH
Ggb6LEVbn6RlA2z3JjW6ayQKXuYhtrbzSZdQubX7ObS/vGep0IQ7mhaQd+KWyVzsqfwHIJVuQtwz
xca71L2UzsSh/M+K87xRMm9WPZBA+WLeyeg+duHaKdP6/irWS+8Li/0SEixNJDY3eLNLgJUCMVvO
WQABYcA/6JnKy9CcC38OquIKbSVfOkbJIV0wZjniaocUc4eu860Q69DyStPcQ+nnMBt4ijpvvN9h
hiGMyQBt86bbl7URhZID0RRmgTxS0HnZYdargfKhVOVgBuVuYMRFORGQV1tJQYrcxeYQYSIKiTWq
+ePvpUlTacMXPkpJlIPwxvP6PXjA/8Azefqc7x847lGo1HpakOWWIBHOS59nP1Ipsdc3sjFiaPKl
juHab6TFziTKBmbd2H2Ash7AYYUzhuJt2f800+R1VzBeTjeMkeEwAm+/6FoBBRXE0Qo3p7BJ94aQ
g4Y/n++TCXkPZKMBQGgPjkbw4qv7QW7DxLvCLxyjzMms3IQR4GVK0aPOp51UMCulk1dQ5Y6bLvVs
TYXqwBdogcmkL1hemyQ+0fKvObk4zKKeIkpS+mJGBs+8QKy62UDGY9uGom0qm4S2FVBxJ2hhbXHS
ddfU3QRo4E9fotThmIS0jYuRcRum7QZxUrMWJYiExBVbXeS+XBrpo7AzFzcK/fUlTSp63t8TEyKq
TDpXXPpXSa3Xrl4wxqB2ELFOuGIx7cp7Wm9qRBg2U5AYnCgnC3w+OaXMrN5tdk6m42d5OlotollL
9awSrN1coNZikXl+FqnJy4INE6rmWATqnnRb18/OhlOc0unl4VHwzv5MRnk6nOhUg0SwSWtlJtYk
B3t9rfwJtjNfwYlbSTwDsfwqrmyWFWUqVEhH0bi0P69QN8ZuSwXYUp3TTZYwEmUcefw6TiURoGxR
iXkUFvaI6sgI7TBWNa72pwUib6vIDAwZyv/gZGMHndj8hRzwnuNjPcIaO5MWXUOZLC+v5n8w3bW1
NIBvu0QxStHwx8LQahTlcsoP4knLZTYEIhnOen5v4Tf+DQxuKdkV5oHvPoJDS0IVfVFzpfbe4/Ve
3PWPY/6D0iWuZhMehrK4I24XozF6GzMEhBTIA8EB8+aHQnSSNkEYNy/4QihMVVip7dK5xtORRvBR
t5fcrNdyKsFk3kkhJWhS3cbDDOWCD5bj8oG6kluRMFl/r2jNLTbuxs9U5wGfLrWis/6gpkqX/Iqe
fTjp3Yv6JbRjtmHajnA7OY9F+2891xTqV1H9CNttUjSCQm69fgi4fHnbJhxxQYjev8+TYGGy4SMq
DU0uc2FtiTVj3ZJll4J0ovJwEvnSVywglFzpIqYAI2i0x0tyh/0lNaMVVH+71042Bz5B115YwVjz
xIFsz0QIESNxi6SAV1KcxMGzgoeKxF4CUqM+1xZ/NE+y28nS4NXKYS3NcMguc8zwtuKGpr7H0mA+
W81u6H/AFnpbd2r/oxoI/lm9PBhN1xe0SzDGXVsJl81KpUOKHiH7zY7eLd7LKll/XKllGD0RnGkS
zsHcVnwtdgMulC942PIZwBDQnhoeuzs1/Sg+0x8ZeWF7IMHa3RjwGsbVsNskYNvHT4tVIZ6wd+X7
5pt3HJs+E3nY3gwbyrw968+Ng9+OcpAgSCqHFWxCu3OJTZce9vLywD2oTYhsn5gun8ft+rYch6id
S06mO2l4WX+tg3PXdhhi65tmJrXnCo8EkVaAa/kcnWjs1nCTG0NKqxV3qF3/8DkClNFCYzEmEOzg
0k+OSC1F9Vje5DlbLJcmxGgsD0e7LEYqxuIA3AWeoQdlmIZAj11F9aI5xRgQfbXODB2nUtCTXF+O
VOpN1gbRb3X9eBknsCYcgJylAxYKCjR7R5Jqm03Moj1HUlP8H+/m8/8Mu38cmrmvBobwhhhXs3Gk
X7zTP0ri99nAZhToGlpZr5YVQgLijs8Q0oFd3CvScK0hxSh+X5yVL83aI/s5QgUqZaAWxCIdrC8Z
h7IVisT6/28emUeUCbg4LVhgcmjF6JXTCmDn2JtLvqNPHhQciZTrIjnh6YtZUZtMp8OON3sDxkP9
Cw7DVQPq/eyhL3n2l3WDMlEowFSW1/AwbPGP0PvYQbMYJ4eEU7kOPvqkDJuG3ZaxHINQlIby+o2T
IQqDLhg1TxnZKaUPUjymHPpfSEFNpzgqRg4lXjCNAo7jpEA77Em7v9I9nf8ekQuRW5tPR03wL+Uo
BZ4UfBD/lkHuk+Yo3mQ+A73idEr1+knb/qoNiqb0bguqaPHXfWUULvMifTxEl6EKtzaRSgRnHN/4
D98SXkW8ohhG9EJWL1omQ5AV2tmUXbKoWzGLCqAviJjEoEsZ7J9xlmYqkMYHIKuUepv8lEjoblKh
A5NmFbEuT0YD8eEyfETaZ+x55wTnaIt120MDNlg3yWS20Ay4LWsirPyaFg+fTcBBd8bDRK0oV9cj
CoS4/ODrg9GbRaZU4hbX6gGMy+5aY5ruOCcqo3SSvqoYSQ8MC1gCWMsyXUXl/3kOjvwyHiyn+tuV
eJ0qZu8mmOEoRIRTaaGEAw6HVHXGmqlPQOxdd9XZPjTpuRfy5rHLwVsKkuilerBO+BcsIyPMj7hj
Jg+AUE3aGBDx684Ts1qB07KV5H+C3wKDmTULVkTS0DZUvCqr94UDh9jPaEgYS0HC2R/SaUKutFvh
CwfEPrA9yrMcMWyAvq97Ek83k+aiG9GoYGvn7XWNm7LxaW64c8iKfza8XrCHCbrf8rVQQjjjiwT6
Ny2zEWt1XO7Wp08L1NIU9x4xGgozAy4XKVvOuhfvnpSSO2LlwAjdFVhMdwtgq4Tt4vWkPr616HzX
ARLNIcTNi7WWNlUOSlp5rmeeYFUWJdOIJ7RN4g4ThvA+UVUhH8p280/BHlhyQZgN/XH7fNsjL2e9
CDu8BlUoNyUumGKok+Q0JSq+vatbQWysjyuFTXYV/ic9Q5hplr8WAQW3JYwfG4GFHDN+jZYdFuar
OfQ/0as22e56YVvfXFz9GywKw4sIU7Qk869LFX5EQ4j7rppa2VpuSjXspMLjV0tbZ+2UL7ZxYu2j
gtCHlQuVLLetv3a/uVC8PftUjjGv7N7E3xEyMz00BZBX110M69TcQedfm6p8sVKuBm+Gyb3uQjqf
sGGn8FWRSaOeDNkKwoSLSk3OYIVeiN4C5ifv4+YkZZJNhx8wj2dmKc3bKXpjDj8coiCo8xQ4DiQY
fJVq+zbKa7htbop4cAr7xLK6PgEFEFFiXkNtxSa624M+7Et8AVC5wY7/GMEckFOcynUfm9valR3h
nMI78/GJPjQ/vShzgcYnriljdhfn7TBrww2drYeh9JEDZCkOQDEyZln9cbnX5fqoFTD8bd9vAc4m
fqBoP4go7A0gNK4eUcsv+87rWRu73TrZXlHKsCIPUY4hwVeqf9Rx6IiLGb4y/kOUBE8p+aGZHHef
GLqGtWUrJr9/StsakaIBlDQ59fjIbnRm/tcE3rgkw79XWe9jiEg+yTrnr/6hPieGvRxUfow2+WYd
713eSrup54PmZ4BA424c4OrbJPHe9OtMZfUEXrvRZDnh1VqwG3Wq1X8uFzvGS+VtGHKdh8ezTMdh
OknmJs3YttmXd6vOq3i3G4zd0BWpZwOdHjj/yakfUQUjTT2DajAUVB+AFjwDsfn/x0t9AAtrFcJW
Q/4B4YgH4tJsVhO0xUh5JXBNziSAQ1/V1M1X5MSDGtS7dojGR0FAK15rGzEUaEMCJtQyDqzdJqKM
LMG1WOp7eIb8uCR1XfwpKBf4RZXc8KLhPYBU1wmOFZ1dmhieFfvljg1l0MLZHdJDow2hU3C5G04y
IK4dTjBsb8rv1I1BvSJ1EHQUXbPDZcFNDSoWTBwx4dfLZcOHZ3DdHdBTqonURDaudkQ62xrfWXCN
GXdXNSRk7q25qPafCRkexrcj+4yn5JwF14ZaIfcemv6KKn7a6IlOs0YOIs5T4r05SFyXXCvTYbz+
ht569EKMMhOzZUnZz49HjUwSkZ5/7UCJJKknsJiRAuOuNWv59j13gkQKE6hGMEldRWCi6i64LstW
1GcX+Za4JVsQw8BzYUGau8+pFOw4tdyEsBwrdiud2Gou7s3kG4OtqrkSGlkNcxFGzHFKh6l3q8HN
gU+X9f7gHlqiePnFV8D4fvM/G/G6l6rZeRVsKs+idzrj+wN3mjyQDjRTXaL2qQDoA8AduJvXGBVv
4lKPyhUcviaL2lAsbYDBGkIJ3tF0faQSU6QzGBmK3nxgtXXdPvAefNez5mFF43VrE0RBkXPtAOBO
/7lgRTVj4zejpw27RaXlukJmOcCHJ6AHq4lP/yLvy9+rw2HO8r3t3cd5Skd0p4yJY6XQ0ooqEJcR
gaT8SVQ9Vrf+8c25SDbJiesNuT+y0kBuLtYc4xoAphwFZY7QBdN4SRriZsMLHbKdyB7NyvfZXmc7
ns+Zank/JEpA+W2QbS50NhSNHx+93NeI8duiIKknDZPintaBIUBrX4rr0hQq9QedZoSRui9nhFZI
VTCJ1Zh2ZbSzVr9xYUmNQhQ5G88cOJgUkXruhjvqhnjbzpOrlX7XAL51WpiZiQ2AvFgG5gMksSMU
+mYuYhpa9RyuwDb07XR+yeEQthZlXAkgz0PsbqqvoZ2p1773lpe7I0vsuTvCGw7XuA8YbYohh0Y+
Pe6s5CmnLsb6B67lJg+cqnCh4LuwBjR7Wfm3KGaiIUJOawnbVTiU6fTab97Y9zPssPADSCTl0YlK
g0+nqLFR5Wi/CbhoOISweYb+59EVgHdwm5OrPVQPj78xuI9FV3nb63vv9DJ08dzOS+B3sciir3LY
rtK0gnQ2dlYzxnT+fKwB9lXH1kqfb/axFdNvRh/Vxm7CAKGfF8MXgI5v0IBkon+SZGv+yh2d2vgn
o0WaDT1mioihrZReGr7+Yn3lKICUxBj5MnR+b2P+pMB7a2skDfbfyhnYbRoGP5vdh4w34If8rM2J
qjgnLKl8uXXYAIibYE7X3TgPeRpl22yxhKT0HADzI4UEa1BnvHYaJjhfo0ZvqAX4AfcQ8iQo7HpE
vnS1AwLiu5V/JHuH6af8Yg18TbioPe21D8jXiD4UB1q2MUWRNOpVR2EngcuB5JH3u+nmYLm7dWKL
IMCdJfAy+4GQvcZOvyNLc76bXP31wV9qcW+oDROJQLZDncqIHkOh3xNGeRRFkYwdzFjFAc8Hwuix
b87PBe/tQJRebzAKA8cN2H9qmcY3SfIFC5qklSZCrF828V4mANLGIjTjzMktvAa/ccY6NpvllWYs
iQFBvzwii55xfY107jA30iHCX0Sb7vhh9zQtEwlXvsSrW9GqtgE+ycT3Go+q8PatQELwiYPV/LqS
y77IOzm3isLkQRqsUTPTJxJDBDXCOa2r0/QDuuYd11Mmkfhs2qGQIhne7N3iUIEMenFrffUuhTco
XEBZJxPNVh4h3Boci4sfHv0LE6ONKYhEogRcxNGWZQuQZwq5uzj/Q/hKW8nff/vQtbGGqculn5Nr
ybiVmHcd+/tTsHyNrxkaikcaNsbGItISYQOxX59esINnTDN4UJX0uyitZMahEn3Y8qkMUPI6NcBU
Bd7sn79uWWdNnqtC7qsFpHXMY6W47qHXE+PG+gFOHyqCIIcQtnc8NG8l3mLHQgJWgwTdtobIszI1
F7GMiusxYdrJ3W+zJEexYKuWBZJi/sW80fmp1ad53+bxXoFn6JaXNm3z7BVRz2XI1IhAKF8uUqzy
FekNXmaOxtq/Ihm9P2eyllnKu1zFZ1hZ04b3GeDs8y/PgFi7fkE32lu+N2MpvTjsxkV5nGM1+j/M
PDQmNHShdmUxqZueDvRXlU6bjdoIT0lqXNEMB76+IQFhmPCnf2NqDZd6v9rnHEyG7dM5DR+AZKhu
wgZU7pK7b7J68A9Hxf+zT+z7mjdhru3FC3l95ho1UVSt9vht2yujwDx7du5Yn82fttS9lUdjqS8l
JtuevDpP8xEnx+QS5HnSdp/mg1DIXOQLkBsRtiedzfDBQJ2b9c0p/jlIpahChed1NY44yT7MSTRX
h6Cg8Nq8msgGKVxb/pwWX4C5zKNC5+tp4q8aVI02f7NKqjrS8YkCbESsaG1OyUEekK5UsDjWKJwl
fm4ID+rALkjiIqkLYVrxRMIE3RY4eIkibHQQ8/8h190LTSM8O4HOKdzKGJ3zCruPw6hw605GfxkG
MGmRV2P5BMeXZVTFr1w+pzrdvLqThPe0371x3W4maxqxmCrQUhn6TFCVURB32R6FJ21PLCzOoNoX
t5evH19oNFxXeDdJzL5NlHwd6BhKMZpYWAtRlY7v68hWi8/8q0B1CYMiKEmY02gw8Ql5JVtlx5+Q
TcAM052jHV//ELjn2msxAVeSCxQ8BwdLTA+dJ/evEG6O49n9XL9JOmKtF9lvHxA3A88bhI7dhcnT
u7sDb/vD4rzVcTfzvyeilSrhw21PHCSr/Ws6uYadlPlVUASc4x/sG86dE686Ct5GNFVP0L6zPDxd
ii2MaN+p3Um97Ov5nUqscvkuVD28RgHle7KIo1Hz7K/NIRXf42PYclJt6z03ATh2Dnxu1SXDgIc1
oDOz1p4mivl/MlmnFy317QQlpvX6lD9jNnCYE0CKA8WAFkA8rXdjFy5eO2cZgDKphkOQpHnwvWkm
eLsleQ4noFAIWVozVrc+ifcICcooVKIgsEgtUpmF/JNqDU7FAZ5Ch72NwKbgr+EQ4nmGNP65+3hn
7o5zGVBzcYL6y5RYe2KGvEbuMhFxEVZnSE5k5gbE/vzqJB7rI3z8cVxTK3PK+sTX0epie68ZJV1z
zMUAutZ7AJETZADvJNRdPfc5kksf3/g26HfRxkNVblV6+LQqsYTdQ2c9eLRNVU3BOF2M1vlf4Tb6
7Aw/bBfByHogVBTNZAHmDhliH8uhNFF18+QYeL32vkMbVvcKdANj85DRsgQX8/k7IcrP5IeQMYVe
uQeD7Ee6FEYCc2RULUD9X9XP541TFHpLIy15sJPjuEfgrpg3Zi8CTcp7DYnDavVyl7UMO+x1h5vz
Ks2fyfaJoM+9wT7U8MZpxHIHQmYD1F/z2yu+njcQUtWr15ymtRejFzHZn5N5os4ppsG/jqiwcwc3
OPqu2nk+EVGodR6tc/MTq4d8z2nJwvNUzFIB7KYgnZxiOne8kD7P1PlXEyVkV83nF3QpbsD3EF/P
MtjyrNpYsXOvd0NMDBa1mhWTN5u870D6Emm5Iiu0W5Zho02nXTHTzcwZqGEE0R8Rc/e84TDnfPdj
ZoYeZ9sbp9/qgwPjOifQYuD+lpsC8LIyVl5oOSElqfI/HZEqQ25mnv4AH5j7i4iLVRdAlt4IZ8lZ
nUcQxNlQ6HB40JKixtFgjZtvVssAwBDB8VtlKkkuGxQTaABUrZZQA69oH5SMvdyqi42AH6AII7Gd
MrMlCblF5GA5RTHVhZtHBF1R/+EWIRPM0V9tgYjfnS+YvKNboK3waS7lvM6wl1TuwSyxSk8zxJXA
XsOfHTt2qR5/uM9tWQy8fKZdCH1fEOWpHjCLdbST5xu8QroNKJdSNI84anKi52SIFVwSR+8ggbcD
I9eZri0YqxqKjBaF88jQUacFim1l8qLaxqdoagFfoyLeVIn24eYSj2PMjwqyBO3WrLqHPf2zoBCy
k00ktTIqRjReOrr5EXvQuE3gaqm7xKRXLC69agwz0agaVysF6smcnXgh6hS5nybOtHU1TC7XEQlr
r7BvKGzgz4ruCClJGQ+IUnGJ/Q27RCQcwh7aZauUxN6rnkH6yLmK4MwGbrKAGAxC+CEUPzGtyoXp
I7cBWr3lha8U1a+UW2aMvEWbUKsmDQbYRndwR5+AGas29rRY8lmviBH910+2+vQUeoK5zGxhv0Kv
7efEB8btOetXBDQcEqM0hNOQT9i12fQSAPiEvaUCUSyE6YNntFf0pcl3EP+r6iVN+HEh/7DiiiBm
Xjjjib8t8ZA2kxyDbPSIvrbYEMjB7JjKPHOmCIIU/Hn9K6i0wprVAdtq6VWG1bsQyQqVKOdyw1zQ
seIP7u6gdUPW6FTdxI7o9W3dpvJB9S8lZkhxlzARhA4AL4RHgnigBjdJfLX2DvlAS6DRtpzJ+Onj
wDA0QlO9+EnBJuL0VaaoBpcXr4yqoATVKKHNlxhH4siMhoU/RBnF55oBXiPofViCo/62ceW5SA/2
cUR8NCY0BSNKMPTM+cUFFqwZfv9IAyn8jF2A664rHXV9gO6XUvxcEiMrMFIK0HEXGiesaJ784jWs
bbBdo1zoMVaVWbWptu++r0/HaEM7f9rHjls4ixWL7Jk9+m31kgUvjjL8HSDM3tnpGlm4DKYHrwG/
bDyC719KT3fc9SjOxWny2dNEiuLqNk3V2u4JVkz56AfUjUYeiS+3mKIA3EK2KgdvQZBf5abcZhoV
ts2bimxqqZv6Os7SsFXnJ0voaQ/TCApGFIe+UzWRlxTq6IVWbAGjBY+7529+LsWy+3C7LMZ0msTD
2AiSPl1936jLeagnGKG04kutpFeWZNB7Dqvr+3c5vvg3nEkK3EXfO0tVD3xHq4elbzBw8vq3RHlW
teqY1upI28bS6uhfCNAeqB1VapC+2UyGP6POy1KrTPy0/Ba7Kvhc/f0+BPge4mHWtcjYzlfNtohF
ze1wHrXalahiZPcu6hAXJ17FRZU7fgpztKuXRKYBWCnqoBS08tATfD6hPRoDJ1FTIx7NYRj72Ptn
7w3jz9yBKxfAKVRRAbDAlYZOjoFoA1m4MDEX23lEJ7JqN/gxQnvPOoaaKhRZtfL9EkNYNzORMSNa
9vQ0sdllPkM6N4h6svMJvgNCu2Qn9qneEad0RjfW/aEslBqaqNyObffq3kEqd4o8nDL1zTOtDQ/l
uyEiGkaIFoh+CQJht1u2RjuZTqe1z3lljTKHRyKUCVmY0R+pwKKM+jq2qWeGhplLbpZ4PwWCxQGh
+zA8evHC05GVOmnah/WLHZWZE89z5b5i/8QcRATc46hQCqgBO/nOJl5GTwDqrVGKCt0YDcC9YzJ2
seftlxfk7KSMFkJ0xgqmhG5nBGx0RDsal66Zu+2UX0Lz2hQgmPJ8+mbCE5rYMo4KhPkvnqWdE4If
yRVlQSxoVWIUKSwmHG66CS1osOhZV584FfCrHaAAgwUheb2L+PFyDHBaGvc2m2ITVHBPh6aA5frt
+Eh3CXLiMKtCNBFBvNcoJcUHHtR2KGYu73i2/FC7Mq4GiGsdJFoJkaV2XyrOrNEm+B5Wo6oGGKmW
eNE1BoAajZkdfufAyxkG1wthOVzxnqQip+HSbrEwSNd3WCJNpJu0KMb1IYAUohDStZxV821WNHfv
96B8D8vWYB3jsxgqkpp3FLongPFTA96J7Jfg8ia/Z2I6lgqpHNHD83/XG70E8lTYg3KVV+BiG8Zz
0dabTXXzk5lui6R6uGAtIquFSb8C7k9kKmDIVvpe4yxT1NtiZ9hcf2UsnoxHcZHGf+6kZC1FObYS
SxgvYQ9mfuP4j7NRL28Eo1L69o4MdMjELuELI8ks5s4S610wWmzYltcgelcTOWwOJ7bDgeDXQAbd
KfBw5pCgqqlaR42cMengeHUA616nKXFzasIN8/asuickubOHzMO6BP7ixPZZEGngs7hExuPYrRSr
m40qr05LZKWV/PHk6Ds1uGE0XelfR6dUs+1wx1P0Uvx+q72I2PIfhpziRhgHlTN7OVxQI7NHMSA8
J/K1Gyi47f1rIAdV4W8goD2+yquXYKoZpXlON6Tg+0aBPVEsaUED5kKKIS6a4ZKdiCo3weI+TsSi
PpHP3WRMp6nTyykwNhbJOaXD4bKDPrOnClbATlyHuMXR8RbyNyJkbuil9+nVsj+O84lB4cSefl6u
SuZ4LpnRx45Q7+2joTtoYj0hCjIJN5CTBqHct8V/STwSvgkd248YqL0l4I0dXPO8wSgUfJa5Og2C
zIrlzDypKVOiLiUFHptdDHc1ycq8wZrKhYsuV+BYWDCEJxA5YHmRIQ+ybhHjk/ZHA+0ZT7I/5F4h
sY+n//Iz+uD4U9JnErgktvWfLGGbNo80qWxb8vulBeIddnSqqWfosPb835CIJiMEHjsPMD4MlT18
RRoE1SVvfgo+RuFP0OE/JjWNQTC9jumQdKwvSp8qvAtyuwFRNjr4LepKjReZeCeLwa+ygVYdmTVW
VrLcec+dq1JTtWjKDibA1y/KjnMixnshzjUN0bCh7dj6Vi792hdcbNR1F7PmSZ1WlG/3WJiaZ6Lx
wxL0eF8xeBW/54zTN2K8rJRYTuzoeasUfOW+yADco3mCCenUJTzSZjWKwd8CxC8rPZEjfepEnKy4
M4MZvI6aAyMGXPVROD8noYwyRcfHOEYNhsu8HxsGorI2JkN/OPxztViRDvH1iOC6/GM8xuhrzL2N
B0wVWTWnlY53mId1XSFZs357FoRuVeFeDBzWPrmtyAkMwyhzgD+uHMxqM0UlUYd/t7iFBR32/xvY
OtgGqi7/iu1Nla9OLhx4eMw7uBXdKbp0RU2H2gVp8ocqo8tgz3gT15rECej/w9Pp240cVuZZLwFn
zC73blbJV3vXThh4L8CBwaFe13xpNAaOqp5q+WNSczSB2hGhgvSQZHA0GRMKkIE9M/VCzy7L1Vz5
CPjpyueW7cd7bJGYuWhUqXngzpbJTZkEW/P8atoUjJRB3Z2OTFcoP2Df+3YJ4z0YOHOYKxugx7j9
9gfblCWjxYplDvUu2+mVmO/NrByHPmkEriPRr0vqjcxe1iXMJWAqthSbFU+GJptxMYJWfL3/82vF
dOh/vQyjRAoafidSJPiJNqVlmzPA1PtBMlIxCGSGAqc2FKES3oXB0GRyOu55s9+MMIX0q+b9aWC/
ZXvg1YuyG+wOSNQ6wHSmXMbSHpltagzMEMZlFZcZTejhTBT78IVcxJdR5QxKigG1QmPptavAE7CT
QKPJqwiRANM+ov93YCoeqocn+ZraEyvaKQuRuHEL53oIsGoWdUXlbqpGJ8dL/wY34KVfHaA8mwqh
bdmXe1/E+TOPt1ztLQJi9rjrxSiHBEKUz2R05ibRxNIYC8HyiLfvamzJvsdlVE6j5YRdHEr4jro+
BOsJ1tjRhvqmwvCvbb1OeMF8J260IhHeLDdNRzR5DikHfRXDZCsCSXwIiqBMpUMTkZo+bBNH23yg
9H0ZREG3AY9G+Z1y5yJxYHGtZ111F8VGgOdhaoO1JamOBJ6zyoxczsMgNmrOqfwwS5skYJL+tQW3
320ue8n8VrP7u5+wmynbZGpT0TvRCZOjOtoa0Wfl7UrGGvhGaFRpn0+Zvrj9UmQTVBsM2A3lWu73
gz83/yTWd2280/SU0KWh8zbGycpIjOG3uHyeiKxvvw//NRCJW+4gUHXYuxRxCtPyCfDbO59BOwUC
U0H09X6LZ4KpcvdziJqZIK2XewdGa5nRW/2ZGs40UfQJ3yk96MwEaI7jPfoMg9GuBjoYQPRp3MQz
x7MC/Ivbu/e6xkAJfAff+gxtuLFeTlvvVr1+dxVOx56FB4eV+EB7KtB9wmpdN0w8t3Mswi+zCoxM
/TZHxVTExoG4zP4vg+FEU6I43Xvy8S3qJkrWFkVnzKh0yDdXLC5g6udW+jon0x31mp0bTkpi7+Lp
/UwlHM0L0A1OEP1cEVhFvyixMjmsGTGLlU8alGGDuHPUeEGfQTiBU/tt8Q/bhVGbwLEHwqEfhYI6
vBeiHL0NlOfnHhxzmT50Q4jZpIml3aMQfT4v4IwzGrkNuWdOwxr9cGgtce3GYvkdbt2BJfoA6Omm
Z6dppdAQwQSsOVyyZRjUwuuZWasmplxMFQ3rA2g3zyjubYeD+cDYMeMuTS+oRdWLRCGGlbxQeez0
5eyJxcEwkO72HAh/hcSwSZcm6JuwApmjIeit5QZhNkrABDmtx55xhLkSmcbA1lL+rFnwraD9yX4Z
/2kkFNps5YtpEWTKTHw0DlRjK/7tpqz8w3IANhMYpqdKHH0fL751HL1IIdgZOqzMfMrclcWpF4mL
5WazdYEbZMKQbkTNRtAPz3WhOak8WIXNsSTjlqWWmxHvGLMUBLs+Db+xZzYudEgFe8TqC0Iyyd4c
fuZqwfDJ40bTlIVdfpdo1u4ed7sIONNDjk/yl2Q9fc81AKPPgpXq5JV2dEUBXvwPYjOOiikX7C65
vyQkgKUqKHb8J7y2ul35S1zglc4YYO0SxZcqxfquKeYthz/CLs7tn621emfxTgzYoQLPtWjPbCIh
yKr3qB3ZsE6yLVtVbUOYpj6hDMzMWHs45RlPG6qQug4qDJvxL/UCmnEeLxzMvAvwVhxCdKJBMOfT
lRN4sVZlLu8r8GMU64KgMqsZQFqTSrNOTdW2X3L9KZ7KfX00vVtgxWqF3LK3Pp95mMbPp6cQ+q2A
Dzecky8kgTyd/d/s/0V+Bli4B962HMg/jp/verRLUJ3092wCHlNRuK4cmK6dm5Gg1fq37Tb5vmGl
lqss5QqtcH85YC/rJigOAz/gJmnKeIzZ2sa0Y5Dzxl2RTIxafLZcEozfDN2DyNZva6dgWOqhuTLf
qtcBjzbLULVk5YB+8D7XE5w1k02Alco4kTsf/sEI5UUJehLF/PXoRw+V39mujXL6HE7xXJRpLVGS
BKEBZsMP6UVIT+WpN8YJ+2LAi4tzv9JcZZNaKW2s0HLh80s9EB0WEsyAp8GgAWgVd27fwxht7crx
EAoRX6xmzUaMVEP7Cw1YjqTeEvis7lklP86kdf3XlSmDsajARcvVCfEgnIQXVURkFNfMBfZiahCc
hR5QW0Sw9g0P9YMwGxHSgLJ1GieNSDtxaYjBFpOapqFIqqU1GHxrvuzTB3W2IICurZ9LK/2I9CRm
ZXqZNTs8ynL6mUfBly/WPJSiVakwMKHSLMyJCCgVL2dwn3PcH47KewIDRVTCCPJ1+Dfcfh370ut9
FXsor0siI08rEbHuMDaEFYPnb2juOvn9jP46UOFxIaGAyQdyZEx2i3jGaIm6iM3rGs2qG8NIhcJ/
LQ6+qQSoQL23uZG438Bhu5S8UY7S2rZYtGqpxXf1AmVdDoDTrPD74eCrAhjcnB2w53Mq7pfkANFi
b9ABBWVT5PmuIaCEUlV45x75HpS4P116LauxO+t/Qd9bjHbbRVBcgMA/j7ubi3GARt2j7DPnfYcb
LC7IJ2PnbQzKa6lVEiRAlwJ18MoZgqMLQaowk6zZNQmt2pR3mFQxx+5eLICNoygJFZvhCUYEgB94
X8pSmNwHLw8cPfiqOltRvJbWheQwOokIrqKv6OIkYBMYrtXkuhAH0M6a7h93GSfCRmKQo2DJuyT4
7vMDAJhvJ1eDr3Z/ez7qfMZwL3OaaOFVPc8aKe8nnoJ1IpD/im0Y4ch4p0V8oYItI9l2KtkWpquK
dRzqSwT/At1zHVS7dv4/73dB0YCRJUB728wUFW3K0ZM0vXlA2SG35pcxHMit8Z/ltzX1Lv/GOPJd
9wXcy2dglzBLTCloI5FnyGFAsR/kxZGbOolXowFDKU//NfuxaCPq1H6XamSwkPSy9Zm7eiUtz1a+
jkFUoXi8lLhPfG71xahUeFeJJbvLkOgs2sE54yftgJ4NNVfivBVIy9j/EMK6/giZqoDQKNL0EuZa
4Q+8jpU0GRW5ZJPfAotUqO5DMVbDRZgQLGuVuSImtbBBC0rAWcckRbnWJ6tGw2nPJ8MNCKHRWwpr
TmHQgHN8N5AKpl6all1UpCZaAYAHiisOGEalzreLdIPSnsCDuLxSNrOVukS7QKlXvbd75QcV8aVR
Tt0z/PVtA6SAsdgjrxo+lA6j6G7yWXVcjWFDG6wlG2u2GzwRz23UaoL0Qk2aKfodfGURB/SEzMDN
pnkGNCdkVFhk/2Zc6J+G86bg3w7OHaHEP8157mz7R1eK+5ILMn5CPP+fIcJMSLUaKw5gDeO/Y3O+
zlbypN2u+FuyrxiTo7WlfqYQ4SbHXFNHNSldD5BsaF7Fr6o+ZINmRbr+yGp8MqHunkt5QFPPwITi
k7Udcgu3w9H9H5LoIHgqMpmkPwyhivadR1Qc/yno/B28frv/gQNrOcDl2/skEzTX4XUI2sxiF46C
kfQXQzKto9EGfRWWErW6RQgvuQtZdCcTDb/Y1PL7spXNQ3Sr12Erzmvd07uJ+ME4f2kpzkfYZqYo
N0DFHMkdWOjkDFcXVJW0pNuzbqv4OLPrfTZuhEinJiov1sSTVyvlmtlAE5GVTS03eU0CHqUDYUBu
q2NRZR9+MGMgOaUqxfrFwj5OxZ+xT6qYFtPhnD+X5VrY60jByiRqGSkPKSWjHmaXVczWcZc+QVHB
jr3HdiY4omE/wGLGJQnV4J2AbOhBNr6mvW4psWBnlUScf2AIHHDs1EFN8UssBwEZZtpKOUCH5fX7
6E9KXm0ziSbeYNn2swT6GhWMe6mbjL2pm6DgEvocwVx4hd9ahpfSDG0RH/DjKIiusVgS8BQc4pFK
TFGvHeRMQtBofUaw6mspR18OJpl4YJdW45OU1R8yvFZGAU3nJmE8b2Mx28NxxzOE3rHLByEzRnyp
B/Uik30mDYUlxzOlQpfWO/XGGWFJt5gSUi5FVBObMq1TbPefqU0AS2ZlcJYicoDYhPraJuIJkbzU
RIpf6m+Ljx9BFCaljbChzul/kA01AsafJnIp1NZd7wsa7pn1U4Q0sz+zAE1He6YVFC760cJEPgNI
zUoXbTtMEv12RP2m7thAiUVUV6xfsYJARVPwPoSjjPt7KPGTyscIUO9SA7qMvNd6oqEPLpmdUbWv
jEwfa+5aMv95TO+mIEGMCO18H5nh9yqvxf7yYH3pL6+giMjEZSsLYxxB7iNJ28dXcLT6JSN9mjAB
Pa/cxveskoUmoneUQOmuB5/k3bat5wX0TrWFQF9tk1rkA6+f4PMdE10/775SwPyR89NuQOq4jXCY
FYueA+l1Fakn5f2e484nx2vlbimSHKipndnVC/agP/KuxhD9I6AkOwH5QRqSYeUQBrHM0mGxS6rw
BaKnsGTvCnw9bTOY+XtsBP3t0NO12QObGLLn62DVNAriGlVHTUuoQbGmgPqi1aSagFMJoQ0Q55Hg
MSol+YJk3FBaZhMyqyEAojxwZg1c0inRIkJ6XgOoyoJ4Tl/yeXMWVVt3k/A9Or2ZglvYfdrWCDV/
HWjviovI3NzvHJoIGu7+hScGKYcjmbLjXp1RdrbuI/AZ7YoX+EMwZkn3TlsES0y10PYKA8mkqLSs
YnFf+r5iJEK3cD54AOCkEqoBNfLSclLSYdAqJk4gn5ZoyqasAmt1nksNrrbbQ7i2GxXB3+L8Jsp6
HLgcFJCaE4a602nSHfJYsLAj0m78BjR9X/Rb0+kaT6GsrG0ixz1GhLiddG0Beg486+IkyWFx+A+V
d2y1EH/3bPBGtjeHool77ws/hjnYR910iMIMXZ92U6WV9rj6i829UUKNUi54izxdq0N3CLMuvLeE
8ItRf5qNEi8GAGheUTG28K1TqRxyN9aMLVHdAFuJd33pY+8o4iDGReziDC6UYG6qi4cPYMuIXWeh
X/ipOCdNidudrW9EQv4e2tf2eO148Fobd/4VxklHVdrmxpxm90dRnVa5pAmbwn9j5M7/x2/R/gYl
Egztn52e+/cLKJQq/KdIhZ+1Ip9Fje8UpUTF0/Q3io/zn+SyHUn2zTmgOFxyv+cEUcnd2fO4mo6Y
OwQe/RLs2nwRXxDN19t8sCEMCx1+6AoOJjaLUv+xJa/Uw/989dMLh8GzbxLPGa7KmUSKt8H9w4C7
i6og8L9XiacI4xeqG3RZjMmEzDMkvq3MitBOjKRCqLKpCP/T1ydzGW7k5UvzFQ0kaXj7lNPowmXL
b/RHA99RyoRID8vfuvp5dMew0+YiEdm360M2/c+9rqCfH6LZW4G/KgLEPYb6Ds3nlXdGerqrO6kr
NoFHj2b3lBcE6eqLb3E5fluODFz265WVTveYL/2JIshHvpDnb/CDaBWJy+GwHMNkGC6B8cHTOkaH
D/Ori+/3KZkWX0Ah6iJOwGHHWzFj0zTbVN9ZpzHJ9JTemsB/t2w3EYngiwISPrCP7TaSYjB+3ax3
R0SlPlPdUb5Wc0WCfaPcI6F4u0AU9JZGBpyYSD25Yfoc7P0i/0JwihJcF37r9IpAs+DSL4nI/ABZ
urCZ7C83tJdUQ8z5G1orAMaLWENsodD67icONQ6IU5Uz8ysT/UZsX8EQNon1XnJE4i33iL7loN+k
Ki/BeFgcFW7/pttNSquNCADVXhrP+hgpYCUt6CtuGvXCL29xQ7T++8H8Z9S8r1qU1OdFgnsKL07L
fZGHcw/Ll0ZwLnL3vdtfgDbKmwKfPGfjOL8qoV4ELLbC89wVFZ+uqmVknJZwRnywSea7+2Y/UKKl
v2r0qzGjfvASNMloBK9LTg2imR6Uy+c33P1KH8ocCEbLxzJnzdrlFDO5f5bYsATV8dNVdJmfDJ8Y
wYBTTEEBkI1BP6r7qFSNyB0VXo0IhNWCIMsY6+YRABrezy5OMoJXSY1clAcC/CDgKfBUxZBsPe8d
VuwqN2cfoglp5XAVCwEObGQgNxdqU+n1hN29seYMUEUE43Bzb9trIb1LQLkOX0h0nMKp814JBKvM
DV5uYiqsCmiK8r0xJj78m7d0UA2UDUGeirsgftWlJeyxfD7N/o7xWCxdpZkQt2UDac2Y6IhHy3Bk
AzjflpeCQvUk+qUyrpv8geJsVrLF/ghrJQa87iOIeQ1PW4+y3GJE/wZyaGPt3/p6BhT6MV8lumAL
LdNMO7REXMtfOQEiTVylFgMuqnWEnFNEXWkEXzh/mUNPicP3A0Q/pdbCxIBTe5URbzS9CQOyBN4l
SAdaWzy2hAYpMF485loAQQvIfPfO3+5nBchPbETcoJFBpWOoVrGCyzv9JOhWDbAejtwYQgMtB+ee
kEVPYVtA91vbvaUiOUkLK9hh2waiJjdMiZyDBuDpxc02vBP1c8+Hg2uEV69yQGLM7BJFJb5xb4jr
QPu273lMJuywjIQPukizNQE/zq+7181ullok10h9MksgeUdASjdI/Y0JkrQH2A146s07WaTnaujv
NP9bYPxcNp+uKv7007Ar8LEfCidZeFvyHsP8qxa+kGHauMhvcS2nxFASTsOfM3YnrA+836AEODqc
UyH+jOsezhLjqeo2JkX3i/O7nf37Ak2pf5POMEmVKQTyXGr7JjGdsEJN/Y7i34idrJxiuviKGvbz
buRuTDfaZ1/OS5906W4Q+kk4QI+r41NvS0de2wGDoA7zu7j0mPpn5onpcp0z4Gg2mO3aFFCWL5fS
tDAkmcHbnnxcVnsHk8JXL4L+5QMd3Z2ZXK78uRcJ2SFugGuUBOwfdiKINd6NsMy6mKWiOgk2Xp56
5N3v3XdX3jEd4ned4N5asJw2yhA7hY19N4W7xx1VTKt/A8Xcf6UOMNAl2fV3ukkte2zQYy6Cv4wE
KN7gYlzwwWlE1P0nfdlXxfG/2X9vkjoyEYVs61HP/nWuB4av91pByxoF9pDJrWjRnqThPv5P4Xdr
vF8fiRy8AiZE1VkA/fHFfWXk6IegOAnr1vP3W7a9D1CeDPpEFm05cM2FuQTW8slzuQxzVWarnxTr
EdFhTLiFzVt1p18pPKWEAj9G9FaSHc1cTr1Xe2CNNb4/ANPeTFfBZBmw6f/EYMydqNPUEDFnMcQm
AWLZv8BmCZ2zwKivx0vSDxXpHiSqr4Q3tSBBLYaX+VygdWvTWslPCN+pwBmlCLh9uLQ4qBoGCByt
QQ6wdlStK+6crJD/NR/72xcwK9n9BG6acwW1Ku5y9MlLRhchgnJ1h9mh66/yqQ503RjrHWFuVTdJ
OiSWFsnCeS7i0uCt0uNsXWarlc+mRvw7Qx+zSU+MDgz3UAEX7aHfgLZJUojR9+783WSt/+azQ/6u
BL9fLDh0/MJJasCd3RtR3eOuwl357JAJ3838YyefpaFOR0u2mDizzz6dpyiLoXQAPZ59C6qIcAqk
WYFkf/k7M4ENRJmtUqvHRvsVNs2uyCCxgjSrzkCdgkfc089iqAVU5hdaPRNjczftXnPHTxoW75xG
oFGKnNBsc4AyhD6FAR84B1vTBYK63srrEG6PJJ6C1J1RKIIAQAN0PHys4a+Kak3U2me9ygCk8wTT
c63hM7vR4dIl3vdImA521jlHU8MSoBlY5HysOYK6nH2OuNpc+MziV5M9Ny6pyHJor4mH42lbOd5+
RIzDkByOG9Zih3wZj6nJw9BaVXji5GJbDbyCgzU75xDJe49G9GVjoS/d6u14WCCWhRmCQEH+q8qC
eUGGAUF2abBC1TcZVMrziiplHw1larCnZISn2DyRZrvHZGwqLxpXllHQkghAoZwqclxdPSIr6awp
WGenTJ9TaHKCLHj1GUEYF3xSUtnY3QKMirr5c5+sSKIAYPiAEC1+ZTa7HRuzoP/yoAvcvzMlz0Hb
qv8R/562TpLeZr5DYvYtfeS6Vqll3CNC6uisvf+M5OiTqhzE+nwzQZx5QJEB6AB0DLjhROXXBpxd
blcIlcOo9hb/iCXejJzmuKGuVycDavCNDQCjVagoXNanBgO9GScVHbs9AsYqld+2uRueb5qg22Y8
GYjJulVvp6K7TXHWoLK/W7U1FXZINPtxZ6hZOktpONq7M7o2t58qgJswXf9N88PZI+Y+rpCTWauv
DxBRUVewaXBcaANzukvQ3nqtyYKawlgEaoHomaTIeJOfw+domuB8oHrz4QLnX1Dxil1nkd/ZWMGB
xH/LYWSK4qDa7VGqrRV/ZAgePMf8fwlp6TIcGjRgP50Bxtpeq1Tr+WsRZBGprypGdSk04JzZyD0U
jaqsD55Ht0fU0Itbto890sJ0nePaGxXOn9AJXHUqw+dy5fCpywlU20rdaPNc4Oi7uMrljmxnkHsH
M0eM9tEgiqhZB7K1qOk+99NaSZobOwg+9tmdwW/n/Qdxqs4E/2A8bRKnxfgpoCeCKBHQLYrznxLV
5XtMhCQ1TvCslnnvHdhBSlkqyiVtTIgCCbHX6dJ9KCl77tkZImIBsCxX7pt79oAnOOuSmjUtZDBU
/ZxcGQgX1qyiV1UNjJ0RKZv/8YRB9CptFGDql7WfH1LVoR3cwQmVaz2XdBegIZOrJrG4O4F5fqJO
swKL8SEejgfP0GNwgracB9AMmQZCO1S6MI9tNbmz4led6kEJF+WEEOdG+HPeiv+H3p+yXcm4gPq5
z9URAqfCT5MrSqZGouu0hTHhusNVBATzikGrTaNa8v2Nw+On3f6f53Gii/Le40vYBElmTnBQpCXq
sd8UPfsjcwM3ZpIl/Q6b68cPu64ur50mTMEb6XLaIcd6T2GutjqPV//R6Xko3IgF0Fb+Kg6ukjT6
TTqomxZk23ONAfA5hWxf/4xtIItBN3klgyu2HvYXu94WujojqtgtzmqlJ6EdT+2muS4PSdwk4lJ+
Oth1d8jW83rouj8FG2EjQzMjlzqzY7z17mBUc+8lTbFFlb8TnDgXV+U/L15rbW9zicm4IMs1/wu8
raDuo7bUI9bnlnGO8A7XO3Xqrjm2dQQJSWsKYxWxY9gQOTdyXppTmMdp6lfyAZKCE5rNYV1b5M+S
J1h/tH++Ep1+uHYTG7k/nGwEvBuIeciZoZjoX/KE3lDF4PdFfe6f4AvNUg0R56TXVbGwY/h2BJnB
DJnGCSjxqNjQgixm2jlLKdDyOQ3Gdpp2tylDCg5GoZPVtr9+hobGHBubGeZYFq/MIfOKP9MVLLNj
Jqbd0hBgTRb/rDvBipXWThk28fX6y9px50PcuZdKiCpUiBqQg/sEh2WZ6/4HS1AnPXf6h2BedyFb
XbcD6PwRUt18WS422mSZn3DBCvOEtA08qOjn5qpRQ5kGJ7c27qzDKkZ07nGwryGgiyPhDm8Ss8jX
niSeOL1LDodRZzwcEu55tjPQEcde005Fl7USxqr5zYqUPV6eguJ7aIMajw7gl58ezxpslX8GkV2H
1Yg7pKB+fMPXHf6Sm1kZfWH18dgs0RxQDRKhpxx39AR5dRSXh4wfwUielLvE7KcbLBkR6EXUa0zk
u/HVFLk2wKFq3ZeTWaYMNo+v6A1pAx5BNXnXVNdRmHAFBY5G8vsDsSNMjTo5gXz6K+5i5F8S39q/
UiRuTcfA3QtHBliuUR4XvSAsl68wsUCRSe9J+ueCmOu+JxJJBfvfduTw3m908EKIUhfV6G/tbv6N
QanhosFx3muyZu8QUZmDAvbSBnc3NrZ9PYklhAsQizHEmcHdolSaOCvfGKqtAkB8+NXjrzVTJFVM
0lqtG4ZZxoPmxidfILpQRwfynM+Wx2MBoAPVCOUzOVEuw6r5wA7OiKJ2pd6WUqcve8Z7dVI01nIa
PY2WjRa2thWkiF37mbZ+uxJkry3f4+rLx2YuHUwjuAO63F0MRFuFH6mowtKziuOjEWv21nOlOQRS
TXcihwev8Vwgjzzk746MQff6OrgKI7cIvvJQaQ++zpPB5zH3W8uWRWd63N013u+aisaGMxU7/chh
8zfcP81L+EUSoiuG07jjjm0lpjalyLkLL8tdK1uJYBEqnweRfMNdBjwnyE44mf7npycR13kVB8yX
Y/uKXO9/OKkBMhIPTnu2bukNysaCO529fV0mktNBJ/MkYy+xgdXviucr+lljfem/M8wIDRw+ZcUv
ZRYFFPSTCTC+1tXbnaV8EUvztjrqObCUXSbM/FF6sZBYVQzrJbPCPBCH8Sm+HTn4B/EXkUlbBhJZ
f5Ibxuqcc8NC4kJ7dpj7a9OSJWBUkXJPolgUoW+oAM8tHhaa+8shDnnCsJmFHdPXj5q0WVP4R41X
3BXFUK/G0v+ww+uKPLPIQ2B9bfe0Rzl8Kbrj7fAwcl6vdxj+AmvGyGu8iGaKfAhYItS+Cm2zamL+
xoXjasMRaV/qNYmsydnzanJlWRck4bFzrzR80g561iM8KT0CoCraUIhv2QVaV5gijn3IyDHT7DyO
7LBsrXATGnhJv78DWZcjej0C2C9067BGBEUehA6K53zOuQJ9tyryv0ZqX6cd7wNZl73io7PmgG2/
mFJh+MrZU+ooRCuNTqviI8fbYuTIjVOyUkqNyGIVGpTSQEFttcQnlV8+wmtebnUtG4lciysITeNB
KKV8bdlqoAuRM4t9bWZQ+bAjfFzeuoHJ+eBuwn9CP8Z6ZNcroFCcBPhQUh1Mvk6drX69703pcCX1
QQFtDD/VlB5aXtJQZgrAQ2rg0QtzuX/Fu9f2hCtl2bCn3DewIfFYOD8kU/XudYBI3JdSusxznt5d
hxVC/3lhAiOFH3fEwmF4fgEGfF0Srai4kl5ihochfXtCx5+o04inCBZxIP/dRBUbXhI6VF2q+fyT
GoTQAiUgAGyj1c5HoCry01NxR32Up2Y4ErijWujRTl5d6wq7XmQ3AzhnNhj5rHitUR7ql6Ziawpq
xesFHqBoxIJv64gg+t2T5+0oaEcRmYts8x9W773fIVCPIcop07nvSYbitP/+6ysCMA7PxpwYWDpn
PSAqNuhxfouNBW8JqKO9Cij2p9jpUKnmDd9OGtpq4pDzCdYdZKAzQuwIlqTimUqAvMS5SULgSVtD
ZCsTeb41jy/y0Qp1QCbgvam1JNT6lxrnEPGqBuoH0oLXKid0SxKJkYxxltGlQyC5N2lLa3YmnROH
TQJHuBf5hgkV30s2YjAQ0WgodnON85Lnq2W6gc7WijV2iSXjlCAvg4nj6zRrZiyttKR1XjU8xj5l
pMoH1RkhDt61myZDbIRz0gMn25j37/kUwmV2vzKP9YLhMuugcUJkVtPf35kofmEK/P//9M2Y3ZNj
NORfQ38UdX64HEjXG4uAABhgUlGNAZCHRklouUPFegp3NAqDxTE0cG6ZFqNYqTbhc42vWQPCttt+
h3MijOsj4M26xr06ahgcz7pANGEDYlcb/P3zx11sevAFOSUqchbmtoaqXySRodlWKn+QqTouQ/hw
iUryADEdPSmEIjZwetXm1kdcxjwgh/EE2EQnDLDhJsgGuHFVfk9ErgiR4NFhZ9Sy4yyd2bq8qfYt
dde63NzNTZe67TfZhbZ+dEyGNwqugNql25/h9TrvxT90s8JGribcJXeWMlWmBMVKFu07G+EBm8RN
PfB6JXEEhyq3qUvcW3IsZelbPt4nI19Cpo/HtiUrb/fEZYH40SfuDUUH1PCax5408x4K6CClEXld
XNpk1JOdA/6Qe07YLIJ6FAW7lWcCE0DCKi76PrPxKx4X8J4oajjZbsSRWIJ+x7cMzudq5wYFH+H8
SI0xREhP/morpD1A3Sal7gciOEDtIr77WO1M81OOqj3kXUXU3De7QX7bFKtoS/5GJCxdf+IfY3va
mk9+ceGu/2a6+RFENk1OZTkFaxHTDLQsk3nBxPsssLsoE1YD//gIhQWmrqtxBrysXpB+YllXGmiV
YBbVPWtR4FtqCRc90zVvcqAEuDqT/U1CzNrBKBdJ1QTyZrNUkSBy9FxjmeXUIVgRKGdDwbWZ1iWZ
5X5PXZsWp8/s8ugvJIwGAQ7Vx+ZaeKR4jfFQjJUmkrsWrzSMuQa4gzkLzU6EqkokKGHp7tXySMAX
JGgwuYh0S1hsLj1imOZdWK3JXAeEkM8zb+E5FzP06mCW/Y72iKHj6y+nt1NKN/o8860Jm4AzzQMX
d9urshdUQVyuA+Ph1cxvqLQVYdj75q6haM7i+dr/TkP0cLMw6AwgTaFqSIznAWER9mMVyqB+U6OH
kX6h8UjWyshiIe+HYbeMUs/sQR6btDPN1ccC124ToMKEizqW02TatY35Wo5Zre6zE0GVoEgYehna
oA9xnY7ppudHOeZB15FeexNfEEuE3syumsjGGszuzFQSLH+z7pXSXOcMpxxWFAX/iH4QdzlspBPW
iLn7zxvaNVpvseS6etD2uQItoDVCK08M9TMZgSgRR9JfaXlzQYeG3RUzypxLWBMiitwJg4Z68zsP
IhNi+a5Ldc81kL77DOPQlfyIzAtw80iKdSKOyNobK1jPkoXDCQ4OzdUiOYlRzo+Ype9LWSS2yjTt
AgKi9Wo5HKhqlEKSl3S62nGD0hrxw//x81UTiFqpSn41Irzp4j6YqMCfFub8RWj21LiKS0LZC1/Y
Y0EtcTIZ1fmtnNqUGo7U4m6xIqa/Kbxs+xvFx4q/uW+E+7UDaM3YMtyuv2v+Ltox05HcqtEafVb2
ML52zIbewbJmyeZcfyuHr6tqwZi5ExeO1m0BEdR3rD4bBmhRDRo4UR11eaqYd4SXlaVvAXzejXLg
T1hVefxmb8AiD1fYRlSPOGDwnHXdePI/EEbFmsH96Yie98nSEEY42VXcrJcCe/JFbAMQAX5qqds4
zHUuit8rHD4XYVcS1x8K8oAbmsFWfv5U36X62Kr1+QXDfwzpMeXQRrqy3sysF1stWWJeXElXl9M/
vcn57ZHDT6Ecucd9/HB6EIETwt3IsFOdrHSHsxJOMrn10FJsNOM6GkJx4dpAZzoApR/GWW3zYtnD
7O07RZKfC4EbyjNnHXsEwVUwNxAqgPBPCp2XO6ULaFK3gVi6IozERduO9tH4iqxKfIJr/xDBCHWb
TTpgJl34qZ4jNF47uwyPBSlDA7ketwwggDVT6bdO823VtAf7aHANiSUrtA1r+eJVh2tXdctilZFW
UpeB2NPuFzOs3/XowPL/68RJF+NRt/WtSo2uitKUsisGDCdZeHTn13+fTP5lyN4E1KL9LFCbN0fL
K3D+ZzhPTdna6drdB5iNxxHpKTzfVJtF2scsHS/bT6GRNKStiT5+Pc2UKbKZxxF1I8p7bqzjd/n7
6Ky3EBz2QCIYqNtlxKfqXzx+aC2hDo6B/1YXohBC13hOdRViuKbqH9q23FgaYMVduzHvZ5OMIJFj
z2h7nK3UrxLSl7icfcRqyC2eDcWM6fPbWyF1JmykPznC/Yci73N8x3/qyHL6bBOzL8Hh+IOryTbj
p22oNmXxdsiDtE/PWcFzKhii1K3dTRylYFfxFJztRPfqnY9RiwkiBOLJ5UYV45iynskCrUNLjQjv
4hOFtqs3exbWz5Qb4eEBAHo984oJKTVQkZeVJZDNVZ2M7qGS7mD0VoAUimPPSQtEoVagpJGMDWOj
wvSTfVf5L0bmmugHuDufg5Dd66+Fbgo3rajsimbOycIe6zvAIvIfpI4ac19RJIo0tDEO7XTBbe7l
BMj87YZ/RpNRQj+nQYV2sVzUlTPkt0dFCcD96/XCVYAbCi7Mk9vDnrv0oM78PaeuwBp/nZ8lu1RW
Tdty14llH2lNvxs/GDZBR1nfTqlIIGjL2oyQuUw1bewMURXOElR6CCObFw9LQKbZdAPUHa3rfFFq
NNXUKuLRaX/25qTqBzlhrlDOrJxIqHKr0ZpwR/OiYjHwbJMye8UQ7Ig3ahP/dH04dbjc2RQo7eop
Q+ffm9kVqA1F+8MuoVhnyZXvQDSJitTMLjKlVtFwh0TkmO3slOlKCrfdcs8QjCUrcjXoDAwjHYmi
54Xru7OAIm2epD9p6m2kZ1WRJE0WE860m8Te6xg16FjC/CcaCDJ1SRO2k+ZRLq6iCryaMYbb7Pb+
ZVz601PSgZKz1NJ1nWoLt/6wDqugr/CikPhnUkpyuG2cHzZVJNLzxq28o2Mgg07CelObJuGdkBAV
ks6hgGJdMeA4xF8J/MrrH+mGwBqNGql5Awe/BADudWoEF+bWWII92O8M8gI4w1BBATkPmhiHlCD6
A5zu2JttywC+aUGcyo0XtTq3n7PkuEuc/RiS26zW3dXZ28CPBay2qz3fRC/uU/kHiW2Yhb1F++tf
1BXJv0n4pLAYkSwHkGJHwbAZYxnykQ7E9kjojdQxp6A4O2JdkjN59ON5huz/gV1n8xjkwFVIaCpg
h99/6AWTFETCObn/ezLm6QwzxkwneFZcDQp7DieQuqiZ+12vX4TL2kQybar48My7ltZ1/gSdPv/S
cRSWIXeLgWhGvsxfYlMTXe/H59FKNVWroWxAGMhsinrGfJDWJ1hAvxAqeovu1bjF26NxIFjXR0xr
hvBlUYCVz64qzMD8n5kQ8/FJkhlTpiUm3PfW9he0djoViwnza0/CiGGHHfMp8r4tr/wbX7XuQbMS
PSPTidmY074hwO1LI0swHCbZyYxTE9EQsZMk18HHbwMmqmjor4si1ZIjBLlzd8d2S0yfHeanVECj
WwriMWE1YPGv5M4oIHQIrZWQwcuwa+BsVSKxy3G8WKsfFJZ2Opsl3gRjCCnqaV07bAbzCWEyWrDs
dB9sH6B+cN6tsyunnBbNDuPuRenkJRvp/6PudXhaDHYo6jEhedsjRzewIfIKZq/et+JM8fXJFBKH
EL6KtMmHXAh2YMRxSwDhIHhO9vp5K7Sfj88vlUfDMczH1Gu71WzY9g0n5LCfloK11EBm/PrcCVgM
otTS2os5YsR7kQ1rwkvDE/gv3+aUFJD7GHNAFCcQXycFTfaGXclw3vpxRQurcw8qCDfJHHTI1d8n
eA9dYoA1KL5alUx/o27dOW0LjC5b+7s5CbUcU5apTJzEG1cZWPebx8KvTYkU++LNMX4G2efnC3Yp
/BTD4BVGUjxZC3b+6vk+sLyXt6My0jzH9+ADFG8tKILDvIMDdVKmCHqy+a9Ls6ZtvN83exAgomBu
i+hptD+urhMZBxyyqCm73YY0G9MNvvI/rZO/JcR4KSeudnpVVQIR15npL1hVItDKsdYRUBbPrI+H
GSnTIZFlyios5LcUcaAUMzSv8rqS/n9fzACqs7EX9OYbbJdhAIP602kTUqJaXODAZCs79ril0OKD
ZsoWObypipWeTpURZZqWii5Ft2UNbCoNv9FYSPuRSwtyhukPcL30lyIKgTVWaanOHpDfA4Q8gyGQ
gxdrKxm4gPJ4ENXAGd3sGVFcp6P7px+4IPWEGhVe2mMTFLRunGvmt9EFHiv34c+3VtPlLF9pjNSu
9k0uDxc+vBqL9IJAM+1Hk9ScuFwGJ6QUQFngKvzyRUxKG+1ePkP6ro+ABb9QhuK9ifK8vIbNTBcV
uKFieXG31tTpy59f4WYSAvVxxOqhftWbtiFjpkeIEPl9rXx8GISqwrbmJabwET2h9uFQLzFGycdi
NxnLKp01Qq2IL9z/KZ5acUdVI8FJEGWNLt84TGMs8pNyx/h3q6kcRQlxAaDCKc+oBWqk95dOHUzq
6C1pBI+yuVQO1E1+vegjyJ0celE/D8gBFn8QkUHgCwjy8rJawxVtooORIj1gm4k4F/zztcJMJ0d7
7PsfTj59AaK3vwWFi+/15OyrE565/DMTAAryvmx2QtDkctIH6dW7Xh8ajWyQiWN9NnvyGEEZi0lm
eh7yQA3md6lY/cYaXXk9C6KblZWcA2yXNabtiXKa6mod+u3gxsZg4JH7WaYdUhNl2f/T68n1CHpV
jVGPaNZvk2GnyXdYxeVd+kHTeMGBUA+TW0g3rni4fQjNr/1qNLzjedFOcX27M+JSUfBmULAz5f86
KXOIAAgIO7aUJaqN/i5H9MbZVA0MSd7vAIvNdiG/y31oYAy84WzkMbx1XMugP78lKUzYZnoJl+qP
AI89GBgf3hVkbAwweXDdoZBAld/ZUcv8F3iTk2qld70SogRDpNbbOVGd8ZZEe1PoeqiSvmbcsQzB
hCuMUGj+CLBGlQl8wDI3XPTY4m5e+gCzDymL/HmEX+O8PWifSt5kKq4O+qI2yNilkAoGZ2gWoCYp
68LphVLSrakyIQTRhR2EglzulF+KqgvQ8sXpDnVreNkO6pLPdsaUk/0QHYDESvZxH//2/Huo1IiT
TIARkihn08dmRTgLL8S4kEq6gBaGVyUFnoMD552cyxCcBL8WD2+vs7wbmh5fWvTIUPxr34ObYT3n
Ro5RytzBQa7KkJVVOfXq1WxKQQGTrF/TUbKNvRhJNXrXQGcls0IcjKJBW+bF5/ssQ17lhP4FPmXH
rmXj1I3wE5uR7X8U/xSqLU+BLUJNSWo+iSlWdbb11yHDmC43wOj2ldMfZDfwj0zBM+eG5aAC4+99
p5s9GpJ0FTCoDZXd9oEqZHaqKcGM2F+xg1Q6BNhLFk4JvstWvMQXXfNk330U4wIxMf6e4+C0iOGp
vOUc3EufRCr3AtfZM5e6guyNXbYZ8OSAJUhS1nQhmoUa9MxSsgb2aNwJTzmh7Ojd8C4nEAsE8SHR
ua6PFznz0SFQ2Px0w/Ekk54cTVr6AxIrney/tslD/GyIKqOI2Wvl2rTI6nO0PicvOtJIwOtpAXeF
STDQY0QCTQb7047fzxcRBVhrMe+MHSYwQvrCLEUUEZxrQBL/cvs+L8Y6t3XF4UgHsOzPMb/VEch6
JF+Cu3y2ockiMR3YOa/6klaTNpcJyytlG6+C/ykOaAdMRfV4bdso0NOSqNT5LJQ=
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
