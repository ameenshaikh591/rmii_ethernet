// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sun Jun 14 20:21:48 2026
// Host        : GREENGOBLIN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/ameen.shaikh/Desktop/projects/rmii_ethernet/rmii_ethernet.gen/sources_1/bd/design_1/ip/design_1_eth_rx_0_2/design_1_eth_rx_0_2_sim_netlist.v
// Design      : design_1_eth_rx_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_eth_rx_0_2,eth_rx,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "eth_rx,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_eth_rx_0_2
   (i_ref_clk,
    i_rxd,
    i_rxer,
    i_crs_dv,
    axi_aclk,
    axi_aresetn,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY,
    M_AXI_AWADDR,
    M_AXI_AWLEN,
    M_AXI_AWSIZE,
    M_AXI_AWBURST,
    M_AXI_AWPROT,
    M_AXI_AWVALID,
    M_AXI_AWREADY,
    M_AXI_WDATA,
    M_AXI_WSTRB,
    M_AXI_WLAST,
    M_AXI_WVALID,
    M_AXI_WREADY,
    M_AXI_BRESP,
    M_AXI_BVALID,
    M_AXI_BREADY);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 i_ref_clk CLK" *) (* x_interface_mode = "slave i_ref_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME i_ref_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_i_ref_clk, INSERT_VIP 0" *) input i_ref_clk;
  input [1:0]i_rxd;
  input i_rxer;
  input i_crs_dv;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 axi_aclk CLK" *) (* x_interface_mode = "slave axi_aclk" *) (* x_interface_parameter = "XIL_INTERFACENAME axi_aclk, ASSOCIATED_BUSIF M_AXI:S_AXI, ASSOCIATED_RESET axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 axi_aresetn RST" *) (* x_interface_mode = "slave axi_aresetn" *) (* x_interface_parameter = "XIL_INTERFACENAME axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_mode = "slave S_AXI" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]S_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]S_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) (* x_interface_mode = "master M_AXI" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [31:0]M_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [7:0]M_AXI_AWLEN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]M_AXI_AWSIZE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]M_AXI_AWBURST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]M_AXI_AWPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output M_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input M_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]M_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]M_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output M_AXI_WLAST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output M_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input M_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]M_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input M_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output M_AXI_BREADY;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]M_AXI_AWADDR;
  wire [4:0]\^M_AXI_AWLEN ;
  wire M_AXI_AWREADY;
  wire M_AXI_AWVALID;
  wire M_AXI_BREADY;
  wire M_AXI_BVALID;
  wire [31:0]M_AXI_WDATA;
  wire M_AXI_WLAST;
  wire M_AXI_WREADY;
  wire [3:0]M_AXI_WSTRB;
  wire M_AXI_WVALID;
  wire [31:0]S_AXI_ARADDR;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [31:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [1:1]\^S_AXI_BRESP ;
  wire S_AXI_BVALID;
  wire [1:0]\^S_AXI_RDATA ;
  wire S_AXI_RREADY;
  wire [1:1]\^S_AXI_RRESP ;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire axi_aclk;
  wire axi_aresetn;
  wire i_crs_dv;
  wire i_ref_clk;
  wire [1:0]i_rxd;

  assign M_AXI_AWBURST[1] = \<const0> ;
  assign M_AXI_AWBURST[0] = \<const1> ;
  assign M_AXI_AWLEN[7] = \<const0> ;
  assign M_AXI_AWLEN[6] = \<const0> ;
  assign M_AXI_AWLEN[5] = \<const0> ;
  assign M_AXI_AWLEN[4] = \^M_AXI_AWLEN [4];
  assign M_AXI_AWLEN[3] = \^M_AXI_AWLEN [4];
  assign M_AXI_AWLEN[2:0] = \^M_AXI_AWLEN [2:0];
  assign M_AXI_AWPROT[2] = \<const0> ;
  assign M_AXI_AWPROT[1] = \<const0> ;
  assign M_AXI_AWPROT[0] = \<const0> ;
  assign M_AXI_AWSIZE[2] = \<const0> ;
  assign M_AXI_AWSIZE[1] = \<const1> ;
  assign M_AXI_AWSIZE[0] = \<const0> ;
  assign S_AXI_BRESP[1] = \^S_AXI_BRESP [1];
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RDATA[31] = \<const0> ;
  assign S_AXI_RDATA[30] = \<const0> ;
  assign S_AXI_RDATA[29] = \<const0> ;
  assign S_AXI_RDATA[28] = \<const0> ;
  assign S_AXI_RDATA[27] = \<const0> ;
  assign S_AXI_RDATA[26] = \<const0> ;
  assign S_AXI_RDATA[25] = \<const0> ;
  assign S_AXI_RDATA[24] = \<const0> ;
  assign S_AXI_RDATA[23] = \<const0> ;
  assign S_AXI_RDATA[22] = \<const0> ;
  assign S_AXI_RDATA[21] = \<const0> ;
  assign S_AXI_RDATA[20] = \<const0> ;
  assign S_AXI_RDATA[19] = \<const0> ;
  assign S_AXI_RDATA[18] = \<const0> ;
  assign S_AXI_RDATA[17] = \<const0> ;
  assign S_AXI_RDATA[16] = \<const0> ;
  assign S_AXI_RDATA[15] = \<const0> ;
  assign S_AXI_RDATA[14] = \<const0> ;
  assign S_AXI_RDATA[13] = \<const0> ;
  assign S_AXI_RDATA[12] = \<const0> ;
  assign S_AXI_RDATA[11] = \<const0> ;
  assign S_AXI_RDATA[10] = \<const0> ;
  assign S_AXI_RDATA[9] = \<const0> ;
  assign S_AXI_RDATA[8] = \<const0> ;
  assign S_AXI_RDATA[7] = \<const0> ;
  assign S_AXI_RDATA[6] = \<const0> ;
  assign S_AXI_RDATA[5] = \<const0> ;
  assign S_AXI_RDATA[4] = \<const0> ;
  assign S_AXI_RDATA[3] = \<const0> ;
  assign S_AXI_RDATA[2] = \<const0> ;
  assign S_AXI_RDATA[1:0] = \^S_AXI_RDATA [1:0];
  assign S_AXI_RRESP[1] = \^S_AXI_RRESP [1];
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_eth_rx_0_2_eth_rx U0
       (.M_AXI_AWADDR(M_AXI_AWADDR),
        .M_AXI_AWLEN({\^M_AXI_AWLEN [4],\^M_AXI_AWLEN [2:0]}),
        .M_AXI_AWREADY(M_AXI_AWREADY),
        .M_AXI_AWVALID(M_AXI_AWVALID),
        .M_AXI_BREADY(M_AXI_BREADY),
        .M_AXI_BVALID(M_AXI_BVALID),
        .M_AXI_WDATA(M_AXI_WDATA),
        .M_AXI_WLAST(M_AXI_WLAST),
        .M_AXI_WREADY(M_AXI_WREADY),
        .M_AXI_WSTRB(M_AXI_WSTRB),
        .M_AXI_WVALID(M_AXI_WVALID),
        .S_AXI_ARADDR(S_AXI_ARADDR[3:0]),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[3:0]),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BRESP(\^S_AXI_BRESP ),
        .S_AXI_RDATA(\^S_AXI_RDATA ),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RRESP(\^S_AXI_RRESP ),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WVALID(S_AXI_WVALID),
        .arready_reg_reg(S_AXI_ARREADY),
        .awready_reg_reg(S_AXI_AWREADY),
        .axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .bvalid_reg_reg(S_AXI_BVALID),
        .i_crs_dv(i_crs_dv),
        .i_ref_clk(i_ref_clk),
        .i_rxd(i_rxd),
        .read_state_reg_reg(S_AXI_RVALID),
        .wready_reg_reg(S_AXI_WREADY));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "dma_axi_writer" *) 
module design_1_eth_rx_0_2_dma_axi_writer
   (last_reg,
    chunk_buf_id_reg,
    M_AXI_AWADDR,
    M_AXI_AWLEN,
    last_reg_reg_0,
    Q,
    M_AXI_WREADY_0,
    M_AXI_WREADY_1,
    \gen_wr_a.gen_word_narrow.mem_reg ,
    \chunk_byte_count_reg_reg[3]_0 ,
    M_AXI_WLAST,
    \chunk_byte_count_reg_reg[4]_0 ,
    \FSM_onehot_axi_writer_state_reg_reg[3]_0 ,
    M_AXI_WSTRB,
    M_AXI_WDATA,
    \FSM_onehot_axi_writer_state_reg_reg[3]_1 ,
    \FSM_onehot_axi_writer_state_reg_reg[3]_2 ,
    chunk_buf_id_reg_reg_0,
    last_reg_reg_1,
    axi_aclk,
    chunk_buf_id_reg_reg_1,
    M_AXI_BVALID,
    \FSM_sequential_dma_state_reg_reg[0] ,
    \FSM_sequential_dma_state_reg_reg[0]_0 ,
    dma_state_reg,
    \buf_addr_reg_reg[0]_0 ,
    M_AXI_WREADY,
    \FSM_onehot_axi_writer_state_reg_reg[0]_0 ,
    M_AXI_AWREADY,
    \FSM_onehot_axi_writer_state_reg_reg[0]_1 ,
    \wr_addr_offset_reg_reg[31]_0 ,
    axi_aresetn,
    dout,
    M_AXI_WDATA_0_sp_1,
    \M_AXI_WDATA[0]_0 ,
    M_AXI_WDATA_1_sp_1,
    \M_AXI_WDATA[1]_0 ,
    M_AXI_WDATA_2_sp_1,
    \M_AXI_WDATA[2]_0 ,
    M_AXI_WDATA_3_sp_1,
    \M_AXI_WDATA[3]_0 ,
    M_AXI_WDATA_4_sp_1,
    \M_AXI_WDATA[4]_0 ,
    M_AXI_WDATA_5_sp_1,
    \M_AXI_WDATA[5]_0 ,
    M_AXI_WDATA_6_sp_1,
    \M_AXI_WDATA[6]_0 ,
    M_AXI_WDATA_7_sp_1,
    \M_AXI_WDATA[7]_0 ,
    M_AXI_WDATA_8_sp_1,
    \M_AXI_WDATA[8]_0 ,
    M_AXI_WDATA_9_sp_1,
    \M_AXI_WDATA[9]_0 ,
    M_AXI_WDATA_10_sp_1,
    \M_AXI_WDATA[10]_0 ,
    M_AXI_WDATA_11_sp_1,
    \M_AXI_WDATA[11]_0 ,
    M_AXI_WDATA_12_sp_1,
    \M_AXI_WDATA[12]_0 ,
    M_AXI_WDATA_13_sp_1,
    \M_AXI_WDATA[13]_0 ,
    M_AXI_WDATA_14_sp_1,
    \M_AXI_WDATA[14]_0 ,
    M_AXI_WDATA_15_sp_1,
    \M_AXI_WDATA[15]_0 ,
    M_AXI_WDATA_16_sp_1,
    \M_AXI_WDATA[16]_0 ,
    M_AXI_WDATA_17_sp_1,
    \M_AXI_WDATA[17]_0 ,
    M_AXI_WDATA_18_sp_1,
    \M_AXI_WDATA[18]_0 ,
    M_AXI_WDATA_19_sp_1,
    \M_AXI_WDATA[19]_0 ,
    M_AXI_WDATA_20_sp_1,
    \M_AXI_WDATA[20]_0 ,
    M_AXI_WDATA_21_sp_1,
    \M_AXI_WDATA[21]_0 ,
    M_AXI_WDATA_22_sp_1,
    \M_AXI_WDATA[22]_0 ,
    M_AXI_WDATA_23_sp_1,
    \M_AXI_WDATA[23]_0 ,
    M_AXI_WDATA_24_sp_1,
    \M_AXI_WDATA[24]_0 ,
    M_AXI_WDATA_25_sp_1,
    \M_AXI_WDATA[25]_0 ,
    M_AXI_WDATA_26_sp_1,
    \M_AXI_WDATA[26]_0 ,
    M_AXI_WDATA_27_sp_1,
    \M_AXI_WDATA[27]_0 ,
    M_AXI_WDATA_28_sp_1,
    \M_AXI_WDATA[28]_0 ,
    M_AXI_WDATA_29_sp_1,
    \M_AXI_WDATA[29]_0 ,
    M_AXI_WDATA_30_sp_1,
    \M_AXI_WDATA[30]_0 ,
    M_AXI_WDATA_31_sp_1,
    \M_AXI_WDATA[31]_0 ,
    \M_AXI_WDATA[0]_1 ,
    \M_AXI_WDATA[0]_2 ,
    \M_AXI_WDATA[0]_3 ,
    \M_AXI_WDATA[1]_1 ,
    \M_AXI_WDATA[1]_2 ,
    \M_AXI_WDATA[1]_3 ,
    \M_AXI_WDATA[2]_1 ,
    \M_AXI_WDATA[2]_2 ,
    \M_AXI_WDATA[2]_3 ,
    \M_AXI_WDATA[3]_1 ,
    \M_AXI_WDATA[3]_2 ,
    \M_AXI_WDATA[3]_3 ,
    \M_AXI_WDATA[4]_1 ,
    \M_AXI_WDATA[4]_2 ,
    \M_AXI_WDATA[4]_3 ,
    \M_AXI_WDATA[5]_1 ,
    \M_AXI_WDATA[5]_2 ,
    \M_AXI_WDATA[5]_3 ,
    \M_AXI_WDATA[6]_1 ,
    \M_AXI_WDATA[6]_2 ,
    \M_AXI_WDATA[6]_3 ,
    \M_AXI_WDATA[7]_1 ,
    \M_AXI_WDATA[7]_2 ,
    \M_AXI_WDATA[7]_3 ,
    \M_AXI_WDATA[8]_1 ,
    \M_AXI_WDATA[8]_2 ,
    \M_AXI_WDATA[8]_3 ,
    \M_AXI_WDATA[9]_1 ,
    \M_AXI_WDATA[9]_2 ,
    \M_AXI_WDATA[9]_3 ,
    \M_AXI_WDATA[10]_1 ,
    \M_AXI_WDATA[10]_2 ,
    \M_AXI_WDATA[10]_3 ,
    \M_AXI_WDATA[11]_1 ,
    \M_AXI_WDATA[11]_2 ,
    \M_AXI_WDATA[11]_3 ,
    \M_AXI_WDATA[12]_1 ,
    \M_AXI_WDATA[12]_2 ,
    \M_AXI_WDATA[12]_3 ,
    \M_AXI_WDATA[13]_1 ,
    \M_AXI_WDATA[13]_2 ,
    \M_AXI_WDATA[13]_3 ,
    \M_AXI_WDATA[14]_1 ,
    \M_AXI_WDATA[14]_2 ,
    \M_AXI_WDATA[14]_3 ,
    \M_AXI_WDATA[15]_1 ,
    \M_AXI_WDATA[15]_2 ,
    \M_AXI_WDATA[15]_3 ,
    \M_AXI_WDATA[16]_1 ,
    \M_AXI_WDATA[16]_2 ,
    \M_AXI_WDATA[16]_3 ,
    \M_AXI_WDATA[17]_1 ,
    \M_AXI_WDATA[17]_2 ,
    \M_AXI_WDATA[17]_3 ,
    \M_AXI_WDATA[18]_1 ,
    \M_AXI_WDATA[18]_2 ,
    \M_AXI_WDATA[18]_3 ,
    \M_AXI_WDATA[19]_1 ,
    \M_AXI_WDATA[19]_2 ,
    \M_AXI_WDATA[19]_3 ,
    \M_AXI_WDATA[20]_1 ,
    \M_AXI_WDATA[20]_2 ,
    \M_AXI_WDATA[20]_3 ,
    \M_AXI_WDATA[21]_1 ,
    \M_AXI_WDATA[21]_2 ,
    \M_AXI_WDATA[21]_3 ,
    \M_AXI_WDATA[22]_1 ,
    \M_AXI_WDATA[22]_2 ,
    \M_AXI_WDATA[22]_3 ,
    \M_AXI_WDATA[23]_1 ,
    \M_AXI_WDATA[23]_2 ,
    \M_AXI_WDATA[23]_3 ,
    \M_AXI_WDATA[24]_1 ,
    \M_AXI_WDATA[24]_2 ,
    \M_AXI_WDATA[24]_3 ,
    \M_AXI_WDATA[25]_1 ,
    \M_AXI_WDATA[25]_2 ,
    \M_AXI_WDATA[25]_3 ,
    \M_AXI_WDATA[26]_1 ,
    \M_AXI_WDATA[26]_2 ,
    \M_AXI_WDATA[26]_3 ,
    \M_AXI_WDATA[27]_1 ,
    \M_AXI_WDATA[27]_2 ,
    \M_AXI_WDATA[27]_3 ,
    \M_AXI_WDATA[28]_1 ,
    \M_AXI_WDATA[28]_2 ,
    \M_AXI_WDATA[28]_3 ,
    \M_AXI_WDATA[29]_1 ,
    \M_AXI_WDATA[29]_2 ,
    \M_AXI_WDATA[29]_3 ,
    \M_AXI_WDATA[30]_1 ,
    \M_AXI_WDATA[30]_2 ,
    \M_AXI_WDATA[30]_3 ,
    \M_AXI_WDATA[31]_1 ,
    \M_AXI_WDATA[31]_2 ,
    \M_AXI_WDATA[31]_3 ,
    \M_AXI_WDATA[0]_4 ,
    \M_AXI_WDATA[0]_5 ,
    \M_AXI_WDATA[0]_6 ,
    \M_AXI_WDATA[1]_4 ,
    \M_AXI_WDATA[1]_5 ,
    \M_AXI_WDATA[1]_6 ,
    \M_AXI_WDATA[2]_4 ,
    \M_AXI_WDATA[2]_5 ,
    \M_AXI_WDATA[2]_6 ,
    \M_AXI_WDATA[3]_4 ,
    \M_AXI_WDATA[3]_5 ,
    \M_AXI_WDATA[3]_6 ,
    \M_AXI_WDATA[4]_4 ,
    \M_AXI_WDATA[4]_5 ,
    \M_AXI_WDATA[4]_6 ,
    \M_AXI_WDATA[5]_4 ,
    \M_AXI_WDATA[5]_5 ,
    \M_AXI_WDATA[5]_6 ,
    \M_AXI_WDATA[6]_4 ,
    \M_AXI_WDATA[6]_5 ,
    \M_AXI_WDATA[6]_6 ,
    \M_AXI_WDATA[7]_4 ,
    \M_AXI_WDATA[7]_5 ,
    \M_AXI_WDATA[7]_6 ,
    \M_AXI_WDATA[8]_4 ,
    \M_AXI_WDATA[8]_5 ,
    \M_AXI_WDATA[8]_6 ,
    \M_AXI_WDATA[9]_4 ,
    \M_AXI_WDATA[9]_5 ,
    \M_AXI_WDATA[9]_6 ,
    \M_AXI_WDATA[10]_4 ,
    \M_AXI_WDATA[10]_5 ,
    \M_AXI_WDATA[10]_6 ,
    \M_AXI_WDATA[11]_4 ,
    \M_AXI_WDATA[11]_5 ,
    \M_AXI_WDATA[11]_6 ,
    \M_AXI_WDATA[12]_4 ,
    \M_AXI_WDATA[12]_5 ,
    \M_AXI_WDATA[12]_6 ,
    \M_AXI_WDATA[13]_4 ,
    \M_AXI_WDATA[13]_5 ,
    \M_AXI_WDATA[13]_6 ,
    \M_AXI_WDATA[14]_4 ,
    \M_AXI_WDATA[14]_5 ,
    \M_AXI_WDATA[14]_6 ,
    \M_AXI_WDATA[15]_4 ,
    \M_AXI_WDATA[15]_5 ,
    \M_AXI_WDATA[15]_6 ,
    \M_AXI_WDATA[16]_4 ,
    \M_AXI_WDATA[16]_5 ,
    \M_AXI_WDATA[16]_6 ,
    \M_AXI_WDATA[17]_4 ,
    \M_AXI_WDATA[17]_5 ,
    \M_AXI_WDATA[17]_6 ,
    \M_AXI_WDATA[18]_4 ,
    \M_AXI_WDATA[18]_5 ,
    \M_AXI_WDATA[18]_6 ,
    \M_AXI_WDATA[19]_4 ,
    \M_AXI_WDATA[19]_5 ,
    \M_AXI_WDATA[19]_6 ,
    \M_AXI_WDATA[20]_4 ,
    \M_AXI_WDATA[20]_5 ,
    \M_AXI_WDATA[20]_6 ,
    \M_AXI_WDATA[21]_4 ,
    \M_AXI_WDATA[21]_5 ,
    \M_AXI_WDATA[21]_6 ,
    \M_AXI_WDATA[22]_4 ,
    \M_AXI_WDATA[22]_5 ,
    \M_AXI_WDATA[22]_6 ,
    \M_AXI_WDATA[23]_4 ,
    \M_AXI_WDATA[23]_5 ,
    \M_AXI_WDATA[23]_6 ,
    \M_AXI_WDATA[24]_4 ,
    \M_AXI_WDATA[24]_5 ,
    \M_AXI_WDATA[24]_6 ,
    \M_AXI_WDATA[25]_4 ,
    \M_AXI_WDATA[25]_5 ,
    \M_AXI_WDATA[25]_6 ,
    \M_AXI_WDATA[26]_4 ,
    \M_AXI_WDATA[26]_5 ,
    \M_AXI_WDATA[26]_6 ,
    \M_AXI_WDATA[27]_4 ,
    \M_AXI_WDATA[27]_5 ,
    \M_AXI_WDATA[27]_6 ,
    \M_AXI_WDATA[28]_4 ,
    \M_AXI_WDATA[28]_5 ,
    \M_AXI_WDATA[28]_6 ,
    \M_AXI_WDATA[29]_4 ,
    \M_AXI_WDATA[29]_5 ,
    \M_AXI_WDATA[29]_6 ,
    \M_AXI_WDATA[30]_4 ,
    \M_AXI_WDATA[30]_5 ,
    \M_AXI_WDATA[30]_6 ,
    \M_AXI_WDATA[31]_4 ,
    \M_AXI_WDATA[31]_5 ,
    \M_AXI_WDATA[31]_6 ,
    D,
    E,
    \chunk_byte_count_reg_reg[4]_1 ,
    last_next,
    buf_id_next,
    \wr_addr_offset_reg_reg[0]_0 ,
    wr_addr_offset_reg,
    wr_base_addr_reg,
    O,
    \wr_base_addr_reg_reg[30]_0 ,
    \wr_base_addr_reg_reg[26]_0 ,
    \wr_base_addr_reg_reg[22]_0 ,
    \wr_base_addr_reg_reg[18]_0 ,
    \wr_base_addr_reg_reg[14]_0 ,
    \wr_base_addr_reg_reg[10]_0 ,
    \wr_base_addr_reg_reg[6]_0 );
  output last_reg;
  output chunk_buf_id_reg;
  output [31:0]M_AXI_AWADDR;
  output [3:0]M_AXI_AWLEN;
  output last_reg_reg_0;
  output [4:0]Q;
  output M_AXI_WREADY_0;
  output M_AXI_WREADY_1;
  output \gen_wr_a.gen_word_narrow.mem_reg ;
  output \chunk_byte_count_reg_reg[3]_0 ;
  output M_AXI_WLAST;
  output \chunk_byte_count_reg_reg[4]_0 ;
  output \FSM_onehot_axi_writer_state_reg_reg[3]_0 ;
  output [3:0]M_AXI_WSTRB;
  output [31:0]M_AXI_WDATA;
  output \FSM_onehot_axi_writer_state_reg_reg[3]_1 ;
  output \FSM_onehot_axi_writer_state_reg_reg[3]_2 ;
  input chunk_buf_id_reg_reg_0;
  input last_reg_reg_1;
  input axi_aclk;
  input chunk_buf_id_reg_reg_1;
  input M_AXI_BVALID;
  input \FSM_sequential_dma_state_reg_reg[0] ;
  input \FSM_sequential_dma_state_reg_reg[0]_0 ;
  input [1:0]dma_state_reg;
  input \buf_addr_reg_reg[0]_0 ;
  input M_AXI_WREADY;
  input \FSM_onehot_axi_writer_state_reg_reg[0]_0 ;
  input M_AXI_AWREADY;
  input \FSM_onehot_axi_writer_state_reg_reg[0]_1 ;
  input \wr_addr_offset_reg_reg[31]_0 ;
  input axi_aresetn;
  input [1:0]dout;
  input M_AXI_WDATA_0_sp_1;
  input \M_AXI_WDATA[0]_0 ;
  input M_AXI_WDATA_1_sp_1;
  input \M_AXI_WDATA[1]_0 ;
  input M_AXI_WDATA_2_sp_1;
  input \M_AXI_WDATA[2]_0 ;
  input M_AXI_WDATA_3_sp_1;
  input \M_AXI_WDATA[3]_0 ;
  input M_AXI_WDATA_4_sp_1;
  input \M_AXI_WDATA[4]_0 ;
  input M_AXI_WDATA_5_sp_1;
  input \M_AXI_WDATA[5]_0 ;
  input M_AXI_WDATA_6_sp_1;
  input \M_AXI_WDATA[6]_0 ;
  input M_AXI_WDATA_7_sp_1;
  input \M_AXI_WDATA[7]_0 ;
  input M_AXI_WDATA_8_sp_1;
  input \M_AXI_WDATA[8]_0 ;
  input M_AXI_WDATA_9_sp_1;
  input \M_AXI_WDATA[9]_0 ;
  input M_AXI_WDATA_10_sp_1;
  input \M_AXI_WDATA[10]_0 ;
  input M_AXI_WDATA_11_sp_1;
  input \M_AXI_WDATA[11]_0 ;
  input M_AXI_WDATA_12_sp_1;
  input \M_AXI_WDATA[12]_0 ;
  input M_AXI_WDATA_13_sp_1;
  input \M_AXI_WDATA[13]_0 ;
  input M_AXI_WDATA_14_sp_1;
  input \M_AXI_WDATA[14]_0 ;
  input M_AXI_WDATA_15_sp_1;
  input \M_AXI_WDATA[15]_0 ;
  input M_AXI_WDATA_16_sp_1;
  input \M_AXI_WDATA[16]_0 ;
  input M_AXI_WDATA_17_sp_1;
  input \M_AXI_WDATA[17]_0 ;
  input M_AXI_WDATA_18_sp_1;
  input \M_AXI_WDATA[18]_0 ;
  input M_AXI_WDATA_19_sp_1;
  input \M_AXI_WDATA[19]_0 ;
  input M_AXI_WDATA_20_sp_1;
  input \M_AXI_WDATA[20]_0 ;
  input M_AXI_WDATA_21_sp_1;
  input \M_AXI_WDATA[21]_0 ;
  input M_AXI_WDATA_22_sp_1;
  input \M_AXI_WDATA[22]_0 ;
  input M_AXI_WDATA_23_sp_1;
  input \M_AXI_WDATA[23]_0 ;
  input M_AXI_WDATA_24_sp_1;
  input \M_AXI_WDATA[24]_0 ;
  input M_AXI_WDATA_25_sp_1;
  input \M_AXI_WDATA[25]_0 ;
  input M_AXI_WDATA_26_sp_1;
  input \M_AXI_WDATA[26]_0 ;
  input M_AXI_WDATA_27_sp_1;
  input \M_AXI_WDATA[27]_0 ;
  input M_AXI_WDATA_28_sp_1;
  input \M_AXI_WDATA[28]_0 ;
  input M_AXI_WDATA_29_sp_1;
  input \M_AXI_WDATA[29]_0 ;
  input M_AXI_WDATA_30_sp_1;
  input \M_AXI_WDATA[30]_0 ;
  input M_AXI_WDATA_31_sp_1;
  input \M_AXI_WDATA[31]_0 ;
  input \M_AXI_WDATA[0]_1 ;
  input \M_AXI_WDATA[0]_2 ;
  input \M_AXI_WDATA[0]_3 ;
  input \M_AXI_WDATA[1]_1 ;
  input \M_AXI_WDATA[1]_2 ;
  input \M_AXI_WDATA[1]_3 ;
  input \M_AXI_WDATA[2]_1 ;
  input \M_AXI_WDATA[2]_2 ;
  input \M_AXI_WDATA[2]_3 ;
  input \M_AXI_WDATA[3]_1 ;
  input \M_AXI_WDATA[3]_2 ;
  input \M_AXI_WDATA[3]_3 ;
  input \M_AXI_WDATA[4]_1 ;
  input \M_AXI_WDATA[4]_2 ;
  input \M_AXI_WDATA[4]_3 ;
  input \M_AXI_WDATA[5]_1 ;
  input \M_AXI_WDATA[5]_2 ;
  input \M_AXI_WDATA[5]_3 ;
  input \M_AXI_WDATA[6]_1 ;
  input \M_AXI_WDATA[6]_2 ;
  input \M_AXI_WDATA[6]_3 ;
  input \M_AXI_WDATA[7]_1 ;
  input \M_AXI_WDATA[7]_2 ;
  input \M_AXI_WDATA[7]_3 ;
  input \M_AXI_WDATA[8]_1 ;
  input \M_AXI_WDATA[8]_2 ;
  input \M_AXI_WDATA[8]_3 ;
  input \M_AXI_WDATA[9]_1 ;
  input \M_AXI_WDATA[9]_2 ;
  input \M_AXI_WDATA[9]_3 ;
  input \M_AXI_WDATA[10]_1 ;
  input \M_AXI_WDATA[10]_2 ;
  input \M_AXI_WDATA[10]_3 ;
  input \M_AXI_WDATA[11]_1 ;
  input \M_AXI_WDATA[11]_2 ;
  input \M_AXI_WDATA[11]_3 ;
  input \M_AXI_WDATA[12]_1 ;
  input \M_AXI_WDATA[12]_2 ;
  input \M_AXI_WDATA[12]_3 ;
  input \M_AXI_WDATA[13]_1 ;
  input \M_AXI_WDATA[13]_2 ;
  input \M_AXI_WDATA[13]_3 ;
  input \M_AXI_WDATA[14]_1 ;
  input \M_AXI_WDATA[14]_2 ;
  input \M_AXI_WDATA[14]_3 ;
  input \M_AXI_WDATA[15]_1 ;
  input \M_AXI_WDATA[15]_2 ;
  input \M_AXI_WDATA[15]_3 ;
  input \M_AXI_WDATA[16]_1 ;
  input \M_AXI_WDATA[16]_2 ;
  input \M_AXI_WDATA[16]_3 ;
  input \M_AXI_WDATA[17]_1 ;
  input \M_AXI_WDATA[17]_2 ;
  input \M_AXI_WDATA[17]_3 ;
  input \M_AXI_WDATA[18]_1 ;
  input \M_AXI_WDATA[18]_2 ;
  input \M_AXI_WDATA[18]_3 ;
  input \M_AXI_WDATA[19]_1 ;
  input \M_AXI_WDATA[19]_2 ;
  input \M_AXI_WDATA[19]_3 ;
  input \M_AXI_WDATA[20]_1 ;
  input \M_AXI_WDATA[20]_2 ;
  input \M_AXI_WDATA[20]_3 ;
  input \M_AXI_WDATA[21]_1 ;
  input \M_AXI_WDATA[21]_2 ;
  input \M_AXI_WDATA[21]_3 ;
  input \M_AXI_WDATA[22]_1 ;
  input \M_AXI_WDATA[22]_2 ;
  input \M_AXI_WDATA[22]_3 ;
  input \M_AXI_WDATA[23]_1 ;
  input \M_AXI_WDATA[23]_2 ;
  input \M_AXI_WDATA[23]_3 ;
  input \M_AXI_WDATA[24]_1 ;
  input \M_AXI_WDATA[24]_2 ;
  input \M_AXI_WDATA[24]_3 ;
  input \M_AXI_WDATA[25]_1 ;
  input \M_AXI_WDATA[25]_2 ;
  input \M_AXI_WDATA[25]_3 ;
  input \M_AXI_WDATA[26]_1 ;
  input \M_AXI_WDATA[26]_2 ;
  input \M_AXI_WDATA[26]_3 ;
  input \M_AXI_WDATA[27]_1 ;
  input \M_AXI_WDATA[27]_2 ;
  input \M_AXI_WDATA[27]_3 ;
  input \M_AXI_WDATA[28]_1 ;
  input \M_AXI_WDATA[28]_2 ;
  input \M_AXI_WDATA[28]_3 ;
  input \M_AXI_WDATA[29]_1 ;
  input \M_AXI_WDATA[29]_2 ;
  input \M_AXI_WDATA[29]_3 ;
  input \M_AXI_WDATA[30]_1 ;
  input \M_AXI_WDATA[30]_2 ;
  input \M_AXI_WDATA[30]_3 ;
  input \M_AXI_WDATA[31]_1 ;
  input \M_AXI_WDATA[31]_2 ;
  input \M_AXI_WDATA[31]_3 ;
  input \M_AXI_WDATA[0]_4 ;
  input \M_AXI_WDATA[0]_5 ;
  input \M_AXI_WDATA[0]_6 ;
  input \M_AXI_WDATA[1]_4 ;
  input \M_AXI_WDATA[1]_5 ;
  input \M_AXI_WDATA[1]_6 ;
  input \M_AXI_WDATA[2]_4 ;
  input \M_AXI_WDATA[2]_5 ;
  input \M_AXI_WDATA[2]_6 ;
  input \M_AXI_WDATA[3]_4 ;
  input \M_AXI_WDATA[3]_5 ;
  input \M_AXI_WDATA[3]_6 ;
  input \M_AXI_WDATA[4]_4 ;
  input \M_AXI_WDATA[4]_5 ;
  input \M_AXI_WDATA[4]_6 ;
  input \M_AXI_WDATA[5]_4 ;
  input \M_AXI_WDATA[5]_5 ;
  input \M_AXI_WDATA[5]_6 ;
  input \M_AXI_WDATA[6]_4 ;
  input \M_AXI_WDATA[6]_5 ;
  input \M_AXI_WDATA[6]_6 ;
  input \M_AXI_WDATA[7]_4 ;
  input \M_AXI_WDATA[7]_5 ;
  input \M_AXI_WDATA[7]_6 ;
  input \M_AXI_WDATA[8]_4 ;
  input \M_AXI_WDATA[8]_5 ;
  input \M_AXI_WDATA[8]_6 ;
  input \M_AXI_WDATA[9]_4 ;
  input \M_AXI_WDATA[9]_5 ;
  input \M_AXI_WDATA[9]_6 ;
  input \M_AXI_WDATA[10]_4 ;
  input \M_AXI_WDATA[10]_5 ;
  input \M_AXI_WDATA[10]_6 ;
  input \M_AXI_WDATA[11]_4 ;
  input \M_AXI_WDATA[11]_5 ;
  input \M_AXI_WDATA[11]_6 ;
  input \M_AXI_WDATA[12]_4 ;
  input \M_AXI_WDATA[12]_5 ;
  input \M_AXI_WDATA[12]_6 ;
  input \M_AXI_WDATA[13]_4 ;
  input \M_AXI_WDATA[13]_5 ;
  input \M_AXI_WDATA[13]_6 ;
  input \M_AXI_WDATA[14]_4 ;
  input \M_AXI_WDATA[14]_5 ;
  input \M_AXI_WDATA[14]_6 ;
  input \M_AXI_WDATA[15]_4 ;
  input \M_AXI_WDATA[15]_5 ;
  input \M_AXI_WDATA[15]_6 ;
  input \M_AXI_WDATA[16]_4 ;
  input \M_AXI_WDATA[16]_5 ;
  input \M_AXI_WDATA[16]_6 ;
  input \M_AXI_WDATA[17]_4 ;
  input \M_AXI_WDATA[17]_5 ;
  input \M_AXI_WDATA[17]_6 ;
  input \M_AXI_WDATA[18]_4 ;
  input \M_AXI_WDATA[18]_5 ;
  input \M_AXI_WDATA[18]_6 ;
  input \M_AXI_WDATA[19]_4 ;
  input \M_AXI_WDATA[19]_5 ;
  input \M_AXI_WDATA[19]_6 ;
  input \M_AXI_WDATA[20]_4 ;
  input \M_AXI_WDATA[20]_5 ;
  input \M_AXI_WDATA[20]_6 ;
  input \M_AXI_WDATA[21]_4 ;
  input \M_AXI_WDATA[21]_5 ;
  input \M_AXI_WDATA[21]_6 ;
  input \M_AXI_WDATA[22]_4 ;
  input \M_AXI_WDATA[22]_5 ;
  input \M_AXI_WDATA[22]_6 ;
  input \M_AXI_WDATA[23]_4 ;
  input \M_AXI_WDATA[23]_5 ;
  input \M_AXI_WDATA[23]_6 ;
  input \M_AXI_WDATA[24]_4 ;
  input \M_AXI_WDATA[24]_5 ;
  input \M_AXI_WDATA[24]_6 ;
  input \M_AXI_WDATA[25]_4 ;
  input \M_AXI_WDATA[25]_5 ;
  input \M_AXI_WDATA[25]_6 ;
  input \M_AXI_WDATA[26]_4 ;
  input \M_AXI_WDATA[26]_5 ;
  input \M_AXI_WDATA[26]_6 ;
  input \M_AXI_WDATA[27]_4 ;
  input \M_AXI_WDATA[27]_5 ;
  input \M_AXI_WDATA[27]_6 ;
  input \M_AXI_WDATA[28]_4 ;
  input \M_AXI_WDATA[28]_5 ;
  input \M_AXI_WDATA[28]_6 ;
  input \M_AXI_WDATA[29]_4 ;
  input \M_AXI_WDATA[29]_5 ;
  input \M_AXI_WDATA[29]_6 ;
  input \M_AXI_WDATA[30]_4 ;
  input \M_AXI_WDATA[30]_5 ;
  input \M_AXI_WDATA[30]_6 ;
  input \M_AXI_WDATA[31]_4 ;
  input \M_AXI_WDATA[31]_5 ;
  input \M_AXI_WDATA[31]_6 ;
  input [1:0]D;
  input [0:0]E;
  input [4:0]\chunk_byte_count_reg_reg[4]_1 ;
  input last_next;
  input buf_id_next;
  input \wr_addr_offset_reg_reg[0]_0 ;
  input [0:0]wr_addr_offset_reg;
  input [0:0]wr_base_addr_reg;
  input [0:0]O;
  input [3:0]\wr_base_addr_reg_reg[30]_0 ;
  input [3:0]\wr_base_addr_reg_reg[26]_0 ;
  input [3:0]\wr_base_addr_reg_reg[22]_0 ;
  input [3:0]\wr_base_addr_reg_reg[18]_0 ;
  input [3:0]\wr_base_addr_reg_reg[14]_0 ;
  input [3:0]\wr_base_addr_reg_reg[10]_0 ;
  input [6:0]\wr_base_addr_reg_reg[6]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_axi_writer_state_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_axi_writer_state_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_axi_writer_state_reg[2]_i_4_n_0 ;
  wire \FSM_onehot_axi_writer_state_reg[2]_i_6_n_0 ;
  wire \FSM_onehot_axi_writer_state_reg_reg[0]_0 ;
  wire \FSM_onehot_axi_writer_state_reg_reg[0]_1 ;
  wire \FSM_onehot_axi_writer_state_reg_reg[3]_0 ;
  wire \FSM_onehot_axi_writer_state_reg_reg[3]_1 ;
  wire \FSM_onehot_axi_writer_state_reg_reg[3]_2 ;
  wire \FSM_sequential_dma_state_reg_reg[0] ;
  wire \FSM_sequential_dma_state_reg_reg[0]_0 ;
  wire [31:0]M_AXI_AWADDR;
  wire M_AXI_AWADDR0_carry__0_i_1_n_0;
  wire M_AXI_AWADDR0_carry__0_i_2_n_0;
  wire M_AXI_AWADDR0_carry__0_i_3_n_0;
  wire M_AXI_AWADDR0_carry__0_i_4_n_0;
  wire M_AXI_AWADDR0_carry__0_n_0;
  wire M_AXI_AWADDR0_carry__0_n_1;
  wire M_AXI_AWADDR0_carry__0_n_2;
  wire M_AXI_AWADDR0_carry__0_n_3;
  wire M_AXI_AWADDR0_carry__1_i_1_n_0;
  wire M_AXI_AWADDR0_carry__1_i_2_n_0;
  wire M_AXI_AWADDR0_carry__1_i_3_n_0;
  wire M_AXI_AWADDR0_carry__1_i_4_n_0;
  wire M_AXI_AWADDR0_carry__1_n_0;
  wire M_AXI_AWADDR0_carry__1_n_1;
  wire M_AXI_AWADDR0_carry__1_n_2;
  wire M_AXI_AWADDR0_carry__1_n_3;
  wire M_AXI_AWADDR0_carry__2_i_1_n_0;
  wire M_AXI_AWADDR0_carry__2_i_2_n_0;
  wire M_AXI_AWADDR0_carry__2_i_3_n_0;
  wire M_AXI_AWADDR0_carry__2_i_4_n_0;
  wire M_AXI_AWADDR0_carry__2_n_0;
  wire M_AXI_AWADDR0_carry__2_n_1;
  wire M_AXI_AWADDR0_carry__2_n_2;
  wire M_AXI_AWADDR0_carry__2_n_3;
  wire M_AXI_AWADDR0_carry__3_i_1_n_0;
  wire M_AXI_AWADDR0_carry__3_i_2_n_0;
  wire M_AXI_AWADDR0_carry__3_i_3_n_0;
  wire M_AXI_AWADDR0_carry__3_i_4_n_0;
  wire M_AXI_AWADDR0_carry__3_n_0;
  wire M_AXI_AWADDR0_carry__3_n_1;
  wire M_AXI_AWADDR0_carry__3_n_2;
  wire M_AXI_AWADDR0_carry__3_n_3;
  wire M_AXI_AWADDR0_carry__4_i_1_n_0;
  wire M_AXI_AWADDR0_carry__4_i_2_n_0;
  wire M_AXI_AWADDR0_carry__4_i_3_n_0;
  wire M_AXI_AWADDR0_carry__4_i_4_n_0;
  wire M_AXI_AWADDR0_carry__4_n_0;
  wire M_AXI_AWADDR0_carry__4_n_1;
  wire M_AXI_AWADDR0_carry__4_n_2;
  wire M_AXI_AWADDR0_carry__4_n_3;
  wire M_AXI_AWADDR0_carry__5_i_1_n_0;
  wire M_AXI_AWADDR0_carry__5_i_2_n_0;
  wire M_AXI_AWADDR0_carry__5_i_3_n_0;
  wire M_AXI_AWADDR0_carry__5_i_4_n_0;
  wire M_AXI_AWADDR0_carry__5_n_0;
  wire M_AXI_AWADDR0_carry__5_n_1;
  wire M_AXI_AWADDR0_carry__5_n_2;
  wire M_AXI_AWADDR0_carry__5_n_3;
  wire M_AXI_AWADDR0_carry__6_i_1_n_0;
  wire M_AXI_AWADDR0_carry__6_i_2_n_0;
  wire M_AXI_AWADDR0_carry__6_i_3_n_0;
  wire M_AXI_AWADDR0_carry__6_i_4_n_0;
  wire M_AXI_AWADDR0_carry__6_n_1;
  wire M_AXI_AWADDR0_carry__6_n_2;
  wire M_AXI_AWADDR0_carry__6_n_3;
  wire M_AXI_AWADDR0_carry_i_1_n_0;
  wire M_AXI_AWADDR0_carry_i_2_n_0;
  wire M_AXI_AWADDR0_carry_i_3_n_0;
  wire M_AXI_AWADDR0_carry_i_4_n_0;
  wire M_AXI_AWADDR0_carry_n_0;
  wire M_AXI_AWADDR0_carry_n_1;
  wire M_AXI_AWADDR0_carry_n_2;
  wire M_AXI_AWADDR0_carry_n_3;
  wire [3:0]M_AXI_AWLEN;
  wire M_AXI_AWREADY;
  wire M_AXI_BVALID;
  wire [31:0]M_AXI_WDATA;
  wire \M_AXI_WDATA[0]_0 ;
  wire \M_AXI_WDATA[0]_1 ;
  wire \M_AXI_WDATA[0]_2 ;
  wire \M_AXI_WDATA[0]_3 ;
  wire \M_AXI_WDATA[0]_4 ;
  wire \M_AXI_WDATA[0]_5 ;
  wire \M_AXI_WDATA[0]_6 ;
  wire \M_AXI_WDATA[0]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[0]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[10]_0 ;
  wire \M_AXI_WDATA[10]_1 ;
  wire \M_AXI_WDATA[10]_2 ;
  wire \M_AXI_WDATA[10]_3 ;
  wire \M_AXI_WDATA[10]_4 ;
  wire \M_AXI_WDATA[10]_5 ;
  wire \M_AXI_WDATA[10]_6 ;
  wire \M_AXI_WDATA[10]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[10]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[11]_0 ;
  wire \M_AXI_WDATA[11]_1 ;
  wire \M_AXI_WDATA[11]_2 ;
  wire \M_AXI_WDATA[11]_3 ;
  wire \M_AXI_WDATA[11]_4 ;
  wire \M_AXI_WDATA[11]_5 ;
  wire \M_AXI_WDATA[11]_6 ;
  wire \M_AXI_WDATA[11]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[11]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[12]_0 ;
  wire \M_AXI_WDATA[12]_1 ;
  wire \M_AXI_WDATA[12]_2 ;
  wire \M_AXI_WDATA[12]_3 ;
  wire \M_AXI_WDATA[12]_4 ;
  wire \M_AXI_WDATA[12]_5 ;
  wire \M_AXI_WDATA[12]_6 ;
  wire \M_AXI_WDATA[12]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[12]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[13]_0 ;
  wire \M_AXI_WDATA[13]_1 ;
  wire \M_AXI_WDATA[13]_2 ;
  wire \M_AXI_WDATA[13]_3 ;
  wire \M_AXI_WDATA[13]_4 ;
  wire \M_AXI_WDATA[13]_5 ;
  wire \M_AXI_WDATA[13]_6 ;
  wire \M_AXI_WDATA[13]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[13]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[14]_0 ;
  wire \M_AXI_WDATA[14]_1 ;
  wire \M_AXI_WDATA[14]_2 ;
  wire \M_AXI_WDATA[14]_3 ;
  wire \M_AXI_WDATA[14]_4 ;
  wire \M_AXI_WDATA[14]_5 ;
  wire \M_AXI_WDATA[14]_6 ;
  wire \M_AXI_WDATA[14]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[14]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[15]_0 ;
  wire \M_AXI_WDATA[15]_1 ;
  wire \M_AXI_WDATA[15]_2 ;
  wire \M_AXI_WDATA[15]_3 ;
  wire \M_AXI_WDATA[15]_4 ;
  wire \M_AXI_WDATA[15]_5 ;
  wire \M_AXI_WDATA[15]_6 ;
  wire \M_AXI_WDATA[15]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[15]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[16]_0 ;
  wire \M_AXI_WDATA[16]_1 ;
  wire \M_AXI_WDATA[16]_2 ;
  wire \M_AXI_WDATA[16]_3 ;
  wire \M_AXI_WDATA[16]_4 ;
  wire \M_AXI_WDATA[16]_5 ;
  wire \M_AXI_WDATA[16]_6 ;
  wire \M_AXI_WDATA[16]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[16]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[17]_0 ;
  wire \M_AXI_WDATA[17]_1 ;
  wire \M_AXI_WDATA[17]_2 ;
  wire \M_AXI_WDATA[17]_3 ;
  wire \M_AXI_WDATA[17]_4 ;
  wire \M_AXI_WDATA[17]_5 ;
  wire \M_AXI_WDATA[17]_6 ;
  wire \M_AXI_WDATA[17]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[17]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[18]_0 ;
  wire \M_AXI_WDATA[18]_1 ;
  wire \M_AXI_WDATA[18]_2 ;
  wire \M_AXI_WDATA[18]_3 ;
  wire \M_AXI_WDATA[18]_4 ;
  wire \M_AXI_WDATA[18]_5 ;
  wire \M_AXI_WDATA[18]_6 ;
  wire \M_AXI_WDATA[18]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[18]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[19]_0 ;
  wire \M_AXI_WDATA[19]_1 ;
  wire \M_AXI_WDATA[19]_2 ;
  wire \M_AXI_WDATA[19]_3 ;
  wire \M_AXI_WDATA[19]_4 ;
  wire \M_AXI_WDATA[19]_5 ;
  wire \M_AXI_WDATA[19]_6 ;
  wire \M_AXI_WDATA[19]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[19]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[1]_0 ;
  wire \M_AXI_WDATA[1]_1 ;
  wire \M_AXI_WDATA[1]_2 ;
  wire \M_AXI_WDATA[1]_3 ;
  wire \M_AXI_WDATA[1]_4 ;
  wire \M_AXI_WDATA[1]_5 ;
  wire \M_AXI_WDATA[1]_6 ;
  wire \M_AXI_WDATA[1]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[1]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[20]_0 ;
  wire \M_AXI_WDATA[20]_1 ;
  wire \M_AXI_WDATA[20]_2 ;
  wire \M_AXI_WDATA[20]_3 ;
  wire \M_AXI_WDATA[20]_4 ;
  wire \M_AXI_WDATA[20]_5 ;
  wire \M_AXI_WDATA[20]_6 ;
  wire \M_AXI_WDATA[20]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[20]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[21]_0 ;
  wire \M_AXI_WDATA[21]_1 ;
  wire \M_AXI_WDATA[21]_2 ;
  wire \M_AXI_WDATA[21]_3 ;
  wire \M_AXI_WDATA[21]_4 ;
  wire \M_AXI_WDATA[21]_5 ;
  wire \M_AXI_WDATA[21]_6 ;
  wire \M_AXI_WDATA[21]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[21]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[22]_0 ;
  wire \M_AXI_WDATA[22]_1 ;
  wire \M_AXI_WDATA[22]_2 ;
  wire \M_AXI_WDATA[22]_3 ;
  wire \M_AXI_WDATA[22]_4 ;
  wire \M_AXI_WDATA[22]_5 ;
  wire \M_AXI_WDATA[22]_6 ;
  wire \M_AXI_WDATA[22]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[22]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[23]_0 ;
  wire \M_AXI_WDATA[23]_1 ;
  wire \M_AXI_WDATA[23]_2 ;
  wire \M_AXI_WDATA[23]_3 ;
  wire \M_AXI_WDATA[23]_4 ;
  wire \M_AXI_WDATA[23]_5 ;
  wire \M_AXI_WDATA[23]_6 ;
  wire \M_AXI_WDATA[23]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[23]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[24]_0 ;
  wire \M_AXI_WDATA[24]_1 ;
  wire \M_AXI_WDATA[24]_2 ;
  wire \M_AXI_WDATA[24]_3 ;
  wire \M_AXI_WDATA[24]_4 ;
  wire \M_AXI_WDATA[24]_5 ;
  wire \M_AXI_WDATA[24]_6 ;
  wire \M_AXI_WDATA[24]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[24]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[25]_0 ;
  wire \M_AXI_WDATA[25]_1 ;
  wire \M_AXI_WDATA[25]_2 ;
  wire \M_AXI_WDATA[25]_3 ;
  wire \M_AXI_WDATA[25]_4 ;
  wire \M_AXI_WDATA[25]_5 ;
  wire \M_AXI_WDATA[25]_6 ;
  wire \M_AXI_WDATA[25]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[25]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[26]_0 ;
  wire \M_AXI_WDATA[26]_1 ;
  wire \M_AXI_WDATA[26]_2 ;
  wire \M_AXI_WDATA[26]_3 ;
  wire \M_AXI_WDATA[26]_4 ;
  wire \M_AXI_WDATA[26]_5 ;
  wire \M_AXI_WDATA[26]_6 ;
  wire \M_AXI_WDATA[26]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[26]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[27]_0 ;
  wire \M_AXI_WDATA[27]_1 ;
  wire \M_AXI_WDATA[27]_2 ;
  wire \M_AXI_WDATA[27]_3 ;
  wire \M_AXI_WDATA[27]_4 ;
  wire \M_AXI_WDATA[27]_5 ;
  wire \M_AXI_WDATA[27]_6 ;
  wire \M_AXI_WDATA[27]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[27]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[28]_0 ;
  wire \M_AXI_WDATA[28]_1 ;
  wire \M_AXI_WDATA[28]_2 ;
  wire \M_AXI_WDATA[28]_3 ;
  wire \M_AXI_WDATA[28]_4 ;
  wire \M_AXI_WDATA[28]_5 ;
  wire \M_AXI_WDATA[28]_6 ;
  wire \M_AXI_WDATA[28]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[28]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[29]_0 ;
  wire \M_AXI_WDATA[29]_1 ;
  wire \M_AXI_WDATA[29]_2 ;
  wire \M_AXI_WDATA[29]_3 ;
  wire \M_AXI_WDATA[29]_4 ;
  wire \M_AXI_WDATA[29]_5 ;
  wire \M_AXI_WDATA[29]_6 ;
  wire \M_AXI_WDATA[29]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[29]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[2]_0 ;
  wire \M_AXI_WDATA[2]_1 ;
  wire \M_AXI_WDATA[2]_2 ;
  wire \M_AXI_WDATA[2]_3 ;
  wire \M_AXI_WDATA[2]_4 ;
  wire \M_AXI_WDATA[2]_5 ;
  wire \M_AXI_WDATA[2]_6 ;
  wire \M_AXI_WDATA[2]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[2]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[30]_0 ;
  wire \M_AXI_WDATA[30]_1 ;
  wire \M_AXI_WDATA[30]_2 ;
  wire \M_AXI_WDATA[30]_3 ;
  wire \M_AXI_WDATA[30]_4 ;
  wire \M_AXI_WDATA[30]_5 ;
  wire \M_AXI_WDATA[30]_6 ;
  wire \M_AXI_WDATA[30]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[30]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[31]_0 ;
  wire \M_AXI_WDATA[31]_1 ;
  wire \M_AXI_WDATA[31]_2 ;
  wire \M_AXI_WDATA[31]_3 ;
  wire \M_AXI_WDATA[31]_4 ;
  wire \M_AXI_WDATA[31]_5 ;
  wire \M_AXI_WDATA[31]_6 ;
  wire \M_AXI_WDATA[31]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[31]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[31]_INST_0_i_3_n_0 ;
  wire \M_AXI_WDATA[31]_INST_0_i_4_n_0 ;
  wire \M_AXI_WDATA[3]_0 ;
  wire \M_AXI_WDATA[3]_1 ;
  wire \M_AXI_WDATA[3]_2 ;
  wire \M_AXI_WDATA[3]_3 ;
  wire \M_AXI_WDATA[3]_4 ;
  wire \M_AXI_WDATA[3]_5 ;
  wire \M_AXI_WDATA[3]_6 ;
  wire \M_AXI_WDATA[3]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[3]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[4]_0 ;
  wire \M_AXI_WDATA[4]_1 ;
  wire \M_AXI_WDATA[4]_2 ;
  wire \M_AXI_WDATA[4]_3 ;
  wire \M_AXI_WDATA[4]_4 ;
  wire \M_AXI_WDATA[4]_5 ;
  wire \M_AXI_WDATA[4]_6 ;
  wire \M_AXI_WDATA[4]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[4]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[5]_0 ;
  wire \M_AXI_WDATA[5]_1 ;
  wire \M_AXI_WDATA[5]_2 ;
  wire \M_AXI_WDATA[5]_3 ;
  wire \M_AXI_WDATA[5]_4 ;
  wire \M_AXI_WDATA[5]_5 ;
  wire \M_AXI_WDATA[5]_6 ;
  wire \M_AXI_WDATA[5]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[5]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[6]_0 ;
  wire \M_AXI_WDATA[6]_1 ;
  wire \M_AXI_WDATA[6]_2 ;
  wire \M_AXI_WDATA[6]_3 ;
  wire \M_AXI_WDATA[6]_4 ;
  wire \M_AXI_WDATA[6]_5 ;
  wire \M_AXI_WDATA[6]_6 ;
  wire \M_AXI_WDATA[6]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[6]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[7]_0 ;
  wire \M_AXI_WDATA[7]_1 ;
  wire \M_AXI_WDATA[7]_2 ;
  wire \M_AXI_WDATA[7]_3 ;
  wire \M_AXI_WDATA[7]_4 ;
  wire \M_AXI_WDATA[7]_5 ;
  wire \M_AXI_WDATA[7]_6 ;
  wire \M_AXI_WDATA[7]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[7]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[8]_0 ;
  wire \M_AXI_WDATA[8]_1 ;
  wire \M_AXI_WDATA[8]_2 ;
  wire \M_AXI_WDATA[8]_3 ;
  wire \M_AXI_WDATA[8]_4 ;
  wire \M_AXI_WDATA[8]_5 ;
  wire \M_AXI_WDATA[8]_6 ;
  wire \M_AXI_WDATA[8]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[8]_INST_0_i_2_n_0 ;
  wire \M_AXI_WDATA[9]_0 ;
  wire \M_AXI_WDATA[9]_1 ;
  wire \M_AXI_WDATA[9]_2 ;
  wire \M_AXI_WDATA[9]_3 ;
  wire \M_AXI_WDATA[9]_4 ;
  wire \M_AXI_WDATA[9]_5 ;
  wire \M_AXI_WDATA[9]_6 ;
  wire \M_AXI_WDATA[9]_INST_0_i_1_n_0 ;
  wire \M_AXI_WDATA[9]_INST_0_i_2_n_0 ;
  wire M_AXI_WDATA_0_sn_1;
  wire M_AXI_WDATA_10_sn_1;
  wire M_AXI_WDATA_11_sn_1;
  wire M_AXI_WDATA_12_sn_1;
  wire M_AXI_WDATA_13_sn_1;
  wire M_AXI_WDATA_14_sn_1;
  wire M_AXI_WDATA_15_sn_1;
  wire M_AXI_WDATA_16_sn_1;
  wire M_AXI_WDATA_17_sn_1;
  wire M_AXI_WDATA_18_sn_1;
  wire M_AXI_WDATA_19_sn_1;
  wire M_AXI_WDATA_1_sn_1;
  wire M_AXI_WDATA_20_sn_1;
  wire M_AXI_WDATA_21_sn_1;
  wire M_AXI_WDATA_22_sn_1;
  wire M_AXI_WDATA_23_sn_1;
  wire M_AXI_WDATA_24_sn_1;
  wire M_AXI_WDATA_25_sn_1;
  wire M_AXI_WDATA_26_sn_1;
  wire M_AXI_WDATA_27_sn_1;
  wire M_AXI_WDATA_28_sn_1;
  wire M_AXI_WDATA_29_sn_1;
  wire M_AXI_WDATA_2_sn_1;
  wire M_AXI_WDATA_30_sn_1;
  wire M_AXI_WDATA_31_sn_1;
  wire M_AXI_WDATA_3_sn_1;
  wire M_AXI_WDATA_4_sn_1;
  wire M_AXI_WDATA_5_sn_1;
  wire M_AXI_WDATA_6_sn_1;
  wire M_AXI_WDATA_7_sn_1;
  wire M_AXI_WDATA_8_sn_1;
  wire M_AXI_WDATA_9_sn_1;
  wire M_AXI_WLAST;
  wire M_AXI_WREADY;
  wire M_AXI_WREADY_0;
  wire M_AXI_WREADY_1;
  wire [3:0]M_AXI_WSTRB;
  wire [0:0]O;
  wire [4:0]Q;
  wire axi_aclk;
  wire axi_aresetn;
  wire [1:0]buf_addr_reg;
  wire \buf_addr_reg[0]_i_1_n_0 ;
  wire \buf_addr_reg[1]_i_1_n_0 ;
  wire \buf_addr_reg[1]_i_3_n_0 ;
  wire \buf_addr_reg_reg[0]_0 ;
  wire buf_id_next;
  wire chunk_buf_id_reg;
  wire chunk_buf_id_reg_reg_0;
  wire chunk_buf_id_reg_reg_1;
  wire \chunk_byte_count_reg_reg[3]_0 ;
  wire \chunk_byte_count_reg_reg[4]_0 ;
  wire [4:0]\chunk_byte_count_reg_reg[4]_1 ;
  wire \chunk_byte_count_reg_reg_n_0_[0] ;
  wire \chunk_byte_count_reg_reg_n_0_[1] ;
  wire \chunk_byte_count_reg_reg_n_0_[2] ;
  wire \chunk_byte_count_reg_reg_n_0_[3] ;
  wire \chunk_byte_count_reg_reg_n_0_[4] ;
  wire [1:0]dma_state_reg;
  wire [1:0]dout;
  wire \gen_wr_a.gen_word_narrow.mem_reg ;
  wire [31:0]in7;
  wire last_next;
  wire last_reg;
  wire last_reg_reg_0;
  wire last_reg_reg_1;
  wire [0:0]wr_addr_offset_reg;
  wire \wr_addr_offset_reg[3]_i_2_n_0 ;
  wire \wr_addr_offset_reg[3]_i_3_n_0 ;
  wire \wr_addr_offset_reg[3]_i_4_n_0 ;
  wire \wr_addr_offset_reg[3]_i_5_n_0 ;
  wire [31:0]wr_addr_offset_reg__0;
  wire \wr_addr_offset_reg_reg[0]_0 ;
  wire \wr_addr_offset_reg_reg[11]_i_1_n_0 ;
  wire \wr_addr_offset_reg_reg[11]_i_1_n_1 ;
  wire \wr_addr_offset_reg_reg[11]_i_1_n_2 ;
  wire \wr_addr_offset_reg_reg[11]_i_1_n_3 ;
  wire \wr_addr_offset_reg_reg[15]_i_1_n_0 ;
  wire \wr_addr_offset_reg_reg[15]_i_1_n_1 ;
  wire \wr_addr_offset_reg_reg[15]_i_1_n_2 ;
  wire \wr_addr_offset_reg_reg[15]_i_1_n_3 ;
  wire \wr_addr_offset_reg_reg[19]_i_1_n_0 ;
  wire \wr_addr_offset_reg_reg[19]_i_1_n_1 ;
  wire \wr_addr_offset_reg_reg[19]_i_1_n_2 ;
  wire \wr_addr_offset_reg_reg[19]_i_1_n_3 ;
  wire \wr_addr_offset_reg_reg[23]_i_1_n_0 ;
  wire \wr_addr_offset_reg_reg[23]_i_1_n_1 ;
  wire \wr_addr_offset_reg_reg[23]_i_1_n_2 ;
  wire \wr_addr_offset_reg_reg[23]_i_1_n_3 ;
  wire \wr_addr_offset_reg_reg[27]_i_1_n_0 ;
  wire \wr_addr_offset_reg_reg[27]_i_1_n_1 ;
  wire \wr_addr_offset_reg_reg[27]_i_1_n_2 ;
  wire \wr_addr_offset_reg_reg[27]_i_1_n_3 ;
  wire \wr_addr_offset_reg_reg[31]_0 ;
  wire \wr_addr_offset_reg_reg[31]_i_3_n_1 ;
  wire \wr_addr_offset_reg_reg[31]_i_3_n_2 ;
  wire \wr_addr_offset_reg_reg[31]_i_3_n_3 ;
  wire \wr_addr_offset_reg_reg[3]_i_1_n_0 ;
  wire \wr_addr_offset_reg_reg[3]_i_1_n_1 ;
  wire \wr_addr_offset_reg_reg[3]_i_1_n_2 ;
  wire \wr_addr_offset_reg_reg[3]_i_1_n_3 ;
  wire \wr_addr_offset_reg_reg[7]_i_1_n_0 ;
  wire \wr_addr_offset_reg_reg[7]_i_1_n_1 ;
  wire \wr_addr_offset_reg_reg[7]_i_1_n_2 ;
  wire \wr_addr_offset_reg_reg[7]_i_1_n_3 ;
  wire [0:0]wr_base_addr_reg;
  wire [31:0]wr_base_addr_reg__0;
  wire [3:0]\wr_base_addr_reg_reg[10]_0 ;
  wire [3:0]\wr_base_addr_reg_reg[14]_0 ;
  wire [3:0]\wr_base_addr_reg_reg[18]_0 ;
  wire [3:0]\wr_base_addr_reg_reg[22]_0 ;
  wire [3:0]\wr_base_addr_reg_reg[26]_0 ;
  wire [3:0]\wr_base_addr_reg_reg[30]_0 ;
  wire [6:0]\wr_base_addr_reg_reg[6]_0 ;
  wire [3:3]NLW_M_AXI_AWADDR0_carry__6_CO_UNCONNECTED;
  wire [3:3]\NLW_wr_addr_offset_reg_reg[31]_i_3_CO_UNCONNECTED ;

  assign M_AXI_WDATA_0_sn_1 = M_AXI_WDATA_0_sp_1;
  assign M_AXI_WDATA_10_sn_1 = M_AXI_WDATA_10_sp_1;
  assign M_AXI_WDATA_11_sn_1 = M_AXI_WDATA_11_sp_1;
  assign M_AXI_WDATA_12_sn_1 = M_AXI_WDATA_12_sp_1;
  assign M_AXI_WDATA_13_sn_1 = M_AXI_WDATA_13_sp_1;
  assign M_AXI_WDATA_14_sn_1 = M_AXI_WDATA_14_sp_1;
  assign M_AXI_WDATA_15_sn_1 = M_AXI_WDATA_15_sp_1;
  assign M_AXI_WDATA_16_sn_1 = M_AXI_WDATA_16_sp_1;
  assign M_AXI_WDATA_17_sn_1 = M_AXI_WDATA_17_sp_1;
  assign M_AXI_WDATA_18_sn_1 = M_AXI_WDATA_18_sp_1;
  assign M_AXI_WDATA_19_sn_1 = M_AXI_WDATA_19_sp_1;
  assign M_AXI_WDATA_1_sn_1 = M_AXI_WDATA_1_sp_1;
  assign M_AXI_WDATA_20_sn_1 = M_AXI_WDATA_20_sp_1;
  assign M_AXI_WDATA_21_sn_1 = M_AXI_WDATA_21_sp_1;
  assign M_AXI_WDATA_22_sn_1 = M_AXI_WDATA_22_sp_1;
  assign M_AXI_WDATA_23_sn_1 = M_AXI_WDATA_23_sp_1;
  assign M_AXI_WDATA_24_sn_1 = M_AXI_WDATA_24_sp_1;
  assign M_AXI_WDATA_25_sn_1 = M_AXI_WDATA_25_sp_1;
  assign M_AXI_WDATA_26_sn_1 = M_AXI_WDATA_26_sp_1;
  assign M_AXI_WDATA_27_sn_1 = M_AXI_WDATA_27_sp_1;
  assign M_AXI_WDATA_28_sn_1 = M_AXI_WDATA_28_sp_1;
  assign M_AXI_WDATA_29_sn_1 = M_AXI_WDATA_29_sp_1;
  assign M_AXI_WDATA_2_sn_1 = M_AXI_WDATA_2_sp_1;
  assign M_AXI_WDATA_30_sn_1 = M_AXI_WDATA_30_sp_1;
  assign M_AXI_WDATA_31_sn_1 = M_AXI_WDATA_31_sp_1;
  assign M_AXI_WDATA_3_sn_1 = M_AXI_WDATA_3_sp_1;
  assign M_AXI_WDATA_4_sn_1 = M_AXI_WDATA_4_sp_1;
  assign M_AXI_WDATA_5_sn_1 = M_AXI_WDATA_5_sp_1;
  assign M_AXI_WDATA_6_sn_1 = M_AXI_WDATA_6_sp_1;
  assign M_AXI_WDATA_7_sn_1 = M_AXI_WDATA_7_sp_1;
  assign M_AXI_WDATA_8_sn_1 = M_AXI_WDATA_8_sp_1;
  assign M_AXI_WDATA_9_sn_1 = M_AXI_WDATA_9_sp_1;
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_axi_writer_state_reg[1]_i_1 
       (.I0(last_reg),
        .I1(Q[4]),
        .I2(Q[0]),
        .O(\FSM_onehot_axi_writer_state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEAAA)) 
    \FSM_onehot_axi_writer_state_reg[2]_i_1 
       (.I0(\buf_addr_reg_reg[0]_0 ),
        .I1(\FSM_onehot_axi_writer_state_reg[2]_i_4_n_0 ),
        .I2(Q[3]),
        .I3(M_AXI_WREADY),
        .I4(\FSM_onehot_axi_writer_state_reg_reg[0]_0 ),
        .I5(\FSM_onehot_axi_writer_state_reg[2]_i_6_n_0 ),
        .O(\FSM_onehot_axi_writer_state_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h0000001F)) 
    \FSM_onehot_axi_writer_state_reg[2]_i_4 
       (.I0(\chunk_byte_count_reg_reg_n_0_[0] ),
        .I1(\chunk_byte_count_reg_reg_n_0_[1] ),
        .I2(\chunk_byte_count_reg_reg_n_0_[2] ),
        .I3(\chunk_byte_count_reg_reg_n_0_[3] ),
        .I4(\chunk_byte_count_reg_reg_n_0_[4] ),
        .O(\FSM_onehot_axi_writer_state_reg[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \FSM_onehot_axi_writer_state_reg[2]_i_6 
       (.I0(Q[4]),
        .I1(M_AXI_BVALID),
        .I2(M_AXI_AWREADY),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\FSM_onehot_axi_writer_state_reg_reg[0]_1 ),
        .O(\FSM_onehot_axi_writer_state_reg[2]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_axi_writer_state_reg[2]_i_8 
       (.I0(dout[1]),
        .I1(dout[0]),
        .O(\gen_wr_a.gen_word_narrow.mem_reg ));
  (* FSM_ENCODED_STATES = "s_axi_write:01000,s_wait_b:10000,s_awvalid:00100,s_idle:00001,s_recv_chunk:00010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_axi_writer_state_reg_reg[0] 
       (.C(axi_aclk),
        .CE(\FSM_onehot_axi_writer_state_reg[2]_i_1_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .S(chunk_buf_id_reg_reg_0));
  (* FSM_ENCODED_STATES = "s_axi_write:01000,s_wait_b:10000,s_awvalid:00100,s_idle:00001,s_recv_chunk:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_axi_writer_state_reg_reg[1] 
       (.C(axi_aclk),
        .CE(\FSM_onehot_axi_writer_state_reg[2]_i_1_n_0 ),
        .D(\FSM_onehot_axi_writer_state_reg[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(chunk_buf_id_reg_reg_0));
  (* FSM_ENCODED_STATES = "s_axi_write:01000,s_wait_b:10000,s_awvalid:00100,s_idle:00001,s_recv_chunk:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_axi_writer_state_reg_reg[2] 
       (.C(axi_aclk),
        .CE(\FSM_onehot_axi_writer_state_reg[2]_i_1_n_0 ),
        .D(D[1]),
        .Q(Q[2]),
        .R(chunk_buf_id_reg_reg_0));
  (* FSM_ENCODED_STATES = "s_axi_write:01000,s_wait_b:10000,s_awvalid:00100,s_idle:00001,s_recv_chunk:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_axi_writer_state_reg_reg[3] 
       (.C(axi_aclk),
        .CE(\FSM_onehot_axi_writer_state_reg[2]_i_1_n_0 ),
        .D(Q[2]),
        .Q(Q[3]),
        .R(chunk_buf_id_reg_reg_0));
  (* FSM_ENCODED_STATES = "s_axi_write:01000,s_wait_b:10000,s_awvalid:00100,s_idle:00001,s_recv_chunk:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_axi_writer_state_reg_reg[4] 
       (.C(axi_aclk),
        .CE(\FSM_onehot_axi_writer_state_reg[2]_i_1_n_0 ),
        .D(Q[3]),
        .Q(Q[4]),
        .R(chunk_buf_id_reg_reg_0));
  LUT6 #(
    .INIT(64'hFF80808000000000)) 
    \FSM_sequential_dma_state_reg[0]_i_2 
       (.I0(last_reg),
        .I1(M_AXI_BVALID),
        .I2(Q[4]),
        .I3(\FSM_sequential_dma_state_reg_reg[0] ),
        .I4(\FSM_sequential_dma_state_reg_reg[0]_0 ),
        .I5(dma_state_reg[1]),
        .O(last_reg_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 M_AXI_AWADDR0_carry
       (.CI(1'b0),
        .CO({M_AXI_AWADDR0_carry_n_0,M_AXI_AWADDR0_carry_n_1,M_AXI_AWADDR0_carry_n_2,M_AXI_AWADDR0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(wr_base_addr_reg__0[3:0]),
        .O(M_AXI_AWADDR[3:0]),
        .S({M_AXI_AWADDR0_carry_i_1_n_0,M_AXI_AWADDR0_carry_i_2_n_0,M_AXI_AWADDR0_carry_i_3_n_0,M_AXI_AWADDR0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 M_AXI_AWADDR0_carry__0
       (.CI(M_AXI_AWADDR0_carry_n_0),
        .CO({M_AXI_AWADDR0_carry__0_n_0,M_AXI_AWADDR0_carry__0_n_1,M_AXI_AWADDR0_carry__0_n_2,M_AXI_AWADDR0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(wr_base_addr_reg__0[7:4]),
        .O(M_AXI_AWADDR[7:4]),
        .S({M_AXI_AWADDR0_carry__0_i_1_n_0,M_AXI_AWADDR0_carry__0_i_2_n_0,M_AXI_AWADDR0_carry__0_i_3_n_0,M_AXI_AWADDR0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__0_i_1
       (.I0(wr_base_addr_reg__0[7]),
        .I1(wr_addr_offset_reg__0[7]),
        .O(M_AXI_AWADDR0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__0_i_2
       (.I0(wr_base_addr_reg__0[6]),
        .I1(wr_addr_offset_reg__0[6]),
        .O(M_AXI_AWADDR0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__0_i_3
       (.I0(wr_base_addr_reg__0[5]),
        .I1(wr_addr_offset_reg__0[5]),
        .O(M_AXI_AWADDR0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__0_i_4
       (.I0(wr_base_addr_reg__0[4]),
        .I1(wr_addr_offset_reg__0[4]),
        .O(M_AXI_AWADDR0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 M_AXI_AWADDR0_carry__1
       (.CI(M_AXI_AWADDR0_carry__0_n_0),
        .CO({M_AXI_AWADDR0_carry__1_n_0,M_AXI_AWADDR0_carry__1_n_1,M_AXI_AWADDR0_carry__1_n_2,M_AXI_AWADDR0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(wr_base_addr_reg__0[11:8]),
        .O(M_AXI_AWADDR[11:8]),
        .S({M_AXI_AWADDR0_carry__1_i_1_n_0,M_AXI_AWADDR0_carry__1_i_2_n_0,M_AXI_AWADDR0_carry__1_i_3_n_0,M_AXI_AWADDR0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__1_i_1
       (.I0(wr_base_addr_reg__0[11]),
        .I1(wr_addr_offset_reg__0[11]),
        .O(M_AXI_AWADDR0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__1_i_2
       (.I0(wr_base_addr_reg__0[10]),
        .I1(wr_addr_offset_reg__0[10]),
        .O(M_AXI_AWADDR0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__1_i_3
       (.I0(wr_base_addr_reg__0[9]),
        .I1(wr_addr_offset_reg__0[9]),
        .O(M_AXI_AWADDR0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__1_i_4
       (.I0(wr_base_addr_reg__0[8]),
        .I1(wr_addr_offset_reg__0[8]),
        .O(M_AXI_AWADDR0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 M_AXI_AWADDR0_carry__2
       (.CI(M_AXI_AWADDR0_carry__1_n_0),
        .CO({M_AXI_AWADDR0_carry__2_n_0,M_AXI_AWADDR0_carry__2_n_1,M_AXI_AWADDR0_carry__2_n_2,M_AXI_AWADDR0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(wr_base_addr_reg__0[15:12]),
        .O(M_AXI_AWADDR[15:12]),
        .S({M_AXI_AWADDR0_carry__2_i_1_n_0,M_AXI_AWADDR0_carry__2_i_2_n_0,M_AXI_AWADDR0_carry__2_i_3_n_0,M_AXI_AWADDR0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__2_i_1
       (.I0(wr_base_addr_reg__0[15]),
        .I1(wr_addr_offset_reg__0[15]),
        .O(M_AXI_AWADDR0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__2_i_2
       (.I0(wr_base_addr_reg__0[14]),
        .I1(wr_addr_offset_reg__0[14]),
        .O(M_AXI_AWADDR0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__2_i_3
       (.I0(wr_base_addr_reg__0[13]),
        .I1(wr_addr_offset_reg__0[13]),
        .O(M_AXI_AWADDR0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__2_i_4
       (.I0(wr_base_addr_reg__0[12]),
        .I1(wr_addr_offset_reg__0[12]),
        .O(M_AXI_AWADDR0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 M_AXI_AWADDR0_carry__3
       (.CI(M_AXI_AWADDR0_carry__2_n_0),
        .CO({M_AXI_AWADDR0_carry__3_n_0,M_AXI_AWADDR0_carry__3_n_1,M_AXI_AWADDR0_carry__3_n_2,M_AXI_AWADDR0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(wr_base_addr_reg__0[19:16]),
        .O(M_AXI_AWADDR[19:16]),
        .S({M_AXI_AWADDR0_carry__3_i_1_n_0,M_AXI_AWADDR0_carry__3_i_2_n_0,M_AXI_AWADDR0_carry__3_i_3_n_0,M_AXI_AWADDR0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__3_i_1
       (.I0(wr_base_addr_reg__0[19]),
        .I1(wr_addr_offset_reg__0[19]),
        .O(M_AXI_AWADDR0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__3_i_2
       (.I0(wr_base_addr_reg__0[18]),
        .I1(wr_addr_offset_reg__0[18]),
        .O(M_AXI_AWADDR0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__3_i_3
       (.I0(wr_base_addr_reg__0[17]),
        .I1(wr_addr_offset_reg__0[17]),
        .O(M_AXI_AWADDR0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__3_i_4
       (.I0(wr_base_addr_reg__0[16]),
        .I1(wr_addr_offset_reg__0[16]),
        .O(M_AXI_AWADDR0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 M_AXI_AWADDR0_carry__4
       (.CI(M_AXI_AWADDR0_carry__3_n_0),
        .CO({M_AXI_AWADDR0_carry__4_n_0,M_AXI_AWADDR0_carry__4_n_1,M_AXI_AWADDR0_carry__4_n_2,M_AXI_AWADDR0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(wr_base_addr_reg__0[23:20]),
        .O(M_AXI_AWADDR[23:20]),
        .S({M_AXI_AWADDR0_carry__4_i_1_n_0,M_AXI_AWADDR0_carry__4_i_2_n_0,M_AXI_AWADDR0_carry__4_i_3_n_0,M_AXI_AWADDR0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__4_i_1
       (.I0(wr_base_addr_reg__0[23]),
        .I1(wr_addr_offset_reg__0[23]),
        .O(M_AXI_AWADDR0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__4_i_2
       (.I0(wr_base_addr_reg__0[22]),
        .I1(wr_addr_offset_reg__0[22]),
        .O(M_AXI_AWADDR0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__4_i_3
       (.I0(wr_base_addr_reg__0[21]),
        .I1(wr_addr_offset_reg__0[21]),
        .O(M_AXI_AWADDR0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__4_i_4
       (.I0(wr_base_addr_reg__0[20]),
        .I1(wr_addr_offset_reg__0[20]),
        .O(M_AXI_AWADDR0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 M_AXI_AWADDR0_carry__5
       (.CI(M_AXI_AWADDR0_carry__4_n_0),
        .CO({M_AXI_AWADDR0_carry__5_n_0,M_AXI_AWADDR0_carry__5_n_1,M_AXI_AWADDR0_carry__5_n_2,M_AXI_AWADDR0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(wr_base_addr_reg__0[27:24]),
        .O(M_AXI_AWADDR[27:24]),
        .S({M_AXI_AWADDR0_carry__5_i_1_n_0,M_AXI_AWADDR0_carry__5_i_2_n_0,M_AXI_AWADDR0_carry__5_i_3_n_0,M_AXI_AWADDR0_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__5_i_1
       (.I0(wr_base_addr_reg__0[27]),
        .I1(wr_addr_offset_reg__0[27]),
        .O(M_AXI_AWADDR0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__5_i_2
       (.I0(wr_base_addr_reg__0[26]),
        .I1(wr_addr_offset_reg__0[26]),
        .O(M_AXI_AWADDR0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__5_i_3
       (.I0(wr_base_addr_reg__0[25]),
        .I1(wr_addr_offset_reg__0[25]),
        .O(M_AXI_AWADDR0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__5_i_4
       (.I0(wr_base_addr_reg__0[24]),
        .I1(wr_addr_offset_reg__0[24]),
        .O(M_AXI_AWADDR0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 M_AXI_AWADDR0_carry__6
       (.CI(M_AXI_AWADDR0_carry__5_n_0),
        .CO({NLW_M_AXI_AWADDR0_carry__6_CO_UNCONNECTED[3],M_AXI_AWADDR0_carry__6_n_1,M_AXI_AWADDR0_carry__6_n_2,M_AXI_AWADDR0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,wr_base_addr_reg__0[30:28]}),
        .O(M_AXI_AWADDR[31:28]),
        .S({M_AXI_AWADDR0_carry__6_i_1_n_0,M_AXI_AWADDR0_carry__6_i_2_n_0,M_AXI_AWADDR0_carry__6_i_3_n_0,M_AXI_AWADDR0_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__6_i_1
       (.I0(wr_base_addr_reg__0[31]),
        .I1(wr_addr_offset_reg__0[31]),
        .O(M_AXI_AWADDR0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__6_i_2
       (.I0(wr_base_addr_reg__0[30]),
        .I1(wr_addr_offset_reg__0[30]),
        .O(M_AXI_AWADDR0_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__6_i_3
       (.I0(wr_base_addr_reg__0[29]),
        .I1(wr_addr_offset_reg__0[29]),
        .O(M_AXI_AWADDR0_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry__6_i_4
       (.I0(wr_base_addr_reg__0[28]),
        .I1(wr_addr_offset_reg__0[28]),
        .O(M_AXI_AWADDR0_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry_i_1
       (.I0(wr_base_addr_reg__0[3]),
        .I1(wr_addr_offset_reg__0[3]),
        .O(M_AXI_AWADDR0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry_i_2
       (.I0(wr_base_addr_reg__0[2]),
        .I1(wr_addr_offset_reg__0[2]),
        .O(M_AXI_AWADDR0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry_i_3
       (.I0(wr_base_addr_reg__0[1]),
        .I1(wr_addr_offset_reg__0[1]),
        .O(M_AXI_AWADDR0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    M_AXI_AWADDR0_carry_i_4
       (.I0(wr_base_addr_reg__0[0]),
        .I1(wr_addr_offset_reg__0[0]),
        .O(M_AXI_AWADDR0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \M_AXI_AWLEN[0]_INST_0 
       (.I0(\chunk_byte_count_reg_reg_n_0_[2] ),
        .I1(\chunk_byte_count_reg_reg_n_0_[0] ),
        .I2(\chunk_byte_count_reg_reg_n_0_[1] ),
        .O(M_AXI_AWLEN[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \M_AXI_AWLEN[1]_INST_0 
       (.I0(\chunk_byte_count_reg_reg_n_0_[3] ),
        .I1(\chunk_byte_count_reg_reg_n_0_[1] ),
        .I2(\chunk_byte_count_reg_reg_n_0_[0] ),
        .I3(\chunk_byte_count_reg_reg_n_0_[2] ),
        .O(M_AXI_AWLEN[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \M_AXI_AWLEN[2]_INST_0 
       (.I0(\chunk_byte_count_reg_reg_n_0_[4] ),
        .I1(\chunk_byte_count_reg_reg_n_0_[3] ),
        .I2(\chunk_byte_count_reg_reg_n_0_[2] ),
        .I3(\chunk_byte_count_reg_reg_n_0_[1] ),
        .I4(\chunk_byte_count_reg_reg_n_0_[0] ),
        .O(M_AXI_AWLEN[2]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h80808001)) 
    \M_AXI_AWLEN[3]_INST_0 
       (.I0(\chunk_byte_count_reg_reg_n_0_[4] ),
        .I1(\chunk_byte_count_reg_reg_n_0_[3] ),
        .I2(\chunk_byte_count_reg_reg_n_0_[2] ),
        .I3(\chunk_byte_count_reg_reg_n_0_[1] ),
        .I4(\chunk_byte_count_reg_reg_n_0_[0] ),
        .O(M_AXI_AWLEN[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[0]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_0_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[0]_0 ),
        .I4(\M_AXI_WDATA[0]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[0]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[0]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[0]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[0]_1 ),
        .I1(\M_AXI_WDATA[0]_2 ),
        .I2(\M_AXI_WDATA[0]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[0]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[0]_4 ),
        .I1(\M_AXI_WDATA[0]_5 ),
        .I2(\M_AXI_WDATA[0]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[10]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_10_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[10]_0 ),
        .I4(\M_AXI_WDATA[10]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[10]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[10]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[10]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[10]_1 ),
        .I1(\M_AXI_WDATA[10]_2 ),
        .I2(\M_AXI_WDATA[10]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[10]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[10]_4 ),
        .I1(\M_AXI_WDATA[10]_5 ),
        .I2(\M_AXI_WDATA[10]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[11]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_11_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[11]_0 ),
        .I4(\M_AXI_WDATA[11]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[11]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[11]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[11]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[11]_1 ),
        .I1(\M_AXI_WDATA[11]_2 ),
        .I2(\M_AXI_WDATA[11]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[11]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[11]_4 ),
        .I1(\M_AXI_WDATA[11]_5 ),
        .I2(\M_AXI_WDATA[11]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[12]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_12_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[12]_0 ),
        .I4(\M_AXI_WDATA[12]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[12]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[12]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[12]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[12]_1 ),
        .I1(\M_AXI_WDATA[12]_2 ),
        .I2(\M_AXI_WDATA[12]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[12]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[12]_4 ),
        .I1(\M_AXI_WDATA[12]_5 ),
        .I2(\M_AXI_WDATA[12]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[13]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_13_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[13]_0 ),
        .I4(\M_AXI_WDATA[13]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[13]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[13]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[13]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[13]_1 ),
        .I1(\M_AXI_WDATA[13]_2 ),
        .I2(\M_AXI_WDATA[13]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[13]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[13]_4 ),
        .I1(\M_AXI_WDATA[13]_5 ),
        .I2(\M_AXI_WDATA[13]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[14]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_14_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[14]_0 ),
        .I4(\M_AXI_WDATA[14]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[14]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[14]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[14]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[14]_1 ),
        .I1(\M_AXI_WDATA[14]_2 ),
        .I2(\M_AXI_WDATA[14]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[14]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[14]_4 ),
        .I1(\M_AXI_WDATA[14]_5 ),
        .I2(\M_AXI_WDATA[14]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[15]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_15_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[15]_0 ),
        .I4(\M_AXI_WDATA[15]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[15]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[15]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[15]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[15]_1 ),
        .I1(\M_AXI_WDATA[15]_2 ),
        .I2(\M_AXI_WDATA[15]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[15]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[15]_4 ),
        .I1(\M_AXI_WDATA[15]_5 ),
        .I2(\M_AXI_WDATA[15]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[16]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_16_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[16]_0 ),
        .I4(\M_AXI_WDATA[16]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[16]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[16]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[16]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[16]_1 ),
        .I1(\M_AXI_WDATA[16]_2 ),
        .I2(\M_AXI_WDATA[16]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[16]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[16]_4 ),
        .I1(\M_AXI_WDATA[16]_5 ),
        .I2(\M_AXI_WDATA[16]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[16]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[17]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_17_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[17]_0 ),
        .I4(\M_AXI_WDATA[17]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[17]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[17]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[17]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[17]_1 ),
        .I1(\M_AXI_WDATA[17]_2 ),
        .I2(\M_AXI_WDATA[17]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[17]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[17]_4 ),
        .I1(\M_AXI_WDATA[17]_5 ),
        .I2(\M_AXI_WDATA[17]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[17]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[18]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_18_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[18]_0 ),
        .I4(\M_AXI_WDATA[18]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[18]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[18]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[18]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[18]_1 ),
        .I1(\M_AXI_WDATA[18]_2 ),
        .I2(\M_AXI_WDATA[18]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[18]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[18]_4 ),
        .I1(\M_AXI_WDATA[18]_5 ),
        .I2(\M_AXI_WDATA[18]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[19]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_19_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[19]_0 ),
        .I4(\M_AXI_WDATA[19]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[19]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[19]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[19]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[19]_1 ),
        .I1(\M_AXI_WDATA[19]_2 ),
        .I2(\M_AXI_WDATA[19]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[19]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[19]_4 ),
        .I1(\M_AXI_WDATA[19]_5 ),
        .I2(\M_AXI_WDATA[19]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[19]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[1]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_1_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[1]_0 ),
        .I4(\M_AXI_WDATA[1]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[1]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[1]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[1]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[1]_1 ),
        .I1(\M_AXI_WDATA[1]_2 ),
        .I2(\M_AXI_WDATA[1]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[1]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[1]_4 ),
        .I1(\M_AXI_WDATA[1]_5 ),
        .I2(\M_AXI_WDATA[1]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[20]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_20_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[20]_0 ),
        .I4(\M_AXI_WDATA[20]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[20]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[20]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[20]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[20]_1 ),
        .I1(\M_AXI_WDATA[20]_2 ),
        .I2(\M_AXI_WDATA[20]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[20]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[20]_4 ),
        .I1(\M_AXI_WDATA[20]_5 ),
        .I2(\M_AXI_WDATA[20]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[20]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[21]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_21_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[21]_0 ),
        .I4(\M_AXI_WDATA[21]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[21]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[21]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[21]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[21]_1 ),
        .I1(\M_AXI_WDATA[21]_2 ),
        .I2(\M_AXI_WDATA[21]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[21]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[21]_4 ),
        .I1(\M_AXI_WDATA[21]_5 ),
        .I2(\M_AXI_WDATA[21]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[22]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_22_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[22]_0 ),
        .I4(\M_AXI_WDATA[22]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[22]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[22]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[22]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[22]_1 ),
        .I1(\M_AXI_WDATA[22]_2 ),
        .I2(\M_AXI_WDATA[22]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[22]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[22]_4 ),
        .I1(\M_AXI_WDATA[22]_5 ),
        .I2(\M_AXI_WDATA[22]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[22]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[23]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_23_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[23]_0 ),
        .I4(\M_AXI_WDATA[23]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[23]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[23]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[23]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[23]_1 ),
        .I1(\M_AXI_WDATA[23]_2 ),
        .I2(\M_AXI_WDATA[23]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[23]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[23]_4 ),
        .I1(\M_AXI_WDATA[23]_5 ),
        .I2(\M_AXI_WDATA[23]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[24]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_24_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[24]_0 ),
        .I4(\M_AXI_WDATA[24]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[24]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[24]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[24]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[24]_1 ),
        .I1(\M_AXI_WDATA[24]_2 ),
        .I2(\M_AXI_WDATA[24]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[24]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[24]_4 ),
        .I1(\M_AXI_WDATA[24]_5 ),
        .I2(\M_AXI_WDATA[24]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[25]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_25_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[25]_0 ),
        .I4(\M_AXI_WDATA[25]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[25]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[25]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[25]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[25]_1 ),
        .I1(\M_AXI_WDATA[25]_2 ),
        .I2(\M_AXI_WDATA[25]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[25]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[25]_4 ),
        .I1(\M_AXI_WDATA[25]_5 ),
        .I2(\M_AXI_WDATA[25]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[26]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_26_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[26]_0 ),
        .I4(\M_AXI_WDATA[26]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[26]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[26]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[26]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[26]_1 ),
        .I1(\M_AXI_WDATA[26]_2 ),
        .I2(\M_AXI_WDATA[26]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[26]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[26]_4 ),
        .I1(\M_AXI_WDATA[26]_5 ),
        .I2(\M_AXI_WDATA[26]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[27]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_27_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[27]_0 ),
        .I4(\M_AXI_WDATA[27]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[27]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[27]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[27]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[27]_1 ),
        .I1(\M_AXI_WDATA[27]_2 ),
        .I2(\M_AXI_WDATA[27]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[27]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[27]_4 ),
        .I1(\M_AXI_WDATA[27]_5 ),
        .I2(\M_AXI_WDATA[27]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[27]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[28]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_28_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[28]_0 ),
        .I4(\M_AXI_WDATA[28]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[28]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[28]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[28]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[28]_1 ),
        .I1(\M_AXI_WDATA[28]_2 ),
        .I2(\M_AXI_WDATA[28]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[28]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[28]_4 ),
        .I1(\M_AXI_WDATA[28]_5 ),
        .I2(\M_AXI_WDATA[28]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[28]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[29]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_29_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[29]_0 ),
        .I4(\M_AXI_WDATA[29]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[29]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[29]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[29]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[29]_1 ),
        .I1(\M_AXI_WDATA[29]_2 ),
        .I2(\M_AXI_WDATA[29]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[29]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[29]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[29]_4 ),
        .I1(\M_AXI_WDATA[29]_5 ),
        .I2(\M_AXI_WDATA[29]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[29]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[2]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_2_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[2]_0 ),
        .I4(\M_AXI_WDATA[2]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[2]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[2]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[2]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[2]_1 ),
        .I1(\M_AXI_WDATA[2]_2 ),
        .I2(\M_AXI_WDATA[2]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[2]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[2]_4 ),
        .I1(\M_AXI_WDATA[2]_5 ),
        .I2(\M_AXI_WDATA[2]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[30]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_30_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[30]_0 ),
        .I4(\M_AXI_WDATA[30]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[30]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[30]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[30]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[30]_1 ),
        .I1(\M_AXI_WDATA[30]_2 ),
        .I2(\M_AXI_WDATA[30]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[30]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[30]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[30]_4 ),
        .I1(\M_AXI_WDATA[30]_5 ),
        .I2(\M_AXI_WDATA[30]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[30]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[31]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_31_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[31]_0 ),
        .I4(\M_AXI_WDATA[31]_INST_0_i_3_n_0 ),
        .I5(\M_AXI_WDATA[31]_INST_0_i_4_n_0 ),
        .O(M_AXI_WDATA[31]));
  LUT3 #(
    .INIT(8'h40)) 
    \M_AXI_WDATA[31]_INST_0_i_1 
       (.I0(chunk_buf_id_reg),
        .I1(buf_addr_reg[0]),
        .I2(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \M_AXI_WDATA[31]_INST_0_i_2 
       (.I0(buf_addr_reg[0]),
        .I1(chunk_buf_id_reg),
        .I2(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[31]_INST_0_i_3 
       (.I0(\M_AXI_WDATA[31]_1 ),
        .I1(\M_AXI_WDATA[31]_2 ),
        .I2(\M_AXI_WDATA[31]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[31]_INST_0_i_4 
       (.I0(\M_AXI_WDATA[31]_4 ),
        .I1(\M_AXI_WDATA[31]_5 ),
        .I2(\M_AXI_WDATA[31]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[3]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_3_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[3]_0 ),
        .I4(\M_AXI_WDATA[3]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[3]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[3]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[3]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[3]_1 ),
        .I1(\M_AXI_WDATA[3]_2 ),
        .I2(\M_AXI_WDATA[3]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[3]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[3]_4 ),
        .I1(\M_AXI_WDATA[3]_5 ),
        .I2(\M_AXI_WDATA[3]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[4]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_4_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[4]_0 ),
        .I4(\M_AXI_WDATA[4]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[4]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[4]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[4]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[4]_1 ),
        .I1(\M_AXI_WDATA[4]_2 ),
        .I2(\M_AXI_WDATA[4]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[4]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[4]_4 ),
        .I1(\M_AXI_WDATA[4]_5 ),
        .I2(\M_AXI_WDATA[4]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[5]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_5_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[5]_0 ),
        .I4(\M_AXI_WDATA[5]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[5]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[5]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[5]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[5]_1 ),
        .I1(\M_AXI_WDATA[5]_2 ),
        .I2(\M_AXI_WDATA[5]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[5]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[5]_4 ),
        .I1(\M_AXI_WDATA[5]_5 ),
        .I2(\M_AXI_WDATA[5]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[6]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_6_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[6]_0 ),
        .I4(\M_AXI_WDATA[6]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[6]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[6]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[6]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[6]_1 ),
        .I1(\M_AXI_WDATA[6]_2 ),
        .I2(\M_AXI_WDATA[6]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[6]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[6]_4 ),
        .I1(\M_AXI_WDATA[6]_5 ),
        .I2(\M_AXI_WDATA[6]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[7]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_7_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[7]_0 ),
        .I4(\M_AXI_WDATA[7]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[7]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[7]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[7]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[7]_1 ),
        .I1(\M_AXI_WDATA[7]_2 ),
        .I2(\M_AXI_WDATA[7]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[7]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[7]_4 ),
        .I1(\M_AXI_WDATA[7]_5 ),
        .I2(\M_AXI_WDATA[7]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[8]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_8_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[8]_0 ),
        .I4(\M_AXI_WDATA[8]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[8]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[8]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[8]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[8]_1 ),
        .I1(\M_AXI_WDATA[8]_2 ),
        .I2(\M_AXI_WDATA[8]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[8]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[8]_4 ),
        .I1(\M_AXI_WDATA[8]_5 ),
        .I2(\M_AXI_WDATA[8]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \M_AXI_WDATA[9]_INST_0 
       (.I0(\M_AXI_WDATA[31]_INST_0_i_1_n_0 ),
        .I1(M_AXI_WDATA_9_sn_1),
        .I2(\M_AXI_WDATA[31]_INST_0_i_2_n_0 ),
        .I3(\M_AXI_WDATA[9]_0 ),
        .I4(\M_AXI_WDATA[9]_INST_0_i_1_n_0 ),
        .I5(\M_AXI_WDATA[9]_INST_0_i_2_n_0 ),
        .O(M_AXI_WDATA[9]));
  LUT6 #(
    .INIT(64'h0000000000F0CCAA)) 
    \M_AXI_WDATA[9]_INST_0_i_1 
       (.I0(\M_AXI_WDATA[9]_1 ),
        .I1(\M_AXI_WDATA[9]_2 ),
        .I2(\M_AXI_WDATA[9]_3 ),
        .I3(chunk_buf_id_reg),
        .I4(buf_addr_reg[0]),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F000CCAA000000)) 
    \M_AXI_WDATA[9]_INST_0_i_2 
       (.I0(\M_AXI_WDATA[9]_4 ),
        .I1(\M_AXI_WDATA[9]_5 ),
        .I2(\M_AXI_WDATA[9]_6 ),
        .I3(buf_addr_reg[0]),
        .I4(chunk_buf_id_reg),
        .I5(buf_addr_reg[1]),
        .O(\M_AXI_WDATA[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0101011100000000)) 
    M_AXI_WLAST_INST_0
       (.I0(\chunk_byte_count_reg_reg_n_0_[4] ),
        .I1(\chunk_byte_count_reg_reg_n_0_[3] ),
        .I2(\chunk_byte_count_reg_reg_n_0_[2] ),
        .I3(\chunk_byte_count_reg_reg_n_0_[1] ),
        .I4(\chunk_byte_count_reg_reg_n_0_[0] ),
        .I5(Q[3]),
        .O(M_AXI_WLAST));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \M_AXI_WSTRB[0]_INST_0 
       (.I0(\chunk_byte_count_reg_reg_n_0_[2] ),
        .I1(\chunk_byte_count_reg_reg_n_0_[3] ),
        .I2(\chunk_byte_count_reg_reg_n_0_[4] ),
        .I3(\chunk_byte_count_reg_reg_n_0_[1] ),
        .I4(\chunk_byte_count_reg_reg_n_0_[0] ),
        .O(M_AXI_WSTRB[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \M_AXI_WSTRB[1]_INST_0 
       (.I0(\chunk_byte_count_reg_reg_n_0_[2] ),
        .I1(\chunk_byte_count_reg_reg_n_0_[3] ),
        .I2(\chunk_byte_count_reg_reg_n_0_[4] ),
        .I3(\chunk_byte_count_reg_reg_n_0_[1] ),
        .O(M_AXI_WSTRB[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \M_AXI_WSTRB[2]_INST_0 
       (.I0(\chunk_byte_count_reg_reg_n_0_[1] ),
        .I1(\chunk_byte_count_reg_reg_n_0_[0] ),
        .I2(\chunk_byte_count_reg_reg_n_0_[2] ),
        .I3(\chunk_byte_count_reg_reg_n_0_[3] ),
        .I4(\chunk_byte_count_reg_reg_n_0_[4] ),
        .O(M_AXI_WSTRB[2]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \M_AXI_WSTRB[3]_INST_0 
       (.I0(\chunk_byte_count_reg_reg_n_0_[4] ),
        .I1(\chunk_byte_count_reg_reg_n_0_[3] ),
        .I2(\chunk_byte_count_reg_reg_n_0_[2] ),
        .O(M_AXI_WSTRB[3]));
  LUT6 #(
    .INIT(64'h01111111FE00EE00)) 
    \buf_addr_reg[0]_i_1 
       (.I0(buf_id_next),
        .I1(\buf_addr_reg_reg[0]_0 ),
        .I2(\buf_addr_reg[1]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(M_AXI_WREADY),
        .I5(buf_addr_reg[0]),
        .O(\buf_addr_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h57337733A8008800)) 
    \buf_addr_reg[1]_i_1 
       (.I0(buf_addr_reg[0]),
        .I1(last_next),
        .I2(\buf_addr_reg[1]_i_3_n_0 ),
        .I3(Q[3]),
        .I4(M_AXI_WREADY),
        .I5(buf_addr_reg[1]),
        .O(\buf_addr_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hFFFFFFA8)) 
    \buf_addr_reg[1]_i_3 
       (.I0(\chunk_byte_count_reg_reg_n_0_[2] ),
        .I1(\chunk_byte_count_reg_reg_n_0_[0] ),
        .I2(\chunk_byte_count_reg_reg_n_0_[1] ),
        .I3(\chunk_byte_count_reg_reg_n_0_[4] ),
        .I4(\chunk_byte_count_reg_reg_n_0_[3] ),
        .O(\buf_addr_reg[1]_i_3_n_0 ));
  FDRE \buf_addr_reg_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\buf_addr_reg[0]_i_1_n_0 ),
        .Q(buf_addr_reg[0]),
        .R(chunk_buf_id_reg_reg_0));
  FDRE \buf_addr_reg_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\buf_addr_reg[1]_i_1_n_0 ),
        .Q(buf_addr_reg[1]),
        .R(chunk_buf_id_reg_reg_0));
  FDRE chunk_buf_id_reg_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(chunk_buf_id_reg_reg_1),
        .Q(chunk_buf_id_reg),
        .R(chunk_buf_id_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h88888880)) 
    \chunk_byte_count_reg[0]_i_2 
       (.I0(Q[3]),
        .I1(\chunk_byte_count_reg_reg_n_0_[0] ),
        .I2(\chunk_byte_count_reg_reg_n_0_[2] ),
        .I3(\chunk_byte_count_reg_reg_n_0_[3] ),
        .I4(\chunk_byte_count_reg_reg_n_0_[4] ),
        .O(\FSM_onehot_axi_writer_state_reg_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE000000)) 
    \chunk_byte_count_reg[1]_i_2 
       (.I0(\chunk_byte_count_reg_reg_n_0_[4] ),
        .I1(\chunk_byte_count_reg_reg_n_0_[3] ),
        .I2(\chunk_byte_count_reg_reg_n_0_[2] ),
        .I3(\chunk_byte_count_reg_reg_n_0_[1] ),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\chunk_byte_count_reg_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hFFFF00E0)) 
    \chunk_byte_count_reg[2]_i_2 
       (.I0(\chunk_byte_count_reg_reg_n_0_[3] ),
        .I1(\chunk_byte_count_reg_reg_n_0_[4] ),
        .I2(Q[3]),
        .I3(\chunk_byte_count_reg_reg_n_0_[2] ),
        .I4(Q[2]),
        .O(\chunk_byte_count_reg_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h8820)) 
    \chunk_byte_count_reg[3]_i_4 
       (.I0(Q[3]),
        .I1(\chunk_byte_count_reg_reg_n_0_[3] ),
        .I2(\chunk_byte_count_reg_reg_n_0_[4] ),
        .I3(\chunk_byte_count_reg_reg_n_0_[2] ),
        .O(\FSM_onehot_axi_writer_state_reg_reg[3]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hA080)) 
    \chunk_byte_count_reg[4]_i_6 
       (.I0(Q[3]),
        .I1(\chunk_byte_count_reg_reg_n_0_[3] ),
        .I2(\chunk_byte_count_reg_reg_n_0_[4] ),
        .I3(\chunk_byte_count_reg_reg_n_0_[2] ),
        .O(\FSM_onehot_axi_writer_state_reg_reg[3]_1 ));
  FDRE \chunk_byte_count_reg_reg[0] 
       (.C(axi_aclk),
        .CE(E),
        .D(\chunk_byte_count_reg_reg[4]_1 [0]),
        .Q(\chunk_byte_count_reg_reg_n_0_[0] ),
        .R(chunk_buf_id_reg_reg_0));
  FDRE \chunk_byte_count_reg_reg[1] 
       (.C(axi_aclk),
        .CE(E),
        .D(\chunk_byte_count_reg_reg[4]_1 [1]),
        .Q(\chunk_byte_count_reg_reg_n_0_[1] ),
        .R(chunk_buf_id_reg_reg_0));
  FDRE \chunk_byte_count_reg_reg[2] 
       (.C(axi_aclk),
        .CE(E),
        .D(\chunk_byte_count_reg_reg[4]_1 [2]),
        .Q(\chunk_byte_count_reg_reg_n_0_[2] ),
        .R(chunk_buf_id_reg_reg_0));
  FDRE \chunk_byte_count_reg_reg[3] 
       (.C(axi_aclk),
        .CE(E),
        .D(\chunk_byte_count_reg_reg[4]_1 [3]),
        .Q(\chunk_byte_count_reg_reg_n_0_[3] ),
        .R(chunk_buf_id_reg_reg_0));
  FDRE \chunk_byte_count_reg_reg[4] 
       (.C(axi_aclk),
        .CE(E),
        .D(\chunk_byte_count_reg_reg[4]_1 [4]),
        .Q(\chunk_byte_count_reg_reg_n_0_[4] ),
        .R(chunk_buf_id_reg_reg_0));
  FDRE last_reg_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(last_reg_reg_1),
        .Q(last_reg),
        .R(chunk_buf_id_reg_reg_0));
  LUT6 #(
    .INIT(64'hFFF80000F8F80000)) 
    \wr_addr_offset_reg[31]_i_7 
       (.I0(M_AXI_WREADY),
        .I1(Q[3]),
        .I2(\buf_addr_reg_reg[0]_0 ),
        .I3(\wr_addr_offset_reg_reg[31]_0 ),
        .I4(axi_aresetn),
        .I5(dout[0]),
        .O(M_AXI_WREADY_0));
  LUT5 #(
    .INIT(32'h8888F888)) 
    \wr_addr_offset_reg[31]_i_8 
       (.I0(M_AXI_WREADY),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(dma_state_reg[0]),
        .I4(dma_state_reg[1]),
        .O(M_AXI_WREADY_1));
  LUT3 #(
    .INIT(8'hFE)) 
    \wr_addr_offset_reg[3]_i_2 
       (.I0(\chunk_byte_count_reg_reg_n_0_[4] ),
        .I1(\chunk_byte_count_reg_reg_n_0_[3] ),
        .I2(\chunk_byte_count_reg_reg_n_0_[2] ),
        .O(\wr_addr_offset_reg[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h01FE)) 
    \wr_addr_offset_reg[3]_i_3 
       (.I0(\chunk_byte_count_reg_reg_n_0_[2] ),
        .I1(\chunk_byte_count_reg_reg_n_0_[3] ),
        .I2(\chunk_byte_count_reg_reg_n_0_[4] ),
        .I3(wr_addr_offset_reg__0[2]),
        .O(\wr_addr_offset_reg[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0100)) 
    \wr_addr_offset_reg[3]_i_4 
       (.I0(\chunk_byte_count_reg_reg_n_0_[4] ),
        .I1(\chunk_byte_count_reg_reg_n_0_[3] ),
        .I2(\chunk_byte_count_reg_reg_n_0_[2] ),
        .I3(\chunk_byte_count_reg_reg_n_0_[1] ),
        .I4(wr_addr_offset_reg__0[1]),
        .O(\wr_addr_offset_reg[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0100)) 
    \wr_addr_offset_reg[3]_i_5 
       (.I0(\chunk_byte_count_reg_reg_n_0_[4] ),
        .I1(\chunk_byte_count_reg_reg_n_0_[3] ),
        .I2(\chunk_byte_count_reg_reg_n_0_[2] ),
        .I3(\chunk_byte_count_reg_reg_n_0_[0] ),
        .I4(wr_addr_offset_reg__0[0]),
        .O(\wr_addr_offset_reg[3]_i_5_n_0 ));
  FDRE \wr_addr_offset_reg_reg[0] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[0]),
        .Q(wr_addr_offset_reg__0[0]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  FDRE \wr_addr_offset_reg_reg[10] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[10]),
        .Q(wr_addr_offset_reg__0[10]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  FDRE \wr_addr_offset_reg_reg[11] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[11]),
        .Q(wr_addr_offset_reg__0[11]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \wr_addr_offset_reg_reg[11]_i_1 
       (.CI(\wr_addr_offset_reg_reg[7]_i_1_n_0 ),
        .CO({\wr_addr_offset_reg_reg[11]_i_1_n_0 ,\wr_addr_offset_reg_reg[11]_i_1_n_1 ,\wr_addr_offset_reg_reg[11]_i_1_n_2 ,\wr_addr_offset_reg_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[11:8]),
        .S(wr_addr_offset_reg__0[11:8]));
  FDRE \wr_addr_offset_reg_reg[12] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[12]),
        .Q(wr_addr_offset_reg__0[12]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  FDRE \wr_addr_offset_reg_reg[13] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[13]),
        .Q(wr_addr_offset_reg__0[13]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  FDRE \wr_addr_offset_reg_reg[14] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[14]),
        .Q(wr_addr_offset_reg__0[14]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  FDRE \wr_addr_offset_reg_reg[15] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[15]),
        .Q(wr_addr_offset_reg__0[15]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \wr_addr_offset_reg_reg[15]_i_1 
       (.CI(\wr_addr_offset_reg_reg[11]_i_1_n_0 ),
        .CO({\wr_addr_offset_reg_reg[15]_i_1_n_0 ,\wr_addr_offset_reg_reg[15]_i_1_n_1 ,\wr_addr_offset_reg_reg[15]_i_1_n_2 ,\wr_addr_offset_reg_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[15:12]),
        .S(wr_addr_offset_reg__0[15:12]));
  FDRE \wr_addr_offset_reg_reg[16] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[16]),
        .Q(wr_addr_offset_reg__0[16]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  FDRE \wr_addr_offset_reg_reg[17] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[17]),
        .Q(wr_addr_offset_reg__0[17]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  FDRE \wr_addr_offset_reg_reg[18] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[18]),
        .Q(wr_addr_offset_reg__0[18]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  FDRE \wr_addr_offset_reg_reg[19] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[19]),
        .Q(wr_addr_offset_reg__0[19]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \wr_addr_offset_reg_reg[19]_i_1 
       (.CI(\wr_addr_offset_reg_reg[15]_i_1_n_0 ),
        .CO({\wr_addr_offset_reg_reg[19]_i_1_n_0 ,\wr_addr_offset_reg_reg[19]_i_1_n_1 ,\wr_addr_offset_reg_reg[19]_i_1_n_2 ,\wr_addr_offset_reg_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[19:16]),
        .S(wr_addr_offset_reg__0[19:16]));
  FDRE \wr_addr_offset_reg_reg[1] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[1]),
        .Q(wr_addr_offset_reg__0[1]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  FDRE \wr_addr_offset_reg_reg[20] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[20]),
        .Q(wr_addr_offset_reg__0[20]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  FDRE \wr_addr_offset_reg_reg[21] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[21]),
        .Q(wr_addr_offset_reg__0[21]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  FDRE \wr_addr_offset_reg_reg[22] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[22]),
        .Q(wr_addr_offset_reg__0[22]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  FDRE \wr_addr_offset_reg_reg[23] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[23]),
        .Q(wr_addr_offset_reg__0[23]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \wr_addr_offset_reg_reg[23]_i_1 
       (.CI(\wr_addr_offset_reg_reg[19]_i_1_n_0 ),
        .CO({\wr_addr_offset_reg_reg[23]_i_1_n_0 ,\wr_addr_offset_reg_reg[23]_i_1_n_1 ,\wr_addr_offset_reg_reg[23]_i_1_n_2 ,\wr_addr_offset_reg_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[23:20]),
        .S(wr_addr_offset_reg__0[23:20]));
  FDRE \wr_addr_offset_reg_reg[24] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[24]),
        .Q(wr_addr_offset_reg__0[24]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  FDRE \wr_addr_offset_reg_reg[25] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[25]),
        .Q(wr_addr_offset_reg__0[25]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  FDRE \wr_addr_offset_reg_reg[26] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[26]),
        .Q(wr_addr_offset_reg__0[26]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  FDRE \wr_addr_offset_reg_reg[27] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[27]),
        .Q(wr_addr_offset_reg__0[27]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \wr_addr_offset_reg_reg[27]_i_1 
       (.CI(\wr_addr_offset_reg_reg[23]_i_1_n_0 ),
        .CO({\wr_addr_offset_reg_reg[27]_i_1_n_0 ,\wr_addr_offset_reg_reg[27]_i_1_n_1 ,\wr_addr_offset_reg_reg[27]_i_1_n_2 ,\wr_addr_offset_reg_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[27:24]),
        .S(wr_addr_offset_reg__0[27:24]));
  FDRE \wr_addr_offset_reg_reg[28] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[28]),
        .Q(wr_addr_offset_reg__0[28]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  FDRE \wr_addr_offset_reg_reg[29] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[29]),
        .Q(wr_addr_offset_reg__0[29]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  FDRE \wr_addr_offset_reg_reg[2] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[2]),
        .Q(wr_addr_offset_reg__0[2]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  FDRE \wr_addr_offset_reg_reg[30] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[30]),
        .Q(wr_addr_offset_reg__0[30]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  FDRE \wr_addr_offset_reg_reg[31] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[31]),
        .Q(wr_addr_offset_reg__0[31]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \wr_addr_offset_reg_reg[31]_i_3 
       (.CI(\wr_addr_offset_reg_reg[27]_i_1_n_0 ),
        .CO({\NLW_wr_addr_offset_reg_reg[31]_i_3_CO_UNCONNECTED [3],\wr_addr_offset_reg_reg[31]_i_3_n_1 ,\wr_addr_offset_reg_reg[31]_i_3_n_2 ,\wr_addr_offset_reg_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[31:28]),
        .S(wr_addr_offset_reg__0[31:28]));
  FDRE \wr_addr_offset_reg_reg[3] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[3]),
        .Q(wr_addr_offset_reg__0[3]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \wr_addr_offset_reg_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\wr_addr_offset_reg_reg[3]_i_1_n_0 ,\wr_addr_offset_reg_reg[3]_i_1_n_1 ,\wr_addr_offset_reg_reg[3]_i_1_n_2 ,\wr_addr_offset_reg_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\wr_addr_offset_reg[3]_i_2_n_0 ,wr_addr_offset_reg__0[1:0]}),
        .O(in7[3:0]),
        .S({wr_addr_offset_reg__0[3],\wr_addr_offset_reg[3]_i_3_n_0 ,\wr_addr_offset_reg[3]_i_4_n_0 ,\wr_addr_offset_reg[3]_i_5_n_0 }));
  FDRE \wr_addr_offset_reg_reg[4] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[4]),
        .Q(wr_addr_offset_reg__0[4]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  FDRE \wr_addr_offset_reg_reg[5] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[5]),
        .Q(wr_addr_offset_reg__0[5]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  FDRE \wr_addr_offset_reg_reg[6] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[6]),
        .Q(wr_addr_offset_reg__0[6]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  FDRE \wr_addr_offset_reg_reg[7] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[7]),
        .Q(wr_addr_offset_reg__0[7]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \wr_addr_offset_reg_reg[7]_i_1 
       (.CI(\wr_addr_offset_reg_reg[3]_i_1_n_0 ),
        .CO({\wr_addr_offset_reg_reg[7]_i_1_n_0 ,\wr_addr_offset_reg_reg[7]_i_1_n_1 ,\wr_addr_offset_reg_reg[7]_i_1_n_2 ,\wr_addr_offset_reg_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in7[7:4]),
        .S(wr_addr_offset_reg__0[7:4]));
  FDRE \wr_addr_offset_reg_reg[8] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[8]),
        .Q(wr_addr_offset_reg__0[8]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  FDRE \wr_addr_offset_reg_reg[9] 
       (.C(axi_aclk),
        .CE(wr_addr_offset_reg),
        .D(in7[9]),
        .Q(wr_addr_offset_reg__0[9]),
        .R(\wr_addr_offset_reg_reg[0]_0 ));
  FDRE \wr_base_addr_reg_reg[0] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[6]_0 [0]),
        .Q(wr_base_addr_reg__0[0]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[10] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[10]_0 [3]),
        .Q(wr_base_addr_reg__0[10]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[11] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[14]_0 [0]),
        .Q(wr_base_addr_reg__0[11]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[12] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[14]_0 [1]),
        .Q(wr_base_addr_reg__0[12]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[13] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[14]_0 [2]),
        .Q(wr_base_addr_reg__0[13]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[14] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[14]_0 [3]),
        .Q(wr_base_addr_reg__0[14]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[15] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[18]_0 [0]),
        .Q(wr_base_addr_reg__0[15]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[16] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[18]_0 [1]),
        .Q(wr_base_addr_reg__0[16]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[17] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[18]_0 [2]),
        .Q(wr_base_addr_reg__0[17]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[18] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[18]_0 [3]),
        .Q(wr_base_addr_reg__0[18]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[19] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[22]_0 [0]),
        .Q(wr_base_addr_reg__0[19]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[1] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[6]_0 [1]),
        .Q(wr_base_addr_reg__0[1]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[20] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[22]_0 [1]),
        .Q(wr_base_addr_reg__0[20]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[21] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[22]_0 [2]),
        .Q(wr_base_addr_reg__0[21]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[22] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[22]_0 [3]),
        .Q(wr_base_addr_reg__0[22]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[23] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[26]_0 [0]),
        .Q(wr_base_addr_reg__0[23]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[24] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[26]_0 [1]),
        .Q(wr_base_addr_reg__0[24]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[25] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[26]_0 [2]),
        .Q(wr_base_addr_reg__0[25]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[26] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[26]_0 [3]),
        .Q(wr_base_addr_reg__0[26]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[27] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[30]_0 [0]),
        .Q(wr_base_addr_reg__0[27]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[28] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[30]_0 [1]),
        .Q(wr_base_addr_reg__0[28]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[29] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[30]_0 [2]),
        .Q(wr_base_addr_reg__0[29]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[2] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[6]_0 [2]),
        .Q(wr_base_addr_reg__0[2]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[30] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[30]_0 [3]),
        .Q(wr_base_addr_reg__0[30]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[31] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(O),
        .Q(wr_base_addr_reg__0[31]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[3] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[6]_0 [3]),
        .Q(wr_base_addr_reg__0[3]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[4] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[6]_0 [4]),
        .Q(wr_base_addr_reg__0[4]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[5] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[6]_0 [5]),
        .Q(wr_base_addr_reg__0[5]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[6] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[6]_0 [6]),
        .Q(wr_base_addr_reg__0[6]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[7] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[10]_0 [0]),
        .Q(wr_base_addr_reg__0[7]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[8] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[10]_0 [1]),
        .Q(wr_base_addr_reg__0[8]),
        .R(1'b0));
  FDRE \wr_base_addr_reg_reg[9] 
       (.C(axi_aclk),
        .CE(wr_base_addr_reg),
        .D(\wr_base_addr_reg_reg[10]_0 [2]),
        .Q(wr_base_addr_reg__0[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dma_payload_collector" *) 
module design_1_eth_rx_0_2_dma_payload_collector
   (axi_aresetn_0,
    last_reg_reg,
    buf_id_next,
    buf_id_reg_reg_0,
    \gen_wr_a.gen_word_narrow.mem_reg ,
    chunk_error_reg_reg_0,
    \FSM_onehot_axi_writer_state_reg_reg[2] ,
    chunk_last_reg_reg_0,
    buf_id_reg_reg_1,
    \chunk_byte_count_reg_reg[2]_0 ,
    \chunk_byte_count_reg_reg[2]_1 ,
    \chunk_byte_count_reg_reg[2]_2 ,
    buf_id_reg_reg_2,
    buf_id_reg_reg_3,
    buf_id_reg_reg_4,
    buf_id_reg_reg_5,
    buf_id_reg_reg_6,
    buf_id_reg_reg_7,
    buf_id_reg_reg_8,
    buf_id_reg_reg_9,
    \chunk_byte_count_reg_reg[0]_0 ,
    \chunk_byte_count_reg_reg[2]_3 ,
    \chunk_byte_count_reg_reg[2]_4 ,
    buf_id_reg_reg_10,
    buf_id_reg_reg_11,
    \chunk_byte_count_reg_reg[2]_5 ,
    \chunk_byte_count_reg_reg[2]_6 ,
    \chunk_byte_count_reg_reg[2]_7 ,
    buf_id_reg_reg_12,
    buf_id_reg_reg_13,
    buf_id_reg_reg_14,
    buf_id_reg_reg_15,
    buf_id_reg_reg_16,
    buf_id_reg_reg_17,
    buf_id_reg_reg_18,
    buf_id_reg_reg_19,
    \chunk_byte_count_reg_reg[0]_1 ,
    \chunk_byte_count_reg_reg[2]_8 ,
    \chunk_byte_count_reg_reg[2]_9 ,
    buf_id_reg_reg_20,
    D,
    \FSM_sequential_state_reg_reg[1]_0 ,
    last_next,
    wr_addr_offset_reg,
    \chunk_byte_count_reg_reg[2]_10 ,
    rd_en,
    chunk_last_reg_reg_1,
    axi_aclk,
    axi_aresetn,
    Q,
    last_reg_reg_0,
    last_reg,
    chunk_buf_id_reg,
    dout,
    chunk_last_reg_reg_2,
    \chunk_byte_count_reg_reg[0]_2 ,
    \chunk_byte_count_reg_reg[1]_0 ,
    \chunk_byte_count_reg_reg[2]_11 ,
    \chunk_byte_count_reg_reg[3]_0 ,
    \chunk_byte_count_reg_reg[4]_0 ,
    \wr_addr_offset_reg_reg[31] ,
    \wr_addr_offset_reg_reg[0] ,
    rd_rst_busy,
    empty);
  output axi_aresetn_0;
  output last_reg_reg;
  output buf_id_next;
  output buf_id_reg_reg_0;
  output \gen_wr_a.gen_word_narrow.mem_reg ;
  output chunk_error_reg_reg_0;
  output [4:0]\FSM_onehot_axi_writer_state_reg_reg[2] ;
  output chunk_last_reg_reg_0;
  output buf_id_reg_reg_1;
  output \chunk_byte_count_reg_reg[2]_0 ;
  output \chunk_byte_count_reg_reg[2]_1 ;
  output \chunk_byte_count_reg_reg[2]_2 ;
  output buf_id_reg_reg_2;
  output buf_id_reg_reg_3;
  output buf_id_reg_reg_4;
  output buf_id_reg_reg_5;
  output buf_id_reg_reg_6;
  output buf_id_reg_reg_7;
  output buf_id_reg_reg_8;
  output buf_id_reg_reg_9;
  output \chunk_byte_count_reg_reg[0]_0 ;
  output \chunk_byte_count_reg_reg[2]_3 ;
  output \chunk_byte_count_reg_reg[2]_4 ;
  output buf_id_reg_reg_10;
  output buf_id_reg_reg_11;
  output \chunk_byte_count_reg_reg[2]_5 ;
  output \chunk_byte_count_reg_reg[2]_6 ;
  output \chunk_byte_count_reg_reg[2]_7 ;
  output buf_id_reg_reg_12;
  output buf_id_reg_reg_13;
  output buf_id_reg_reg_14;
  output buf_id_reg_reg_15;
  output buf_id_reg_reg_16;
  output buf_id_reg_reg_17;
  output buf_id_reg_reg_18;
  output buf_id_reg_reg_19;
  output \chunk_byte_count_reg_reg[0]_1 ;
  output \chunk_byte_count_reg_reg[2]_8 ;
  output \chunk_byte_count_reg_reg[2]_9 ;
  output buf_id_reg_reg_20;
  output [1:0]D;
  output \FSM_sequential_state_reg_reg[1]_0 ;
  output last_next;
  output [0:0]wr_addr_offset_reg;
  output \chunk_byte_count_reg_reg[2]_10 ;
  output rd_en;
  input chunk_last_reg_reg_1;
  input axi_aclk;
  input axi_aresetn;
  input [3:0]Q;
  input last_reg_reg_0;
  input last_reg;
  input chunk_buf_id_reg;
  input [1:0]dout;
  input chunk_last_reg_reg_2;
  input \chunk_byte_count_reg_reg[0]_2 ;
  input \chunk_byte_count_reg_reg[1]_0 ;
  input \chunk_byte_count_reg_reg[2]_11 ;
  input \chunk_byte_count_reg_reg[3]_0 ;
  input \chunk_byte_count_reg_reg[4]_0 ;
  input \wr_addr_offset_reg_reg[31] ;
  input \wr_addr_offset_reg_reg[0] ;
  input rd_rst_busy;
  input empty;

  wire [1:0]D;
  wire \FSM_onehot_axi_writer_state_reg[0]_i_3_n_0 ;
  wire \FSM_onehot_axi_writer_state_reg[2]_i_7_n_0 ;
  wire [4:0]\FSM_onehot_axi_writer_state_reg_reg[2] ;
  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg_reg[1]_0 ;
  wire [3:0]Q;
  wire axi_aclk;
  wire axi_aresetn;
  wire axi_aresetn_0;
  wire buf_id_next;
  wire buf_id_reg;
  wire buf_id_reg_i_1_n_0;
  wire buf_id_reg_reg_0;
  wire buf_id_reg_reg_1;
  wire buf_id_reg_reg_10;
  wire buf_id_reg_reg_11;
  wire buf_id_reg_reg_12;
  wire buf_id_reg_reg_13;
  wire buf_id_reg_reg_14;
  wire buf_id_reg_reg_15;
  wire buf_id_reg_reg_16;
  wire buf_id_reg_reg_17;
  wire buf_id_reg_reg_18;
  wire buf_id_reg_reg_19;
  wire buf_id_reg_reg_2;
  wire buf_id_reg_reg_20;
  wire buf_id_reg_reg_3;
  wire buf_id_reg_reg_4;
  wire buf_id_reg_reg_5;
  wire buf_id_reg_reg_6;
  wire buf_id_reg_reg_7;
  wire buf_id_reg_reg_8;
  wire buf_id_reg_reg_9;
  wire chunk_buf_id_reg;
  wire chunk_buf_id_reg_i_2_n_0;
  wire [4:0]chunk_byte_count_next;
  wire [4:0]chunk_byte_count_reg;
  wire \chunk_byte_count_reg[3]_i_3_n_0 ;
  wire \chunk_byte_count_reg[4]_i_1_n_0 ;
  wire \chunk_byte_count_reg[4]_i_3__0_n_0 ;
  wire \chunk_byte_count_reg[4]_i_4__0_n_0 ;
  wire \chunk_byte_count_reg[4]_i_4_n_0 ;
  wire \chunk_byte_count_reg[4]_i_5_n_0 ;
  wire \chunk_byte_count_reg_reg[0]_0 ;
  wire \chunk_byte_count_reg_reg[0]_1 ;
  wire \chunk_byte_count_reg_reg[0]_2 ;
  wire \chunk_byte_count_reg_reg[1]_0 ;
  wire \chunk_byte_count_reg_reg[2]_0 ;
  wire \chunk_byte_count_reg_reg[2]_1 ;
  wire \chunk_byte_count_reg_reg[2]_10 ;
  wire \chunk_byte_count_reg_reg[2]_11 ;
  wire \chunk_byte_count_reg_reg[2]_2 ;
  wire \chunk_byte_count_reg_reg[2]_3 ;
  wire \chunk_byte_count_reg_reg[2]_4 ;
  wire \chunk_byte_count_reg_reg[2]_5 ;
  wire \chunk_byte_count_reg_reg[2]_6 ;
  wire \chunk_byte_count_reg_reg[2]_7 ;
  wire \chunk_byte_count_reg_reg[2]_8 ;
  wire \chunk_byte_count_reg_reg[2]_9 ;
  wire \chunk_byte_count_reg_reg[3]_0 ;
  wire \chunk_byte_count_reg_reg[4]_0 ;
  wire chunk_error_reg;
  wire chunk_error_reg_i_1_n_0;
  wire chunk_error_reg_reg_0;
  wire chunk_last_reg;
  wire chunk_last_reg_i_1_n_0;
  wire chunk_last_reg_reg_0;
  wire chunk_last_reg_reg_1;
  wire chunk_last_reg_reg_2;
  wire [3:3]data1;
  wire [1:0]dout;
  wire empty;
  wire \gen_wr_a.gen_word_narrow.mem_reg ;
  wire last_next;
  wire last_reg;
  wire last_reg_reg;
  wire last_reg_reg_0;
  wire \ping_pong_buf_reg[1,3][31]_i_2_n_0 ;
  wire rd_en;
  wire rd_rst_busy;
  wire [1:0]state_reg;
  wire [0:0]wr_addr_offset_reg;
  wire \wr_addr_offset_reg[31]_i_4_n_0 ;
  wire \wr_addr_offset_reg[31]_i_5_n_0 ;
  wire \wr_addr_offset_reg[31]_i_6_n_0 ;
  wire \wr_addr_offset_reg_reg[0] ;
  wire \wr_addr_offset_reg_reg[31] ;

  LUT6 #(
    .INIT(64'h8888FFFF8888F888)) 
    \FSM_onehot_axi_writer_state_reg[0]_i_1 
       (.I0(last_reg),
        .I1(Q[3]),
        .I2(chunk_last_reg_reg_2),
        .I3(\FSM_sequential_state_reg_reg[1]_0 ),
        .I4(\FSM_onehot_axi_writer_state_reg[2]_i_7_n_0 ),
        .I5(\FSM_onehot_axi_writer_state_reg[0]_i_3_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_onehot_axi_writer_state_reg[0]_i_2 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(Q[0]),
        .O(\FSM_sequential_state_reg_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \FSM_onehot_axi_writer_state_reg[0]_i_3 
       (.I0(state_reg[1]),
        .I1(Q[0]),
        .I2(state_reg[0]),
        .I3(chunk_last_reg),
        .O(\FSM_onehot_axi_writer_state_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE0F0B0B0E0F0F0F0)) 
    \FSM_onehot_axi_writer_state_reg[2]_i_2 
       (.I0(\FSM_onehot_axi_writer_state_reg[2]_i_7_n_0 ),
        .I1(state_reg[0]),
        .I2(Q[0]),
        .I3(chunk_last_reg),
        .I4(state_reg[1]),
        .I5(chunk_last_reg_reg_2),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \FSM_onehot_axi_writer_state_reg[2]_i_5 
       (.I0(dout[0]),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(Q[0]),
        .I4(\chunk_byte_count_reg[4]_i_3__0_n_0 ),
        .O(\gen_wr_a.gen_word_narrow.mem_reg ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_axi_writer_state_reg[2]_i_7 
       (.I0(chunk_byte_count_reg[2]),
        .I1(chunk_byte_count_reg[3]),
        .I2(chunk_byte_count_reg[0]),
        .I3(chunk_byte_count_reg[1]),
        .I4(chunk_byte_count_reg[4]),
        .O(\FSM_onehot_axi_writer_state_reg[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_sequential_dma_state_reg[0]_i_3 
       (.I0(chunk_byte_count_reg[2]),
        .I1(chunk_byte_count_reg[3]),
        .I2(Q[0]),
        .I3(chunk_byte_count_reg[4]),
        .I4(chunk_byte_count_reg[1]),
        .I5(chunk_byte_count_reg[0]),
        .O(\chunk_byte_count_reg_reg[2]_10 ));
  LUT6 #(
    .INIT(64'h0000222200F00000)) 
    \FSM_sequential_dma_state_reg[0]_i_4 
       (.I0(chunk_last_reg),
        .I1(chunk_error_reg),
        .I2(dout[1]),
        .I3(dout[0]),
        .I4(state_reg[0]),
        .I5(state_reg[1]),
        .O(chunk_last_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hF001)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(empty),
        .I1(rd_rst_busy),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hF230)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEFEEEEEE)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(dout[1]),
        .I1(dout[0]),
        .I2(chunk_byte_count_reg[4]),
        .I3(chunk_byte_count_reg[3]),
        .I4(chunk_byte_count_reg[2]),
        .I5(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state_reg[1]_i_3 
       (.I0(chunk_byte_count_reg[0]),
        .I1(chunk_byte_count_reg[1]),
        .O(\FSM_sequential_state_reg[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "s_handle_entry:01,s_ready_wait:10,s_idle:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_reg[0]),
        .R(chunk_last_reg_reg_1));
  (* FSM_ENCODED_STATES = "s_handle_entry:01,s_ready_wait:10,s_idle:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(state_reg[1]),
        .R(chunk_last_reg_reg_1));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEEEFE)) 
    \buf_addr_reg[1]_i_2 
       (.I0(last_reg_reg_0),
        .I1(\wr_addr_offset_reg[31]_i_5_n_0 ),
        .I2(\FSM_sequential_state_reg_reg[1]_0 ),
        .I3(\chunk_byte_count_reg[4]_i_3__0_n_0 ),
        .I4(dout[0]),
        .I5(dout[1]),
        .O(last_next));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hB7BF4840)) 
    buf_id_reg_i_1
       (.I0(state_reg[0]),
        .I1(Q[0]),
        .I2(state_reg[1]),
        .I3(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I4(buf_id_reg),
        .O(buf_id_reg_i_1_n_0));
  FDRE buf_id_reg_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(buf_id_reg_i_1_n_0),
        .Q(buf_id_reg),
        .R(chunk_last_reg_reg_1));
  LUT6 #(
    .INIT(64'hAAAAABBBAAAAA888)) 
    chunk_buf_id_reg_i_1
       (.I0(buf_id_reg),
        .I1(\gen_wr_a.gen_word_narrow.mem_reg ),
        .I2(chunk_buf_id_reg_i_2_n_0),
        .I3(chunk_error_reg_reg_0),
        .I4(\chunk_byte_count_reg[3]_i_3_n_0 ),
        .I5(chunk_buf_id_reg),
        .O(buf_id_reg_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    chunk_buf_id_reg_i_2
       (.I0(chunk_byte_count_reg[4]),
        .I1(chunk_byte_count_reg[1]),
        .I2(chunk_byte_count_reg[0]),
        .I3(chunk_byte_count_reg[3]),
        .I4(chunk_byte_count_reg[2]),
        .I5(Q[0]),
        .O(chunk_buf_id_reg_i_2_n_0));
  LUT5 #(
    .INIT(32'h10101C10)) 
    chunk_buf_id_reg_i_3
       (.I0(chunk_error_reg),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(dout[1]),
        .I4(dout[0]),
        .O(chunk_error_reg_reg_0));
  LUT5 #(
    .INIT(32'hFFFFFFE2)) 
    \chunk_byte_count_reg[0]_i_1 
       (.I0(\chunk_byte_count_reg[3]_i_3_n_0 ),
        .I1(chunk_byte_count_reg[0]),
        .I2(\chunk_byte_count_reg[4]_i_5_n_0 ),
        .I3(\chunk_byte_count_reg_reg[0]_2 ),
        .I4(Q[1]),
        .O(\FSM_onehot_axi_writer_state_reg_reg[2] [0]));
  LUT4 #(
    .INIT(16'h0001)) 
    \chunk_byte_count_reg[0]_i_1__0 
       (.I0(state_reg[1]),
        .I1(chunk_byte_count_reg[0]),
        .I2(dout[1]),
        .I3(dout[0]),
        .O(chunk_byte_count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hFFFFF488)) 
    \chunk_byte_count_reg[1]_i_1 
       (.I0(chunk_byte_count_reg[0]),
        .I1(\chunk_byte_count_reg[3]_i_3_n_0 ),
        .I2(\chunk_byte_count_reg[4]_i_5_n_0 ),
        .I3(chunk_byte_count_reg[1]),
        .I4(\chunk_byte_count_reg_reg[1]_0 ),
        .O(\FSM_onehot_axi_writer_state_reg_reg[2] [1]));
  LUT6 #(
    .INIT(64'h0000010001000000)) 
    \chunk_byte_count_reg[1]_i_1__0 
       (.I0(state_reg[1]),
        .I1(dout[1]),
        .I2(dout[0]),
        .I3(\chunk_byte_count_reg[4]_i_3__0_n_0 ),
        .I4(chunk_byte_count_reg[1]),
        .I5(chunk_byte_count_reg[0]),
        .O(chunk_byte_count_next[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF708080)) 
    \chunk_byte_count_reg[2]_i_1 
       (.I0(chunk_byte_count_reg[1]),
        .I1(chunk_byte_count_reg[0]),
        .I2(\chunk_byte_count_reg[3]_i_3_n_0 ),
        .I3(\chunk_byte_count_reg[4]_i_5_n_0 ),
        .I4(chunk_byte_count_reg[2]),
        .I5(\chunk_byte_count_reg_reg[2]_11 ),
        .O(\FSM_onehot_axi_writer_state_reg_reg[2] [2]));
  LUT5 #(
    .INIT(32'h01101010)) 
    \chunk_byte_count_reg[2]_i_1__0 
       (.I0(state_reg[1]),
        .I1(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I2(chunk_byte_count_reg[2]),
        .I3(chunk_byte_count_reg[0]),
        .I4(chunk_byte_count_reg[1]),
        .O(chunk_byte_count_next[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \chunk_byte_count_reg[3]_i_1 
       (.I0(data1),
        .I1(\chunk_byte_count_reg[3]_i_3_n_0 ),
        .I2(\chunk_byte_count_reg_reg[3]_0 ),
        .I3(chunk_byte_count_reg[3]),
        .I4(\chunk_byte_count_reg[4]_i_5_n_0 ),
        .I5(Q[1]),
        .O(\FSM_onehot_axi_writer_state_reg_reg[2] [3]));
  LUT6 #(
    .INIT(64'h0110101010101010)) 
    \chunk_byte_count_reg[3]_i_1__0 
       (.I0(state_reg[1]),
        .I1(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I2(chunk_byte_count_reg[3]),
        .I3(chunk_byte_count_reg[2]),
        .I4(chunk_byte_count_reg[1]),
        .I5(chunk_byte_count_reg[0]),
        .O(chunk_byte_count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \chunk_byte_count_reg[3]_i_2 
       (.I0(chunk_byte_count_reg[0]),
        .I1(chunk_byte_count_reg[1]),
        .I2(chunk_byte_count_reg[2]),
        .I3(chunk_byte_count_reg[3]),
        .O(data1));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \chunk_byte_count_reg[3]_i_3 
       (.I0(chunk_last_reg),
        .I1(chunk_error_reg),
        .I2(state_reg[1]),
        .I3(Q[0]),
        .I4(state_reg[0]),
        .O(\chunk_byte_count_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2828283828282828)) 
    \chunk_byte_count_reg[4]_i_1 
       (.I0(Q[0]),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(dout[1]),
        .I4(dout[0]),
        .I5(\chunk_byte_count_reg[4]_i_3__0_n_0 ),
        .O(\chunk_byte_count_reg[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \chunk_byte_count_reg[4]_i_2 
       (.I0(\chunk_byte_count_reg[4]_i_4_n_0 ),
        .I1(Q[1]),
        .I2(\chunk_byte_count_reg[4]_i_5_n_0 ),
        .I3(chunk_byte_count_reg[4]),
        .O(\FSM_onehot_axi_writer_state_reg_reg[2] [4]));
  LUT5 #(
    .INIT(32'h01000000)) 
    \chunk_byte_count_reg[4]_i_2__0 
       (.I0(state_reg[1]),
        .I1(dout[1]),
        .I2(dout[0]),
        .I3(chunk_byte_count_reg[4]),
        .I4(\chunk_byte_count_reg[4]_i_4__0_n_0 ),
        .O(chunk_byte_count_next[4]));
  LUT6 #(
    .INIT(64'h00EF0000FF000000)) 
    \chunk_byte_count_reg[4]_i_3 
       (.I0(dout[1]),
        .I1(dout[0]),
        .I2(\chunk_byte_count_reg[4]_i_3__0_n_0 ),
        .I3(state_reg[1]),
        .I4(Q[0]),
        .I5(state_reg[0]),
        .O(buf_id_next));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \chunk_byte_count_reg[4]_i_3__0 
       (.I0(chunk_byte_count_reg[0]),
        .I1(chunk_byte_count_reg[1]),
        .I2(chunk_byte_count_reg[2]),
        .I3(chunk_byte_count_reg[3]),
        .I4(chunk_byte_count_reg[4]),
        .O(\chunk_byte_count_reg[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA0000EA)) 
    \chunk_byte_count_reg[4]_i_4 
       (.I0(\chunk_byte_count_reg[3]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .I3(chunk_byte_count_reg[4]),
        .I4(\chunk_byte_count_reg[4]_i_4__0_n_0 ),
        .I5(\chunk_byte_count_reg_reg[4]_0 ),
        .O(\chunk_byte_count_reg[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \chunk_byte_count_reg[4]_i_4__0 
       (.I0(chunk_byte_count_reg[3]),
        .I1(chunk_byte_count_reg[2]),
        .I2(chunk_byte_count_reg[1]),
        .I3(chunk_byte_count_reg[0]),
        .O(\chunk_byte_count_reg[4]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h4062404000000000)) 
    \chunk_byte_count_reg[4]_i_5 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(chunk_last_reg_reg_2),
        .I3(chunk_error_reg),
        .I4(chunk_last_reg),
        .I5(Q[0]),
        .O(\chunk_byte_count_reg[4]_i_5_n_0 ));
  FDRE \chunk_byte_count_reg_reg[0] 
       (.C(axi_aclk),
        .CE(\chunk_byte_count_reg[4]_i_1_n_0 ),
        .D(chunk_byte_count_next[0]),
        .Q(chunk_byte_count_reg[0]),
        .R(chunk_last_reg_reg_1));
  FDRE \chunk_byte_count_reg_reg[1] 
       (.C(axi_aclk),
        .CE(\chunk_byte_count_reg[4]_i_1_n_0 ),
        .D(chunk_byte_count_next[1]),
        .Q(chunk_byte_count_reg[1]),
        .R(chunk_last_reg_reg_1));
  FDRE \chunk_byte_count_reg_reg[2] 
       (.C(axi_aclk),
        .CE(\chunk_byte_count_reg[4]_i_1_n_0 ),
        .D(chunk_byte_count_next[2]),
        .Q(chunk_byte_count_reg[2]),
        .R(chunk_last_reg_reg_1));
  FDRE \chunk_byte_count_reg_reg[3] 
       (.C(axi_aclk),
        .CE(\chunk_byte_count_reg[4]_i_1_n_0 ),
        .D(chunk_byte_count_next[3]),
        .Q(chunk_byte_count_reg[3]),
        .R(chunk_last_reg_reg_1));
  FDRE \chunk_byte_count_reg_reg[4] 
       (.C(axi_aclk),
        .CE(\chunk_byte_count_reg[4]_i_1_n_0 ),
        .D(chunk_byte_count_next[4]),
        .Q(chunk_byte_count_reg[4]),
        .R(chunk_last_reg_reg_1));
  LUT6 #(
    .INIT(64'hF3FB0FFF00080000)) 
    chunk_error_reg_i_1
       (.I0(dout[0]),
        .I1(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I2(state_reg[1]),
        .I3(Q[0]),
        .I4(state_reg[0]),
        .I5(chunk_error_reg),
        .O(chunk_error_reg_i_1_n_0));
  FDRE chunk_error_reg_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(chunk_error_reg_i_1_n_0),
        .Q(chunk_error_reg),
        .R(chunk_last_reg_reg_1));
  LUT6 #(
    .INIT(64'hF3FB0FFF00080000)) 
    chunk_last_reg_i_1
       (.I0(chunk_last_reg_reg_2),
        .I1(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I2(state_reg[1]),
        .I3(Q[0]),
        .I4(state_reg[0]),
        .I5(chunk_last_reg),
        .O(chunk_last_reg_i_1_n_0));
  FDRE chunk_last_reg_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(chunk_last_reg_i_1_n_0),
        .Q(chunk_last_reg),
        .R(chunk_last_reg_reg_1));
  LUT5 #(
    .INIT(32'h888F8880)) 
    last_reg_i_1
       (.I0(\chunk_byte_count_reg[4]_i_5_n_0 ),
        .I1(\FSM_onehot_axi_writer_state_reg[2]_i_7_n_0 ),
        .I2(last_reg_reg_0),
        .I3(buf_id_next),
        .I4(last_reg),
        .O(last_reg_reg));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \ping_pong_buf_reg[0,0][15]_i_1 
       (.I0(chunk_byte_count_reg[2]),
        .I1(chunk_byte_count_reg[3]),
        .I2(chunk_byte_count_reg[0]),
        .I3(chunk_byte_count_reg[1]),
        .I4(buf_id_reg),
        .I5(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .O(\chunk_byte_count_reg_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \ping_pong_buf_reg[0,0][23]_i_1 
       (.I0(chunk_byte_count_reg[2]),
        .I1(chunk_byte_count_reg[3]),
        .I2(chunk_byte_count_reg[1]),
        .I3(chunk_byte_count_reg[0]),
        .I4(buf_id_reg),
        .I5(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .O(\chunk_byte_count_reg_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \ping_pong_buf_reg[0,0][31]_i_1 
       (.I0(chunk_byte_count_reg[2]),
        .I1(chunk_byte_count_reg[3]),
        .I2(chunk_byte_count_reg[0]),
        .I3(chunk_byte_count_reg[1]),
        .I4(buf_id_reg),
        .I5(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .O(\chunk_byte_count_reg_reg[2]_2 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \ping_pong_buf_reg[0,0][7]_i_1 
       (.I0(buf_id_reg),
        .I1(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .I2(chunk_byte_count_reg[2]),
        .I3(chunk_byte_count_reg[3]),
        .I4(chunk_byte_count_reg[0]),
        .I5(chunk_byte_count_reg[1]),
        .O(buf_id_reg_reg_1));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \ping_pong_buf_reg[0,1][15]_i_1 
       (.I0(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .I1(buf_id_reg),
        .I2(chunk_byte_count_reg[2]),
        .I3(chunk_byte_count_reg[3]),
        .I4(chunk_byte_count_reg[1]),
        .I5(chunk_byte_count_reg[0]),
        .O(buf_id_reg_reg_3));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \ping_pong_buf_reg[0,1][23]_i_1 
       (.I0(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .I1(buf_id_reg),
        .I2(chunk_byte_count_reg[2]),
        .I3(chunk_byte_count_reg[3]),
        .I4(chunk_byte_count_reg[0]),
        .I5(chunk_byte_count_reg[1]),
        .O(buf_id_reg_reg_4));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \ping_pong_buf_reg[0,1][31]_i_1 
       (.I0(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .I1(buf_id_reg),
        .I2(chunk_byte_count_reg[2]),
        .I3(chunk_byte_count_reg[3]),
        .I4(chunk_byte_count_reg[1]),
        .I5(chunk_byte_count_reg[0]),
        .O(buf_id_reg_reg_5));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \ping_pong_buf_reg[0,1][7]_i_1 
       (.I0(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .I1(buf_id_reg),
        .I2(chunk_byte_count_reg[2]),
        .I3(chunk_byte_count_reg[3]),
        .I4(chunk_byte_count_reg[1]),
        .I5(chunk_byte_count_reg[0]),
        .O(buf_id_reg_reg_2));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \ping_pong_buf_reg[0,2][15]_i_1 
       (.I0(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .I1(buf_id_reg),
        .I2(chunk_byte_count_reg[3]),
        .I3(chunk_byte_count_reg[2]),
        .I4(chunk_byte_count_reg[1]),
        .I5(chunk_byte_count_reg[0]),
        .O(buf_id_reg_reg_7));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \ping_pong_buf_reg[0,2][23]_i_1 
       (.I0(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .I1(buf_id_reg),
        .I2(chunk_byte_count_reg[3]),
        .I3(chunk_byte_count_reg[2]),
        .I4(chunk_byte_count_reg[0]),
        .I5(chunk_byte_count_reg[1]),
        .O(buf_id_reg_reg_8));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \ping_pong_buf_reg[0,2][31]_i_1 
       (.I0(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .I1(buf_id_reg),
        .I2(chunk_byte_count_reg[3]),
        .I3(chunk_byte_count_reg[2]),
        .I4(chunk_byte_count_reg[1]),
        .I5(chunk_byte_count_reg[0]),
        .O(buf_id_reg_reg_9));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \ping_pong_buf_reg[0,2][7]_i_1 
       (.I0(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .I1(buf_id_reg),
        .I2(chunk_byte_count_reg[3]),
        .I3(chunk_byte_count_reg[2]),
        .I4(chunk_byte_count_reg[1]),
        .I5(chunk_byte_count_reg[0]),
        .O(buf_id_reg_reg_6));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \ping_pong_buf_reg[0,3][15]_i_1 
       (.I0(chunk_byte_count_reg[2]),
        .I1(chunk_byte_count_reg[3]),
        .I2(chunk_byte_count_reg[0]),
        .I3(chunk_byte_count_reg[1]),
        .I4(buf_id_reg),
        .I5(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .O(\chunk_byte_count_reg_reg[2]_3 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \ping_pong_buf_reg[0,3][23]_i_1 
       (.I0(chunk_byte_count_reg[2]),
        .I1(chunk_byte_count_reg[3]),
        .I2(chunk_byte_count_reg[1]),
        .I3(chunk_byte_count_reg[0]),
        .I4(buf_id_reg),
        .I5(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .O(\chunk_byte_count_reg_reg[2]_4 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \ping_pong_buf_reg[0,3][31]_i_1 
       (.I0(buf_id_reg),
        .I1(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .I2(chunk_byte_count_reg[0]),
        .I3(chunk_byte_count_reg[1]),
        .I4(chunk_byte_count_reg[2]),
        .I5(chunk_byte_count_reg[3]),
        .O(buf_id_reg_reg_10));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \ping_pong_buf_reg[0,3][7]_i_1 
       (.I0(chunk_byte_count_reg[0]),
        .I1(chunk_byte_count_reg[1]),
        .I2(chunk_byte_count_reg[2]),
        .I3(chunk_byte_count_reg[3]),
        .I4(buf_id_reg),
        .I5(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .O(\chunk_byte_count_reg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \ping_pong_buf_reg[1,0][15]_i_1 
       (.I0(chunk_byte_count_reg[2]),
        .I1(chunk_byte_count_reg[3]),
        .I2(chunk_byte_count_reg[0]),
        .I3(chunk_byte_count_reg[1]),
        .I4(buf_id_reg),
        .I5(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .O(\chunk_byte_count_reg_reg[2]_5 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \ping_pong_buf_reg[1,0][23]_i_1 
       (.I0(chunk_byte_count_reg[2]),
        .I1(chunk_byte_count_reg[3]),
        .I2(chunk_byte_count_reg[1]),
        .I3(chunk_byte_count_reg[0]),
        .I4(buf_id_reg),
        .I5(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .O(\chunk_byte_count_reg_reg[2]_6 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \ping_pong_buf_reg[1,0][31]_i_1 
       (.I0(chunk_byte_count_reg[2]),
        .I1(chunk_byte_count_reg[3]),
        .I2(chunk_byte_count_reg[0]),
        .I3(chunk_byte_count_reg[1]),
        .I4(buf_id_reg),
        .I5(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .O(\chunk_byte_count_reg_reg[2]_7 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \ping_pong_buf_reg[1,0][7]_i_1 
       (.I0(buf_id_reg),
        .I1(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .I2(chunk_byte_count_reg[2]),
        .I3(chunk_byte_count_reg[3]),
        .I4(chunk_byte_count_reg[0]),
        .I5(chunk_byte_count_reg[1]),
        .O(buf_id_reg_reg_11));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \ping_pong_buf_reg[1,1][15]_i_1 
       (.I0(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .I1(buf_id_reg),
        .I2(chunk_byte_count_reg[2]),
        .I3(chunk_byte_count_reg[3]),
        .I4(chunk_byte_count_reg[1]),
        .I5(chunk_byte_count_reg[0]),
        .O(buf_id_reg_reg_13));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \ping_pong_buf_reg[1,1][23]_i_1 
       (.I0(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .I1(buf_id_reg),
        .I2(chunk_byte_count_reg[2]),
        .I3(chunk_byte_count_reg[3]),
        .I4(chunk_byte_count_reg[0]),
        .I5(chunk_byte_count_reg[1]),
        .O(buf_id_reg_reg_14));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \ping_pong_buf_reg[1,1][31]_i_1 
       (.I0(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .I1(buf_id_reg),
        .I2(chunk_byte_count_reg[2]),
        .I3(chunk_byte_count_reg[3]),
        .I4(chunk_byte_count_reg[1]),
        .I5(chunk_byte_count_reg[0]),
        .O(buf_id_reg_reg_15));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \ping_pong_buf_reg[1,1][7]_i_1 
       (.I0(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .I1(buf_id_reg),
        .I2(chunk_byte_count_reg[2]),
        .I3(chunk_byte_count_reg[3]),
        .I4(chunk_byte_count_reg[1]),
        .I5(chunk_byte_count_reg[0]),
        .O(buf_id_reg_reg_12));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \ping_pong_buf_reg[1,2][15]_i_1 
       (.I0(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .I1(buf_id_reg),
        .I2(chunk_byte_count_reg[3]),
        .I3(chunk_byte_count_reg[2]),
        .I4(chunk_byte_count_reg[1]),
        .I5(chunk_byte_count_reg[0]),
        .O(buf_id_reg_reg_17));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \ping_pong_buf_reg[1,2][23]_i_1 
       (.I0(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .I1(buf_id_reg),
        .I2(chunk_byte_count_reg[3]),
        .I3(chunk_byte_count_reg[2]),
        .I4(chunk_byte_count_reg[0]),
        .I5(chunk_byte_count_reg[1]),
        .O(buf_id_reg_reg_18));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \ping_pong_buf_reg[1,2][31]_i_1 
       (.I0(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .I1(buf_id_reg),
        .I2(chunk_byte_count_reg[3]),
        .I3(chunk_byte_count_reg[2]),
        .I4(chunk_byte_count_reg[1]),
        .I5(chunk_byte_count_reg[0]),
        .O(buf_id_reg_reg_19));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \ping_pong_buf_reg[1,2][7]_i_1 
       (.I0(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .I1(buf_id_reg),
        .I2(chunk_byte_count_reg[3]),
        .I3(chunk_byte_count_reg[2]),
        .I4(chunk_byte_count_reg[1]),
        .I5(chunk_byte_count_reg[0]),
        .O(buf_id_reg_reg_16));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \ping_pong_buf_reg[1,3][15]_i_1 
       (.I0(chunk_byte_count_reg[2]),
        .I1(chunk_byte_count_reg[3]),
        .I2(chunk_byte_count_reg[0]),
        .I3(chunk_byte_count_reg[1]),
        .I4(buf_id_reg),
        .I5(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .O(\chunk_byte_count_reg_reg[2]_8 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \ping_pong_buf_reg[1,3][23]_i_1 
       (.I0(chunk_byte_count_reg[2]),
        .I1(chunk_byte_count_reg[3]),
        .I2(chunk_byte_count_reg[1]),
        .I3(chunk_byte_count_reg[0]),
        .I4(buf_id_reg),
        .I5(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .O(\chunk_byte_count_reg_reg[2]_9 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ping_pong_buf_reg[1,3][31]_i_1 
       (.I0(buf_id_reg),
        .I1(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .I2(chunk_byte_count_reg[0]),
        .I3(chunk_byte_count_reg[1]),
        .I4(chunk_byte_count_reg[2]),
        .I5(chunk_byte_count_reg[3]),
        .O(buf_id_reg_reg_20));
  LUT4 #(
    .INIT(16'h0004)) 
    \ping_pong_buf_reg[1,3][31]_i_2 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(dout[1]),
        .I3(dout[0]),
        .O(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \ping_pong_buf_reg[1,3][7]_i_1 
       (.I0(chunk_byte_count_reg[0]),
        .I1(chunk_byte_count_reg[1]),
        .I2(chunk_byte_count_reg[2]),
        .I3(chunk_byte_count_reg[3]),
        .I4(buf_id_reg),
        .I5(\ping_pong_buf_reg[1,3][31]_i_2_n_0 ),
        .O(\chunk_byte_count_reg_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    rx_async_fifo_inst_i_2
       (.I0(rd_rst_busy),
        .I1(empty),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .O(rd_en));
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    \wr_addr_offset_reg[31]_i_1 
       (.I0(\wr_addr_offset_reg[31]_i_4_n_0 ),
        .I1(axi_aresetn),
        .I2(chunk_error_reg),
        .I3(\wr_addr_offset_reg[31]_i_5_n_0 ),
        .I4(Q[2]),
        .O(axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF8F008800)) 
    \wr_addr_offset_reg[31]_i_2 
       (.I0(\wr_addr_offset_reg[31]_i_5_n_0 ),
        .I1(chunk_error_reg),
        .I2(\FSM_onehot_axi_writer_state_reg[2]_i_7_n_0 ),
        .I3(axi_aresetn),
        .I4(\wr_addr_offset_reg[31]_i_6_n_0 ),
        .I5(\wr_addr_offset_reg_reg[31] ),
        .O(wr_addr_offset_reg));
  LUT6 #(
    .INIT(64'hF8F80000FFF80000)) 
    \wr_addr_offset_reg[31]_i_4 
       (.I0(dout[0]),
        .I1(\FSM_sequential_state_reg_reg[1]_0 ),
        .I2(\wr_addr_offset_reg_reg[0] ),
        .I3(\wr_addr_offset_reg[31]_i_6_n_0 ),
        .I4(axi_aresetn),
        .I5(\FSM_onehot_axi_writer_state_reg[2]_i_7_n_0 ),
        .O(\wr_addr_offset_reg[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \wr_addr_offset_reg[31]_i_5 
       (.I0(state_reg[0]),
        .I1(Q[0]),
        .I2(state_reg[1]),
        .O(\wr_addr_offset_reg[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h0CA00000)) 
    \wr_addr_offset_reg[31]_i_6 
       (.I0(chunk_last_reg),
        .I1(dout[1]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(Q[0]),
        .O(\wr_addr_offset_reg[31]_i_6_n_0 ));
endmodule

(* ORIG_REF_NAME = "dma_status_manager" *) 
module design_1_eth_rx_0_2_dma_status_manager
   (wready_reg_reg_0,
    axi_aresetn_0,
    awready_reg_reg_0,
    bvalid_reg_reg_0,
    S_AXI_BRESP,
    read_state_reg_reg_0,
    arready_reg_reg_0,
    S_AXI_RRESP,
    E,
    dma_state_reg,
    wr_base_addr_reg,
    \FSM_sequential_dma_state_reg_reg[1]_0 ,
    \rx_payload_region_base_addr_reg_reg[9]_0 ,
    \rx_payload_region_base_addr_reg_reg[6]_0 ,
    \rx_payload_region_base_addr_reg_reg[14]_0 ,
    \rx_payload_region_base_addr_reg_reg[18]_0 ,
    \rx_payload_region_base_addr_reg_reg[22]_0 ,
    \rx_payload_region_base_addr_reg_reg[26]_0 ,
    \rx_payload_region_base_addr_reg_reg[30]_0 ,
    O,
    S_AXI_RDATA,
    axi_aclk,
    S_AXI_WVALID,
    S_AXI_BREADY,
    S_AXI_AWVALID,
    S_AXI_ARVALID,
    S_AXI_RREADY,
    Q,
    M_AXI_WREADY,
    buf_id_next,
    axi_aresetn,
    S_AXI_ARADDR,
    \FSM_sequential_dma_state_reg_reg[0]_0 ,
    S_AXI_WDATA,
    S_AXI_AWADDR);
  output wready_reg_reg_0;
  output axi_aresetn_0;
  output awready_reg_reg_0;
  output bvalid_reg_reg_0;
  output [0:0]S_AXI_BRESP;
  output read_state_reg_reg_0;
  output arready_reg_reg_0;
  output [0:0]S_AXI_RRESP;
  output [0:0]E;
  output [1:0]dma_state_reg;
  output [0:0]wr_base_addr_reg;
  output \FSM_sequential_dma_state_reg_reg[1]_0 ;
  output [3:0]\rx_payload_region_base_addr_reg_reg[9]_0 ;
  output [6:0]\rx_payload_region_base_addr_reg_reg[6]_0 ;
  output [3:0]\rx_payload_region_base_addr_reg_reg[14]_0 ;
  output [3:0]\rx_payload_region_base_addr_reg_reg[18]_0 ;
  output [3:0]\rx_payload_region_base_addr_reg_reg[22]_0 ;
  output [3:0]\rx_payload_region_base_addr_reg_reg[26]_0 ;
  output [3:0]\rx_payload_region_base_addr_reg_reg[30]_0 ;
  output [0:0]O;
  output [1:0]S_AXI_RDATA;
  input axi_aclk;
  input S_AXI_WVALID;
  input S_AXI_BREADY;
  input S_AXI_AWVALID;
  input S_AXI_ARVALID;
  input S_AXI_RREADY;
  input [1:0]Q;
  input M_AXI_WREADY;
  input buf_id_next;
  input axi_aresetn;
  input [3:0]S_AXI_ARADDR;
  input \FSM_sequential_dma_state_reg_reg[0]_0 ;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_AWADDR;

  wire [0:0]E;
  wire \FSM_onehot_state_reg[0]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_2_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_3_n_0 ;
  wire \FSM_onehot_state_reg_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_reg_n_0_[2] ;
  wire \FSM_sequential_dma_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_dma_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_dma_state_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_dma_state_reg_reg[0]_0 ;
  wire \FSM_sequential_dma_state_reg_reg[1]_0 ;
  wire M_AXI_WREADY;
  wire [0:0]O;
  wire [1:0]Q;
  wire [9:8]SHIFT_LEFT;
  wire [3:0]S_AXI_ARADDR;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [0:0]S_AXI_BRESP;
  wire [1:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire [0:0]S_AXI_RRESP;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WVALID;
  wire arready_reg_i_1_n_0;
  wire arready_reg_reg_0;
  wire aw_seen_reg;
  wire aw_seen_reg_i_1_n_0;
  wire awready_next;
  wire awready_reg_i_2_n_0;
  wire awready_reg_reg_0;
  wire [0:0]axi4_lite_rd_data_reg;
  wire \axi4_lite_rd_data_reg[0]_i_1_n_0 ;
  wire \axi4_lite_rd_data_reg[1]_i_1_n_0 ;
  wire \axi4_lite_rd_data_reg[1]_i_2_n_0 ;
  wire [0:0]axi4_lite_wr_addr_offset_next;
  wire [3:0]axi4_lite_wr_addr_offset_reg;
  wire [31:0]axi4_lite_wr_data_reg;
  wire [0:0]axi4_lite_wr_data_reg_0;
  wire axi_aclk;
  wire axi_aresetn;
  wire axi_aresetn_0;
  wire \bresp_reg[1]_i_1_n_0 ;
  wire buf_id_next;
  wire bvalid_next;
  wire bvalid_reg_i_1_n_0;
  wire bvalid_reg_reg_0;
  wire [1:0]dma_state_reg;
  wire [1:0]head_reg;
  wire \head_reg[0]_i_1_n_0 ;
  wire \head_reg[1]_i_1_n_0 ;
  wire \head_reg[1]_i_2_n_0 ;
  wire read_state_reg_i_1_n_0;
  wire read_state_reg_reg_0;
  wire \rresp_reg[1]_i_1_n_0 ;
  wire [0:0]rx_payload_region_base_addr_next;
  wire [31:7]rx_payload_region_base_addr_reg;
  wire [3:0]\rx_payload_region_base_addr_reg_reg[14]_0 ;
  wire [3:0]\rx_payload_region_base_addr_reg_reg[18]_0 ;
  wire [3:0]\rx_payload_region_base_addr_reg_reg[22]_0 ;
  wire [3:0]\rx_payload_region_base_addr_reg_reg[26]_0 ;
  wire [3:0]\rx_payload_region_base_addr_reg_reg[30]_0 ;
  wire [6:0]\rx_payload_region_base_addr_reg_reg[6]_0 ;
  wire [3:0]\rx_payload_region_base_addr_reg_reg[9]_0 ;
  wire rx_payload_region_base_addr_valid_reg;
  wire rx_payload_region_base_addr_valid_reg_i_1_n_0;
  wire \tail_reg[0]_i_1_n_0 ;
  wire \tail_reg[1]_i_1_n_0 ;
  wire w_seen_reg;
  wire w_seen_reg_i_1_n_0;
  wire [0:0]wr_base_addr_reg;
  wire \wr_base_addr_reg[10]_i_2_n_0 ;
  wire \wr_base_addr_reg[10]_i_3_n_0 ;
  wire \wr_base_addr_reg_reg[10]_i_1_n_0 ;
  wire \wr_base_addr_reg_reg[10]_i_1_n_1 ;
  wire \wr_base_addr_reg_reg[10]_i_1_n_2 ;
  wire \wr_base_addr_reg_reg[10]_i_1_n_3 ;
  wire \wr_base_addr_reg_reg[14]_i_1_n_0 ;
  wire \wr_base_addr_reg_reg[14]_i_1_n_1 ;
  wire \wr_base_addr_reg_reg[14]_i_1_n_2 ;
  wire \wr_base_addr_reg_reg[14]_i_1_n_3 ;
  wire \wr_base_addr_reg_reg[18]_i_1_n_0 ;
  wire \wr_base_addr_reg_reg[18]_i_1_n_1 ;
  wire \wr_base_addr_reg_reg[18]_i_1_n_2 ;
  wire \wr_base_addr_reg_reg[18]_i_1_n_3 ;
  wire \wr_base_addr_reg_reg[22]_i_1_n_0 ;
  wire \wr_base_addr_reg_reg[22]_i_1_n_1 ;
  wire \wr_base_addr_reg_reg[22]_i_1_n_2 ;
  wire \wr_base_addr_reg_reg[22]_i_1_n_3 ;
  wire \wr_base_addr_reg_reg[26]_i_1_n_0 ;
  wire \wr_base_addr_reg_reg[26]_i_1_n_1 ;
  wire \wr_base_addr_reg_reg[26]_i_1_n_2 ;
  wire \wr_base_addr_reg_reg[26]_i_1_n_3 ;
  wire \wr_base_addr_reg_reg[30]_i_1_n_0 ;
  wire \wr_base_addr_reg_reg[30]_i_1_n_1 ;
  wire \wr_base_addr_reg_reg[30]_i_1_n_2 ;
  wire \wr_base_addr_reg_reg[30]_i_1_n_3 ;
  wire wready_reg_i_1_n_0;
  wire wready_reg_reg_0;
  wire [3:0]\NLW_wr_base_addr_reg_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_wr_base_addr_reg_reg[31]_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_onehot_axi_writer_state_reg[2]_i_3 
       (.I0(dma_state_reg[1]),
        .I1(dma_state_reg[0]),
        .I2(Q[0]),
        .O(\FSM_sequential_dma_state_reg_reg[1]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state_reg[0]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg[2]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .O(\FSM_onehot_state_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state_reg[1]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg[2]_i_2_n_0 ),
        .I2(bvalid_next),
        .O(\FSM_onehot_state_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state_reg[2]_i_1 
       (.I0(bvalid_next),
        .I1(\FSM_onehot_state_reg[2]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .O(\FSM_onehot_state_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFC888)) 
    \FSM_onehot_state_reg[2]_i_2 
       (.I0(axi4_lite_wr_addr_offset_next),
        .I1(\FSM_onehot_state_reg[2]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I3(aw_seen_reg),
        .I4(awready_next),
        .I5(bvalid_next),
        .O(\FSM_onehot_state_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_state_reg[2]_i_3 
       (.I0(wready_reg_reg_0),
        .I1(S_AXI_WVALID),
        .I2(w_seen_reg),
        .O(\FSM_onehot_state_reg[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_state_reg[2]_i_4 
       (.I0(bvalid_reg_reg_0),
        .I1(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .I2(S_AXI_BREADY),
        .O(awready_next));
  (* FSM_ENCODED_STATES = "s_idle:001,s_update_reg:010,s_write_resp:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .S(axi_aresetn_0));
  (* FSM_ENCODED_STATES = "s_idle:001,s_update_reg:010,s_write_resp:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg[1]_i_1_n_0 ),
        .Q(bvalid_next),
        .R(axi_aresetn_0));
  (* FSM_ENCODED_STATES = "s_idle:001,s_update_reg:010,s_write_resp:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[2] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .R(axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hFAF4FFF4)) 
    \FSM_sequential_dma_state_reg[0]_i_1 
       (.I0(dma_state_reg[1]),
        .I1(rx_payload_region_base_addr_valid_reg),
        .I2(\FSM_sequential_dma_state_reg_reg[0]_0 ),
        .I3(dma_state_reg[0]),
        .I4(Q[0]),
        .O(\FSM_sequential_dma_state_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h7C4C)) 
    \FSM_sequential_dma_state_reg[1]_i_1 
       (.I0(\FSM_sequential_dma_state_reg[1]_i_2_n_0 ),
        .I1(dma_state_reg[1]),
        .I2(dma_state_reg[0]),
        .I3(Q[0]),
        .O(\FSM_sequential_dma_state_reg[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF69F)) 
    \FSM_sequential_dma_state_reg[1]_i_2 
       (.I0(head_reg[1]),
        .I1(SHIFT_LEFT[9]),
        .I2(SHIFT_LEFT[8]),
        .I3(head_reg[0]),
        .O(\FSM_sequential_dma_state_reg[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "s_wait_frame_done:10,s_dma_idle:00,s_issue_valid:01,s_publish_tail:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_dma_state_reg_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_dma_state_reg[0]_i_1_n_0 ),
        .Q(dma_state_reg[0]),
        .R(axi_aresetn_0));
  (* FSM_ENCODED_STATES = "s_wait_frame_done:10,s_dma_idle:00,s_issue_valid:01,s_publish_tail:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_dma_state_reg_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_dma_state_reg[1]_i_1_n_0 ),
        .Q(dma_state_reg[1]),
        .R(axi_aresetn_0));
  LUT4 #(
    .INIT(16'hCF88)) 
    arready_reg_i_1
       (.I0(S_AXI_RREADY),
        .I1(read_state_reg_reg_0),
        .I2(S_AXI_ARVALID),
        .I3(arready_reg_reg_0),
        .O(arready_reg_i_1_n_0));
  FDSE arready_reg_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(arready_reg_i_1_n_0),
        .Q(arready_reg_reg_0),
        .S(axi_aresetn_0));
  LUT5 #(
    .INIT(32'h80FF8080)) 
    aw_seen_reg_i_1
       (.I0(awready_reg_reg_0),
        .I1(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I2(S_AXI_AWVALID),
        .I3(bvalid_next),
        .I4(aw_seen_reg),
        .O(aw_seen_reg_i_1_n_0));
  FDRE aw_seen_reg_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(aw_seen_reg_i_1_n_0),
        .Q(aw_seen_reg),
        .R(axi_aresetn_0));
  LUT1 #(
    .INIT(2'h1)) 
    awready_reg_i_1
       (.I0(axi_aresetn),
        .O(axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFF2A2A2A2A2A2A2A)) 
    awready_reg_i_2
       (.I0(awready_reg_reg_0),
        .I1(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_BREADY),
        .I4(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .I5(bvalid_reg_reg_0),
        .O(awready_reg_i_2_n_0));
  FDSE awready_reg_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(awready_reg_i_2_n_0),
        .Q(awready_reg_reg_0),
        .S(axi_aresetn_0));
  LUT6 #(
    .INIT(64'h2230FFFF22300000)) 
    \axi4_lite_rd_data_reg[0]_i_1 
       (.I0(SHIFT_LEFT[8]),
        .I1(\axi4_lite_rd_data_reg[1]_i_2_n_0 ),
        .I2(head_reg[0]),
        .I3(S_AXI_ARADDR[2]),
        .I4(axi4_lite_rd_data_reg),
        .I5(S_AXI_RDATA[0]),
        .O(\axi4_lite_rd_data_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2230FFFF22300000)) 
    \axi4_lite_rd_data_reg[1]_i_1 
       (.I0(SHIFT_LEFT[9]),
        .I1(\axi4_lite_rd_data_reg[1]_i_2_n_0 ),
        .I2(head_reg[1]),
        .I3(S_AXI_ARADDR[2]),
        .I4(axi4_lite_rd_data_reg),
        .I5(S_AXI_RDATA[1]),
        .O(\axi4_lite_rd_data_reg[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \axi4_lite_rd_data_reg[1]_i_2 
       (.I0(S_AXI_ARADDR[3]),
        .I1(S_AXI_ARADDR[1]),
        .I2(S_AXI_ARADDR[0]),
        .O(\axi4_lite_rd_data_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \axi4_lite_rd_data_reg[1]_i_3 
       (.I0(read_state_reg_reg_0),
        .I1(S_AXI_ARVALID),
        .I2(axi_aresetn),
        .I3(arready_reg_reg_0),
        .O(axi4_lite_rd_data_reg));
  FDRE \axi4_lite_rd_data_reg_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\axi4_lite_rd_data_reg[0]_i_1_n_0 ),
        .Q(S_AXI_RDATA[0]),
        .R(1'b0));
  FDRE \axi4_lite_rd_data_reg_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\axi4_lite_rd_data_reg[1]_i_1_n_0 ),
        .Q(S_AXI_RDATA[1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \axi4_lite_wr_addr_offset_reg[3]_i_1 
       (.I0(S_AXI_AWVALID),
        .I1(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I2(awready_reg_reg_0),
        .O(axi4_lite_wr_addr_offset_next));
  FDRE \axi4_lite_wr_addr_offset_reg_reg[0] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_addr_offset_next),
        .D(S_AXI_AWADDR[0]),
        .Q(axi4_lite_wr_addr_offset_reg[0]),
        .R(axi_aresetn_0));
  FDRE \axi4_lite_wr_addr_offset_reg_reg[1] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_addr_offset_next),
        .D(S_AXI_AWADDR[1]),
        .Q(axi4_lite_wr_addr_offset_reg[1]),
        .R(axi_aresetn_0));
  FDRE \axi4_lite_wr_addr_offset_reg_reg[2] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_addr_offset_next),
        .D(S_AXI_AWADDR[2]),
        .Q(axi4_lite_wr_addr_offset_reg[2]),
        .R(axi_aresetn_0));
  FDRE \axi4_lite_wr_addr_offset_reg_reg[3] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_addr_offset_next),
        .D(S_AXI_AWADDR[3]),
        .Q(axi4_lite_wr_addr_offset_reg[3]),
        .R(axi_aresetn_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \axi4_lite_wr_data_reg[31]_i_1 
       (.I0(wready_reg_reg_0),
        .I1(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I2(S_AXI_WVALID),
        .I3(axi_aresetn),
        .O(axi4_lite_wr_data_reg_0));
  FDRE \axi4_lite_wr_data_reg_reg[0] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[0]),
        .Q(axi4_lite_wr_data_reg[0]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[10] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[10]),
        .Q(axi4_lite_wr_data_reg[10]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[11] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[11]),
        .Q(axi4_lite_wr_data_reg[11]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[12] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[12]),
        .Q(axi4_lite_wr_data_reg[12]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[13] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[13]),
        .Q(axi4_lite_wr_data_reg[13]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[14] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[14]),
        .Q(axi4_lite_wr_data_reg[14]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[15] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[15]),
        .Q(axi4_lite_wr_data_reg[15]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[16] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[16]),
        .Q(axi4_lite_wr_data_reg[16]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[17] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[17]),
        .Q(axi4_lite_wr_data_reg[17]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[18] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[18]),
        .Q(axi4_lite_wr_data_reg[18]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[19] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[19]),
        .Q(axi4_lite_wr_data_reg[19]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[1] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[1]),
        .Q(axi4_lite_wr_data_reg[1]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[20] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[20]),
        .Q(axi4_lite_wr_data_reg[20]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[21] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[21]),
        .Q(axi4_lite_wr_data_reg[21]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[22] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[22]),
        .Q(axi4_lite_wr_data_reg[22]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[23] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[23]),
        .Q(axi4_lite_wr_data_reg[23]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[24] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[24]),
        .Q(axi4_lite_wr_data_reg[24]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[25] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[25]),
        .Q(axi4_lite_wr_data_reg[25]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[26] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[26]),
        .Q(axi4_lite_wr_data_reg[26]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[27] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[27]),
        .Q(axi4_lite_wr_data_reg[27]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[28] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[28]),
        .Q(axi4_lite_wr_data_reg[28]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[29] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[29]),
        .Q(axi4_lite_wr_data_reg[29]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[2] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[2]),
        .Q(axi4_lite_wr_data_reg[2]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[30] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[30]),
        .Q(axi4_lite_wr_data_reg[30]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[31] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[31]),
        .Q(axi4_lite_wr_data_reg[31]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[3] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[3]),
        .Q(axi4_lite_wr_data_reg[3]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[4] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[4]),
        .Q(axi4_lite_wr_data_reg[4]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[5] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[5]),
        .Q(axi4_lite_wr_data_reg[5]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[6] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[6]),
        .Q(axi4_lite_wr_data_reg[6]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[7] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[7]),
        .Q(axi4_lite_wr_data_reg[7]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[8] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[8]),
        .Q(axi4_lite_wr_data_reg[8]),
        .R(1'b0));
  FDRE \axi4_lite_wr_data_reg_reg[9] 
       (.C(axi_aclk),
        .CE(axi4_lite_wr_data_reg_0),
        .D(S_AXI_WDATA[9]),
        .Q(axi4_lite_wr_data_reg[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    \bresp_reg[1]_i_1 
       (.I0(axi4_lite_wr_addr_offset_reg[3]),
        .I1(axi4_lite_wr_addr_offset_reg[1]),
        .I2(axi4_lite_wr_addr_offset_reg[0]),
        .I3(bvalid_next),
        .I4(S_AXI_BRESP),
        .O(\bresp_reg[1]_i_1_n_0 ));
  FDRE \bresp_reg_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\bresp_reg[1]_i_1_n_0 ),
        .Q(S_AXI_BRESP),
        .R(axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFF70)) 
    bvalid_reg_i_1
       (.I0(S_AXI_BREADY),
        .I1(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .I2(bvalid_reg_reg_0),
        .I3(bvalid_next),
        .O(bvalid_reg_i_1_n_0));
  FDRE bvalid_reg_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(bvalid_reg_i_1_n_0),
        .Q(bvalid_reg_reg_0),
        .R(axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF404040)) 
    \chunk_byte_count_reg[4]_i_1__0 
       (.I0(dma_state_reg[1]),
        .I1(dma_state_reg[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(M_AXI_WREADY),
        .I5(buf_id_next),
        .O(E));
  LUT6 #(
    .INIT(64'hFEFFFFFF01000000)) 
    \head_reg[0]_i_1 
       (.I0(axi4_lite_wr_addr_offset_reg[3]),
        .I1(axi4_lite_wr_addr_offset_reg[1]),
        .I2(axi4_lite_wr_addr_offset_reg[0]),
        .I3(axi4_lite_wr_addr_offset_reg[2]),
        .I4(bvalid_next),
        .I5(head_reg[0]),
        .O(\head_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \head_reg[1]_i_1 
       (.I0(head_reg[0]),
        .I1(bvalid_next),
        .I2(axi4_lite_wr_addr_offset_reg[2]),
        .I3(\head_reg[1]_i_2_n_0 ),
        .I4(head_reg[1]),
        .O(\head_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \head_reg[1]_i_2 
       (.I0(axi4_lite_wr_addr_offset_reg[3]),
        .I1(axi4_lite_wr_addr_offset_reg[1]),
        .I2(axi4_lite_wr_addr_offset_reg[0]),
        .O(\head_reg[1]_i_2_n_0 ));
  FDRE \head_reg_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\head_reg[0]_i_1_n_0 ),
        .Q(head_reg[0]),
        .R(axi_aresetn_0));
  FDRE \head_reg_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\head_reg[1]_i_1_n_0 ),
        .Q(head_reg[1]),
        .R(axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h7444)) 
    read_state_reg_i_1
       (.I0(S_AXI_RREADY),
        .I1(read_state_reg_reg_0),
        .I2(S_AXI_ARVALID),
        .I3(arready_reg_reg_0),
        .O(read_state_reg_i_1_n_0));
  FDRE read_state_reg_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(read_state_reg_i_1_n_0),
        .Q(read_state_reg_reg_0),
        .R(axi_aresetn_0));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \rresp_reg[1]_i_1 
       (.I0(\axi4_lite_rd_data_reg[1]_i_2_n_0 ),
        .I1(arready_reg_reg_0),
        .I2(S_AXI_ARVALID),
        .I3(read_state_reg_reg_0),
        .I4(S_AXI_RRESP),
        .O(\rresp_reg[1]_i_1_n_0 ));
  FDRE \rresp_reg_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\rresp_reg[1]_i_1_n_0 ),
        .Q(S_AXI_RRESP),
        .R(axi_aresetn_0));
  LUT5 #(
    .INIT(32'h00000004)) 
    \rx_payload_region_base_addr_reg[31]_i_1 
       (.I0(axi4_lite_wr_addr_offset_reg[2]),
        .I1(bvalid_next),
        .I2(axi4_lite_wr_addr_offset_reg[0]),
        .I3(axi4_lite_wr_addr_offset_reg[1]),
        .I4(axi4_lite_wr_addr_offset_reg[3]),
        .O(rx_payload_region_base_addr_next));
  FDRE \rx_payload_region_base_addr_reg_reg[0] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[0]),
        .Q(\rx_payload_region_base_addr_reg_reg[6]_0 [0]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[10] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[10]),
        .Q(rx_payload_region_base_addr_reg[10]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[11] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[11]),
        .Q(rx_payload_region_base_addr_reg[11]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[12] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[12]),
        .Q(rx_payload_region_base_addr_reg[12]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[13] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[13]),
        .Q(rx_payload_region_base_addr_reg[13]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[14] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[14]),
        .Q(rx_payload_region_base_addr_reg[14]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[15] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[15]),
        .Q(rx_payload_region_base_addr_reg[15]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[16] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[16]),
        .Q(rx_payload_region_base_addr_reg[16]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[17] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[17]),
        .Q(rx_payload_region_base_addr_reg[17]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[18] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[18]),
        .Q(rx_payload_region_base_addr_reg[18]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[19] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[19]),
        .Q(rx_payload_region_base_addr_reg[19]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[1] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[1]),
        .Q(\rx_payload_region_base_addr_reg_reg[6]_0 [1]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[20] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[20]),
        .Q(rx_payload_region_base_addr_reg[20]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[21] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[21]),
        .Q(rx_payload_region_base_addr_reg[21]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[22] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[22]),
        .Q(rx_payload_region_base_addr_reg[22]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[23] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[23]),
        .Q(rx_payload_region_base_addr_reg[23]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[24] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[24]),
        .Q(rx_payload_region_base_addr_reg[24]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[25] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[25]),
        .Q(rx_payload_region_base_addr_reg[25]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[26] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[26]),
        .Q(rx_payload_region_base_addr_reg[26]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[27] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[27]),
        .Q(rx_payload_region_base_addr_reg[27]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[28] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[28]),
        .Q(rx_payload_region_base_addr_reg[28]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[29] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[29]),
        .Q(rx_payload_region_base_addr_reg[29]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[2] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[2]),
        .Q(\rx_payload_region_base_addr_reg_reg[6]_0 [2]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[30] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[30]),
        .Q(rx_payload_region_base_addr_reg[30]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[31] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[31]),
        .Q(rx_payload_region_base_addr_reg[31]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[3] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[3]),
        .Q(\rx_payload_region_base_addr_reg_reg[6]_0 [3]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[4] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[4]),
        .Q(\rx_payload_region_base_addr_reg_reg[6]_0 [4]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[5] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[5]),
        .Q(\rx_payload_region_base_addr_reg_reg[6]_0 [5]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[6] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[6]),
        .Q(\rx_payload_region_base_addr_reg_reg[6]_0 [6]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[7] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[7]),
        .Q(rx_payload_region_base_addr_reg[7]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[8] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[8]),
        .Q(rx_payload_region_base_addr_reg[8]),
        .R(axi_aresetn_0));
  FDRE \rx_payload_region_base_addr_reg_reg[9] 
       (.C(axi_aclk),
        .CE(rx_payload_region_base_addr_next),
        .D(axi4_lite_wr_data_reg[9]),
        .Q(rx_payload_region_base_addr_reg[9]),
        .R(axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000100)) 
    rx_payload_region_base_addr_valid_reg_i_1
       (.I0(axi4_lite_wr_addr_offset_reg[3]),
        .I1(axi4_lite_wr_addr_offset_reg[1]),
        .I2(axi4_lite_wr_addr_offset_reg[0]),
        .I3(bvalid_next),
        .I4(axi4_lite_wr_addr_offset_reg[2]),
        .I5(rx_payload_region_base_addr_valid_reg),
        .O(rx_payload_region_base_addr_valid_reg_i_1_n_0));
  FDRE rx_payload_region_base_addr_valid_reg_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(rx_payload_region_base_addr_valid_reg_i_1_n_0),
        .Q(rx_payload_region_base_addr_valid_reg),
        .R(axi_aresetn_0));
  LUT6 #(
    .INIT(64'h06FFFFFF6F000000)) 
    \tail_reg[0]_i_1 
       (.I0(head_reg[1]),
        .I1(SHIFT_LEFT[9]),
        .I2(head_reg[0]),
        .I3(dma_state_reg[0]),
        .I4(dma_state_reg[1]),
        .I5(SHIFT_LEFT[8]),
        .O(\tail_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h77FF80007FFF8800)) 
    \tail_reg[1]_i_1 
       (.I0(dma_state_reg[1]),
        .I1(dma_state_reg[0]),
        .I2(head_reg[0]),
        .I3(SHIFT_LEFT[8]),
        .I4(SHIFT_LEFT[9]),
        .I5(head_reg[1]),
        .O(\tail_reg[1]_i_1_n_0 ));
  FDRE \tail_reg_reg[0] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\tail_reg[0]_i_1_n_0 ),
        .Q(SHIFT_LEFT[8]),
        .R(axi_aresetn_0));
  FDRE \tail_reg_reg[1] 
       (.C(axi_aclk),
        .CE(1'b1),
        .D(\tail_reg[1]_i_1_n_0 ),
        .Q(SHIFT_LEFT[9]),
        .R(axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h80FF8080)) 
    w_seen_reg_i_1
       (.I0(wready_reg_reg_0),
        .I1(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I2(S_AXI_WVALID),
        .I3(bvalid_next),
        .I4(w_seen_reg),
        .O(w_seen_reg_i_1_n_0));
  FDRE w_seen_reg_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(w_seen_reg_i_1_n_0),
        .Q(w_seen_reg),
        .R(axi_aresetn_0));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_base_addr_reg[10]_i_2 
       (.I0(rx_payload_region_base_addr_reg[9]),
        .I1(SHIFT_LEFT[9]),
        .O(\wr_base_addr_reg[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_base_addr_reg[10]_i_3 
       (.I0(rx_payload_region_base_addr_reg[8]),
        .I1(SHIFT_LEFT[8]),
        .O(\wr_base_addr_reg[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \wr_base_addr_reg[31]_i_1 
       (.I0(Q[0]),
        .I1(dma_state_reg[0]),
        .I2(dma_state_reg[1]),
        .I3(axi_aresetn),
        .O(wr_base_addr_reg));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \wr_base_addr_reg_reg[10]_i_1 
       (.CI(1'b0),
        .CO({\wr_base_addr_reg_reg[10]_i_1_n_0 ,\wr_base_addr_reg_reg[10]_i_1_n_1 ,\wr_base_addr_reg_reg[10]_i_1_n_2 ,\wr_base_addr_reg_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,rx_payload_region_base_addr_reg[9:8],1'b0}),
        .O(\rx_payload_region_base_addr_reg_reg[9]_0 ),
        .S({rx_payload_region_base_addr_reg[10],\wr_base_addr_reg[10]_i_2_n_0 ,\wr_base_addr_reg[10]_i_3_n_0 ,rx_payload_region_base_addr_reg[7]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \wr_base_addr_reg_reg[14]_i_1 
       (.CI(\wr_base_addr_reg_reg[10]_i_1_n_0 ),
        .CO({\wr_base_addr_reg_reg[14]_i_1_n_0 ,\wr_base_addr_reg_reg[14]_i_1_n_1 ,\wr_base_addr_reg_reg[14]_i_1_n_2 ,\wr_base_addr_reg_reg[14]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\rx_payload_region_base_addr_reg_reg[14]_0 ),
        .S(rx_payload_region_base_addr_reg[14:11]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \wr_base_addr_reg_reg[18]_i_1 
       (.CI(\wr_base_addr_reg_reg[14]_i_1_n_0 ),
        .CO({\wr_base_addr_reg_reg[18]_i_1_n_0 ,\wr_base_addr_reg_reg[18]_i_1_n_1 ,\wr_base_addr_reg_reg[18]_i_1_n_2 ,\wr_base_addr_reg_reg[18]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\rx_payload_region_base_addr_reg_reg[18]_0 ),
        .S(rx_payload_region_base_addr_reg[18:15]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \wr_base_addr_reg_reg[22]_i_1 
       (.CI(\wr_base_addr_reg_reg[18]_i_1_n_0 ),
        .CO({\wr_base_addr_reg_reg[22]_i_1_n_0 ,\wr_base_addr_reg_reg[22]_i_1_n_1 ,\wr_base_addr_reg_reg[22]_i_1_n_2 ,\wr_base_addr_reg_reg[22]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\rx_payload_region_base_addr_reg_reg[22]_0 ),
        .S(rx_payload_region_base_addr_reg[22:19]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \wr_base_addr_reg_reg[26]_i_1 
       (.CI(\wr_base_addr_reg_reg[22]_i_1_n_0 ),
        .CO({\wr_base_addr_reg_reg[26]_i_1_n_0 ,\wr_base_addr_reg_reg[26]_i_1_n_1 ,\wr_base_addr_reg_reg[26]_i_1_n_2 ,\wr_base_addr_reg_reg[26]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\rx_payload_region_base_addr_reg_reg[26]_0 ),
        .S(rx_payload_region_base_addr_reg[26:23]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \wr_base_addr_reg_reg[30]_i_1 
       (.CI(\wr_base_addr_reg_reg[26]_i_1_n_0 ),
        .CO({\wr_base_addr_reg_reg[30]_i_1_n_0 ,\wr_base_addr_reg_reg[30]_i_1_n_1 ,\wr_base_addr_reg_reg[30]_i_1_n_2 ,\wr_base_addr_reg_reg[30]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\rx_payload_region_base_addr_reg_reg[30]_0 ),
        .S(rx_payload_region_base_addr_reg[30:27]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \wr_base_addr_reg_reg[31]_i_2 
       (.CI(\wr_base_addr_reg_reg[30]_i_1_n_0 ),
        .CO(\NLW_wr_base_addr_reg_reg[31]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wr_base_addr_reg_reg[31]_i_2_O_UNCONNECTED [3:1],O}),
        .S({1'b0,1'b0,1'b0,rx_payload_region_base_addr_reg[31]}));
  LUT6 #(
    .INIT(64'hFF2A2A2A2A2A2A2A)) 
    wready_reg_i_1
       (.I0(wready_reg_reg_0),
        .I1(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_BREADY),
        .I4(\FSM_onehot_state_reg_reg_n_0_[2] ),
        .I5(bvalid_reg_reg_0),
        .O(wready_reg_i_1_n_0));
  FDSE wready_reg_reg
       (.C(axi_aclk),
        .CE(1'b1),
        .D(wready_reg_i_1_n_0),
        .Q(wready_reg_reg_0),
        .S(axi_aresetn_0));
endmodule

(* ORIG_REF_NAME = "eth_rx" *) 
module design_1_eth_rx_0_2_eth_rx
   (M_AXI_WVALID,
    M_AXI_AWLEN,
    M_AXI_BREADY,
    M_AXI_AWVALID,
    S_AXI_RDATA,
    M_AXI_WLAST,
    M_AXI_WSTRB,
    wready_reg_reg,
    read_state_reg_reg,
    arready_reg_reg,
    bvalid_reg_reg,
    awready_reg_reg,
    M_AXI_WDATA,
    M_AXI_AWADDR,
    S_AXI_BRESP,
    S_AXI_RRESP,
    axi_aresetn,
    i_ref_clk,
    axi_aclk,
    i_crs_dv,
    i_rxd,
    M_AXI_WREADY,
    S_AXI_WDATA,
    S_AXI_AWADDR,
    S_AXI_ARADDR,
    M_AXI_BVALID,
    M_AXI_AWREADY,
    S_AXI_WVALID,
    S_AXI_ARVALID,
    S_AXI_BREADY,
    S_AXI_AWVALID,
    S_AXI_RREADY);
  output M_AXI_WVALID;
  output [3:0]M_AXI_AWLEN;
  output M_AXI_BREADY;
  output M_AXI_AWVALID;
  output [1:0]S_AXI_RDATA;
  output M_AXI_WLAST;
  output [3:0]M_AXI_WSTRB;
  output wready_reg_reg;
  output read_state_reg_reg;
  output arready_reg_reg;
  output bvalid_reg_reg;
  output awready_reg_reg;
  output [31:0]M_AXI_WDATA;
  output [31:0]M_AXI_AWADDR;
  output [0:0]S_AXI_BRESP;
  output [0:0]S_AXI_RRESP;
  input axi_aresetn;
  input i_ref_clk;
  input axi_aclk;
  input i_crs_dv;
  input [1:0]i_rxd;
  input M_AXI_WREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_AWADDR;
  input [3:0]S_AXI_ARADDR;
  input M_AXI_BVALID;
  input M_AXI_AWREADY;
  input S_AXI_WVALID;
  input S_AXI_ARVALID;
  input S_AXI_BREADY;
  input S_AXI_AWVALID;
  input S_AXI_RREADY;

  wire [31:0]M_AXI_AWADDR;
  wire [3:0]M_AXI_AWLEN;
  wire M_AXI_AWREADY;
  wire M_AXI_AWVALID;
  wire M_AXI_BREADY;
  wire M_AXI_BVALID;
  wire [31:0]M_AXI_WDATA;
  wire M_AXI_WLAST;
  wire M_AXI_WREADY;
  wire [3:0]M_AXI_WSTRB;
  wire M_AXI_WVALID;
  wire [3:0]S_AXI_ARADDR;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [0:0]S_AXI_BRESP;
  wire [1:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire [0:0]S_AXI_RRESP;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WVALID;
  wire arready_reg_reg;
  wire awready_reg_reg;
  wire axi_aclk;
  wire axi_aresetn;
  wire bvalid_reg_reg;
  wire empty;
  wire eth_rx_dma_inst_n_0;
  wire [9:0]fifo_din;
  wire [9:0]fifo_dout;
  wire fifo_full;
  wire i_crs_dv;
  wire i_ref_clk;
  wire [1:0]i_rxd;
  wire rd_en;
  wire rd_rst_busy;
  wire read_state_reg_reg;
  wire wr_en;
  wire wr_rst_busy;
  wire wready_reg_reg;
  wire NLW_rx_async_fifo_inst_almost_empty_UNCONNECTED;
  wire NLW_rx_async_fifo_inst_almost_full_UNCONNECTED;
  wire NLW_rx_async_fifo_inst_data_valid_UNCONNECTED;
  wire NLW_rx_async_fifo_inst_dbiterr_UNCONNECTED;
  wire NLW_rx_async_fifo_inst_overflow_UNCONNECTED;
  wire NLW_rx_async_fifo_inst_prog_empty_UNCONNECTED;
  wire NLW_rx_async_fifo_inst_prog_full_UNCONNECTED;
  wire NLW_rx_async_fifo_inst_sbiterr_UNCONNECTED;
  wire NLW_rx_async_fifo_inst_underflow_UNCONNECTED;
  wire NLW_rx_async_fifo_inst_wr_ack_UNCONNECTED;
  wire [0:0]NLW_rx_async_fifo_inst_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_rx_async_fifo_inst_wr_data_count_UNCONNECTED;

  design_1_eth_rx_0_2_eth_rx_dma eth_rx_dma_inst
       (.M_AXI_AWADDR(M_AXI_AWADDR),
        .M_AXI_AWLEN(M_AXI_AWLEN),
        .M_AXI_AWREADY(M_AXI_AWREADY),
        .M_AXI_BVALID(M_AXI_BVALID),
        .M_AXI_WDATA(M_AXI_WDATA),
        .M_AXI_WLAST(M_AXI_WLAST),
        .M_AXI_WREADY(M_AXI_WREADY),
        .M_AXI_WSTRB(M_AXI_WSTRB),
        .Q({M_AXI_BREADY,M_AXI_WVALID,M_AXI_AWVALID}),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BRESP(S_AXI_BRESP),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RRESP(S_AXI_RRESP),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WVALID(S_AXI_WVALID),
        .arready_reg_reg(arready_reg_reg),
        .awready_reg_reg(awready_reg_reg),
        .axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .axi_aresetn_0(eth_rx_dma_inst_n_0),
        .bvalid_reg_reg(bvalid_reg_reg),
        .dout(fifo_dout),
        .empty(empty),
        .rd_en(rd_en),
        .rd_rst_busy(rd_rst_busy),
        .read_state_reg_reg(read_state_reg_reg),
        .wready_reg_reg(wready_reg_reg));
  design_1_eth_rx_0_2_rmii_mac_rx rmii_mac_rx_inst
       (.Q(fifo_din),
        .axi_aresetn(axi_aresetn),
        .full(fifo_full),
        .i_crs_dv(i_crs_dv),
        .i_ref_clk(i_ref_clk),
        .i_rxd(i_rxd),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_SYNC_STAGES = "2" *) 
  (* DONT_TOUCH *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* EN_ADV_FEATURE_ASYNC = "16'b0000000000000000" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_WRITE_DEPTH = "512" *) 
  (* FULL_RESET_VALUE = "0" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "500" *) 
  (* P_COMMON_CLOCK = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "2" *) 
  (* P_READ_MODE = "0" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "1" *) 
  (* READ_DATA_WIDTH = "10" *) 
  (* READ_MODE = "0" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0000" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "10" *) 
  (* WR_DATA_COUNT_WIDTH = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_eth_rx_0_2_xpm_fifo_async rx_async_fifo_inst
       (.almost_empty(NLW_rx_async_fifo_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_rx_async_fifo_inst_almost_full_UNCONNECTED),
        .data_valid(NLW_rx_async_fifo_inst_data_valid_UNCONNECTED),
        .dbiterr(NLW_rx_async_fifo_inst_dbiterr_UNCONNECTED),
        .din(fifo_din),
        .dout(fifo_dout),
        .empty(empty),
        .full(fifo_full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_rx_async_fifo_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_rx_async_fifo_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_rx_async_fifo_inst_prog_full_UNCONNECTED),
        .rd_clk(axi_aclk),
        .rd_data_count(NLW_rx_async_fifo_inst_rd_data_count_UNCONNECTED[0]),
        .rd_en(rd_en),
        .rd_rst_busy(rd_rst_busy),
        .rst(eth_rx_dma_inst_n_0),
        .sbiterr(NLW_rx_async_fifo_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_rx_async_fifo_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_rx_async_fifo_inst_wr_ack_UNCONNECTED),
        .wr_clk(i_ref_clk),
        .wr_data_count(NLW_rx_async_fifo_inst_wr_data_count_UNCONNECTED[0]),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "eth_rx_dma" *) 
module design_1_eth_rx_0_2_eth_rx_dma
   (axi_aresetn_0,
    wready_reg_reg,
    awready_reg_reg,
    bvalid_reg_reg,
    S_AXI_BRESP,
    read_state_reg_reg,
    arready_reg_reg,
    S_AXI_RRESP,
    Q,
    M_AXI_AWLEN,
    S_AXI_RDATA,
    M_AXI_WLAST,
    M_AXI_WSTRB,
    rd_en,
    M_AXI_WDATA,
    M_AXI_AWADDR,
    axi_aclk,
    axi_aresetn,
    S_AXI_WVALID,
    S_AXI_BREADY,
    S_AXI_AWVALID,
    S_AXI_ARVALID,
    dout,
    S_AXI_RREADY,
    empty,
    rd_rst_busy,
    M_AXI_WREADY,
    S_AXI_WDATA,
    S_AXI_AWADDR,
    S_AXI_ARADDR,
    M_AXI_BVALID,
    M_AXI_AWREADY);
  output axi_aresetn_0;
  output wready_reg_reg;
  output awready_reg_reg;
  output bvalid_reg_reg;
  output [0:0]S_AXI_BRESP;
  output read_state_reg_reg;
  output arready_reg_reg;
  output [0:0]S_AXI_RRESP;
  output [2:0]Q;
  output [3:0]M_AXI_AWLEN;
  output [1:0]S_AXI_RDATA;
  output M_AXI_WLAST;
  output [3:0]M_AXI_WSTRB;
  output rd_en;
  output [31:0]M_AXI_WDATA;
  output [31:0]M_AXI_AWADDR;
  input axi_aclk;
  input axi_aresetn;
  input S_AXI_WVALID;
  input S_AXI_BREADY;
  input S_AXI_AWVALID;
  input S_AXI_ARVALID;
  input [9:0]dout;
  input S_AXI_RREADY;
  input empty;
  input rd_rst_busy;
  input M_AXI_WREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_AWADDR;
  input [3:0]S_AXI_ARADDR;
  input M_AXI_BVALID;
  input M_AXI_AWREADY;

  wire [31:0]M_AXI_AWADDR;
  wire [3:0]M_AXI_AWLEN;
  wire M_AXI_AWREADY;
  wire M_AXI_BVALID;
  wire [31:0]M_AXI_WDATA;
  wire M_AXI_WLAST;
  wire M_AXI_WREADY;
  wire [3:0]M_AXI_WSTRB;
  wire [2:0]Q;
  wire [3:0]S_AXI_ARADDR;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [0:0]S_AXI_BRESP;
  wire [1:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire [0:0]S_AXI_RRESP;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WVALID;
  wire arready_reg_reg;
  wire awready_reg_reg;
  wire axi_aclk;
  wire axi_aresetn;
  wire axi_aresetn_0;
  wire axi_writer_inst_n_38;
  wire axi_writer_inst_n_44;
  wire axi_writer_inst_n_45;
  wire axi_writer_inst_n_46;
  wire axi_writer_inst_n_47;
  wire axi_writer_inst_n_49;
  wire axi_writer_inst_n_50;
  wire axi_writer_inst_n_87;
  wire axi_writer_inst_n_88;
  wire buf_id_next;
  wire bvalid_reg_reg;
  wire chunk_buf_id_reg;
  wire [0:0]chunk_byte_count_next;
  wire chunk_ready;
  wire [1:0]dma_state_reg;
  wire [9:0]dout;
  wire empty;
  wire last_next;
  wire last_reg;
  wire payload_collector_inst_n_0;
  wire payload_collector_inst_n_1;
  wire payload_collector_inst_n_10;
  wire payload_collector_inst_n_11;
  wire payload_collector_inst_n_12;
  wire payload_collector_inst_n_13;
  wire payload_collector_inst_n_14;
  wire payload_collector_inst_n_15;
  wire payload_collector_inst_n_16;
  wire payload_collector_inst_n_17;
  wire payload_collector_inst_n_18;
  wire payload_collector_inst_n_19;
  wire payload_collector_inst_n_20;
  wire payload_collector_inst_n_21;
  wire payload_collector_inst_n_22;
  wire payload_collector_inst_n_23;
  wire payload_collector_inst_n_24;
  wire payload_collector_inst_n_25;
  wire payload_collector_inst_n_26;
  wire payload_collector_inst_n_27;
  wire payload_collector_inst_n_28;
  wire payload_collector_inst_n_29;
  wire payload_collector_inst_n_3;
  wire payload_collector_inst_n_30;
  wire payload_collector_inst_n_31;
  wire payload_collector_inst_n_32;
  wire payload_collector_inst_n_33;
  wire payload_collector_inst_n_34;
  wire payload_collector_inst_n_35;
  wire payload_collector_inst_n_36;
  wire payload_collector_inst_n_37;
  wire payload_collector_inst_n_38;
  wire payload_collector_inst_n_39;
  wire payload_collector_inst_n_4;
  wire payload_collector_inst_n_40;
  wire payload_collector_inst_n_41;
  wire payload_collector_inst_n_42;
  wire payload_collector_inst_n_43;
  wire payload_collector_inst_n_44;
  wire payload_collector_inst_n_45;
  wire payload_collector_inst_n_46;
  wire payload_collector_inst_n_49;
  wire payload_collector_inst_n_5;
  wire payload_collector_inst_n_6;
  wire payload_collector_inst_n_7;
  wire payload_collector_inst_n_8;
  wire payload_collector_inst_n_9;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][0] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][10] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][11] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][12] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][13] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][14] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][15] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][16] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][17] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][18] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][19] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][1] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][20] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][21] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][22] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][23] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][24] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][25] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][26] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][27] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][28] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][29] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][2] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][30] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][31] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][3] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][4] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][5] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][6] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][7] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][8] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_0][9] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][0] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][10] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][11] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][12] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][13] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][14] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][15] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][16] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][17] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][18] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][19] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][1] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][20] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][21] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][22] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][23] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][24] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][25] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][26] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][27] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][28] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][29] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][2] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][30] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][31] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][3] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][4] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][5] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][6] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][7] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][8] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_1][9] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][0] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][10] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][11] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][12] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][13] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][14] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][15] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][16] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][17] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][18] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][19] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][1] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][20] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][21] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][22] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][23] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][24] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][25] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][26] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][27] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][28] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][29] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][2] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][30] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][31] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][3] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][4] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][5] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][6] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][7] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][8] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_2][9] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][0] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][10] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][11] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][12] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][13] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][14] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][15] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][16] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][17] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][18] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][19] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][1] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][20] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][21] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][22] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][23] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][24] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][25] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][26] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][27] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][28] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][29] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][2] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][30] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][31] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][3] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][4] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][5] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][6] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][7] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][8] ;
  wire \ping_pong_buf_reg_reg[0,_n_0_3][9] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][0] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][10] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][11] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][12] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][13] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][14] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][15] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][16] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][17] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][18] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][19] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][1] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][20] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][21] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][22] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][23] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][24] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][25] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][26] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][27] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][28] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][29] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][2] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][30] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][31] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][3] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][4] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][5] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][6] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][7] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][8] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_0][9] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][0] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][10] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][11] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][12] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][13] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][14] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][15] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][16] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][17] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][18] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][19] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][1] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][20] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][21] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][22] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][23] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][24] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][25] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][26] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][27] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][28] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][29] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][2] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][30] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][31] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][3] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][4] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][5] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][6] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][7] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][8] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_1][9] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][0] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][10] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][11] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][12] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][13] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][14] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][15] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][16] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][17] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][18] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][19] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][1] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][20] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][21] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][22] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][23] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][24] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][25] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][26] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][27] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][28] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][29] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][2] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][30] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][31] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][3] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][4] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][5] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][6] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][7] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][8] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_2][9] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][0] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][10] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][11] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][12] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][13] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][14] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][15] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][16] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][17] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][18] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][19] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][1] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][20] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][21] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][22] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][23] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][24] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][25] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][26] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][27] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][28] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][29] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][2] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][30] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][31] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][3] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][4] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][5] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][6] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][7] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][8] ;
  wire \ping_pong_buf_reg_reg[1,_n_0_3][9] ;
  wire rd_en;
  wire rd_rst_busy;
  wire read_state_reg_reg;
  wire [6:0]rx_payload_region_base_addr_reg;
  wire status_manager_inst_n_12;
  wire status_manager_inst_n_13;
  wire status_manager_inst_n_14;
  wire status_manager_inst_n_15;
  wire status_manager_inst_n_16;
  wire status_manager_inst_n_24;
  wire status_manager_inst_n_25;
  wire status_manager_inst_n_26;
  wire status_manager_inst_n_27;
  wire status_manager_inst_n_28;
  wire status_manager_inst_n_29;
  wire status_manager_inst_n_30;
  wire status_manager_inst_n_31;
  wire status_manager_inst_n_32;
  wire status_manager_inst_n_33;
  wire status_manager_inst_n_34;
  wire status_manager_inst_n_35;
  wire status_manager_inst_n_36;
  wire status_manager_inst_n_37;
  wire status_manager_inst_n_38;
  wire status_manager_inst_n_39;
  wire status_manager_inst_n_40;
  wire status_manager_inst_n_41;
  wire status_manager_inst_n_42;
  wire status_manager_inst_n_43;
  wire status_manager_inst_n_44;
  wire [0:0]wr_addr_offset_reg;
  wire wr_addr_ready;
  wire [0:0]wr_base_addr_reg;
  wire wready_reg_reg;

  design_1_eth_rx_0_2_dma_axi_writer axi_writer_inst
       (.D({payload_collector_inst_n_44,payload_collector_inst_n_45}),
        .E(chunk_byte_count_next),
        .\FSM_onehot_axi_writer_state_reg_reg[0]_0 (payload_collector_inst_n_4),
        .\FSM_onehot_axi_writer_state_reg_reg[0]_1 (payload_collector_inst_n_5),
        .\FSM_onehot_axi_writer_state_reg_reg[3]_0 (axi_writer_inst_n_50),
        .\FSM_onehot_axi_writer_state_reg_reg[3]_1 (axi_writer_inst_n_87),
        .\FSM_onehot_axi_writer_state_reg_reg[3]_2 (axi_writer_inst_n_88),
        .\FSM_sequential_dma_state_reg_reg[0] (payload_collector_inst_n_49),
        .\FSM_sequential_dma_state_reg_reg[0]_0 (payload_collector_inst_n_11),
        .M_AXI_AWADDR(M_AXI_AWADDR),
        .M_AXI_AWLEN(M_AXI_AWLEN),
        .M_AXI_AWREADY(M_AXI_AWREADY),
        .M_AXI_BVALID(M_AXI_BVALID),
        .M_AXI_WDATA(M_AXI_WDATA),
        .\M_AXI_WDATA[0]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][0] ),
        .\M_AXI_WDATA[0]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][0] ),
        .\M_AXI_WDATA[0]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][0] ),
        .\M_AXI_WDATA[0]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][0] ),
        .\M_AXI_WDATA[0]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][0] ),
        .\M_AXI_WDATA[0]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][0] ),
        .\M_AXI_WDATA[0]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][0] ),
        .\M_AXI_WDATA[10]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][10] ),
        .\M_AXI_WDATA[10]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][10] ),
        .\M_AXI_WDATA[10]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][10] ),
        .\M_AXI_WDATA[10]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][10] ),
        .\M_AXI_WDATA[10]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][10] ),
        .\M_AXI_WDATA[10]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][10] ),
        .\M_AXI_WDATA[10]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][10] ),
        .\M_AXI_WDATA[11]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][11] ),
        .\M_AXI_WDATA[11]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][11] ),
        .\M_AXI_WDATA[11]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][11] ),
        .\M_AXI_WDATA[11]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][11] ),
        .\M_AXI_WDATA[11]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][11] ),
        .\M_AXI_WDATA[11]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][11] ),
        .\M_AXI_WDATA[11]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][11] ),
        .\M_AXI_WDATA[12]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][12] ),
        .\M_AXI_WDATA[12]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][12] ),
        .\M_AXI_WDATA[12]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][12] ),
        .\M_AXI_WDATA[12]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][12] ),
        .\M_AXI_WDATA[12]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][12] ),
        .\M_AXI_WDATA[12]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][12] ),
        .\M_AXI_WDATA[12]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][12] ),
        .\M_AXI_WDATA[13]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][13] ),
        .\M_AXI_WDATA[13]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][13] ),
        .\M_AXI_WDATA[13]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][13] ),
        .\M_AXI_WDATA[13]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][13] ),
        .\M_AXI_WDATA[13]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][13] ),
        .\M_AXI_WDATA[13]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][13] ),
        .\M_AXI_WDATA[13]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][13] ),
        .\M_AXI_WDATA[14]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][14] ),
        .\M_AXI_WDATA[14]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][14] ),
        .\M_AXI_WDATA[14]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][14] ),
        .\M_AXI_WDATA[14]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][14] ),
        .\M_AXI_WDATA[14]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][14] ),
        .\M_AXI_WDATA[14]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][14] ),
        .\M_AXI_WDATA[14]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][14] ),
        .\M_AXI_WDATA[15]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][15] ),
        .\M_AXI_WDATA[15]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][15] ),
        .\M_AXI_WDATA[15]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][15] ),
        .\M_AXI_WDATA[15]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][15] ),
        .\M_AXI_WDATA[15]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][15] ),
        .\M_AXI_WDATA[15]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][15] ),
        .\M_AXI_WDATA[15]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][15] ),
        .\M_AXI_WDATA[16]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][16] ),
        .\M_AXI_WDATA[16]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][16] ),
        .\M_AXI_WDATA[16]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][16] ),
        .\M_AXI_WDATA[16]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][16] ),
        .\M_AXI_WDATA[16]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][16] ),
        .\M_AXI_WDATA[16]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][16] ),
        .\M_AXI_WDATA[16]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][16] ),
        .\M_AXI_WDATA[17]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][17] ),
        .\M_AXI_WDATA[17]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][17] ),
        .\M_AXI_WDATA[17]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][17] ),
        .\M_AXI_WDATA[17]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][17] ),
        .\M_AXI_WDATA[17]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][17] ),
        .\M_AXI_WDATA[17]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][17] ),
        .\M_AXI_WDATA[17]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][17] ),
        .\M_AXI_WDATA[18]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][18] ),
        .\M_AXI_WDATA[18]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][18] ),
        .\M_AXI_WDATA[18]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][18] ),
        .\M_AXI_WDATA[18]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][18] ),
        .\M_AXI_WDATA[18]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][18] ),
        .\M_AXI_WDATA[18]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][18] ),
        .\M_AXI_WDATA[18]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][18] ),
        .\M_AXI_WDATA[19]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][19] ),
        .\M_AXI_WDATA[19]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][19] ),
        .\M_AXI_WDATA[19]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][19] ),
        .\M_AXI_WDATA[19]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][19] ),
        .\M_AXI_WDATA[19]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][19] ),
        .\M_AXI_WDATA[19]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][19] ),
        .\M_AXI_WDATA[19]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][19] ),
        .\M_AXI_WDATA[1]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][1] ),
        .\M_AXI_WDATA[1]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][1] ),
        .\M_AXI_WDATA[1]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][1] ),
        .\M_AXI_WDATA[1]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][1] ),
        .\M_AXI_WDATA[1]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][1] ),
        .\M_AXI_WDATA[1]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][1] ),
        .\M_AXI_WDATA[1]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][1] ),
        .\M_AXI_WDATA[20]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][20] ),
        .\M_AXI_WDATA[20]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][20] ),
        .\M_AXI_WDATA[20]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][20] ),
        .\M_AXI_WDATA[20]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][20] ),
        .\M_AXI_WDATA[20]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][20] ),
        .\M_AXI_WDATA[20]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][20] ),
        .\M_AXI_WDATA[20]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][20] ),
        .\M_AXI_WDATA[21]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][21] ),
        .\M_AXI_WDATA[21]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][21] ),
        .\M_AXI_WDATA[21]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][21] ),
        .\M_AXI_WDATA[21]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][21] ),
        .\M_AXI_WDATA[21]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][21] ),
        .\M_AXI_WDATA[21]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][21] ),
        .\M_AXI_WDATA[21]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][21] ),
        .\M_AXI_WDATA[22]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][22] ),
        .\M_AXI_WDATA[22]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][22] ),
        .\M_AXI_WDATA[22]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][22] ),
        .\M_AXI_WDATA[22]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][22] ),
        .\M_AXI_WDATA[22]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][22] ),
        .\M_AXI_WDATA[22]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][22] ),
        .\M_AXI_WDATA[22]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][22] ),
        .\M_AXI_WDATA[23]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][23] ),
        .\M_AXI_WDATA[23]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][23] ),
        .\M_AXI_WDATA[23]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][23] ),
        .\M_AXI_WDATA[23]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][23] ),
        .\M_AXI_WDATA[23]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][23] ),
        .\M_AXI_WDATA[23]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][23] ),
        .\M_AXI_WDATA[23]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][23] ),
        .\M_AXI_WDATA[24]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][24] ),
        .\M_AXI_WDATA[24]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][24] ),
        .\M_AXI_WDATA[24]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][24] ),
        .\M_AXI_WDATA[24]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][24] ),
        .\M_AXI_WDATA[24]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][24] ),
        .\M_AXI_WDATA[24]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][24] ),
        .\M_AXI_WDATA[24]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][24] ),
        .\M_AXI_WDATA[25]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][25] ),
        .\M_AXI_WDATA[25]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][25] ),
        .\M_AXI_WDATA[25]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][25] ),
        .\M_AXI_WDATA[25]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][25] ),
        .\M_AXI_WDATA[25]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][25] ),
        .\M_AXI_WDATA[25]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][25] ),
        .\M_AXI_WDATA[25]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][25] ),
        .\M_AXI_WDATA[26]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][26] ),
        .\M_AXI_WDATA[26]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][26] ),
        .\M_AXI_WDATA[26]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][26] ),
        .\M_AXI_WDATA[26]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][26] ),
        .\M_AXI_WDATA[26]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][26] ),
        .\M_AXI_WDATA[26]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][26] ),
        .\M_AXI_WDATA[26]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][26] ),
        .\M_AXI_WDATA[27]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][27] ),
        .\M_AXI_WDATA[27]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][27] ),
        .\M_AXI_WDATA[27]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][27] ),
        .\M_AXI_WDATA[27]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][27] ),
        .\M_AXI_WDATA[27]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][27] ),
        .\M_AXI_WDATA[27]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][27] ),
        .\M_AXI_WDATA[27]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][27] ),
        .\M_AXI_WDATA[28]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][28] ),
        .\M_AXI_WDATA[28]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][28] ),
        .\M_AXI_WDATA[28]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][28] ),
        .\M_AXI_WDATA[28]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][28] ),
        .\M_AXI_WDATA[28]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][28] ),
        .\M_AXI_WDATA[28]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][28] ),
        .\M_AXI_WDATA[28]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][28] ),
        .\M_AXI_WDATA[29]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][29] ),
        .\M_AXI_WDATA[29]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][29] ),
        .\M_AXI_WDATA[29]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][29] ),
        .\M_AXI_WDATA[29]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][29] ),
        .\M_AXI_WDATA[29]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][29] ),
        .\M_AXI_WDATA[29]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][29] ),
        .\M_AXI_WDATA[29]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][29] ),
        .\M_AXI_WDATA[2]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][2] ),
        .\M_AXI_WDATA[2]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][2] ),
        .\M_AXI_WDATA[2]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][2] ),
        .\M_AXI_WDATA[2]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][2] ),
        .\M_AXI_WDATA[2]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][2] ),
        .\M_AXI_WDATA[2]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][2] ),
        .\M_AXI_WDATA[2]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][2] ),
        .\M_AXI_WDATA[30]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][30] ),
        .\M_AXI_WDATA[30]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][30] ),
        .\M_AXI_WDATA[30]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][30] ),
        .\M_AXI_WDATA[30]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][30] ),
        .\M_AXI_WDATA[30]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][30] ),
        .\M_AXI_WDATA[30]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][30] ),
        .\M_AXI_WDATA[30]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][30] ),
        .\M_AXI_WDATA[31]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][31] ),
        .\M_AXI_WDATA[31]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][31] ),
        .\M_AXI_WDATA[31]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][31] ),
        .\M_AXI_WDATA[31]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][31] ),
        .\M_AXI_WDATA[31]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][31] ),
        .\M_AXI_WDATA[31]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][31] ),
        .\M_AXI_WDATA[31]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][31] ),
        .\M_AXI_WDATA[3]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][3] ),
        .\M_AXI_WDATA[3]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][3] ),
        .\M_AXI_WDATA[3]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][3] ),
        .\M_AXI_WDATA[3]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][3] ),
        .\M_AXI_WDATA[3]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][3] ),
        .\M_AXI_WDATA[3]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][3] ),
        .\M_AXI_WDATA[3]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][3] ),
        .\M_AXI_WDATA[4]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][4] ),
        .\M_AXI_WDATA[4]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][4] ),
        .\M_AXI_WDATA[4]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][4] ),
        .\M_AXI_WDATA[4]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][4] ),
        .\M_AXI_WDATA[4]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][4] ),
        .\M_AXI_WDATA[4]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][4] ),
        .\M_AXI_WDATA[4]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][4] ),
        .\M_AXI_WDATA[5]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][5] ),
        .\M_AXI_WDATA[5]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][5] ),
        .\M_AXI_WDATA[5]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][5] ),
        .\M_AXI_WDATA[5]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][5] ),
        .\M_AXI_WDATA[5]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][5] ),
        .\M_AXI_WDATA[5]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][5] ),
        .\M_AXI_WDATA[5]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][5] ),
        .\M_AXI_WDATA[6]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][6] ),
        .\M_AXI_WDATA[6]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][6] ),
        .\M_AXI_WDATA[6]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][6] ),
        .\M_AXI_WDATA[6]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][6] ),
        .\M_AXI_WDATA[6]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][6] ),
        .\M_AXI_WDATA[6]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][6] ),
        .\M_AXI_WDATA[6]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][6] ),
        .\M_AXI_WDATA[7]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][7] ),
        .\M_AXI_WDATA[7]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][7] ),
        .\M_AXI_WDATA[7]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][7] ),
        .\M_AXI_WDATA[7]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][7] ),
        .\M_AXI_WDATA[7]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][7] ),
        .\M_AXI_WDATA[7]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][7] ),
        .\M_AXI_WDATA[7]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][7] ),
        .\M_AXI_WDATA[8]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][8] ),
        .\M_AXI_WDATA[8]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][8] ),
        .\M_AXI_WDATA[8]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][8] ),
        .\M_AXI_WDATA[8]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][8] ),
        .\M_AXI_WDATA[8]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][8] ),
        .\M_AXI_WDATA[8]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][8] ),
        .\M_AXI_WDATA[8]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][8] ),
        .\M_AXI_WDATA[9]_0 (\ping_pong_buf_reg_reg[1,_n_0_3][9] ),
        .\M_AXI_WDATA[9]_1 (\ping_pong_buf_reg_reg[0,_n_0_0][9] ),
        .\M_AXI_WDATA[9]_2 (\ping_pong_buf_reg_reg[1,_n_0_0][9] ),
        .\M_AXI_WDATA[9]_3 (\ping_pong_buf_reg_reg[0,_n_0_1][9] ),
        .\M_AXI_WDATA[9]_4 (\ping_pong_buf_reg_reg[1,_n_0_1][9] ),
        .\M_AXI_WDATA[9]_5 (\ping_pong_buf_reg_reg[0,_n_0_2][9] ),
        .\M_AXI_WDATA[9]_6 (\ping_pong_buf_reg_reg[1,_n_0_2][9] ),
        .M_AXI_WDATA_0_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][0] ),
        .M_AXI_WDATA_10_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][10] ),
        .M_AXI_WDATA_11_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][11] ),
        .M_AXI_WDATA_12_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][12] ),
        .M_AXI_WDATA_13_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][13] ),
        .M_AXI_WDATA_14_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][14] ),
        .M_AXI_WDATA_15_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][15] ),
        .M_AXI_WDATA_16_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][16] ),
        .M_AXI_WDATA_17_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][17] ),
        .M_AXI_WDATA_18_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][18] ),
        .M_AXI_WDATA_19_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][19] ),
        .M_AXI_WDATA_1_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][1] ),
        .M_AXI_WDATA_20_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][20] ),
        .M_AXI_WDATA_21_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][21] ),
        .M_AXI_WDATA_22_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][22] ),
        .M_AXI_WDATA_23_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][23] ),
        .M_AXI_WDATA_24_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][24] ),
        .M_AXI_WDATA_25_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][25] ),
        .M_AXI_WDATA_26_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][26] ),
        .M_AXI_WDATA_27_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][27] ),
        .M_AXI_WDATA_28_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][28] ),
        .M_AXI_WDATA_29_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][29] ),
        .M_AXI_WDATA_2_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][2] ),
        .M_AXI_WDATA_30_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][30] ),
        .M_AXI_WDATA_31_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][31] ),
        .M_AXI_WDATA_3_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][3] ),
        .M_AXI_WDATA_4_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][4] ),
        .M_AXI_WDATA_5_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][5] ),
        .M_AXI_WDATA_6_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][6] ),
        .M_AXI_WDATA_7_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][7] ),
        .M_AXI_WDATA_8_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][8] ),
        .M_AXI_WDATA_9_sp_1(\ping_pong_buf_reg_reg[0,_n_0_3][9] ),
        .M_AXI_WLAST(M_AXI_WLAST),
        .M_AXI_WREADY(M_AXI_WREADY),
        .M_AXI_WREADY_0(axi_writer_inst_n_44),
        .M_AXI_WREADY_1(axi_writer_inst_n_45),
        .M_AXI_WSTRB(M_AXI_WSTRB),
        .O(status_manager_inst_n_44),
        .Q({Q,chunk_ready,wr_addr_ready}),
        .axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .\buf_addr_reg_reg[0]_0 (status_manager_inst_n_12),
        .buf_id_next(buf_id_next),
        .chunk_buf_id_reg(chunk_buf_id_reg),
        .chunk_buf_id_reg_reg_0(axi_aresetn_0),
        .chunk_buf_id_reg_reg_1(payload_collector_inst_n_3),
        .\chunk_byte_count_reg_reg[3]_0 (axi_writer_inst_n_47),
        .\chunk_byte_count_reg_reg[4]_0 (axi_writer_inst_n_49),
        .\chunk_byte_count_reg_reg[4]_1 ({payload_collector_inst_n_6,payload_collector_inst_n_7,payload_collector_inst_n_8,payload_collector_inst_n_9,payload_collector_inst_n_10}),
        .dma_state_reg(dma_state_reg),
        .dout(dout[9:8]),
        .\gen_wr_a.gen_word_narrow.mem_reg (axi_writer_inst_n_46),
        .last_next(last_next),
        .last_reg(last_reg),
        .last_reg_reg_0(axi_writer_inst_n_38),
        .last_reg_reg_1(payload_collector_inst_n_1),
        .wr_addr_offset_reg(wr_addr_offset_reg),
        .\wr_addr_offset_reg_reg[0]_0 (payload_collector_inst_n_0),
        .\wr_addr_offset_reg_reg[31]_0 (payload_collector_inst_n_46),
        .wr_base_addr_reg(wr_base_addr_reg),
        .\wr_base_addr_reg_reg[10]_0 ({status_manager_inst_n_13,status_manager_inst_n_14,status_manager_inst_n_15,status_manager_inst_n_16}),
        .\wr_base_addr_reg_reg[14]_0 ({status_manager_inst_n_24,status_manager_inst_n_25,status_manager_inst_n_26,status_manager_inst_n_27}),
        .\wr_base_addr_reg_reg[18]_0 ({status_manager_inst_n_28,status_manager_inst_n_29,status_manager_inst_n_30,status_manager_inst_n_31}),
        .\wr_base_addr_reg_reg[22]_0 ({status_manager_inst_n_32,status_manager_inst_n_33,status_manager_inst_n_34,status_manager_inst_n_35}),
        .\wr_base_addr_reg_reg[26]_0 ({status_manager_inst_n_36,status_manager_inst_n_37,status_manager_inst_n_38,status_manager_inst_n_39}),
        .\wr_base_addr_reg_reg[30]_0 ({status_manager_inst_n_40,status_manager_inst_n_41,status_manager_inst_n_42,status_manager_inst_n_43}),
        .\wr_base_addr_reg_reg[6]_0 (rx_payload_region_base_addr_reg));
  design_1_eth_rx_0_2_dma_payload_collector payload_collector_inst
       (.D({payload_collector_inst_n_44,payload_collector_inst_n_45}),
        .\FSM_onehot_axi_writer_state_reg_reg[2] ({payload_collector_inst_n_6,payload_collector_inst_n_7,payload_collector_inst_n_8,payload_collector_inst_n_9,payload_collector_inst_n_10}),
        .\FSM_sequential_state_reg_reg[1]_0 (payload_collector_inst_n_46),
        .Q({Q,chunk_ready}),
        .axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .axi_aresetn_0(payload_collector_inst_n_0),
        .buf_id_next(buf_id_next),
        .buf_id_reg_reg_0(payload_collector_inst_n_3),
        .buf_id_reg_reg_1(payload_collector_inst_n_12),
        .buf_id_reg_reg_10(payload_collector_inst_n_27),
        .buf_id_reg_reg_11(payload_collector_inst_n_28),
        .buf_id_reg_reg_12(payload_collector_inst_n_32),
        .buf_id_reg_reg_13(payload_collector_inst_n_33),
        .buf_id_reg_reg_14(payload_collector_inst_n_34),
        .buf_id_reg_reg_15(payload_collector_inst_n_35),
        .buf_id_reg_reg_16(payload_collector_inst_n_36),
        .buf_id_reg_reg_17(payload_collector_inst_n_37),
        .buf_id_reg_reg_18(payload_collector_inst_n_38),
        .buf_id_reg_reg_19(payload_collector_inst_n_39),
        .buf_id_reg_reg_2(payload_collector_inst_n_16),
        .buf_id_reg_reg_20(payload_collector_inst_n_43),
        .buf_id_reg_reg_3(payload_collector_inst_n_17),
        .buf_id_reg_reg_4(payload_collector_inst_n_18),
        .buf_id_reg_reg_5(payload_collector_inst_n_19),
        .buf_id_reg_reg_6(payload_collector_inst_n_20),
        .buf_id_reg_reg_7(payload_collector_inst_n_21),
        .buf_id_reg_reg_8(payload_collector_inst_n_22),
        .buf_id_reg_reg_9(payload_collector_inst_n_23),
        .chunk_buf_id_reg(chunk_buf_id_reg),
        .\chunk_byte_count_reg_reg[0]_0 (payload_collector_inst_n_24),
        .\chunk_byte_count_reg_reg[0]_1 (payload_collector_inst_n_40),
        .\chunk_byte_count_reg_reg[0]_2 (axi_writer_inst_n_50),
        .\chunk_byte_count_reg_reg[1]_0 (axi_writer_inst_n_49),
        .\chunk_byte_count_reg_reg[2]_0 (payload_collector_inst_n_13),
        .\chunk_byte_count_reg_reg[2]_1 (payload_collector_inst_n_14),
        .\chunk_byte_count_reg_reg[2]_10 (payload_collector_inst_n_49),
        .\chunk_byte_count_reg_reg[2]_11 (axi_writer_inst_n_47),
        .\chunk_byte_count_reg_reg[2]_2 (payload_collector_inst_n_15),
        .\chunk_byte_count_reg_reg[2]_3 (payload_collector_inst_n_25),
        .\chunk_byte_count_reg_reg[2]_4 (payload_collector_inst_n_26),
        .\chunk_byte_count_reg_reg[2]_5 (payload_collector_inst_n_29),
        .\chunk_byte_count_reg_reg[2]_6 (payload_collector_inst_n_30),
        .\chunk_byte_count_reg_reg[2]_7 (payload_collector_inst_n_31),
        .\chunk_byte_count_reg_reg[2]_8 (payload_collector_inst_n_41),
        .\chunk_byte_count_reg_reg[2]_9 (payload_collector_inst_n_42),
        .\chunk_byte_count_reg_reg[3]_0 (axi_writer_inst_n_88),
        .\chunk_byte_count_reg_reg[4]_0 (axi_writer_inst_n_87),
        .chunk_error_reg_reg_0(payload_collector_inst_n_5),
        .chunk_last_reg_reg_0(payload_collector_inst_n_11),
        .chunk_last_reg_reg_1(axi_aresetn_0),
        .chunk_last_reg_reg_2(axi_writer_inst_n_46),
        .dout(dout[9:8]),
        .empty(empty),
        .\gen_wr_a.gen_word_narrow.mem_reg (payload_collector_inst_n_4),
        .last_next(last_next),
        .last_reg(last_reg),
        .last_reg_reg(payload_collector_inst_n_1),
        .last_reg_reg_0(status_manager_inst_n_12),
        .rd_en(rd_en),
        .rd_rst_busy(rd_rst_busy),
        .wr_addr_offset_reg(wr_addr_offset_reg),
        .\wr_addr_offset_reg_reg[0] (axi_writer_inst_n_45),
        .\wr_addr_offset_reg_reg[31] (axi_writer_inst_n_44));
  FDRE \ping_pong_buf_reg_reg[0,0][0] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_12),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][0] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][10] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_13),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][10] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][11] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_13),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][11] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][12] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_13),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][12] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][13] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_13),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][13] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][14] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_13),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][14] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][15] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_13),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][15] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][16] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_14),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][16] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][17] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_14),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][17] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][18] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_14),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][18] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][19] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_14),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][19] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][1] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_12),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][1] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][20] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_14),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][20] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][21] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_14),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][21] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][22] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_14),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][22] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][23] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_14),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][23] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][24] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_15),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][24] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][25] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_15),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][25] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][26] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_15),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][26] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][27] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_15),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][27] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][28] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_15),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][28] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][29] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_15),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][29] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][2] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_12),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][2] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][30] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_15),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][30] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][31] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_15),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][31] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][3] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_12),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][3] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][4] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_12),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][4] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][5] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_12),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][5] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][6] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_12),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][6] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][7] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_12),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][7] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][8] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_13),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][8] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,0][9] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_13),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_0][9] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][0] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_16),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][0] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][10] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_17),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][10] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][11] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_17),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][11] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][12] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_17),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][12] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][13] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_17),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][13] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][14] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_17),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][14] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][15] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_17),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][15] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][16] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_18),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][16] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][17] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_18),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][17] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][18] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_18),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][18] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][19] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_18),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][19] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][1] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_16),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][1] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][20] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_18),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][20] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][21] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_18),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][21] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][22] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_18),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][22] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][23] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_18),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][23] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][24] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_19),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][24] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][25] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_19),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][25] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][26] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_19),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][26] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][27] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_19),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][27] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][28] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_19),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][28] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][29] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_19),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][29] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][2] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_16),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][2] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][30] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_19),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][30] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][31] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_19),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][31] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][3] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_16),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][3] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][4] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_16),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][4] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][5] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_16),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][5] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][6] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_16),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][6] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][7] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_16),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][7] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][8] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_17),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][8] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,1][9] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_17),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_1][9] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][0] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_20),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][0] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][10] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_21),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][10] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][11] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_21),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][11] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][12] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_21),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][12] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][13] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_21),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][13] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][14] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_21),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][14] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][15] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_21),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][15] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][16] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_22),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][16] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][17] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_22),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][17] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][18] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_22),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][18] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][19] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_22),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][19] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][1] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_20),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][1] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][20] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_22),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][20] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][21] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_22),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][21] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][22] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_22),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][22] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][23] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_22),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][23] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][24] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_23),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][24] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][25] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_23),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][25] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][26] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_23),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][26] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][27] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_23),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][27] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][28] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_23),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][28] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][29] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_23),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][29] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][2] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_20),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][2] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][30] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_23),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][30] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][31] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_23),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][31] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][3] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_20),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][3] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][4] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_20),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][4] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][5] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_20),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][5] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][6] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_20),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][6] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][7] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_20),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][7] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][8] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_21),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][8] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,2][9] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_21),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_2][9] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][0] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_24),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][0] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][10] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_25),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][10] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][11] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_25),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][11] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][12] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_25),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][12] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][13] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_25),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][13] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][14] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_25),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][14] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][15] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_25),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][15] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][16] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_26),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][16] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][17] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_26),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][17] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][18] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_26),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][18] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][19] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_26),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][19] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][1] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_24),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][1] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][20] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_26),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][20] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][21] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_26),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][21] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][22] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_26),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][22] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][23] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_26),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][23] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][24] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_27),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][24] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][25] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_27),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][25] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][26] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_27),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][26] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][27] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_27),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][27] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][28] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_27),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][28] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][29] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_27),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][29] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][2] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_24),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][2] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][30] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_27),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][30] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][31] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_27),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][31] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][3] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_24),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][3] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][4] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_24),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][4] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][5] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_24),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][5] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][6] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_24),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][6] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][7] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_24),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][7] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][8] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_25),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][8] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[0,3][9] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_25),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[0,_n_0_3][9] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][0] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_28),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][0] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][10] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_29),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][10] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][11] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_29),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][11] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][12] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_29),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][12] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][13] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_29),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][13] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][14] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_29),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][14] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][15] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_29),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][15] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][16] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_30),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][16] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][17] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_30),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][17] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][18] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_30),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][18] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][19] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_30),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][19] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][1] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_28),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][1] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][20] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_30),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][20] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][21] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_30),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][21] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][22] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_30),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][22] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][23] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_30),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][23] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][24] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_31),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][24] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][25] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_31),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][25] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][26] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_31),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][26] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][27] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_31),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][27] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][28] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_31),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][28] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][29] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_31),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][29] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][2] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_28),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][2] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][30] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_31),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][30] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][31] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_31),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][31] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][3] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_28),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][3] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][4] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_28),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][4] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][5] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_28),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][5] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][6] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_28),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][6] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][7] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_28),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][7] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][8] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_29),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][8] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,0][9] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_29),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_0][9] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][0] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_32),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][0] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][10] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_33),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][10] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][11] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_33),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][11] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][12] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_33),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][12] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][13] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_33),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][13] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][14] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_33),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][14] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][15] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_33),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][15] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][16] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_34),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][16] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][17] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_34),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][17] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][18] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_34),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][18] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][19] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_34),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][19] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][1] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_32),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][1] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][20] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_34),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][20] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][21] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_34),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][21] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][22] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_34),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][22] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][23] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_34),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][23] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][24] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_35),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][24] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][25] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_35),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][25] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][26] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_35),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][26] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][27] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_35),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][27] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][28] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_35),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][28] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][29] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_35),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][29] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][2] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_32),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][2] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][30] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_35),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][30] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][31] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_35),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][31] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][3] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_32),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][3] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][4] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_32),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][4] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][5] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_32),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][5] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][6] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_32),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][6] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][7] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_32),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][7] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][8] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_33),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][8] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,1][9] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_33),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_1][9] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][0] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_36),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][0] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][10] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_37),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][10] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][11] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_37),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][11] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][12] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_37),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][12] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][13] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_37),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][13] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][14] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_37),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][14] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][15] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_37),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][15] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][16] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_38),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][16] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][17] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_38),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][17] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][18] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_38),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][18] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][19] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_38),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][19] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][1] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_36),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][1] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][20] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_38),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][20] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][21] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_38),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][21] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][22] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_38),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][22] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][23] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_38),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][23] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][24] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_39),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][24] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][25] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_39),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][25] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][26] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_39),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][26] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][27] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_39),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][27] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][28] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_39),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][28] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][29] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_39),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][29] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][2] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_36),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][2] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][30] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_39),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][30] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][31] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_39),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][31] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][3] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_36),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][3] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][4] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_36),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][4] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][5] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_36),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][5] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][6] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_36),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][6] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][7] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_36),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][7] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][8] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_37),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][8] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,2][9] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_37),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_2][9] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][0] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_40),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][0] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][10] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_41),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][10] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][11] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_41),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][11] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][12] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_41),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][12] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][13] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_41),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][13] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][14] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_41),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][14] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][15] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_41),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][15] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][16] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_42),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][16] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][17] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_42),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][17] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][18] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_42),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][18] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][19] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_42),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][19] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][1] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_40),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][1] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][20] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_42),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][20] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][21] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_42),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][21] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][22] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_42),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][22] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][23] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_42),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][23] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][24] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_43),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][24] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][25] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_43),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][25] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][26] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_43),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][26] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][27] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_43),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][27] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][28] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_43),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][28] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][29] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_43),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][29] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][2] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_40),
        .D(dout[2]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][2] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][30] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_43),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][30] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][31] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_43),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][31] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][3] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_40),
        .D(dout[3]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][3] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][4] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_40),
        .D(dout[4]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][4] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][5] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_40),
        .D(dout[5]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][5] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][6] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_40),
        .D(dout[6]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][6] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][7] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_40),
        .D(dout[7]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][7] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][8] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_41),
        .D(dout[0]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][8] ),
        .R(1'b0));
  FDRE \ping_pong_buf_reg_reg[1,3][9] 
       (.C(axi_aclk),
        .CE(payload_collector_inst_n_41),
        .D(dout[1]),
        .Q(\ping_pong_buf_reg_reg[1,_n_0_3][9] ),
        .R(1'b0));
  design_1_eth_rx_0_2_dma_status_manager status_manager_inst
       (.E(chunk_byte_count_next),
        .\FSM_sequential_dma_state_reg_reg[0]_0 (axi_writer_inst_n_38),
        .\FSM_sequential_dma_state_reg_reg[1]_0 (status_manager_inst_n_12),
        .M_AXI_WREADY(M_AXI_WREADY),
        .O(status_manager_inst_n_44),
        .Q({Q[1],wr_addr_ready}),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BRESP(S_AXI_BRESP),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RRESP(S_AXI_RRESP),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WVALID(S_AXI_WVALID),
        .arready_reg_reg_0(arready_reg_reg),
        .awready_reg_reg_0(awready_reg_reg),
        .axi_aclk(axi_aclk),
        .axi_aresetn(axi_aresetn),
        .axi_aresetn_0(axi_aresetn_0),
        .buf_id_next(buf_id_next),
        .bvalid_reg_reg_0(bvalid_reg_reg),
        .dma_state_reg(dma_state_reg),
        .read_state_reg_reg_0(read_state_reg_reg),
        .\rx_payload_region_base_addr_reg_reg[14]_0 ({status_manager_inst_n_24,status_manager_inst_n_25,status_manager_inst_n_26,status_manager_inst_n_27}),
        .\rx_payload_region_base_addr_reg_reg[18]_0 ({status_manager_inst_n_28,status_manager_inst_n_29,status_manager_inst_n_30,status_manager_inst_n_31}),
        .\rx_payload_region_base_addr_reg_reg[22]_0 ({status_manager_inst_n_32,status_manager_inst_n_33,status_manager_inst_n_34,status_manager_inst_n_35}),
        .\rx_payload_region_base_addr_reg_reg[26]_0 ({status_manager_inst_n_36,status_manager_inst_n_37,status_manager_inst_n_38,status_manager_inst_n_39}),
        .\rx_payload_region_base_addr_reg_reg[30]_0 ({status_manager_inst_n_40,status_manager_inst_n_41,status_manager_inst_n_42,status_manager_inst_n_43}),
        .\rx_payload_region_base_addr_reg_reg[6]_0 (rx_payload_region_base_addr_reg),
        .\rx_payload_region_base_addr_reg_reg[9]_0 ({status_manager_inst_n_13,status_manager_inst_n_14,status_manager_inst_n_15,status_manager_inst_n_16}),
        .wr_base_addr_reg(wr_base_addr_reg),
        .wready_reg_reg_0(wready_reg_reg));
endmodule

(* ORIG_REF_NAME = "rmii_mac_rx" *) 
module design_1_eth_rx_0_2_rmii_mac_rx
   (Q,
    wr_en,
    axi_aresetn,
    i_ref_clk,
    i_crs_dv,
    full,
    i_rxd,
    wr_rst_busy);
  output [9:0]Q;
  output wr_en;
  input axi_aresetn;
  input i_ref_clk;
  input i_crs_dv;
  input full;
  input [1:0]i_rxd;
  input wr_rst_busy;

  wire \FSM_sequential_rx_state_q[0]_i_1_n_0 ;
  wire \FSM_sequential_rx_state_q[1]_i_1_n_0 ;
  wire \FSM_sequential_rx_state_q[1]_i_3_n_0 ;
  wire \FSM_sequential_rx_state_q[1]_i_4_n_0 ;
  wire \FSM_sequential_rx_state_q[2]_i_10_n_0 ;
  wire \FSM_sequential_rx_state_q[2]_i_11_n_0 ;
  wire \FSM_sequential_rx_state_q[2]_i_12_n_0 ;
  wire \FSM_sequential_rx_state_q[2]_i_13_n_0 ;
  wire \FSM_sequential_rx_state_q[2]_i_14_n_0 ;
  wire \FSM_sequential_rx_state_q[2]_i_15_n_0 ;
  wire \FSM_sequential_rx_state_q[2]_i_16_n_0 ;
  wire \FSM_sequential_rx_state_q[2]_i_17_n_0 ;
  wire \FSM_sequential_rx_state_q[2]_i_1_n_0 ;
  wire \FSM_sequential_rx_state_q[2]_i_2_n_0 ;
  wire \FSM_sequential_rx_state_q[2]_i_4_n_0 ;
  wire \FSM_sequential_rx_state_q[2]_i_5_n_0 ;
  wire \FSM_sequential_rx_state_q[2]_i_6_n_0 ;
  wire \FSM_sequential_rx_state_q[2]_i_7_n_0 ;
  wire \FSM_sequential_rx_state_q[2]_i_8_n_0 ;
  wire \FSM_sequential_rx_state_q[2]_i_9_n_0 ;
  wire [9:0]Q;
  wire axi_aresetn;
  wire [31:0]crc_d;
  wire [31:0]crc_q;
  wire \crc_q[13]_i_2_n_0 ;
  wire \crc_q[14]_i_3_n_0 ;
  wire \crc_q[14]_i_4_n_0 ;
  wire \crc_q[15]_i_2_n_0 ;
  wire \crc_q[16]_i_2_n_0 ;
  wire \crc_q[16]_i_3_n_0 ;
  wire \crc_q[17]_i_3_n_0 ;
  wire \crc_q[18]_i_2_n_0 ;
  wire \crc_q[18]_i_3_n_0 ;
  wire \crc_q[18]_i_4_n_0 ;
  wire \crc_q[18]_i_5_n_0 ;
  wire \crc_q[19]_i_2_n_0 ;
  wire \crc_q[1]_i_2_n_0 ;
  wire \crc_q[1]_i_3_n_0 ;
  wire \crc_q[20]_i_2_n_0 ;
  wire \crc_q[22]_i_2_n_0 ;
  wire \crc_q[22]_i_3_n_0 ;
  wire \crc_q[23]_i_2_n_0 ;
  wire \crc_q[23]_i_3_n_0 ;
  wire \crc_q[23]_i_5_n_0 ;
  wire \crc_q[24]_i_2_n_0 ;
  wire \crc_q[24]_i_4_n_0 ;
  wire \crc_q[24]_i_5_n_0 ;
  wire \crc_q[25]_i_2_n_0 ;
  wire \crc_q[25]_i_3_n_0 ;
  wire \crc_q[26]_i_2_n_0 ;
  wire \crc_q[26]_i_3_n_0 ;
  wire \crc_q[26]_i_4_n_0 ;
  wire \crc_q[26]_i_5_n_0 ;
  wire \crc_q[27]_i_2_n_0 ;
  wire \crc_q[27]_i_4_n_0 ;
  wire \crc_q[28]_i_2_n_0 ;
  wire \crc_q[28]_i_3_n_0 ;
  wire \crc_q[28]_i_4_n_0 ;
  wire \crc_q[29]_i_2_n_0 ;
  wire \crc_q[29]_i_3_n_0 ;
  wire \crc_q[2]_i_2_n_0 ;
  wire \crc_q[30]_i_2_n_0 ;
  wire \crc_q[31]_i_1_n_0 ;
  wire \crc_q[31]_i_3_n_0 ;
  wire \crc_q[31]_i_4_n_0 ;
  wire \crc_q[31]_i_5_n_0 ;
  wire \crc_q[31]_i_6_n_0 ;
  wire \crc_q[31]_i_7_n_0 ;
  wire \crc_q[3]_i_2_n_0 ;
  wire \crc_q[3]_i_3_n_0 ;
  wire \crc_q[4]_i_2_n_0 ;
  wire \crc_q[6]_i_2_n_0 ;
  wire \crc_q[7]_i_2_n_0 ;
  wire \crc_q[8]_i_2_n_0 ;
  wire \crc_q[9]_i_2_n_0 ;
  wire crs_dv_q;
  wire [5:0]data;
  wire [2:1]delay_buf_ctr_d;
  wire [2:0]delay_buf_ctr_q;
  wire \delay_buf_ctr_q[0]_i_1_n_0 ;
  wire \delay_buf_ctr_q[0]_i_2_n_0 ;
  wire \delay_buf_ctr_q[0]_i_3_n_0 ;
  wire \delay_buf_ctr_q[1]_i_1_n_0 ;
  wire \delay_buf_ctr_q[2]_i_1_n_0 ;
  wire \delay_buf_ctr_q[2]_i_3_n_0 ;
  wire \delay_buf_ctr_q[2]_i_4_n_0 ;
  wire \delay_buf_ctr_q[2]_i_5_n_0 ;
  wire \delay_buf_ctr_q[2]_i_6_n_0 ;
  wire [0:0]\delay_buf_d[0]_4 ;
  wire [7:0]\delay_buf_q_reg[0]_3 ;
  wire [7:0]\delay_buf_q_reg[1]_2 ;
  wire [7:0]\delay_buf_q_reg[2]_1 ;
  wire [7:0]\delay_buf_q_reg[3]_0 ;
  wire frame_ready_d;
  wire frame_ready_q;
  wire frame_ready_q_i_1_n_0;
  wire frame_ready_q_i_3_n_0;
  wire full;
  wire i_crs_dv;
  wire i_ref_clk;
  wire i_rst_n1;
  wire i_rst_n2;
  wire [1:0]i_rxd;
  wire [21:5]in23;
  wire [29:5]in24;
  wire mac_rx_valid;
  wire [6:0]p_0_in;
  wire [3:1]p_0_in0_out;
  wire pending_err_q;
  wire pending_err_q_i_1_n_0;
  wire pending_err_q_i_2_n_0;
  wire \rx_byte_ctr_q[0]_i_1_n_0 ;
  wire \rx_byte_ctr_q[0]_i_2_n_0 ;
  wire \rx_byte_ctr_q[0]_i_3_n_0 ;
  wire \rx_byte_ctr_q[1]_i_1_n_0 ;
  wire \rx_byte_ctr_q[1]_i_2_n_0 ;
  wire \rx_byte_ctr_q[1]_i_3_n_0 ;
  wire \rx_byte_ctr_q[2]_i_1_n_0 ;
  wire \rx_byte_ctr_q[2]_i_2_n_0 ;
  wire \rx_byte_ctr_q[2]_i_3_n_0 ;
  wire \rx_byte_ctr_q[2]_i_4_n_0 ;
  wire \rx_byte_ctr_q[2]_i_5_n_0 ;
  wire \rx_byte_ctr_q[2]_i_6_n_0 ;
  wire \rx_byte_ctr_q_reg_n_0_[0] ;
  wire \rx_byte_ctr_q_reg_n_0_[1] ;
  wire \rx_byte_ctr_q_reg_n_0_[2] ;
  wire rx_fifo_valid_d;
  wire rx_fifo_valid_q_i_2_n_0;
  wire rx_fifo_valid_q_i_3_n_0;
  wire rx_fifo_wr_data_d1;
  wire rx_fifo_wr_data_d1_carry__0_i_1_n_0;
  wire rx_fifo_wr_data_d1_carry__0_i_2_n_0;
  wire rx_fifo_wr_data_d1_carry__0_i_3_n_0;
  wire rx_fifo_wr_data_d1_carry__0_i_4_n_0;
  wire rx_fifo_wr_data_d1_carry__0_n_0;
  wire rx_fifo_wr_data_d1_carry__0_n_1;
  wire rx_fifo_wr_data_d1_carry__0_n_2;
  wire rx_fifo_wr_data_d1_carry__0_n_3;
  wire rx_fifo_wr_data_d1_carry__1_i_1_n_0;
  wire rx_fifo_wr_data_d1_carry__1_i_2_n_0;
  wire rx_fifo_wr_data_d1_carry__1_i_3_n_0;
  wire rx_fifo_wr_data_d1_carry__1_n_2;
  wire rx_fifo_wr_data_d1_carry__1_n_3;
  wire rx_fifo_wr_data_d1_carry_i_1_n_0;
  wire rx_fifo_wr_data_d1_carry_i_2_n_0;
  wire rx_fifo_wr_data_d1_carry_i_3_n_0;
  wire rx_fifo_wr_data_d1_carry_i_4_n_0;
  wire rx_fifo_wr_data_d1_carry_n_0;
  wire rx_fifo_wr_data_d1_carry_n_1;
  wire rx_fifo_wr_data_d1_carry_n_2;
  wire rx_fifo_wr_data_d1_carry_n_3;
  wire [9:0]rx_fifo_wr_data_d1_in;
  wire \rx_fifo_wr_data_q[8]_i_2_n_0 ;
  wire \rx_fifo_wr_data_q[8]_i_3_n_0 ;
  wire \rx_fifo_wr_data_q[9]_i_2_n_0 ;
  wire [1:0]rx_shift_ctr_q;
  wire \rx_shift_ctr_q[0]_i_1_n_0 ;
  wire \rx_shift_ctr_q[1]_i_1_n_0 ;
  wire [2:0]rx_state_d;
  wire [2:0]rx_state_q;
  wire wr_en;
  wire wr_rst_busy;
  wire [3:0]NLW_rx_fifo_wr_data_d1_carry_O_UNCONNECTED;
  wire [3:0]NLW_rx_fifo_wr_data_d1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_rx_fifo_wr_data_d1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_rx_fifo_wr_data_d1_carry__1_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \FSM_sequential_rx_state_q[0]_i_1 
       (.I0(rx_state_d[0]),
        .I1(\FSM_sequential_rx_state_q[2]_i_4_n_0 ),
        .I2(\FSM_sequential_rx_state_q[2]_i_5_n_0 ),
        .I3(\FSM_sequential_rx_state_q[2]_i_6_n_0 ),
        .I4(\FSM_sequential_rx_state_q[2]_i_7_n_0 ),
        .I5(rx_state_q[0]),
        .O(\FSM_sequential_rx_state_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h0203)) 
    \FSM_sequential_rx_state_q[0]_i_2 
       (.I0(i_crs_dv),
        .I1(rx_state_q[2]),
        .I2(rx_state_q[0]),
        .I3(rx_state_q[1]),
        .O(rx_state_d[0]));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \FSM_sequential_rx_state_q[1]_i_1 
       (.I0(rx_state_d[1]),
        .I1(\FSM_sequential_rx_state_q[2]_i_4_n_0 ),
        .I2(\FSM_sequential_rx_state_q[2]_i_5_n_0 ),
        .I3(\FSM_sequential_rx_state_q[2]_i_6_n_0 ),
        .I4(\FSM_sequential_rx_state_q[2]_i_7_n_0 ),
        .I5(rx_state_q[1]),
        .O(\FSM_sequential_rx_state_q[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \FSM_sequential_rx_state_q[1]_i_2 
       (.I0(\FSM_sequential_rx_state_q[1]_i_3_n_0 ),
        .I1(\FSM_sequential_rx_state_q[2]_i_11_n_0 ),
        .I2(\FSM_sequential_rx_state_q[2]_i_12_n_0 ),
        .I3(\FSM_sequential_rx_state_q[2]_i_13_n_0 ),
        .I4(\FSM_sequential_rx_state_q[1]_i_4_n_0 ),
        .O(rx_state_d[1]));
  LUT4 #(
    .INIT(16'h0400)) 
    \FSM_sequential_rx_state_q[1]_i_3 
       (.I0(rx_state_q[0]),
        .I1(i_crs_dv),
        .I2(rx_state_q[2]),
        .I3(rx_state_q[1]),
        .O(\FSM_sequential_rx_state_q[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \FSM_sequential_rx_state_q[1]_i_4 
       (.I0(rx_state_q[0]),
        .I1(i_crs_dv),
        .I2(rx_state_q[1]),
        .I3(rx_state_q[2]),
        .I4(data[3]),
        .O(\FSM_sequential_rx_state_q[1]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_rx_state_q[2]_i_1 
       (.I0(i_rst_n2),
        .O(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \FSM_sequential_rx_state_q[2]_i_10 
       (.I0(rx_state_q[1]),
        .I1(rx_shift_ctr_q[0]),
        .I2(rx_shift_ctr_q[1]),
        .I3(rx_state_q[2]),
        .I4(rx_state_q[0]),
        .O(\FSM_sequential_rx_state_q[2]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFAF66FF6)) 
    \FSM_sequential_rx_state_q[2]_i_11 
       (.I0(data[0]),
        .I1(\rx_byte_ctr_q_reg_n_0_[0] ),
        .I2(data[1]),
        .I3(\rx_byte_ctr_q_reg_n_0_[1] ),
        .I4(\rx_byte_ctr_q_reg_n_0_[2] ),
        .O(\FSM_sequential_rx_state_q[2]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFAF66FF6)) 
    \FSM_sequential_rx_state_q[2]_i_12 
       (.I0(data[4]),
        .I1(\rx_byte_ctr_q_reg_n_0_[0] ),
        .I2(data[5]),
        .I3(\rx_byte_ctr_q_reg_n_0_[1] ),
        .I4(\rx_byte_ctr_q_reg_n_0_[2] ),
        .O(\FSM_sequential_rx_state_q[2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hFEFEBFFE)) 
    \FSM_sequential_rx_state_q[2]_i_13 
       (.I0(i_rxd[1]),
        .I1(data[2]),
        .I2(i_rxd[0]),
        .I3(\rx_byte_ctr_q_reg_n_0_[2] ),
        .I4(\rx_byte_ctr_q_reg_n_0_[1] ),
        .O(\FSM_sequential_rx_state_q[2]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    \FSM_sequential_rx_state_q[2]_i_14 
       (.I0(\rx_byte_ctr_q_reg_n_0_[1] ),
        .I1(\rx_byte_ctr_q_reg_n_0_[0] ),
        .I2(\rx_byte_ctr_q_reg_n_0_[2] ),
        .I3(data[3]),
        .O(\FSM_sequential_rx_state_q[2]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hFDDF)) 
    \FSM_sequential_rx_state_q[2]_i_15 
       (.I0(\rx_byte_ctr_q_reg_n_0_[0] ),
        .I1(\rx_byte_ctr_q_reg_n_0_[1] ),
        .I2(rx_state_q[0]),
        .I3(\rx_byte_ctr_q_reg_n_0_[2] ),
        .O(\FSM_sequential_rx_state_q[2]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_rx_state_q[2]_i_16 
       (.I0(rx_shift_ctr_q[0]),
        .I1(rx_shift_ctr_q[1]),
        .O(\FSM_sequential_rx_state_q[2]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_rx_state_q[2]_i_17 
       (.I0(full),
        .I1(pending_err_q),
        .O(\FSM_sequential_rx_state_q[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \FSM_sequential_rx_state_q[2]_i_2 
       (.I0(rx_state_d[2]),
        .I1(\FSM_sequential_rx_state_q[2]_i_4_n_0 ),
        .I2(\FSM_sequential_rx_state_q[2]_i_5_n_0 ),
        .I3(\FSM_sequential_rx_state_q[2]_i_6_n_0 ),
        .I4(\FSM_sequential_rx_state_q[2]_i_7_n_0 ),
        .I5(rx_state_q[2]),
        .O(\FSM_sequential_rx_state_q[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \FSM_sequential_rx_state_q[2]_i_3 
       (.I0(i_crs_dv),
        .I1(rx_state_q[1]),
        .I2(rx_state_q[2]),
        .I3(rx_state_q[0]),
        .O(rx_state_d[2]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \FSM_sequential_rx_state_q[2]_i_4 
       (.I0(rx_state_q[1]),
        .I1(\delay_buf_ctr_q[2]_i_5_n_0 ),
        .I2(data[3]),
        .I3(rx_state_q[2]),
        .I4(\FSM_sequential_rx_state_q[2]_i_8_n_0 ),
        .I5(\FSM_sequential_rx_state_q[2]_i_9_n_0 ),
        .O(\FSM_sequential_rx_state_q[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \FSM_sequential_rx_state_q[2]_i_5 
       (.I0(\FSM_sequential_rx_state_q[2]_i_10_n_0 ),
        .I1(\FSM_sequential_rx_state_q[2]_i_11_n_0 ),
        .I2(\FSM_sequential_rx_state_q[2]_i_12_n_0 ),
        .I3(\FSM_sequential_rx_state_q[2]_i_13_n_0 ),
        .I4(\FSM_sequential_rx_state_q[2]_i_14_n_0 ),
        .O(\FSM_sequential_rx_state_q[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000F000000440044)) 
    \FSM_sequential_rx_state_q[2]_i_6 
       (.I0(\FSM_sequential_rx_state_q[2]_i_15_n_0 ),
        .I1(rx_state_q[1]),
        .I2(\delay_buf_ctr_q[0]_i_2_n_0 ),
        .I3(\FSM_sequential_rx_state_q[2]_i_16_n_0 ),
        .I4(\FSM_sequential_rx_state_q[2]_i_17_n_0 ),
        .I5(rx_state_q[2]),
        .O(\FSM_sequential_rx_state_q[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \FSM_sequential_rx_state_q[2]_i_7 
       (.I0(rx_state_q[2]),
        .I1(rx_state_q[0]),
        .I2(rx_state_q[1]),
        .I3(i_crs_dv),
        .O(\FSM_sequential_rx_state_q[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \FSM_sequential_rx_state_q[2]_i_8 
       (.I0(data[1]),
        .I1(data[2]),
        .I2(data[0]),
        .I3(frame_ready_q),
        .O(\FSM_sequential_rx_state_q[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \FSM_sequential_rx_state_q[2]_i_9 
       (.I0(i_rxd[1]),
        .I1(i_rxd[0]),
        .I2(data[5]),
        .I3(data[4]),
        .O(\FSM_sequential_rx_state_q[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "s_dest_addr:001,s_src_addr:010,s_type:011,s_preamble:000,s_data:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_q_reg[0] 
       (.C(i_ref_clk),
        .CE(1'b1),
        .D(\FSM_sequential_rx_state_q[0]_i_1_n_0 ),
        .Q(rx_state_q[0]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_dest_addr:001,s_src_addr:010,s_type:011,s_preamble:000,s_data:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_q_reg[1] 
       (.C(i_ref_clk),
        .CE(1'b1),
        .D(\FSM_sequential_rx_state_q[1]_i_1_n_0 ),
        .Q(rx_state_q[1]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_dest_addr:001,s_src_addr:010,s_type:011,s_preamble:000,s_data:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_q_reg[2] 
       (.C(i_ref_clk),
        .CE(1'b1),
        .D(\FSM_sequential_rx_state_q[2]_i_2_n_0 ),
        .Q(rx_state_q[2]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFBBFEEEBEAABEAA)) 
    \crc_q[0]_i_1 
       (.I0(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I1(crc_q[8]),
        .I2(p_0_in0_out[2]),
        .I3(\crc_q[29]_i_2_n_0 ),
        .I4(p_0_in[2]),
        .I5(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .O(crc_d[0]));
  LUT6 #(
    .INIT(64'hBFBBFEEEBEAABEAA)) 
    \crc_q[10]_i_1 
       (.I0(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I1(crc_q[18]),
        .I2(p_0_in0_out[2]),
        .I3(\crc_q[29]_i_2_n_0 ),
        .I4(p_0_in[2]),
        .I5(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .O(crc_d[10]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_q[10]_i_2 
       (.I0(data[2]),
        .I1(crc_q[2]),
        .O(p_0_in0_out[2]));
  LUT6 #(
    .INIT(64'hF4FFFFF8F4F4F8F8)) 
    \crc_q[11]_i_1 
       (.I0(p_0_in0_out[3]),
        .I1(\crc_q[29]_i_2_n_0 ),
        .I2(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I3(p_0_in[3]),
        .I4(crc_q[19]),
        .I5(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .O(crc_d[11]));
  LUT6 #(
    .INIT(64'hF4FFFFF8F4F8F4F8)) 
    \crc_q[12]_i_1 
       (.I0(\crc_q[28]_i_4_n_0 ),
        .I1(\crc_q[29]_i_2_n_0 ),
        .I2(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I3(crc_q[20]),
        .I4(\crc_q[26]_i_3_n_0 ),
        .I5(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .O(crc_d[12]));
  LUT6 #(
    .INIT(64'hFFF2F8F2F8FFF8F2)) 
    \crc_q[13]_i_1 
       (.I0(\crc_q[29]_i_2_n_0 ),
        .I1(\crc_q[13]_i_2_n_0 ),
        .I2(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I3(crc_q[21]),
        .I4(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .I5(\crc_q[25]_i_2_n_0 ),
        .O(crc_d[13]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \crc_q[13]_i_2 
       (.I0(data[5]),
        .I1(crc_q[5]),
        .I2(data[1]),
        .I3(crc_q[1]),
        .I4(crc_q[0]),
        .I5(data[0]),
        .O(\crc_q[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF2882)) 
    \crc_q[14]_i_1 
       (.I0(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .I1(p_0_in[1]),
        .I2(crc_q[22]),
        .I3(\crc_q[14]_i_3_n_0 ),
        .I4(\crc_q[14]_i_4_n_0 ),
        .I5(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .O(crc_d[14]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_q[14]_i_2 
       (.I0(\delay_buf_q_reg[0]_3 [1]),
        .I1(crc_q[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \crc_q[14]_i_3 
       (.I0(crc_q[2]),
        .I1(\delay_buf_q_reg[0]_3 [2]),
        .I2(crc_q[6]),
        .I3(\delay_buf_q_reg[0]_3 [6]),
        .O(\crc_q[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h82282882)) 
    \crc_q[14]_i_4 
       (.I0(\crc_q[29]_i_2_n_0 ),
        .I1(data[1]),
        .I2(crc_q[1]),
        .I3(crc_q[22]),
        .I4(\crc_q[18]_i_3_n_0 ),
        .O(\crc_q[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEEAAEEAAEEA)) 
    \crc_q[15]_i_1 
       (.I0(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I1(\crc_q[29]_i_2_n_0 ),
        .I2(\crc_q[15]_i_2_n_0 ),
        .I3(\crc_q[31]_i_7_n_0 ),
        .I4(in24[15]),
        .I5(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .O(crc_d[15]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[15]_i_2 
       (.I0(data[2]),
        .I1(crc_q[2]),
        .I2(crc_q[23]),
        .I3(p_0_in0_out[3]),
        .I4(data[1]),
        .I5(crc_q[1]),
        .O(\crc_q[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[15]_i_3 
       (.I0(\crc_q[31]_i_6_n_0 ),
        .I1(crc_q[1]),
        .I2(\delay_buf_q_reg[0]_3 [1]),
        .I3(p_0_in[3]),
        .I4(crc_q[23]),
        .I5(p_0_in[2]),
        .O(in24[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFFBEAAEBAA)) 
    \crc_q[16]_i_1 
       (.I0(\crc_q[16]_i_2_n_0 ),
        .I1(\crc_q[28]_i_4_n_0 ),
        .I2(crc_q[24]),
        .I3(\crc_q[29]_i_2_n_0 ),
        .I4(\crc_q[16]_i_3_n_0 ),
        .I5(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .O(crc_d[16]));
  LUT6 #(
    .INIT(64'h9060609060909060)) 
    \crc_q[16]_i_2 
       (.I0(\crc_q[26]_i_3_n_0 ),
        .I1(crc_q[24]),
        .I2(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .I3(p_0_in[3]),
        .I4(\delay_buf_q_reg[0]_3 [2]),
        .I5(crc_q[2]),
        .O(\crc_q[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \crc_q[16]_i_3 
       (.I0(crc_q[2]),
        .I1(data[2]),
        .I2(crc_q[3]),
        .I3(data[3]),
        .O(\crc_q[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8448)) 
    \crc_q[17]_i_1 
       (.I0(\crc_q[24]_i_4_n_0 ),
        .I1(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .I2(p_0_in[3]),
        .I3(crc_q[25]),
        .I4(\crc_q[17]_i_3_n_0 ),
        .I5(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .O(crc_d[17]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_q[17]_i_2 
       (.I0(\delay_buf_q_reg[0]_3 [3]),
        .I1(crc_q[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h6090906090606090)) 
    \crc_q[17]_i_3 
       (.I0(\crc_q[28]_i_4_n_0 ),
        .I1(\crc_q[24]_i_5_n_0 ),
        .I2(\crc_q[29]_i_2_n_0 ),
        .I3(data[3]),
        .I4(crc_q[3]),
        .I5(crc_q[25]),
        .O(\crc_q[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBEEBAAAA)) 
    \crc_q[18]_i_1 
       (.I0(\crc_q[18]_i_2_n_0 ),
        .I1(\crc_q[18]_i_3_n_0 ),
        .I2(crc_q[26]),
        .I3(\crc_q[18]_i_4_n_0 ),
        .I4(\crc_q[29]_i_2_n_0 ),
        .I5(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .O(crc_d[18]));
  LUT5 #(
    .INIT(32'h69960000)) 
    \crc_q[18]_i_2 
       (.I0(\crc_q[14]_i_3_n_0 ),
        .I1(crc_q[26]),
        .I2(\crc_q[18]_i_5_n_0 ),
        .I3(\crc_q[26]_i_3_n_0 ),
        .I4(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .O(\crc_q[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \crc_q[18]_i_3 
       (.I0(crc_q[2]),
        .I1(data[2]),
        .I2(crc_q[6]),
        .I3(i_rxd[0]),
        .O(\crc_q[18]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_q[18]_i_4 
       (.I0(\crc_q[28]_i_4_n_0 ),
        .I1(data[5]),
        .I2(crc_q[5]),
        .I3(data[1]),
        .I4(crc_q[1]),
        .O(\crc_q[18]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \crc_q[18]_i_5 
       (.I0(crc_q[1]),
        .I1(\delay_buf_q_reg[0]_3 [1]),
        .I2(crc_q[5]),
        .I3(\delay_buf_q_reg[0]_3 [5]),
        .O(\crc_q[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEEAEAAE)) 
    \crc_q[19]_i_1 
       (.I0(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I1(\crc_q[29]_i_2_n_0 ),
        .I2(\crc_q[22]_i_2_n_0 ),
        .I3(crc_q[27]),
        .I4(\crc_q[31]_i_7_n_0 ),
        .I5(\crc_q[19]_i_2_n_0 ),
        .O(crc_d[19]));
  LUT6 #(
    .INIT(64'h2882822882282882)) 
    \crc_q[19]_i_2 
       (.I0(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .I1(\delay_buf_q_reg[0]_3 [5]),
        .I2(crc_q[5]),
        .I3(\crc_q[26]_i_4_n_0 ),
        .I4(crc_q[27]),
        .I5(\crc_q[31]_i_6_n_0 ),
        .O(\crc_q[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFFFF8F4F8F4F8)) 
    \crc_q[1]_i_1 
       (.I0(\crc_q[1]_i_2_n_0 ),
        .I1(\crc_q[29]_i_2_n_0 ),
        .I2(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I3(crc_q[9]),
        .I4(\crc_q[1]_i_3_n_0 ),
        .I5(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .O(crc_d[1]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[1]_i_2 
       (.I0(crc_q[0]),
        .I1(data[0]),
        .I2(crc_q[3]),
        .I3(data[3]),
        .O(\crc_q[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[1]_i_3 
       (.I0(crc_q[0]),
        .I1(\delay_buf_q_reg[0]_3 [0]),
        .I2(crc_q[3]),
        .I3(\delay_buf_q_reg[0]_3 [3]),
        .O(\crc_q[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEEAEAAE)) 
    \crc_q[20]_i_1 
       (.I0(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I1(\crc_q[29]_i_2_n_0 ),
        .I2(\crc_q[23]_i_2_n_0 ),
        .I3(crc_q[28]),
        .I4(\crc_q[31]_i_7_n_0 ),
        .I5(\crc_q[20]_i_2_n_0 ),
        .O(crc_d[20]));
  LUT6 #(
    .INIT(64'h2882822882282882)) 
    \crc_q[20]_i_2 
       (.I0(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .I1(\crc_q[23]_i_5_n_0 ),
        .I2(p_0_in[4]),
        .I3(p_0_in[6]),
        .I4(crc_q[28]),
        .I5(\crc_q[31]_i_6_n_0 ),
        .O(\crc_q[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEEAAEEAAEEFAAA)) 
    \crc_q[21]_i_1 
       (.I0(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I1(in23[21]),
        .I2(in24[21]),
        .I3(rx_state_q[2]),
        .I4(rx_state_q[1]),
        .I5(rx_state_q[0]),
        .O(crc_d[21]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \crc_q[21]_i_2 
       (.I0(\crc_q[31]_i_7_n_0 ),
        .I1(\crc_q[3]_i_2_n_0 ),
        .I2(crc_q[29]),
        .I3(crc_q[4]),
        .I4(data[4]),
        .O(in23[21]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \crc_q[21]_i_3 
       (.I0(\crc_q[31]_i_6_n_0 ),
        .I1(\crc_q[3]_i_3_n_0 ),
        .I2(crc_q[29]),
        .I3(crc_q[4]),
        .I4(\delay_buf_q_reg[0]_3 [4]),
        .O(in24[21]));
  LUT6 #(
    .INIT(64'hFFF2F8F2F8FFF8F2)) 
    \crc_q[22]_i_1 
       (.I0(\crc_q[29]_i_2_n_0 ),
        .I1(\crc_q[22]_i_2_n_0 ),
        .I2(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I3(crc_q[30]),
        .I4(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .I5(\crc_q[22]_i_3_n_0 ),
        .O(crc_d[22]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_q[22]_i_2 
       (.I0(\crc_q[26]_i_5_n_0 ),
        .I1(crc_q[5]),
        .I2(data[5]),
        .O(\crc_q[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \crc_q[22]_i_3 
       (.I0(\crc_q[26]_i_4_n_0 ),
        .I1(crc_q[5]),
        .I2(\delay_buf_q_reg[0]_3 [5]),
        .O(\crc_q[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEEAEAAE)) 
    \crc_q[23]_i_1 
       (.I0(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I1(\crc_q[29]_i_2_n_0 ),
        .I2(\crc_q[23]_i_2_n_0 ),
        .I3(crc_q[31]),
        .I4(\crc_q[31]_i_7_n_0 ),
        .I5(\crc_q[23]_i_3_n_0 ),
        .O(crc_d[23]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \crc_q[23]_i_2 
       (.I0(i_rxd[0]),
        .I1(crc_q[6]),
        .I2(data[4]),
        .I3(crc_q[4]),
        .I4(p_0_in0_out[3]),
        .I5(p_0_in0_out[1]),
        .O(\crc_q[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2882822882282882)) 
    \crc_q[23]_i_3 
       (.I0(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .I1(\crc_q[23]_i_5_n_0 ),
        .I2(p_0_in[4]),
        .I3(p_0_in[6]),
        .I4(crc_q[31]),
        .I5(\crc_q[31]_i_6_n_0 ),
        .O(\crc_q[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_q[23]_i_4 
       (.I0(data[1]),
        .I1(crc_q[1]),
        .O(p_0_in0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \crc_q[23]_i_5 
       (.I0(crc_q[1]),
        .I1(\delay_buf_q_reg[0]_3 [1]),
        .I2(crc_q[3]),
        .I3(\delay_buf_q_reg[0]_3 [3]),
        .O(\crc_q[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFEEFEFFEEEEEEEEE)) 
    \crc_q[24]_i_1 
       (.I0(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I1(\crc_q[24]_i_2_n_0 ),
        .I2(\crc_q[31]_i_6_n_0 ),
        .I3(p_0_in[2]),
        .I4(\crc_q[24]_i_4_n_0 ),
        .I5(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .O(crc_d[24]));
  LUT6 #(
    .INIT(64'h2882822882282882)) 
    \crc_q[24]_i_2 
       (.I0(\crc_q[29]_i_2_n_0 ),
        .I1(\crc_q[24]_i_5_n_0 ),
        .I2(\crc_q[28]_i_4_n_0 ),
        .I3(crc_q[2]),
        .I4(data[2]),
        .I5(\crc_q[31]_i_7_n_0 ),
        .O(\crc_q[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_q[24]_i_3 
       (.I0(\delay_buf_q_reg[0]_3 [2]),
        .I1(crc_q[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \crc_q[24]_i_4 
       (.I0(\crc_q[26]_i_3_n_0 ),
        .I1(\delay_buf_q_reg[0]_3 [5]),
        .I2(crc_q[5]),
        .I3(\delay_buf_q_reg[0]_3 [1]),
        .I4(crc_q[1]),
        .O(\crc_q[24]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \crc_q[24]_i_5 
       (.I0(crc_q[1]),
        .I1(data[1]),
        .I2(crc_q[5]),
        .I3(data[5]),
        .O(\crc_q[24]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF60)) 
    \crc_q[25]_i_1 
       (.I0(\crc_q[25]_i_2_n_0 ),
        .I1(\crc_q[26]_i_4_n_0 ),
        .I2(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .I3(\crc_q[25]_i_3_n_0 ),
        .I4(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .O(crc_d[25]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \crc_q[25]_i_2 
       (.I0(\delay_buf_q_reg[0]_3 [5]),
        .I1(crc_q[5]),
        .I2(\delay_buf_q_reg[0]_3 [1]),
        .I3(crc_q[1]),
        .I4(crc_q[0]),
        .I5(\delay_buf_q_reg[0]_3 [0]),
        .O(\crc_q[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h06060600)) 
    \crc_q[25]_i_3 
       (.I0(\crc_q[13]_i_2_n_0 ),
        .I1(\crc_q[26]_i_5_n_0 ),
        .I2(rx_state_q[2]),
        .I3(rx_state_q[0]),
        .I4(rx_state_q[1]),
        .O(\crc_q[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFFEFEEFEEEEEEEE)) 
    \crc_q[26]_i_1 
       (.I0(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I1(\crc_q[26]_i_2_n_0 ),
        .I2(\crc_q[31]_i_6_n_0 ),
        .I3(\crc_q[26]_i_3_n_0 ),
        .I4(\crc_q[26]_i_4_n_0 ),
        .I5(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .O(crc_d[26]));
  LUT6 #(
    .INIT(64'h0054540054000054)) 
    \crc_q[26]_i_2 
       (.I0(rx_state_q[2]),
        .I1(rx_state_q[0]),
        .I2(rx_state_q[1]),
        .I3(\crc_q[26]_i_5_n_0 ),
        .I4(\crc_q[28]_i_4_n_0 ),
        .I5(\crc_q[31]_i_7_n_0 ),
        .O(\crc_q[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[26]_i_3 
       (.I0(crc_q[0]),
        .I1(\delay_buf_q_reg[0]_3 [0]),
        .I2(crc_q[4]),
        .I3(\delay_buf_q_reg[0]_3 [4]),
        .O(\crc_q[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \crc_q[26]_i_4 
       (.I0(\delay_buf_q_reg[0]_3 [6]),
        .I1(crc_q[6]),
        .I2(\delay_buf_q_reg[0]_3 [2]),
        .I3(crc_q[2]),
        .I4(crc_q[3]),
        .I5(\delay_buf_q_reg[0]_3 [3]),
        .O(\crc_q[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \crc_q[26]_i_5 
       (.I0(i_rxd[0]),
        .I1(crc_q[6]),
        .I2(data[2]),
        .I3(crc_q[2]),
        .I4(crc_q[3]),
        .I5(data[3]),
        .O(\crc_q[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEEAEAAE)) 
    \crc_q[27]_i_1 
       (.I0(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I1(\crc_q[29]_i_2_n_0 ),
        .I2(\crc_q[27]_i_2_n_0 ),
        .I3(p_0_in0_out[3]),
        .I4(\crc_q[31]_i_7_n_0 ),
        .I5(\crc_q[27]_i_4_n_0 ),
        .O(crc_d[27]));
  LUT4 #(
    .INIT(16'h9669)) 
    \crc_q[27]_i_2 
       (.I0(crc_q[4]),
        .I1(data[4]),
        .I2(crc_q[5]),
        .I3(data[5]),
        .O(\crc_q[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_q[27]_i_3 
       (.I0(data[3]),
        .I1(crc_q[3]),
        .O(p_0_in0_out[3]));
  LUT6 #(
    .INIT(64'h8228288228828228)) 
    \crc_q[27]_i_4 
       (.I0(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .I1(\delay_buf_q_reg[0]_3 [5]),
        .I2(crc_q[5]),
        .I3(p_0_in[4]),
        .I4(p_0_in[3]),
        .I5(\crc_q[31]_i_6_n_0 ),
        .O(\crc_q[27]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_q[27]_i_5 
       (.I0(\delay_buf_q_reg[0]_3 [4]),
        .I1(crc_q[4]),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'hFFFFEAAE)) 
    \crc_q[28]_i_1 
       (.I0(\crc_q[28]_i_2_n_0 ),
        .I1(\crc_q[29]_i_2_n_0 ),
        .I2(\crc_q[28]_i_3_n_0 ),
        .I3(\crc_q[28]_i_4_n_0 ),
        .I4(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .O(crc_d[28]));
  LUT6 #(
    .INIT(64'h8228288228828228)) 
    \crc_q[28]_i_2 
       (.I0(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .I1(\delay_buf_q_reg[0]_3 [6]),
        .I2(crc_q[6]),
        .I3(\delay_buf_q_reg[0]_3 [5]),
        .I4(crc_q[5]),
        .I5(\crc_q[26]_i_3_n_0 ),
        .O(\crc_q[28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \crc_q[28]_i_3 
       (.I0(crc_q[5]),
        .I1(data[5]),
        .I2(crc_q[6]),
        .I3(i_rxd[0]),
        .O(\crc_q[28]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[28]_i_4 
       (.I0(crc_q[0]),
        .I1(data[0]),
        .I2(crc_q[4]),
        .I3(data[4]),
        .O(\crc_q[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAEEAAEEAAEEA)) 
    \crc_q[29]_i_1 
       (.I0(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I1(\crc_q[29]_i_2_n_0 ),
        .I2(\crc_q[29]_i_3_n_0 ),
        .I3(\crc_q[31]_i_7_n_0 ),
        .I4(in24[29]),
        .I5(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .O(crc_d[29]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \crc_q[29]_i_2 
       (.I0(rx_state_q[1]),
        .I1(rx_state_q[0]),
        .I2(rx_state_q[2]),
        .O(\crc_q[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[29]_i_3 
       (.I0(i_rxd[0]),
        .I1(crc_q[6]),
        .I2(data[5]),
        .I3(crc_q[5]),
        .I4(crc_q[0]),
        .I5(data[0]),
        .O(\crc_q[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[29]_i_4 
       (.I0(\crc_q[31]_i_6_n_0 ),
        .I1(p_0_in[0]),
        .I2(crc_q[5]),
        .I3(\delay_buf_q_reg[0]_3 [5]),
        .I4(crc_q[6]),
        .I5(\delay_buf_q_reg[0]_3 [6]),
        .O(in24[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8228)) 
    \crc_q[2]_i_1 
       (.I0(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .I1(p_0_in[1]),
        .I2(crc_q[10]),
        .I3(\crc_q[26]_i_3_n_0 ),
        .I4(\crc_q[2]_i_2_n_0 ),
        .I5(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .O(crc_d[2]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h28828228)) 
    \crc_q[2]_i_2 
       (.I0(\crc_q[29]_i_2_n_0 ),
        .I1(data[1]),
        .I2(crc_q[1]),
        .I3(crc_q[10]),
        .I4(\crc_q[28]_i_4_n_0 ),
        .O(\crc_q[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEFEFFEEEEEEEEE)) 
    \crc_q[30]_i_1 
       (.I0(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I1(\crc_q[30]_i_2_n_0 ),
        .I2(\crc_q[31]_i_6_n_0 ),
        .I3(p_0_in[6]),
        .I4(p_0_in[0]),
        .I5(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .O(crc_d[30]));
  LUT6 #(
    .INIT(64'h8228288228828228)) 
    \crc_q[30]_i_2 
       (.I0(\crc_q[29]_i_2_n_0 ),
        .I1(crc_q[0]),
        .I2(data[0]),
        .I3(crc_q[6]),
        .I4(i_rxd[0]),
        .I5(\crc_q[31]_i_7_n_0 ),
        .O(\crc_q[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_q[30]_i_3 
       (.I0(\delay_buf_q_reg[0]_3 [6]),
        .I1(crc_q[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \crc_q[30]_i_4 
       (.I0(\delay_buf_q_reg[0]_3 [0]),
        .I1(crc_q[0]),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'hAAFFAABA)) 
    \crc_q[31]_i_1 
       (.I0(\crc_q[31]_i_3_n_0 ),
        .I1(rx_state_q[0]),
        .I2(\crc_q[31]_i_4_n_0 ),
        .I3(\delay_buf_ctr_q[2]_i_5_n_0 ),
        .I4(\crc_q[31]_i_5_n_0 ),
        .O(\crc_q[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEFFFAAAAEAAAA)) 
    \crc_q[31]_i_2 
       (.I0(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I1(\crc_q[31]_i_6_n_0 ),
        .I2(rx_state_q[1]),
        .I3(rx_state_q[0]),
        .I4(rx_state_q[2]),
        .I5(\crc_q[31]_i_7_n_0 ),
        .O(crc_d[31]));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \crc_q[31]_i_3 
       (.I0(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .I1(\FSM_sequential_rx_state_q[2]_i_17_n_0 ),
        .I2(delay_buf_ctr_q[0]),
        .I3(delay_buf_ctr_q[1]),
        .I4(delay_buf_ctr_q[2]),
        .I5(\delay_buf_ctr_q[2]_i_5_n_0 ),
        .O(\crc_q[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \crc_q[31]_i_4 
       (.I0(\FSM_sequential_rx_state_q[2]_i_9_n_0 ),
        .I1(data[1]),
        .I2(data[2]),
        .I3(data[0]),
        .I4(frame_ready_q),
        .I5(\rx_byte_ctr_q[0]_i_3_n_0 ),
        .O(\crc_q[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
    \crc_q[31]_i_5 
       (.I0(\FSM_sequential_rx_state_q[2]_i_11_n_0 ),
        .I1(\FSM_sequential_rx_state_q[2]_i_12_n_0 ),
        .I2(\FSM_sequential_rx_state_q[2]_i_13_n_0 ),
        .I3(\rx_byte_ctr_q[0]_i_3_n_0 ),
        .I4(rx_state_q[0]),
        .I5(\rx_byte_ctr_q[0]_i_2_n_0 ),
        .O(\crc_q[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[31]_i_6 
       (.I0(crc_q[1]),
        .I1(\delay_buf_q_reg[0]_3 [1]),
        .I2(crc_q[7]),
        .I3(\delay_buf_q_reg[0]_3 [7]),
        .O(\crc_q[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \crc_q[31]_i_7 
       (.I0(crc_q[1]),
        .I1(data[1]),
        .I2(crc_q[7]),
        .I3(i_rxd[1]),
        .O(\crc_q[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2F8F2F8FFF8F2)) 
    \crc_q[3]_i_1 
       (.I0(\crc_q[29]_i_2_n_0 ),
        .I1(\crc_q[3]_i_2_n_0 ),
        .I2(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I3(crc_q[11]),
        .I4(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .I5(\crc_q[3]_i_3_n_0 ),
        .O(crc_d[3]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \crc_q[3]_i_2 
       (.I0(data[5]),
        .I1(crc_q[5]),
        .I2(data[1]),
        .I3(crc_q[1]),
        .I4(crc_q[2]),
        .I5(data[2]),
        .O(\crc_q[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \crc_q[3]_i_3 
       (.I0(\delay_buf_q_reg[0]_3 [5]),
        .I1(crc_q[5]),
        .I2(\delay_buf_q_reg[0]_3 [1]),
        .I3(crc_q[1]),
        .I4(crc_q[2]),
        .I5(\delay_buf_q_reg[0]_3 [2]),
        .O(\crc_q[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4884)) 
    \crc_q[4]_i_1 
       (.I0(\crc_q[26]_i_4_n_0 ),
        .I1(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .I2(p_0_in[0]),
        .I3(crc_q[12]),
        .I4(\crc_q[4]_i_2_n_0 ),
        .I5(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .O(crc_d[4]));
  LUT5 #(
    .INIT(32'h84484884)) 
    \crc_q[4]_i_2 
       (.I0(\crc_q[26]_i_5_n_0 ),
        .I1(\crc_q[29]_i_2_n_0 ),
        .I2(data[0]),
        .I3(crc_q[0]),
        .I4(crc_q[12]),
        .O(\crc_q[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAEEAAEEAAEEFAAA)) 
    \crc_q[5]_i_1 
       (.I0(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I1(in23[5]),
        .I2(in24[5]),
        .I3(rx_state_q[2]),
        .I4(rx_state_q[1]),
        .I5(rx_state_q[0]),
        .O(crc_d[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[5]_i_2 
       (.I0(\crc_q[31]_i_7_n_0 ),
        .I1(crc_q[13]),
        .I2(crc_q[3]),
        .I3(data[3]),
        .I4(crc_q[4]),
        .I5(data[4]),
        .O(in23[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[5]_i_3 
       (.I0(\crc_q[31]_i_6_n_0 ),
        .I1(crc_q[13]),
        .I2(crc_q[3]),
        .I3(\delay_buf_q_reg[0]_3 [3]),
        .I4(crc_q[4]),
        .I5(\delay_buf_q_reg[0]_3 [4]),
        .O(in24[5]));
  LUT6 #(
    .INIT(64'hFFF4F8FFF8F4F8F4)) 
    \crc_q[6]_i_1 
       (.I0(\crc_q[27]_i_2_n_0 ),
        .I1(\crc_q[29]_i_2_n_0 ),
        .I2(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I3(crc_q[14]),
        .I4(\crc_q[6]_i_2_n_0 ),
        .I5(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .O(crc_d[6]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \crc_q[6]_i_2 
       (.I0(crc_q[4]),
        .I1(\delay_buf_q_reg[0]_3 [4]),
        .I2(crc_q[5]),
        .I3(\delay_buf_q_reg[0]_3 [5]),
        .O(\crc_q[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF2FFF2F8FFF8F2F8)) 
    \crc_q[7]_i_1 
       (.I0(\crc_q[29]_i_2_n_0 ),
        .I1(\crc_q[29]_i_3_n_0 ),
        .I2(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I3(crc_q[15]),
        .I4(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .I5(\crc_q[7]_i_2_n_0 ),
        .O(crc_d[7]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \crc_q[7]_i_2 
       (.I0(\delay_buf_q_reg[0]_3 [6]),
        .I1(crc_q[6]),
        .I2(\delay_buf_q_reg[0]_3 [5]),
        .I3(crc_q[5]),
        .I4(crc_q[0]),
        .I5(\delay_buf_q_reg[0]_3 [0]),
        .O(\crc_q[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEFEFFEEEEEEEEE)) 
    \crc_q[8]_i_1 
       (.I0(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I1(\crc_q[8]_i_2_n_0 ),
        .I2(\crc_q[31]_i_6_n_0 ),
        .I3(p_0_in[6]),
        .I4(crc_q[16]),
        .I5(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .O(crc_d[8]));
  LUT5 #(
    .INIT(32'h28828228)) 
    \crc_q[8]_i_2 
       (.I0(\crc_q[29]_i_2_n_0 ),
        .I1(crc_q[16]),
        .I2(crc_q[6]),
        .I3(i_rxd[0]),
        .I4(\crc_q[31]_i_7_n_0 ),
        .O(\crc_q[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEFEFFEEEEEEEEE)) 
    \crc_q[9]_i_1 
       (.I0(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I1(\crc_q[9]_i_2_n_0 ),
        .I2(\crc_q[31]_i_6_n_0 ),
        .I3(p_0_in[1]),
        .I4(crc_q[17]),
        .I5(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .O(crc_d[9]));
  LUT4 #(
    .INIT(16'h8228)) 
    \crc_q[9]_i_2 
       (.I0(\crc_q[29]_i_2_n_0 ),
        .I1(crc_q[17]),
        .I2(crc_q[7]),
        .I3(i_rxd[1]),
        .O(\crc_q[9]_i_2_n_0 ));
  FDSE \crc_q_reg[0] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[0]),
        .Q(crc_q[0]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[10] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[10]),
        .Q(crc_q[10]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[11] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[11]),
        .Q(crc_q[11]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[12] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[12]),
        .Q(crc_q[12]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[13] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[13]),
        .Q(crc_q[13]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[14] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[14]),
        .Q(crc_q[14]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[15] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[15]),
        .Q(crc_q[15]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[16] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[16]),
        .Q(crc_q[16]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[17] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[17]),
        .Q(crc_q[17]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[18] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[18]),
        .Q(crc_q[18]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[19] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[19]),
        .Q(crc_q[19]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[1] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[1]),
        .Q(crc_q[1]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[20] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[20]),
        .Q(crc_q[20]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[21] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[21]),
        .Q(crc_q[21]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[22] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[22]),
        .Q(crc_q[22]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[23] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[23]),
        .Q(crc_q[23]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[24] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[24]),
        .Q(crc_q[24]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[25] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[25]),
        .Q(crc_q[25]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[26] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[26]),
        .Q(crc_q[26]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[27] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[27]),
        .Q(crc_q[27]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[28] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[28]),
        .Q(crc_q[28]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[29] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[29]),
        .Q(crc_q[29]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[2] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[2]),
        .Q(crc_q[2]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[30] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[30]),
        .Q(crc_q[30]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[31] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[31]),
        .Q(crc_q[31]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[3] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[3]),
        .Q(crc_q[3]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[4] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[4]),
        .Q(crc_q[4]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[5] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[5]),
        .Q(crc_q[5]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[6] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[6]),
        .Q(crc_q[6]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[7] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[7]),
        .Q(crc_q[7]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[8] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[8]),
        .Q(crc_q[8]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDSE \crc_q_reg[9] 
       (.C(i_ref_clk),
        .CE(\crc_q[31]_i_1_n_0 ),
        .D(crc_d[9]),
        .Q(crc_q[9]),
        .S(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE crs_dv_q_reg
       (.C(i_ref_clk),
        .CE(1'b1),
        .D(i_crs_dv),
        .Q(crs_dv_q),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF0700CC00C8)) 
    \delay_buf_ctr_q[0]_i_1 
       (.I0(\delay_buf_ctr_q[0]_i_2_n_0 ),
        .I1(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .I2(\delay_buf_ctr_q[2]_i_4_n_0 ),
        .I3(\delay_buf_ctr_q[2]_i_5_n_0 ),
        .I4(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I5(delay_buf_ctr_q[0]),
        .O(\delay_buf_ctr_q[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \delay_buf_ctr_q[0]_i_2 
       (.I0(delay_buf_ctr_q[2]),
        .I1(delay_buf_ctr_q[1]),
        .I2(delay_buf_ctr_q[0]),
        .O(\delay_buf_ctr_q[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \delay_buf_ctr_q[0]_i_3 
       (.I0(rx_state_q[2]),
        .I1(rx_state_q[1]),
        .I2(rx_state_q[0]),
        .O(\delay_buf_ctr_q[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFFAB00AA00A8)) 
    \delay_buf_ctr_q[1]_i_1 
       (.I0(delay_buf_ctr_d[1]),
        .I1(\delay_buf_ctr_q[2]_i_3_n_0 ),
        .I2(\delay_buf_ctr_q[2]_i_4_n_0 ),
        .I3(\delay_buf_ctr_q[2]_i_5_n_0 ),
        .I4(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I5(delay_buf_ctr_q[1]),
        .O(\delay_buf_ctr_q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h00101000)) 
    \delay_buf_ctr_q[1]_i_2 
       (.I0(rx_state_q[0]),
        .I1(rx_state_q[1]),
        .I2(rx_state_q[2]),
        .I3(delay_buf_ctr_q[1]),
        .I4(delay_buf_ctr_q[0]),
        .O(delay_buf_ctr_d[1]));
  LUT6 #(
    .INIT(64'hFFAAFFAB00AA00A8)) 
    \delay_buf_ctr_q[2]_i_1 
       (.I0(delay_buf_ctr_d[2]),
        .I1(\delay_buf_ctr_q[2]_i_3_n_0 ),
        .I2(\delay_buf_ctr_q[2]_i_4_n_0 ),
        .I3(\delay_buf_ctr_q[2]_i_5_n_0 ),
        .I4(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I5(delay_buf_ctr_q[2]),
        .O(\delay_buf_ctr_q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010100010001000)) 
    \delay_buf_ctr_q[2]_i_2 
       (.I0(rx_state_q[0]),
        .I1(rx_state_q[1]),
        .I2(rx_state_q[2]),
        .I3(delay_buf_ctr_q[2]),
        .I4(delay_buf_ctr_q[0]),
        .I5(delay_buf_ctr_q[1]),
        .O(delay_buf_ctr_d[2]));
  LUT6 #(
    .INIT(64'h000000EF00000000)) 
    \delay_buf_ctr_q[2]_i_3 
       (.I0(delay_buf_ctr_q[0]),
        .I1(delay_buf_ctr_q[1]),
        .I2(delay_buf_ctr_q[2]),
        .I3(rx_state_q[0]),
        .I4(rx_state_q[1]),
        .I5(rx_state_q[2]),
        .O(\delay_buf_ctr_q[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \delay_buf_ctr_q[2]_i_4 
       (.I0(rx_state_q[0]),
        .I1(rx_state_q[2]),
        .I2(rx_state_q[1]),
        .I3(\rx_byte_ctr_q_reg_n_0_[2] ),
        .I4(\rx_byte_ctr_q_reg_n_0_[0] ),
        .I5(\rx_byte_ctr_q_reg_n_0_[1] ),
        .O(\delay_buf_ctr_q[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \delay_buf_ctr_q[2]_i_5 
       (.I0(rx_shift_ctr_q[1]),
        .I1(rx_shift_ctr_q[0]),
        .I2(i_crs_dv),
        .O(\delay_buf_ctr_q[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \delay_buf_ctr_q[2]_i_6 
       (.I0(data[3]),
        .I1(rx_state_q[2]),
        .I2(\FSM_sequential_rx_state_q[2]_i_8_n_0 ),
        .I3(\FSM_sequential_rx_state_q[2]_i_9_n_0 ),
        .I4(rx_state_q[1]),
        .I5(rx_state_q[0]),
        .O(\delay_buf_ctr_q[2]_i_6_n_0 ));
  FDRE \delay_buf_ctr_q_reg[0] 
       (.C(i_ref_clk),
        .CE(1'b1),
        .D(\delay_buf_ctr_q[0]_i_1_n_0 ),
        .Q(delay_buf_ctr_q[0]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_ctr_q_reg[1] 
       (.C(i_ref_clk),
        .CE(1'b1),
        .D(\delay_buf_ctr_q[1]_i_1_n_0 ),
        .Q(delay_buf_ctr_q[1]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_ctr_q_reg[2] 
       (.C(i_ref_clk),
        .CE(1'b1),
        .D(\delay_buf_ctr_q[2]_i_1_n_0 ),
        .Q(delay_buf_ctr_q[2]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \delay_buf_q[3][7]_i_1 
       (.I0(rx_state_q[0]),
        .I1(rx_state_q[1]),
        .I2(rx_state_q[2]),
        .I3(i_crs_dv),
        .I4(rx_shift_ctr_q[0]),
        .I5(rx_shift_ctr_q[1]),
        .O(\delay_buf_d[0]_4 ));
  FDRE \delay_buf_q_reg[0][0] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(\delay_buf_q_reg[1]_2 [0]),
        .Q(\delay_buf_q_reg[0]_3 [0]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[0][1] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(\delay_buf_q_reg[1]_2 [1]),
        .Q(\delay_buf_q_reg[0]_3 [1]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[0][2] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(\delay_buf_q_reg[1]_2 [2]),
        .Q(\delay_buf_q_reg[0]_3 [2]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[0][3] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(\delay_buf_q_reg[1]_2 [3]),
        .Q(\delay_buf_q_reg[0]_3 [3]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[0][4] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(\delay_buf_q_reg[1]_2 [4]),
        .Q(\delay_buf_q_reg[0]_3 [4]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[0][5] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(\delay_buf_q_reg[1]_2 [5]),
        .Q(\delay_buf_q_reg[0]_3 [5]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[0][6] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(\delay_buf_q_reg[1]_2 [6]),
        .Q(\delay_buf_q_reg[0]_3 [6]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[0][7] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(\delay_buf_q_reg[1]_2 [7]),
        .Q(\delay_buf_q_reg[0]_3 [7]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[1][0] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(\delay_buf_q_reg[2]_1 [0]),
        .Q(\delay_buf_q_reg[1]_2 [0]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[1][1] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(\delay_buf_q_reg[2]_1 [1]),
        .Q(\delay_buf_q_reg[1]_2 [1]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[1][2] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(\delay_buf_q_reg[2]_1 [2]),
        .Q(\delay_buf_q_reg[1]_2 [2]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[1][3] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(\delay_buf_q_reg[2]_1 [3]),
        .Q(\delay_buf_q_reg[1]_2 [3]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[1][4] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(\delay_buf_q_reg[2]_1 [4]),
        .Q(\delay_buf_q_reg[1]_2 [4]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[1][5] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(\delay_buf_q_reg[2]_1 [5]),
        .Q(\delay_buf_q_reg[1]_2 [5]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[1][6] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(\delay_buf_q_reg[2]_1 [6]),
        .Q(\delay_buf_q_reg[1]_2 [6]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[1][7] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(\delay_buf_q_reg[2]_1 [7]),
        .Q(\delay_buf_q_reg[1]_2 [7]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[2][0] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(\delay_buf_q_reg[3]_0 [0]),
        .Q(\delay_buf_q_reg[2]_1 [0]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[2][1] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(\delay_buf_q_reg[3]_0 [1]),
        .Q(\delay_buf_q_reg[2]_1 [1]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[2][2] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(\delay_buf_q_reg[3]_0 [2]),
        .Q(\delay_buf_q_reg[2]_1 [2]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[2][3] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(\delay_buf_q_reg[3]_0 [3]),
        .Q(\delay_buf_q_reg[2]_1 [3]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[2][4] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(\delay_buf_q_reg[3]_0 [4]),
        .Q(\delay_buf_q_reg[2]_1 [4]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[2][5] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(\delay_buf_q_reg[3]_0 [5]),
        .Q(\delay_buf_q_reg[2]_1 [5]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[2][6] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(\delay_buf_q_reg[3]_0 [6]),
        .Q(\delay_buf_q_reg[2]_1 [6]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[2][7] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(\delay_buf_q_reg[3]_0 [7]),
        .Q(\delay_buf_q_reg[2]_1 [7]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[3][0] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(data[0]),
        .Q(\delay_buf_q_reg[3]_0 [0]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[3][1] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(data[1]),
        .Q(\delay_buf_q_reg[3]_0 [1]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[3][2] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(data[2]),
        .Q(\delay_buf_q_reg[3]_0 [2]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[3][3] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(data[3]),
        .Q(\delay_buf_q_reg[3]_0 [3]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[3][4] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(data[4]),
        .Q(\delay_buf_q_reg[3]_0 [4]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[3][5] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(data[5]),
        .Q(\delay_buf_q_reg[3]_0 [5]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[3][6] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(i_rxd[0]),
        .Q(\delay_buf_q_reg[3]_0 [6]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \delay_buf_q_reg[3][7] 
       (.C(i_ref_clk),
        .CE(\delay_buf_d[0]_4 ),
        .D(i_rxd[1]),
        .Q(\delay_buf_q_reg[3]_0 [7]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABFFFAAAA8000)) 
    frame_ready_q_i_1
       (.I0(frame_ready_d),
        .I1(rx_shift_ctr_q[0]),
        .I2(rx_shift_ctr_q[1]),
        .I3(\delay_buf_ctr_q[2]_i_6_n_0 ),
        .I4(frame_ready_q_i_3_n_0),
        .I5(frame_ready_q),
        .O(frame_ready_q_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h000A0003)) 
    frame_ready_q_i_2
       (.I0(crs_dv_q),
        .I1(i_crs_dv),
        .I2(rx_state_q[1]),
        .I3(rx_state_q[0]),
        .I4(rx_state_q[2]),
        .O(frame_ready_d));
  LUT6 #(
    .INIT(64'h0000000000570055)) 
    frame_ready_q_i_3
       (.I0(rx_state_q[2]),
        .I1(full),
        .I2(pending_err_q),
        .I3(i_crs_dv),
        .I4(crs_dv_q),
        .I5(\rx_fifo_wr_data_q[8]_i_3_n_0 ),
        .O(frame_ready_q_i_3_n_0));
  FDRE frame_ready_q_reg
       (.C(i_ref_clk),
        .CE(1'b1),
        .D(frame_ready_q_i_1_n_0),
        .Q(frame_ready_q),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    i_rst_n1_reg
       (.C(i_ref_clk),
        .CE(1'b1),
        .D(axi_aresetn),
        .Q(i_rst_n1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_rst_n2_reg
       (.C(i_ref_clk),
        .CE(1'b1),
        .D(i_rst_n1),
        .Q(i_rst_n2),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAEAAAAAAA80000)) 
    pending_err_q_i_1
       (.I0(pending_err_q),
        .I1(pending_err_q_i_2_n_0),
        .I2(rx_state_q[0]),
        .I3(rx_state_q[1]),
        .I4(rx_state_q[2]),
        .I5(full),
        .O(pending_err_q_i_1_n_0));
  LUT6 #(
    .INIT(64'h4444444444444F44)) 
    pending_err_q_i_2
       (.I0(i_crs_dv),
        .I1(crs_dv_q),
        .I2(\delay_buf_ctr_q[2]_i_5_n_0 ),
        .I3(delay_buf_ctr_q[2]),
        .I4(delay_buf_ctr_q[1]),
        .I5(delay_buf_ctr_q[0]),
        .O(pending_err_q_i_2_n_0));
  FDRE pending_err_q_reg
       (.C(i_ref_clk),
        .CE(1'b1),
        .D(pending_err_q_i_1_n_0),
        .Q(pending_err_q),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h04)) 
    rx_async_fifo_inst_i_1
       (.I0(full),
        .I1(mac_rx_valid),
        .I2(wr_rst_busy),
        .O(wr_en));
  LUT6 #(
    .INIT(64'h0000FFFFAAEA0000)) 
    \rx_byte_ctr_q[0]_i_1 
       (.I0(\rx_byte_ctr_q[0]_i_2_n_0 ),
        .I1(rx_state_q[0]),
        .I2(\rx_byte_ctr_q[0]_i_3_n_0 ),
        .I3(\rx_byte_ctr_q[2]_i_3_n_0 ),
        .I4(\rx_byte_ctr_q[2]_i_5_n_0 ),
        .I5(\rx_byte_ctr_q_reg_n_0_[0] ),
        .O(\rx_byte_ctr_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_byte_ctr_q[0]_i_2 
       (.I0(rx_state_q[1]),
        .I1(rx_state_q[2]),
        .O(\rx_byte_ctr_q[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \rx_byte_ctr_q[0]_i_3 
       (.I0(data[3]),
        .I1(rx_state_q[2]),
        .O(\rx_byte_ctr_q[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \rx_byte_ctr_q[1]_i_1 
       (.I0(\rx_byte_ctr_q[1]_i_2_n_0 ),
        .I1(\rx_byte_ctr_q[2]_i_3_n_0 ),
        .I2(\rx_byte_ctr_q[1]_i_3_n_0 ),
        .I3(\rx_byte_ctr_q[2]_i_5_n_0 ),
        .I4(\rx_byte_ctr_q_reg_n_0_[1] ),
        .O(\rx_byte_ctr_q[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200222220000)) 
    \rx_byte_ctr_q[1]_i_2 
       (.I0(rx_state_q[1]),
        .I1(rx_state_q[2]),
        .I2(\rx_byte_ctr_q_reg_n_0_[2] ),
        .I3(rx_state_q[0]),
        .I4(\rx_byte_ctr_q_reg_n_0_[1] ),
        .I5(\rx_byte_ctr_q_reg_n_0_[0] ),
        .O(\rx_byte_ctr_q[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080008000800880)) 
    \rx_byte_ctr_q[1]_i_3 
       (.I0(\rx_byte_ctr_q[0]_i_3_n_0 ),
        .I1(rx_state_q[0]),
        .I2(\rx_byte_ctr_q_reg_n_0_[1] ),
        .I3(\rx_byte_ctr_q_reg_n_0_[0] ),
        .I4(\rx_byte_ctr_q_reg_n_0_[2] ),
        .I5(rx_state_q[1]),
        .O(\rx_byte_ctr_q[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \rx_byte_ctr_q[2]_i_1 
       (.I0(\rx_byte_ctr_q[2]_i_2_n_0 ),
        .I1(\rx_byte_ctr_q[2]_i_3_n_0 ),
        .I2(\rx_byte_ctr_q[2]_i_4_n_0 ),
        .I3(\rx_byte_ctr_q[2]_i_5_n_0 ),
        .I4(\rx_byte_ctr_q_reg_n_0_[2] ),
        .O(\rx_byte_ctr_q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0202200020202020)) 
    \rx_byte_ctr_q[2]_i_2 
       (.I0(rx_state_q[1]),
        .I1(rx_state_q[2]),
        .I2(\rx_byte_ctr_q_reg_n_0_[2] ),
        .I3(rx_state_q[0]),
        .I4(\rx_byte_ctr_q_reg_n_0_[1] ),
        .I5(\rx_byte_ctr_q_reg_n_0_[0] ),
        .O(\rx_byte_ctr_q[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFE)) 
    \rx_byte_ctr_q[2]_i_3 
       (.I0(\FSM_sequential_rx_state_q[2]_i_11_n_0 ),
        .I1(\FSM_sequential_rx_state_q[2]_i_12_n_0 ),
        .I2(\rx_byte_ctr_q[2]_i_6_n_0 ),
        .I3(i_rxd[0]),
        .I4(data[2]),
        .I5(i_rxd[1]),
        .O(\rx_byte_ctr_q[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h00888000)) 
    \rx_byte_ctr_q[2]_i_4 
       (.I0(\rx_byte_ctr_q[0]_i_3_n_0 ),
        .I1(rx_state_q[0]),
        .I2(\rx_byte_ctr_q_reg_n_0_[1] ),
        .I3(\rx_byte_ctr_q_reg_n_0_[0] ),
        .I4(\rx_byte_ctr_q_reg_n_0_[2] ),
        .O(\rx_byte_ctr_q[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00000008)) 
    \rx_byte_ctr_q[2]_i_5 
       (.I0(\FSM_sequential_rx_state_q[2]_i_9_n_0 ),
        .I1(\FSM_sequential_rx_state_q[2]_i_8_n_0 ),
        .I2(rx_state_q[2]),
        .I3(data[3]),
        .I4(\delay_buf_ctr_q[2]_i_5_n_0 ),
        .I5(\crc_q[29]_i_2_n_0 ),
        .O(\rx_byte_ctr_q[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_byte_ctr_q[2]_i_6 
       (.I0(\rx_byte_ctr_q_reg_n_0_[2] ),
        .I1(\rx_byte_ctr_q_reg_n_0_[1] ),
        .O(\rx_byte_ctr_q[2]_i_6_n_0 ));
  FDRE \rx_byte_ctr_q_reg[0] 
       (.C(i_ref_clk),
        .CE(1'b1),
        .D(\rx_byte_ctr_q[0]_i_1_n_0 ),
        .Q(\rx_byte_ctr_q_reg_n_0_[0] ),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \rx_byte_ctr_q_reg[1] 
       (.C(i_ref_clk),
        .CE(1'b1),
        .D(\rx_byte_ctr_q[1]_i_1_n_0 ),
        .Q(\rx_byte_ctr_q_reg_n_0_[1] ),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \rx_byte_ctr_q_reg[2] 
       (.C(i_ref_clk),
        .CE(1'b1),
        .D(\rx_byte_ctr_q[2]_i_1_n_0 ),
        .Q(\rx_byte_ctr_q_reg_n_0_[2] ),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABAAABAAAFAFA)) 
    rx_fifo_valid_q_i_1
       (.I0(rx_fifo_valid_q_i_2_n_0),
        .I1(full),
        .I2(\delay_buf_ctr_q[0]_i_3_n_0 ),
        .I3(rx_fifo_valid_q_i_3_n_0),
        .I4(i_crs_dv),
        .I5(crs_dv_q),
        .O(rx_fifo_valid_d));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h04040444)) 
    rx_fifo_valid_q_i_2
       (.I0(full),
        .I1(pending_err_q),
        .I2(rx_state_q[2]),
        .I3(rx_state_q[0]),
        .I4(rx_state_q[1]),
        .O(rx_fifo_valid_q_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000080FFFFFFFF)) 
    rx_fifo_valid_q_i_3
       (.I0(rx_shift_ctr_q[0]),
        .I1(rx_shift_ctr_q[1]),
        .I2(delay_buf_ctr_q[2]),
        .I3(delay_buf_ctr_q[1]),
        .I4(delay_buf_ctr_q[0]),
        .I5(i_crs_dv),
        .O(rx_fifo_valid_q_i_3_n_0));
  FDRE rx_fifo_valid_q_reg
       (.C(i_ref_clk),
        .CE(1'b1),
        .D(rx_fifo_valid_d),
        .Q(mac_rx_valid),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  CARRY4 rx_fifo_wr_data_d1_carry
       (.CI(1'b0),
        .CO({rx_fifo_wr_data_d1_carry_n_0,rx_fifo_wr_data_d1_carry_n_1,rx_fifo_wr_data_d1_carry_n_2,rx_fifo_wr_data_d1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rx_fifo_wr_data_d1_carry_O_UNCONNECTED[3:0]),
        .S({rx_fifo_wr_data_d1_carry_i_1_n_0,rx_fifo_wr_data_d1_carry_i_2_n_0,rx_fifo_wr_data_d1_carry_i_3_n_0,rx_fifo_wr_data_d1_carry_i_4_n_0}));
  CARRY4 rx_fifo_wr_data_d1_carry__0
       (.CI(rx_fifo_wr_data_d1_carry_n_0),
        .CO({rx_fifo_wr_data_d1_carry__0_n_0,rx_fifo_wr_data_d1_carry__0_n_1,rx_fifo_wr_data_d1_carry__0_n_2,rx_fifo_wr_data_d1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rx_fifo_wr_data_d1_carry__0_O_UNCONNECTED[3:0]),
        .S({rx_fifo_wr_data_d1_carry__0_i_1_n_0,rx_fifo_wr_data_d1_carry__0_i_2_n_0,rx_fifo_wr_data_d1_carry__0_i_3_n_0,rx_fifo_wr_data_d1_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    rx_fifo_wr_data_d1_carry__0_i_1
       (.I0(\delay_buf_q_reg[2]_1 [7]),
        .I1(crc_q[23]),
        .I2(\delay_buf_q_reg[2]_1 [6]),
        .I3(crc_q[22]),
        .I4(crc_q[21]),
        .I5(\delay_buf_q_reg[2]_1 [5]),
        .O(rx_fifo_wr_data_d1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    rx_fifo_wr_data_d1_carry__0_i_2
       (.I0(\delay_buf_q_reg[2]_1 [4]),
        .I1(crc_q[20]),
        .I2(\delay_buf_q_reg[2]_1 [3]),
        .I3(crc_q[19]),
        .I4(crc_q[18]),
        .I5(\delay_buf_q_reg[2]_1 [2]),
        .O(rx_fifo_wr_data_d1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    rx_fifo_wr_data_d1_carry__0_i_3
       (.I0(\delay_buf_q_reg[2]_1 [1]),
        .I1(crc_q[17]),
        .I2(\delay_buf_q_reg[2]_1 [0]),
        .I3(crc_q[16]),
        .I4(crc_q[15]),
        .I5(\delay_buf_q_reg[1]_2 [7]),
        .O(rx_fifo_wr_data_d1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    rx_fifo_wr_data_d1_carry__0_i_4
       (.I0(\delay_buf_q_reg[1]_2 [6]),
        .I1(crc_q[14]),
        .I2(\delay_buf_q_reg[1]_2 [5]),
        .I3(crc_q[13]),
        .I4(crc_q[12]),
        .I5(\delay_buf_q_reg[1]_2 [4]),
        .O(rx_fifo_wr_data_d1_carry__0_i_4_n_0));
  CARRY4 rx_fifo_wr_data_d1_carry__1
       (.CI(rx_fifo_wr_data_d1_carry__0_n_0),
        .CO({NLW_rx_fifo_wr_data_d1_carry__1_CO_UNCONNECTED[3],rx_fifo_wr_data_d1,rx_fifo_wr_data_d1_carry__1_n_2,rx_fifo_wr_data_d1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_rx_fifo_wr_data_d1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,rx_fifo_wr_data_d1_carry__1_i_1_n_0,rx_fifo_wr_data_d1_carry__1_i_2_n_0,rx_fifo_wr_data_d1_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h0660)) 
    rx_fifo_wr_data_d1_carry__1_i_1
       (.I0(crc_q[30]),
        .I1(\delay_buf_q_reg[3]_0 [6]),
        .I2(crc_q[31]),
        .I3(\delay_buf_q_reg[3]_0 [7]),
        .O(rx_fifo_wr_data_d1_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    rx_fifo_wr_data_d1_carry__1_i_2
       (.I0(\delay_buf_q_reg[3]_0 [5]),
        .I1(crc_q[29]),
        .I2(\delay_buf_q_reg[3]_0 [4]),
        .I3(crc_q[28]),
        .I4(crc_q[27]),
        .I5(\delay_buf_q_reg[3]_0 [3]),
        .O(rx_fifo_wr_data_d1_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    rx_fifo_wr_data_d1_carry__1_i_3
       (.I0(\delay_buf_q_reg[3]_0 [2]),
        .I1(crc_q[26]),
        .I2(\delay_buf_q_reg[3]_0 [1]),
        .I3(crc_q[25]),
        .I4(crc_q[24]),
        .I5(\delay_buf_q_reg[3]_0 [0]),
        .O(rx_fifo_wr_data_d1_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    rx_fifo_wr_data_d1_carry_i_1
       (.I0(\delay_buf_q_reg[1]_2 [3]),
        .I1(crc_q[11]),
        .I2(\delay_buf_q_reg[1]_2 [2]),
        .I3(crc_q[10]),
        .I4(crc_q[9]),
        .I5(\delay_buf_q_reg[1]_2 [1]),
        .O(rx_fifo_wr_data_d1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    rx_fifo_wr_data_d1_carry_i_2
       (.I0(\delay_buf_q_reg[1]_2 [0]),
        .I1(crc_q[8]),
        .I2(\delay_buf_q_reg[0]_3 [7]),
        .I3(crc_q[7]),
        .I4(crc_q[6]),
        .I5(\delay_buf_q_reg[0]_3 [6]),
        .O(rx_fifo_wr_data_d1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    rx_fifo_wr_data_d1_carry_i_3
       (.I0(\delay_buf_q_reg[0]_3 [5]),
        .I1(crc_q[5]),
        .I2(\delay_buf_q_reg[0]_3 [4]),
        .I3(crc_q[4]),
        .I4(crc_q[3]),
        .I5(\delay_buf_q_reg[0]_3 [3]),
        .O(rx_fifo_wr_data_d1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    rx_fifo_wr_data_d1_carry_i_4
       (.I0(\delay_buf_q_reg[0]_3 [2]),
        .I1(crc_q[2]),
        .I2(\delay_buf_q_reg[0]_3 [1]),
        .I3(crc_q[1]),
        .I4(crc_q[0]),
        .I5(\delay_buf_q_reg[0]_3 [0]),
        .O(rx_fifo_wr_data_d1_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_fifo_wr_data_q[0]_i_1 
       (.I0(\crc_q[31]_i_3_n_0 ),
        .I1(\delay_buf_q_reg[0]_3 [0]),
        .O(rx_fifo_wr_data_d1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_fifo_wr_data_q[1]_i_1 
       (.I0(\crc_q[31]_i_3_n_0 ),
        .I1(\delay_buf_q_reg[0]_3 [1]),
        .O(rx_fifo_wr_data_d1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_fifo_wr_data_q[2]_i_1 
       (.I0(\crc_q[31]_i_3_n_0 ),
        .I1(\delay_buf_q_reg[0]_3 [2]),
        .O(rx_fifo_wr_data_d1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_fifo_wr_data_q[3]_i_1 
       (.I0(\crc_q[31]_i_3_n_0 ),
        .I1(\delay_buf_q_reg[0]_3 [3]),
        .O(rx_fifo_wr_data_d1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_fifo_wr_data_q[4]_i_1 
       (.I0(\crc_q[31]_i_3_n_0 ),
        .I1(\delay_buf_q_reg[0]_3 [4]),
        .O(rx_fifo_wr_data_d1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_fifo_wr_data_q[5]_i_1 
       (.I0(\crc_q[31]_i_3_n_0 ),
        .I1(\delay_buf_q_reg[0]_3 [5]),
        .O(rx_fifo_wr_data_d1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rx_fifo_wr_data_q[6]_i_1 
       (.I0(\crc_q[31]_i_3_n_0 ),
        .I1(\delay_buf_q_reg[0]_3 [6]),
        .O(rx_fifo_wr_data_d1_in[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \rx_fifo_wr_data_q[7]_i_1 
       (.I0(\crc_q[31]_i_3_n_0 ),
        .I1(\delay_buf_q_reg[0]_3 [7]),
        .O(rx_fifo_wr_data_d1_in[7]));
  LUT6 #(
    .INIT(64'hFF00FF15FF00FFFF)) 
    \rx_fifo_wr_data_q[8]_i_1 
       (.I0(i_crs_dv),
        .I1(rx_fifo_wr_data_d1),
        .I2(crs_dv_q),
        .I3(\rx_fifo_wr_data_q[8]_i_2_n_0 ),
        .I4(\rx_fifo_wr_data_q[8]_i_3_n_0 ),
        .I5(rx_fifo_valid_q_i_3_n_0),
        .O(rx_fifo_wr_data_d1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h1110FFFF)) 
    \rx_fifo_wr_data_q[8]_i_2 
       (.I0(rx_state_q[0]),
        .I1(rx_state_q[1]),
        .I2(full),
        .I3(pending_err_q),
        .I4(rx_state_q[2]),
        .O(\rx_fifo_wr_data_q[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rx_fifo_wr_data_q[8]_i_3 
       (.I0(rx_state_q[0]),
        .I1(rx_state_q[1]),
        .O(\rx_fifo_wr_data_q[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h11111110FFFFFFFF)) 
    \rx_fifo_wr_data_q[9]_i_1 
       (.I0(rx_state_q[0]),
        .I1(rx_state_q[1]),
        .I2(\rx_fifo_wr_data_q[9]_i_2_n_0 ),
        .I3(pending_err_q),
        .I4(full),
        .I5(rx_state_q[2]),
        .O(rx_fifo_wr_data_d1_in[9]));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \rx_fifo_wr_data_q[9]_i_2 
       (.I0(delay_buf_ctr_q[0]),
        .I1(delay_buf_ctr_q[1]),
        .I2(delay_buf_ctr_q[2]),
        .I3(i_crs_dv),
        .I4(rx_shift_ctr_q[0]),
        .I5(rx_shift_ctr_q[1]),
        .O(\rx_fifo_wr_data_q[9]_i_2_n_0 ));
  FDRE \rx_fifo_wr_data_q_reg[0] 
       (.C(i_ref_clk),
        .CE(rx_fifo_valid_d),
        .D(rx_fifo_wr_data_d1_in[0]),
        .Q(Q[0]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \rx_fifo_wr_data_q_reg[1] 
       (.C(i_ref_clk),
        .CE(rx_fifo_valid_d),
        .D(rx_fifo_wr_data_d1_in[1]),
        .Q(Q[1]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \rx_fifo_wr_data_q_reg[2] 
       (.C(i_ref_clk),
        .CE(rx_fifo_valid_d),
        .D(rx_fifo_wr_data_d1_in[2]),
        .Q(Q[2]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \rx_fifo_wr_data_q_reg[3] 
       (.C(i_ref_clk),
        .CE(rx_fifo_valid_d),
        .D(rx_fifo_wr_data_d1_in[3]),
        .Q(Q[3]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \rx_fifo_wr_data_q_reg[4] 
       (.C(i_ref_clk),
        .CE(rx_fifo_valid_d),
        .D(rx_fifo_wr_data_d1_in[4]),
        .Q(Q[4]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \rx_fifo_wr_data_q_reg[5] 
       (.C(i_ref_clk),
        .CE(rx_fifo_valid_d),
        .D(rx_fifo_wr_data_d1_in[5]),
        .Q(Q[5]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \rx_fifo_wr_data_q_reg[6] 
       (.C(i_ref_clk),
        .CE(rx_fifo_valid_d),
        .D(rx_fifo_wr_data_d1_in[6]),
        .Q(Q[6]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \rx_fifo_wr_data_q_reg[7] 
       (.C(i_ref_clk),
        .CE(rx_fifo_valid_d),
        .D(rx_fifo_wr_data_d1_in[7]),
        .Q(Q[7]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \rx_fifo_wr_data_q_reg[8] 
       (.C(i_ref_clk),
        .CE(rx_fifo_valid_d),
        .D(rx_fifo_wr_data_d1_in[8]),
        .Q(Q[8]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \rx_fifo_wr_data_q_reg[9] 
       (.C(i_ref_clk),
        .CE(rx_fifo_valid_d),
        .D(rx_fifo_wr_data_d1_in[9]),
        .Q(Q[9]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hDDD4222A)) 
    \rx_shift_ctr_q[0]_i_1 
       (.I0(i_crs_dv),
        .I1(rx_state_q[2]),
        .I2(rx_state_q[0]),
        .I3(rx_state_q[1]),
        .I4(rx_shift_ctr_q[0]),
        .O(\rx_shift_ctr_q[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7F7F77408080888)) 
    \rx_shift_ctr_q[1]_i_1 
       (.I0(rx_shift_ctr_q[0]),
        .I1(i_crs_dv),
        .I2(rx_state_q[2]),
        .I3(rx_state_q[0]),
        .I4(rx_state_q[1]),
        .I5(rx_shift_ctr_q[1]),
        .O(\rx_shift_ctr_q[1]_i_1_n_0 ));
  FDRE \rx_shift_ctr_q_reg[0] 
       (.C(i_ref_clk),
        .CE(1'b1),
        .D(\rx_shift_ctr_q[0]_i_1_n_0 ),
        .Q(rx_shift_ctr_q[0]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \rx_shift_ctr_q_reg[1] 
       (.C(i_ref_clk),
        .CE(1'b1),
        .D(\rx_shift_ctr_q[1]_i_1_n_0 ),
        .Q(rx_shift_ctr_q[1]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \rx_shift_q_reg[2] 
       (.C(i_ref_clk),
        .CE(i_crs_dv),
        .D(data[2]),
        .Q(data[0]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \rx_shift_q_reg[3] 
       (.C(i_ref_clk),
        .CE(i_crs_dv),
        .D(data[3]),
        .Q(data[1]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \rx_shift_q_reg[4] 
       (.C(i_ref_clk),
        .CE(i_crs_dv),
        .D(data[4]),
        .Q(data[2]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \rx_shift_q_reg[5] 
       (.C(i_ref_clk),
        .CE(i_crs_dv),
        .D(data[5]),
        .Q(data[3]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \rx_shift_q_reg[6] 
       (.C(i_ref_clk),
        .CE(i_crs_dv),
        .D(i_rxd[0]),
        .Q(data[4]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
  FDRE \rx_shift_q_reg[7] 
       (.C(i_ref_clk),
        .CE(i_crs_dv),
        .D(i_rxd[1]),
        .Q(data[5]),
        .R(\FSM_sequential_rx_state_q[2]_i_1_n_0 ));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "9" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module design_1_eth_rx_0_2_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [8:0]src_in_bin;
  input dest_clk;
  output [8:0]dest_out_bin;

  wire [8:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[1] ;
  wire [7:0]\^dest_out_bin ;
  wire [7:0]gray_enc;
  wire src_clk;
  wire [8:0]src_in_bin;

  assign dest_out_bin[8] = \dest_graysync_ff[1] [8];
  assign dest_out_bin[7:0] = \^dest_out_bin [7:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\^dest_out_bin [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\^dest_out_bin [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\^dest_out_bin [3]),
        .O(\^dest_out_bin [2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .I5(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .O(\^dest_out_bin [4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [6]),
        .O(\^dest_out_bin [5]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [7]),
        .O(\^dest_out_bin [6]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [8]),
        .O(\^dest_out_bin [7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[8]),
        .Q(async_path[8]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "9" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module design_1_eth_rx_0_2_xpm_cdc_gray__1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [8:0]src_in_bin;
  input dest_clk;
  output [8:0]dest_out_bin;

  wire [8:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[1] ;
  wire [7:0]\^dest_out_bin ;
  wire [7:0]gray_enc;
  wire src_clk;
  wire [8:0]src_in_bin;

  assign dest_out_bin[8] = \dest_graysync_ff[1] [8];
  assign dest_out_bin[7:0] = \^dest_out_bin [7:0];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[0]_INST_0 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\^dest_out_bin [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(\^dest_out_bin [0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[1]_INST_0 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\^dest_out_bin [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(\^dest_out_bin [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[2]_INST_0 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\^dest_out_bin [3]),
        .O(\^dest_out_bin [2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin[3]_INST_0 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .I5(\dest_graysync_ff[1] [4]),
        .O(\^dest_out_bin [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin[4]_INST_0 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .O(\^dest_out_bin [4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin[5]_INST_0 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [6]),
        .O(\^dest_out_bin [5]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin[6]_INST_0 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [7]),
        .O(\^dest_out_bin [6]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin[7]_INST_0 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [8]),
        .O(\^dest_out_bin [7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[8]),
        .Q(async_path[8]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire \<const0> ;
  wire [9:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  assign dest_out_bin[9] = \dest_graysync_ff[1] [9];
  assign dest_out_bin[8] = \<const0> ;
  assign dest_out_bin[7] = \<const0> ;
  assign dest_out_bin[6] = \<const0> ;
  assign dest_out_bin[5] = \<const0> ;
  assign dest_out_bin[4] = \<const0> ;
  assign dest_out_bin[3] = \<const0> ;
  assign dest_out_bin[2] = \<const0> ;
  assign dest_out_bin[1] = \<const0> ;
  assign dest_out_bin[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "0" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* xpm_cdc = "GRAY" *) 
module design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0__1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire \<const0> ;
  wire [9:0]async_path;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  assign dest_out_bin[9] = \dest_graysync_ff[1] [9];
  assign dest_out_bin[8] = \<const0> ;
  assign dest_out_bin[7] = \<const0> ;
  assign dest_out_bin[6] = \<const0> ;
  assign dest_out_bin[5] = \<const0> ;
  assign dest_out_bin[4] = \<const0> ;
  assign dest_out_bin[3] = \<const0> ;
  assign dest_out_bin[2] = \<const0> ;
  assign dest_out_bin[1] = \<const0> ;
  assign dest_out_bin[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "SYNC_RST" *) 
module design_1_eth_rx_0_2_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
(* xpm_cdc = "SYNC_RST" *) 
module design_1_eth_rx_0_2_xpm_cdc_sync_rst__1
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [1:0]syncstages_ff;

  assign dest_rst = syncstages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_eth_rx_0_2_xpm_counter_updn
   (Q,
    E,
    rd_en,
    \count_value_i_reg[9]_0 ,
    SR,
    rd_clk);
  output [9:0]Q;
  output [0:0]E;
  input rd_en;
  input \count_value_i_reg[9]_0 ;
  input [0:0]SR;
  input rd_clk;

  wire [0:0]E;
  wire [9:0]Q;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_1__3_n_0 ;
  wire \count_value_i[2]_i_1__3_n_0 ;
  wire \count_value_i[3]_i_1__3_n_0 ;
  wire \count_value_i[4]_i_1__3_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[8]_i_1__2_n_0 ;
  wire \count_value_i[8]_i_2__1_n_0 ;
  wire \count_value_i[9]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_2__0_n_0 ;
  wire \count_value_i_reg[9]_0 ;
  wire rd_clk;
  wire rd_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__3 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[5]_i_1__2 
       (.I0(\count_value_i[8]_i_2__1_n_0 ),
        .I1(Q[4]),
        .I2(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(\count_value_i[8]_i_2__1_n_0 ),
        .I2(Q[5]),
        .I3(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[5]),
        .I1(\count_value_i[8]_i_2__1_n_0 ),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(Q[7]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[8]_i_1__2 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(\count_value_i[8]_i_2__1_n_0 ),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(Q[8]),
        .O(\count_value_i[8]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \count_value_i[8]_i_2__1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(rd_en),
        .I3(\count_value_i_reg[9]_0 ),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\count_value_i[8]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__0 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__0_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(E),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__3_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__3_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__3_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__3_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[7]_i_1__2_n_0 ),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[8]_i_1__2_n_0 ),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[9]_i_1__0_n_0 ),
        .Q(Q[9]),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[9]_0 ),
        .O(E));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_eth_rx_0_2_xpm_counter_updn_1
   (Q,
    \count_value_i_reg[5]_0 ,
    wr_en,
    rst_d1,
    wrst_busy,
    E,
    wr_clk);
  output [9:0]Q;
  input \count_value_i_reg[5]_0 ;
  input wr_en;
  input rst_d1;
  input wrst_busy;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [9:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[5]_i_2_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[9]_i_1_n_0 ;
  wire \count_value_i[9]_i_2_n_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[5]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \count_value_i[5]_i_2 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[5]_0 ),
        .I2(wr_en),
        .I3(rst_d1),
        .I4(wrst_busy),
        .I5(Q[1]),
        .O(\count_value_i[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[6]_i_1 
       (.I0(\count_value_i[9]_i_2_n_0 ),
        .I1(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[7]_i_1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[8]_i_1 
       (.I0(\count_value_i[9]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[9]_i_1 
       (.I0(\count_value_i[9]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[9]),
        .O(\count_value_i[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \count_value_i[9]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[5]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .O(\count_value_i[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_eth_rx_0_2_xpm_counter_updn__parameterized0
   (Q,
    rd_en,
    \count_value_i_reg[5]_0 ,
    SR,
    E,
    rd_clk);
  output [8:0]Q;
  input rd_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]SR;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [8:0]Q;
  wire [0:0]SR;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__3_n_0 ;
  wire \count_value_i[6]_i_1__3_n_0 ;
  wire \count_value_i[7]_i_1__3_n_0 ;
  wire \count_value_i[8]_i_1__3_n_0 ;
  wire \count_value_i[8]_i_2__2_n_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire rd_clk;
  wire rd_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__2 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[5]_i_1__3 
       (.I0(\count_value_i[8]_i_2__2_n_0 ),
        .I1(Q[4]),
        .I2(Q[5]),
        .O(\count_value_i[5]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[6]_i_1__3 
       (.I0(Q[4]),
        .I1(\count_value_i[8]_i_2__2_n_0 ),
        .I2(Q[5]),
        .I3(Q[6]),
        .O(\count_value_i[6]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[7]_i_1__3 
       (.I0(Q[5]),
        .I1(\count_value_i[8]_i_2__2_n_0 ),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(Q[7]),
        .O(\count_value_i[7]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[8]_i_1__3 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(\count_value_i[8]_i_2__2_n_0 ),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(Q[8]),
        .O(\count_value_i[8]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \count_value_i[8]_i_2__2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(rd_en),
        .I3(\count_value_i_reg[5]_0 ),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\count_value_i[8]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__3_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1__3_n_0 ),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[7]_i_1__3_n_0 ),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[8]_i_1__3_n_0 ),
        .Q(Q[8]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_eth_rx_0_2_xpm_counter_updn__parameterized0_2
   (CO,
    E,
    Q,
    wrst_busy,
    wr_clk);
  output [0:0]CO;
  input [0:0]E;
  input [8:0]Q;
  input wrst_busy;
  input wr_clk;

  wire [0:0]CO;
  wire [0:0]E;
  wire [8:0]Q;
  wire [8:0]count_value_i;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_2_n_0 ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_7_n_0 ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_8_n_0 ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_9_n_0 ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_n_2 ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_n_3 ;
  wire wr_clk;
  wire wrst_busy;
  wire [3:3]\NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(count_value_i[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(count_value_i[0]),
        .I1(count_value_i[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(count_value_i[1]),
        .I1(count_value_i[0]),
        .I2(count_value_i[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(count_value_i[2]),
        .I1(count_value_i[0]),
        .I2(count_value_i[1]),
        .I3(count_value_i[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(count_value_i[3]),
        .I1(count_value_i[1]),
        .I2(count_value_i[0]),
        .I3(count_value_i[2]),
        .I4(count_value_i[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[5]_i_1__0 
       (.I0(\count_value_i[8]_i_2_n_0 ),
        .I1(count_value_i[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[6]_i_1__0 
       (.I0(count_value_i[5]),
        .I1(\count_value_i[8]_i_2_n_0 ),
        .I2(count_value_i[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(\count_value_i[8]_i_2_n_0 ),
        .I1(count_value_i[5]),
        .I2(count_value_i[6]),
        .I3(count_value_i[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(\count_value_i[8]_i_2_n_0 ),
        .I1(count_value_i[7]),
        .I2(count_value_i[6]),
        .I3(count_value_i[5]),
        .I4(count_value_i[8]),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[8]_i_2 
       (.I0(count_value_i[3]),
        .I1(count_value_i[1]),
        .I2(E),
        .I3(count_value_i[0]),
        .I4(count_value_i[2]),
        .I5(count_value_i[4]),
        .O(\count_value_i[8]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(count_value_i[0]),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(count_value_i[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(count_value_i[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(count_value_i[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(count_value_i[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(count_value_i[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(count_value_i[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(count_value_i[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(count_value_i[8]),
        .R(wrst_busy));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_7 
       (.I0(count_value_i[8]),
        .I1(Q[8]),
        .I2(count_value_i[7]),
        .I3(Q[7]),
        .I4(Q[6]),
        .I5(count_value_i[6]),
        .O(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_8 
       (.I0(count_value_i[5]),
        .I1(Q[5]),
        .I2(count_value_i[4]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(count_value_i[3]),
        .O(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_9 
       (.I0(count_value_i[2]),
        .I1(Q[2]),
        .I2(count_value_i[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(count_value_i[0]),
        .O(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_9_n_0 ));
  CARRY4 \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3 
       (.CI(1'b0),
        .CO({\NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_CO_UNCONNECTED [3],CO,\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_n_2 ,\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_7_n_0 ,\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_8_n_0 ,\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_9_n_0 }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module design_1_eth_rx_0_2_xpm_counter_updn__parameterized1
   (ram_full_i0,
    E,
    Q,
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ,
    wr_en,
    rst_d1,
    CO,
    wrst_busy,
    wr_clk);
  output ram_full_i0;
  input [0:0]E;
  input [8:0]Q;
  input \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  input wr_en;
  input rst_d1;
  input [0:0]CO;
  input wrst_busy;
  input wr_clk;

  wire [0:0]CO;
  wire [0:0]E;
  wire [8:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[8]_i_1__1_n_0 ;
  wire \count_value_i[8]_i_2__0_n_0 ;
  wire \count_value_i_reg_n_0_[0] ;
  wire \count_value_i_reg_n_0_[1] ;
  wire \count_value_i_reg_n_0_[2] ;
  wire \count_value_i_reg_n_0_[3] ;
  wire \count_value_i_reg_n_0_[4] ;
  wire \count_value_i_reg_n_0_[5] ;
  wire \count_value_i_reg_n_0_[6] ;
  wire \count_value_i_reg_n_0_[7] ;
  wire \count_value_i_reg_n_0_[8] ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_4_n_0 ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_n_2 ;
  wire \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_n_3 ;
  wire going_full0;
  wire ram_full_i0;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;
  wire [3:3]\NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(\count_value_i_reg_n_0_[0] ),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(\count_value_i_reg_n_0_[0] ),
        .I1(\count_value_i_reg_n_0_[1] ),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(\count_value_i_reg_n_0_[1] ),
        .I1(\count_value_i_reg_n_0_[0] ),
        .I2(\count_value_i_reg_n_0_[2] ),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(\count_value_i_reg_n_0_[2] ),
        .I1(\count_value_i_reg_n_0_[0] ),
        .I2(\count_value_i_reg_n_0_[1] ),
        .I3(\count_value_i_reg_n_0_[3] ),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(\count_value_i_reg_n_0_[3] ),
        .I1(\count_value_i_reg_n_0_[1] ),
        .I2(\count_value_i_reg_n_0_[0] ),
        .I3(\count_value_i_reg_n_0_[2] ),
        .I4(\count_value_i_reg_n_0_[4] ),
        .O(\count_value_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[5]_i_1__1 
       (.I0(\count_value_i[8]_i_2__0_n_0 ),
        .I1(\count_value_i_reg_n_0_[5] ),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[6]_i_1__1 
       (.I0(\count_value_i_reg_n_0_[5] ),
        .I1(\count_value_i[8]_i_2__0_n_0 ),
        .I2(\count_value_i_reg_n_0_[6] ),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(\count_value_i[8]_i_2__0_n_0 ),
        .I1(\count_value_i_reg_n_0_[5] ),
        .I2(\count_value_i_reg_n_0_[6] ),
        .I3(\count_value_i_reg_n_0_[7] ),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__1 
       (.I0(\count_value_i[8]_i_2__0_n_0 ),
        .I1(\count_value_i_reg_n_0_[7] ),
        .I2(\count_value_i_reg_n_0_[6] ),
        .I3(\count_value_i_reg_n_0_[5] ),
        .I4(\count_value_i_reg_n_0_[8] ),
        .O(\count_value_i[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[8]_i_2__0 
       (.I0(\count_value_i_reg_n_0_[3] ),
        .I1(\count_value_i_reg_n_0_[1] ),
        .I2(E),
        .I3(\count_value_i_reg_n_0_[0] ),
        .I4(\count_value_i_reg_n_0_[2] ),
        .I5(\count_value_i_reg_n_0_[4] ),
        .O(\count_value_i[8]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(\count_value_i_reg_n_0_[0] ),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(\count_value_i_reg_n_0_[1] ),
        .S(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(\count_value_i_reg_n_0_[2] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(\count_value_i_reg_n_0_[3] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(\count_value_i_reg_n_0_[4] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(\count_value_i_reg_n_0_[5] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(\count_value_i_reg_n_0_[6] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(\count_value_i_reg_n_0_[7] ),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[8]_i_1__1_n_0 ),
        .Q(\count_value_i_reg_n_0_[8] ),
        .R(wrst_busy));
  LUT5 #(
    .INIT(32'hFFFF0020)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_1 
       (.I0(going_full0),
        .I1(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg ),
        .I2(wr_en),
        .I3(rst_d1),
        .I4(CO),
        .O(ram_full_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_4 
       (.I0(\count_value_i_reg_n_0_[8] ),
        .I1(Q[8]),
        .I2(\count_value_i_reg_n_0_[7] ),
        .I3(Q[7]),
        .I4(Q[6]),
        .I5(\count_value_i_reg_n_0_[6] ),
        .O(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_5 
       (.I0(\count_value_i_reg_n_0_[5] ),
        .I1(Q[5]),
        .I2(\count_value_i_reg_n_0_[4] ),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(\count_value_i_reg_n_0_[3] ),
        .O(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_6 
       (.I0(\count_value_i_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(\count_value_i_reg_n_0_[1] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\count_value_i_reg_n_0_[0] ),
        .O(\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_6_n_0 ));
  CARRY4 \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2 
       (.CI(1'b0),
        .CO({\NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_CO_UNCONNECTED [3],going_full0,\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_n_2 ,\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_4_n_0 ,\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_5_n_0 ,\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_6_n_0 }));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_SYNC_STAGES = "2" *) (* DOUT_RESET_VALUE = "0" *) 
(* ECC_MODE = "no_ecc" *) (* EN_ADV_FEATURE_ASYNC = "16'b0000000000000000" *) (* EN_SIM_ASSERT_ERR = "warning" *) 
(* FIFO_MEMORY_TYPE = "block" *) (* FIFO_READ_LATENCY = "1" *) (* FIFO_WRITE_DEPTH = "512" *) 
(* FULL_RESET_VALUE = "0" *) (* ORIG_REF_NAME = "xpm_fifo_async" *) (* PROG_EMPTY_THRESH = "10" *) 
(* PROG_FULL_THRESH = "500" *) (* P_COMMON_CLOCK = "0" *) (* P_ECC_MODE = "0" *) 
(* P_FIFO_MEMORY_TYPE = "2" *) (* P_READ_MODE = "0" *) (* P_WAKEUP_TIME = "2" *) 
(* RD_DATA_COUNT_WIDTH = "1" *) (* READ_DATA_WIDTH = "10" *) (* READ_MODE = "std" *) 
(* RELATED_CLOCKS = "0" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0000" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "10" *) (* WR_DATA_COUNT_WIDTH = "1" *) 
(* XPM_MODULE = "TRUE" *) (* dont_touch = "true" *) 
module design_1_eth_rx_0_2_xpm_fifo_async
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [9:0]din;
  output full;
  output prog_full;
  output [0:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [9:0]dout;
  output empty;
  output prog_empty;
  output [0:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [9:0]din;
  wire [9:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_empty_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_full_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_data_valid_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_overflow_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_prog_empty_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_prog_full_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_underflow_UNCONNECTED ;
  wire \NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_ack_UNCONNECTED ;
  wire [0:0]\NLW_gnuram_async_fifo.xpm_fifo_base_inst_rd_data_count_UNCONNECTED ;
  wire [0:0]\NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_data_count_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0000000000000000" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b0" *) 
  (* EN_OF = "1'b0" *) 
  (* EN_PE = "1'b0" *) 
  (* EN_PF = "1'b0" *) 
  (* EN_RDC = "1'b0" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* EN_UF = "1'b0" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b0" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "2" *) 
  (* FIFO_MEM_TYPE = "2" *) 
  (* FIFO_READ_DEPTH = "512" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_SIZE = "5120" *) 
  (* FIFO_WRITE_DEPTH = "512" *) 
  (* FULL_RESET_VALUE = "0" *) 
  (* FULL_RST_VAL = "1'b0" *) 
  (* KEEP_HIERARCHY = "SOFT" *) 
  (* PE_THRESH_ADJ = "10" *) 
  (* PE_THRESH_MAX = "509" *) 
  (* PE_THRESH_MIN = "3" *) 
  (* PF_THRESH_ADJ = "500" *) 
  (* PF_THRESH_MAX = "509" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "500" *) 
  (* RD_DATA_COUNT_WIDTH = "1" *) 
  (* RD_DC_WIDTH_EXT = "10" *) 
  (* RD_LATENCY = "1" *) 
  (* RD_MODE = "0" *) 
  (* RD_PNTR_WIDTH = "9" *) 
  (* READ_DATA_WIDTH = "10" *) 
  (* READ_MODE = "0" *) 
  (* READ_MODE_LL = "0" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0000" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "10" *) 
  (* WR_DATA_COUNT_WIDTH = "1" *) 
  (* WR_DC_WIDTH_EXT = "10" *) 
  (* WR_DEPTH_LOG = "9" *) 
  (* WR_PNTR_WIDTH = "9" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "4" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  design_1_eth_rx_0_2_xpm_fifo_base \gnuram_async_fifo.xpm_fifo_base_inst 
       (.almost_empty(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_empty_UNCONNECTED ),
        .almost_full(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_full_UNCONNECTED ),
        .data_valid(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_data_valid_UNCONNECTED ),
        .dbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED ),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .full_n(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED ),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_overflow_UNCONNECTED ),
        .prog_empty(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_prog_empty_UNCONNECTED ),
        .prog_full(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_prog_full_UNCONNECTED ),
        .rd_clk(rd_clk),
        .rd_data_count(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_rd_data_count_UNCONNECTED [0]),
        .rd_en(rd_en),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .sbiterr(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED ),
        .sleep(sleep),
        .underflow(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_underflow_UNCONNECTED ),
        .wr_ack(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_ack_UNCONNECTED ),
        .wr_clk(wr_clk),
        .wr_data_count(\NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_data_count_UNCONNECTED [0]),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "0" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0000000000000000" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b0" *) (* EN_OF = "1'b0" *) (* EN_PE = "1'b0" *) 
(* EN_PF = "1'b0" *) (* EN_RDC = "1'b0" *) (* EN_SIM_ASSERT_ERR = "warning" *) 
(* EN_UF = "1'b0" *) (* EN_WACK = "1'b0" *) (* EN_WDC = "1'b0" *) 
(* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "2" *) (* FIFO_MEM_TYPE = "2" *) 
(* FIFO_READ_DEPTH = "512" *) (* FIFO_READ_LATENCY = "1" *) (* FIFO_SIZE = "5120" *) 
(* FIFO_WRITE_DEPTH = "512" *) (* FULL_RESET_VALUE = "0" *) (* FULL_RST_VAL = "1'b0" *) 
(* ORIG_REF_NAME = "xpm_fifo_base" *) (* PE_THRESH_ADJ = "10" *) (* PE_THRESH_MAX = "509" *) 
(* PE_THRESH_MIN = "3" *) (* PF_THRESH_ADJ = "500" *) (* PF_THRESH_MAX = "509" *) 
(* PF_THRESH_MIN = "5" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "500" *) 
(* RD_DATA_COUNT_WIDTH = "1" *) (* RD_DC_WIDTH_EXT = "10" *) (* RD_LATENCY = "1" *) 
(* RD_MODE = "0" *) (* RD_PNTR_WIDTH = "9" *) (* READ_DATA_WIDTH = "10" *) 
(* READ_MODE = "0" *) (* READ_MODE_LL = "0" *) (* RELATED_CLOCKS = "0" *) 
(* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0000" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) 
(* WRITE_DATA_WIDTH = "10" *) (* WR_DATA_COUNT_WIDTH = "1" *) (* WR_DC_WIDTH_EXT = "10" *) 
(* WR_DEPTH_LOG = "9" *) (* WR_PNTR_WIDTH = "9" *) (* WR_RD_RATIO = "0" *) 
(* WR_WIDTH_LOG = "4" *) (* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) 
(* invalid = "0" *) (* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) 
(* stage2_valid = "1" *) 
module design_1_eth_rx_0_2_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [9:0]din;
  output full;
  output full_n;
  output prog_full;
  output [0:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [9:0]dout;
  output empty;
  output prog_empty;
  output [0:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [9:0]din;
  wire [9:0]dout;
  wire empty;
  wire empty_i0;
  wire full;
  wire \gen_cdc_pntr.rpw_gray_reg_n_0 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_1 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_2 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_3 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_4 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_5 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_6 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_7 ;
  wire \gen_cdc_pntr.rpw_gray_reg_n_8 ;
  wire leaving_full;
  wire ram_full_i0;
  wire ram_rd_en_i;
  wire ram_wr_en_i;
  wire rd_clk;
  wire rd_en;
  wire [9:0]rd_pntr_ext;
  wire [8:0]rd_pntr_wr_cdc;
  wire rd_rst_busy;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rdpp1_inst_n_6;
  wire rdpp1_inst_n_7;
  wire rdpp1_inst_n_8;
  wire rst;
  wire rst_d1;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire [9:0]wr_pntr_ext;
  wire [8:0]wr_pntr_rd_cdc;
  wire wr_rst_busy;
  wire wrst_busy;
  wire [9:0]\NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_dest_out_bin_UNCONNECTED ;
  wire [9:0]\NLW_gen_cdc_pntr.wr_pntr_cdc_dc_inst_dest_out_bin_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [9:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign full_n = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "10" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0 \gen_cdc_pntr.rd_pntr_cdc_dc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(\NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_dest_out_bin_UNCONNECTED [9:0]),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "9" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_eth_rx_0_2_xpm_cdc_gray \gen_cdc_pntr.rd_pntr_cdc_inst 
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr_cdc),
        .src_clk(rd_clk),
        .src_in_bin(rd_pntr_ext[8:0]));
  design_1_eth_rx_0_2_xpm_fifo_reg_vec \gen_cdc_pntr.rpw_gray_reg 
       (.D(rd_pntr_wr_cdc),
        .Q({\gen_cdc_pntr.rpw_gray_reg_n_0 ,\gen_cdc_pntr.rpw_gray_reg_n_1 ,\gen_cdc_pntr.rpw_gray_reg_n_2 ,\gen_cdc_pntr.rpw_gray_reg_n_3 ,\gen_cdc_pntr.rpw_gray_reg_n_4 ,\gen_cdc_pntr.rpw_gray_reg_n_5 ,\gen_cdc_pntr.rpw_gray_reg_n_6 ,\gen_cdc_pntr.rpw_gray_reg_n_7 ,\gen_cdc_pntr.rpw_gray_reg_n_8 }),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  design_1_eth_rx_0_2_xpm_fifo_reg_vec_0 \gen_cdc_pntr.wpr_gray_reg 
       (.D(wr_pntr_rd_cdc),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8}),
        .SR(rd_rst_busy),
        .empty_i0(empty_i0),
        .\gen_pf_ic_rc.ram_empty_i_reg (empty),
        .\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 (rd_pntr_ext[8:0]),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "10" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0__1 \gen_cdc_pntr.wr_pntr_cdc_dc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(\NLW_gen_cdc_pntr.wr_pntr_cdc_dc_inst_dest_out_bin_UNCONNECTED [9:0]),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* REG_OUTPUT = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "9" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_eth_rx_0_2_xpm_cdc_gray__1 \gen_cdc_pntr.wr_pntr_cdc_inst 
       (.dest_clk(rd_clk),
        .dest_out_bin(wr_pntr_rd_cdc),
        .src_clk(wr_clk),
        .src_in_bin(wr_pntr_ext[8:0]));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_full_i0),
        .Q(full),
        .R(wrst_busy));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pf_ic_rc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(empty_i0),
        .Q(empty),
        .S(rd_rst_busy));
  (* ADDR_WIDTH_A = "9" *) 
  (* ADDR_WIDTH_B = "9" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "10" *) 
  (* BYTE_WRITE_WIDTH_B = "10" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "1" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "SOFT" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "9" *) 
  (* \MEM.ADDRESS_SPACE_END  = "1023" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "10" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "5120" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "512" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "10" *) 
  (* P_MIN_WIDTH_DATA_A = "10" *) 
  (* P_MIN_WIDTH_DATA_B = "10" *) 
  (* P_MIN_WIDTH_DATA_ECC = "10" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "10" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_COL_READ_A = "1" *) 
  (* P_NUM_COL_READ_B = "1" *) 
  (* P_NUM_COL_WRITE_A = "1" *) 
  (* P_NUM_COL_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "no" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) 
  (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) 
  (* P_WIDTH_ADDR_READ_A = "9" *) 
  (* P_WIDTH_ADDR_READ_B = "9" *) 
  (* P_WIDTH_ADDR_WRITE_A = "9" *) 
  (* P_WIDTH_ADDR_WRITE_B = "9" *) 
  (* P_WIDTH_COL_WRITE_A = "10" *) 
  (* P_WIDTH_COL_WRITE_B = "10" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "10" *) 
  (* READ_DATA_WIDTH_B = "10" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "10" *) 
  (* WRITE_DATA_WIDTH_B = "10" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "12" *) 
  (* rstb_loop_iter = "12" *) 
  design_1_eth_rx_0_2_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext[8:0]),
        .addrb(rd_pntr_ext[8:0]),
        .clka(wr_clk),
        .clkb(rd_clk),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [9:0]),
        .doutb(dout),
        .ena(1'b0),
        .enb(ram_rd_en_i),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rstb(rd_rst_busy),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_i),
        .web(1'b0));
  design_1_eth_rx_0_2_xpm_counter_updn rdp_inst
       (.E(ram_rd_en_i),
        .Q(rd_pntr_ext),
        .SR(rd_rst_busy),
        .\count_value_i_reg[9]_0 (empty),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  design_1_eth_rx_0_2_xpm_counter_updn__parameterized0 rdpp1_inst
       (.E(ram_rd_en_i),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8}),
        .SR(rd_rst_busy),
        .\count_value_i_reg[5]_0 (empty),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  design_1_eth_rx_0_2_xpm_fifo_reg_bit rst_d1_inst
       (.E(ram_wr_en_i),
        .\count_value_i_reg[8] (full),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  design_1_eth_rx_0_2_xpm_counter_updn_1 wrp_inst
       (.E(ram_wr_en_i),
        .Q(wr_pntr_ext),
        .\count_value_i_reg[5]_0 (full),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  design_1_eth_rx_0_2_xpm_counter_updn__parameterized0_2 wrpp1_inst
       (.CO(leaving_full),
        .E(ram_wr_en_i),
        .Q({\gen_cdc_pntr.rpw_gray_reg_n_0 ,\gen_cdc_pntr.rpw_gray_reg_n_1 ,\gen_cdc_pntr.rpw_gray_reg_n_2 ,\gen_cdc_pntr.rpw_gray_reg_n_3 ,\gen_cdc_pntr.rpw_gray_reg_n_4 ,\gen_cdc_pntr.rpw_gray_reg_n_5 ,\gen_cdc_pntr.rpw_gray_reg_n_6 ,\gen_cdc_pntr.rpw_gray_reg_n_7 ,\gen_cdc_pntr.rpw_gray_reg_n_8 }),
        .wr_clk(wr_clk),
        .wrst_busy(wrst_busy));
  design_1_eth_rx_0_2_xpm_counter_updn__parameterized1 wrpp2_inst
       (.CO(leaving_full),
        .E(ram_wr_en_i),
        .Q({\gen_cdc_pntr.rpw_gray_reg_n_0 ,\gen_cdc_pntr.rpw_gray_reg_n_1 ,\gen_cdc_pntr.rpw_gray_reg_n_2 ,\gen_cdc_pntr.rpw_gray_reg_n_3 ,\gen_cdc_pntr.rpw_gray_reg_n_4 ,\gen_cdc_pntr.rpw_gray_reg_n_5 ,\gen_cdc_pntr.rpw_gray_reg_n_6 ,\gen_cdc_pntr.rpw_gray_reg_n_7 ,\gen_cdc_pntr.rpw_gray_reg_n_8 }),
        .\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg (full),
        .ram_full_i0(ram_full_i0),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wrst_busy(wrst_busy));
  design_1_eth_rx_0_2_xpm_fifo_rst xpm_fifo_rst_inst
       (.SR(rd_rst_busy),
        .rd_clk(rd_clk),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_rst_busy(wr_rst_busy),
        .wrst_busy(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module design_1_eth_rx_0_2_xpm_fifo_reg_bit
   (rst_d1,
    E,
    wrst_busy,
    wr_clk,
    \count_value_i_reg[8] ,
    wr_en);
  output rst_d1;
  output [0:0]E;
  input wrst_busy;
  input wr_clk;
  input \count_value_i_reg[8] ;
  input wr_en;

  wire [0:0]E;
  wire \count_value_i_reg[8] ;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    d_out_int_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(wrst_busy),
        .Q(rst_d1),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0004)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(\count_value_i_reg[8] ),
        .I1(wr_en),
        .I2(rst_d1),
        .I3(wrst_busy),
        .O(E));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module design_1_eth_rx_0_2_xpm_fifo_reg_vec
   (Q,
    wrst_busy,
    D,
    wr_clk);
  output [8:0]Q;
  input wrst_busy;
  input [8:0]D;
  input wr_clk;

  wire [8:0]D;
  wire [8:0]Q;
  wire wr_clk;
  wire wrst_busy;

  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(wrst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(wrst_busy));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_vec" *) 
module design_1_eth_rx_0_2_xpm_fifo_reg_vec_0
   (empty_i0,
    rd_en,
    \gen_pf_ic_rc.ram_empty_i_reg ,
    Q,
    \gen_pf_ic_rc.ram_empty_i_reg_i_3_0 ,
    SR,
    D,
    rd_clk);
  output empty_i0;
  input rd_en;
  input \gen_pf_ic_rc.ram_empty_i_reg ;
  input [8:0]Q;
  input [8:0]\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 ;
  input [0:0]SR;
  input [8:0]D;
  input rd_clk;

  wire [8:0]D;
  wire [8:0]Q;
  wire [0:0]SR;
  wire empty_i0;
  wire \gen_pf_ic_rc.ram_empty_i_i_4_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_5_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_6_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_7_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_8_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_i_9_n_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_i_2_n_2 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_i_2_n_3 ;
  wire [8:0]\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_i_3_n_2 ;
  wire \gen_pf_ic_rc.ram_empty_i_reg_i_3_n_3 ;
  wire going_empty0;
  wire leaving_empty;
  wire rd_clk;
  wire rd_en;
  wire [8:0]reg_out_i;
  wire [3:3]\NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hFF20)) 
    \gen_pf_ic_rc.ram_empty_i_i_1 
       (.I0(rd_en),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg ),
        .I2(going_empty0),
        .I3(leaving_empty),
        .O(empty_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_4 
       (.I0(reg_out_i[6]),
        .I1(Q[6]),
        .I2(Q[8]),
        .I3(reg_out_i[8]),
        .I4(Q[7]),
        .I5(reg_out_i[7]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_5 
       (.I0(reg_out_i[3]),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(reg_out_i[5]),
        .I4(Q[4]),
        .I5(reg_out_i[4]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_6 
       (.I0(reg_out_i[0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(reg_out_i[2]),
        .I4(Q[1]),
        .I5(reg_out_i[1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_7 
       (.I0(reg_out_i[6]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [6]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [8]),
        .I3(reg_out_i[8]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [7]),
        .I5(reg_out_i[7]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_8 
       (.I0(reg_out_i[3]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [3]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [5]),
        .I3(reg_out_i[5]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [4]),
        .I5(reg_out_i[4]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pf_ic_rc.ram_empty_i_i_9 
       (.I0(reg_out_i[0]),
        .I1(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [0]),
        .I2(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [2]),
        .I3(reg_out_i[2]),
        .I4(\gen_pf_ic_rc.ram_empty_i_reg_i_3_0 [1]),
        .I5(reg_out_i[1]),
        .O(\gen_pf_ic_rc.ram_empty_i_i_9_n_0 ));
  CARRY4 \gen_pf_ic_rc.ram_empty_i_reg_i_2 
       (.CI(1'b0),
        .CO({\NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_CO_UNCONNECTED [3],going_empty0,\gen_pf_ic_rc.ram_empty_i_reg_i_2_n_2 ,\gen_pf_ic_rc.ram_empty_i_reg_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\gen_pf_ic_rc.ram_empty_i_i_4_n_0 ,\gen_pf_ic_rc.ram_empty_i_i_5_n_0 ,\gen_pf_ic_rc.ram_empty_i_i_6_n_0 }));
  CARRY4 \gen_pf_ic_rc.ram_empty_i_reg_i_3 
       (.CI(1'b0),
        .CO({\NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_CO_UNCONNECTED [3],leaving_empty,\gen_pf_ic_rc.ram_empty_i_reg_i_3_n_2 ,\gen_pf_ic_rc.ram_empty_i_reg_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\gen_pf_ic_rc.ram_empty_i_i_7_n_0 ,\gen_pf_ic_rc.ram_empty_i_i_8_n_0 ,\gen_pf_ic_rc.ram_empty_i_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(reg_out_i[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(reg_out_i[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(reg_out_i[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(reg_out_i[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(reg_out_i[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(reg_out_i[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(reg_out_i[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(reg_out_i[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \reg_out_i_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(reg_out_i[8]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module design_1_eth_rx_0_2_xpm_fifo_rst
   (SR,
    wrst_busy,
    wr_rst_busy,
    rd_clk,
    wr_clk,
    rst_d1,
    rst);
  output [0:0]SR;
  output wrst_busy;
  output wr_rst_busy;
  input rd_clk;
  input wr_clk;
  input rst_d1;
  input rst;

  wire \/i__n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ;
  wire \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ;
  wire [0:0]SR;
  (* RTL_KEEP = "yes" *) wire [1:0]\gen_rst_ic.curr_rrst_state ;
  wire \gen_rst_ic.fifo_rd_rst_i ;
  wire \gen_rst_ic.fifo_rd_rst_wr_i ;
  wire \gen_rst_ic.fifo_wr_rst_ic ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ;
  wire \gen_rst_ic.fifo_wr_rst_rd ;
  wire [1:0]\gen_rst_ic.next_rrst_state ;
  wire \gen_rst_ic.rst_seq_reentered_i_1_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_i_2_n_0 ;
  wire \gen_rst_ic.rst_seq_reentered_reg_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ;
  wire \gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rd_clk;
  wire rst;
  wire rst_d1;
  wire rst_i__0;
  wire wr_clk;
  wire wr_rst_busy;
  wire wrst_busy;

  LUT5 #(
    .INIT(32'h00010116)) 
    \/i_ 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\/i__n_0 ));
  LUT6 #(
    .INIT(64'h03030200FFFFFFFF)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(p_0_in),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I5(\/i__n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFEEE)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I3(rst),
        .I4(p_0_in),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0EEE0FFFFEEE0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(rst),
        .I3(p_0_in),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I5(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000C0008)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I1(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I2(rst),
        .I3(p_0_in),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004400000044)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1 
       (.I0(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .I3(rst),
        .I4(p_0_in),
        .I5(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1 
       (.I0(\/i__n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(p_0_in),
        .I2(rst),
        .I3(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0 ),
        .Q(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .R(\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1 
       (.I0(\gen_rst_ic.curr_rrst_state [0]),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .O(\gen_rst_ic.next_rrst_state [1]));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [0]),
        .Q(\gen_rst_ic.curr_rrst_state [0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.next_rrst_state [1]),
        .Q(\gen_rst_ic.curr_rrst_state [1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h06)) 
    \__0/i_ 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.next_rrst_state [0]));
  LUT3 #(
    .INIT(8'h3E)) 
    \gen_rst_ic.fifo_rd_rst_ic_i_1 
       (.I0(\gen_rst_ic.fifo_wr_rst_rd ),
        .I1(\gen_rst_ic.curr_rrst_state [1]),
        .I2(\gen_rst_ic.curr_rrst_state [0]),
        .O(\gen_rst_ic.fifo_rd_rst_i ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_rd_rst_i ),
        .Q(SR),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEAFFFFFFEA0000)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_1 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I2(rst_i__0),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I4(\gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ),
        .I5(\gen_rst_ic.fifo_wr_rst_ic ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_2 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i__0));
  LUT5 #(
    .INIT(32'h00010116)) 
    \gen_rst_ic.fifo_wr_rst_ic_i_3 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.fifo_wr_rst_ic_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.fifo_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.fifo_wr_rst_ic_i_1_n_0 ),
        .Q(\gen_rst_ic.fifo_wr_rst_ic ),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_eth_rx_0_2_xpm_cdc_sync_rst \gen_rst_ic.rrst_wr_inst 
       (.dest_clk(wr_clk),
        .dest_rst(\gen_rst_ic.fifo_rd_rst_wr_i ),
        .src_rst(SR));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \gen_rst_ic.rst_seq_reentered_i_1 
       (.I0(\gen_rst_ic.rst_seq_reentered_i_2_n_0 ),
        .I1(rst),
        .I2(p_0_in),
        .O(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \gen_rst_ic.rst_seq_reentered_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .I5(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .O(\gen_rst_ic.rst_seq_reentered_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.rst_seq_reentered_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.rst_seq_reentered_i_1_n_0 ),
        .Q(\gen_rst_ic.rst_seq_reentered_reg_n_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFFEF00)) 
    \gen_rst_ic.wr_rst_busy_ic_i_1 
       (.I0(rst),
        .I1(p_0_in),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I3(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ),
        .I4(wrst_busy),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000116)) 
    \gen_rst_ic.wr_rst_busy_ic_i_2 
       (.I0(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4] ),
        .O(\gen_rst_ic.wr_rst_busy_ic_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_ic.wr_rst_busy_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_ic.wr_rst_busy_ic_i_1_n_0 ),
        .Q(wrst_busy),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "2" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  design_1_eth_rx_0_2_xpm_cdc_sync_rst__1 \gen_rst_ic.wrst_rd_inst 
       (.dest_clk(rd_clk),
        .dest_rst(\gen_rst_ic.fifo_wr_rst_rd ),
        .src_rst(\gen_rst_ic.fifo_wr_rst_ic ));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    wr_rst_busy_INST_0
       (.I0(wrst_busy),
        .I1(rst_d1),
        .O(wr_rst_busy));
endmodule

(* ADDR_WIDTH_A = "9" *) (* ADDR_WIDTH_B = "9" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "10" *) (* BYTE_WRITE_WIDTH_B = "10" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "1" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "2" *) (* MEMORY_SIZE = "5120" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "0" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "512" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "block" *) 
(* P_MIN_WIDTH_DATA = "10" *) (* P_MIN_WIDTH_DATA_A = "10" *) (* P_MIN_WIDTH_DATA_B = "10" *) 
(* P_MIN_WIDTH_DATA_ECC = "10" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "10" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_COL_READ_A = "1" *) 
(* P_NUM_COL_READ_B = "1" *) (* P_NUM_COL_WRITE_A = "1" *) (* P_NUM_COL_WRITE_B = "1" *) 
(* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) 
(* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "no" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
(* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) 
(* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) (* P_WIDTH_ADDR_READ_A = "9" *) (* P_WIDTH_ADDR_READ_B = "9" *) 
(* P_WIDTH_ADDR_WRITE_A = "9" *) (* P_WIDTH_ADDR_WRITE_B = "9" *) (* P_WIDTH_COL_WRITE_A = "10" *) 
(* P_WIDTH_COL_WRITE_B = "10" *) (* RAM_DECOMP = "auto" *) (* READ_DATA_WIDTH_A = "10" *) 
(* READ_DATA_WIDTH_B = "10" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "1" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "10" *) (* WRITE_DATA_WIDTH_B = "10" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "12" *) 
(* rstb_loop_iter = "12" *) 
module design_1_eth_rx_0_2_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [8:0]addra;
  input [9:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [9:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [8:0]addrb;
  input [9:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [9:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [8:0]addra;
  wire [8:0]addrb;
  wire clka;
  wire clkb;
  wire [9:0]dina;
  wire [9:0]doutb;
  wire enb;
  wire \gen_wr_a.gen_word_narrow.mem_reg_i_1_n_0 ;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [15:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOADO_UNCONNECTED ;
  wire [15:10]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d10" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "9" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d10" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "9" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "5120" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "9" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \gen_wr_a.gen_word_narrow.mem_reg 
       (.ADDRARDADDR({1'b0,addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,addrb,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOBDO_UNCONNECTED [15:10],doutb}),
        .DOPADOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(wea),
        .ENBWREN(\gen_wr_a.gen_word_narrow.mem_reg_i_1_n_0 ),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(rstb),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_a.gen_word_narrow.mem_reg_i_1 
       (.I0(rstb),
        .I1(enb),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_i_1_n_0 ));
endmodule
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
