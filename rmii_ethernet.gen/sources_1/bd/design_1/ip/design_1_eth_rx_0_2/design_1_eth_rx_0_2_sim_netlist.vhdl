-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Sun Jun 14 20:21:48 2026
-- Host        : GREENGOBLIN running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/ameen.shaikh/Desktop/projects/rmii_ethernet/rmii_ethernet.gen/sources_1/bd/design_1/ip/design_1_eth_rx_0_2/design_1_eth_rx_0_2_sim_netlist.vhdl
-- Design      : design_1_eth_rx_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_eth_rx_0_2_dma_axi_writer is
  port (
    last_reg : out STD_LOGIC;
    chunk_buf_id_reg : out STD_LOGIC;
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    last_reg_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    M_AXI_WREADY_0 : out STD_LOGIC;
    M_AXI_WREADY_1 : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg\ : out STD_LOGIC;
    \chunk_byte_count_reg_reg[3]_0\ : out STD_LOGIC;
    M_AXI_WLAST : out STD_LOGIC;
    \chunk_byte_count_reg_reg[4]_0\ : out STD_LOGIC;
    \FSM_onehot_axi_writer_state_reg_reg[3]_0\ : out STD_LOGIC;
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \FSM_onehot_axi_writer_state_reg_reg[3]_1\ : out STD_LOGIC;
    \FSM_onehot_axi_writer_state_reg_reg[3]_2\ : out STD_LOGIC;
    chunk_buf_id_reg_reg_0 : in STD_LOGIC;
    last_reg_reg_1 : in STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    chunk_buf_id_reg_reg_1 : in STD_LOGIC;
    M_AXI_BVALID : in STD_LOGIC;
    \FSM_sequential_dma_state_reg_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_dma_state_reg_reg[0]_0\ : in STD_LOGIC;
    dma_state_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \buf_addr_reg_reg[0]_0\ : in STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    \FSM_onehot_axi_writer_state_reg_reg[0]_0\ : in STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    \FSM_onehot_axi_writer_state_reg_reg[0]_1\ : in STD_LOGIC;
    \wr_addr_offset_reg_reg[31]_0\ : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_WDATA_0_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[0]_0\ : in STD_LOGIC;
    M_AXI_WDATA_1_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[1]_0\ : in STD_LOGIC;
    M_AXI_WDATA_2_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[2]_0\ : in STD_LOGIC;
    M_AXI_WDATA_3_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[3]_0\ : in STD_LOGIC;
    M_AXI_WDATA_4_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[4]_0\ : in STD_LOGIC;
    M_AXI_WDATA_5_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[5]_0\ : in STD_LOGIC;
    M_AXI_WDATA_6_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[6]_0\ : in STD_LOGIC;
    M_AXI_WDATA_7_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[7]_0\ : in STD_LOGIC;
    M_AXI_WDATA_8_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[8]_0\ : in STD_LOGIC;
    M_AXI_WDATA_9_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[9]_0\ : in STD_LOGIC;
    M_AXI_WDATA_10_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[10]_0\ : in STD_LOGIC;
    M_AXI_WDATA_11_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[11]_0\ : in STD_LOGIC;
    M_AXI_WDATA_12_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[12]_0\ : in STD_LOGIC;
    M_AXI_WDATA_13_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[13]_0\ : in STD_LOGIC;
    M_AXI_WDATA_14_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[14]_0\ : in STD_LOGIC;
    M_AXI_WDATA_15_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[15]_0\ : in STD_LOGIC;
    M_AXI_WDATA_16_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[16]_0\ : in STD_LOGIC;
    M_AXI_WDATA_17_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[17]_0\ : in STD_LOGIC;
    M_AXI_WDATA_18_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[18]_0\ : in STD_LOGIC;
    M_AXI_WDATA_19_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[19]_0\ : in STD_LOGIC;
    M_AXI_WDATA_20_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[20]_0\ : in STD_LOGIC;
    M_AXI_WDATA_21_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[21]_0\ : in STD_LOGIC;
    M_AXI_WDATA_22_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[22]_0\ : in STD_LOGIC;
    M_AXI_WDATA_23_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[23]_0\ : in STD_LOGIC;
    M_AXI_WDATA_24_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[24]_0\ : in STD_LOGIC;
    M_AXI_WDATA_25_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[25]_0\ : in STD_LOGIC;
    M_AXI_WDATA_26_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[26]_0\ : in STD_LOGIC;
    M_AXI_WDATA_27_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[27]_0\ : in STD_LOGIC;
    M_AXI_WDATA_28_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[28]_0\ : in STD_LOGIC;
    M_AXI_WDATA_29_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[29]_0\ : in STD_LOGIC;
    M_AXI_WDATA_30_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[30]_0\ : in STD_LOGIC;
    M_AXI_WDATA_31_sp_1 : in STD_LOGIC;
    \M_AXI_WDATA[31]_0\ : in STD_LOGIC;
    \M_AXI_WDATA[0]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[0]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[0]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[1]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[1]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[1]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[2]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[2]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[2]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[3]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[3]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[3]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[4]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[4]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[4]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[5]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[5]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[5]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[6]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[6]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[6]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[7]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[7]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[7]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[8]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[8]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[8]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[9]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[9]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[9]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[10]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[10]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[10]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[11]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[11]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[11]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[12]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[12]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[12]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[13]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[13]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[13]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[14]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[14]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[14]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[15]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[15]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[15]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[16]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[16]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[16]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[17]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[17]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[17]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[18]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[18]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[18]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[19]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[19]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[19]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[20]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[20]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[20]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[21]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[21]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[21]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[22]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[22]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[22]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[23]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[23]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[23]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[24]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[24]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[24]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[25]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[25]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[25]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[26]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[26]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[26]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[27]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[27]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[27]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[28]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[28]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[28]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[29]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[29]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[29]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[30]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[30]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[30]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[31]_1\ : in STD_LOGIC;
    \M_AXI_WDATA[31]_2\ : in STD_LOGIC;
    \M_AXI_WDATA[31]_3\ : in STD_LOGIC;
    \M_AXI_WDATA[0]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[0]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[0]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[1]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[1]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[1]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[2]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[2]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[2]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[3]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[3]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[3]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[4]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[4]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[4]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[5]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[5]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[5]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[6]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[6]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[6]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[7]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[7]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[7]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[8]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[8]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[8]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[9]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[9]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[9]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[10]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[10]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[10]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[11]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[11]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[11]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[12]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[12]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[12]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[13]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[13]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[13]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[14]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[14]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[14]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[15]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[15]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[15]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[16]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[16]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[16]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[17]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[17]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[17]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[18]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[18]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[18]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[19]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[19]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[19]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[20]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[20]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[20]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[21]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[21]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[21]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[22]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[22]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[22]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[23]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[23]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[23]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[24]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[24]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[24]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[25]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[25]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[25]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[26]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[26]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[26]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[27]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[27]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[27]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[28]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[28]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[28]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[29]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[29]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[29]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[30]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[30]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[30]_6\ : in STD_LOGIC;
    \M_AXI_WDATA[31]_4\ : in STD_LOGIC;
    \M_AXI_WDATA[31]_5\ : in STD_LOGIC;
    \M_AXI_WDATA[31]_6\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \chunk_byte_count_reg_reg[4]_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    last_next : in STD_LOGIC;
    buf_id_next : in STD_LOGIC;
    \wr_addr_offset_reg_reg[0]_0\ : in STD_LOGIC;
    wr_addr_offset_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_base_addr_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wr_base_addr_reg_reg[30]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wr_base_addr_reg_reg[26]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wr_base_addr_reg_reg[22]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wr_base_addr_reg_reg[18]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wr_base_addr_reg_reg[14]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wr_base_addr_reg_reg[10]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wr_base_addr_reg_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_eth_rx_0_2_dma_axi_writer : entity is "dma_axi_writer";
end design_1_eth_rx_0_2_dma_axi_writer;

architecture STRUCTURE of design_1_eth_rx_0_2_dma_axi_writer is
  signal \FSM_onehot_axi_writer_state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_writer_state_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_writer_state_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_writer_state_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__0_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__0_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__0_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__0_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__1_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__1_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__1_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__1_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__2_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__2_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__2_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__3_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__3_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__3_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__4_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__4_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__4_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__4_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__5_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__5_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__5_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__5_n_3\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__6_n_1\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__6_n_2\ : STD_LOGIC;
  signal \M_AXI_AWADDR0_carry__6_n_3\ : STD_LOGIC;
  signal M_AXI_AWADDR0_carry_i_1_n_0 : STD_LOGIC;
  signal M_AXI_AWADDR0_carry_i_2_n_0 : STD_LOGIC;
  signal M_AXI_AWADDR0_carry_i_3_n_0 : STD_LOGIC;
  signal M_AXI_AWADDR0_carry_i_4_n_0 : STD_LOGIC;
  signal M_AXI_AWADDR0_carry_n_0 : STD_LOGIC;
  signal M_AXI_AWADDR0_carry_n_1 : STD_LOGIC;
  signal M_AXI_AWADDR0_carry_n_2 : STD_LOGIC;
  signal M_AXI_AWADDR0_carry_n_3 : STD_LOGIC;
  signal \M_AXI_WDATA[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \M_AXI_WDATA[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal M_AXI_WDATA_0_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_10_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_11_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_12_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_13_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_14_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_15_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_16_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_17_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_18_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_19_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_1_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_20_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_21_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_22_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_23_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_24_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_25_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_26_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_27_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_28_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_29_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_2_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_30_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_31_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_3_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_4_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_5_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_6_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_7_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_8_sn_1 : STD_LOGIC;
  signal M_AXI_WDATA_9_sn_1 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal buf_addr_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \buf_addr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \buf_addr_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \^chunk_buf_id_reg\ : STD_LOGIC;
  signal \chunk_byte_count_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \chunk_byte_count_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \chunk_byte_count_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \chunk_byte_count_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \chunk_byte_count_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal in7 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^last_reg\ : STD_LOGIC;
  signal \wr_addr_offset_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \wr_addr_offset_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \wr_addr_offset_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \wr_addr_offset_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \wr_addr_offset_reg__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \wr_addr_offset_reg_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[31]_i_3_n_1\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \wr_addr_offset_reg_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \wr_base_addr_reg__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_M_AXI_AWADDR0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wr_addr_offset_reg_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_axi_writer_state_reg[2]_i_4\ : label is "soft_lutpair38";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_writer_state_reg_reg[0]\ : label is "s_axi_write:01000,s_wait_b:10000,s_awvalid:00100,s_idle:00001,s_recv_chunk:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_writer_state_reg_reg[1]\ : label is "s_axi_write:01000,s_wait_b:10000,s_awvalid:00100,s_idle:00001,s_recv_chunk:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_writer_state_reg_reg[2]\ : label is "s_axi_write:01000,s_wait_b:10000,s_awvalid:00100,s_idle:00001,s_recv_chunk:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_writer_state_reg_reg[3]\ : label is "s_axi_write:01000,s_wait_b:10000,s_awvalid:00100,s_idle:00001,s_recv_chunk:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_writer_state_reg_reg[4]\ : label is "s_axi_write:01000,s_wait_b:10000,s_awvalid:00100,s_idle:00001,s_recv_chunk:00010";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of M_AXI_AWADDR0_carry : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of M_AXI_AWADDR0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \M_AXI_AWADDR0_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \M_AXI_AWADDR0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \M_AXI_AWADDR0_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \M_AXI_AWADDR0_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \M_AXI_AWADDR0_carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \M_AXI_AWADDR0_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \M_AXI_AWADDR0_carry__3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \M_AXI_AWADDR0_carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \M_AXI_AWADDR0_carry__4\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \M_AXI_AWADDR0_carry__4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \M_AXI_AWADDR0_carry__5\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \M_AXI_AWADDR0_carry__5\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \M_AXI_AWADDR0_carry__6\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \M_AXI_AWADDR0_carry__6\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \M_AXI_AWLEN[0]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \M_AXI_AWLEN[1]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \M_AXI_AWLEN[2]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \M_AXI_AWLEN[3]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \M_AXI_WSTRB[0]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \M_AXI_WSTRB[1]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \M_AXI_WSTRB[2]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \M_AXI_WSTRB[3]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \buf_addr_reg[1]_i_3\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \chunk_byte_count_reg[0]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \chunk_byte_count_reg[2]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \chunk_byte_count_reg[3]_i_4\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \chunk_byte_count_reg[4]_i_6\ : label is "soft_lutpair37";
  attribute ADDER_THRESHOLD of \wr_addr_offset_reg_reg[11]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \wr_addr_offset_reg_reg[11]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \wr_addr_offset_reg_reg[15]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \wr_addr_offset_reg_reg[15]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \wr_addr_offset_reg_reg[19]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \wr_addr_offset_reg_reg[19]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \wr_addr_offset_reg_reg[23]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \wr_addr_offset_reg_reg[23]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \wr_addr_offset_reg_reg[27]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \wr_addr_offset_reg_reg[27]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \wr_addr_offset_reg_reg[31]_i_3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \wr_addr_offset_reg_reg[31]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \wr_addr_offset_reg_reg[3]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \wr_addr_offset_reg_reg[3]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \wr_addr_offset_reg_reg[7]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \wr_addr_offset_reg_reg[7]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  M_AXI_WDATA_0_sn_1 <= M_AXI_WDATA_0_sp_1;
  M_AXI_WDATA_10_sn_1 <= M_AXI_WDATA_10_sp_1;
  M_AXI_WDATA_11_sn_1 <= M_AXI_WDATA_11_sp_1;
  M_AXI_WDATA_12_sn_1 <= M_AXI_WDATA_12_sp_1;
  M_AXI_WDATA_13_sn_1 <= M_AXI_WDATA_13_sp_1;
  M_AXI_WDATA_14_sn_1 <= M_AXI_WDATA_14_sp_1;
  M_AXI_WDATA_15_sn_1 <= M_AXI_WDATA_15_sp_1;
  M_AXI_WDATA_16_sn_1 <= M_AXI_WDATA_16_sp_1;
  M_AXI_WDATA_17_sn_1 <= M_AXI_WDATA_17_sp_1;
  M_AXI_WDATA_18_sn_1 <= M_AXI_WDATA_18_sp_1;
  M_AXI_WDATA_19_sn_1 <= M_AXI_WDATA_19_sp_1;
  M_AXI_WDATA_1_sn_1 <= M_AXI_WDATA_1_sp_1;
  M_AXI_WDATA_20_sn_1 <= M_AXI_WDATA_20_sp_1;
  M_AXI_WDATA_21_sn_1 <= M_AXI_WDATA_21_sp_1;
  M_AXI_WDATA_22_sn_1 <= M_AXI_WDATA_22_sp_1;
  M_AXI_WDATA_23_sn_1 <= M_AXI_WDATA_23_sp_1;
  M_AXI_WDATA_24_sn_1 <= M_AXI_WDATA_24_sp_1;
  M_AXI_WDATA_25_sn_1 <= M_AXI_WDATA_25_sp_1;
  M_AXI_WDATA_26_sn_1 <= M_AXI_WDATA_26_sp_1;
  M_AXI_WDATA_27_sn_1 <= M_AXI_WDATA_27_sp_1;
  M_AXI_WDATA_28_sn_1 <= M_AXI_WDATA_28_sp_1;
  M_AXI_WDATA_29_sn_1 <= M_AXI_WDATA_29_sp_1;
  M_AXI_WDATA_2_sn_1 <= M_AXI_WDATA_2_sp_1;
  M_AXI_WDATA_30_sn_1 <= M_AXI_WDATA_30_sp_1;
  M_AXI_WDATA_31_sn_1 <= M_AXI_WDATA_31_sp_1;
  M_AXI_WDATA_3_sn_1 <= M_AXI_WDATA_3_sp_1;
  M_AXI_WDATA_4_sn_1 <= M_AXI_WDATA_4_sp_1;
  M_AXI_WDATA_5_sn_1 <= M_AXI_WDATA_5_sp_1;
  M_AXI_WDATA_6_sn_1 <= M_AXI_WDATA_6_sp_1;
  M_AXI_WDATA_7_sn_1 <= M_AXI_WDATA_7_sp_1;
  M_AXI_WDATA_8_sn_1 <= M_AXI_WDATA_8_sp_1;
  M_AXI_WDATA_9_sn_1 <= M_AXI_WDATA_9_sp_1;
  Q(4 downto 0) <= \^q\(4 downto 0);
  chunk_buf_id_reg <= \^chunk_buf_id_reg\;
  last_reg <= \^last_reg\;
\FSM_onehot_axi_writer_state_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^last_reg\,
      I1 => \^q\(4),
      I2 => \^q\(0),
      O => \FSM_onehot_axi_writer_state_reg[1]_i_1_n_0\
    );
\FSM_onehot_axi_writer_state_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEAAA"
    )
        port map (
      I0 => \buf_addr_reg_reg[0]_0\,
      I1 => \FSM_onehot_axi_writer_state_reg[2]_i_4_n_0\,
      I2 => \^q\(3),
      I3 => M_AXI_WREADY,
      I4 => \FSM_onehot_axi_writer_state_reg_reg[0]_0\,
      I5 => \FSM_onehot_axi_writer_state_reg[2]_i_6_n_0\,
      O => \FSM_onehot_axi_writer_state_reg[2]_i_1_n_0\
    );
\FSM_onehot_axi_writer_state_reg[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000001F"
    )
        port map (
      I0 => \chunk_byte_count_reg_reg_n_0_[0]\,
      I1 => \chunk_byte_count_reg_reg_n_0_[1]\,
      I2 => \chunk_byte_count_reg_reg_n_0_[2]\,
      I3 => \chunk_byte_count_reg_reg_n_0_[3]\,
      I4 => \chunk_byte_count_reg_reg_n_0_[4]\,
      O => \FSM_onehot_axi_writer_state_reg[2]_i_4_n_0\
    );
\FSM_onehot_axi_writer_state_reg[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^q\(4),
      I1 => M_AXI_BVALID,
      I2 => M_AXI_AWREADY,
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \FSM_onehot_axi_writer_state_reg_reg[0]_1\,
      O => \FSM_onehot_axi_writer_state_reg[2]_i_6_n_0\
    );
\FSM_onehot_axi_writer_state_reg[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dout(1),
      I1 => dout(0),
      O => \gen_wr_a.gen_word_narrow.mem_reg\
    );
\FSM_onehot_axi_writer_state_reg_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => axi_aclk,
      CE => \FSM_onehot_axi_writer_state_reg[2]_i_1_n_0\,
      D => D(0),
      Q => \^q\(0),
      S => chunk_buf_id_reg_reg_0
    );
\FSM_onehot_axi_writer_state_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \FSM_onehot_axi_writer_state_reg[2]_i_1_n_0\,
      D => \FSM_onehot_axi_writer_state_reg[1]_i_1_n_0\,
      Q => \^q\(1),
      R => chunk_buf_id_reg_reg_0
    );
\FSM_onehot_axi_writer_state_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \FSM_onehot_axi_writer_state_reg[2]_i_1_n_0\,
      D => D(1),
      Q => \^q\(2),
      R => chunk_buf_id_reg_reg_0
    );
\FSM_onehot_axi_writer_state_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \FSM_onehot_axi_writer_state_reg[2]_i_1_n_0\,
      D => \^q\(2),
      Q => \^q\(3),
      R => chunk_buf_id_reg_reg_0
    );
\FSM_onehot_axi_writer_state_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => \FSM_onehot_axi_writer_state_reg[2]_i_1_n_0\,
      D => \^q\(3),
      Q => \^q\(4),
      R => chunk_buf_id_reg_reg_0
    );
\FSM_sequential_dma_state_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808000000000"
    )
        port map (
      I0 => \^last_reg\,
      I1 => M_AXI_BVALID,
      I2 => \^q\(4),
      I3 => \FSM_sequential_dma_state_reg_reg[0]\,
      I4 => \FSM_sequential_dma_state_reg_reg[0]_0\,
      I5 => dma_state_reg(1),
      O => last_reg_reg_0
    );
M_AXI_AWADDR0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => M_AXI_AWADDR0_carry_n_0,
      CO(2) => M_AXI_AWADDR0_carry_n_1,
      CO(1) => M_AXI_AWADDR0_carry_n_2,
      CO(0) => M_AXI_AWADDR0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \wr_base_addr_reg__0\(3 downto 0),
      O(3 downto 0) => M_AXI_AWADDR(3 downto 0),
      S(3) => M_AXI_AWADDR0_carry_i_1_n_0,
      S(2) => M_AXI_AWADDR0_carry_i_2_n_0,
      S(1) => M_AXI_AWADDR0_carry_i_3_n_0,
      S(0) => M_AXI_AWADDR0_carry_i_4_n_0
    );
\M_AXI_AWADDR0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => M_AXI_AWADDR0_carry_n_0,
      CO(3) => \M_AXI_AWADDR0_carry__0_n_0\,
      CO(2) => \M_AXI_AWADDR0_carry__0_n_1\,
      CO(1) => \M_AXI_AWADDR0_carry__0_n_2\,
      CO(0) => \M_AXI_AWADDR0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \wr_base_addr_reg__0\(7 downto 4),
      O(3 downto 0) => M_AXI_AWADDR(7 downto 4),
      S(3) => \M_AXI_AWADDR0_carry__0_i_1_n_0\,
      S(2) => \M_AXI_AWADDR0_carry__0_i_2_n_0\,
      S(1) => \M_AXI_AWADDR0_carry__0_i_3_n_0\,
      S(0) => \M_AXI_AWADDR0_carry__0_i_4_n_0\
    );
\M_AXI_AWADDR0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(7),
      I1 => \wr_addr_offset_reg__0\(7),
      O => \M_AXI_AWADDR0_carry__0_i_1_n_0\
    );
\M_AXI_AWADDR0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(6),
      I1 => \wr_addr_offset_reg__0\(6),
      O => \M_AXI_AWADDR0_carry__0_i_2_n_0\
    );
\M_AXI_AWADDR0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(5),
      I1 => \wr_addr_offset_reg__0\(5),
      O => \M_AXI_AWADDR0_carry__0_i_3_n_0\
    );
\M_AXI_AWADDR0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(4),
      I1 => \wr_addr_offset_reg__0\(4),
      O => \M_AXI_AWADDR0_carry__0_i_4_n_0\
    );
\M_AXI_AWADDR0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR0_carry__0_n_0\,
      CO(3) => \M_AXI_AWADDR0_carry__1_n_0\,
      CO(2) => \M_AXI_AWADDR0_carry__1_n_1\,
      CO(1) => \M_AXI_AWADDR0_carry__1_n_2\,
      CO(0) => \M_AXI_AWADDR0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \wr_base_addr_reg__0\(11 downto 8),
      O(3 downto 0) => M_AXI_AWADDR(11 downto 8),
      S(3) => \M_AXI_AWADDR0_carry__1_i_1_n_0\,
      S(2) => \M_AXI_AWADDR0_carry__1_i_2_n_0\,
      S(1) => \M_AXI_AWADDR0_carry__1_i_3_n_0\,
      S(0) => \M_AXI_AWADDR0_carry__1_i_4_n_0\
    );
\M_AXI_AWADDR0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(11),
      I1 => \wr_addr_offset_reg__0\(11),
      O => \M_AXI_AWADDR0_carry__1_i_1_n_0\
    );
\M_AXI_AWADDR0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(10),
      I1 => \wr_addr_offset_reg__0\(10),
      O => \M_AXI_AWADDR0_carry__1_i_2_n_0\
    );
\M_AXI_AWADDR0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(9),
      I1 => \wr_addr_offset_reg__0\(9),
      O => \M_AXI_AWADDR0_carry__1_i_3_n_0\
    );
\M_AXI_AWADDR0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(8),
      I1 => \wr_addr_offset_reg__0\(8),
      O => \M_AXI_AWADDR0_carry__1_i_4_n_0\
    );
\M_AXI_AWADDR0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR0_carry__1_n_0\,
      CO(3) => \M_AXI_AWADDR0_carry__2_n_0\,
      CO(2) => \M_AXI_AWADDR0_carry__2_n_1\,
      CO(1) => \M_AXI_AWADDR0_carry__2_n_2\,
      CO(0) => \M_AXI_AWADDR0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \wr_base_addr_reg__0\(15 downto 12),
      O(3 downto 0) => M_AXI_AWADDR(15 downto 12),
      S(3) => \M_AXI_AWADDR0_carry__2_i_1_n_0\,
      S(2) => \M_AXI_AWADDR0_carry__2_i_2_n_0\,
      S(1) => \M_AXI_AWADDR0_carry__2_i_3_n_0\,
      S(0) => \M_AXI_AWADDR0_carry__2_i_4_n_0\
    );
\M_AXI_AWADDR0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(15),
      I1 => \wr_addr_offset_reg__0\(15),
      O => \M_AXI_AWADDR0_carry__2_i_1_n_0\
    );
\M_AXI_AWADDR0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(14),
      I1 => \wr_addr_offset_reg__0\(14),
      O => \M_AXI_AWADDR0_carry__2_i_2_n_0\
    );
\M_AXI_AWADDR0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(13),
      I1 => \wr_addr_offset_reg__0\(13),
      O => \M_AXI_AWADDR0_carry__2_i_3_n_0\
    );
\M_AXI_AWADDR0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(12),
      I1 => \wr_addr_offset_reg__0\(12),
      O => \M_AXI_AWADDR0_carry__2_i_4_n_0\
    );
\M_AXI_AWADDR0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR0_carry__2_n_0\,
      CO(3) => \M_AXI_AWADDR0_carry__3_n_0\,
      CO(2) => \M_AXI_AWADDR0_carry__3_n_1\,
      CO(1) => \M_AXI_AWADDR0_carry__3_n_2\,
      CO(0) => \M_AXI_AWADDR0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \wr_base_addr_reg__0\(19 downto 16),
      O(3 downto 0) => M_AXI_AWADDR(19 downto 16),
      S(3) => \M_AXI_AWADDR0_carry__3_i_1_n_0\,
      S(2) => \M_AXI_AWADDR0_carry__3_i_2_n_0\,
      S(1) => \M_AXI_AWADDR0_carry__3_i_3_n_0\,
      S(0) => \M_AXI_AWADDR0_carry__3_i_4_n_0\
    );
\M_AXI_AWADDR0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(19),
      I1 => \wr_addr_offset_reg__0\(19),
      O => \M_AXI_AWADDR0_carry__3_i_1_n_0\
    );
\M_AXI_AWADDR0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(18),
      I1 => \wr_addr_offset_reg__0\(18),
      O => \M_AXI_AWADDR0_carry__3_i_2_n_0\
    );
\M_AXI_AWADDR0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(17),
      I1 => \wr_addr_offset_reg__0\(17),
      O => \M_AXI_AWADDR0_carry__3_i_3_n_0\
    );
\M_AXI_AWADDR0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(16),
      I1 => \wr_addr_offset_reg__0\(16),
      O => \M_AXI_AWADDR0_carry__3_i_4_n_0\
    );
\M_AXI_AWADDR0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR0_carry__3_n_0\,
      CO(3) => \M_AXI_AWADDR0_carry__4_n_0\,
      CO(2) => \M_AXI_AWADDR0_carry__4_n_1\,
      CO(1) => \M_AXI_AWADDR0_carry__4_n_2\,
      CO(0) => \M_AXI_AWADDR0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \wr_base_addr_reg__0\(23 downto 20),
      O(3 downto 0) => M_AXI_AWADDR(23 downto 20),
      S(3) => \M_AXI_AWADDR0_carry__4_i_1_n_0\,
      S(2) => \M_AXI_AWADDR0_carry__4_i_2_n_0\,
      S(1) => \M_AXI_AWADDR0_carry__4_i_3_n_0\,
      S(0) => \M_AXI_AWADDR0_carry__4_i_4_n_0\
    );
\M_AXI_AWADDR0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(23),
      I1 => \wr_addr_offset_reg__0\(23),
      O => \M_AXI_AWADDR0_carry__4_i_1_n_0\
    );
\M_AXI_AWADDR0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(22),
      I1 => \wr_addr_offset_reg__0\(22),
      O => \M_AXI_AWADDR0_carry__4_i_2_n_0\
    );
\M_AXI_AWADDR0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(21),
      I1 => \wr_addr_offset_reg__0\(21),
      O => \M_AXI_AWADDR0_carry__4_i_3_n_0\
    );
\M_AXI_AWADDR0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(20),
      I1 => \wr_addr_offset_reg__0\(20),
      O => \M_AXI_AWADDR0_carry__4_i_4_n_0\
    );
\M_AXI_AWADDR0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR0_carry__4_n_0\,
      CO(3) => \M_AXI_AWADDR0_carry__5_n_0\,
      CO(2) => \M_AXI_AWADDR0_carry__5_n_1\,
      CO(1) => \M_AXI_AWADDR0_carry__5_n_2\,
      CO(0) => \M_AXI_AWADDR0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \wr_base_addr_reg__0\(27 downto 24),
      O(3 downto 0) => M_AXI_AWADDR(27 downto 24),
      S(3) => \M_AXI_AWADDR0_carry__5_i_1_n_0\,
      S(2) => \M_AXI_AWADDR0_carry__5_i_2_n_0\,
      S(1) => \M_AXI_AWADDR0_carry__5_i_3_n_0\,
      S(0) => \M_AXI_AWADDR0_carry__5_i_4_n_0\
    );
\M_AXI_AWADDR0_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(27),
      I1 => \wr_addr_offset_reg__0\(27),
      O => \M_AXI_AWADDR0_carry__5_i_1_n_0\
    );
\M_AXI_AWADDR0_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(26),
      I1 => \wr_addr_offset_reg__0\(26),
      O => \M_AXI_AWADDR0_carry__5_i_2_n_0\
    );
\M_AXI_AWADDR0_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(25),
      I1 => \wr_addr_offset_reg__0\(25),
      O => \M_AXI_AWADDR0_carry__5_i_3_n_0\
    );
\M_AXI_AWADDR0_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(24),
      I1 => \wr_addr_offset_reg__0\(24),
      O => \M_AXI_AWADDR0_carry__5_i_4_n_0\
    );
\M_AXI_AWADDR0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \M_AXI_AWADDR0_carry__5_n_0\,
      CO(3) => \NLW_M_AXI_AWADDR0_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \M_AXI_AWADDR0_carry__6_n_1\,
      CO(1) => \M_AXI_AWADDR0_carry__6_n_2\,
      CO(0) => \M_AXI_AWADDR0_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \wr_base_addr_reg__0\(30 downto 28),
      O(3 downto 0) => M_AXI_AWADDR(31 downto 28),
      S(3) => \M_AXI_AWADDR0_carry__6_i_1_n_0\,
      S(2) => \M_AXI_AWADDR0_carry__6_i_2_n_0\,
      S(1) => \M_AXI_AWADDR0_carry__6_i_3_n_0\,
      S(0) => \M_AXI_AWADDR0_carry__6_i_4_n_0\
    );
\M_AXI_AWADDR0_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(31),
      I1 => \wr_addr_offset_reg__0\(31),
      O => \M_AXI_AWADDR0_carry__6_i_1_n_0\
    );
\M_AXI_AWADDR0_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(30),
      I1 => \wr_addr_offset_reg__0\(30),
      O => \M_AXI_AWADDR0_carry__6_i_2_n_0\
    );
\M_AXI_AWADDR0_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(29),
      I1 => \wr_addr_offset_reg__0\(29),
      O => \M_AXI_AWADDR0_carry__6_i_3_n_0\
    );
\M_AXI_AWADDR0_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(28),
      I1 => \wr_addr_offset_reg__0\(28),
      O => \M_AXI_AWADDR0_carry__6_i_4_n_0\
    );
M_AXI_AWADDR0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(3),
      I1 => \wr_addr_offset_reg__0\(3),
      O => M_AXI_AWADDR0_carry_i_1_n_0
    );
M_AXI_AWADDR0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(2),
      I1 => \wr_addr_offset_reg__0\(2),
      O => M_AXI_AWADDR0_carry_i_2_n_0
    );
M_AXI_AWADDR0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(1),
      I1 => \wr_addr_offset_reg__0\(1),
      O => M_AXI_AWADDR0_carry_i_3_n_0
    );
M_AXI_AWADDR0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_base_addr_reg__0\(0),
      I1 => \wr_addr_offset_reg__0\(0),
      O => M_AXI_AWADDR0_carry_i_4_n_0
    );
\M_AXI_AWLEN[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \chunk_byte_count_reg_reg_n_0_[2]\,
      I1 => \chunk_byte_count_reg_reg_n_0_[0]\,
      I2 => \chunk_byte_count_reg_reg_n_0_[1]\,
      O => M_AXI_AWLEN(0)
    );
\M_AXI_AWLEN[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \chunk_byte_count_reg_reg_n_0_[3]\,
      I1 => \chunk_byte_count_reg_reg_n_0_[1]\,
      I2 => \chunk_byte_count_reg_reg_n_0_[0]\,
      I3 => \chunk_byte_count_reg_reg_n_0_[2]\,
      O => M_AXI_AWLEN(1)
    );
\M_AXI_AWLEN[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \chunk_byte_count_reg_reg_n_0_[4]\,
      I1 => \chunk_byte_count_reg_reg_n_0_[3]\,
      I2 => \chunk_byte_count_reg_reg_n_0_[2]\,
      I3 => \chunk_byte_count_reg_reg_n_0_[1]\,
      I4 => \chunk_byte_count_reg_reg_n_0_[0]\,
      O => M_AXI_AWLEN(2)
    );
\M_AXI_AWLEN[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808001"
    )
        port map (
      I0 => \chunk_byte_count_reg_reg_n_0_[4]\,
      I1 => \chunk_byte_count_reg_reg_n_0_[3]\,
      I2 => \chunk_byte_count_reg_reg_n_0_[2]\,
      I3 => \chunk_byte_count_reg_reg_n_0_[1]\,
      I4 => \chunk_byte_count_reg_reg_n_0_[0]\,
      O => M_AXI_AWLEN(3)
    );
\M_AXI_WDATA[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_0_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[0]_0\,
      I4 => \M_AXI_WDATA[0]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[0]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(0)
    );
\M_AXI_WDATA[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[0]_1\,
      I1 => \M_AXI_WDATA[0]_2\,
      I2 => \M_AXI_WDATA[0]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[0]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[0]_4\,
      I1 => \M_AXI_WDATA[0]_5\,
      I2 => \M_AXI_WDATA[0]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[0]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_10_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[10]_0\,
      I4 => \M_AXI_WDATA[10]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[10]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(10)
    );
\M_AXI_WDATA[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[10]_1\,
      I1 => \M_AXI_WDATA[10]_2\,
      I2 => \M_AXI_WDATA[10]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[10]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[10]_4\,
      I1 => \M_AXI_WDATA[10]_5\,
      I2 => \M_AXI_WDATA[10]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[10]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_11_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[11]_0\,
      I4 => \M_AXI_WDATA[11]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[11]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(11)
    );
\M_AXI_WDATA[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[11]_1\,
      I1 => \M_AXI_WDATA[11]_2\,
      I2 => \M_AXI_WDATA[11]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[11]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[11]_4\,
      I1 => \M_AXI_WDATA[11]_5\,
      I2 => \M_AXI_WDATA[11]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[11]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_12_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[12]_0\,
      I4 => \M_AXI_WDATA[12]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[12]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(12)
    );
\M_AXI_WDATA[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[12]_1\,
      I1 => \M_AXI_WDATA[12]_2\,
      I2 => \M_AXI_WDATA[12]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[12]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[12]_4\,
      I1 => \M_AXI_WDATA[12]_5\,
      I2 => \M_AXI_WDATA[12]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[12]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_13_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[13]_0\,
      I4 => \M_AXI_WDATA[13]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[13]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(13)
    );
\M_AXI_WDATA[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[13]_1\,
      I1 => \M_AXI_WDATA[13]_2\,
      I2 => \M_AXI_WDATA[13]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[13]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[13]_4\,
      I1 => \M_AXI_WDATA[13]_5\,
      I2 => \M_AXI_WDATA[13]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[13]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_14_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[14]_0\,
      I4 => \M_AXI_WDATA[14]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[14]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(14)
    );
\M_AXI_WDATA[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[14]_1\,
      I1 => \M_AXI_WDATA[14]_2\,
      I2 => \M_AXI_WDATA[14]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[14]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[14]_4\,
      I1 => \M_AXI_WDATA[14]_5\,
      I2 => \M_AXI_WDATA[14]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[14]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_15_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[15]_0\,
      I4 => \M_AXI_WDATA[15]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[15]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(15)
    );
\M_AXI_WDATA[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[15]_1\,
      I1 => \M_AXI_WDATA[15]_2\,
      I2 => \M_AXI_WDATA[15]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[15]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[15]_4\,
      I1 => \M_AXI_WDATA[15]_5\,
      I2 => \M_AXI_WDATA[15]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[15]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_16_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[16]_0\,
      I4 => \M_AXI_WDATA[16]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[16]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(16)
    );
\M_AXI_WDATA[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[16]_1\,
      I1 => \M_AXI_WDATA[16]_2\,
      I2 => \M_AXI_WDATA[16]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[16]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[16]_4\,
      I1 => \M_AXI_WDATA[16]_5\,
      I2 => \M_AXI_WDATA[16]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[16]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_17_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[17]_0\,
      I4 => \M_AXI_WDATA[17]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[17]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(17)
    );
\M_AXI_WDATA[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[17]_1\,
      I1 => \M_AXI_WDATA[17]_2\,
      I2 => \M_AXI_WDATA[17]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[17]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[17]_4\,
      I1 => \M_AXI_WDATA[17]_5\,
      I2 => \M_AXI_WDATA[17]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[17]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_18_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[18]_0\,
      I4 => \M_AXI_WDATA[18]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[18]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(18)
    );
\M_AXI_WDATA[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[18]_1\,
      I1 => \M_AXI_WDATA[18]_2\,
      I2 => \M_AXI_WDATA[18]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[18]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[18]_4\,
      I1 => \M_AXI_WDATA[18]_5\,
      I2 => \M_AXI_WDATA[18]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[18]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_19_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[19]_0\,
      I4 => \M_AXI_WDATA[19]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[19]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(19)
    );
\M_AXI_WDATA[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[19]_1\,
      I1 => \M_AXI_WDATA[19]_2\,
      I2 => \M_AXI_WDATA[19]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[19]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[19]_4\,
      I1 => \M_AXI_WDATA[19]_5\,
      I2 => \M_AXI_WDATA[19]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[19]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_1_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[1]_0\,
      I4 => \M_AXI_WDATA[1]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[1]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(1)
    );
\M_AXI_WDATA[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[1]_1\,
      I1 => \M_AXI_WDATA[1]_2\,
      I2 => \M_AXI_WDATA[1]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[1]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[1]_4\,
      I1 => \M_AXI_WDATA[1]_5\,
      I2 => \M_AXI_WDATA[1]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[1]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_20_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[20]_0\,
      I4 => \M_AXI_WDATA[20]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[20]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(20)
    );
\M_AXI_WDATA[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[20]_1\,
      I1 => \M_AXI_WDATA[20]_2\,
      I2 => \M_AXI_WDATA[20]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[20]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[20]_4\,
      I1 => \M_AXI_WDATA[20]_5\,
      I2 => \M_AXI_WDATA[20]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[20]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_21_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[21]_0\,
      I4 => \M_AXI_WDATA[21]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[21]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(21)
    );
\M_AXI_WDATA[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[21]_1\,
      I1 => \M_AXI_WDATA[21]_2\,
      I2 => \M_AXI_WDATA[21]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[21]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[21]_4\,
      I1 => \M_AXI_WDATA[21]_5\,
      I2 => \M_AXI_WDATA[21]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[21]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_22_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[22]_0\,
      I4 => \M_AXI_WDATA[22]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[22]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(22)
    );
\M_AXI_WDATA[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[22]_1\,
      I1 => \M_AXI_WDATA[22]_2\,
      I2 => \M_AXI_WDATA[22]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[22]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[22]_4\,
      I1 => \M_AXI_WDATA[22]_5\,
      I2 => \M_AXI_WDATA[22]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[22]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_23_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[23]_0\,
      I4 => \M_AXI_WDATA[23]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[23]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(23)
    );
\M_AXI_WDATA[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[23]_1\,
      I1 => \M_AXI_WDATA[23]_2\,
      I2 => \M_AXI_WDATA[23]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[23]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[23]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[23]_4\,
      I1 => \M_AXI_WDATA[23]_5\,
      I2 => \M_AXI_WDATA[23]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[23]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_24_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[24]_0\,
      I4 => \M_AXI_WDATA[24]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[24]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(24)
    );
\M_AXI_WDATA[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[24]_1\,
      I1 => \M_AXI_WDATA[24]_2\,
      I2 => \M_AXI_WDATA[24]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[24]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[24]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[24]_4\,
      I1 => \M_AXI_WDATA[24]_5\,
      I2 => \M_AXI_WDATA[24]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[24]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_25_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[25]_0\,
      I4 => \M_AXI_WDATA[25]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[25]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(25)
    );
\M_AXI_WDATA[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[25]_1\,
      I1 => \M_AXI_WDATA[25]_2\,
      I2 => \M_AXI_WDATA[25]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[25]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[25]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[25]_4\,
      I1 => \M_AXI_WDATA[25]_5\,
      I2 => \M_AXI_WDATA[25]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[25]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_26_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[26]_0\,
      I4 => \M_AXI_WDATA[26]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[26]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(26)
    );
\M_AXI_WDATA[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[26]_1\,
      I1 => \M_AXI_WDATA[26]_2\,
      I2 => \M_AXI_WDATA[26]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[26]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[26]_4\,
      I1 => \M_AXI_WDATA[26]_5\,
      I2 => \M_AXI_WDATA[26]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[26]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_27_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[27]_0\,
      I4 => \M_AXI_WDATA[27]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[27]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(27)
    );
\M_AXI_WDATA[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[27]_1\,
      I1 => \M_AXI_WDATA[27]_2\,
      I2 => \M_AXI_WDATA[27]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[27]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[27]_4\,
      I1 => \M_AXI_WDATA[27]_5\,
      I2 => \M_AXI_WDATA[27]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[27]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_28_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[28]_0\,
      I4 => \M_AXI_WDATA[28]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[28]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(28)
    );
\M_AXI_WDATA[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[28]_1\,
      I1 => \M_AXI_WDATA[28]_2\,
      I2 => \M_AXI_WDATA[28]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[28]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[28]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[28]_4\,
      I1 => \M_AXI_WDATA[28]_5\,
      I2 => \M_AXI_WDATA[28]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[28]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_29_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[29]_0\,
      I4 => \M_AXI_WDATA[29]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[29]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(29)
    );
\M_AXI_WDATA[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[29]_1\,
      I1 => \M_AXI_WDATA[29]_2\,
      I2 => \M_AXI_WDATA[29]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[29]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[29]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[29]_4\,
      I1 => \M_AXI_WDATA[29]_5\,
      I2 => \M_AXI_WDATA[29]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[29]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_2_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[2]_0\,
      I4 => \M_AXI_WDATA[2]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[2]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(2)
    );
\M_AXI_WDATA[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[2]_1\,
      I1 => \M_AXI_WDATA[2]_2\,
      I2 => \M_AXI_WDATA[2]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[2]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[2]_4\,
      I1 => \M_AXI_WDATA[2]_5\,
      I2 => \M_AXI_WDATA[2]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[2]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_30_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[30]_0\,
      I4 => \M_AXI_WDATA[30]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[30]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(30)
    );
\M_AXI_WDATA[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[30]_1\,
      I1 => \M_AXI_WDATA[30]_2\,
      I2 => \M_AXI_WDATA[30]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[30]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[30]_4\,
      I1 => \M_AXI_WDATA[30]_5\,
      I2 => \M_AXI_WDATA[30]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[30]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_31_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[31]_0\,
      I4 => \M_AXI_WDATA[31]_INST_0_i_3_n_0\,
      I5 => \M_AXI_WDATA[31]_INST_0_i_4_n_0\,
      O => M_AXI_WDATA(31)
    );
\M_AXI_WDATA[31]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^chunk_buf_id_reg\,
      I1 => buf_addr_reg(0),
      I2 => buf_addr_reg(1),
      O => \M_AXI_WDATA[31]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[31]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => buf_addr_reg(0),
      I1 => \^chunk_buf_id_reg\,
      I2 => buf_addr_reg(1),
      O => \M_AXI_WDATA[31]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_1\,
      I1 => \M_AXI_WDATA[31]_2\,
      I2 => \M_AXI_WDATA[31]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[31]_INST_0_i_3_n_0\
    );
\M_AXI_WDATA[31]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_4\,
      I1 => \M_AXI_WDATA[31]_5\,
      I2 => \M_AXI_WDATA[31]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[31]_INST_0_i_4_n_0\
    );
\M_AXI_WDATA[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_3_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[3]_0\,
      I4 => \M_AXI_WDATA[3]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[3]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(3)
    );
\M_AXI_WDATA[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[3]_1\,
      I1 => \M_AXI_WDATA[3]_2\,
      I2 => \M_AXI_WDATA[3]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[3]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[3]_4\,
      I1 => \M_AXI_WDATA[3]_5\,
      I2 => \M_AXI_WDATA[3]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[3]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_4_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[4]_0\,
      I4 => \M_AXI_WDATA[4]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[4]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(4)
    );
\M_AXI_WDATA[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[4]_1\,
      I1 => \M_AXI_WDATA[4]_2\,
      I2 => \M_AXI_WDATA[4]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[4]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[4]_4\,
      I1 => \M_AXI_WDATA[4]_5\,
      I2 => \M_AXI_WDATA[4]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[4]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_5_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[5]_0\,
      I4 => \M_AXI_WDATA[5]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[5]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(5)
    );
\M_AXI_WDATA[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[5]_1\,
      I1 => \M_AXI_WDATA[5]_2\,
      I2 => \M_AXI_WDATA[5]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[5]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[5]_4\,
      I1 => \M_AXI_WDATA[5]_5\,
      I2 => \M_AXI_WDATA[5]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[5]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_6_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[6]_0\,
      I4 => \M_AXI_WDATA[6]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[6]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(6)
    );
\M_AXI_WDATA[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[6]_1\,
      I1 => \M_AXI_WDATA[6]_2\,
      I2 => \M_AXI_WDATA[6]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[6]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[6]_4\,
      I1 => \M_AXI_WDATA[6]_5\,
      I2 => \M_AXI_WDATA[6]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[6]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_7_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[7]_0\,
      I4 => \M_AXI_WDATA[7]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[7]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(7)
    );
\M_AXI_WDATA[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[7]_1\,
      I1 => \M_AXI_WDATA[7]_2\,
      I2 => \M_AXI_WDATA[7]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[7]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[7]_4\,
      I1 => \M_AXI_WDATA[7]_5\,
      I2 => \M_AXI_WDATA[7]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[7]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_8_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[8]_0\,
      I4 => \M_AXI_WDATA[8]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[8]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(8)
    );
\M_AXI_WDATA[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[8]_1\,
      I1 => \M_AXI_WDATA[8]_2\,
      I2 => \M_AXI_WDATA[8]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[8]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[8]_4\,
      I1 => \M_AXI_WDATA[8]_5\,
      I2 => \M_AXI_WDATA[8]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[8]_INST_0_i_2_n_0\
    );
\M_AXI_WDATA[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => \M_AXI_WDATA[31]_INST_0_i_1_n_0\,
      I1 => M_AXI_WDATA_9_sn_1,
      I2 => \M_AXI_WDATA[31]_INST_0_i_2_n_0\,
      I3 => \M_AXI_WDATA[9]_0\,
      I4 => \M_AXI_WDATA[9]_INST_0_i_1_n_0\,
      I5 => \M_AXI_WDATA[9]_INST_0_i_2_n_0\,
      O => M_AXI_WDATA(9)
    );
\M_AXI_WDATA[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0CCAA"
    )
        port map (
      I0 => \M_AXI_WDATA[9]_1\,
      I1 => \M_AXI_WDATA[9]_2\,
      I2 => \M_AXI_WDATA[9]_3\,
      I3 => \^chunk_buf_id_reg\,
      I4 => buf_addr_reg(0),
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[9]_INST_0_i_1_n_0\
    );
\M_AXI_WDATA[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \M_AXI_WDATA[9]_4\,
      I1 => \M_AXI_WDATA[9]_5\,
      I2 => \M_AXI_WDATA[9]_6\,
      I3 => buf_addr_reg(0),
      I4 => \^chunk_buf_id_reg\,
      I5 => buf_addr_reg(1),
      O => \M_AXI_WDATA[9]_INST_0_i_2_n_0\
    );
M_AXI_WLAST_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101011100000000"
    )
        port map (
      I0 => \chunk_byte_count_reg_reg_n_0_[4]\,
      I1 => \chunk_byte_count_reg_reg_n_0_[3]\,
      I2 => \chunk_byte_count_reg_reg_n_0_[2]\,
      I3 => \chunk_byte_count_reg_reg_n_0_[1]\,
      I4 => \chunk_byte_count_reg_reg_n_0_[0]\,
      I5 => \^q\(3),
      O => M_AXI_WLAST
    );
\M_AXI_WSTRB[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \chunk_byte_count_reg_reg_n_0_[2]\,
      I1 => \chunk_byte_count_reg_reg_n_0_[3]\,
      I2 => \chunk_byte_count_reg_reg_n_0_[4]\,
      I3 => \chunk_byte_count_reg_reg_n_0_[1]\,
      I4 => \chunk_byte_count_reg_reg_n_0_[0]\,
      O => M_AXI_WSTRB(0)
    );
\M_AXI_WSTRB[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \chunk_byte_count_reg_reg_n_0_[2]\,
      I1 => \chunk_byte_count_reg_reg_n_0_[3]\,
      I2 => \chunk_byte_count_reg_reg_n_0_[4]\,
      I3 => \chunk_byte_count_reg_reg_n_0_[1]\,
      O => M_AXI_WSTRB(1)
    );
\M_AXI_WSTRB[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => \chunk_byte_count_reg_reg_n_0_[1]\,
      I1 => \chunk_byte_count_reg_reg_n_0_[0]\,
      I2 => \chunk_byte_count_reg_reg_n_0_[2]\,
      I3 => \chunk_byte_count_reg_reg_n_0_[3]\,
      I4 => \chunk_byte_count_reg_reg_n_0_[4]\,
      O => M_AXI_WSTRB(2)
    );
\M_AXI_WSTRB[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \chunk_byte_count_reg_reg_n_0_[4]\,
      I1 => \chunk_byte_count_reg_reg_n_0_[3]\,
      I2 => \chunk_byte_count_reg_reg_n_0_[2]\,
      O => M_AXI_WSTRB(3)
    );
\buf_addr_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01111111FE00EE00"
    )
        port map (
      I0 => buf_id_next,
      I1 => \buf_addr_reg_reg[0]_0\,
      I2 => \buf_addr_reg[1]_i_3_n_0\,
      I3 => \^q\(3),
      I4 => M_AXI_WREADY,
      I5 => buf_addr_reg(0),
      O => \buf_addr_reg[0]_i_1_n_0\
    );
\buf_addr_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57337733A8008800"
    )
        port map (
      I0 => buf_addr_reg(0),
      I1 => last_next,
      I2 => \buf_addr_reg[1]_i_3_n_0\,
      I3 => \^q\(3),
      I4 => M_AXI_WREADY,
      I5 => buf_addr_reg(1),
      O => \buf_addr_reg[1]_i_1_n_0\
    );
\buf_addr_reg[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFA8"
    )
        port map (
      I0 => \chunk_byte_count_reg_reg_n_0_[2]\,
      I1 => \chunk_byte_count_reg_reg_n_0_[0]\,
      I2 => \chunk_byte_count_reg_reg_n_0_[1]\,
      I3 => \chunk_byte_count_reg_reg_n_0_[4]\,
      I4 => \chunk_byte_count_reg_reg_n_0_[3]\,
      O => \buf_addr_reg[1]_i_3_n_0\
    );
\buf_addr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \buf_addr_reg[0]_i_1_n_0\,
      Q => buf_addr_reg(0),
      R => chunk_buf_id_reg_reg_0
    );
\buf_addr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \buf_addr_reg[1]_i_1_n_0\,
      Q => buf_addr_reg(1),
      R => chunk_buf_id_reg_reg_0
    );
chunk_buf_id_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => chunk_buf_id_reg_reg_1,
      Q => \^chunk_buf_id_reg\,
      R => chunk_buf_id_reg_reg_0
    );
\chunk_byte_count_reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => \^q\(3),
      I1 => \chunk_byte_count_reg_reg_n_0_[0]\,
      I2 => \chunk_byte_count_reg_reg_n_0_[2]\,
      I3 => \chunk_byte_count_reg_reg_n_0_[3]\,
      I4 => \chunk_byte_count_reg_reg_n_0_[4]\,
      O => \FSM_onehot_axi_writer_state_reg_reg[3]_0\
    );
\chunk_byte_count_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFE000000"
    )
        port map (
      I0 => \chunk_byte_count_reg_reg_n_0_[4]\,
      I1 => \chunk_byte_count_reg_reg_n_0_[3]\,
      I2 => \chunk_byte_count_reg_reg_n_0_[2]\,
      I3 => \chunk_byte_count_reg_reg_n_0_[1]\,
      I4 => \^q\(3),
      I5 => \^q\(2),
      O => \chunk_byte_count_reg_reg[4]_0\
    );
\chunk_byte_count_reg[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF00E0"
    )
        port map (
      I0 => \chunk_byte_count_reg_reg_n_0_[3]\,
      I1 => \chunk_byte_count_reg_reg_n_0_[4]\,
      I2 => \^q\(3),
      I3 => \chunk_byte_count_reg_reg_n_0_[2]\,
      I4 => \^q\(2),
      O => \chunk_byte_count_reg_reg[3]_0\
    );
\chunk_byte_count_reg[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8820"
    )
        port map (
      I0 => \^q\(3),
      I1 => \chunk_byte_count_reg_reg_n_0_[3]\,
      I2 => \chunk_byte_count_reg_reg_n_0_[4]\,
      I3 => \chunk_byte_count_reg_reg_n_0_[2]\,
      O => \FSM_onehot_axi_writer_state_reg_reg[3]_2\
    );
\chunk_byte_count_reg[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A080"
    )
        port map (
      I0 => \^q\(3),
      I1 => \chunk_byte_count_reg_reg_n_0_[3]\,
      I2 => \chunk_byte_count_reg_reg_n_0_[4]\,
      I3 => \chunk_byte_count_reg_reg_n_0_[2]\,
      O => \FSM_onehot_axi_writer_state_reg_reg[3]_1\
    );
\chunk_byte_count_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => E(0),
      D => \chunk_byte_count_reg_reg[4]_1\(0),
      Q => \chunk_byte_count_reg_reg_n_0_[0]\,
      R => chunk_buf_id_reg_reg_0
    );
\chunk_byte_count_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => E(0),
      D => \chunk_byte_count_reg_reg[4]_1\(1),
      Q => \chunk_byte_count_reg_reg_n_0_[1]\,
      R => chunk_buf_id_reg_reg_0
    );
\chunk_byte_count_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => E(0),
      D => \chunk_byte_count_reg_reg[4]_1\(2),
      Q => \chunk_byte_count_reg_reg_n_0_[2]\,
      R => chunk_buf_id_reg_reg_0
    );
\chunk_byte_count_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => E(0),
      D => \chunk_byte_count_reg_reg[4]_1\(3),
      Q => \chunk_byte_count_reg_reg_n_0_[3]\,
      R => chunk_buf_id_reg_reg_0
    );
\chunk_byte_count_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => E(0),
      D => \chunk_byte_count_reg_reg[4]_1\(4),
      Q => \chunk_byte_count_reg_reg_n_0_[4]\,
      R => chunk_buf_id_reg_reg_0
    );
last_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => last_reg_reg_1,
      Q => \^last_reg\,
      R => chunk_buf_id_reg_reg_0
    );
\wr_addr_offset_reg[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF80000F8F80000"
    )
        port map (
      I0 => M_AXI_WREADY,
      I1 => \^q\(3),
      I2 => \buf_addr_reg_reg[0]_0\,
      I3 => \wr_addr_offset_reg_reg[31]_0\,
      I4 => axi_aresetn,
      I5 => dout(0),
      O => M_AXI_WREADY_0
    );
\wr_addr_offset_reg[31]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888F888"
    )
        port map (
      I0 => M_AXI_WREADY,
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => dma_state_reg(0),
      I4 => dma_state_reg(1),
      O => M_AXI_WREADY_1
    );
\wr_addr_offset_reg[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \chunk_byte_count_reg_reg_n_0_[4]\,
      I1 => \chunk_byte_count_reg_reg_n_0_[3]\,
      I2 => \chunk_byte_count_reg_reg_n_0_[2]\,
      O => \wr_addr_offset_reg[3]_i_2_n_0\
    );
\wr_addr_offset_reg[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => \chunk_byte_count_reg_reg_n_0_[2]\,
      I1 => \chunk_byte_count_reg_reg_n_0_[3]\,
      I2 => \chunk_byte_count_reg_reg_n_0_[4]\,
      I3 => \wr_addr_offset_reg__0\(2),
      O => \wr_addr_offset_reg[3]_i_3_n_0\
    );
\wr_addr_offset_reg[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => \chunk_byte_count_reg_reg_n_0_[4]\,
      I1 => \chunk_byte_count_reg_reg_n_0_[3]\,
      I2 => \chunk_byte_count_reg_reg_n_0_[2]\,
      I3 => \chunk_byte_count_reg_reg_n_0_[1]\,
      I4 => \wr_addr_offset_reg__0\(1),
      O => \wr_addr_offset_reg[3]_i_4_n_0\
    );
\wr_addr_offset_reg[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0100"
    )
        port map (
      I0 => \chunk_byte_count_reg_reg_n_0_[4]\,
      I1 => \chunk_byte_count_reg_reg_n_0_[3]\,
      I2 => \chunk_byte_count_reg_reg_n_0_[2]\,
      I3 => \chunk_byte_count_reg_reg_n_0_[0]\,
      I4 => \wr_addr_offset_reg__0\(0),
      O => \wr_addr_offset_reg[3]_i_5_n_0\
    );
\wr_addr_offset_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(0),
      Q => \wr_addr_offset_reg__0\(0),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(10),
      Q => \wr_addr_offset_reg__0\(10),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(11),
      Q => \wr_addr_offset_reg__0\(11),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_addr_offset_reg_reg[7]_i_1_n_0\,
      CO(3) => \wr_addr_offset_reg_reg[11]_i_1_n_0\,
      CO(2) => \wr_addr_offset_reg_reg[11]_i_1_n_1\,
      CO(1) => \wr_addr_offset_reg_reg[11]_i_1_n_2\,
      CO(0) => \wr_addr_offset_reg_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in7(11 downto 8),
      S(3 downto 0) => \wr_addr_offset_reg__0\(11 downto 8)
    );
\wr_addr_offset_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(12),
      Q => \wr_addr_offset_reg__0\(12),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(13),
      Q => \wr_addr_offset_reg__0\(13),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(14),
      Q => \wr_addr_offset_reg__0\(14),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(15),
      Q => \wr_addr_offset_reg__0\(15),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_addr_offset_reg_reg[11]_i_1_n_0\,
      CO(3) => \wr_addr_offset_reg_reg[15]_i_1_n_0\,
      CO(2) => \wr_addr_offset_reg_reg[15]_i_1_n_1\,
      CO(1) => \wr_addr_offset_reg_reg[15]_i_1_n_2\,
      CO(0) => \wr_addr_offset_reg_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in7(15 downto 12),
      S(3 downto 0) => \wr_addr_offset_reg__0\(15 downto 12)
    );
\wr_addr_offset_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(16),
      Q => \wr_addr_offset_reg__0\(16),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(17),
      Q => \wr_addr_offset_reg__0\(17),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(18),
      Q => \wr_addr_offset_reg__0\(18),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(19),
      Q => \wr_addr_offset_reg__0\(19),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_addr_offset_reg_reg[15]_i_1_n_0\,
      CO(3) => \wr_addr_offset_reg_reg[19]_i_1_n_0\,
      CO(2) => \wr_addr_offset_reg_reg[19]_i_1_n_1\,
      CO(1) => \wr_addr_offset_reg_reg[19]_i_1_n_2\,
      CO(0) => \wr_addr_offset_reg_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in7(19 downto 16),
      S(3 downto 0) => \wr_addr_offset_reg__0\(19 downto 16)
    );
\wr_addr_offset_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(1),
      Q => \wr_addr_offset_reg__0\(1),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(20),
      Q => \wr_addr_offset_reg__0\(20),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(21),
      Q => \wr_addr_offset_reg__0\(21),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(22),
      Q => \wr_addr_offset_reg__0\(22),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(23),
      Q => \wr_addr_offset_reg__0\(23),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_addr_offset_reg_reg[19]_i_1_n_0\,
      CO(3) => \wr_addr_offset_reg_reg[23]_i_1_n_0\,
      CO(2) => \wr_addr_offset_reg_reg[23]_i_1_n_1\,
      CO(1) => \wr_addr_offset_reg_reg[23]_i_1_n_2\,
      CO(0) => \wr_addr_offset_reg_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in7(23 downto 20),
      S(3 downto 0) => \wr_addr_offset_reg__0\(23 downto 20)
    );
\wr_addr_offset_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(24),
      Q => \wr_addr_offset_reg__0\(24),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(25),
      Q => \wr_addr_offset_reg__0\(25),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(26),
      Q => \wr_addr_offset_reg__0\(26),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(27),
      Q => \wr_addr_offset_reg__0\(27),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_addr_offset_reg_reg[23]_i_1_n_0\,
      CO(3) => \wr_addr_offset_reg_reg[27]_i_1_n_0\,
      CO(2) => \wr_addr_offset_reg_reg[27]_i_1_n_1\,
      CO(1) => \wr_addr_offset_reg_reg[27]_i_1_n_2\,
      CO(0) => \wr_addr_offset_reg_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in7(27 downto 24),
      S(3 downto 0) => \wr_addr_offset_reg__0\(27 downto 24)
    );
\wr_addr_offset_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(28),
      Q => \wr_addr_offset_reg__0\(28),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(29),
      Q => \wr_addr_offset_reg__0\(29),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(2),
      Q => \wr_addr_offset_reg__0\(2),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(30),
      Q => \wr_addr_offset_reg__0\(30),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(31),
      Q => \wr_addr_offset_reg__0\(31),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_addr_offset_reg_reg[27]_i_1_n_0\,
      CO(3) => \NLW_wr_addr_offset_reg_reg[31]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \wr_addr_offset_reg_reg[31]_i_3_n_1\,
      CO(1) => \wr_addr_offset_reg_reg[31]_i_3_n_2\,
      CO(0) => \wr_addr_offset_reg_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in7(31 downto 28),
      S(3 downto 0) => \wr_addr_offset_reg__0\(31 downto 28)
    );
\wr_addr_offset_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(3),
      Q => \wr_addr_offset_reg__0\(3),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wr_addr_offset_reg_reg[3]_i_1_n_0\,
      CO(2) => \wr_addr_offset_reg_reg[3]_i_1_n_1\,
      CO(1) => \wr_addr_offset_reg_reg[3]_i_1_n_2\,
      CO(0) => \wr_addr_offset_reg_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \wr_addr_offset_reg[3]_i_2_n_0\,
      DI(1 downto 0) => \wr_addr_offset_reg__0\(1 downto 0),
      O(3 downto 0) => in7(3 downto 0),
      S(3) => \wr_addr_offset_reg__0\(3),
      S(2) => \wr_addr_offset_reg[3]_i_3_n_0\,
      S(1) => \wr_addr_offset_reg[3]_i_4_n_0\,
      S(0) => \wr_addr_offset_reg[3]_i_5_n_0\
    );
\wr_addr_offset_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(4),
      Q => \wr_addr_offset_reg__0\(4),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(5),
      Q => \wr_addr_offset_reg__0\(5),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(6),
      Q => \wr_addr_offset_reg__0\(6),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(7),
      Q => \wr_addr_offset_reg__0\(7),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_addr_offset_reg_reg[3]_i_1_n_0\,
      CO(3) => \wr_addr_offset_reg_reg[7]_i_1_n_0\,
      CO(2) => \wr_addr_offset_reg_reg[7]_i_1_n_1\,
      CO(1) => \wr_addr_offset_reg_reg[7]_i_1_n_2\,
      CO(0) => \wr_addr_offset_reg_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in7(7 downto 4),
      S(3 downto 0) => \wr_addr_offset_reg__0\(7 downto 4)
    );
\wr_addr_offset_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(8),
      Q => \wr_addr_offset_reg__0\(8),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_addr_offset_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_addr_offset_reg(0),
      D => in7(9),
      Q => \wr_addr_offset_reg__0\(9),
      R => \wr_addr_offset_reg_reg[0]_0\
    );
\wr_base_addr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[6]_0\(0),
      Q => \wr_base_addr_reg__0\(0),
      R => '0'
    );
\wr_base_addr_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[10]_0\(3),
      Q => \wr_base_addr_reg__0\(10),
      R => '0'
    );
\wr_base_addr_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[14]_0\(0),
      Q => \wr_base_addr_reg__0\(11),
      R => '0'
    );
\wr_base_addr_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[14]_0\(1),
      Q => \wr_base_addr_reg__0\(12),
      R => '0'
    );
\wr_base_addr_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[14]_0\(2),
      Q => \wr_base_addr_reg__0\(13),
      R => '0'
    );
\wr_base_addr_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[14]_0\(3),
      Q => \wr_base_addr_reg__0\(14),
      R => '0'
    );
\wr_base_addr_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[18]_0\(0),
      Q => \wr_base_addr_reg__0\(15),
      R => '0'
    );
\wr_base_addr_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[18]_0\(1),
      Q => \wr_base_addr_reg__0\(16),
      R => '0'
    );
\wr_base_addr_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[18]_0\(2),
      Q => \wr_base_addr_reg__0\(17),
      R => '0'
    );
\wr_base_addr_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[18]_0\(3),
      Q => \wr_base_addr_reg__0\(18),
      R => '0'
    );
\wr_base_addr_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[22]_0\(0),
      Q => \wr_base_addr_reg__0\(19),
      R => '0'
    );
\wr_base_addr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[6]_0\(1),
      Q => \wr_base_addr_reg__0\(1),
      R => '0'
    );
\wr_base_addr_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[22]_0\(1),
      Q => \wr_base_addr_reg__0\(20),
      R => '0'
    );
\wr_base_addr_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[22]_0\(2),
      Q => \wr_base_addr_reg__0\(21),
      R => '0'
    );
\wr_base_addr_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[22]_0\(3),
      Q => \wr_base_addr_reg__0\(22),
      R => '0'
    );
\wr_base_addr_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[26]_0\(0),
      Q => \wr_base_addr_reg__0\(23),
      R => '0'
    );
\wr_base_addr_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[26]_0\(1),
      Q => \wr_base_addr_reg__0\(24),
      R => '0'
    );
\wr_base_addr_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[26]_0\(2),
      Q => \wr_base_addr_reg__0\(25),
      R => '0'
    );
\wr_base_addr_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[26]_0\(3),
      Q => \wr_base_addr_reg__0\(26),
      R => '0'
    );
\wr_base_addr_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[30]_0\(0),
      Q => \wr_base_addr_reg__0\(27),
      R => '0'
    );
\wr_base_addr_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[30]_0\(1),
      Q => \wr_base_addr_reg__0\(28),
      R => '0'
    );
\wr_base_addr_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[30]_0\(2),
      Q => \wr_base_addr_reg__0\(29),
      R => '0'
    );
\wr_base_addr_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[6]_0\(2),
      Q => \wr_base_addr_reg__0\(2),
      R => '0'
    );
\wr_base_addr_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[30]_0\(3),
      Q => \wr_base_addr_reg__0\(30),
      R => '0'
    );
\wr_base_addr_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => O(0),
      Q => \wr_base_addr_reg__0\(31),
      R => '0'
    );
\wr_base_addr_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[6]_0\(3),
      Q => \wr_base_addr_reg__0\(3),
      R => '0'
    );
\wr_base_addr_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[6]_0\(4),
      Q => \wr_base_addr_reg__0\(4),
      R => '0'
    );
\wr_base_addr_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[6]_0\(5),
      Q => \wr_base_addr_reg__0\(5),
      R => '0'
    );
\wr_base_addr_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[6]_0\(6),
      Q => \wr_base_addr_reg__0\(6),
      R => '0'
    );
\wr_base_addr_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[10]_0\(0),
      Q => \wr_base_addr_reg__0\(7),
      R => '0'
    );
\wr_base_addr_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[10]_0\(1),
      Q => \wr_base_addr_reg__0\(8),
      R => '0'
    );
\wr_base_addr_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => wr_base_addr_reg(0),
      D => \wr_base_addr_reg_reg[10]_0\(2),
      Q => \wr_base_addr_reg__0\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_eth_rx_0_2_dma_payload_collector is
  port (
    axi_aresetn_0 : out STD_LOGIC;
    last_reg_reg : out STD_LOGIC;
    buf_id_next : out STD_LOGIC;
    buf_id_reg_reg_0 : out STD_LOGIC;
    \gen_wr_a.gen_word_narrow.mem_reg\ : out STD_LOGIC;
    chunk_error_reg_reg_0 : out STD_LOGIC;
    \FSM_onehot_axi_writer_state_reg_reg[2]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    chunk_last_reg_reg_0 : out STD_LOGIC;
    buf_id_reg_reg_1 : out STD_LOGIC;
    \chunk_byte_count_reg_reg[2]_0\ : out STD_LOGIC;
    \chunk_byte_count_reg_reg[2]_1\ : out STD_LOGIC;
    \chunk_byte_count_reg_reg[2]_2\ : out STD_LOGIC;
    buf_id_reg_reg_2 : out STD_LOGIC;
    buf_id_reg_reg_3 : out STD_LOGIC;
    buf_id_reg_reg_4 : out STD_LOGIC;
    buf_id_reg_reg_5 : out STD_LOGIC;
    buf_id_reg_reg_6 : out STD_LOGIC;
    buf_id_reg_reg_7 : out STD_LOGIC;
    buf_id_reg_reg_8 : out STD_LOGIC;
    buf_id_reg_reg_9 : out STD_LOGIC;
    \chunk_byte_count_reg_reg[0]_0\ : out STD_LOGIC;
    \chunk_byte_count_reg_reg[2]_3\ : out STD_LOGIC;
    \chunk_byte_count_reg_reg[2]_4\ : out STD_LOGIC;
    buf_id_reg_reg_10 : out STD_LOGIC;
    buf_id_reg_reg_11 : out STD_LOGIC;
    \chunk_byte_count_reg_reg[2]_5\ : out STD_LOGIC;
    \chunk_byte_count_reg_reg[2]_6\ : out STD_LOGIC;
    \chunk_byte_count_reg_reg[2]_7\ : out STD_LOGIC;
    buf_id_reg_reg_12 : out STD_LOGIC;
    buf_id_reg_reg_13 : out STD_LOGIC;
    buf_id_reg_reg_14 : out STD_LOGIC;
    buf_id_reg_reg_15 : out STD_LOGIC;
    buf_id_reg_reg_16 : out STD_LOGIC;
    buf_id_reg_reg_17 : out STD_LOGIC;
    buf_id_reg_reg_18 : out STD_LOGIC;
    buf_id_reg_reg_19 : out STD_LOGIC;
    \chunk_byte_count_reg_reg[0]_1\ : out STD_LOGIC;
    \chunk_byte_count_reg_reg[2]_8\ : out STD_LOGIC;
    \chunk_byte_count_reg_reg[2]_9\ : out STD_LOGIC;
    buf_id_reg_reg_20 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_state_reg_reg[1]_0\ : out STD_LOGIC;
    last_next : out STD_LOGIC;
    wr_addr_offset_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \chunk_byte_count_reg_reg[2]_10\ : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    chunk_last_reg_reg_1 : in STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    last_reg_reg_0 : in STD_LOGIC;
    last_reg : in STD_LOGIC;
    chunk_buf_id_reg : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 1 downto 0 );
    chunk_last_reg_reg_2 : in STD_LOGIC;
    \chunk_byte_count_reg_reg[0]_2\ : in STD_LOGIC;
    \chunk_byte_count_reg_reg[1]_0\ : in STD_LOGIC;
    \chunk_byte_count_reg_reg[2]_11\ : in STD_LOGIC;
    \chunk_byte_count_reg_reg[3]_0\ : in STD_LOGIC;
    \chunk_byte_count_reg_reg[4]_0\ : in STD_LOGIC;
    \wr_addr_offset_reg_reg[31]\ : in STD_LOGIC;
    \wr_addr_offset_reg_reg[0]\ : in STD_LOGIC;
    rd_rst_busy : in STD_LOGIC;
    empty : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_eth_rx_0_2_dma_payload_collector : entity is "dma_payload_collector";
end design_1_eth_rx_0_2_dma_payload_collector;

architecture STRUCTURE of design_1_eth_rx_0_2_dma_payload_collector is
  signal \FSM_onehot_axi_writer_state_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_writer_state_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg_reg[1]_0\ : STD_LOGIC;
  signal \^buf_id_next\ : STD_LOGIC;
  signal buf_id_reg : STD_LOGIC;
  signal buf_id_reg_i_1_n_0 : STD_LOGIC;
  signal chunk_buf_id_reg_i_2_n_0 : STD_LOGIC;
  signal chunk_byte_count_next : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal chunk_byte_count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \chunk_byte_count_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \chunk_byte_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \chunk_byte_count_reg[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \chunk_byte_count_reg[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \chunk_byte_count_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \chunk_byte_count_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal chunk_error_reg : STD_LOGIC;
  signal chunk_error_reg_i_1_n_0 : STD_LOGIC;
  signal \^chunk_error_reg_reg_0\ : STD_LOGIC;
  signal chunk_last_reg : STD_LOGIC;
  signal chunk_last_reg_i_1_n_0 : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \^gen_wr_a.gen_word_narrow.mem_reg\ : STD_LOGIC;
  signal \ping_pong_buf_reg[1,3][31]_i_2_n_0\ : STD_LOGIC;
  signal state_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \wr_addr_offset_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \wr_addr_offset_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \wr_addr_offset_reg[31]_i_6_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_axi_writer_state_reg[0]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \FSM_onehot_axi_writer_state_reg[0]_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \FSM_onehot_axi_writer_state_reg[2]_i_5\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \FSM_onehot_axi_writer_state_reg[2]_i_7\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \FSM_sequential_state_reg[0]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \FSM_sequential_state_reg[1]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \FSM_sequential_state_reg[1]_i_3\ : label is "soft_lutpair44";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg_reg[0]\ : label is "s_handle_entry:01,s_ready_wait:10,s_idle:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg_reg[1]\ : label is "s_handle_entry:01,s_ready_wait:10,s_idle:00";
  attribute SOFT_HLUTNM of buf_id_reg_i_1 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \chunk_byte_count_reg[1]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \chunk_byte_count_reg[3]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \chunk_byte_count_reg[3]_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \chunk_byte_count_reg[4]_i_3__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \chunk_byte_count_reg[4]_i_4__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of rx_async_fifo_inst_i_2 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \wr_addr_offset_reg[31]_i_5\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \wr_addr_offset_reg[31]_i_6\ : label is "soft_lutpair46";
begin
  \FSM_sequential_state_reg_reg[1]_0\ <= \^fsm_sequential_state_reg_reg[1]_0\;
  buf_id_next <= \^buf_id_next\;
  chunk_error_reg_reg_0 <= \^chunk_error_reg_reg_0\;
  \gen_wr_a.gen_word_narrow.mem_reg\ <= \^gen_wr_a.gen_word_narrow.mem_reg\;
\FSM_onehot_axi_writer_state_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888FFFF8888F888"
    )
        port map (
      I0 => last_reg,
      I1 => Q(3),
      I2 => chunk_last_reg_reg_2,
      I3 => \^fsm_sequential_state_reg_reg[1]_0\,
      I4 => \FSM_onehot_axi_writer_state_reg[2]_i_7_n_0\,
      I5 => \FSM_onehot_axi_writer_state_reg[0]_i_3_n_0\,
      O => D(0)
    );
\FSM_onehot_axi_writer_state_reg[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_reg(1),
      I1 => state_reg(0),
      I2 => Q(0),
      O => \^fsm_sequential_state_reg_reg[1]_0\
    );
\FSM_onehot_axi_writer_state_reg[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => state_reg(1),
      I1 => Q(0),
      I2 => state_reg(0),
      I3 => chunk_last_reg,
      O => \FSM_onehot_axi_writer_state_reg[0]_i_3_n_0\
    );
\FSM_onehot_axi_writer_state_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0F0B0B0E0F0F0F0"
    )
        port map (
      I0 => \FSM_onehot_axi_writer_state_reg[2]_i_7_n_0\,
      I1 => state_reg(0),
      I2 => Q(0),
      I3 => chunk_last_reg,
      I4 => state_reg(1),
      I5 => chunk_last_reg_reg_2,
      O => D(1)
    );
\FSM_onehot_axi_writer_state_reg[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => dout(0),
      I1 => state_reg(1),
      I2 => state_reg(0),
      I3 => Q(0),
      I4 => \chunk_byte_count_reg[4]_i_3__0_n_0\,
      O => \^gen_wr_a.gen_word_narrow.mem_reg\
    );
\FSM_onehot_axi_writer_state_reg[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => chunk_byte_count_reg(2),
      I1 => chunk_byte_count_reg(3),
      I2 => chunk_byte_count_reg(0),
      I3 => chunk_byte_count_reg(1),
      I4 => chunk_byte_count_reg(4),
      O => \FSM_onehot_axi_writer_state_reg[2]_i_7_n_0\
    );
\FSM_sequential_dma_state_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => chunk_byte_count_reg(2),
      I1 => chunk_byte_count_reg(3),
      I2 => Q(0),
      I3 => chunk_byte_count_reg(4),
      I4 => chunk_byte_count_reg(1),
      I5 => chunk_byte_count_reg(0),
      O => \chunk_byte_count_reg_reg[2]_10\
    );
\FSM_sequential_dma_state_reg[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000222200F00000"
    )
        port map (
      I0 => chunk_last_reg,
      I1 => chunk_error_reg,
      I2 => dout(1),
      I3 => dout(0),
      I4 => state_reg(0),
      I5 => state_reg(1),
      O => chunk_last_reg_reg_0
    );
\FSM_sequential_state_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F001"
    )
        port map (
      I0 => empty,
      I1 => rd_rst_busy,
      I2 => state_reg(1),
      I3 => state_reg(0),
      O => \FSM_sequential_state_reg[0]_i_1_n_0\
    );
\FSM_sequential_state_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F230"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]_i_2_n_0\,
      I1 => Q(0),
      I2 => state_reg(1),
      I3 => state_reg(0),
      O => \FSM_sequential_state_reg[1]_i_1_n_0\
    );
\FSM_sequential_state_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEFEEEEEE"
    )
        port map (
      I0 => dout(1),
      I1 => dout(0),
      I2 => chunk_byte_count_reg(4),
      I3 => chunk_byte_count_reg(3),
      I4 => chunk_byte_count_reg(2),
      I5 => \FSM_sequential_state_reg[1]_i_3_n_0\,
      O => \FSM_sequential_state_reg[1]_i_2_n_0\
    );
\FSM_sequential_state_reg[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => chunk_byte_count_reg(0),
      I1 => chunk_byte_count_reg(1),
      O => \FSM_sequential_state_reg[1]_i_3_n_0\
    );
\FSM_sequential_state_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_reg[0]_i_1_n_0\,
      Q => state_reg(0),
      R => chunk_last_reg_reg_1
    );
\FSM_sequential_state_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_reg[1]_i_1_n_0\,
      Q => state_reg(1),
      R => chunk_last_reg_reg_1
    );
\buf_addr_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFEFEEEFE"
    )
        port map (
      I0 => last_reg_reg_0,
      I1 => \wr_addr_offset_reg[31]_i_5_n_0\,
      I2 => \^fsm_sequential_state_reg_reg[1]_0\,
      I3 => \chunk_byte_count_reg[4]_i_3__0_n_0\,
      I4 => dout(0),
      I5 => dout(1),
      O => last_next
    );
buf_id_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B7BF4840"
    )
        port map (
      I0 => state_reg(0),
      I1 => Q(0),
      I2 => state_reg(1),
      I3 => \FSM_sequential_state_reg[1]_i_2_n_0\,
      I4 => buf_id_reg,
      O => buf_id_reg_i_1_n_0
    );
buf_id_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => buf_id_reg_i_1_n_0,
      Q => buf_id_reg,
      R => chunk_last_reg_reg_1
    );
chunk_buf_id_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABBBAAAAA888"
    )
        port map (
      I0 => buf_id_reg,
      I1 => \^gen_wr_a.gen_word_narrow.mem_reg\,
      I2 => chunk_buf_id_reg_i_2_n_0,
      I3 => \^chunk_error_reg_reg_0\,
      I4 => \chunk_byte_count_reg[3]_i_3_n_0\,
      I5 => chunk_buf_id_reg,
      O => buf_id_reg_reg_0
    );
chunk_buf_id_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => chunk_byte_count_reg(4),
      I1 => chunk_byte_count_reg(1),
      I2 => chunk_byte_count_reg(0),
      I3 => chunk_byte_count_reg(3),
      I4 => chunk_byte_count_reg(2),
      I5 => Q(0),
      O => chunk_buf_id_reg_i_2_n_0
    );
chunk_buf_id_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10101C10"
    )
        port map (
      I0 => chunk_error_reg,
      I1 => state_reg(0),
      I2 => state_reg(1),
      I3 => dout(1),
      I4 => dout(0),
      O => \^chunk_error_reg_reg_0\
    );
\chunk_byte_count_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFE2"
    )
        port map (
      I0 => \chunk_byte_count_reg[3]_i_3_n_0\,
      I1 => chunk_byte_count_reg(0),
      I2 => \chunk_byte_count_reg[4]_i_5_n_0\,
      I3 => \chunk_byte_count_reg_reg[0]_2\,
      I4 => Q(1),
      O => \FSM_onehot_axi_writer_state_reg_reg[2]\(0)
    );
\chunk_byte_count_reg[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => state_reg(1),
      I1 => chunk_byte_count_reg(0),
      I2 => dout(1),
      I3 => dout(0),
      O => chunk_byte_count_next(0)
    );
\chunk_byte_count_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF488"
    )
        port map (
      I0 => chunk_byte_count_reg(0),
      I1 => \chunk_byte_count_reg[3]_i_3_n_0\,
      I2 => \chunk_byte_count_reg[4]_i_5_n_0\,
      I3 => chunk_byte_count_reg(1),
      I4 => \chunk_byte_count_reg_reg[1]_0\,
      O => \FSM_onehot_axi_writer_state_reg_reg[2]\(1)
    );
\chunk_byte_count_reg[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010001000000"
    )
        port map (
      I0 => state_reg(1),
      I1 => dout(1),
      I2 => dout(0),
      I3 => \chunk_byte_count_reg[4]_i_3__0_n_0\,
      I4 => chunk_byte_count_reg(1),
      I5 => chunk_byte_count_reg(0),
      O => chunk_byte_count_next(1)
    );
\chunk_byte_count_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF708080"
    )
        port map (
      I0 => chunk_byte_count_reg(1),
      I1 => chunk_byte_count_reg(0),
      I2 => \chunk_byte_count_reg[3]_i_3_n_0\,
      I3 => \chunk_byte_count_reg[4]_i_5_n_0\,
      I4 => chunk_byte_count_reg(2),
      I5 => \chunk_byte_count_reg_reg[2]_11\,
      O => \FSM_onehot_axi_writer_state_reg_reg[2]\(2)
    );
\chunk_byte_count_reg[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01101010"
    )
        port map (
      I0 => state_reg(1),
      I1 => \FSM_sequential_state_reg[1]_i_2_n_0\,
      I2 => chunk_byte_count_reg(2),
      I3 => chunk_byte_count_reg(0),
      I4 => chunk_byte_count_reg(1),
      O => chunk_byte_count_next(2)
    );
\chunk_byte_count_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => data1(3),
      I1 => \chunk_byte_count_reg[3]_i_3_n_0\,
      I2 => \chunk_byte_count_reg_reg[3]_0\,
      I3 => chunk_byte_count_reg(3),
      I4 => \chunk_byte_count_reg[4]_i_5_n_0\,
      I5 => Q(1),
      O => \FSM_onehot_axi_writer_state_reg_reg[2]\(3)
    );
\chunk_byte_count_reg[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0110101010101010"
    )
        port map (
      I0 => state_reg(1),
      I1 => \FSM_sequential_state_reg[1]_i_2_n_0\,
      I2 => chunk_byte_count_reg(3),
      I3 => chunk_byte_count_reg(2),
      I4 => chunk_byte_count_reg(1),
      I5 => chunk_byte_count_reg(0),
      O => chunk_byte_count_next(3)
    );
\chunk_byte_count_reg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => chunk_byte_count_reg(0),
      I1 => chunk_byte_count_reg(1),
      I2 => chunk_byte_count_reg(2),
      I3 => chunk_byte_count_reg(3),
      O => data1(3)
    );
\chunk_byte_count_reg[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => chunk_last_reg,
      I1 => chunk_error_reg,
      I2 => state_reg(1),
      I3 => Q(0),
      I4 => state_reg(0),
      O => \chunk_byte_count_reg[3]_i_3_n_0\
    );
\chunk_byte_count_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2828283828282828"
    )
        port map (
      I0 => Q(0),
      I1 => state_reg(1),
      I2 => state_reg(0),
      I3 => dout(1),
      I4 => dout(0),
      I5 => \chunk_byte_count_reg[4]_i_3__0_n_0\,
      O => \chunk_byte_count_reg[4]_i_1_n_0\
    );
\chunk_byte_count_reg[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => \chunk_byte_count_reg[4]_i_4_n_0\,
      I1 => Q(1),
      I2 => \chunk_byte_count_reg[4]_i_5_n_0\,
      I3 => chunk_byte_count_reg(4),
      O => \FSM_onehot_axi_writer_state_reg_reg[2]\(4)
    );
\chunk_byte_count_reg[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => state_reg(1),
      I1 => dout(1),
      I2 => dout(0),
      I3 => chunk_byte_count_reg(4),
      I4 => \chunk_byte_count_reg[4]_i_4__0_n_0\,
      O => chunk_byte_count_next(4)
    );
\chunk_byte_count_reg[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EF0000FF000000"
    )
        port map (
      I0 => dout(1),
      I1 => dout(0),
      I2 => \chunk_byte_count_reg[4]_i_3__0_n_0\,
      I3 => state_reg(1),
      I4 => Q(0),
      I5 => state_reg(0),
      O => \^buf_id_next\
    );
\chunk_byte_count_reg[4]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => chunk_byte_count_reg(0),
      I1 => chunk_byte_count_reg(1),
      I2 => chunk_byte_count_reg(2),
      I3 => chunk_byte_count_reg(3),
      I4 => chunk_byte_count_reg(4),
      O => \chunk_byte_count_reg[4]_i_3__0_n_0\
    );
\chunk_byte_count_reg[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAA0000EA"
    )
        port map (
      I0 => \chunk_byte_count_reg[3]_i_3_n_0\,
      I1 => Q(0),
      I2 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      I3 => chunk_byte_count_reg(4),
      I4 => \chunk_byte_count_reg[4]_i_4__0_n_0\,
      I5 => \chunk_byte_count_reg_reg[4]_0\,
      O => \chunk_byte_count_reg[4]_i_4_n_0\
    );
\chunk_byte_count_reg[4]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => chunk_byte_count_reg(3),
      I1 => chunk_byte_count_reg(2),
      I2 => chunk_byte_count_reg(1),
      I3 => chunk_byte_count_reg(0),
      O => \chunk_byte_count_reg[4]_i_4__0_n_0\
    );
\chunk_byte_count_reg[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4062404000000000"
    )
        port map (
      I0 => state_reg(1),
      I1 => state_reg(0),
      I2 => chunk_last_reg_reg_2,
      I3 => chunk_error_reg,
      I4 => chunk_last_reg,
      I5 => Q(0),
      O => \chunk_byte_count_reg[4]_i_5_n_0\
    );
\chunk_byte_count_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \chunk_byte_count_reg[4]_i_1_n_0\,
      D => chunk_byte_count_next(0),
      Q => chunk_byte_count_reg(0),
      R => chunk_last_reg_reg_1
    );
\chunk_byte_count_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \chunk_byte_count_reg[4]_i_1_n_0\,
      D => chunk_byte_count_next(1),
      Q => chunk_byte_count_reg(1),
      R => chunk_last_reg_reg_1
    );
\chunk_byte_count_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \chunk_byte_count_reg[4]_i_1_n_0\,
      D => chunk_byte_count_next(2),
      Q => chunk_byte_count_reg(2),
      R => chunk_last_reg_reg_1
    );
\chunk_byte_count_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \chunk_byte_count_reg[4]_i_1_n_0\,
      D => chunk_byte_count_next(3),
      Q => chunk_byte_count_reg(3),
      R => chunk_last_reg_reg_1
    );
\chunk_byte_count_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => \chunk_byte_count_reg[4]_i_1_n_0\,
      D => chunk_byte_count_next(4),
      Q => chunk_byte_count_reg(4),
      R => chunk_last_reg_reg_1
    );
chunk_error_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FB0FFF00080000"
    )
        port map (
      I0 => dout(0),
      I1 => \FSM_sequential_state_reg[1]_i_2_n_0\,
      I2 => state_reg(1),
      I3 => Q(0),
      I4 => state_reg(0),
      I5 => chunk_error_reg,
      O => chunk_error_reg_i_1_n_0
    );
chunk_error_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => chunk_error_reg_i_1_n_0,
      Q => chunk_error_reg,
      R => chunk_last_reg_reg_1
    );
chunk_last_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FB0FFF00080000"
    )
        port map (
      I0 => chunk_last_reg_reg_2,
      I1 => \FSM_sequential_state_reg[1]_i_2_n_0\,
      I2 => state_reg(1),
      I3 => Q(0),
      I4 => state_reg(0),
      I5 => chunk_last_reg,
      O => chunk_last_reg_i_1_n_0
    );
chunk_last_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => chunk_last_reg_i_1_n_0,
      Q => chunk_last_reg,
      R => chunk_last_reg_reg_1
    );
last_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888F8880"
    )
        port map (
      I0 => \chunk_byte_count_reg[4]_i_5_n_0\,
      I1 => \FSM_onehot_axi_writer_state_reg[2]_i_7_n_0\,
      I2 => last_reg_reg_0,
      I3 => \^buf_id_next\,
      I4 => last_reg,
      O => last_reg_reg
    );
\ping_pong_buf_reg[0,0][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => chunk_byte_count_reg(2),
      I1 => chunk_byte_count_reg(3),
      I2 => chunk_byte_count_reg(0),
      I3 => chunk_byte_count_reg(1),
      I4 => buf_id_reg,
      I5 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      O => \chunk_byte_count_reg_reg[2]_0\
    );
\ping_pong_buf_reg[0,0][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => chunk_byte_count_reg(2),
      I1 => chunk_byte_count_reg(3),
      I2 => chunk_byte_count_reg(1),
      I3 => chunk_byte_count_reg(0),
      I4 => buf_id_reg,
      I5 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      O => \chunk_byte_count_reg_reg[2]_1\
    );
\ping_pong_buf_reg[0,0][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => chunk_byte_count_reg(2),
      I1 => chunk_byte_count_reg(3),
      I2 => chunk_byte_count_reg(0),
      I3 => chunk_byte_count_reg(1),
      I4 => buf_id_reg,
      I5 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      O => \chunk_byte_count_reg_reg[2]_2\
    );
\ping_pong_buf_reg[0,0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => buf_id_reg,
      I1 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      I2 => chunk_byte_count_reg(2),
      I3 => chunk_byte_count_reg(3),
      I4 => chunk_byte_count_reg(0),
      I5 => chunk_byte_count_reg(1),
      O => buf_id_reg_reg_1
    );
\ping_pong_buf_reg[0,1][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      I1 => buf_id_reg,
      I2 => chunk_byte_count_reg(2),
      I3 => chunk_byte_count_reg(3),
      I4 => chunk_byte_count_reg(1),
      I5 => chunk_byte_count_reg(0),
      O => buf_id_reg_reg_3
    );
\ping_pong_buf_reg[0,1][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      I1 => buf_id_reg,
      I2 => chunk_byte_count_reg(2),
      I3 => chunk_byte_count_reg(3),
      I4 => chunk_byte_count_reg(0),
      I5 => chunk_byte_count_reg(1),
      O => buf_id_reg_reg_4
    );
\ping_pong_buf_reg[0,1][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      I1 => buf_id_reg,
      I2 => chunk_byte_count_reg(2),
      I3 => chunk_byte_count_reg(3),
      I4 => chunk_byte_count_reg(1),
      I5 => chunk_byte_count_reg(0),
      O => buf_id_reg_reg_5
    );
\ping_pong_buf_reg[0,1][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      I1 => buf_id_reg,
      I2 => chunk_byte_count_reg(2),
      I3 => chunk_byte_count_reg(3),
      I4 => chunk_byte_count_reg(1),
      I5 => chunk_byte_count_reg(0),
      O => buf_id_reg_reg_2
    );
\ping_pong_buf_reg[0,2][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      I1 => buf_id_reg,
      I2 => chunk_byte_count_reg(3),
      I3 => chunk_byte_count_reg(2),
      I4 => chunk_byte_count_reg(1),
      I5 => chunk_byte_count_reg(0),
      O => buf_id_reg_reg_7
    );
\ping_pong_buf_reg[0,2][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      I1 => buf_id_reg,
      I2 => chunk_byte_count_reg(3),
      I3 => chunk_byte_count_reg(2),
      I4 => chunk_byte_count_reg(0),
      I5 => chunk_byte_count_reg(1),
      O => buf_id_reg_reg_8
    );
\ping_pong_buf_reg[0,2][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      I1 => buf_id_reg,
      I2 => chunk_byte_count_reg(3),
      I3 => chunk_byte_count_reg(2),
      I4 => chunk_byte_count_reg(1),
      I5 => chunk_byte_count_reg(0),
      O => buf_id_reg_reg_9
    );
\ping_pong_buf_reg[0,2][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      I1 => buf_id_reg,
      I2 => chunk_byte_count_reg(3),
      I3 => chunk_byte_count_reg(2),
      I4 => chunk_byte_count_reg(1),
      I5 => chunk_byte_count_reg(0),
      O => buf_id_reg_reg_6
    );
\ping_pong_buf_reg[0,3][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => chunk_byte_count_reg(2),
      I1 => chunk_byte_count_reg(3),
      I2 => chunk_byte_count_reg(0),
      I3 => chunk_byte_count_reg(1),
      I4 => buf_id_reg,
      I5 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      O => \chunk_byte_count_reg_reg[2]_3\
    );
\ping_pong_buf_reg[0,3][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => chunk_byte_count_reg(2),
      I1 => chunk_byte_count_reg(3),
      I2 => chunk_byte_count_reg(1),
      I3 => chunk_byte_count_reg(0),
      I4 => buf_id_reg,
      I5 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      O => \chunk_byte_count_reg_reg[2]_4\
    );
\ping_pong_buf_reg[0,3][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => buf_id_reg,
      I1 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      I2 => chunk_byte_count_reg(0),
      I3 => chunk_byte_count_reg(1),
      I4 => chunk_byte_count_reg(2),
      I5 => chunk_byte_count_reg(3),
      O => buf_id_reg_reg_10
    );
\ping_pong_buf_reg[0,3][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => chunk_byte_count_reg(0),
      I1 => chunk_byte_count_reg(1),
      I2 => chunk_byte_count_reg(2),
      I3 => chunk_byte_count_reg(3),
      I4 => buf_id_reg,
      I5 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      O => \chunk_byte_count_reg_reg[0]_0\
    );
\ping_pong_buf_reg[1,0][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => chunk_byte_count_reg(2),
      I1 => chunk_byte_count_reg(3),
      I2 => chunk_byte_count_reg(0),
      I3 => chunk_byte_count_reg(1),
      I4 => buf_id_reg,
      I5 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      O => \chunk_byte_count_reg_reg[2]_5\
    );
\ping_pong_buf_reg[1,0][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => chunk_byte_count_reg(2),
      I1 => chunk_byte_count_reg(3),
      I2 => chunk_byte_count_reg(1),
      I3 => chunk_byte_count_reg(0),
      I4 => buf_id_reg,
      I5 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      O => \chunk_byte_count_reg_reg[2]_6\
    );
\ping_pong_buf_reg[1,0][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => chunk_byte_count_reg(2),
      I1 => chunk_byte_count_reg(3),
      I2 => chunk_byte_count_reg(0),
      I3 => chunk_byte_count_reg(1),
      I4 => buf_id_reg,
      I5 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      O => \chunk_byte_count_reg_reg[2]_7\
    );
\ping_pong_buf_reg[1,0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => buf_id_reg,
      I1 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      I2 => chunk_byte_count_reg(2),
      I3 => chunk_byte_count_reg(3),
      I4 => chunk_byte_count_reg(0),
      I5 => chunk_byte_count_reg(1),
      O => buf_id_reg_reg_11
    );
\ping_pong_buf_reg[1,1][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      I1 => buf_id_reg,
      I2 => chunk_byte_count_reg(2),
      I3 => chunk_byte_count_reg(3),
      I4 => chunk_byte_count_reg(1),
      I5 => chunk_byte_count_reg(0),
      O => buf_id_reg_reg_13
    );
\ping_pong_buf_reg[1,1][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      I1 => buf_id_reg,
      I2 => chunk_byte_count_reg(2),
      I3 => chunk_byte_count_reg(3),
      I4 => chunk_byte_count_reg(0),
      I5 => chunk_byte_count_reg(1),
      O => buf_id_reg_reg_14
    );
\ping_pong_buf_reg[1,1][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      I1 => buf_id_reg,
      I2 => chunk_byte_count_reg(2),
      I3 => chunk_byte_count_reg(3),
      I4 => chunk_byte_count_reg(1),
      I5 => chunk_byte_count_reg(0),
      O => buf_id_reg_reg_15
    );
\ping_pong_buf_reg[1,1][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      I1 => buf_id_reg,
      I2 => chunk_byte_count_reg(2),
      I3 => chunk_byte_count_reg(3),
      I4 => chunk_byte_count_reg(1),
      I5 => chunk_byte_count_reg(0),
      O => buf_id_reg_reg_12
    );
\ping_pong_buf_reg[1,2][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      I1 => buf_id_reg,
      I2 => chunk_byte_count_reg(3),
      I3 => chunk_byte_count_reg(2),
      I4 => chunk_byte_count_reg(1),
      I5 => chunk_byte_count_reg(0),
      O => buf_id_reg_reg_17
    );
\ping_pong_buf_reg[1,2][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      I1 => buf_id_reg,
      I2 => chunk_byte_count_reg(3),
      I3 => chunk_byte_count_reg(2),
      I4 => chunk_byte_count_reg(0),
      I5 => chunk_byte_count_reg(1),
      O => buf_id_reg_reg_18
    );
\ping_pong_buf_reg[1,2][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      I1 => buf_id_reg,
      I2 => chunk_byte_count_reg(3),
      I3 => chunk_byte_count_reg(2),
      I4 => chunk_byte_count_reg(1),
      I5 => chunk_byte_count_reg(0),
      O => buf_id_reg_reg_19
    );
\ping_pong_buf_reg[1,2][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      I1 => buf_id_reg,
      I2 => chunk_byte_count_reg(3),
      I3 => chunk_byte_count_reg(2),
      I4 => chunk_byte_count_reg(1),
      I5 => chunk_byte_count_reg(0),
      O => buf_id_reg_reg_16
    );
\ping_pong_buf_reg[1,3][15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => chunk_byte_count_reg(2),
      I1 => chunk_byte_count_reg(3),
      I2 => chunk_byte_count_reg(0),
      I3 => chunk_byte_count_reg(1),
      I4 => buf_id_reg,
      I5 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      O => \chunk_byte_count_reg_reg[2]_8\
    );
\ping_pong_buf_reg[1,3][23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => chunk_byte_count_reg(2),
      I1 => chunk_byte_count_reg(3),
      I2 => chunk_byte_count_reg(1),
      I3 => chunk_byte_count_reg(0),
      I4 => buf_id_reg,
      I5 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      O => \chunk_byte_count_reg_reg[2]_9\
    );
\ping_pong_buf_reg[1,3][31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => buf_id_reg,
      I1 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      I2 => chunk_byte_count_reg(0),
      I3 => chunk_byte_count_reg(1),
      I4 => chunk_byte_count_reg(2),
      I5 => chunk_byte_count_reg(3),
      O => buf_id_reg_reg_20
    );
\ping_pong_buf_reg[1,3][31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => state_reg(1),
      I1 => state_reg(0),
      I2 => dout(1),
      I3 => dout(0),
      O => \ping_pong_buf_reg[1,3][31]_i_2_n_0\
    );
\ping_pong_buf_reg[1,3][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => chunk_byte_count_reg(0),
      I1 => chunk_byte_count_reg(1),
      I2 => chunk_byte_count_reg(2),
      I3 => chunk_byte_count_reg(3),
      I4 => buf_id_reg,
      I5 => \ping_pong_buf_reg[1,3][31]_i_2_n_0\,
      O => \chunk_byte_count_reg_reg[0]_1\
    );
rx_async_fifo_inst_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => rd_rst_busy,
      I1 => empty,
      I2 => state_reg(1),
      I3 => state_reg(0),
      O => rd_en
    );
\wr_addr_offset_reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAAA"
    )
        port map (
      I0 => \wr_addr_offset_reg[31]_i_4_n_0\,
      I1 => axi_aresetn,
      I2 => chunk_error_reg,
      I3 => \wr_addr_offset_reg[31]_i_5_n_0\,
      I4 => Q(2),
      O => axi_aresetn_0
    );
\wr_addr_offset_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8F008800"
    )
        port map (
      I0 => \wr_addr_offset_reg[31]_i_5_n_0\,
      I1 => chunk_error_reg,
      I2 => \FSM_onehot_axi_writer_state_reg[2]_i_7_n_0\,
      I3 => axi_aresetn,
      I4 => \wr_addr_offset_reg[31]_i_6_n_0\,
      I5 => \wr_addr_offset_reg_reg[31]\,
      O => wr_addr_offset_reg(0)
    );
\wr_addr_offset_reg[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F80000FFF80000"
    )
        port map (
      I0 => dout(0),
      I1 => \^fsm_sequential_state_reg_reg[1]_0\,
      I2 => \wr_addr_offset_reg_reg[0]\,
      I3 => \wr_addr_offset_reg[31]_i_6_n_0\,
      I4 => axi_aresetn,
      I5 => \FSM_onehot_axi_writer_state_reg[2]_i_7_n_0\,
      O => \wr_addr_offset_reg[31]_i_4_n_0\
    );
\wr_addr_offset_reg[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_reg(0),
      I1 => Q(0),
      I2 => state_reg(1),
      O => \wr_addr_offset_reg[31]_i_5_n_0\
    );
\wr_addr_offset_reg[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CA00000"
    )
        port map (
      I0 => chunk_last_reg,
      I1 => dout(1),
      I2 => state_reg(1),
      I3 => state_reg(0),
      I4 => Q(0),
      O => \wr_addr_offset_reg[31]_i_6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_eth_rx_0_2_dma_status_manager is
  port (
    wready_reg_reg_0 : out STD_LOGIC;
    axi_aresetn_0 : out STD_LOGIC;
    awready_reg_reg_0 : out STD_LOGIC;
    bvalid_reg_reg_0 : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 0 to 0 );
    read_state_reg_reg_0 : out STD_LOGIC;
    arready_reg_reg_0 : out STD_LOGIC;
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    dma_state_reg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    wr_base_addr_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_dma_state_reg_reg[1]_0\ : out STD_LOGIC;
    \rx_payload_region_base_addr_reg_reg[9]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \rx_payload_region_base_addr_reg_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \rx_payload_region_base_addr_reg_reg[14]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \rx_payload_region_base_addr_reg_reg[18]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \rx_payload_region_base_addr_reg_reg[22]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \rx_payload_region_base_addr_reg_reg[26]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \rx_payload_region_base_addr_reg_reg[30]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 1 downto 0 );
    axi_aclk : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_WREADY : in STD_LOGIC;
    buf_id_next : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_dma_state_reg_reg[0]_0\ : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_eth_rx_0_2_dma_status_manager : entity is "dma_status_manager";
end design_1_eth_rx_0_2_dma_status_manager;

architecture STRUCTURE of design_1_eth_rx_0_2_dma_status_manager is
  signal \FSM_onehot_state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_sequential_dma_state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_dma_state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_dma_state_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal SHIFT_LEFT : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal arready_reg_i_1_n_0 : STD_LOGIC;
  signal \^arready_reg_reg_0\ : STD_LOGIC;
  signal aw_seen_reg : STD_LOGIC;
  signal aw_seen_reg_i_1_n_0 : STD_LOGIC;
  signal awready_next : STD_LOGIC;
  signal awready_reg_i_2_n_0 : STD_LOGIC;
  signal \^awready_reg_reg_0\ : STD_LOGIC;
  signal axi4_lite_rd_data_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \axi4_lite_rd_data_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi4_lite_rd_data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi4_lite_rd_data_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal axi4_lite_wr_addr_offset_next : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi4_lite_wr_addr_offset_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi4_lite_wr_data_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi4_lite_wr_data_reg_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^axi_aresetn_0\ : STD_LOGIC;
  signal \bresp_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal bvalid_next : STD_LOGIC;
  signal bvalid_reg_i_1_n_0 : STD_LOGIC;
  signal \^bvalid_reg_reg_0\ : STD_LOGIC;
  signal \^dma_state_reg\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal head_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \head_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \head_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \head_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal read_state_reg_i_1_n_0 : STD_LOGIC;
  signal \^read_state_reg_reg_0\ : STD_LOGIC;
  signal \rresp_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal rx_payload_region_base_addr_next : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rx_payload_region_base_addr_reg : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal rx_payload_region_base_addr_valid_reg : STD_LOGIC;
  signal rx_payload_region_base_addr_valid_reg_i_1_n_0 : STD_LOGIC;
  signal \tail_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \tail_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal w_seen_reg : STD_LOGIC;
  signal w_seen_reg_i_1_n_0 : STD_LOGIC;
  signal \wr_base_addr_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \wr_base_addr_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \wr_base_addr_reg_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \wr_base_addr_reg_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \wr_base_addr_reg_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \wr_base_addr_reg_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \wr_base_addr_reg_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \wr_base_addr_reg_reg[14]_i_1_n_1\ : STD_LOGIC;
  signal \wr_base_addr_reg_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \wr_base_addr_reg_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \wr_base_addr_reg_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \wr_base_addr_reg_reg[18]_i_1_n_1\ : STD_LOGIC;
  signal \wr_base_addr_reg_reg[18]_i_1_n_2\ : STD_LOGIC;
  signal \wr_base_addr_reg_reg[18]_i_1_n_3\ : STD_LOGIC;
  signal \wr_base_addr_reg_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \wr_base_addr_reg_reg[22]_i_1_n_1\ : STD_LOGIC;
  signal \wr_base_addr_reg_reg[22]_i_1_n_2\ : STD_LOGIC;
  signal \wr_base_addr_reg_reg[22]_i_1_n_3\ : STD_LOGIC;
  signal \wr_base_addr_reg_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \wr_base_addr_reg_reg[26]_i_1_n_1\ : STD_LOGIC;
  signal \wr_base_addr_reg_reg[26]_i_1_n_2\ : STD_LOGIC;
  signal \wr_base_addr_reg_reg[26]_i_1_n_3\ : STD_LOGIC;
  signal \wr_base_addr_reg_reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \wr_base_addr_reg_reg[30]_i_1_n_1\ : STD_LOGIC;
  signal \wr_base_addr_reg_reg[30]_i_1_n_2\ : STD_LOGIC;
  signal \wr_base_addr_reg_reg[30]_i_1_n_3\ : STD_LOGIC;
  signal wready_reg_i_1_n_0 : STD_LOGIC;
  signal \^wready_reg_reg_0\ : STD_LOGIC;
  signal \NLW_wr_base_addr_reg_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wr_base_addr_reg_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_axi_writer_state_reg[2]_i_3\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \FSM_onehot_state_reg[1]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \FSM_onehot_state_reg[2]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \FSM_onehot_state_reg[2]_i_3\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \FSM_onehot_state_reg[2]_i_4\ : label is "soft_lutpair54";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[0]\ : label is "s_idle:001,s_update_reg:010,s_write_resp:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[1]\ : label is "s_idle:001,s_update_reg:010,s_write_resp:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[2]\ : label is "s_idle:001,s_update_reg:010,s_write_resp:100,";
  attribute SOFT_HLUTNM of \FSM_sequential_dma_state_reg[0]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \FSM_sequential_dma_state_reg[1]_i_1\ : label is "soft_lutpair56";
  attribute FSM_ENCODED_STATES of \FSM_sequential_dma_state_reg_reg[0]\ : label is "s_wait_frame_done:10,s_dma_idle:00,s_issue_valid:01,s_publish_tail:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_dma_state_reg_reg[1]\ : label is "s_wait_frame_done:10,s_dma_idle:00,s_issue_valid:01,s_publish_tail:11";
  attribute SOFT_HLUTNM of \axi4_lite_rd_data_reg[1]_i_3\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \bresp_reg[1]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of bvalid_reg_i_1 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \head_reg[1]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of read_state_reg_i_1 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of w_seen_reg_i_1 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \wr_base_addr_reg[31]_i_1\ : label is "soft_lutpair56";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \wr_base_addr_reg_reg[10]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \wr_base_addr_reg_reg[10]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \wr_base_addr_reg_reg[14]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \wr_base_addr_reg_reg[14]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \wr_base_addr_reg_reg[18]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \wr_base_addr_reg_reg[18]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \wr_base_addr_reg_reg[22]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \wr_base_addr_reg_reg[22]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \wr_base_addr_reg_reg[26]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \wr_base_addr_reg_reg[26]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \wr_base_addr_reg_reg[30]_i_1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \wr_base_addr_reg_reg[30]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \wr_base_addr_reg_reg[31]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \wr_base_addr_reg_reg[31]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  S_AXI_BRESP(0) <= \^s_axi_bresp\(0);
  S_AXI_RDATA(1 downto 0) <= \^s_axi_rdata\(1 downto 0);
  S_AXI_RRESP(0) <= \^s_axi_rresp\(0);
  arready_reg_reg_0 <= \^arready_reg_reg_0\;
  awready_reg_reg_0 <= \^awready_reg_reg_0\;
  axi_aresetn_0 <= \^axi_aresetn_0\;
  bvalid_reg_reg_0 <= \^bvalid_reg_reg_0\;
  dma_state_reg(1 downto 0) <= \^dma_state_reg\(1 downto 0);
  read_state_reg_reg_0 <= \^read_state_reg_reg_0\;
  wready_reg_reg_0 <= \^wready_reg_reg_0\;
\FSM_onehot_axi_writer_state_reg[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^dma_state_reg\(1),
      I1 => \^dma_state_reg\(0),
      I2 => Q(0),
      O => \FSM_sequential_dma_state_reg_reg[1]_0\
    );
\FSM_onehot_state_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg[2]_i_2_n_0\,
      I2 => \FSM_onehot_state_reg_reg_n_0_[0]\,
      O => \FSM_onehot_state_reg[0]_i_1_n_0\
    );
\FSM_onehot_state_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg[2]_i_2_n_0\,
      I2 => bvalid_next,
      O => \FSM_onehot_state_reg[1]_i_1_n_0\
    );
\FSM_onehot_state_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bvalid_next,
      I1 => \FSM_onehot_state_reg[2]_i_2_n_0\,
      I2 => \FSM_onehot_state_reg_reg_n_0_[2]\,
      O => \FSM_onehot_state_reg[2]_i_1_n_0\
    );
\FSM_onehot_state_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFC888"
    )
        port map (
      I0 => axi4_lite_wr_addr_offset_next(0),
      I1 => \FSM_onehot_state_reg[2]_i_3_n_0\,
      I2 => \FSM_onehot_state_reg_reg_n_0_[0]\,
      I3 => aw_seen_reg,
      I4 => awready_next,
      I5 => bvalid_next,
      O => \FSM_onehot_state_reg[2]_i_2_n_0\
    );
\FSM_onehot_state_reg[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^wready_reg_reg_0\,
      I1 => S_AXI_WVALID,
      I2 => w_seen_reg,
      O => \FSM_onehot_state_reg[2]_i_3_n_0\
    );
\FSM_onehot_state_reg[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^bvalid_reg_reg_0\,
      I1 => \FSM_onehot_state_reg_reg_n_0_[2]\,
      I2 => S_AXI_BREADY,
      O => awready_next
    );
\FSM_onehot_state_reg_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => \FSM_onehot_state_reg[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_reg_n_0_[0]\,
      S => \^axi_aresetn_0\
    );
\FSM_onehot_state_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => \FSM_onehot_state_reg[1]_i_1_n_0\,
      Q => bvalid_next,
      R => \^axi_aresetn_0\
    );
\FSM_onehot_state_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => \FSM_onehot_state_reg[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_reg_n_0_[2]\,
      R => \^axi_aresetn_0\
    );
\FSM_sequential_dma_state_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAF4FFF4"
    )
        port map (
      I0 => \^dma_state_reg\(1),
      I1 => rx_payload_region_base_addr_valid_reg,
      I2 => \FSM_sequential_dma_state_reg_reg[0]_0\,
      I3 => \^dma_state_reg\(0),
      I4 => Q(0),
      O => \FSM_sequential_dma_state_reg[0]_i_1_n_0\
    );
\FSM_sequential_dma_state_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7C4C"
    )
        port map (
      I0 => \FSM_sequential_dma_state_reg[1]_i_2_n_0\,
      I1 => \^dma_state_reg\(1),
      I2 => \^dma_state_reg\(0),
      I3 => Q(0),
      O => \FSM_sequential_dma_state_reg[1]_i_1_n_0\
    );
\FSM_sequential_dma_state_reg[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F69F"
    )
        port map (
      I0 => head_reg(1),
      I1 => SHIFT_LEFT(9),
      I2 => SHIFT_LEFT(8),
      I3 => head_reg(0),
      O => \FSM_sequential_dma_state_reg[1]_i_2_n_0\
    );
\FSM_sequential_dma_state_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => \FSM_sequential_dma_state_reg[0]_i_1_n_0\,
      Q => \^dma_state_reg\(0),
      R => \^axi_aresetn_0\
    );
\FSM_sequential_dma_state_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axi_aclk,
      CE => '1',
      D => \FSM_sequential_dma_state_reg[1]_i_1_n_0\,
      Q => \^dma_state_reg\(1),
      R => \^axi_aresetn_0\
    );
arready_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CF88"
    )
        port map (
      I0 => S_AXI_RREADY,
      I1 => \^read_state_reg_reg_0\,
      I2 => S_AXI_ARVALID,
      I3 => \^arready_reg_reg_0\,
      O => arready_reg_i_1_n_0
    );
arready_reg_reg: unisim.vcomponents.FDSE
     port map (
      C => axi_aclk,
      CE => '1',
      D => arready_reg_i_1_n_0,
      Q => \^arready_reg_reg_0\,
      S => \^axi_aresetn_0\
    );
aw_seen_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8080"
    )
        port map (
      I0 => \^awready_reg_reg_0\,
      I1 => \FSM_onehot_state_reg_reg_n_0_[0]\,
      I2 => S_AXI_AWVALID,
      I3 => bvalid_next,
      I4 => aw_seen_reg,
      O => aw_seen_reg_i_1_n_0
    );
aw_seen_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => aw_seen_reg_i_1_n_0,
      Q => aw_seen_reg,
      R => \^axi_aresetn_0\
    );
awready_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_aresetn,
      O => \^axi_aresetn_0\
    );
awready_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF2A2A2A2A2A2A2A"
    )
        port map (
      I0 => \^awready_reg_reg_0\,
      I1 => \FSM_onehot_state_reg_reg_n_0_[0]\,
      I2 => S_AXI_AWVALID,
      I3 => S_AXI_BREADY,
      I4 => \FSM_onehot_state_reg_reg_n_0_[2]\,
      I5 => \^bvalid_reg_reg_0\,
      O => awready_reg_i_2_n_0
    );
awready_reg_reg: unisim.vcomponents.FDSE
     port map (
      C => axi_aclk,
      CE => '1',
      D => awready_reg_i_2_n_0,
      Q => \^awready_reg_reg_0\,
      S => \^axi_aresetn_0\
    );
\axi4_lite_rd_data_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2230FFFF22300000"
    )
        port map (
      I0 => SHIFT_LEFT(8),
      I1 => \axi4_lite_rd_data_reg[1]_i_2_n_0\,
      I2 => head_reg(0),
      I3 => S_AXI_ARADDR(2),
      I4 => axi4_lite_rd_data_reg(0),
      I5 => \^s_axi_rdata\(0),
      O => \axi4_lite_rd_data_reg[0]_i_1_n_0\
    );
\axi4_lite_rd_data_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2230FFFF22300000"
    )
        port map (
      I0 => SHIFT_LEFT(9),
      I1 => \axi4_lite_rd_data_reg[1]_i_2_n_0\,
      I2 => head_reg(1),
      I3 => S_AXI_ARADDR(2),
      I4 => axi4_lite_rd_data_reg(0),
      I5 => \^s_axi_rdata\(1),
      O => \axi4_lite_rd_data_reg[1]_i_1_n_0\
    );
\axi4_lite_rd_data_reg[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => S_AXI_ARADDR(3),
      I1 => S_AXI_ARADDR(1),
      I2 => S_AXI_ARADDR(0),
      O => \axi4_lite_rd_data_reg[1]_i_2_n_0\
    );
\axi4_lite_rd_data_reg[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^read_state_reg_reg_0\,
      I1 => S_AXI_ARVALID,
      I2 => axi_aresetn,
      I3 => \^arready_reg_reg_0\,
      O => axi4_lite_rd_data_reg(0)
    );
\axi4_lite_rd_data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \axi4_lite_rd_data_reg[0]_i_1_n_0\,
      Q => \^s_axi_rdata\(0),
      R => '0'
    );
\axi4_lite_rd_data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \axi4_lite_rd_data_reg[1]_i_1_n_0\,
      Q => \^s_axi_rdata\(1),
      R => '0'
    );
\axi4_lite_wr_addr_offset_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => \FSM_onehot_state_reg_reg_n_0_[0]\,
      I2 => \^awready_reg_reg_0\,
      O => axi4_lite_wr_addr_offset_next(0)
    );
\axi4_lite_wr_addr_offset_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_addr_offset_next(0),
      D => S_AXI_AWADDR(0),
      Q => axi4_lite_wr_addr_offset_reg(0),
      R => \^axi_aresetn_0\
    );
\axi4_lite_wr_addr_offset_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_addr_offset_next(0),
      D => S_AXI_AWADDR(1),
      Q => axi4_lite_wr_addr_offset_reg(1),
      R => \^axi_aresetn_0\
    );
\axi4_lite_wr_addr_offset_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_addr_offset_next(0),
      D => S_AXI_AWADDR(2),
      Q => axi4_lite_wr_addr_offset_reg(2),
      R => \^axi_aresetn_0\
    );
\axi4_lite_wr_addr_offset_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_addr_offset_next(0),
      D => S_AXI_AWADDR(3),
      Q => axi4_lite_wr_addr_offset_reg(3),
      R => \^axi_aresetn_0\
    );
\axi4_lite_wr_data_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^wready_reg_reg_0\,
      I1 => \FSM_onehot_state_reg_reg_n_0_[0]\,
      I2 => S_AXI_WVALID,
      I3 => axi_aresetn,
      O => axi4_lite_wr_data_reg_0(0)
    );
\axi4_lite_wr_data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(0),
      Q => axi4_lite_wr_data_reg(0),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(10),
      Q => axi4_lite_wr_data_reg(10),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(11),
      Q => axi4_lite_wr_data_reg(11),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(12),
      Q => axi4_lite_wr_data_reg(12),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(13),
      Q => axi4_lite_wr_data_reg(13),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(14),
      Q => axi4_lite_wr_data_reg(14),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(15),
      Q => axi4_lite_wr_data_reg(15),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(16),
      Q => axi4_lite_wr_data_reg(16),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(17),
      Q => axi4_lite_wr_data_reg(17),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(18),
      Q => axi4_lite_wr_data_reg(18),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(19),
      Q => axi4_lite_wr_data_reg(19),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(1),
      Q => axi4_lite_wr_data_reg(1),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(20),
      Q => axi4_lite_wr_data_reg(20),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(21),
      Q => axi4_lite_wr_data_reg(21),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(22),
      Q => axi4_lite_wr_data_reg(22),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(23),
      Q => axi4_lite_wr_data_reg(23),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(24),
      Q => axi4_lite_wr_data_reg(24),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(25),
      Q => axi4_lite_wr_data_reg(25),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(26),
      Q => axi4_lite_wr_data_reg(26),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(27),
      Q => axi4_lite_wr_data_reg(27),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(28),
      Q => axi4_lite_wr_data_reg(28),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(29),
      Q => axi4_lite_wr_data_reg(29),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(2),
      Q => axi4_lite_wr_data_reg(2),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(30),
      Q => axi4_lite_wr_data_reg(30),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(31),
      Q => axi4_lite_wr_data_reg(31),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(3),
      Q => axi4_lite_wr_data_reg(3),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(4),
      Q => axi4_lite_wr_data_reg(4),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(5),
      Q => axi4_lite_wr_data_reg(5),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(6),
      Q => axi4_lite_wr_data_reg(6),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(7),
      Q => axi4_lite_wr_data_reg(7),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(8),
      Q => axi4_lite_wr_data_reg(8),
      R => '0'
    );
\axi4_lite_wr_data_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => axi4_lite_wr_data_reg_0(0),
      D => S_AXI_WDATA(9),
      Q => axi4_lite_wr_data_reg(9),
      R => '0'
    );
\bresp_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFE00"
    )
        port map (
      I0 => axi4_lite_wr_addr_offset_reg(3),
      I1 => axi4_lite_wr_addr_offset_reg(1),
      I2 => axi4_lite_wr_addr_offset_reg(0),
      I3 => bvalid_next,
      I4 => \^s_axi_bresp\(0),
      O => \bresp_reg[1]_i_1_n_0\
    );
\bresp_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \bresp_reg[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => \^axi_aresetn_0\
    );
bvalid_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF70"
    )
        port map (
      I0 => S_AXI_BREADY,
      I1 => \FSM_onehot_state_reg_reg_n_0_[2]\,
      I2 => \^bvalid_reg_reg_0\,
      I3 => bvalid_next,
      O => bvalid_reg_i_1_n_0
    );
bvalid_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => bvalid_reg_i_1_n_0,
      Q => \^bvalid_reg_reg_0\,
      R => \^axi_aresetn_0\
    );
\chunk_byte_count_reg[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF404040"
    )
        port map (
      I0 => \^dma_state_reg\(1),
      I1 => \^dma_state_reg\(0),
      I2 => Q(0),
      I3 => Q(1),
      I4 => M_AXI_WREADY,
      I5 => buf_id_next,
      O => E(0)
    );
\head_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF01000000"
    )
        port map (
      I0 => axi4_lite_wr_addr_offset_reg(3),
      I1 => axi4_lite_wr_addr_offset_reg(1),
      I2 => axi4_lite_wr_addr_offset_reg(0),
      I3 => axi4_lite_wr_addr_offset_reg(2),
      I4 => bvalid_next,
      I5 => head_reg(0),
      O => \head_reg[0]_i_1_n_0\
    );
\head_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0080"
    )
        port map (
      I0 => head_reg(0),
      I1 => bvalid_next,
      I2 => axi4_lite_wr_addr_offset_reg(2),
      I3 => \head_reg[1]_i_2_n_0\,
      I4 => head_reg(1),
      O => \head_reg[1]_i_1_n_0\
    );
\head_reg[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => axi4_lite_wr_addr_offset_reg(3),
      I1 => axi4_lite_wr_addr_offset_reg(1),
      I2 => axi4_lite_wr_addr_offset_reg(0),
      O => \head_reg[1]_i_2_n_0\
    );
\head_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \head_reg[0]_i_1_n_0\,
      Q => head_reg(0),
      R => \^axi_aresetn_0\
    );
\head_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \head_reg[1]_i_1_n_0\,
      Q => head_reg(1),
      R => \^axi_aresetn_0\
    );
read_state_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7444"
    )
        port map (
      I0 => S_AXI_RREADY,
      I1 => \^read_state_reg_reg_0\,
      I2 => S_AXI_ARVALID,
      I3 => \^arready_reg_reg_0\,
      O => read_state_reg_i_1_n_0
    );
read_state_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => read_state_reg_i_1_n_0,
      Q => \^read_state_reg_reg_0\,
      R => \^axi_aresetn_0\
    );
\rresp_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \axi4_lite_rd_data_reg[1]_i_2_n_0\,
      I1 => \^arready_reg_reg_0\,
      I2 => S_AXI_ARVALID,
      I3 => \^read_state_reg_reg_0\,
      I4 => \^s_axi_rresp\(0),
      O => \rresp_reg[1]_i_1_n_0\
    );
\rresp_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \rresp_reg[1]_i_1_n_0\,
      Q => \^s_axi_rresp\(0),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => axi4_lite_wr_addr_offset_reg(2),
      I1 => bvalid_next,
      I2 => axi4_lite_wr_addr_offset_reg(0),
      I3 => axi4_lite_wr_addr_offset_reg(1),
      I4 => axi4_lite_wr_addr_offset_reg(3),
      O => rx_payload_region_base_addr_next(0)
    );
\rx_payload_region_base_addr_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(0),
      Q => \rx_payload_region_base_addr_reg_reg[6]_0\(0),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(10),
      Q => rx_payload_region_base_addr_reg(10),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(11),
      Q => rx_payload_region_base_addr_reg(11),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(12),
      Q => rx_payload_region_base_addr_reg(12),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(13),
      Q => rx_payload_region_base_addr_reg(13),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(14),
      Q => rx_payload_region_base_addr_reg(14),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(15),
      Q => rx_payload_region_base_addr_reg(15),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(16),
      Q => rx_payload_region_base_addr_reg(16),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(17),
      Q => rx_payload_region_base_addr_reg(17),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(18),
      Q => rx_payload_region_base_addr_reg(18),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(19),
      Q => rx_payload_region_base_addr_reg(19),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(1),
      Q => \rx_payload_region_base_addr_reg_reg[6]_0\(1),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(20),
      Q => rx_payload_region_base_addr_reg(20),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(21),
      Q => rx_payload_region_base_addr_reg(21),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(22),
      Q => rx_payload_region_base_addr_reg(22),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(23),
      Q => rx_payload_region_base_addr_reg(23),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(24),
      Q => rx_payload_region_base_addr_reg(24),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(25),
      Q => rx_payload_region_base_addr_reg(25),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(26),
      Q => rx_payload_region_base_addr_reg(26),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(27),
      Q => rx_payload_region_base_addr_reg(27),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(28),
      Q => rx_payload_region_base_addr_reg(28),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(29),
      Q => rx_payload_region_base_addr_reg(29),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(2),
      Q => \rx_payload_region_base_addr_reg_reg[6]_0\(2),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(30),
      Q => rx_payload_region_base_addr_reg(30),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(31),
      Q => rx_payload_region_base_addr_reg(31),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(3),
      Q => \rx_payload_region_base_addr_reg_reg[6]_0\(3),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(4),
      Q => \rx_payload_region_base_addr_reg_reg[6]_0\(4),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(5),
      Q => \rx_payload_region_base_addr_reg_reg[6]_0\(5),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(6),
      Q => \rx_payload_region_base_addr_reg_reg[6]_0\(6),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(7),
      Q => rx_payload_region_base_addr_reg(7),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(8),
      Q => rx_payload_region_base_addr_reg(8),
      R => \^axi_aresetn_0\
    );
\rx_payload_region_base_addr_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => rx_payload_region_base_addr_next(0),
      D => axi4_lite_wr_data_reg(9),
      Q => rx_payload_region_base_addr_reg(9),
      R => \^axi_aresetn_0\
    );
rx_payload_region_base_addr_valid_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000100"
    )
        port map (
      I0 => axi4_lite_wr_addr_offset_reg(3),
      I1 => axi4_lite_wr_addr_offset_reg(1),
      I2 => axi4_lite_wr_addr_offset_reg(0),
      I3 => bvalid_next,
      I4 => axi4_lite_wr_addr_offset_reg(2),
      I5 => rx_payload_region_base_addr_valid_reg,
      O => rx_payload_region_base_addr_valid_reg_i_1_n_0
    );
rx_payload_region_base_addr_valid_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => rx_payload_region_base_addr_valid_reg_i_1_n_0,
      Q => rx_payload_region_base_addr_valid_reg,
      R => \^axi_aresetn_0\
    );
\tail_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06FFFFFF6F000000"
    )
        port map (
      I0 => head_reg(1),
      I1 => SHIFT_LEFT(9),
      I2 => head_reg(0),
      I3 => \^dma_state_reg\(0),
      I4 => \^dma_state_reg\(1),
      I5 => SHIFT_LEFT(8),
      O => \tail_reg[0]_i_1_n_0\
    );
\tail_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FF80007FFF8800"
    )
        port map (
      I0 => \^dma_state_reg\(1),
      I1 => \^dma_state_reg\(0),
      I2 => head_reg(0),
      I3 => SHIFT_LEFT(8),
      I4 => SHIFT_LEFT(9),
      I5 => head_reg(1),
      O => \tail_reg[1]_i_1_n_0\
    );
\tail_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \tail_reg[0]_i_1_n_0\,
      Q => SHIFT_LEFT(8),
      R => \^axi_aresetn_0\
    );
\tail_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => \tail_reg[1]_i_1_n_0\,
      Q => SHIFT_LEFT(9),
      R => \^axi_aresetn_0\
    );
w_seen_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8080"
    )
        port map (
      I0 => \^wready_reg_reg_0\,
      I1 => \FSM_onehot_state_reg_reg_n_0_[0]\,
      I2 => S_AXI_WVALID,
      I3 => bvalid_next,
      I4 => w_seen_reg,
      O => w_seen_reg_i_1_n_0
    );
w_seen_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => '1',
      D => w_seen_reg_i_1_n_0,
      Q => w_seen_reg,
      R => \^axi_aresetn_0\
    );
\wr_base_addr_reg[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rx_payload_region_base_addr_reg(9),
      I1 => SHIFT_LEFT(9),
      O => \wr_base_addr_reg[10]_i_2_n_0\
    );
\wr_base_addr_reg[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rx_payload_region_base_addr_reg(8),
      I1 => SHIFT_LEFT(8),
      O => \wr_base_addr_reg[10]_i_3_n_0\
    );
\wr_base_addr_reg[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Q(0),
      I1 => \^dma_state_reg\(0),
      I2 => \^dma_state_reg\(1),
      I3 => axi_aresetn,
      O => wr_base_addr_reg(0)
    );
\wr_base_addr_reg_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wr_base_addr_reg_reg[10]_i_1_n_0\,
      CO(2) => \wr_base_addr_reg_reg[10]_i_1_n_1\,
      CO(1) => \wr_base_addr_reg_reg[10]_i_1_n_2\,
      CO(0) => \wr_base_addr_reg_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 1) => rx_payload_region_base_addr_reg(9 downto 8),
      DI(0) => '0',
      O(3 downto 0) => \rx_payload_region_base_addr_reg_reg[9]_0\(3 downto 0),
      S(3) => rx_payload_region_base_addr_reg(10),
      S(2) => \wr_base_addr_reg[10]_i_2_n_0\,
      S(1) => \wr_base_addr_reg[10]_i_3_n_0\,
      S(0) => rx_payload_region_base_addr_reg(7)
    );
\wr_base_addr_reg_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_base_addr_reg_reg[10]_i_1_n_0\,
      CO(3) => \wr_base_addr_reg_reg[14]_i_1_n_0\,
      CO(2) => \wr_base_addr_reg_reg[14]_i_1_n_1\,
      CO(1) => \wr_base_addr_reg_reg[14]_i_1_n_2\,
      CO(0) => \wr_base_addr_reg_reg[14]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \rx_payload_region_base_addr_reg_reg[14]_0\(3 downto 0),
      S(3 downto 0) => rx_payload_region_base_addr_reg(14 downto 11)
    );
\wr_base_addr_reg_reg[18]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_base_addr_reg_reg[14]_i_1_n_0\,
      CO(3) => \wr_base_addr_reg_reg[18]_i_1_n_0\,
      CO(2) => \wr_base_addr_reg_reg[18]_i_1_n_1\,
      CO(1) => \wr_base_addr_reg_reg[18]_i_1_n_2\,
      CO(0) => \wr_base_addr_reg_reg[18]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \rx_payload_region_base_addr_reg_reg[18]_0\(3 downto 0),
      S(3 downto 0) => rx_payload_region_base_addr_reg(18 downto 15)
    );
\wr_base_addr_reg_reg[22]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_base_addr_reg_reg[18]_i_1_n_0\,
      CO(3) => \wr_base_addr_reg_reg[22]_i_1_n_0\,
      CO(2) => \wr_base_addr_reg_reg[22]_i_1_n_1\,
      CO(1) => \wr_base_addr_reg_reg[22]_i_1_n_2\,
      CO(0) => \wr_base_addr_reg_reg[22]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \rx_payload_region_base_addr_reg_reg[22]_0\(3 downto 0),
      S(3 downto 0) => rx_payload_region_base_addr_reg(22 downto 19)
    );
\wr_base_addr_reg_reg[26]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_base_addr_reg_reg[22]_i_1_n_0\,
      CO(3) => \wr_base_addr_reg_reg[26]_i_1_n_0\,
      CO(2) => \wr_base_addr_reg_reg[26]_i_1_n_1\,
      CO(1) => \wr_base_addr_reg_reg[26]_i_1_n_2\,
      CO(0) => \wr_base_addr_reg_reg[26]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \rx_payload_region_base_addr_reg_reg[26]_0\(3 downto 0),
      S(3 downto 0) => rx_payload_region_base_addr_reg(26 downto 23)
    );
\wr_base_addr_reg_reg[30]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_base_addr_reg_reg[26]_i_1_n_0\,
      CO(3) => \wr_base_addr_reg_reg[30]_i_1_n_0\,
      CO(2) => \wr_base_addr_reg_reg[30]_i_1_n_1\,
      CO(1) => \wr_base_addr_reg_reg[30]_i_1_n_2\,
      CO(0) => \wr_base_addr_reg_reg[30]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \rx_payload_region_base_addr_reg_reg[30]_0\(3 downto 0),
      S(3 downto 0) => rx_payload_region_base_addr_reg(30 downto 27)
    );
\wr_base_addr_reg_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_base_addr_reg_reg[30]_i_1_n_0\,
      CO(3 downto 0) => \NLW_wr_base_addr_reg_reg[31]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_wr_base_addr_reg_reg[31]_i_2_O_UNCONNECTED\(3 downto 1),
      O(0) => O(0),
      S(3 downto 1) => B"000",
      S(0) => rx_payload_region_base_addr_reg(31)
    );
wready_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF2A2A2A2A2A2A2A"
    )
        port map (
      I0 => \^wready_reg_reg_0\,
      I1 => \FSM_onehot_state_reg_reg_n_0_[0]\,
      I2 => S_AXI_WVALID,
      I3 => S_AXI_BREADY,
      I4 => \FSM_onehot_state_reg_reg_n_0_[2]\,
      I5 => \^bvalid_reg_reg_0\,
      O => wready_reg_i_1_n_0
    );
wready_reg_reg: unisim.vcomponents.FDSE
     port map (
      C => axi_aclk,
      CE => '1',
      D => wready_reg_i_1_n_0,
      Q => \^wready_reg_reg_0\,
      S => \^axi_aresetn_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_eth_rx_0_2_rmii_mac_rx is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    wr_en : out STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    i_ref_clk : in STD_LOGIC;
    i_crs_dv : in STD_LOGIC;
    full : in STD_LOGIC;
    i_rxd : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wr_rst_busy : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_eth_rx_0_2_rmii_mac_rx : entity is "rmii_mac_rx";
end design_1_eth_rx_0_2_rmii_mac_rx;

architecture STRUCTURE of design_1_eth_rx_0_2_rmii_mac_rx is
  signal \FSM_sequential_rx_state_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state_q[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state_q[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state_q[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state_q[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state_q[2]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state_q[2]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state_q[2]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state_q[2]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state_q[2]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state_q[2]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state_q[2]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state_q[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state_q[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state_q[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state_q[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state_q[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state_q[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state_q[2]_i_9_n_0\ : STD_LOGIC;
  signal crc_d : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal crc_q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \crc_q[13]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[14]_i_3_n_0\ : STD_LOGIC;
  signal \crc_q[14]_i_4_n_0\ : STD_LOGIC;
  signal \crc_q[15]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[16]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[16]_i_3_n_0\ : STD_LOGIC;
  signal \crc_q[17]_i_3_n_0\ : STD_LOGIC;
  signal \crc_q[18]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[18]_i_3_n_0\ : STD_LOGIC;
  signal \crc_q[18]_i_4_n_0\ : STD_LOGIC;
  signal \crc_q[18]_i_5_n_0\ : STD_LOGIC;
  signal \crc_q[19]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[1]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[1]_i_3_n_0\ : STD_LOGIC;
  signal \crc_q[20]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[22]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[22]_i_3_n_0\ : STD_LOGIC;
  signal \crc_q[23]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[23]_i_3_n_0\ : STD_LOGIC;
  signal \crc_q[23]_i_5_n_0\ : STD_LOGIC;
  signal \crc_q[24]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[24]_i_4_n_0\ : STD_LOGIC;
  signal \crc_q[24]_i_5_n_0\ : STD_LOGIC;
  signal \crc_q[25]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[25]_i_3_n_0\ : STD_LOGIC;
  signal \crc_q[26]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[26]_i_3_n_0\ : STD_LOGIC;
  signal \crc_q[26]_i_4_n_0\ : STD_LOGIC;
  signal \crc_q[26]_i_5_n_0\ : STD_LOGIC;
  signal \crc_q[27]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[27]_i_4_n_0\ : STD_LOGIC;
  signal \crc_q[28]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[28]_i_3_n_0\ : STD_LOGIC;
  signal \crc_q[28]_i_4_n_0\ : STD_LOGIC;
  signal \crc_q[29]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[29]_i_3_n_0\ : STD_LOGIC;
  signal \crc_q[2]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[30]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[31]_i_1_n_0\ : STD_LOGIC;
  signal \crc_q[31]_i_3_n_0\ : STD_LOGIC;
  signal \crc_q[31]_i_4_n_0\ : STD_LOGIC;
  signal \crc_q[31]_i_5_n_0\ : STD_LOGIC;
  signal \crc_q[31]_i_6_n_0\ : STD_LOGIC;
  signal \crc_q[31]_i_7_n_0\ : STD_LOGIC;
  signal \crc_q[3]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[3]_i_3_n_0\ : STD_LOGIC;
  signal \crc_q[4]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[6]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[7]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[8]_i_2_n_0\ : STD_LOGIC;
  signal \crc_q[9]_i_2_n_0\ : STD_LOGIC;
  signal crs_dv_q : STD_LOGIC;
  signal data : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal delay_buf_ctr_d : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal delay_buf_ctr_q : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \delay_buf_ctr_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \delay_buf_ctr_q[0]_i_2_n_0\ : STD_LOGIC;
  signal \delay_buf_ctr_q[0]_i_3_n_0\ : STD_LOGIC;
  signal \delay_buf_ctr_q[1]_i_1_n_0\ : STD_LOGIC;
  signal \delay_buf_ctr_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \delay_buf_ctr_q[2]_i_3_n_0\ : STD_LOGIC;
  signal \delay_buf_ctr_q[2]_i_4_n_0\ : STD_LOGIC;
  signal \delay_buf_ctr_q[2]_i_5_n_0\ : STD_LOGIC;
  signal \delay_buf_ctr_q[2]_i_6_n_0\ : STD_LOGIC;
  signal \delay_buf_d[0]_4\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \delay_buf_q_reg[0]_3\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \delay_buf_q_reg[1]_2\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \delay_buf_q_reg[2]_1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \delay_buf_q_reg[3]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal frame_ready_d : STD_LOGIC;
  signal frame_ready_q : STD_LOGIC;
  signal frame_ready_q_i_1_n_0 : STD_LOGIC;
  signal frame_ready_q_i_3_n_0 : STD_LOGIC;
  signal i_rst_n1 : STD_LOGIC;
  signal i_rst_n2 : STD_LOGIC;
  signal in23 : STD_LOGIC_VECTOR ( 21 downto 5 );
  signal in24 : STD_LOGIC_VECTOR ( 29 downto 5 );
  signal mac_rx_valid : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_0_in0_out : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal pending_err_q : STD_LOGIC;
  signal pending_err_q_i_1_n_0 : STD_LOGIC;
  signal pending_err_q_i_2_n_0 : STD_LOGIC;
  signal \rx_byte_ctr_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \rx_byte_ctr_q[0]_i_2_n_0\ : STD_LOGIC;
  signal \rx_byte_ctr_q[0]_i_3_n_0\ : STD_LOGIC;
  signal \rx_byte_ctr_q[1]_i_1_n_0\ : STD_LOGIC;
  signal \rx_byte_ctr_q[1]_i_2_n_0\ : STD_LOGIC;
  signal \rx_byte_ctr_q[1]_i_3_n_0\ : STD_LOGIC;
  signal \rx_byte_ctr_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \rx_byte_ctr_q[2]_i_2_n_0\ : STD_LOGIC;
  signal \rx_byte_ctr_q[2]_i_3_n_0\ : STD_LOGIC;
  signal \rx_byte_ctr_q[2]_i_4_n_0\ : STD_LOGIC;
  signal \rx_byte_ctr_q[2]_i_5_n_0\ : STD_LOGIC;
  signal \rx_byte_ctr_q[2]_i_6_n_0\ : STD_LOGIC;
  signal \rx_byte_ctr_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \rx_byte_ctr_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \rx_byte_ctr_q_reg_n_0_[2]\ : STD_LOGIC;
  signal rx_fifo_valid_d : STD_LOGIC;
  signal rx_fifo_valid_q_i_2_n_0 : STD_LOGIC;
  signal rx_fifo_valid_q_i_3_n_0 : STD_LOGIC;
  signal rx_fifo_wr_data_d1 : STD_LOGIC;
  signal \rx_fifo_wr_data_d1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rx_fifo_wr_data_d1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rx_fifo_wr_data_d1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rx_fifo_wr_data_d1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rx_fifo_wr_data_d1_carry__0_n_0\ : STD_LOGIC;
  signal \rx_fifo_wr_data_d1_carry__0_n_1\ : STD_LOGIC;
  signal \rx_fifo_wr_data_d1_carry__0_n_2\ : STD_LOGIC;
  signal \rx_fifo_wr_data_d1_carry__0_n_3\ : STD_LOGIC;
  signal \rx_fifo_wr_data_d1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rx_fifo_wr_data_d1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \rx_fifo_wr_data_d1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \rx_fifo_wr_data_d1_carry__1_n_2\ : STD_LOGIC;
  signal \rx_fifo_wr_data_d1_carry__1_n_3\ : STD_LOGIC;
  signal rx_fifo_wr_data_d1_carry_i_1_n_0 : STD_LOGIC;
  signal rx_fifo_wr_data_d1_carry_i_2_n_0 : STD_LOGIC;
  signal rx_fifo_wr_data_d1_carry_i_3_n_0 : STD_LOGIC;
  signal rx_fifo_wr_data_d1_carry_i_4_n_0 : STD_LOGIC;
  signal rx_fifo_wr_data_d1_carry_n_0 : STD_LOGIC;
  signal rx_fifo_wr_data_d1_carry_n_1 : STD_LOGIC;
  signal rx_fifo_wr_data_d1_carry_n_2 : STD_LOGIC;
  signal rx_fifo_wr_data_d1_carry_n_3 : STD_LOGIC;
  signal rx_fifo_wr_data_d1_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \rx_fifo_wr_data_q[8]_i_2_n_0\ : STD_LOGIC;
  signal \rx_fifo_wr_data_q[8]_i_3_n_0\ : STD_LOGIC;
  signal \rx_fifo_wr_data_q[9]_i_2_n_0\ : STD_LOGIC;
  signal rx_shift_ctr_q : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rx_shift_ctr_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \rx_shift_ctr_q[1]_i_1_n_0\ : STD_LOGIC;
  signal rx_state_d : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rx_state_q : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_rx_fifo_wr_data_d1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rx_fifo_wr_data_d1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rx_fifo_wr_data_d1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rx_fifo_wr_data_d1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state_q[0]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state_q[1]_i_4\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state_q[2]_i_10\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state_q[2]_i_13\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state_q[2]_i_14\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state_q[2]_i_15\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state_q[2]_i_16\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state_q[2]_i_17\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state_q[2]_i_3\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state_q[2]_i_7\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state_q[2]_i_8\ : label is "soft_lutpair72";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_q_reg[0]\ : label is "s_dest_addr:001,s_src_addr:010,s_type:011,s_preamble:000,s_data:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_q_reg[1]\ : label is "s_dest_addr:001,s_src_addr:010,s_type:011,s_preamble:000,s_data:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_q_reg[2]\ : label is "s_dest_addr:001,s_src_addr:010,s_type:011,s_preamble:000,s_data:100";
  attribute SOFT_HLUTNM of \crc_q[10]_i_2\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \crc_q[14]_i_2\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \crc_q[14]_i_3\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \crc_q[16]_i_3\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \crc_q[17]_i_2\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \crc_q[18]_i_3\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \crc_q[18]_i_4\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \crc_q[18]_i_5\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \crc_q[1]_i_2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \crc_q[21]_i_3\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \crc_q[22]_i_2\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \crc_q[22]_i_3\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \crc_q[23]_i_4\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \crc_q[23]_i_5\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \crc_q[24]_i_3\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \crc_q[24]_i_4\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \crc_q[24]_i_5\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \crc_q[25]_i_3\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \crc_q[26]_i_3\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \crc_q[27]_i_3\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \crc_q[27]_i_5\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \crc_q[28]_i_3\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \crc_q[28]_i_4\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \crc_q[29]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \crc_q[2]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \crc_q[30]_i_3\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \crc_q[30]_i_4\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \crc_q[31]_i_6\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \crc_q[31]_i_7\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \crc_q[6]_i_2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \delay_buf_ctr_q[1]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \delay_buf_ctr_q[2]_i_5\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of frame_ready_q_i_2 : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of rx_async_fifo_inst_i_1 : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \rx_byte_ctr_q[0]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rx_byte_ctr_q[0]_i_3\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \rx_byte_ctr_q[2]_i_4\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \rx_byte_ctr_q[2]_i_6\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of rx_fifo_valid_q_i_2 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rx_fifo_wr_data_q[0]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \rx_fifo_wr_data_q[1]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \rx_fifo_wr_data_q[2]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \rx_fifo_wr_data_q[3]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \rx_fifo_wr_data_q[4]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \rx_fifo_wr_data_q[5]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \rx_fifo_wr_data_q[6]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \rx_fifo_wr_data_q[8]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rx_fifo_wr_data_q[8]_i_3\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rx_shift_ctr_q[0]_i_1\ : label is "soft_lutpair58";
begin
\FSM_sequential_rx_state_q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => rx_state_d(0),
      I1 => \FSM_sequential_rx_state_q[2]_i_4_n_0\,
      I2 => \FSM_sequential_rx_state_q[2]_i_5_n_0\,
      I3 => \FSM_sequential_rx_state_q[2]_i_6_n_0\,
      I4 => \FSM_sequential_rx_state_q[2]_i_7_n_0\,
      I5 => rx_state_q(0),
      O => \FSM_sequential_rx_state_q[0]_i_1_n_0\
    );
\FSM_sequential_rx_state_q[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0203"
    )
        port map (
      I0 => i_crs_dv,
      I1 => rx_state_q(2),
      I2 => rx_state_q(0),
      I3 => rx_state_q(1),
      O => rx_state_d(0)
    );
\FSM_sequential_rx_state_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => rx_state_d(1),
      I1 => \FSM_sequential_rx_state_q[2]_i_4_n_0\,
      I2 => \FSM_sequential_rx_state_q[2]_i_5_n_0\,
      I3 => \FSM_sequential_rx_state_q[2]_i_6_n_0\,
      I4 => \FSM_sequential_rx_state_q[2]_i_7_n_0\,
      I5 => rx_state_q(1),
      O => \FSM_sequential_rx_state_q[1]_i_1_n_0\
    );
\FSM_sequential_rx_state_q[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAAA"
    )
        port map (
      I0 => \FSM_sequential_rx_state_q[1]_i_3_n_0\,
      I1 => \FSM_sequential_rx_state_q[2]_i_11_n_0\,
      I2 => \FSM_sequential_rx_state_q[2]_i_12_n_0\,
      I3 => \FSM_sequential_rx_state_q[2]_i_13_n_0\,
      I4 => \FSM_sequential_rx_state_q[1]_i_4_n_0\,
      O => rx_state_d(1)
    );
\FSM_sequential_rx_state_q[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => rx_state_q(0),
      I1 => i_crs_dv,
      I2 => rx_state_q(2),
      I3 => rx_state_q(1),
      O => \FSM_sequential_rx_state_q[1]_i_3_n_0\
    );
\FSM_sequential_rx_state_q[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => rx_state_q(0),
      I1 => i_crs_dv,
      I2 => rx_state_q(1),
      I3 => rx_state_q(2),
      I4 => data(3),
      O => \FSM_sequential_rx_state_q[1]_i_4_n_0\
    );
\FSM_sequential_rx_state_q[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_rst_n2,
      O => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\FSM_sequential_rx_state_q[2]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => rx_state_q(1),
      I1 => rx_shift_ctr_q(0),
      I2 => rx_shift_ctr_q(1),
      I3 => rx_state_q(2),
      I4 => rx_state_q(0),
      O => \FSM_sequential_rx_state_q[2]_i_10_n_0\
    );
\FSM_sequential_rx_state_q[2]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAF66FF6"
    )
        port map (
      I0 => data(0),
      I1 => \rx_byte_ctr_q_reg_n_0_[0]\,
      I2 => data(1),
      I3 => \rx_byte_ctr_q_reg_n_0_[1]\,
      I4 => \rx_byte_ctr_q_reg_n_0_[2]\,
      O => \FSM_sequential_rx_state_q[2]_i_11_n_0\
    );
\FSM_sequential_rx_state_q[2]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAF66FF6"
    )
        port map (
      I0 => data(4),
      I1 => \rx_byte_ctr_q_reg_n_0_[0]\,
      I2 => data(5),
      I3 => \rx_byte_ctr_q_reg_n_0_[1]\,
      I4 => \rx_byte_ctr_q_reg_n_0_[2]\,
      O => \FSM_sequential_rx_state_q[2]_i_12_n_0\
    );
\FSM_sequential_rx_state_q[2]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEBFFE"
    )
        port map (
      I0 => i_rxd(1),
      I1 => data(2),
      I2 => i_rxd(0),
      I3 => \rx_byte_ctr_q_reg_n_0_[2]\,
      I4 => \rx_byte_ctr_q_reg_n_0_[1]\,
      O => \FSM_sequential_rx_state_q[2]_i_13_n_0\
    );
\FSM_sequential_rx_state_q[2]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => \rx_byte_ctr_q_reg_n_0_[1]\,
      I1 => \rx_byte_ctr_q_reg_n_0_[0]\,
      I2 => \rx_byte_ctr_q_reg_n_0_[2]\,
      I3 => data(3),
      O => \FSM_sequential_rx_state_q[2]_i_14_n_0\
    );
\FSM_sequential_rx_state_q[2]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDDF"
    )
        port map (
      I0 => \rx_byte_ctr_q_reg_n_0_[0]\,
      I1 => \rx_byte_ctr_q_reg_n_0_[1]\,
      I2 => rx_state_q(0),
      I3 => \rx_byte_ctr_q_reg_n_0_[2]\,
      O => \FSM_sequential_rx_state_q[2]_i_15_n_0\
    );
\FSM_sequential_rx_state_q[2]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => rx_shift_ctr_q(0),
      I1 => rx_shift_ctr_q(1),
      O => \FSM_sequential_rx_state_q[2]_i_16_n_0\
    );
\FSM_sequential_rx_state_q[2]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => full,
      I1 => pending_err_q,
      O => \FSM_sequential_rx_state_q[2]_i_17_n_0\
    );
\FSM_sequential_rx_state_q[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => rx_state_d(2),
      I1 => \FSM_sequential_rx_state_q[2]_i_4_n_0\,
      I2 => \FSM_sequential_rx_state_q[2]_i_5_n_0\,
      I3 => \FSM_sequential_rx_state_q[2]_i_6_n_0\,
      I4 => \FSM_sequential_rx_state_q[2]_i_7_n_0\,
      I5 => rx_state_q(2),
      O => \FSM_sequential_rx_state_q[2]_i_2_n_0\
    );
\FSM_sequential_rx_state_q[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => i_crs_dv,
      I1 => rx_state_q(1),
      I2 => rx_state_q(2),
      I3 => rx_state_q(0),
      O => rx_state_d(2)
    );
\FSM_sequential_rx_state_q[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => rx_state_q(1),
      I1 => \delay_buf_ctr_q[2]_i_5_n_0\,
      I2 => data(3),
      I3 => rx_state_q(2),
      I4 => \FSM_sequential_rx_state_q[2]_i_8_n_0\,
      I5 => \FSM_sequential_rx_state_q[2]_i_9_n_0\,
      O => \FSM_sequential_rx_state_q[2]_i_4_n_0\
    );
\FSM_sequential_rx_state_q[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \FSM_sequential_rx_state_q[2]_i_10_n_0\,
      I1 => \FSM_sequential_rx_state_q[2]_i_11_n_0\,
      I2 => \FSM_sequential_rx_state_q[2]_i_12_n_0\,
      I3 => \FSM_sequential_rx_state_q[2]_i_13_n_0\,
      I4 => \FSM_sequential_rx_state_q[2]_i_14_n_0\,
      O => \FSM_sequential_rx_state_q[2]_i_5_n_0\
    );
\FSM_sequential_rx_state_q[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F000000440044"
    )
        port map (
      I0 => \FSM_sequential_rx_state_q[2]_i_15_n_0\,
      I1 => rx_state_q(1),
      I2 => \delay_buf_ctr_q[0]_i_2_n_0\,
      I3 => \FSM_sequential_rx_state_q[2]_i_16_n_0\,
      I4 => \FSM_sequential_rx_state_q[2]_i_17_n_0\,
      I5 => rx_state_q(2),
      O => \FSM_sequential_rx_state_q[2]_i_6_n_0\
    );
\FSM_sequential_rx_state_q[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => rx_state_q(2),
      I1 => rx_state_q(0),
      I2 => rx_state_q(1),
      I3 => i_crs_dv,
      O => \FSM_sequential_rx_state_q[2]_i_7_n_0\
    );
\FSM_sequential_rx_state_q[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => data(1),
      I1 => data(2),
      I2 => data(0),
      I3 => frame_ready_q,
      O => \FSM_sequential_rx_state_q[2]_i_8_n_0\
    );
\FSM_sequential_rx_state_q[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => i_rxd(1),
      I1 => i_rxd(0),
      I2 => data(5),
      I3 => data(4),
      O => \FSM_sequential_rx_state_q[2]_i_9_n_0\
    );
\FSM_sequential_rx_state_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_ref_clk,
      CE => '1',
      D => \FSM_sequential_rx_state_q[0]_i_1_n_0\,
      Q => rx_state_q(0),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\FSM_sequential_rx_state_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_ref_clk,
      CE => '1',
      D => \FSM_sequential_rx_state_q[1]_i_1_n_0\,
      Q => rx_state_q(1),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\FSM_sequential_rx_state_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_ref_clk,
      CE => '1',
      D => \FSM_sequential_rx_state_q[2]_i_2_n_0\,
      Q => rx_state_q(2),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBBFEEEBEAABEAA"
    )
        port map (
      I0 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I1 => crc_q(8),
      I2 => p_0_in0_out(2),
      I3 => \crc_q[29]_i_2_n_0\,
      I4 => p_0_in(2),
      I5 => \delay_buf_ctr_q[0]_i_3_n_0\,
      O => crc_d(0)
    );
\crc_q[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBBFEEEBEAABEAA"
    )
        port map (
      I0 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I1 => crc_q(18),
      I2 => p_0_in0_out(2),
      I3 => \crc_q[29]_i_2_n_0\,
      I4 => p_0_in(2),
      I5 => \delay_buf_ctr_q[0]_i_3_n_0\,
      O => crc_d(10)
    );
\crc_q[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data(2),
      I1 => crc_q(2),
      O => p_0_in0_out(2)
    );
\crc_q[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFFFF8F4F4F8F8"
    )
        port map (
      I0 => p_0_in0_out(3),
      I1 => \crc_q[29]_i_2_n_0\,
      I2 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I3 => p_0_in(3),
      I4 => crc_q(19),
      I5 => \delay_buf_ctr_q[0]_i_3_n_0\,
      O => crc_d(11)
    );
\crc_q[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFFFF8F4F8F4F8"
    )
        port map (
      I0 => \crc_q[28]_i_4_n_0\,
      I1 => \crc_q[29]_i_2_n_0\,
      I2 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I3 => crc_q(20),
      I4 => \crc_q[26]_i_3_n_0\,
      I5 => \delay_buf_ctr_q[0]_i_3_n_0\,
      O => crc_d(12)
    );
\crc_q[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF2F8F2F8FFF8F2"
    )
        port map (
      I0 => \crc_q[29]_i_2_n_0\,
      I1 => \crc_q[13]_i_2_n_0\,
      I2 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I3 => crc_q(21),
      I4 => \delay_buf_ctr_q[0]_i_3_n_0\,
      I5 => \crc_q[25]_i_2_n_0\,
      O => crc_d(13)
    );
\crc_q[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => data(5),
      I1 => crc_q(5),
      I2 => data(1),
      I3 => crc_q(1),
      I4 => crc_q(0),
      I5 => data(0),
      O => \crc_q[13]_i_2_n_0\
    );
\crc_q[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF2882"
    )
        port map (
      I0 => \delay_buf_ctr_q[0]_i_3_n_0\,
      I1 => p_0_in(1),
      I2 => crc_q(22),
      I3 => \crc_q[14]_i_3_n_0\,
      I4 => \crc_q[14]_i_4_n_0\,
      I5 => \delay_buf_ctr_q[2]_i_6_n_0\,
      O => crc_d(14)
    );
\crc_q[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \delay_buf_q_reg[0]_3\(1),
      I1 => crc_q(1),
      O => p_0_in(1)
    );
\crc_q[14]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => crc_q(2),
      I1 => \delay_buf_q_reg[0]_3\(2),
      I2 => crc_q(6),
      I3 => \delay_buf_q_reg[0]_3\(6),
      O => \crc_q[14]_i_3_n_0\
    );
\crc_q[14]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82282882"
    )
        port map (
      I0 => \crc_q[29]_i_2_n_0\,
      I1 => data(1),
      I2 => crc_q(1),
      I3 => crc_q(22),
      I4 => \crc_q[18]_i_3_n_0\,
      O => \crc_q[14]_i_4_n_0\
    );
\crc_q[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEEAAEEAAEEA"
    )
        port map (
      I0 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I1 => \crc_q[29]_i_2_n_0\,
      I2 => \crc_q[15]_i_2_n_0\,
      I3 => \crc_q[31]_i_7_n_0\,
      I4 => in24(15),
      I5 => \delay_buf_ctr_q[0]_i_3_n_0\,
      O => crc_d(15)
    );
\crc_q[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => data(2),
      I1 => crc_q(2),
      I2 => crc_q(23),
      I3 => p_0_in0_out(3),
      I4 => data(1),
      I5 => crc_q(1),
      O => \crc_q[15]_i_2_n_0\
    );
\crc_q[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \crc_q[31]_i_6_n_0\,
      I1 => crc_q(1),
      I2 => \delay_buf_q_reg[0]_3\(1),
      I3 => p_0_in(3),
      I4 => crc_q(23),
      I5 => p_0_in(2),
      O => in24(15)
    );
\crc_q[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBEAAEBAA"
    )
        port map (
      I0 => \crc_q[16]_i_2_n_0\,
      I1 => \crc_q[28]_i_4_n_0\,
      I2 => crc_q(24),
      I3 => \crc_q[29]_i_2_n_0\,
      I4 => \crc_q[16]_i_3_n_0\,
      I5 => \delay_buf_ctr_q[2]_i_6_n_0\,
      O => crc_d(16)
    );
\crc_q[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9060609060909060"
    )
        port map (
      I0 => \crc_q[26]_i_3_n_0\,
      I1 => crc_q(24),
      I2 => \delay_buf_ctr_q[0]_i_3_n_0\,
      I3 => p_0_in(3),
      I4 => \delay_buf_q_reg[0]_3\(2),
      I5 => crc_q(2),
      O => \crc_q[16]_i_2_n_0\
    );
\crc_q[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => crc_q(2),
      I1 => data(2),
      I2 => crc_q(3),
      I3 => data(3),
      O => \crc_q[16]_i_3_n_0\
    );
\crc_q[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF8448"
    )
        port map (
      I0 => \crc_q[24]_i_4_n_0\,
      I1 => \delay_buf_ctr_q[0]_i_3_n_0\,
      I2 => p_0_in(3),
      I3 => crc_q(25),
      I4 => \crc_q[17]_i_3_n_0\,
      I5 => \delay_buf_ctr_q[2]_i_6_n_0\,
      O => crc_d(17)
    );
\crc_q[17]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \delay_buf_q_reg[0]_3\(3),
      I1 => crc_q(3),
      O => p_0_in(3)
    );
\crc_q[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6090906090606090"
    )
        port map (
      I0 => \crc_q[28]_i_4_n_0\,
      I1 => \crc_q[24]_i_5_n_0\,
      I2 => \crc_q[29]_i_2_n_0\,
      I3 => data(3),
      I4 => crc_q(3),
      I5 => crc_q(25),
      O => \crc_q[17]_i_3_n_0\
    );
\crc_q[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBEEBAAAA"
    )
        port map (
      I0 => \crc_q[18]_i_2_n_0\,
      I1 => \crc_q[18]_i_3_n_0\,
      I2 => crc_q(26),
      I3 => \crc_q[18]_i_4_n_0\,
      I4 => \crc_q[29]_i_2_n_0\,
      I5 => \delay_buf_ctr_q[2]_i_6_n_0\,
      O => crc_d(18)
    );
\crc_q[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69960000"
    )
        port map (
      I0 => \crc_q[14]_i_3_n_0\,
      I1 => crc_q(26),
      I2 => \crc_q[18]_i_5_n_0\,
      I3 => \crc_q[26]_i_3_n_0\,
      I4 => \delay_buf_ctr_q[0]_i_3_n_0\,
      O => \crc_q[18]_i_2_n_0\
    );
\crc_q[18]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => crc_q(2),
      I1 => data(2),
      I2 => crc_q(6),
      I3 => i_rxd(0),
      O => \crc_q[18]_i_3_n_0\
    );
\crc_q[18]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \crc_q[28]_i_4_n_0\,
      I1 => data(5),
      I2 => crc_q(5),
      I3 => data(1),
      I4 => crc_q(1),
      O => \crc_q[18]_i_4_n_0\
    );
\crc_q[18]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => crc_q(1),
      I1 => \delay_buf_q_reg[0]_3\(1),
      I2 => crc_q(5),
      I3 => \delay_buf_q_reg[0]_3\(5),
      O => \crc_q[18]_i_5_n_0\
    );
\crc_q[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAEEAEAAE"
    )
        port map (
      I0 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I1 => \crc_q[29]_i_2_n_0\,
      I2 => \crc_q[22]_i_2_n_0\,
      I3 => crc_q(27),
      I4 => \crc_q[31]_i_7_n_0\,
      I5 => \crc_q[19]_i_2_n_0\,
      O => crc_d(19)
    );
\crc_q[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2882822882282882"
    )
        port map (
      I0 => \delay_buf_ctr_q[0]_i_3_n_0\,
      I1 => \delay_buf_q_reg[0]_3\(5),
      I2 => crc_q(5),
      I3 => \crc_q[26]_i_4_n_0\,
      I4 => crc_q(27),
      I5 => \crc_q[31]_i_6_n_0\,
      O => \crc_q[19]_i_2_n_0\
    );
\crc_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFFFF8F4F8F4F8"
    )
        port map (
      I0 => \crc_q[1]_i_2_n_0\,
      I1 => \crc_q[29]_i_2_n_0\,
      I2 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I3 => crc_q(9),
      I4 => \crc_q[1]_i_3_n_0\,
      I5 => \delay_buf_ctr_q[0]_i_3_n_0\,
      O => crc_d(1)
    );
\crc_q[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => crc_q(0),
      I1 => data(0),
      I2 => crc_q(3),
      I3 => data(3),
      O => \crc_q[1]_i_2_n_0\
    );
\crc_q[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => crc_q(0),
      I1 => \delay_buf_q_reg[0]_3\(0),
      I2 => crc_q(3),
      I3 => \delay_buf_q_reg[0]_3\(3),
      O => \crc_q[1]_i_3_n_0\
    );
\crc_q[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAEEAEAAE"
    )
        port map (
      I0 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I1 => \crc_q[29]_i_2_n_0\,
      I2 => \crc_q[23]_i_2_n_0\,
      I3 => crc_q(28),
      I4 => \crc_q[31]_i_7_n_0\,
      I5 => \crc_q[20]_i_2_n_0\,
      O => crc_d(20)
    );
\crc_q[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2882822882282882"
    )
        port map (
      I0 => \delay_buf_ctr_q[0]_i_3_n_0\,
      I1 => \crc_q[23]_i_5_n_0\,
      I2 => p_0_in(4),
      I3 => p_0_in(6),
      I4 => crc_q(28),
      I5 => \crc_q[31]_i_6_n_0\,
      O => \crc_q[20]_i_2_n_0\
    );
\crc_q[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEEAAEEAAEEFAAA"
    )
        port map (
      I0 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I1 => in23(21),
      I2 => in24(21),
      I3 => rx_state_q(2),
      I4 => rx_state_q(1),
      I5 => rx_state_q(0),
      O => crc_d(21)
    );
\crc_q[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \crc_q[31]_i_7_n_0\,
      I1 => \crc_q[3]_i_2_n_0\,
      I2 => crc_q(29),
      I3 => crc_q(4),
      I4 => data(4),
      O => in23(21)
    );
\crc_q[21]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \crc_q[31]_i_6_n_0\,
      I1 => \crc_q[3]_i_3_n_0\,
      I2 => crc_q(29),
      I3 => crc_q(4),
      I4 => \delay_buf_q_reg[0]_3\(4),
      O => in24(21)
    );
\crc_q[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF2F8F2F8FFF8F2"
    )
        port map (
      I0 => \crc_q[29]_i_2_n_0\,
      I1 => \crc_q[22]_i_2_n_0\,
      I2 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I3 => crc_q(30),
      I4 => \delay_buf_ctr_q[0]_i_3_n_0\,
      I5 => \crc_q[22]_i_3_n_0\,
      O => crc_d(22)
    );
\crc_q[22]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \crc_q[26]_i_5_n_0\,
      I1 => crc_q(5),
      I2 => data(5),
      O => \crc_q[22]_i_2_n_0\
    );
\crc_q[22]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \crc_q[26]_i_4_n_0\,
      I1 => crc_q(5),
      I2 => \delay_buf_q_reg[0]_3\(5),
      O => \crc_q[22]_i_3_n_0\
    );
\crc_q[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAEEAEAAE"
    )
        port map (
      I0 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I1 => \crc_q[29]_i_2_n_0\,
      I2 => \crc_q[23]_i_2_n_0\,
      I3 => crc_q(31),
      I4 => \crc_q[31]_i_7_n_0\,
      I5 => \crc_q[23]_i_3_n_0\,
      O => crc_d(23)
    );
\crc_q[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => i_rxd(0),
      I1 => crc_q(6),
      I2 => data(4),
      I3 => crc_q(4),
      I4 => p_0_in0_out(3),
      I5 => p_0_in0_out(1),
      O => \crc_q[23]_i_2_n_0\
    );
\crc_q[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2882822882282882"
    )
        port map (
      I0 => \delay_buf_ctr_q[0]_i_3_n_0\,
      I1 => \crc_q[23]_i_5_n_0\,
      I2 => p_0_in(4),
      I3 => p_0_in(6),
      I4 => crc_q(31),
      I5 => \crc_q[31]_i_6_n_0\,
      O => \crc_q[23]_i_3_n_0\
    );
\crc_q[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data(1),
      I1 => crc_q(1),
      O => p_0_in0_out(1)
    );
\crc_q[23]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => crc_q(1),
      I1 => \delay_buf_q_reg[0]_3\(1),
      I2 => crc_q(3),
      I3 => \delay_buf_q_reg[0]_3\(3),
      O => \crc_q[23]_i_5_n_0\
    );
\crc_q[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFEFFEEEEEEEEE"
    )
        port map (
      I0 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I1 => \crc_q[24]_i_2_n_0\,
      I2 => \crc_q[31]_i_6_n_0\,
      I3 => p_0_in(2),
      I4 => \crc_q[24]_i_4_n_0\,
      I5 => \delay_buf_ctr_q[0]_i_3_n_0\,
      O => crc_d(24)
    );
\crc_q[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2882822882282882"
    )
        port map (
      I0 => \crc_q[29]_i_2_n_0\,
      I1 => \crc_q[24]_i_5_n_0\,
      I2 => \crc_q[28]_i_4_n_0\,
      I3 => crc_q(2),
      I4 => data(2),
      I5 => \crc_q[31]_i_7_n_0\,
      O => \crc_q[24]_i_2_n_0\
    );
\crc_q[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \delay_buf_q_reg[0]_3\(2),
      I1 => crc_q(2),
      O => p_0_in(2)
    );
\crc_q[24]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \crc_q[26]_i_3_n_0\,
      I1 => \delay_buf_q_reg[0]_3\(5),
      I2 => crc_q(5),
      I3 => \delay_buf_q_reg[0]_3\(1),
      I4 => crc_q(1),
      O => \crc_q[24]_i_4_n_0\
    );
\crc_q[24]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => crc_q(1),
      I1 => data(1),
      I2 => crc_q(5),
      I3 => data(5),
      O => \crc_q[24]_i_5_n_0\
    );
\crc_q[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF60"
    )
        port map (
      I0 => \crc_q[25]_i_2_n_0\,
      I1 => \crc_q[26]_i_4_n_0\,
      I2 => \delay_buf_ctr_q[0]_i_3_n_0\,
      I3 => \crc_q[25]_i_3_n_0\,
      I4 => \delay_buf_ctr_q[2]_i_6_n_0\,
      O => crc_d(25)
    );
\crc_q[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \delay_buf_q_reg[0]_3\(5),
      I1 => crc_q(5),
      I2 => \delay_buf_q_reg[0]_3\(1),
      I3 => crc_q(1),
      I4 => crc_q(0),
      I5 => \delay_buf_q_reg[0]_3\(0),
      O => \crc_q[25]_i_2_n_0\
    );
\crc_q[25]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06060600"
    )
        port map (
      I0 => \crc_q[13]_i_2_n_0\,
      I1 => \crc_q[26]_i_5_n_0\,
      I2 => rx_state_q(2),
      I3 => rx_state_q(0),
      I4 => rx_state_q(1),
      O => \crc_q[25]_i_3_n_0\
    );
\crc_q[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFEFEEFEEEEEEEE"
    )
        port map (
      I0 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I1 => \crc_q[26]_i_2_n_0\,
      I2 => \crc_q[31]_i_6_n_0\,
      I3 => \crc_q[26]_i_3_n_0\,
      I4 => \crc_q[26]_i_4_n_0\,
      I5 => \delay_buf_ctr_q[0]_i_3_n_0\,
      O => crc_d(26)
    );
\crc_q[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0054540054000054"
    )
        port map (
      I0 => rx_state_q(2),
      I1 => rx_state_q(0),
      I2 => rx_state_q(1),
      I3 => \crc_q[26]_i_5_n_0\,
      I4 => \crc_q[28]_i_4_n_0\,
      I5 => \crc_q[31]_i_7_n_0\,
      O => \crc_q[26]_i_2_n_0\
    );
\crc_q[26]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => crc_q(0),
      I1 => \delay_buf_q_reg[0]_3\(0),
      I2 => crc_q(4),
      I3 => \delay_buf_q_reg[0]_3\(4),
      O => \crc_q[26]_i_3_n_0\
    );
\crc_q[26]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \delay_buf_q_reg[0]_3\(6),
      I1 => crc_q(6),
      I2 => \delay_buf_q_reg[0]_3\(2),
      I3 => crc_q(2),
      I4 => crc_q(3),
      I5 => \delay_buf_q_reg[0]_3\(3),
      O => \crc_q[26]_i_4_n_0\
    );
\crc_q[26]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => i_rxd(0),
      I1 => crc_q(6),
      I2 => data(2),
      I3 => crc_q(2),
      I4 => crc_q(3),
      I5 => data(3),
      O => \crc_q[26]_i_5_n_0\
    );
\crc_q[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAEEAEAAE"
    )
        port map (
      I0 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I1 => \crc_q[29]_i_2_n_0\,
      I2 => \crc_q[27]_i_2_n_0\,
      I3 => p_0_in0_out(3),
      I4 => \crc_q[31]_i_7_n_0\,
      I5 => \crc_q[27]_i_4_n_0\,
      O => crc_d(27)
    );
\crc_q[27]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => crc_q(4),
      I1 => data(4),
      I2 => crc_q(5),
      I3 => data(5),
      O => \crc_q[27]_i_2_n_0\
    );
\crc_q[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data(3),
      I1 => crc_q(3),
      O => p_0_in0_out(3)
    );
\crc_q[27]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8228288228828228"
    )
        port map (
      I0 => \delay_buf_ctr_q[0]_i_3_n_0\,
      I1 => \delay_buf_q_reg[0]_3\(5),
      I2 => crc_q(5),
      I3 => p_0_in(4),
      I4 => p_0_in(3),
      I5 => \crc_q[31]_i_6_n_0\,
      O => \crc_q[27]_i_4_n_0\
    );
\crc_q[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \delay_buf_q_reg[0]_3\(4),
      I1 => crc_q(4),
      O => p_0_in(4)
    );
\crc_q[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEAAE"
    )
        port map (
      I0 => \crc_q[28]_i_2_n_0\,
      I1 => \crc_q[29]_i_2_n_0\,
      I2 => \crc_q[28]_i_3_n_0\,
      I3 => \crc_q[28]_i_4_n_0\,
      I4 => \delay_buf_ctr_q[2]_i_6_n_0\,
      O => crc_d(28)
    );
\crc_q[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8228288228828228"
    )
        port map (
      I0 => \delay_buf_ctr_q[0]_i_3_n_0\,
      I1 => \delay_buf_q_reg[0]_3\(6),
      I2 => crc_q(6),
      I3 => \delay_buf_q_reg[0]_3\(5),
      I4 => crc_q(5),
      I5 => \crc_q[26]_i_3_n_0\,
      O => \crc_q[28]_i_2_n_0\
    );
\crc_q[28]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => crc_q(5),
      I1 => data(5),
      I2 => crc_q(6),
      I3 => i_rxd(0),
      O => \crc_q[28]_i_3_n_0\
    );
\crc_q[28]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => crc_q(0),
      I1 => data(0),
      I2 => crc_q(4),
      I3 => data(4),
      O => \crc_q[28]_i_4_n_0\
    );
\crc_q[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEEAAEEAAEEA"
    )
        port map (
      I0 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I1 => \crc_q[29]_i_2_n_0\,
      I2 => \crc_q[29]_i_3_n_0\,
      I3 => \crc_q[31]_i_7_n_0\,
      I4 => in24(29),
      I5 => \delay_buf_ctr_q[0]_i_3_n_0\,
      O => crc_d(29)
    );
\crc_q[29]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => rx_state_q(1),
      I1 => rx_state_q(0),
      I2 => rx_state_q(2),
      O => \crc_q[29]_i_2_n_0\
    );
\crc_q[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => i_rxd(0),
      I1 => crc_q(6),
      I2 => data(5),
      I3 => crc_q(5),
      I4 => crc_q(0),
      I5 => data(0),
      O => \crc_q[29]_i_3_n_0\
    );
\crc_q[29]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \crc_q[31]_i_6_n_0\,
      I1 => p_0_in(0),
      I2 => crc_q(5),
      I3 => \delay_buf_q_reg[0]_3\(5),
      I4 => crc_q(6),
      I5 => \delay_buf_q_reg[0]_3\(6),
      O => in24(29)
    );
\crc_q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF8228"
    )
        port map (
      I0 => \delay_buf_ctr_q[0]_i_3_n_0\,
      I1 => p_0_in(1),
      I2 => crc_q(10),
      I3 => \crc_q[26]_i_3_n_0\,
      I4 => \crc_q[2]_i_2_n_0\,
      I5 => \delay_buf_ctr_q[2]_i_6_n_0\,
      O => crc_d(2)
    );
\crc_q[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28828228"
    )
        port map (
      I0 => \crc_q[29]_i_2_n_0\,
      I1 => data(1),
      I2 => crc_q(1),
      I3 => crc_q(10),
      I4 => \crc_q[28]_i_4_n_0\,
      O => \crc_q[2]_i_2_n_0\
    );
\crc_q[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFEFFEEEEEEEEE"
    )
        port map (
      I0 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I1 => \crc_q[30]_i_2_n_0\,
      I2 => \crc_q[31]_i_6_n_0\,
      I3 => p_0_in(6),
      I4 => p_0_in(0),
      I5 => \delay_buf_ctr_q[0]_i_3_n_0\,
      O => crc_d(30)
    );
\crc_q[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8228288228828228"
    )
        port map (
      I0 => \crc_q[29]_i_2_n_0\,
      I1 => crc_q(0),
      I2 => data(0),
      I3 => crc_q(6),
      I4 => i_rxd(0),
      I5 => \crc_q[31]_i_7_n_0\,
      O => \crc_q[30]_i_2_n_0\
    );
\crc_q[30]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \delay_buf_q_reg[0]_3\(6),
      I1 => crc_q(6),
      O => p_0_in(6)
    );
\crc_q[30]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \delay_buf_q_reg[0]_3\(0),
      I1 => crc_q(0),
      O => p_0_in(0)
    );
\crc_q[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFFAABA"
    )
        port map (
      I0 => \crc_q[31]_i_3_n_0\,
      I1 => rx_state_q(0),
      I2 => \crc_q[31]_i_4_n_0\,
      I3 => \delay_buf_ctr_q[2]_i_5_n_0\,
      I4 => \crc_q[31]_i_5_n_0\,
      O => \crc_q[31]_i_1_n_0\
    );
\crc_q[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEFFFAAAAEAAAA"
    )
        port map (
      I0 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I1 => \crc_q[31]_i_6_n_0\,
      I2 => rx_state_q(1),
      I3 => rx_state_q(0),
      I4 => rx_state_q(2),
      I5 => \crc_q[31]_i_7_n_0\,
      O => crc_d(31)
    );
\crc_q[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \delay_buf_ctr_q[0]_i_3_n_0\,
      I1 => \FSM_sequential_rx_state_q[2]_i_17_n_0\,
      I2 => delay_buf_ctr_q(0),
      I3 => delay_buf_ctr_q(1),
      I4 => delay_buf_ctr_q(2),
      I5 => \delay_buf_ctr_q[2]_i_5_n_0\,
      O => \crc_q[31]_i_3_n_0\
    );
\crc_q[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \FSM_sequential_rx_state_q[2]_i_9_n_0\,
      I1 => data(1),
      I2 => data(2),
      I3 => data(0),
      I4 => frame_ready_q,
      I5 => \rx_byte_ctr_q[0]_i_3_n_0\,
      O => \crc_q[31]_i_4_n_0\
    );
\crc_q[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01000000"
    )
        port map (
      I0 => \FSM_sequential_rx_state_q[2]_i_11_n_0\,
      I1 => \FSM_sequential_rx_state_q[2]_i_12_n_0\,
      I2 => \FSM_sequential_rx_state_q[2]_i_13_n_0\,
      I3 => \rx_byte_ctr_q[0]_i_3_n_0\,
      I4 => rx_state_q(0),
      I5 => \rx_byte_ctr_q[0]_i_2_n_0\,
      O => \crc_q[31]_i_5_n_0\
    );
\crc_q[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => crc_q(1),
      I1 => \delay_buf_q_reg[0]_3\(1),
      I2 => crc_q(7),
      I3 => \delay_buf_q_reg[0]_3\(7),
      O => \crc_q[31]_i_6_n_0\
    );
\crc_q[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => crc_q(1),
      I1 => data(1),
      I2 => crc_q(7),
      I3 => i_rxd(1),
      O => \crc_q[31]_i_7_n_0\
    );
\crc_q[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF2F8F2F8FFF8F2"
    )
        port map (
      I0 => \crc_q[29]_i_2_n_0\,
      I1 => \crc_q[3]_i_2_n_0\,
      I2 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I3 => crc_q(11),
      I4 => \delay_buf_ctr_q[0]_i_3_n_0\,
      I5 => \crc_q[3]_i_3_n_0\,
      O => crc_d(3)
    );
\crc_q[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => data(5),
      I1 => crc_q(5),
      I2 => data(1),
      I3 => crc_q(1),
      I4 => crc_q(2),
      I5 => data(2),
      O => \crc_q[3]_i_2_n_0\
    );
\crc_q[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \delay_buf_q_reg[0]_3\(5),
      I1 => crc_q(5),
      I2 => \delay_buf_q_reg[0]_3\(1),
      I3 => crc_q(1),
      I4 => crc_q(2),
      I5 => \delay_buf_q_reg[0]_3\(2),
      O => \crc_q[3]_i_3_n_0\
    );
\crc_q[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4884"
    )
        port map (
      I0 => \crc_q[26]_i_4_n_0\,
      I1 => \delay_buf_ctr_q[0]_i_3_n_0\,
      I2 => p_0_in(0),
      I3 => crc_q(12),
      I4 => \crc_q[4]_i_2_n_0\,
      I5 => \delay_buf_ctr_q[2]_i_6_n_0\,
      O => crc_d(4)
    );
\crc_q[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"84484884"
    )
        port map (
      I0 => \crc_q[26]_i_5_n_0\,
      I1 => \crc_q[29]_i_2_n_0\,
      I2 => data(0),
      I3 => crc_q(0),
      I4 => crc_q(12),
      O => \crc_q[4]_i_2_n_0\
    );
\crc_q[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEEAAEEAAEEFAAA"
    )
        port map (
      I0 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I1 => in23(5),
      I2 => in24(5),
      I3 => rx_state_q(2),
      I4 => rx_state_q(1),
      I5 => rx_state_q(0),
      O => crc_d(5)
    );
\crc_q[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \crc_q[31]_i_7_n_0\,
      I1 => crc_q(13),
      I2 => crc_q(3),
      I3 => data(3),
      I4 => crc_q(4),
      I5 => data(4),
      O => in23(5)
    );
\crc_q[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \crc_q[31]_i_6_n_0\,
      I1 => crc_q(13),
      I2 => crc_q(3),
      I3 => \delay_buf_q_reg[0]_3\(3),
      I4 => crc_q(4),
      I5 => \delay_buf_q_reg[0]_3\(4),
      O => in24(5)
    );
\crc_q[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4F8FFF8F4F8F4"
    )
        port map (
      I0 => \crc_q[27]_i_2_n_0\,
      I1 => \crc_q[29]_i_2_n_0\,
      I2 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I3 => crc_q(14),
      I4 => \crc_q[6]_i_2_n_0\,
      I5 => \delay_buf_ctr_q[0]_i_3_n_0\,
      O => crc_d(6)
    );
\crc_q[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => crc_q(4),
      I1 => \delay_buf_q_reg[0]_3\(4),
      I2 => crc_q(5),
      I3 => \delay_buf_q_reg[0]_3\(5),
      O => \crc_q[6]_i_2_n_0\
    );
\crc_q[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2FFF2F8FFF8F2F8"
    )
        port map (
      I0 => \crc_q[29]_i_2_n_0\,
      I1 => \crc_q[29]_i_3_n_0\,
      I2 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I3 => crc_q(15),
      I4 => \delay_buf_ctr_q[0]_i_3_n_0\,
      I5 => \crc_q[7]_i_2_n_0\,
      O => crc_d(7)
    );
\crc_q[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \delay_buf_q_reg[0]_3\(6),
      I1 => crc_q(6),
      I2 => \delay_buf_q_reg[0]_3\(5),
      I3 => crc_q(5),
      I4 => crc_q(0),
      I5 => \delay_buf_q_reg[0]_3\(0),
      O => \crc_q[7]_i_2_n_0\
    );
\crc_q[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFEFFEEEEEEEEE"
    )
        port map (
      I0 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I1 => \crc_q[8]_i_2_n_0\,
      I2 => \crc_q[31]_i_6_n_0\,
      I3 => p_0_in(6),
      I4 => crc_q(16),
      I5 => \delay_buf_ctr_q[0]_i_3_n_0\,
      O => crc_d(8)
    );
\crc_q[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28828228"
    )
        port map (
      I0 => \crc_q[29]_i_2_n_0\,
      I1 => crc_q(16),
      I2 => crc_q(6),
      I3 => i_rxd(0),
      I4 => \crc_q[31]_i_7_n_0\,
      O => \crc_q[8]_i_2_n_0\
    );
\crc_q[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFEFFEEEEEEEEE"
    )
        port map (
      I0 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I1 => \crc_q[9]_i_2_n_0\,
      I2 => \crc_q[31]_i_6_n_0\,
      I3 => p_0_in(1),
      I4 => crc_q(17),
      I5 => \delay_buf_ctr_q[0]_i_3_n_0\,
      O => crc_d(9)
    );
\crc_q[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8228"
    )
        port map (
      I0 => \crc_q[29]_i_2_n_0\,
      I1 => crc_q(17),
      I2 => crc_q(7),
      I3 => i_rxd(1),
      O => \crc_q[9]_i_2_n_0\
    );
\crc_q_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(0),
      Q => crc_q(0),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(10),
      Q => crc_q(10),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(11),
      Q => crc_q(11),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(12),
      Q => crc_q(12),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(13),
      Q => crc_q(13),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(14),
      Q => crc_q(14),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(15),
      Q => crc_q(15),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(16),
      Q => crc_q(16),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(17),
      Q => crc_q(17),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(18),
      Q => crc_q(18),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(19),
      Q => crc_q(19),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(1),
      Q => crc_q(1),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(20),
      Q => crc_q(20),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(21),
      Q => crc_q(21),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(22),
      Q => crc_q(22),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(23),
      Q => crc_q(23),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[24]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(24),
      Q => crc_q(24),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[25]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(25),
      Q => crc_q(25),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[26]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(26),
      Q => crc_q(26),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[27]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(27),
      Q => crc_q(27),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[28]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(28),
      Q => crc_q(28),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[29]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(29),
      Q => crc_q(29),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(2),
      Q => crc_q(2),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[30]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(30),
      Q => crc_q(30),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[31]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(31),
      Q => crc_q(31),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(3),
      Q => crc_q(3),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(4),
      Q => crc_q(4),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(5),
      Q => crc_q(5),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(6),
      Q => crc_q(6),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(7),
      Q => crc_q(7),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(8),
      Q => crc_q(8),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\crc_q_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => i_ref_clk,
      CE => \crc_q[31]_i_1_n_0\,
      D => crc_d(9),
      Q => crc_q(9),
      S => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
crs_dv_q_reg: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => '1',
      D => i_crs_dv,
      Q => crs_dv_q,
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_ctr_q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF0700CC00C8"
    )
        port map (
      I0 => \delay_buf_ctr_q[0]_i_2_n_0\,
      I1 => \delay_buf_ctr_q[0]_i_3_n_0\,
      I2 => \delay_buf_ctr_q[2]_i_4_n_0\,
      I3 => \delay_buf_ctr_q[2]_i_5_n_0\,
      I4 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I5 => delay_buf_ctr_q(0),
      O => \delay_buf_ctr_q[0]_i_1_n_0\
    );
\delay_buf_ctr_q[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => delay_buf_ctr_q(2),
      I1 => delay_buf_ctr_q(1),
      I2 => delay_buf_ctr_q(0),
      O => \delay_buf_ctr_q[0]_i_2_n_0\
    );
\delay_buf_ctr_q[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => rx_state_q(2),
      I1 => rx_state_q(1),
      I2 => rx_state_q(0),
      O => \delay_buf_ctr_q[0]_i_3_n_0\
    );
\delay_buf_ctr_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFAB00AA00A8"
    )
        port map (
      I0 => delay_buf_ctr_d(1),
      I1 => \delay_buf_ctr_q[2]_i_3_n_0\,
      I2 => \delay_buf_ctr_q[2]_i_4_n_0\,
      I3 => \delay_buf_ctr_q[2]_i_5_n_0\,
      I4 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I5 => delay_buf_ctr_q(1),
      O => \delay_buf_ctr_q[1]_i_1_n_0\
    );
\delay_buf_ctr_q[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00101000"
    )
        port map (
      I0 => rx_state_q(0),
      I1 => rx_state_q(1),
      I2 => rx_state_q(2),
      I3 => delay_buf_ctr_q(1),
      I4 => delay_buf_ctr_q(0),
      O => delay_buf_ctr_d(1)
    );
\delay_buf_ctr_q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFAB00AA00A8"
    )
        port map (
      I0 => delay_buf_ctr_d(2),
      I1 => \delay_buf_ctr_q[2]_i_3_n_0\,
      I2 => \delay_buf_ctr_q[2]_i_4_n_0\,
      I3 => \delay_buf_ctr_q[2]_i_5_n_0\,
      I4 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I5 => delay_buf_ctr_q(2),
      O => \delay_buf_ctr_q[2]_i_1_n_0\
    );
\delay_buf_ctr_q[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010100010001000"
    )
        port map (
      I0 => rx_state_q(0),
      I1 => rx_state_q(1),
      I2 => rx_state_q(2),
      I3 => delay_buf_ctr_q(2),
      I4 => delay_buf_ctr_q(0),
      I5 => delay_buf_ctr_q(1),
      O => delay_buf_ctr_d(2)
    );
\delay_buf_ctr_q[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000EF00000000"
    )
        port map (
      I0 => delay_buf_ctr_q(0),
      I1 => delay_buf_ctr_q(1),
      I2 => delay_buf_ctr_q(2),
      I3 => rx_state_q(0),
      I4 => rx_state_q(1),
      I5 => rx_state_q(2),
      O => \delay_buf_ctr_q[2]_i_3_n_0\
    );
\delay_buf_ctr_q[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => rx_state_q(0),
      I1 => rx_state_q(2),
      I2 => rx_state_q(1),
      I3 => \rx_byte_ctr_q_reg_n_0_[2]\,
      I4 => \rx_byte_ctr_q_reg_n_0_[0]\,
      I5 => \rx_byte_ctr_q_reg_n_0_[1]\,
      O => \delay_buf_ctr_q[2]_i_4_n_0\
    );
\delay_buf_ctr_q[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => rx_shift_ctr_q(1),
      I1 => rx_shift_ctr_q(0),
      I2 => i_crs_dv,
      O => \delay_buf_ctr_q[2]_i_5_n_0\
    );
\delay_buf_ctr_q[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => data(3),
      I1 => rx_state_q(2),
      I2 => \FSM_sequential_rx_state_q[2]_i_8_n_0\,
      I3 => \FSM_sequential_rx_state_q[2]_i_9_n_0\,
      I4 => rx_state_q(1),
      I5 => rx_state_q(0),
      O => \delay_buf_ctr_q[2]_i_6_n_0\
    );
\delay_buf_ctr_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => '1',
      D => \delay_buf_ctr_q[0]_i_1_n_0\,
      Q => delay_buf_ctr_q(0),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_ctr_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => '1',
      D => \delay_buf_ctr_q[1]_i_1_n_0\,
      Q => delay_buf_ctr_q(1),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_ctr_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => '1',
      D => \delay_buf_ctr_q[2]_i_1_n_0\,
      Q => delay_buf_ctr_q(2),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q[3][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => rx_state_q(0),
      I1 => rx_state_q(1),
      I2 => rx_state_q(2),
      I3 => i_crs_dv,
      I4 => rx_shift_ctr_q(0),
      I5 => rx_shift_ctr_q(1),
      O => \delay_buf_d[0]_4\(0)
    );
\delay_buf_q_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => \delay_buf_q_reg[1]_2\(0),
      Q => \delay_buf_q_reg[0]_3\(0),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => \delay_buf_q_reg[1]_2\(1),
      Q => \delay_buf_q_reg[0]_3\(1),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => \delay_buf_q_reg[1]_2\(2),
      Q => \delay_buf_q_reg[0]_3\(2),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => \delay_buf_q_reg[1]_2\(3),
      Q => \delay_buf_q_reg[0]_3\(3),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => \delay_buf_q_reg[1]_2\(4),
      Q => \delay_buf_q_reg[0]_3\(4),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => \delay_buf_q_reg[1]_2\(5),
      Q => \delay_buf_q_reg[0]_3\(5),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => \delay_buf_q_reg[1]_2\(6),
      Q => \delay_buf_q_reg[0]_3\(6),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => \delay_buf_q_reg[1]_2\(7),
      Q => \delay_buf_q_reg[0]_3\(7),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => \delay_buf_q_reg[2]_1\(0),
      Q => \delay_buf_q_reg[1]_2\(0),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => \delay_buf_q_reg[2]_1\(1),
      Q => \delay_buf_q_reg[1]_2\(1),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => \delay_buf_q_reg[2]_1\(2),
      Q => \delay_buf_q_reg[1]_2\(2),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => \delay_buf_q_reg[2]_1\(3),
      Q => \delay_buf_q_reg[1]_2\(3),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => \delay_buf_q_reg[2]_1\(4),
      Q => \delay_buf_q_reg[1]_2\(4),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => \delay_buf_q_reg[2]_1\(5),
      Q => \delay_buf_q_reg[1]_2\(5),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => \delay_buf_q_reg[2]_1\(6),
      Q => \delay_buf_q_reg[1]_2\(6),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => \delay_buf_q_reg[2]_1\(7),
      Q => \delay_buf_q_reg[1]_2\(7),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => \delay_buf_q_reg[3]_0\(0),
      Q => \delay_buf_q_reg[2]_1\(0),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => \delay_buf_q_reg[3]_0\(1),
      Q => \delay_buf_q_reg[2]_1\(1),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => \delay_buf_q_reg[3]_0\(2),
      Q => \delay_buf_q_reg[2]_1\(2),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => \delay_buf_q_reg[3]_0\(3),
      Q => \delay_buf_q_reg[2]_1\(3),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => \delay_buf_q_reg[3]_0\(4),
      Q => \delay_buf_q_reg[2]_1\(4),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => \delay_buf_q_reg[3]_0\(5),
      Q => \delay_buf_q_reg[2]_1\(5),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => \delay_buf_q_reg[3]_0\(6),
      Q => \delay_buf_q_reg[2]_1\(6),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => \delay_buf_q_reg[3]_0\(7),
      Q => \delay_buf_q_reg[2]_1\(7),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => data(0),
      Q => \delay_buf_q_reg[3]_0\(0),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => data(1),
      Q => \delay_buf_q_reg[3]_0\(1),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => data(2),
      Q => \delay_buf_q_reg[3]_0\(2),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => data(3),
      Q => \delay_buf_q_reg[3]_0\(3),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => data(4),
      Q => \delay_buf_q_reg[3]_0\(4),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => data(5),
      Q => \delay_buf_q_reg[3]_0\(5),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => i_rxd(0),
      Q => \delay_buf_q_reg[3]_0\(6),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\delay_buf_q_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => \delay_buf_d[0]_4\(0),
      D => i_rxd(1),
      Q => \delay_buf_q_reg[3]_0\(7),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
frame_ready_q_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABFFFAAAA8000"
    )
        port map (
      I0 => frame_ready_d,
      I1 => rx_shift_ctr_q(0),
      I2 => rx_shift_ctr_q(1),
      I3 => \delay_buf_ctr_q[2]_i_6_n_0\,
      I4 => frame_ready_q_i_3_n_0,
      I5 => frame_ready_q,
      O => frame_ready_q_i_1_n_0
    );
frame_ready_q_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A0003"
    )
        port map (
      I0 => crs_dv_q,
      I1 => i_crs_dv,
      I2 => rx_state_q(1),
      I3 => rx_state_q(0),
      I4 => rx_state_q(2),
      O => frame_ready_d
    );
frame_ready_q_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000570055"
    )
        port map (
      I0 => rx_state_q(2),
      I1 => full,
      I2 => pending_err_q,
      I3 => i_crs_dv,
      I4 => crs_dv_q,
      I5 => \rx_fifo_wr_data_q[8]_i_3_n_0\,
      O => frame_ready_q_i_3_n_0
    );
frame_ready_q_reg: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => '1',
      D => frame_ready_q_i_1_n_0,
      Q => frame_ready_q,
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
i_rst_n1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_ref_clk,
      CE => '1',
      D => axi_aresetn,
      Q => i_rst_n1,
      R => '0'
    );
i_rst_n2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_ref_clk,
      CE => '1',
      D => i_rst_n1,
      Q => i_rst_n2,
      R => '0'
    );
pending_err_q_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAAAAAAA80000"
    )
        port map (
      I0 => pending_err_q,
      I1 => pending_err_q_i_2_n_0,
      I2 => rx_state_q(0),
      I3 => rx_state_q(1),
      I4 => rx_state_q(2),
      I5 => full,
      O => pending_err_q_i_1_n_0
    );
pending_err_q_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444F44"
    )
        port map (
      I0 => i_crs_dv,
      I1 => crs_dv_q,
      I2 => \delay_buf_ctr_q[2]_i_5_n_0\,
      I3 => delay_buf_ctr_q(2),
      I4 => delay_buf_ctr_q(1),
      I5 => delay_buf_ctr_q(0),
      O => pending_err_q_i_2_n_0
    );
pending_err_q_reg: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => '1',
      D => pending_err_q_i_1_n_0,
      Q => pending_err_q,
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
rx_async_fifo_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => full,
      I1 => mac_rx_valid,
      I2 => wr_rst_busy,
      O => wr_en
    );
\rx_byte_ctr_q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFAAEA0000"
    )
        port map (
      I0 => \rx_byte_ctr_q[0]_i_2_n_0\,
      I1 => rx_state_q(0),
      I2 => \rx_byte_ctr_q[0]_i_3_n_0\,
      I3 => \rx_byte_ctr_q[2]_i_3_n_0\,
      I4 => \rx_byte_ctr_q[2]_i_5_n_0\,
      I5 => \rx_byte_ctr_q_reg_n_0_[0]\,
      O => \rx_byte_ctr_q[0]_i_1_n_0\
    );
\rx_byte_ctr_q[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_state_q(1),
      I1 => rx_state_q(2),
      O => \rx_byte_ctr_q[0]_i_2_n_0\
    );
\rx_byte_ctr_q[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data(3),
      I1 => rx_state_q(2),
      O => \rx_byte_ctr_q[0]_i_3_n_0\
    );
\rx_byte_ctr_q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFFBA00"
    )
        port map (
      I0 => \rx_byte_ctr_q[1]_i_2_n_0\,
      I1 => \rx_byte_ctr_q[2]_i_3_n_0\,
      I2 => \rx_byte_ctr_q[1]_i_3_n_0\,
      I3 => \rx_byte_ctr_q[2]_i_5_n_0\,
      I4 => \rx_byte_ctr_q_reg_n_0_[1]\,
      O => \rx_byte_ctr_q[1]_i_1_n_0\
    );
\rx_byte_ctr_q[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200222220000"
    )
        port map (
      I0 => rx_state_q(1),
      I1 => rx_state_q(2),
      I2 => \rx_byte_ctr_q_reg_n_0_[2]\,
      I3 => rx_state_q(0),
      I4 => \rx_byte_ctr_q_reg_n_0_[1]\,
      I5 => \rx_byte_ctr_q_reg_n_0_[0]\,
      O => \rx_byte_ctr_q[1]_i_2_n_0\
    );
\rx_byte_ctr_q[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080008000800880"
    )
        port map (
      I0 => \rx_byte_ctr_q[0]_i_3_n_0\,
      I1 => rx_state_q(0),
      I2 => \rx_byte_ctr_q_reg_n_0_[1]\,
      I3 => \rx_byte_ctr_q_reg_n_0_[0]\,
      I4 => \rx_byte_ctr_q_reg_n_0_[2]\,
      I5 => rx_state_q(1),
      O => \rx_byte_ctr_q[1]_i_3_n_0\
    );
\rx_byte_ctr_q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFFBA00"
    )
        port map (
      I0 => \rx_byte_ctr_q[2]_i_2_n_0\,
      I1 => \rx_byte_ctr_q[2]_i_3_n_0\,
      I2 => \rx_byte_ctr_q[2]_i_4_n_0\,
      I3 => \rx_byte_ctr_q[2]_i_5_n_0\,
      I4 => \rx_byte_ctr_q_reg_n_0_[2]\,
      O => \rx_byte_ctr_q[2]_i_1_n_0\
    );
\rx_byte_ctr_q[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202200020202020"
    )
        port map (
      I0 => rx_state_q(1),
      I1 => rx_state_q(2),
      I2 => \rx_byte_ctr_q_reg_n_0_[2]\,
      I3 => rx_state_q(0),
      I4 => \rx_byte_ctr_q_reg_n_0_[1]\,
      I5 => \rx_byte_ctr_q_reg_n_0_[0]\,
      O => \rx_byte_ctr_q[2]_i_2_n_0\
    );
\rx_byte_ctr_q[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFFFFE"
    )
        port map (
      I0 => \FSM_sequential_rx_state_q[2]_i_11_n_0\,
      I1 => \FSM_sequential_rx_state_q[2]_i_12_n_0\,
      I2 => \rx_byte_ctr_q[2]_i_6_n_0\,
      I3 => i_rxd(0),
      I4 => data(2),
      I5 => i_rxd(1),
      O => \rx_byte_ctr_q[2]_i_3_n_0\
    );
\rx_byte_ctr_q[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00888000"
    )
        port map (
      I0 => \rx_byte_ctr_q[0]_i_3_n_0\,
      I1 => rx_state_q(0),
      I2 => \rx_byte_ctr_q_reg_n_0_[1]\,
      I3 => \rx_byte_ctr_q_reg_n_0_[0]\,
      I4 => \rx_byte_ctr_q_reg_n_0_[2]\,
      O => \rx_byte_ctr_q[2]_i_4_n_0\
    );
\rx_byte_ctr_q[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00000008"
    )
        port map (
      I0 => \FSM_sequential_rx_state_q[2]_i_9_n_0\,
      I1 => \FSM_sequential_rx_state_q[2]_i_8_n_0\,
      I2 => rx_state_q(2),
      I3 => data(3),
      I4 => \delay_buf_ctr_q[2]_i_5_n_0\,
      I5 => \crc_q[29]_i_2_n_0\,
      O => \rx_byte_ctr_q[2]_i_5_n_0\
    );
\rx_byte_ctr_q[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rx_byte_ctr_q_reg_n_0_[2]\,
      I1 => \rx_byte_ctr_q_reg_n_0_[1]\,
      O => \rx_byte_ctr_q[2]_i_6_n_0\
    );
\rx_byte_ctr_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => '1',
      D => \rx_byte_ctr_q[0]_i_1_n_0\,
      Q => \rx_byte_ctr_q_reg_n_0_[0]\,
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\rx_byte_ctr_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => '1',
      D => \rx_byte_ctr_q[1]_i_1_n_0\,
      Q => \rx_byte_ctr_q_reg_n_0_[1]\,
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\rx_byte_ctr_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => '1',
      D => \rx_byte_ctr_q[2]_i_1_n_0\,
      Q => \rx_byte_ctr_q_reg_n_0_[2]\,
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
rx_fifo_valid_q_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABAAABAAAFAFA"
    )
        port map (
      I0 => rx_fifo_valid_q_i_2_n_0,
      I1 => full,
      I2 => \delay_buf_ctr_q[0]_i_3_n_0\,
      I3 => rx_fifo_valid_q_i_3_n_0,
      I4 => i_crs_dv,
      I5 => crs_dv_q,
      O => rx_fifo_valid_d
    );
rx_fifo_valid_q_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04040444"
    )
        port map (
      I0 => full,
      I1 => pending_err_q,
      I2 => rx_state_q(2),
      I3 => rx_state_q(0),
      I4 => rx_state_q(1),
      O => rx_fifo_valid_q_i_2_n_0
    );
rx_fifo_valid_q_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000080FFFFFFFF"
    )
        port map (
      I0 => rx_shift_ctr_q(0),
      I1 => rx_shift_ctr_q(1),
      I2 => delay_buf_ctr_q(2),
      I3 => delay_buf_ctr_q(1),
      I4 => delay_buf_ctr_q(0),
      I5 => i_crs_dv,
      O => rx_fifo_valid_q_i_3_n_0
    );
rx_fifo_valid_q_reg: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => '1',
      D => rx_fifo_valid_d,
      Q => mac_rx_valid,
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
rx_fifo_wr_data_d1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rx_fifo_wr_data_d1_carry_n_0,
      CO(2) => rx_fifo_wr_data_d1_carry_n_1,
      CO(1) => rx_fifo_wr_data_d1_carry_n_2,
      CO(0) => rx_fifo_wr_data_d1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_rx_fifo_wr_data_d1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => rx_fifo_wr_data_d1_carry_i_1_n_0,
      S(2) => rx_fifo_wr_data_d1_carry_i_2_n_0,
      S(1) => rx_fifo_wr_data_d1_carry_i_3_n_0,
      S(0) => rx_fifo_wr_data_d1_carry_i_4_n_0
    );
\rx_fifo_wr_data_d1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rx_fifo_wr_data_d1_carry_n_0,
      CO(3) => \rx_fifo_wr_data_d1_carry__0_n_0\,
      CO(2) => \rx_fifo_wr_data_d1_carry__0_n_1\,
      CO(1) => \rx_fifo_wr_data_d1_carry__0_n_2\,
      CO(0) => \rx_fifo_wr_data_d1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_rx_fifo_wr_data_d1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \rx_fifo_wr_data_d1_carry__0_i_1_n_0\,
      S(2) => \rx_fifo_wr_data_d1_carry__0_i_2_n_0\,
      S(1) => \rx_fifo_wr_data_d1_carry__0_i_3_n_0\,
      S(0) => \rx_fifo_wr_data_d1_carry__0_i_4_n_0\
    );
\rx_fifo_wr_data_d1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => \delay_buf_q_reg[2]_1\(7),
      I1 => crc_q(23),
      I2 => \delay_buf_q_reg[2]_1\(6),
      I3 => crc_q(22),
      I4 => crc_q(21),
      I5 => \delay_buf_q_reg[2]_1\(5),
      O => \rx_fifo_wr_data_d1_carry__0_i_1_n_0\
    );
\rx_fifo_wr_data_d1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => \delay_buf_q_reg[2]_1\(4),
      I1 => crc_q(20),
      I2 => \delay_buf_q_reg[2]_1\(3),
      I3 => crc_q(19),
      I4 => crc_q(18),
      I5 => \delay_buf_q_reg[2]_1\(2),
      O => \rx_fifo_wr_data_d1_carry__0_i_2_n_0\
    );
\rx_fifo_wr_data_d1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => \delay_buf_q_reg[2]_1\(1),
      I1 => crc_q(17),
      I2 => \delay_buf_q_reg[2]_1\(0),
      I3 => crc_q(16),
      I4 => crc_q(15),
      I5 => \delay_buf_q_reg[1]_2\(7),
      O => \rx_fifo_wr_data_d1_carry__0_i_3_n_0\
    );
\rx_fifo_wr_data_d1_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => \delay_buf_q_reg[1]_2\(6),
      I1 => crc_q(14),
      I2 => \delay_buf_q_reg[1]_2\(5),
      I3 => crc_q(13),
      I4 => crc_q(12),
      I5 => \delay_buf_q_reg[1]_2\(4),
      O => \rx_fifo_wr_data_d1_carry__0_i_4_n_0\
    );
\rx_fifo_wr_data_d1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rx_fifo_wr_data_d1_carry__0_n_0\,
      CO(3) => \NLW_rx_fifo_wr_data_d1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => rx_fifo_wr_data_d1,
      CO(1) => \rx_fifo_wr_data_d1_carry__1_n_2\,
      CO(0) => \rx_fifo_wr_data_d1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_rx_fifo_wr_data_d1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \rx_fifo_wr_data_d1_carry__1_i_1_n_0\,
      S(1) => \rx_fifo_wr_data_d1_carry__1_i_2_n_0\,
      S(0) => \rx_fifo_wr_data_d1_carry__1_i_3_n_0\
    );
\rx_fifo_wr_data_d1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => crc_q(30),
      I1 => \delay_buf_q_reg[3]_0\(6),
      I2 => crc_q(31),
      I3 => \delay_buf_q_reg[3]_0\(7),
      O => \rx_fifo_wr_data_d1_carry__1_i_1_n_0\
    );
\rx_fifo_wr_data_d1_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => \delay_buf_q_reg[3]_0\(5),
      I1 => crc_q(29),
      I2 => \delay_buf_q_reg[3]_0\(4),
      I3 => crc_q(28),
      I4 => crc_q(27),
      I5 => \delay_buf_q_reg[3]_0\(3),
      O => \rx_fifo_wr_data_d1_carry__1_i_2_n_0\
    );
\rx_fifo_wr_data_d1_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => \delay_buf_q_reg[3]_0\(2),
      I1 => crc_q(26),
      I2 => \delay_buf_q_reg[3]_0\(1),
      I3 => crc_q(25),
      I4 => crc_q(24),
      I5 => \delay_buf_q_reg[3]_0\(0),
      O => \rx_fifo_wr_data_d1_carry__1_i_3_n_0\
    );
rx_fifo_wr_data_d1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => \delay_buf_q_reg[1]_2\(3),
      I1 => crc_q(11),
      I2 => \delay_buf_q_reg[1]_2\(2),
      I3 => crc_q(10),
      I4 => crc_q(9),
      I5 => \delay_buf_q_reg[1]_2\(1),
      O => rx_fifo_wr_data_d1_carry_i_1_n_0
    );
rx_fifo_wr_data_d1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => \delay_buf_q_reg[1]_2\(0),
      I1 => crc_q(8),
      I2 => \delay_buf_q_reg[0]_3\(7),
      I3 => crc_q(7),
      I4 => crc_q(6),
      I5 => \delay_buf_q_reg[0]_3\(6),
      O => rx_fifo_wr_data_d1_carry_i_2_n_0
    );
rx_fifo_wr_data_d1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => \delay_buf_q_reg[0]_3\(5),
      I1 => crc_q(5),
      I2 => \delay_buf_q_reg[0]_3\(4),
      I3 => crc_q(4),
      I4 => crc_q(3),
      I5 => \delay_buf_q_reg[0]_3\(3),
      O => rx_fifo_wr_data_d1_carry_i_3_n_0
    );
rx_fifo_wr_data_d1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => \delay_buf_q_reg[0]_3\(2),
      I1 => crc_q(2),
      I2 => \delay_buf_q_reg[0]_3\(1),
      I3 => crc_q(1),
      I4 => crc_q(0),
      I5 => \delay_buf_q_reg[0]_3\(0),
      O => rx_fifo_wr_data_d1_carry_i_4_n_0
    );
\rx_fifo_wr_data_q[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \crc_q[31]_i_3_n_0\,
      I1 => \delay_buf_q_reg[0]_3\(0),
      O => rx_fifo_wr_data_d1_in(0)
    );
\rx_fifo_wr_data_q[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \crc_q[31]_i_3_n_0\,
      I1 => \delay_buf_q_reg[0]_3\(1),
      O => rx_fifo_wr_data_d1_in(1)
    );
\rx_fifo_wr_data_q[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \crc_q[31]_i_3_n_0\,
      I1 => \delay_buf_q_reg[0]_3\(2),
      O => rx_fifo_wr_data_d1_in(2)
    );
\rx_fifo_wr_data_q[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \crc_q[31]_i_3_n_0\,
      I1 => \delay_buf_q_reg[0]_3\(3),
      O => rx_fifo_wr_data_d1_in(3)
    );
\rx_fifo_wr_data_q[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \crc_q[31]_i_3_n_0\,
      I1 => \delay_buf_q_reg[0]_3\(4),
      O => rx_fifo_wr_data_d1_in(4)
    );
\rx_fifo_wr_data_q[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \crc_q[31]_i_3_n_0\,
      I1 => \delay_buf_q_reg[0]_3\(5),
      O => rx_fifo_wr_data_d1_in(5)
    );
\rx_fifo_wr_data_q[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \crc_q[31]_i_3_n_0\,
      I1 => \delay_buf_q_reg[0]_3\(6),
      O => rx_fifo_wr_data_d1_in(6)
    );
\rx_fifo_wr_data_q[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \crc_q[31]_i_3_n_0\,
      I1 => \delay_buf_q_reg[0]_3\(7),
      O => rx_fifo_wr_data_d1_in(7)
    );
\rx_fifo_wr_data_q[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF15FF00FFFF"
    )
        port map (
      I0 => i_crs_dv,
      I1 => rx_fifo_wr_data_d1,
      I2 => crs_dv_q,
      I3 => \rx_fifo_wr_data_q[8]_i_2_n_0\,
      I4 => \rx_fifo_wr_data_q[8]_i_3_n_0\,
      I5 => rx_fifo_valid_q_i_3_n_0,
      O => rx_fifo_wr_data_d1_in(8)
    );
\rx_fifo_wr_data_q[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1110FFFF"
    )
        port map (
      I0 => rx_state_q(0),
      I1 => rx_state_q(1),
      I2 => full,
      I3 => pending_err_q,
      I4 => rx_state_q(2),
      O => \rx_fifo_wr_data_q[8]_i_2_n_0\
    );
\rx_fifo_wr_data_q[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rx_state_q(0),
      I1 => rx_state_q(1),
      O => \rx_fifo_wr_data_q[8]_i_3_n_0\
    );
\rx_fifo_wr_data_q[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11111110FFFFFFFF"
    )
        port map (
      I0 => rx_state_q(0),
      I1 => rx_state_q(1),
      I2 => \rx_fifo_wr_data_q[9]_i_2_n_0\,
      I3 => pending_err_q,
      I4 => full,
      I5 => rx_state_q(2),
      O => rx_fifo_wr_data_d1_in(9)
    );
\rx_fifo_wr_data_q[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => delay_buf_ctr_q(0),
      I1 => delay_buf_ctr_q(1),
      I2 => delay_buf_ctr_q(2),
      I3 => i_crs_dv,
      I4 => rx_shift_ctr_q(0),
      I5 => rx_shift_ctr_q(1),
      O => \rx_fifo_wr_data_q[9]_i_2_n_0\
    );
\rx_fifo_wr_data_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => rx_fifo_valid_d,
      D => rx_fifo_wr_data_d1_in(0),
      Q => Q(0),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\rx_fifo_wr_data_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => rx_fifo_valid_d,
      D => rx_fifo_wr_data_d1_in(1),
      Q => Q(1),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\rx_fifo_wr_data_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => rx_fifo_valid_d,
      D => rx_fifo_wr_data_d1_in(2),
      Q => Q(2),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\rx_fifo_wr_data_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => rx_fifo_valid_d,
      D => rx_fifo_wr_data_d1_in(3),
      Q => Q(3),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\rx_fifo_wr_data_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => rx_fifo_valid_d,
      D => rx_fifo_wr_data_d1_in(4),
      Q => Q(4),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\rx_fifo_wr_data_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => rx_fifo_valid_d,
      D => rx_fifo_wr_data_d1_in(5),
      Q => Q(5),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\rx_fifo_wr_data_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => rx_fifo_valid_d,
      D => rx_fifo_wr_data_d1_in(6),
      Q => Q(6),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\rx_fifo_wr_data_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => rx_fifo_valid_d,
      D => rx_fifo_wr_data_d1_in(7),
      Q => Q(7),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\rx_fifo_wr_data_q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => rx_fifo_valid_d,
      D => rx_fifo_wr_data_d1_in(8),
      Q => Q(8),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\rx_fifo_wr_data_q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => rx_fifo_valid_d,
      D => rx_fifo_wr_data_d1_in(9),
      Q => Q(9),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\rx_shift_ctr_q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDD4222A"
    )
        port map (
      I0 => i_crs_dv,
      I1 => rx_state_q(2),
      I2 => rx_state_q(0),
      I3 => rx_state_q(1),
      I4 => rx_shift_ctr_q(0),
      O => \rx_shift_ctr_q[0]_i_1_n_0\
    );
\rx_shift_ctr_q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F7F77408080888"
    )
        port map (
      I0 => rx_shift_ctr_q(0),
      I1 => i_crs_dv,
      I2 => rx_state_q(2),
      I3 => rx_state_q(0),
      I4 => rx_state_q(1),
      I5 => rx_shift_ctr_q(1),
      O => \rx_shift_ctr_q[1]_i_1_n_0\
    );
\rx_shift_ctr_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => '1',
      D => \rx_shift_ctr_q[0]_i_1_n_0\,
      Q => rx_shift_ctr_q(0),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\rx_shift_ctr_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => '1',
      D => \rx_shift_ctr_q[1]_i_1_n_0\,
      Q => rx_shift_ctr_q(1),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\rx_shift_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => i_crs_dv,
      D => data(2),
      Q => data(0),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\rx_shift_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => i_crs_dv,
      D => data(3),
      Q => data(1),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\rx_shift_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => i_crs_dv,
      D => data(4),
      Q => data(2),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\rx_shift_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => i_crs_dv,
      D => data(5),
      Q => data(3),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\rx_shift_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => i_crs_dv,
      D => i_rxd(0),
      Q => data(4),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
\rx_shift_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_ref_clk,
      CE => i_crs_dv,
      D => i_rxd(1),
      Q => data(5),
      R => \FSM_sequential_rx_state_q[2]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_eth_rx_0_2_xpm_cdc_gray is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of design_1_eth_rx_0_2_xpm_cdc_gray : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of design_1_eth_rx_0_2_xpm_cdc_gray : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_eth_rx_0_2_xpm_cdc_gray : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of design_1_eth_rx_0_2_xpm_cdc_gray : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_eth_rx_0_2_xpm_cdc_gray : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of design_1_eth_rx_0_2_xpm_cdc_gray : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of design_1_eth_rx_0_2_xpm_cdc_gray : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of design_1_eth_rx_0_2_xpm_cdc_gray : entity is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_eth_rx_0_2_xpm_cdc_gray : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_eth_rx_0_2_xpm_cdc_gray : entity is "soft";
  attribute xpm_cdc : string;
  attribute xpm_cdc of design_1_eth_rx_0_2_xpm_cdc_gray : entity is "GRAY";
end design_1_eth_rx_0_2_xpm_cdc_gray;

architecture STRUCTURE of design_1_eth_rx_0_2_xpm_cdc_gray is
  signal async_path : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair11";
begin
  dest_out_bin(8) <= \dest_graysync_ff[1]\(8);
  dest_out_bin(7 downto 0) <= \^dest_out_bin\(7 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \^dest_out_bin\(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \^dest_out_bin\(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \^dest_out_bin\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(8),
      I4 => \dest_graysync_ff[1]\(6),
      I5 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(7),
      I4 => \dest_graysync_ff[1]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(6),
      O => \^dest_out_bin\(5)
    );
\dest_out_bin[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(8),
      I2 => \dest_graysync_ff[1]\(7),
      O => \^dest_out_bin\(6)
    );
\dest_out_bin[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(8),
      O => \^dest_out_bin\(7)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(8),
      Q => async_path(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_eth_rx_0_2_xpm_cdc_gray__1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_eth_rx_0_2_xpm_cdc_gray__1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \design_1_eth_rx_0_2_xpm_cdc_gray__1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_eth_rx_0_2_xpm_cdc_gray__1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \design_1_eth_rx_0_2_xpm_cdc_gray__1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_eth_rx_0_2_xpm_cdc_gray__1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \design_1_eth_rx_0_2_xpm_cdc_gray__1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \design_1_eth_rx_0_2_xpm_cdc_gray__1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \design_1_eth_rx_0_2_xpm_cdc_gray__1\ : entity is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_eth_rx_0_2_xpm_cdc_gray__1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \design_1_eth_rx_0_2_xpm_cdc_gray__1\ : entity is "soft";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_eth_rx_0_2_xpm_cdc_gray__1\ : entity is "GRAY";
end \design_1_eth_rx_0_2_xpm_cdc_gray__1\;

architecture STRUCTURE of \design_1_eth_rx_0_2_xpm_cdc_gray__1\ is
  signal async_path : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \^dest_out_bin\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gray_enc : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair3";
begin
  dest_out_bin(8) <= \dest_graysync_ff[1]\(8);
  dest_out_bin(7 downto 0) <= \^dest_out_bin\(7 downto 0);
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_out_bin[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => \^dest_out_bin\(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => \^dest_out_bin\(0)
    );
\dest_out_bin[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \^dest_out_bin\(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => \^dest_out_bin\(1)
    );
\dest_out_bin[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \^dest_out_bin\(3),
      O => \^dest_out_bin\(2)
    );
\dest_out_bin[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(8),
      I4 => \dest_graysync_ff[1]\(6),
      I5 => \dest_graysync_ff[1]\(4),
      O => \^dest_out_bin\(3)
    );
\dest_out_bin[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(7),
      I4 => \dest_graysync_ff[1]\(5),
      O => \^dest_out_bin\(4)
    );
\dest_out_bin[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(6),
      O => \^dest_out_bin\(5)
    );
\dest_out_bin[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(8),
      I2 => \dest_graysync_ff[1]\(7),
      O => \^dest_out_bin\(6)
    );
\dest_out_bin[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(8),
      O => \^dest_out_bin\(7)
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(8),
      Q => async_path(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0\ : entity is 10;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0\ : entity is "soft";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0\ : entity is "GRAY";
end \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0\;

architecture STRUCTURE of \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal async_path : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][9]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair15";
begin
  dest_out_bin(9) <= \dest_graysync_ff[1]\(9);
  dest_out_bin(8) <= \<const0>\;
  dest_out_bin(7) <= \<const0>\;
  dest_out_bin(6) <= \<const0>\;
  dest_out_bin(5) <= \<const0>\;
  dest_out_bin(4) <= \<const0>\;
  dest_out_bin(3) <= \<const0>\;
  dest_out_bin(2) <= \<const0>\;
  dest_out_bin(1) <= \<const0>\;
  dest_out_bin(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(9),
      Q => \dest_graysync_ff[0]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(9),
      Q => \dest_graysync_ff[1]\(9),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(9),
      I1 => src_in_bin(8),
      O => gray_enc(8)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(8),
      Q => async_path(8),
      R => '0'
    );
\src_gray_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(9),
      Q => async_path(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0__1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0__1\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0__1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0__1\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0__1\ : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0__1\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0__1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0__1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0__1\ : entity is 10;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0__1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0__1\ : entity is "soft";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0__1\ : entity is "GRAY";
end \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0__1\;

architecture STRUCTURE of \design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0__1\ is
  signal \<const0>\ : STD_LOGIC;
  signal async_path : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][9]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair7";
begin
  dest_out_bin(9) <= \dest_graysync_ff[1]\(9);
  dest_out_bin(8) <= \<const0>\;
  dest_out_bin(7) <= \<const0>\;
  dest_out_bin(6) <= \<const0>\;
  dest_out_bin(5) <= \<const0>\;
  dest_out_bin(4) <= \<const0>\;
  dest_out_bin(3) <= \<const0>\;
  dest_out_bin(2) <= \<const0>\;
  dest_out_bin(1) <= \<const0>\;
  dest_out_bin(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(9),
      Q => \dest_graysync_ff[0]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(9),
      Q => \dest_graysync_ff[1]\(9),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(9),
      I1 => src_in_bin(8),
      O => gray_enc(8)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(8),
      Q => async_path(8),
      R => '0'
    );
\src_gray_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(9),
      Q => async_path(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_eth_rx_0_2_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of design_1_eth_rx_0_2_xpm_cdc_sync_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of design_1_eth_rx_0_2_xpm_cdc_sync_rst : entity is 2;
  attribute INIT : string;
  attribute INIT of design_1_eth_rx_0_2_xpm_cdc_sync_rst : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of design_1_eth_rx_0_2_xpm_cdc_sync_rst : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_eth_rx_0_2_xpm_cdc_sync_rst : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_eth_rx_0_2_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of design_1_eth_rx_0_2_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_eth_rx_0_2_xpm_cdc_sync_rst : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_eth_rx_0_2_xpm_cdc_sync_rst : entity is "soft";
  attribute xpm_cdc : string;
  attribute xpm_cdc of design_1_eth_rx_0_2_xpm_cdc_sync_rst : entity is "SYNC_RST";
end design_1_eth_rx_0_2_xpm_cdc_sync_rst;

architecture STRUCTURE of design_1_eth_rx_0_2_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_eth_rx_0_2_xpm_cdc_sync_rst__1\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \design_1_eth_rx_0_2_xpm_cdc_sync_rst__1\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \design_1_eth_rx_0_2_xpm_cdc_sync_rst__1\ : entity is 2;
  attribute INIT : string;
  attribute INIT of \design_1_eth_rx_0_2_xpm_cdc_sync_rst__1\ : entity is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \design_1_eth_rx_0_2_xpm_cdc_sync_rst__1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_eth_rx_0_2_xpm_cdc_sync_rst__1\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \design_1_eth_rx_0_2_xpm_cdc_sync_rst__1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \design_1_eth_rx_0_2_xpm_cdc_sync_rst__1\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \design_1_eth_rx_0_2_xpm_cdc_sync_rst__1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \design_1_eth_rx_0_2_xpm_cdc_sync_rst__1\ : entity is "soft";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \design_1_eth_rx_0_2_xpm_cdc_sync_rst__1\ : entity is "SYNC_RST";
end \design_1_eth_rx_0_2_xpm_cdc_sync_rst__1\;

architecture STRUCTURE of \design_1_eth_rx_0_2_xpm_cdc_sync_rst__1\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(1);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_eth_rx_0_2_xpm_counter_updn is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : in STD_LOGIC;
    \count_value_i_reg[9]_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_eth_rx_0_2_xpm_counter_updn : entity is "xpm_counter_updn";
end design_1_eth_rx_0_2_xpm_counter_updn;

architecture STRUCTURE of design_1_eth_rx_0_2_xpm_counter_updn is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \count_value_i[0]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count_value_i[6]_i_1__2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__2\ : label is "soft_lutpair16";
begin
  E(0) <= \^e\(0);
  Q(9 downto 0) <= \^q\(9 downto 0);
\count_value_i[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__3_n_0\
    );
\count_value_i[1]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__3_n_0\
    );
\count_value_i[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__3_n_0\
    );
\count_value_i[3]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__3_n_0\
    );
\count_value_i[4]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__3_n_0\
    );
\count_value_i[5]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count_value_i[8]_i_2__1_n_0\,
      I1 => \^q\(4),
      I2 => \^q\(5),
      O => \count_value_i[5]_i_1__2_n_0\
    );
\count_value_i[6]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(4),
      I1 => \count_value_i[8]_i_2__1_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(6),
      O => \count_value_i[6]_i_1__2_n_0\
    );
\count_value_i[7]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[8]_i_2__1_n_0\,
      I2 => \^q\(4),
      I3 => \^q\(6),
      I4 => \^q\(7),
      O => \count_value_i[7]_i_1__2_n_0\
    );
\count_value_i[8]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \count_value_i[8]_i_2__1_n_0\,
      I3 => \^q\(5),
      I4 => \^q\(7),
      I5 => \^q\(8),
      O => \count_value_i[8]_i_1__2_n_0\
    );
\count_value_i[8]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => rd_en,
      I3 => \count_value_i_reg[9]_0\,
      I4 => \^q\(0),
      I5 => \^q\(2),
      O => \count_value_i[8]_i_2__1_n_0\
    );
\count_value_i[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \count_value_i[9]_i_2__0_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => \count_value_i[9]_i_1__0_n_0\
    );
\count_value_i[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^e\(0),
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \count_value_i[9]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[0]_i_1__3_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[1]_i_1__3_n_0\,
      Q => \^q\(1),
      R => SR(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[2]_i_1__3_n_0\,
      Q => \^q\(2),
      R => SR(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[3]_i_1__3_n_0\,
      Q => \^q\(3),
      R => SR(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[4]_i_1__3_n_0\,
      Q => \^q\(4),
      R => SR(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[5]_i_1__2_n_0\,
      Q => \^q\(5),
      R => SR(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[6]_i_1__2_n_0\,
      Q => \^q\(6),
      R => SR(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[7]_i_1__2_n_0\,
      Q => \^q\(7),
      R => SR(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[8]_i_1__2_n_0\,
      Q => \^q\(8),
      R => SR(0)
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^e\(0),
      D => \count_value_i[9]_i_1__0_n_0\,
      Q => \^q\(9),
      R => SR(0)
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[9]_0\,
      O => \^e\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_eth_rx_0_2_xpm_counter_updn_1 is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    wrst_busy : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_eth_rx_0_2_xpm_counter_updn_1 : entity is "xpm_counter_updn";
end design_1_eth_rx_0_2_xpm_counter_updn_1;

architecture STRUCTURE of design_1_eth_rx_0_2_xpm_counter_updn_1 is
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_2_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[9]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \count_value_i[5]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \count_value_i[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count_value_i[9]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \count_value_i[9]_i_2\ : label is "soft_lutpair23";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__1_n_0\
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__1_n_0\
    );
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__1_n_0\
    );
\count_value_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[5]_i_2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      O => \count_value_i[5]_i_1_n_0\
    );
\count_value_i[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \count_value_i_reg[5]_0\,
      I2 => wr_en,
      I3 => rst_d1,
      I4 => wrst_busy,
      I5 => \^q\(1),
      O => \count_value_i[5]_i_2_n_0\
    );
\count_value_i[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count_value_i[9]_i_2_n_0\,
      I1 => \^q\(6),
      O => \count_value_i[6]_i_1_n_0\
    );
\count_value_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(6),
      I1 => \count_value_i[9]_i_2_n_0\,
      I2 => \^q\(7),
      O => \count_value_i[7]_i_1_n_0\
    );
\count_value_i[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_value_i[9]_i_2_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \^q\(8),
      O => \count_value_i[8]_i_1_n_0\
    );
\count_value_i[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count_value_i[9]_i_2_n_0\,
      I1 => \^q\(8),
      I2 => \^q\(7),
      I3 => \^q\(6),
      I4 => \^q\(9),
      O => \count_value_i[9]_i_1_n_0\
    );
\count_value_i[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_value_i[5]_i_2_n_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      O => \count_value_i[9]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__1_n_0\,
      Q => \^q\(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1__1_n_0\,
      Q => \^q\(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[5]_i_1_n_0\,
      Q => \^q\(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[6]_i_1_n_0\,
      Q => \^q\(6),
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[7]_i_1_n_0\,
      Q => \^q\(7),
      R => wrst_busy
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[8]_i_1_n_0\,
      Q => \^q\(8),
      R => wrst_busy
    );
\count_value_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[9]_i_1_n_0\,
      Q => \^q\(9),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_eth_rx_0_2_xpm_counter_updn__parameterized0\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_en : in STD_LOGIC;
    \count_value_i_reg[5]_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_eth_rx_0_2_xpm_counter_updn__parameterized0\ : entity is "xpm_counter_updn";
end \design_1_eth_rx_0_2_xpm_counter_updn__parameterized0\;

architecture STRUCTURE of \design_1_eth_rx_0_2_xpm_counter_updn__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__3_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_2__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \count_value_i[6]_i_1__3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__3\ : label is "soft_lutpair19";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__2_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i[4]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count_value_i[4]_i_1__2_n_0\
    );
\count_value_i[5]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count_value_i[8]_i_2__2_n_0\,
      I1 => \^q\(4),
      I2 => \^q\(5),
      O => \count_value_i[5]_i_1__3_n_0\
    );
\count_value_i[6]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(4),
      I1 => \count_value_i[8]_i_2__2_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(6),
      O => \count_value_i[6]_i_1__3_n_0\
    );
\count_value_i[7]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \count_value_i[8]_i_2__2_n_0\,
      I2 => \^q\(4),
      I3 => \^q\(6),
      I4 => \^q\(7),
      O => \count_value_i[7]_i_1__3_n_0\
    );
\count_value_i[8]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \count_value_i[8]_i_2__2_n_0\,
      I3 => \^q\(5),
      I4 => \^q\(7),
      I5 => \^q\(8),
      O => \count_value_i[8]_i_1__3_n_0\
    );
\count_value_i[8]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => rd_en,
      I3 => \count_value_i_reg[5]_0\,
      I4 => \^q\(0),
      I5 => \^q\(2),
      O => \count_value_i[8]_i_2__2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => \^q\(0),
      S => SR(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__2_n_0\,
      Q => \^q\(1),
      R => SR(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => \^q\(2),
      R => SR(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => \^q\(3),
      R => SR(0)
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1__2_n_0\,
      Q => \^q\(4),
      R => SR(0)
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[5]_i_1__3_n_0\,
      Q => \^q\(5),
      R => SR(0)
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[6]_i_1__3_n_0\,
      Q => \^q\(6),
      R => SR(0)
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[7]_i_1__3_n_0\,
      Q => \^q\(7),
      R => SR(0)
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[8]_i_1__3_n_0\,
      Q => \^q\(8),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_eth_rx_0_2_xpm_counter_updn__parameterized0_2\ is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wrst_busy : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_eth_rx_0_2_xpm_counter_updn__parameterized0_2\ : entity is "xpm_counter_updn";
end \design_1_eth_rx_0_2_xpm_counter_updn__parameterized0_2\;

architecture STRUCTURE of \design_1_eth_rx_0_2_xpm_counter_updn__parameterized0_2\ is
  signal count_value_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_2_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_7_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_8_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_9_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_n_3\ : STD_LOGIC;
  signal \NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \count_value_i[5]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \count_value_i[6]_i_1__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__0\ : label is "soft_lutpair27";
begin
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_value_i(0),
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_value_i(0),
      I1 => count_value_i(1),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count_value_i(1),
      I1 => count_value_i(0),
      I2 => count_value_i(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => count_value_i(2),
      I1 => count_value_i(0),
      I2 => count_value_i(1),
      I3 => count_value_i(3),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => count_value_i(3),
      I1 => count_value_i(1),
      I2 => count_value_i(0),
      I3 => count_value_i(2),
      I4 => count_value_i(4),
      O => \count_value_i[4]_i_1__0_n_0\
    );
\count_value_i[5]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count_value_i[8]_i_2_n_0\,
      I1 => count_value_i(5),
      O => \count_value_i[5]_i_1__0_n_0\
    );
\count_value_i[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count_value_i(5),
      I1 => \count_value_i[8]_i_2_n_0\,
      I2 => count_value_i(6),
      O => \count_value_i[6]_i_1__0_n_0\
    );
\count_value_i[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_value_i[8]_i_2_n_0\,
      I1 => count_value_i(5),
      I2 => count_value_i(6),
      I3 => count_value_i(7),
      O => \count_value_i[7]_i_1__0_n_0\
    );
\count_value_i[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count_value_i[8]_i_2_n_0\,
      I1 => count_value_i(7),
      I2 => count_value_i(6),
      I3 => count_value_i(5),
      I4 => count_value_i(8),
      O => \count_value_i[8]_i_1__0_n_0\
    );
\count_value_i[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => count_value_i(3),
      I1 => count_value_i(1),
      I2 => E(0),
      I3 => count_value_i(0),
      I4 => count_value_i(2),
      I5 => count_value_i(4),
      O => \count_value_i[8]_i_2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => count_value_i(0),
      S => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => count_value_i(1),
      R => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => count_value_i(2),
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => count_value_i(3),
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1__0_n_0\,
      Q => count_value_i(4),
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[5]_i_1__0_n_0\,
      Q => count_value_i(5),
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[6]_i_1__0_n_0\,
      Q => count_value_i(6),
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[7]_i_1__0_n_0\,
      Q => count_value_i(7),
      R => wrst_busy
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[8]_i_1__0_n_0\,
      Q => count_value_i(8),
      R => wrst_busy
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_value_i(8),
      I1 => Q(8),
      I2 => count_value_i(7),
      I3 => Q(7),
      I4 => Q(6),
      I5 => count_value_i(6),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_7_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_value_i(5),
      I1 => Q(5),
      I2 => count_value_i(4),
      I3 => Q(4),
      I4 => Q(3),
      I5 => count_value_i(3),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_8_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => count_value_i(2),
      I1 => Q(2),
      I2 => count_value_i(1),
      I3 => Q(1),
      I4 => Q(0),
      I5 => count_value_i(0),
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_9_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_CO_UNCONNECTED\(3),
      CO(2) => CO(0),
      CO(1) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_n_2\,
      CO(0) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_7_n_0\,
      S(1) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_8_n_0\,
      S(0) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_eth_rx_0_2_xpm_counter_updn__parameterized1\ is
  port (
    ram_full_i0 : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    wrst_busy : in STD_LOGIC;
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_eth_rx_0_2_xpm_counter_updn__parameterized1\ : entity is "xpm_counter_updn";
end \design_1_eth_rx_0_2_xpm_counter_updn__parameterized1\;

architecture STRUCTURE of \design_1_eth_rx_0_2_xpm_counter_updn__parameterized1\ is
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_value_i_reg_n_0_[8]\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_n_3\ : STD_LOGIC;
  signal going_full0 : STD_LOGIC;
  signal \NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \count_value_i[4]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \count_value_i[5]_i_1__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \count_value_i[6]_i_1__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \count_value_i[7]_i_1__1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count_value_i[8]_i_1__1\ : label is "soft_lutpair31";
begin
\count_value_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[0]\,
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[0]\,
      I1 => \count_value_i_reg_n_0_[1]\,
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[1]\,
      I1 => \count_value_i_reg_n_0_[0]\,
      I2 => \count_value_i_reg_n_0_[2]\,
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[2]\,
      I1 => \count_value_i_reg_n_0_[0]\,
      I2 => \count_value_i_reg_n_0_[1]\,
      I3 => \count_value_i_reg_n_0_[3]\,
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[3]\,
      I1 => \count_value_i_reg_n_0_[1]\,
      I2 => \count_value_i_reg_n_0_[0]\,
      I3 => \count_value_i_reg_n_0_[2]\,
      I4 => \count_value_i_reg_n_0_[4]\,
      O => \count_value_i[4]_i_1_n_0\
    );
\count_value_i[5]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count_value_i[8]_i_2__0_n_0\,
      I1 => \count_value_i_reg_n_0_[5]\,
      O => \count_value_i[5]_i_1__1_n_0\
    );
\count_value_i[6]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[5]\,
      I1 => \count_value_i[8]_i_2__0_n_0\,
      I2 => \count_value_i_reg_n_0_[6]\,
      O => \count_value_i[6]_i_1__1_n_0\
    );
\count_value_i[7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_value_i[8]_i_2__0_n_0\,
      I1 => \count_value_i_reg_n_0_[5]\,
      I2 => \count_value_i_reg_n_0_[6]\,
      I3 => \count_value_i_reg_n_0_[7]\,
      O => \count_value_i[7]_i_1__1_n_0\
    );
\count_value_i[8]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count_value_i[8]_i_2__0_n_0\,
      I1 => \count_value_i_reg_n_0_[7]\,
      I2 => \count_value_i_reg_n_0_[6]\,
      I3 => \count_value_i_reg_n_0_[5]\,
      I4 => \count_value_i_reg_n_0_[8]\,
      O => \count_value_i[8]_i_1__1_n_0\
    );
\count_value_i[8]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[3]\,
      I1 => \count_value_i_reg_n_0_[1]\,
      I2 => E(0),
      I3 => \count_value_i_reg_n_0_[0]\,
      I4 => \count_value_i_reg_n_0_[2]\,
      I5 => \count_value_i_reg_n_0_[4]\,
      O => \count_value_i[8]_i_2__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[0]\,
      R => wrst_busy
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[1]\,
      S => wrst_busy
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[2]\,
      R => wrst_busy
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[3]\,
      R => wrst_busy
    );
\count_value_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[4]_i_1_n_0\,
      Q => \count_value_i_reg_n_0_[4]\,
      R => wrst_busy
    );
\count_value_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[5]_i_1__1_n_0\,
      Q => \count_value_i_reg_n_0_[5]\,
      R => wrst_busy
    );
\count_value_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[6]_i_1__1_n_0\,
      Q => \count_value_i_reg_n_0_[6]\,
      R => wrst_busy
    );
\count_value_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[7]_i_1__1_n_0\,
      Q => \count_value_i_reg_n_0_[7]\,
      R => wrst_busy
    );
\count_value_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \count_value_i[8]_i_1__1_n_0\,
      Q => \count_value_i_reg_n_0_[8]\,
      R => wrst_busy
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0020"
    )
        port map (
      I0 => going_full0,
      I1 => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\,
      I2 => wr_en,
      I3 => rst_d1,
      I4 => CO(0),
      O => ram_full_i0
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[8]\,
      I1 => Q(8),
      I2 => \count_value_i_reg_n_0_[7]\,
      I3 => Q(7),
      I4 => Q(6),
      I5 => \count_value_i_reg_n_0_[6]\,
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_4_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[5]\,
      I1 => Q(5),
      I2 => \count_value_i_reg_n_0_[4]\,
      I3 => Q(4),
      I4 => Q(3),
      I5 => \count_value_i_reg_n_0_[3]\,
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_5_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \count_value_i_reg_n_0_[2]\,
      I1 => Q(2),
      I2 => \count_value_i_reg_n_0_[1]\,
      I3 => Q(1),
      I4 => Q(0),
      I5 => \count_value_i_reg_n_0_[0]\,
      O => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_6_n_0\
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_CO_UNCONNECTED\(3),
      CO(2) => going_full0,
      CO(1) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_n_2\,
      CO(0) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_4_n_0\,
      S(1) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_5_n_0\,
      S(0) => \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_i_6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_eth_rx_0_2_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrst_busy : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    \count_value_i_reg[8]\ : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_eth_rx_0_2_xpm_fifo_reg_bit : entity is "xpm_fifo_reg_bit";
end design_1_eth_rx_0_2_xpm_fifo_reg_bit;

architecture STRUCTURE of design_1_eth_rx_0_2_xpm_fifo_reg_bit is
  signal \^rst_d1\ : STD_LOGIC;
begin
  rst_d1 <= \^rst_d1\;
d_out_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => wrst_busy,
      Q => \^rst_d1\,
      R => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \count_value_i_reg[8]\,
      I1 => wr_en,
      I2 => \^rst_d1\,
      I3 => wrst_busy,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_eth_rx_0_2_xpm_fifo_reg_vec is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    wrst_busy : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_eth_rx_0_2_xpm_fifo_reg_vec : entity is "xpm_fifo_reg_vec";
end design_1_eth_rx_0_2_xpm_fifo_reg_vec;

architecture STRUCTURE of design_1_eth_rx_0_2_xpm_fifo_reg_vec is
begin
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => wrst_busy
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => wrst_busy
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => wrst_busy
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => wrst_busy
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(4),
      Q => Q(4),
      R => wrst_busy
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(5),
      Q => Q(5),
      R => wrst_busy
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(6),
      Q => Q(6),
      R => wrst_busy
    );
\reg_out_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(7),
      Q => Q(7),
      R => wrst_busy
    );
\reg_out_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => D(8),
      Q => Q(8),
      R => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_eth_rx_0_2_xpm_fifo_reg_vec_0 is
  port (
    empty_i0 : out STD_LOGIC;
    rd_en : in STD_LOGIC;
    \gen_pf_ic_rc.ram_empty_i_reg\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_eth_rx_0_2_xpm_fifo_reg_vec_0 : entity is "xpm_fifo_reg_vec";
end design_1_eth_rx_0_2_xpm_fifo_reg_vec_0;

architecture STRUCTURE of design_1_eth_rx_0_2_xpm_fifo_reg_vec_0 is
  signal \gen_pf_ic_rc.ram_empty_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_6_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_7_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_8_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_i_9_n_0\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_reg_i_2_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_reg_i_2_n_3\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_reg_i_3_n_2\ : STD_LOGIC;
  signal \gen_pf_ic_rc.ram_empty_i_reg_i_3_n_3\ : STD_LOGIC;
  signal going_empty0 : STD_LOGIC;
  signal leaving_empty : STD_LOGIC;
  signal reg_out_i : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\gen_pf_ic_rc.ram_empty_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => rd_en,
      I1 => \gen_pf_ic_rc.ram_empty_i_reg\,
      I2 => going_empty0,
      I3 => leaving_empty,
      O => empty_i0
    );
\gen_pf_ic_rc.ram_empty_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => reg_out_i(6),
      I1 => Q(6),
      I2 => Q(8),
      I3 => reg_out_i(8),
      I4 => Q(7),
      I5 => reg_out_i(7),
      O => \gen_pf_ic_rc.ram_empty_i_i_4_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => reg_out_i(3),
      I1 => Q(3),
      I2 => Q(5),
      I3 => reg_out_i(5),
      I4 => Q(4),
      I5 => reg_out_i(4),
      O => \gen_pf_ic_rc.ram_empty_i_i_5_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => reg_out_i(0),
      I1 => Q(0),
      I2 => Q(2),
      I3 => reg_out_i(2),
      I4 => Q(1),
      I5 => reg_out_i(1),
      O => \gen_pf_ic_rc.ram_empty_i_i_6_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => reg_out_i(6),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(6),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(8),
      I3 => reg_out_i(8),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(7),
      I5 => reg_out_i(7),
      O => \gen_pf_ic_rc.ram_empty_i_i_7_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => reg_out_i(3),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(3),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(5),
      I3 => reg_out_i(5),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(4),
      I5 => reg_out_i(4),
      O => \gen_pf_ic_rc.ram_empty_i_i_8_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => reg_out_i(0),
      I1 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(0),
      I2 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(2),
      I3 => reg_out_i(2),
      I4 => \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(1),
      I5 => reg_out_i(1),
      O => \gen_pf_ic_rc.ram_empty_i_i_9_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_reg_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_CO_UNCONNECTED\(3),
      CO(2) => going_empty0,
      CO(1) => \gen_pf_ic_rc.ram_empty_i_reg_i_2_n_2\,
      CO(0) => \gen_pf_ic_rc.ram_empty_i_reg_i_2_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \gen_pf_ic_rc.ram_empty_i_i_4_n_0\,
      S(1) => \gen_pf_ic_rc.ram_empty_i_i_5_n_0\,
      S(0) => \gen_pf_ic_rc.ram_empty_i_i_6_n_0\
    );
\gen_pf_ic_rc.ram_empty_i_reg_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_CO_UNCONNECTED\(3),
      CO(2) => leaving_empty,
      CO(1) => \gen_pf_ic_rc.ram_empty_i_reg_i_3_n_2\,
      CO(0) => \gen_pf_ic_rc.ram_empty_i_reg_i_3_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gen_pf_ic_rc.ram_empty_i_reg_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \gen_pf_ic_rc.ram_empty_i_i_7_n_0\,
      S(1) => \gen_pf_ic_rc.ram_empty_i_i_8_n_0\,
      S(0) => \gen_pf_ic_rc.ram_empty_i_i_9_n_0\
    );
\reg_out_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(0),
      Q => reg_out_i(0),
      R => SR(0)
    );
\reg_out_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(1),
      Q => reg_out_i(1),
      R => SR(0)
    );
\reg_out_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(2),
      Q => reg_out_i(2),
      R => SR(0)
    );
\reg_out_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(3),
      Q => reg_out_i(3),
      R => SR(0)
    );
\reg_out_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(4),
      Q => reg_out_i(4),
      R => SR(0)
    );
\reg_out_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(5),
      Q => reg_out_i(5),
      R => SR(0)
    );
\reg_out_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(6),
      Q => reg_out_i(6),
      R => SR(0)
    );
\reg_out_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(7),
      Q => reg_out_i(7),
      R => SR(0)
    );
\reg_out_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => D(8),
      Q => reg_out_i(8),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_eth_rx_0_2_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 9 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 9 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 9 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of design_1_eth_rx_0_2_xpm_memory_base : entity is 9;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of design_1_eth_rx_0_2_xpm_memory_base : entity is 9;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of design_1_eth_rx_0_2_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of design_1_eth_rx_0_2_xpm_memory_base : entity is 10;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of design_1_eth_rx_0_2_xpm_memory_base : entity is 10;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of design_1_eth_rx_0_2_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of design_1_eth_rx_0_2_xpm_memory_base : entity is 1;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of design_1_eth_rx_0_2_xpm_memory_base : entity is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of design_1_eth_rx_0_2_xpm_memory_base : entity is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of design_1_eth_rx_0_2_xpm_memory_base : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of design_1_eth_rx_0_2_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of design_1_eth_rx_0_2_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of design_1_eth_rx_0_2_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of design_1_eth_rx_0_2_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of design_1_eth_rx_0_2_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of design_1_eth_rx_0_2_xpm_memory_base : entity is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of design_1_eth_rx_0_2_xpm_memory_base : entity is 5120;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of design_1_eth_rx_0_2_xpm_memory_base : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of design_1_eth_rx_0_2_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of design_1_eth_rx_0_2_xpm_memory_base : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_eth_rx_0_2_xpm_memory_base : entity is "xpm_memory_base";
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of design_1_eth_rx_0_2_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of design_1_eth_rx_0_2_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of design_1_eth_rx_0_2_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of design_1_eth_rx_0_2_xpm_memory_base : entity is 512;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of design_1_eth_rx_0_2_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of design_1_eth_rx_0_2_xpm_memory_base : entity is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of design_1_eth_rx_0_2_xpm_memory_base : entity is 10;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of design_1_eth_rx_0_2_xpm_memory_base : entity is 10;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of design_1_eth_rx_0_2_xpm_memory_base : entity is 10;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of design_1_eth_rx_0_2_xpm_memory_base : entity is 10;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of design_1_eth_rx_0_2_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of design_1_eth_rx_0_2_xpm_memory_base : entity is 10;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of design_1_eth_rx_0_2_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of design_1_eth_rx_0_2_xpm_memory_base : entity is 1;
  attribute P_NUM_COL_READ_A : integer;
  attribute P_NUM_COL_READ_A of design_1_eth_rx_0_2_xpm_memory_base : entity is 1;
  attribute P_NUM_COL_READ_B : integer;
  attribute P_NUM_COL_READ_B of design_1_eth_rx_0_2_xpm_memory_base : entity is 1;
  attribute P_NUM_COL_WRITE_A : integer;
  attribute P_NUM_COL_WRITE_A of design_1_eth_rx_0_2_xpm_memory_base : entity is 1;
  attribute P_NUM_COL_WRITE_B : integer;
  attribute P_NUM_COL_WRITE_B of design_1_eth_rx_0_2_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of design_1_eth_rx_0_2_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of design_1_eth_rx_0_2_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of design_1_eth_rx_0_2_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of design_1_eth_rx_0_2_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of design_1_eth_rx_0_2_xpm_memory_base : entity is "no";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of design_1_eth_rx_0_2_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of design_1_eth_rx_0_2_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_A of design_1_eth_rx_0_2_xpm_memory_base : entity is 1;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_B of design_1_eth_rx_0_2_xpm_memory_base : entity is 1;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of design_1_eth_rx_0_2_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of design_1_eth_rx_0_2_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_A of design_1_eth_rx_0_2_xpm_memory_base : entity is 1;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_B of design_1_eth_rx_0_2_xpm_memory_base : entity is 1;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of design_1_eth_rx_0_2_xpm_memory_base : entity is 9;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of design_1_eth_rx_0_2_xpm_memory_base : entity is 9;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of design_1_eth_rx_0_2_xpm_memory_base : entity is 9;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of design_1_eth_rx_0_2_xpm_memory_base : entity is 9;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of design_1_eth_rx_0_2_xpm_memory_base : entity is 10;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of design_1_eth_rx_0_2_xpm_memory_base : entity is 10;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of design_1_eth_rx_0_2_xpm_memory_base : entity is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of design_1_eth_rx_0_2_xpm_memory_base : entity is 10;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of design_1_eth_rx_0_2_xpm_memory_base : entity is 10;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of design_1_eth_rx_0_2_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of design_1_eth_rx_0_2_xpm_memory_base : entity is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of design_1_eth_rx_0_2_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of design_1_eth_rx_0_2_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of design_1_eth_rx_0_2_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of design_1_eth_rx_0_2_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_eth_rx_0_2_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of design_1_eth_rx_0_2_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of design_1_eth_rx_0_2_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of design_1_eth_rx_0_2_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of design_1_eth_rx_0_2_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of design_1_eth_rx_0_2_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of design_1_eth_rx_0_2_xpm_memory_base : entity is 10;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of design_1_eth_rx_0_2_xpm_memory_base : entity is 10;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of design_1_eth_rx_0_2_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of design_1_eth_rx_0_2_xpm_memory_base : entity is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of design_1_eth_rx_0_2_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_eth_rx_0_2_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_eth_rx_0_2_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of design_1_eth_rx_0_2_xpm_memory_base : entity is 12;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of design_1_eth_rx_0_2_xpm_memory_base : entity is 12;
end design_1_eth_rx_0_2_xpm_memory_base;

architecture STRUCTURE of design_1_eth_rx_0_2_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_wr_a.gen_word_narrow.mem_reg_i_1_n_0\ : STD_LOGIC;
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 10 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTA.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.ADDRESS_END\ : integer;
  attribute \MEM.PORTA.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 1023;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p0_d10";
  attribute \MEM.PORTA.DATA_LSB\ : integer;
  attribute \MEM.PORTA.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTA.DATA_MSB\ : integer;
  attribute \MEM.PORTA.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 9;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ : integer;
  attribute \MEM.PORTB.ADDRESS_BEGIN\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.ADDRESS_END\ : integer;
  attribute \MEM.PORTB.ADDRESS_END\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 1023;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "p0_d10";
  attribute \MEM.PORTB.DATA_LSB\ : integer;
  attribute \MEM.PORTB.DATA_LSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute \MEM.PORTB.DATA_MSB\ : integer;
  attribute \MEM.PORTB.DATA_MSB\ of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 9;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 5120;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "block";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg\ : label is 9;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_wr_a.gen_word_narrow.mem_reg\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13) => '0',
      ADDRARDADDR(12 downto 4) => addra(8 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13) => '0',
      ADDRBWRADDR(12 downto 4) => addrb(8 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DIADI(15 downto 10) => B"000000",
      DIADI(9 downto 0) => dina(9 downto 0),
      DIBDI(15 downto 0) => B"0000001111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOADO_UNCONNECTED\(15 downto 0),
      DOBDO(15 downto 10) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOBDO_UNCONNECTED\(15 downto 10),
      DOBDO(9 downto 0) => doutb(9 downto 0),
      DOPADOP(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => wea(0),
      ENBWREN => \gen_wr_a.gen_word_narrow.mem_reg_i_1_n_0\,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => rstb,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"11",
      WEBWE(3 downto 0) => B"0000"
    );
\gen_wr_a.gen_word_narrow.mem_reg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rstb,
      I1 => enb,
      O => \gen_wr_a.gen_word_narrow.mem_reg_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_eth_rx_0_2_eth_rx_dma is
  port (
    axi_aresetn_0 : out STD_LOGIC;
    wready_reg_reg : out STD_LOGIC;
    awready_reg_reg : out STD_LOGIC;
    bvalid_reg_reg : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 0 to 0 );
    read_state_reg_reg : out STD_LOGIC;
    arready_reg_reg : out STD_LOGIC;
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_WLAST : out STD_LOGIC;
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rd_en : out STD_LOGIC;
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_aclk : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 9 downto 0 );
    S_AXI_RREADY : in STD_LOGIC;
    empty : in STD_LOGIC;
    rd_rst_busy : in STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_eth_rx_0_2_eth_rx_dma : entity is "eth_rx_dma";
end design_1_eth_rx_0_2_eth_rx_dma;

architecture STRUCTURE of design_1_eth_rx_0_2_eth_rx_dma is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^axi_aresetn_0\ : STD_LOGIC;
  signal axi_writer_inst_n_38 : STD_LOGIC;
  signal axi_writer_inst_n_44 : STD_LOGIC;
  signal axi_writer_inst_n_45 : STD_LOGIC;
  signal axi_writer_inst_n_46 : STD_LOGIC;
  signal axi_writer_inst_n_47 : STD_LOGIC;
  signal axi_writer_inst_n_49 : STD_LOGIC;
  signal axi_writer_inst_n_50 : STD_LOGIC;
  signal axi_writer_inst_n_87 : STD_LOGIC;
  signal axi_writer_inst_n_88 : STD_LOGIC;
  signal buf_id_next : STD_LOGIC;
  signal chunk_buf_id_reg : STD_LOGIC;
  signal chunk_byte_count_next : STD_LOGIC_VECTOR ( 0 to 0 );
  signal chunk_ready : STD_LOGIC;
  signal dma_state_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal last_next : STD_LOGIC;
  signal last_reg : STD_LOGIC;
  signal payload_collector_inst_n_0 : STD_LOGIC;
  signal payload_collector_inst_n_1 : STD_LOGIC;
  signal payload_collector_inst_n_10 : STD_LOGIC;
  signal payload_collector_inst_n_11 : STD_LOGIC;
  signal payload_collector_inst_n_12 : STD_LOGIC;
  signal payload_collector_inst_n_13 : STD_LOGIC;
  signal payload_collector_inst_n_14 : STD_LOGIC;
  signal payload_collector_inst_n_15 : STD_LOGIC;
  signal payload_collector_inst_n_16 : STD_LOGIC;
  signal payload_collector_inst_n_17 : STD_LOGIC;
  signal payload_collector_inst_n_18 : STD_LOGIC;
  signal payload_collector_inst_n_19 : STD_LOGIC;
  signal payload_collector_inst_n_20 : STD_LOGIC;
  signal payload_collector_inst_n_21 : STD_LOGIC;
  signal payload_collector_inst_n_22 : STD_LOGIC;
  signal payload_collector_inst_n_23 : STD_LOGIC;
  signal payload_collector_inst_n_24 : STD_LOGIC;
  signal payload_collector_inst_n_25 : STD_LOGIC;
  signal payload_collector_inst_n_26 : STD_LOGIC;
  signal payload_collector_inst_n_27 : STD_LOGIC;
  signal payload_collector_inst_n_28 : STD_LOGIC;
  signal payload_collector_inst_n_29 : STD_LOGIC;
  signal payload_collector_inst_n_3 : STD_LOGIC;
  signal payload_collector_inst_n_30 : STD_LOGIC;
  signal payload_collector_inst_n_31 : STD_LOGIC;
  signal payload_collector_inst_n_32 : STD_LOGIC;
  signal payload_collector_inst_n_33 : STD_LOGIC;
  signal payload_collector_inst_n_34 : STD_LOGIC;
  signal payload_collector_inst_n_35 : STD_LOGIC;
  signal payload_collector_inst_n_36 : STD_LOGIC;
  signal payload_collector_inst_n_37 : STD_LOGIC;
  signal payload_collector_inst_n_38 : STD_LOGIC;
  signal payload_collector_inst_n_39 : STD_LOGIC;
  signal payload_collector_inst_n_4 : STD_LOGIC;
  signal payload_collector_inst_n_40 : STD_LOGIC;
  signal payload_collector_inst_n_41 : STD_LOGIC;
  signal payload_collector_inst_n_42 : STD_LOGIC;
  signal payload_collector_inst_n_43 : STD_LOGIC;
  signal payload_collector_inst_n_44 : STD_LOGIC;
  signal payload_collector_inst_n_45 : STD_LOGIC;
  signal payload_collector_inst_n_46 : STD_LOGIC;
  signal payload_collector_inst_n_49 : STD_LOGIC;
  signal payload_collector_inst_n_5 : STD_LOGIC;
  signal payload_collector_inst_n_6 : STD_LOGIC;
  signal payload_collector_inst_n_7 : STD_LOGIC;
  signal payload_collector_inst_n_8 : STD_LOGIC;
  signal payload_collector_inst_n_9 : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][0]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][10]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][11]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][12]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][13]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][14]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][15]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][16]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][17]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][18]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][19]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][1]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][20]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][21]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][22]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][23]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][24]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][25]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][26]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][27]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][28]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][29]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][2]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][30]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][31]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][3]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][4]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][5]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][6]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][7]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][8]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_0][9]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][0]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][10]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][11]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][12]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][13]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][14]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][15]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][16]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][17]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][18]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][19]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][1]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][20]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][21]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][22]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][23]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][24]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][25]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][26]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][27]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][28]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][29]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][2]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][30]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][31]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][3]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][4]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][5]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][6]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][7]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][8]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_1][9]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][0]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][10]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][11]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][12]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][13]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][14]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][15]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][16]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][17]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][18]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][19]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][1]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][20]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][21]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][22]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][23]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][24]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][25]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][26]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][27]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][28]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][29]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][2]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][30]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][31]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][3]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][4]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][5]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][6]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][7]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][8]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_2][9]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][0]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][10]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][11]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][12]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][13]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][14]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][15]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][16]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][17]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][18]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][19]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][1]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][20]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][21]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][22]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][23]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][24]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][25]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][26]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][27]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][28]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][29]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][2]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][30]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][31]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][3]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][4]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][5]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][6]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][7]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][8]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[0,_n_0_3][9]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][0]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][10]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][11]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][12]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][13]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][14]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][15]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][16]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][17]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][18]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][19]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][1]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][20]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][21]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][22]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][23]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][24]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][25]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][26]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][27]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][28]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][29]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][2]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][30]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][31]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][3]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][4]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][5]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][6]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][7]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][8]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_0][9]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][0]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][10]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][11]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][12]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][13]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][14]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][15]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][16]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][17]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][18]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][19]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][1]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][20]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][21]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][22]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][23]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][24]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][25]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][26]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][27]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][28]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][29]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][2]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][30]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][31]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][3]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][4]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][5]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][6]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][7]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][8]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_1][9]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][0]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][10]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][11]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][12]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][13]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][14]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][15]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][16]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][17]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][18]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][19]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][1]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][20]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][21]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][22]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][23]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][24]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][25]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][26]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][27]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][28]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][29]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][2]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][30]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][31]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][3]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][4]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][5]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][6]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][7]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][8]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_2][9]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][0]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][10]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][11]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][12]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][13]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][14]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][15]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][16]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][17]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][18]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][19]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][1]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][20]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][21]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][22]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][23]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][24]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][25]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][26]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][27]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][28]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][29]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][2]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][30]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][31]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][3]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][4]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][5]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][6]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][7]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][8]\ : STD_LOGIC;
  signal \ping_pong_buf_reg_reg[1,_n_0_3][9]\ : STD_LOGIC;
  signal rx_payload_region_base_addr_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal status_manager_inst_n_12 : STD_LOGIC;
  signal status_manager_inst_n_13 : STD_LOGIC;
  signal status_manager_inst_n_14 : STD_LOGIC;
  signal status_manager_inst_n_15 : STD_LOGIC;
  signal status_manager_inst_n_16 : STD_LOGIC;
  signal status_manager_inst_n_24 : STD_LOGIC;
  signal status_manager_inst_n_25 : STD_LOGIC;
  signal status_manager_inst_n_26 : STD_LOGIC;
  signal status_manager_inst_n_27 : STD_LOGIC;
  signal status_manager_inst_n_28 : STD_LOGIC;
  signal status_manager_inst_n_29 : STD_LOGIC;
  signal status_manager_inst_n_30 : STD_LOGIC;
  signal status_manager_inst_n_31 : STD_LOGIC;
  signal status_manager_inst_n_32 : STD_LOGIC;
  signal status_manager_inst_n_33 : STD_LOGIC;
  signal status_manager_inst_n_34 : STD_LOGIC;
  signal status_manager_inst_n_35 : STD_LOGIC;
  signal status_manager_inst_n_36 : STD_LOGIC;
  signal status_manager_inst_n_37 : STD_LOGIC;
  signal status_manager_inst_n_38 : STD_LOGIC;
  signal status_manager_inst_n_39 : STD_LOGIC;
  signal status_manager_inst_n_40 : STD_LOGIC;
  signal status_manager_inst_n_41 : STD_LOGIC;
  signal status_manager_inst_n_42 : STD_LOGIC;
  signal status_manager_inst_n_43 : STD_LOGIC;
  signal status_manager_inst_n_44 : STD_LOGIC;
  signal wr_addr_offset_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal wr_addr_ready : STD_LOGIC;
  signal wr_base_addr_reg : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  axi_aresetn_0 <= \^axi_aresetn_0\;
axi_writer_inst: entity work.design_1_eth_rx_0_2_dma_axi_writer
     port map (
      D(1) => payload_collector_inst_n_44,
      D(0) => payload_collector_inst_n_45,
      E(0) => chunk_byte_count_next(0),
      \FSM_onehot_axi_writer_state_reg_reg[0]_0\ => payload_collector_inst_n_4,
      \FSM_onehot_axi_writer_state_reg_reg[0]_1\ => payload_collector_inst_n_5,
      \FSM_onehot_axi_writer_state_reg_reg[3]_0\ => axi_writer_inst_n_50,
      \FSM_onehot_axi_writer_state_reg_reg[3]_1\ => axi_writer_inst_n_87,
      \FSM_onehot_axi_writer_state_reg_reg[3]_2\ => axi_writer_inst_n_88,
      \FSM_sequential_dma_state_reg_reg[0]\ => payload_collector_inst_n_49,
      \FSM_sequential_dma_state_reg_reg[0]_0\ => payload_collector_inst_n_11,
      M_AXI_AWADDR(31 downto 0) => M_AXI_AWADDR(31 downto 0),
      M_AXI_AWLEN(3 downto 0) => M_AXI_AWLEN(3 downto 0),
      M_AXI_AWREADY => M_AXI_AWREADY,
      M_AXI_BVALID => M_AXI_BVALID,
      M_AXI_WDATA(31 downto 0) => M_AXI_WDATA(31 downto 0),
      \M_AXI_WDATA[0]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][0]\,
      \M_AXI_WDATA[0]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][0]\,
      \M_AXI_WDATA[0]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][0]\,
      \M_AXI_WDATA[0]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][0]\,
      \M_AXI_WDATA[0]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][0]\,
      \M_AXI_WDATA[0]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][0]\,
      \M_AXI_WDATA[0]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][0]\,
      \M_AXI_WDATA[10]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][10]\,
      \M_AXI_WDATA[10]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][10]\,
      \M_AXI_WDATA[10]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][10]\,
      \M_AXI_WDATA[10]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][10]\,
      \M_AXI_WDATA[10]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][10]\,
      \M_AXI_WDATA[10]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][10]\,
      \M_AXI_WDATA[10]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][10]\,
      \M_AXI_WDATA[11]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][11]\,
      \M_AXI_WDATA[11]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][11]\,
      \M_AXI_WDATA[11]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][11]\,
      \M_AXI_WDATA[11]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][11]\,
      \M_AXI_WDATA[11]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][11]\,
      \M_AXI_WDATA[11]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][11]\,
      \M_AXI_WDATA[11]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][11]\,
      \M_AXI_WDATA[12]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][12]\,
      \M_AXI_WDATA[12]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][12]\,
      \M_AXI_WDATA[12]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][12]\,
      \M_AXI_WDATA[12]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][12]\,
      \M_AXI_WDATA[12]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][12]\,
      \M_AXI_WDATA[12]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][12]\,
      \M_AXI_WDATA[12]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][12]\,
      \M_AXI_WDATA[13]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][13]\,
      \M_AXI_WDATA[13]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][13]\,
      \M_AXI_WDATA[13]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][13]\,
      \M_AXI_WDATA[13]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][13]\,
      \M_AXI_WDATA[13]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][13]\,
      \M_AXI_WDATA[13]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][13]\,
      \M_AXI_WDATA[13]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][13]\,
      \M_AXI_WDATA[14]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][14]\,
      \M_AXI_WDATA[14]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][14]\,
      \M_AXI_WDATA[14]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][14]\,
      \M_AXI_WDATA[14]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][14]\,
      \M_AXI_WDATA[14]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][14]\,
      \M_AXI_WDATA[14]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][14]\,
      \M_AXI_WDATA[14]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][14]\,
      \M_AXI_WDATA[15]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][15]\,
      \M_AXI_WDATA[15]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][15]\,
      \M_AXI_WDATA[15]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][15]\,
      \M_AXI_WDATA[15]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][15]\,
      \M_AXI_WDATA[15]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][15]\,
      \M_AXI_WDATA[15]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][15]\,
      \M_AXI_WDATA[15]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][15]\,
      \M_AXI_WDATA[16]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][16]\,
      \M_AXI_WDATA[16]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][16]\,
      \M_AXI_WDATA[16]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][16]\,
      \M_AXI_WDATA[16]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][16]\,
      \M_AXI_WDATA[16]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][16]\,
      \M_AXI_WDATA[16]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][16]\,
      \M_AXI_WDATA[16]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][16]\,
      \M_AXI_WDATA[17]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][17]\,
      \M_AXI_WDATA[17]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][17]\,
      \M_AXI_WDATA[17]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][17]\,
      \M_AXI_WDATA[17]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][17]\,
      \M_AXI_WDATA[17]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][17]\,
      \M_AXI_WDATA[17]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][17]\,
      \M_AXI_WDATA[17]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][17]\,
      \M_AXI_WDATA[18]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][18]\,
      \M_AXI_WDATA[18]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][18]\,
      \M_AXI_WDATA[18]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][18]\,
      \M_AXI_WDATA[18]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][18]\,
      \M_AXI_WDATA[18]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][18]\,
      \M_AXI_WDATA[18]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][18]\,
      \M_AXI_WDATA[18]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][18]\,
      \M_AXI_WDATA[19]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][19]\,
      \M_AXI_WDATA[19]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][19]\,
      \M_AXI_WDATA[19]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][19]\,
      \M_AXI_WDATA[19]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][19]\,
      \M_AXI_WDATA[19]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][19]\,
      \M_AXI_WDATA[19]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][19]\,
      \M_AXI_WDATA[19]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][19]\,
      \M_AXI_WDATA[1]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][1]\,
      \M_AXI_WDATA[1]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][1]\,
      \M_AXI_WDATA[1]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][1]\,
      \M_AXI_WDATA[1]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][1]\,
      \M_AXI_WDATA[1]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][1]\,
      \M_AXI_WDATA[1]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][1]\,
      \M_AXI_WDATA[1]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][1]\,
      \M_AXI_WDATA[20]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][20]\,
      \M_AXI_WDATA[20]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][20]\,
      \M_AXI_WDATA[20]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][20]\,
      \M_AXI_WDATA[20]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][20]\,
      \M_AXI_WDATA[20]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][20]\,
      \M_AXI_WDATA[20]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][20]\,
      \M_AXI_WDATA[20]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][20]\,
      \M_AXI_WDATA[21]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][21]\,
      \M_AXI_WDATA[21]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][21]\,
      \M_AXI_WDATA[21]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][21]\,
      \M_AXI_WDATA[21]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][21]\,
      \M_AXI_WDATA[21]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][21]\,
      \M_AXI_WDATA[21]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][21]\,
      \M_AXI_WDATA[21]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][21]\,
      \M_AXI_WDATA[22]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][22]\,
      \M_AXI_WDATA[22]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][22]\,
      \M_AXI_WDATA[22]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][22]\,
      \M_AXI_WDATA[22]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][22]\,
      \M_AXI_WDATA[22]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][22]\,
      \M_AXI_WDATA[22]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][22]\,
      \M_AXI_WDATA[22]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][22]\,
      \M_AXI_WDATA[23]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][23]\,
      \M_AXI_WDATA[23]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][23]\,
      \M_AXI_WDATA[23]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][23]\,
      \M_AXI_WDATA[23]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][23]\,
      \M_AXI_WDATA[23]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][23]\,
      \M_AXI_WDATA[23]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][23]\,
      \M_AXI_WDATA[23]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][23]\,
      \M_AXI_WDATA[24]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][24]\,
      \M_AXI_WDATA[24]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][24]\,
      \M_AXI_WDATA[24]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][24]\,
      \M_AXI_WDATA[24]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][24]\,
      \M_AXI_WDATA[24]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][24]\,
      \M_AXI_WDATA[24]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][24]\,
      \M_AXI_WDATA[24]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][24]\,
      \M_AXI_WDATA[25]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][25]\,
      \M_AXI_WDATA[25]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][25]\,
      \M_AXI_WDATA[25]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][25]\,
      \M_AXI_WDATA[25]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][25]\,
      \M_AXI_WDATA[25]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][25]\,
      \M_AXI_WDATA[25]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][25]\,
      \M_AXI_WDATA[25]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][25]\,
      \M_AXI_WDATA[26]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][26]\,
      \M_AXI_WDATA[26]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][26]\,
      \M_AXI_WDATA[26]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][26]\,
      \M_AXI_WDATA[26]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][26]\,
      \M_AXI_WDATA[26]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][26]\,
      \M_AXI_WDATA[26]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][26]\,
      \M_AXI_WDATA[26]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][26]\,
      \M_AXI_WDATA[27]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][27]\,
      \M_AXI_WDATA[27]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][27]\,
      \M_AXI_WDATA[27]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][27]\,
      \M_AXI_WDATA[27]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][27]\,
      \M_AXI_WDATA[27]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][27]\,
      \M_AXI_WDATA[27]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][27]\,
      \M_AXI_WDATA[27]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][27]\,
      \M_AXI_WDATA[28]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][28]\,
      \M_AXI_WDATA[28]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][28]\,
      \M_AXI_WDATA[28]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][28]\,
      \M_AXI_WDATA[28]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][28]\,
      \M_AXI_WDATA[28]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][28]\,
      \M_AXI_WDATA[28]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][28]\,
      \M_AXI_WDATA[28]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][28]\,
      \M_AXI_WDATA[29]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][29]\,
      \M_AXI_WDATA[29]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][29]\,
      \M_AXI_WDATA[29]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][29]\,
      \M_AXI_WDATA[29]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][29]\,
      \M_AXI_WDATA[29]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][29]\,
      \M_AXI_WDATA[29]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][29]\,
      \M_AXI_WDATA[29]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][29]\,
      \M_AXI_WDATA[2]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][2]\,
      \M_AXI_WDATA[2]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][2]\,
      \M_AXI_WDATA[2]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][2]\,
      \M_AXI_WDATA[2]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][2]\,
      \M_AXI_WDATA[2]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][2]\,
      \M_AXI_WDATA[2]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][2]\,
      \M_AXI_WDATA[2]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][2]\,
      \M_AXI_WDATA[30]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][30]\,
      \M_AXI_WDATA[30]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][30]\,
      \M_AXI_WDATA[30]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][30]\,
      \M_AXI_WDATA[30]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][30]\,
      \M_AXI_WDATA[30]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][30]\,
      \M_AXI_WDATA[30]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][30]\,
      \M_AXI_WDATA[30]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][30]\,
      \M_AXI_WDATA[31]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][31]\,
      \M_AXI_WDATA[31]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][31]\,
      \M_AXI_WDATA[31]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][31]\,
      \M_AXI_WDATA[31]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][31]\,
      \M_AXI_WDATA[31]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][31]\,
      \M_AXI_WDATA[31]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][31]\,
      \M_AXI_WDATA[31]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][31]\,
      \M_AXI_WDATA[3]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][3]\,
      \M_AXI_WDATA[3]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][3]\,
      \M_AXI_WDATA[3]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][3]\,
      \M_AXI_WDATA[3]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][3]\,
      \M_AXI_WDATA[3]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][3]\,
      \M_AXI_WDATA[3]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][3]\,
      \M_AXI_WDATA[3]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][3]\,
      \M_AXI_WDATA[4]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][4]\,
      \M_AXI_WDATA[4]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][4]\,
      \M_AXI_WDATA[4]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][4]\,
      \M_AXI_WDATA[4]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][4]\,
      \M_AXI_WDATA[4]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][4]\,
      \M_AXI_WDATA[4]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][4]\,
      \M_AXI_WDATA[4]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][4]\,
      \M_AXI_WDATA[5]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][5]\,
      \M_AXI_WDATA[5]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][5]\,
      \M_AXI_WDATA[5]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][5]\,
      \M_AXI_WDATA[5]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][5]\,
      \M_AXI_WDATA[5]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][5]\,
      \M_AXI_WDATA[5]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][5]\,
      \M_AXI_WDATA[5]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][5]\,
      \M_AXI_WDATA[6]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][6]\,
      \M_AXI_WDATA[6]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][6]\,
      \M_AXI_WDATA[6]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][6]\,
      \M_AXI_WDATA[6]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][6]\,
      \M_AXI_WDATA[6]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][6]\,
      \M_AXI_WDATA[6]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][6]\,
      \M_AXI_WDATA[6]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][6]\,
      \M_AXI_WDATA[7]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][7]\,
      \M_AXI_WDATA[7]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][7]\,
      \M_AXI_WDATA[7]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][7]\,
      \M_AXI_WDATA[7]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][7]\,
      \M_AXI_WDATA[7]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][7]\,
      \M_AXI_WDATA[7]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][7]\,
      \M_AXI_WDATA[7]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][7]\,
      \M_AXI_WDATA[8]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][8]\,
      \M_AXI_WDATA[8]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][8]\,
      \M_AXI_WDATA[8]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][8]\,
      \M_AXI_WDATA[8]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][8]\,
      \M_AXI_WDATA[8]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][8]\,
      \M_AXI_WDATA[8]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][8]\,
      \M_AXI_WDATA[8]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][8]\,
      \M_AXI_WDATA[9]_0\ => \ping_pong_buf_reg_reg[1,_n_0_3][9]\,
      \M_AXI_WDATA[9]_1\ => \ping_pong_buf_reg_reg[0,_n_0_0][9]\,
      \M_AXI_WDATA[9]_2\ => \ping_pong_buf_reg_reg[1,_n_0_0][9]\,
      \M_AXI_WDATA[9]_3\ => \ping_pong_buf_reg_reg[0,_n_0_1][9]\,
      \M_AXI_WDATA[9]_4\ => \ping_pong_buf_reg_reg[1,_n_0_1][9]\,
      \M_AXI_WDATA[9]_5\ => \ping_pong_buf_reg_reg[0,_n_0_2][9]\,
      \M_AXI_WDATA[9]_6\ => \ping_pong_buf_reg_reg[1,_n_0_2][9]\,
      M_AXI_WDATA_0_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][0]\,
      M_AXI_WDATA_10_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][10]\,
      M_AXI_WDATA_11_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][11]\,
      M_AXI_WDATA_12_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][12]\,
      M_AXI_WDATA_13_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][13]\,
      M_AXI_WDATA_14_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][14]\,
      M_AXI_WDATA_15_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][15]\,
      M_AXI_WDATA_16_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][16]\,
      M_AXI_WDATA_17_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][17]\,
      M_AXI_WDATA_18_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][18]\,
      M_AXI_WDATA_19_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][19]\,
      M_AXI_WDATA_1_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][1]\,
      M_AXI_WDATA_20_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][20]\,
      M_AXI_WDATA_21_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][21]\,
      M_AXI_WDATA_22_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][22]\,
      M_AXI_WDATA_23_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][23]\,
      M_AXI_WDATA_24_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][24]\,
      M_AXI_WDATA_25_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][25]\,
      M_AXI_WDATA_26_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][26]\,
      M_AXI_WDATA_27_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][27]\,
      M_AXI_WDATA_28_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][28]\,
      M_AXI_WDATA_29_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][29]\,
      M_AXI_WDATA_2_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][2]\,
      M_AXI_WDATA_30_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][30]\,
      M_AXI_WDATA_31_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][31]\,
      M_AXI_WDATA_3_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][3]\,
      M_AXI_WDATA_4_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][4]\,
      M_AXI_WDATA_5_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][5]\,
      M_AXI_WDATA_6_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][6]\,
      M_AXI_WDATA_7_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][7]\,
      M_AXI_WDATA_8_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][8]\,
      M_AXI_WDATA_9_sp_1 => \ping_pong_buf_reg_reg[0,_n_0_3][9]\,
      M_AXI_WLAST => M_AXI_WLAST,
      M_AXI_WREADY => M_AXI_WREADY,
      M_AXI_WREADY_0 => axi_writer_inst_n_44,
      M_AXI_WREADY_1 => axi_writer_inst_n_45,
      M_AXI_WSTRB(3 downto 0) => M_AXI_WSTRB(3 downto 0),
      O(0) => status_manager_inst_n_44,
      Q(4 downto 2) => \^q\(2 downto 0),
      Q(1) => chunk_ready,
      Q(0) => wr_addr_ready,
      axi_aclk => axi_aclk,
      axi_aresetn => axi_aresetn,
      \buf_addr_reg_reg[0]_0\ => status_manager_inst_n_12,
      buf_id_next => buf_id_next,
      chunk_buf_id_reg => chunk_buf_id_reg,
      chunk_buf_id_reg_reg_0 => \^axi_aresetn_0\,
      chunk_buf_id_reg_reg_1 => payload_collector_inst_n_3,
      \chunk_byte_count_reg_reg[3]_0\ => axi_writer_inst_n_47,
      \chunk_byte_count_reg_reg[4]_0\ => axi_writer_inst_n_49,
      \chunk_byte_count_reg_reg[4]_1\(4) => payload_collector_inst_n_6,
      \chunk_byte_count_reg_reg[4]_1\(3) => payload_collector_inst_n_7,
      \chunk_byte_count_reg_reg[4]_1\(2) => payload_collector_inst_n_8,
      \chunk_byte_count_reg_reg[4]_1\(1) => payload_collector_inst_n_9,
      \chunk_byte_count_reg_reg[4]_1\(0) => payload_collector_inst_n_10,
      dma_state_reg(1 downto 0) => dma_state_reg(1 downto 0),
      dout(1 downto 0) => dout(9 downto 8),
      \gen_wr_a.gen_word_narrow.mem_reg\ => axi_writer_inst_n_46,
      last_next => last_next,
      last_reg => last_reg,
      last_reg_reg_0 => axi_writer_inst_n_38,
      last_reg_reg_1 => payload_collector_inst_n_1,
      wr_addr_offset_reg(0) => wr_addr_offset_reg(0),
      \wr_addr_offset_reg_reg[0]_0\ => payload_collector_inst_n_0,
      \wr_addr_offset_reg_reg[31]_0\ => payload_collector_inst_n_46,
      wr_base_addr_reg(0) => wr_base_addr_reg(0),
      \wr_base_addr_reg_reg[10]_0\(3) => status_manager_inst_n_13,
      \wr_base_addr_reg_reg[10]_0\(2) => status_manager_inst_n_14,
      \wr_base_addr_reg_reg[10]_0\(1) => status_manager_inst_n_15,
      \wr_base_addr_reg_reg[10]_0\(0) => status_manager_inst_n_16,
      \wr_base_addr_reg_reg[14]_0\(3) => status_manager_inst_n_24,
      \wr_base_addr_reg_reg[14]_0\(2) => status_manager_inst_n_25,
      \wr_base_addr_reg_reg[14]_0\(1) => status_manager_inst_n_26,
      \wr_base_addr_reg_reg[14]_0\(0) => status_manager_inst_n_27,
      \wr_base_addr_reg_reg[18]_0\(3) => status_manager_inst_n_28,
      \wr_base_addr_reg_reg[18]_0\(2) => status_manager_inst_n_29,
      \wr_base_addr_reg_reg[18]_0\(1) => status_manager_inst_n_30,
      \wr_base_addr_reg_reg[18]_0\(0) => status_manager_inst_n_31,
      \wr_base_addr_reg_reg[22]_0\(3) => status_manager_inst_n_32,
      \wr_base_addr_reg_reg[22]_0\(2) => status_manager_inst_n_33,
      \wr_base_addr_reg_reg[22]_0\(1) => status_manager_inst_n_34,
      \wr_base_addr_reg_reg[22]_0\(0) => status_manager_inst_n_35,
      \wr_base_addr_reg_reg[26]_0\(3) => status_manager_inst_n_36,
      \wr_base_addr_reg_reg[26]_0\(2) => status_manager_inst_n_37,
      \wr_base_addr_reg_reg[26]_0\(1) => status_manager_inst_n_38,
      \wr_base_addr_reg_reg[26]_0\(0) => status_manager_inst_n_39,
      \wr_base_addr_reg_reg[30]_0\(3) => status_manager_inst_n_40,
      \wr_base_addr_reg_reg[30]_0\(2) => status_manager_inst_n_41,
      \wr_base_addr_reg_reg[30]_0\(1) => status_manager_inst_n_42,
      \wr_base_addr_reg_reg[30]_0\(0) => status_manager_inst_n_43,
      \wr_base_addr_reg_reg[6]_0\(6 downto 0) => rx_payload_region_base_addr_reg(6 downto 0)
    );
payload_collector_inst: entity work.design_1_eth_rx_0_2_dma_payload_collector
     port map (
      D(1) => payload_collector_inst_n_44,
      D(0) => payload_collector_inst_n_45,
      \FSM_onehot_axi_writer_state_reg_reg[2]\(4) => payload_collector_inst_n_6,
      \FSM_onehot_axi_writer_state_reg_reg[2]\(3) => payload_collector_inst_n_7,
      \FSM_onehot_axi_writer_state_reg_reg[2]\(2) => payload_collector_inst_n_8,
      \FSM_onehot_axi_writer_state_reg_reg[2]\(1) => payload_collector_inst_n_9,
      \FSM_onehot_axi_writer_state_reg_reg[2]\(0) => payload_collector_inst_n_10,
      \FSM_sequential_state_reg_reg[1]_0\ => payload_collector_inst_n_46,
      Q(3 downto 1) => \^q\(2 downto 0),
      Q(0) => chunk_ready,
      axi_aclk => axi_aclk,
      axi_aresetn => axi_aresetn,
      axi_aresetn_0 => payload_collector_inst_n_0,
      buf_id_next => buf_id_next,
      buf_id_reg_reg_0 => payload_collector_inst_n_3,
      buf_id_reg_reg_1 => payload_collector_inst_n_12,
      buf_id_reg_reg_10 => payload_collector_inst_n_27,
      buf_id_reg_reg_11 => payload_collector_inst_n_28,
      buf_id_reg_reg_12 => payload_collector_inst_n_32,
      buf_id_reg_reg_13 => payload_collector_inst_n_33,
      buf_id_reg_reg_14 => payload_collector_inst_n_34,
      buf_id_reg_reg_15 => payload_collector_inst_n_35,
      buf_id_reg_reg_16 => payload_collector_inst_n_36,
      buf_id_reg_reg_17 => payload_collector_inst_n_37,
      buf_id_reg_reg_18 => payload_collector_inst_n_38,
      buf_id_reg_reg_19 => payload_collector_inst_n_39,
      buf_id_reg_reg_2 => payload_collector_inst_n_16,
      buf_id_reg_reg_20 => payload_collector_inst_n_43,
      buf_id_reg_reg_3 => payload_collector_inst_n_17,
      buf_id_reg_reg_4 => payload_collector_inst_n_18,
      buf_id_reg_reg_5 => payload_collector_inst_n_19,
      buf_id_reg_reg_6 => payload_collector_inst_n_20,
      buf_id_reg_reg_7 => payload_collector_inst_n_21,
      buf_id_reg_reg_8 => payload_collector_inst_n_22,
      buf_id_reg_reg_9 => payload_collector_inst_n_23,
      chunk_buf_id_reg => chunk_buf_id_reg,
      \chunk_byte_count_reg_reg[0]_0\ => payload_collector_inst_n_24,
      \chunk_byte_count_reg_reg[0]_1\ => payload_collector_inst_n_40,
      \chunk_byte_count_reg_reg[0]_2\ => axi_writer_inst_n_50,
      \chunk_byte_count_reg_reg[1]_0\ => axi_writer_inst_n_49,
      \chunk_byte_count_reg_reg[2]_0\ => payload_collector_inst_n_13,
      \chunk_byte_count_reg_reg[2]_1\ => payload_collector_inst_n_14,
      \chunk_byte_count_reg_reg[2]_10\ => payload_collector_inst_n_49,
      \chunk_byte_count_reg_reg[2]_11\ => axi_writer_inst_n_47,
      \chunk_byte_count_reg_reg[2]_2\ => payload_collector_inst_n_15,
      \chunk_byte_count_reg_reg[2]_3\ => payload_collector_inst_n_25,
      \chunk_byte_count_reg_reg[2]_4\ => payload_collector_inst_n_26,
      \chunk_byte_count_reg_reg[2]_5\ => payload_collector_inst_n_29,
      \chunk_byte_count_reg_reg[2]_6\ => payload_collector_inst_n_30,
      \chunk_byte_count_reg_reg[2]_7\ => payload_collector_inst_n_31,
      \chunk_byte_count_reg_reg[2]_8\ => payload_collector_inst_n_41,
      \chunk_byte_count_reg_reg[2]_9\ => payload_collector_inst_n_42,
      \chunk_byte_count_reg_reg[3]_0\ => axi_writer_inst_n_88,
      \chunk_byte_count_reg_reg[4]_0\ => axi_writer_inst_n_87,
      chunk_error_reg_reg_0 => payload_collector_inst_n_5,
      chunk_last_reg_reg_0 => payload_collector_inst_n_11,
      chunk_last_reg_reg_1 => \^axi_aresetn_0\,
      chunk_last_reg_reg_2 => axi_writer_inst_n_46,
      dout(1 downto 0) => dout(9 downto 8),
      empty => empty,
      \gen_wr_a.gen_word_narrow.mem_reg\ => payload_collector_inst_n_4,
      last_next => last_next,
      last_reg => last_reg,
      last_reg_reg => payload_collector_inst_n_1,
      last_reg_reg_0 => status_manager_inst_n_12,
      rd_en => rd_en,
      rd_rst_busy => rd_rst_busy,
      wr_addr_offset_reg(0) => wr_addr_offset_reg(0),
      \wr_addr_offset_reg_reg[0]\ => axi_writer_inst_n_45,
      \wr_addr_offset_reg_reg[31]\ => axi_writer_inst_n_44
    );
\ping_pong_buf_reg_reg[0,0][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_12,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][0]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_13,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][10]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_13,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][11]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_13,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][12]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_13,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][13]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_13,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][14]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_13,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][15]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_14,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][16]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_14,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][17]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_14,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][18]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_14,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][19]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_12,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][1]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_14,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][20]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_14,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][21]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_14,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][22]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_14,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][23]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_15,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][24]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_15,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][25]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_15,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][26]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_15,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][27]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_15,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][28]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_15,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][29]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_12,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][2]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_15,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][30]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_15,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][31]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_12,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][3]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_12,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][4]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_12,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][5]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_12,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][6]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_12,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][7]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_13,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][8]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,0][9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_13,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[0,_n_0_0][9]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_16,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][0]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_17,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][10]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_17,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][11]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_17,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][12]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_17,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][13]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_17,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][14]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_17,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][15]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_18,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][16]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_18,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][17]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_18,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][18]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_18,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][19]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_16,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][1]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_18,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][20]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_18,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][21]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_18,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][22]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_18,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][23]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_19,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][24]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_19,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][25]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_19,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][26]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_19,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][27]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_19,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][28]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_19,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][29]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_16,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][2]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_19,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][30]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_19,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][31]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_16,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][3]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_16,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][4]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_16,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][5]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_16,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][6]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_16,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][7]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_17,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][8]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,1][9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_17,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[0,_n_0_1][9]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_20,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][0]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_21,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][10]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_21,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][11]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_21,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][12]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_21,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][13]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_21,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][14]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_21,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][15]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_22,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][16]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_22,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][17]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_22,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][18]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_22,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][19]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_20,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][1]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_22,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][20]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_22,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][21]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_22,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][22]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_22,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][23]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_23,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][24]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_23,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][25]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_23,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][26]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_23,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][27]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_23,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][28]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_23,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][29]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_20,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][2]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_23,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][30]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_23,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][31]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_20,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][3]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_20,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][4]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_20,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][5]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_20,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][6]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_20,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][7]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_21,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][8]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,2][9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_21,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[0,_n_0_2][9]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_24,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][0]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_25,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][10]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_25,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][11]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_25,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][12]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_25,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][13]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_25,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][14]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_25,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][15]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_26,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][16]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_26,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][17]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_26,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][18]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_26,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][19]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_24,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][1]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_26,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][20]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_26,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][21]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_26,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][22]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_26,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][23]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_27,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][24]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_27,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][25]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_27,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][26]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_27,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][27]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_27,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][28]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_27,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][29]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_24,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][2]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_27,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][30]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_27,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][31]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_24,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][3]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_24,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][4]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_24,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][5]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_24,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][6]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_24,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][7]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_25,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][8]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[0,3][9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_25,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[0,_n_0_3][9]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_28,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][0]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_29,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][10]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_29,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][11]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_29,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][12]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_29,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][13]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_29,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][14]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_29,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][15]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_30,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][16]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_30,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][17]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_30,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][18]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_30,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][19]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_28,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][1]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_30,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][20]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_30,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][21]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_30,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][22]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_30,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][23]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_31,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][24]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_31,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][25]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_31,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][26]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_31,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][27]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_31,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][28]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_31,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][29]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_28,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][2]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_31,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][30]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_31,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][31]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_28,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][3]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_28,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][4]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_28,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][5]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_28,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][6]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_28,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][7]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_29,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][8]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,0][9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_29,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[1,_n_0_0][9]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_32,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][0]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_33,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][10]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_33,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][11]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_33,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][12]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_33,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][13]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_33,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][14]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_33,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][15]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_34,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][16]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_34,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][17]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_34,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][18]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_34,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][19]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_32,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][1]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_34,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][20]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_34,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][21]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_34,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][22]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_34,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][23]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_35,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][24]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_35,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][25]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_35,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][26]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_35,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][27]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_35,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][28]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_35,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][29]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_32,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][2]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_35,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][30]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_35,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][31]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_32,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][3]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_32,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][4]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_32,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][5]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_32,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][6]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_32,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][7]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_33,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][8]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,1][9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_33,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[1,_n_0_1][9]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_36,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][0]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_37,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][10]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_37,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][11]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_37,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][12]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_37,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][13]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_37,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][14]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_37,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][15]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_38,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][16]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_38,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][17]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_38,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][18]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_38,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][19]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_36,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][1]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_38,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][20]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_38,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][21]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_38,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][22]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_38,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][23]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_39,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][24]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_39,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][25]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_39,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][26]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_39,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][27]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_39,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][28]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_39,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][29]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_36,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][2]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_39,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][30]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_39,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][31]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_36,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][3]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_36,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][4]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_36,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][5]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_36,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][6]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_36,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][7]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_37,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][8]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,2][9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_37,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[1,_n_0_2][9]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][0]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_40,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][0]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][10]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_41,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][10]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][11]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_41,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][11]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][12]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_41,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][12]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][13]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_41,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][13]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][14]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_41,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][14]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][15]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_41,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][15]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][16]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_42,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][16]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][17]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_42,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][17]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][18]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_42,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][18]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][19]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_42,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][19]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][1]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_40,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][1]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][20]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_42,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][20]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][21]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_42,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][21]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][22]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_42,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][22]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][23]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_42,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][23]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][24]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_43,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][24]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][25]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_43,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][25]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][26]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_43,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][26]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][27]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_43,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][27]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][28]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_43,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][28]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][29]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_43,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][29]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][2]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_40,
      D => dout(2),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][2]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][30]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_43,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][30]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][31]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_43,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][31]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][3]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_40,
      D => dout(3),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][3]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][4]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_40,
      D => dout(4),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][4]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][5]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_40,
      D => dout(5),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][5]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][6]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_40,
      D => dout(6),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][6]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][7]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_40,
      D => dout(7),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][7]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][8]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_41,
      D => dout(0),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][8]\,
      R => '0'
    );
\ping_pong_buf_reg_reg[1,3][9]\: unisim.vcomponents.FDRE
     port map (
      C => axi_aclk,
      CE => payload_collector_inst_n_41,
      D => dout(1),
      Q => \ping_pong_buf_reg_reg[1,_n_0_3][9]\,
      R => '0'
    );
status_manager_inst: entity work.design_1_eth_rx_0_2_dma_status_manager
     port map (
      E(0) => chunk_byte_count_next(0),
      \FSM_sequential_dma_state_reg_reg[0]_0\ => axi_writer_inst_n_38,
      \FSM_sequential_dma_state_reg_reg[1]_0\ => status_manager_inst_n_12,
      M_AXI_WREADY => M_AXI_WREADY,
      O(0) => status_manager_inst_n_44,
      Q(1) => \^q\(1),
      Q(0) => wr_addr_ready,
      S_AXI_ARADDR(3 downto 0) => S_AXI_ARADDR(3 downto 0),
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(3 downto 0) => S_AXI_AWADDR(3 downto 0),
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BRESP(0) => S_AXI_BRESP(0),
      S_AXI_RDATA(1 downto 0) => S_AXI_RDATA(1 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RRESP(0) => S_AXI_RRESP(0),
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      arready_reg_reg_0 => arready_reg_reg,
      awready_reg_reg_0 => awready_reg_reg,
      axi_aclk => axi_aclk,
      axi_aresetn => axi_aresetn,
      axi_aresetn_0 => \^axi_aresetn_0\,
      buf_id_next => buf_id_next,
      bvalid_reg_reg_0 => bvalid_reg_reg,
      dma_state_reg(1 downto 0) => dma_state_reg(1 downto 0),
      read_state_reg_reg_0 => read_state_reg_reg,
      \rx_payload_region_base_addr_reg_reg[14]_0\(3) => status_manager_inst_n_24,
      \rx_payload_region_base_addr_reg_reg[14]_0\(2) => status_manager_inst_n_25,
      \rx_payload_region_base_addr_reg_reg[14]_0\(1) => status_manager_inst_n_26,
      \rx_payload_region_base_addr_reg_reg[14]_0\(0) => status_manager_inst_n_27,
      \rx_payload_region_base_addr_reg_reg[18]_0\(3) => status_manager_inst_n_28,
      \rx_payload_region_base_addr_reg_reg[18]_0\(2) => status_manager_inst_n_29,
      \rx_payload_region_base_addr_reg_reg[18]_0\(1) => status_manager_inst_n_30,
      \rx_payload_region_base_addr_reg_reg[18]_0\(0) => status_manager_inst_n_31,
      \rx_payload_region_base_addr_reg_reg[22]_0\(3) => status_manager_inst_n_32,
      \rx_payload_region_base_addr_reg_reg[22]_0\(2) => status_manager_inst_n_33,
      \rx_payload_region_base_addr_reg_reg[22]_0\(1) => status_manager_inst_n_34,
      \rx_payload_region_base_addr_reg_reg[22]_0\(0) => status_manager_inst_n_35,
      \rx_payload_region_base_addr_reg_reg[26]_0\(3) => status_manager_inst_n_36,
      \rx_payload_region_base_addr_reg_reg[26]_0\(2) => status_manager_inst_n_37,
      \rx_payload_region_base_addr_reg_reg[26]_0\(1) => status_manager_inst_n_38,
      \rx_payload_region_base_addr_reg_reg[26]_0\(0) => status_manager_inst_n_39,
      \rx_payload_region_base_addr_reg_reg[30]_0\(3) => status_manager_inst_n_40,
      \rx_payload_region_base_addr_reg_reg[30]_0\(2) => status_manager_inst_n_41,
      \rx_payload_region_base_addr_reg_reg[30]_0\(1) => status_manager_inst_n_42,
      \rx_payload_region_base_addr_reg_reg[30]_0\(0) => status_manager_inst_n_43,
      \rx_payload_region_base_addr_reg_reg[6]_0\(6 downto 0) => rx_payload_region_base_addr_reg(6 downto 0),
      \rx_payload_region_base_addr_reg_reg[9]_0\(3) => status_manager_inst_n_13,
      \rx_payload_region_base_addr_reg_reg[9]_0\(2) => status_manager_inst_n_14,
      \rx_payload_region_base_addr_reg_reg[9]_0\(1) => status_manager_inst_n_15,
      \rx_payload_region_base_addr_reg_reg[9]_0\(0) => status_manager_inst_n_16,
      wr_base_addr_reg(0) => wr_base_addr_reg(0),
      wready_reg_reg_0 => wready_reg_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_eth_rx_0_2_xpm_fifo_rst is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    wrst_busy : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_eth_rx_0_2_xpm_fifo_rst : entity is "xpm_fifo_rst";
end design_1_eth_rx_0_2_xpm_fifo_rst;

architecture STRUCTURE of design_1_eth_rx_0_2_xpm_fifo_rst is
  signal \/i__n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\ : signal is "yes";
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_rst_ic.curr_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of \gen_rst_ic.curr_rrst_state\ : signal is "yes";
  signal \gen_rst_ic.fifo_rd_rst_i\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_rd_rst_wr_i\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.fifo_wr_rst_rd\ : STD_LOGIC;
  signal \gen_rst_ic.next_rrst_state\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rst_ic.rst_seq_reentered_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_i_2_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.rst_seq_reentered_reg_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\ : STD_LOGIC;
  signal \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal \rst_i__0\ : STD_LOGIC;
  signal \^wrst_busy\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\ : label is "WRST_OUT:00100,WRST_IN:00010,WRST_GO2IDLE:10000,WRST_EXIT:01000,WRST_IDLE:00001";
  attribute KEEP of \FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute KEEP of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\ : label is "RRST_IDLE:00,RRST_IN:01,RRST_OUT:10,RRST_EXIT:11";
  attribute KEEP of \FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_rst_ic.fifo_wr_rst_ic_i_2\ : label is "soft_lutpair35";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \gen_rst_ic.rrst_wr_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 2;
  attribute INIT : string;
  attribute INIT of \gen_rst_ic.rrst_wr_inst\ : label is "0";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_rst_ic.rrst_wr_inst\ : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \gen_rst_ic.rrst_wr_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_rst_ic.rrst_wr_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \gen_rst_ic.rrst_wr_inst\ : label is "TRUE";
  attribute SOFT_HLUTNM of \gen_rst_ic.rst_seq_reentered_i_1\ : label is "soft_lutpair35";
  attribute DEF_VAL of \gen_rst_ic.wrst_rd_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 2;
  attribute INIT of \gen_rst_ic.wrst_rd_inst\ : label is "0";
  attribute INIT_SYNC_FF of \gen_rst_ic.wrst_rd_inst\ : label is 1;
  attribute SIM_ASSERT_CHK of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute VERSION of \gen_rst_ic.wrst_rd_inst\ : label is 0;
  attribute XPM_CDC of \gen_rst_ic.wrst_rd_inst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \gen_rst_ic.wrst_rd_inst\ : label is "TRUE";
begin
  SR(0) <= \^sr\(0);
  wrst_busy <= \^wrst_busy\;
\/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \/i__n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03030200FFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => p_0_in,
      I2 => rst,
      I3 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I5 => \/i__n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFEEE"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I3 => rst,
      I4 => p_0_in,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0EEE0FFFFEEE0"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => rst,
      I3 => p_0_in,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I5 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_2_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000C0008"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I1 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I2 => rst,
      I3 => p_0_in,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004400000044"
    )
        port map (
      I0 => \gen_rst_ic.fifo_rd_rst_wr_i\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      I3 => rst,
      I4 => p_0_in,
      I5 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \/i__n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => p_0_in,
      I2 => rst,
      I3 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      O => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[0]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[1]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[2]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[3]_i_1_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_onehot_gen_rst_ic.curr_wrst_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_2_n_0\,
      Q => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      R => \FSM_onehot_gen_rst_ic.curr_wrst_state[4]_i_1_n_0\
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_rst_ic.curr_rrst_state\(0),
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      O => \gen_rst_ic.next_rrst_state\(1)
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(0),
      Q => \gen_rst_ic.curr_rrst_state\(0),
      R => '0'
    );
\FSM_sequential_gen_rst_ic.curr_rrst_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.next_rrst_state\(1),
      Q => \gen_rst_ic.curr_rrst_state\(1),
      R => '0'
    );
\__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.next_rrst_state\(0)
    );
\gen_rst_ic.fifo_rd_rst_ic_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => \gen_rst_ic.fifo_wr_rst_rd\,
      I1 => \gen_rst_ic.curr_rrst_state\(1),
      I2 => \gen_rst_ic.curr_rrst_state\(0),
      O => \gen_rst_ic.fifo_rd_rst_i\
    );
\gen_rst_ic.fifo_rd_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_rd_rst_i\,
      Q => \^sr\(0),
      R => '0'
    );
\gen_rst_ic.fifo_wr_rst_ic_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFFFFFFEA0000"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I2 => \rst_i__0\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I4 => \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\,
      I5 => \gen_rst_ic.fifo_wr_rst_ic\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => \rst_i__0\
    );
\gen_rst_ic.fifo_wr_rst_ic_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \gen_rst_ic.fifo_wr_rst_ic_i_3_n_0\
    );
\gen_rst_ic.fifo_wr_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.fifo_wr_rst_ic_i_1_n_0\,
      Q => \gen_rst_ic.fifo_wr_rst_ic\,
      R => '0'
    );
\gen_rst_ic.rrst_wr_inst\: entity work.design_1_eth_rx_0_2_xpm_cdc_sync_rst
     port map (
      dest_clk => wr_clk,
      dest_rst => \gen_rst_ic.fifo_rd_rst_wr_i\,
      src_rst => \^sr\(0)
    );
\gen_rst_ic.rst_seq_reentered_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \gen_rst_ic.rst_seq_reentered_i_2_n_0\,
      I1 => rst,
      I2 => p_0_in,
      O => \gen_rst_ic.rst_seq_reentered_i_1_n_0\
    );
\gen_rst_ic.rst_seq_reentered_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      I5 => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      O => \gen_rst_ic.rst_seq_reentered_i_2_n_0\
    );
\gen_rst_ic.rst_seq_reentered_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.rst_seq_reentered_i_1_n_0\,
      Q => \gen_rst_ic.rst_seq_reentered_reg_n_0\,
      R => '0'
    );
\gen_rst_ic.wr_rst_busy_ic_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFEF00"
    )
        port map (
      I0 => rst,
      I1 => p_0_in,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I3 => \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\,
      I4 => \^wrst_busy\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000116"
    )
        port map (
      I0 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_gen_rst_ic.curr_wrst_state_reg_n_0_[4]\,
      O => \gen_rst_ic.wr_rst_busy_ic_i_2_n_0\
    );
\gen_rst_ic.wr_rst_busy_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gen_rst_ic.wr_rst_busy_ic_i_1_n_0\,
      Q => \^wrst_busy\,
      R => '0'
    );
\gen_rst_ic.wrst_rd_inst\: entity work.\design_1_eth_rx_0_2_xpm_cdc_sync_rst__1\
     port map (
      dest_clk => rd_clk,
      dest_rst => \gen_rst_ic.fifo_wr_rst_rd\,
      src_rst => \gen_rst_ic.fifo_wr_rst_ic\
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
wr_rst_busy_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^wrst_busy\,
      I1 => rst_d1,
      O => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_eth_rx_0_2_xpm_fifo_base is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 9 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 0 to 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 9 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of design_1_eth_rx_0_2_xpm_fifo_base : entity is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of design_1_eth_rx_0_2_xpm_fifo_base : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of design_1_eth_rx_0_2_xpm_fifo_base : entity is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of design_1_eth_rx_0_2_xpm_fifo_base : entity is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of design_1_eth_rx_0_2_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of design_1_eth_rx_0_2_xpm_fifo_base : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of design_1_eth_rx_0_2_xpm_fifo_base : entity is "16'b0000000000000000";
  attribute EN_AE : string;
  attribute EN_AE of design_1_eth_rx_0_2_xpm_fifo_base : entity is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of design_1_eth_rx_0_2_xpm_fifo_base : entity is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of design_1_eth_rx_0_2_xpm_fifo_base : entity is "1'b0";
  attribute EN_OF : string;
  attribute EN_OF of design_1_eth_rx_0_2_xpm_fifo_base : entity is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of design_1_eth_rx_0_2_xpm_fifo_base : entity is "1'b0";
  attribute EN_PF : string;
  attribute EN_PF of design_1_eth_rx_0_2_xpm_fifo_base : entity is "1'b0";
  attribute EN_RDC : string;
  attribute EN_RDC of design_1_eth_rx_0_2_xpm_fifo_base : entity is "1'b0";
  attribute EN_SIM_ASSERT_ERR : string;
  attribute EN_SIM_ASSERT_ERR of design_1_eth_rx_0_2_xpm_fifo_base : entity is "warning";
  attribute EN_UF : string;
  attribute EN_UF of design_1_eth_rx_0_2_xpm_fifo_base : entity is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of design_1_eth_rx_0_2_xpm_fifo_base : entity is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of design_1_eth_rx_0_2_xpm_fifo_base : entity is "1'b0";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of design_1_eth_rx_0_2_xpm_fifo_base : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of design_1_eth_rx_0_2_xpm_fifo_base : entity is 2;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of design_1_eth_rx_0_2_xpm_fifo_base : entity is 2;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of design_1_eth_rx_0_2_xpm_fifo_base : entity is 512;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of design_1_eth_rx_0_2_xpm_fifo_base : entity is 1;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of design_1_eth_rx_0_2_xpm_fifo_base : entity is 5120;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of design_1_eth_rx_0_2_xpm_fifo_base : entity is 512;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of design_1_eth_rx_0_2_xpm_fifo_base : entity is 0;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of design_1_eth_rx_0_2_xpm_fifo_base : entity is "1'b0";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_eth_rx_0_2_xpm_fifo_base : entity is "xpm_fifo_base";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of design_1_eth_rx_0_2_xpm_fifo_base : entity is 10;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of design_1_eth_rx_0_2_xpm_fifo_base : entity is 509;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of design_1_eth_rx_0_2_xpm_fifo_base : entity is 3;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of design_1_eth_rx_0_2_xpm_fifo_base : entity is 500;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of design_1_eth_rx_0_2_xpm_fifo_base : entity is 509;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of design_1_eth_rx_0_2_xpm_fifo_base : entity is 5;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of design_1_eth_rx_0_2_xpm_fifo_base : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of design_1_eth_rx_0_2_xpm_fifo_base : entity is 500;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of design_1_eth_rx_0_2_xpm_fifo_base : entity is 1;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of design_1_eth_rx_0_2_xpm_fifo_base : entity is 10;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of design_1_eth_rx_0_2_xpm_fifo_base : entity is 1;
  attribute RD_MODE : integer;
  attribute RD_MODE of design_1_eth_rx_0_2_xpm_fifo_base : entity is 0;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of design_1_eth_rx_0_2_xpm_fifo_base : entity is 9;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of design_1_eth_rx_0_2_xpm_fifo_base : entity is 10;
  attribute READ_MODE : integer;
  attribute READ_MODE of design_1_eth_rx_0_2_xpm_fifo_base : entity is 0;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of design_1_eth_rx_0_2_xpm_fifo_base : entity is 0;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of design_1_eth_rx_0_2_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of design_1_eth_rx_0_2_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_eth_rx_0_2_xpm_fifo_base : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of design_1_eth_rx_0_2_xpm_fifo_base : entity is "0000";
  attribute VERSION : integer;
  attribute VERSION of design_1_eth_rx_0_2_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of design_1_eth_rx_0_2_xpm_fifo_base : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of design_1_eth_rx_0_2_xpm_fifo_base : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of design_1_eth_rx_0_2_xpm_fifo_base : entity is 10;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of design_1_eth_rx_0_2_xpm_fifo_base : entity is 1;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of design_1_eth_rx_0_2_xpm_fifo_base : entity is 10;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of design_1_eth_rx_0_2_xpm_fifo_base : entity is 9;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of design_1_eth_rx_0_2_xpm_fifo_base : entity is 9;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of design_1_eth_rx_0_2_xpm_fifo_base : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of design_1_eth_rx_0_2_xpm_fifo_base : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_eth_rx_0_2_xpm_fifo_base : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of design_1_eth_rx_0_2_xpm_fifo_base : entity is 3;
  attribute invalid : integer;
  attribute invalid of design_1_eth_rx_0_2_xpm_fifo_base : entity is 0;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_eth_rx_0_2_xpm_fifo_base : entity is "soft";
  attribute stage1_valid : integer;
  attribute stage1_valid of design_1_eth_rx_0_2_xpm_fifo_base : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of design_1_eth_rx_0_2_xpm_fifo_base : entity is 1;
end design_1_eth_rx_0_2_xpm_fifo_base;

architecture STRUCTURE of design_1_eth_rx_0_2_xpm_fifo_base is
  signal \<const0>\ : STD_LOGIC;
  signal \^empty\ : STD_LOGIC;
  signal empty_i0 : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_0\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_1\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_2\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_3\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_4\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_5\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_6\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_7\ : STD_LOGIC;
  signal \gen_cdc_pntr.rpw_gray_reg_n_8\ : STD_LOGIC;
  signal leaving_full : STD_LOGIC;
  signal ram_full_i0 : STD_LOGIC;
  signal ram_rd_en_i : STD_LOGIC;
  signal ram_wr_en_i : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rd_pntr_wr_cdc : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^rd_rst_busy\ : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rdpp1_inst_n_4 : STD_LOGIC;
  signal rdpp1_inst_n_5 : STD_LOGIC;
  signal rdpp1_inst_n_6 : STD_LOGIC;
  signal rdpp1_inst_n_7 : STD_LOGIC;
  signal rdpp1_inst_n_8 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal wr_pntr_rd_cdc : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal wrst_busy : STD_LOGIC;
  signal \NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_dest_out_bin_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_gen_cdc_pntr.wr_pntr_cdc_dc_inst_dest_out_bin_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is 10;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is 9;
  attribute XPM_CDC of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.rd_pntr_cdc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is 10;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_dc_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 2;
  attribute INIT_SYNC_FF of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 1;
  attribute REG_OUTPUT of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute VERSION of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 0;
  attribute WIDTH of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is 9;
  attribute XPM_CDC of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "GRAY";
  attribute XPM_MODULE of \gen_cdc_pntr.wr_pntr_cdc_inst\ : label is "TRUE";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of \gen_sdpram.xpm_memory_base_inst\ : label is "[7:0]";
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute KEEP_HIERARCHY of \gen_sdpram.xpm_memory_base_inst\ : label is "SOFT";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE\ : boolean;
  attribute \MEM.ADDRESS_SPACE\ of \gen_sdpram.xpm_memory_base_inst\ : label is std.standard.true;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ : integer;
  attribute \MEM.ADDRESS_SPACE_BEGIN\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_LSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ : integer;
  attribute \MEM.ADDRESS_SPACE_DATA_MSB\ of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute \MEM.ADDRESS_SPACE_END\ : integer;
  attribute \MEM.ADDRESS_SPACE_END\ of \gen_sdpram.xpm_memory_base_inst\ : label is 1023;
  attribute \MEM.CORE_MEMORY_WIDTH\ : integer;
  attribute \MEM.CORE_MEMORY_WIDTH\ of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 5120;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 512;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "block";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COL_READ_A : integer;
  attribute P_NUM_COL_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COL_READ_B : integer;
  attribute P_NUM_COL_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COL_WRITE_A : integer;
  attribute P_NUM_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COL_WRITE_B : integer;
  attribute P_NUM_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_COLL_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_COLL_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 9;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute RAM_DECOMP : string;
  attribute RAM_DECOMP of \gen_sdpram.xpm_memory_base_inst\ : label is "auto";
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 10;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 12;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  data_valid <= \<const0>\;
  dbiterr <= \<const0>\;
  empty <= \^empty\;
  full <= \^full\;
  full_n <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \^rd_rst_busy\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_cdc_pntr.rd_pntr_cdc_dc_inst\: entity work.\design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0\
     port map (
      dest_clk => wr_clk,
      dest_out_bin(9 downto 0) => \NLW_gen_cdc_pntr.rd_pntr_cdc_dc_inst_dest_out_bin_UNCONNECTED\(9 downto 0),
      src_clk => rd_clk,
      src_in_bin(9 downto 0) => rd_pntr_ext(9 downto 0)
    );
\gen_cdc_pntr.rd_pntr_cdc_inst\: entity work.design_1_eth_rx_0_2_xpm_cdc_gray
     port map (
      dest_clk => wr_clk,
      dest_out_bin(8 downto 0) => rd_pntr_wr_cdc(8 downto 0),
      src_clk => rd_clk,
      src_in_bin(8 downto 0) => rd_pntr_ext(8 downto 0)
    );
\gen_cdc_pntr.rpw_gray_reg\: entity work.design_1_eth_rx_0_2_xpm_fifo_reg_vec
     port map (
      D(8 downto 0) => rd_pntr_wr_cdc(8 downto 0),
      Q(8) => \gen_cdc_pntr.rpw_gray_reg_n_0\,
      Q(7) => \gen_cdc_pntr.rpw_gray_reg_n_1\,
      Q(6) => \gen_cdc_pntr.rpw_gray_reg_n_2\,
      Q(5) => \gen_cdc_pntr.rpw_gray_reg_n_3\,
      Q(4) => \gen_cdc_pntr.rpw_gray_reg_n_4\,
      Q(3) => \gen_cdc_pntr.rpw_gray_reg_n_5\,
      Q(2) => \gen_cdc_pntr.rpw_gray_reg_n_6\,
      Q(1) => \gen_cdc_pntr.rpw_gray_reg_n_7\,
      Q(0) => \gen_cdc_pntr.rpw_gray_reg_n_8\,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
\gen_cdc_pntr.wpr_gray_reg\: entity work.design_1_eth_rx_0_2_xpm_fifo_reg_vec_0
     port map (
      D(8 downto 0) => wr_pntr_rd_cdc(8 downto 0),
      Q(8) => rdpp1_inst_n_0,
      Q(7) => rdpp1_inst_n_1,
      Q(6) => rdpp1_inst_n_2,
      Q(5) => rdpp1_inst_n_3,
      Q(4) => rdpp1_inst_n_4,
      Q(3) => rdpp1_inst_n_5,
      Q(2) => rdpp1_inst_n_6,
      Q(1) => rdpp1_inst_n_7,
      Q(0) => rdpp1_inst_n_8,
      SR(0) => \^rd_rst_busy\,
      empty_i0 => empty_i0,
      \gen_pf_ic_rc.ram_empty_i_reg\ => \^empty\,
      \gen_pf_ic_rc.ram_empty_i_reg_i_3_0\(8 downto 0) => rd_pntr_ext(8 downto 0),
      rd_clk => rd_clk,
      rd_en => rd_en
    );
\gen_cdc_pntr.wr_pntr_cdc_dc_inst\: entity work.\design_1_eth_rx_0_2_xpm_cdc_gray__parameterized0__1\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(9 downto 0) => \NLW_gen_cdc_pntr.wr_pntr_cdc_dc_inst_dest_out_bin_UNCONNECTED\(9 downto 0),
      src_clk => wr_clk,
      src_in_bin(9 downto 0) => wr_pntr_ext(9 downto 0)
    );
\gen_cdc_pntr.wr_pntr_cdc_inst\: entity work.\design_1_eth_rx_0_2_xpm_cdc_gray__1\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(8 downto 0) => wr_pntr_rd_cdc(8 downto 0),
      src_clk => wr_clk,
      src_in_bin(8 downto 0) => wr_pntr_ext(8 downto 0)
    );
\gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => ram_full_i0,
      Q => \^full\,
      R => wrst_busy
    );
\gen_pf_ic_rc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => empty_i0,
      Q => \^empty\,
      S => \^rd_rst_busy\
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.design_1_eth_rx_0_2_xpm_memory_base
     port map (
      addra(8 downto 0) => wr_pntr_ext(8 downto 0),
      addrb(8 downto 0) => rd_pntr_ext(8 downto 0),
      clka => wr_clk,
      clkb => rd_clk,
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(9 downto 0) => din(9 downto 0),
      dinb(9 downto 0) => B"0000000000",
      douta(9 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(9 downto 0),
      doutb(9 downto 0) => dout(9 downto 0),
      ena => '0',
      enb => ram_rd_en_i,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rstb => \^rd_rst_busy\,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => ram_wr_en_i,
      web(0) => '0'
    );
rdp_inst: entity work.design_1_eth_rx_0_2_xpm_counter_updn
     port map (
      E(0) => ram_rd_en_i,
      Q(9 downto 0) => rd_pntr_ext(9 downto 0),
      SR(0) => \^rd_rst_busy\,
      \count_value_i_reg[9]_0\ => \^empty\,
      rd_clk => rd_clk,
      rd_en => rd_en
    );
rdpp1_inst: entity work.\design_1_eth_rx_0_2_xpm_counter_updn__parameterized0\
     port map (
      E(0) => ram_rd_en_i,
      Q(8) => rdpp1_inst_n_0,
      Q(7) => rdpp1_inst_n_1,
      Q(6) => rdpp1_inst_n_2,
      Q(5) => rdpp1_inst_n_3,
      Q(4) => rdpp1_inst_n_4,
      Q(3) => rdpp1_inst_n_5,
      Q(2) => rdpp1_inst_n_6,
      Q(1) => rdpp1_inst_n_7,
      Q(0) => rdpp1_inst_n_8,
      SR(0) => \^rd_rst_busy\,
      \count_value_i_reg[5]_0\ => \^empty\,
      rd_clk => rd_clk,
      rd_en => rd_en
    );
rst_d1_inst: entity work.design_1_eth_rx_0_2_xpm_fifo_reg_bit
     port map (
      E(0) => ram_wr_en_i,
      \count_value_i_reg[8]\ => \^full\,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
wrp_inst: entity work.design_1_eth_rx_0_2_xpm_counter_updn_1
     port map (
      E(0) => ram_wr_en_i,
      Q(9 downto 0) => wr_pntr_ext(9 downto 0),
      \count_value_i_reg[5]_0\ => \^full\,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
wrpp1_inst: entity work.\design_1_eth_rx_0_2_xpm_counter_updn__parameterized0_2\
     port map (
      CO(0) => leaving_full,
      E(0) => ram_wr_en_i,
      Q(8) => \gen_cdc_pntr.rpw_gray_reg_n_0\,
      Q(7) => \gen_cdc_pntr.rpw_gray_reg_n_1\,
      Q(6) => \gen_cdc_pntr.rpw_gray_reg_n_2\,
      Q(5) => \gen_cdc_pntr.rpw_gray_reg_n_3\,
      Q(4) => \gen_cdc_pntr.rpw_gray_reg_n_4\,
      Q(3) => \gen_cdc_pntr.rpw_gray_reg_n_5\,
      Q(2) => \gen_cdc_pntr.rpw_gray_reg_n_6\,
      Q(1) => \gen_cdc_pntr.rpw_gray_reg_n_7\,
      Q(0) => \gen_cdc_pntr.rpw_gray_reg_n_8\,
      wr_clk => wr_clk,
      wrst_busy => wrst_busy
    );
wrpp2_inst: entity work.\design_1_eth_rx_0_2_xpm_counter_updn__parameterized1\
     port map (
      CO(0) => leaving_full,
      E(0) => ram_wr_en_i,
      Q(8) => \gen_cdc_pntr.rpw_gray_reg_n_0\,
      Q(7) => \gen_cdc_pntr.rpw_gray_reg_n_1\,
      Q(6) => \gen_cdc_pntr.rpw_gray_reg_n_2\,
      Q(5) => \gen_cdc_pntr.rpw_gray_reg_n_3\,
      Q(4) => \gen_cdc_pntr.rpw_gray_reg_n_4\,
      Q(3) => \gen_cdc_pntr.rpw_gray_reg_n_5\,
      Q(2) => \gen_cdc_pntr.rpw_gray_reg_n_6\,
      Q(1) => \gen_cdc_pntr.rpw_gray_reg_n_7\,
      Q(0) => \gen_cdc_pntr.rpw_gray_reg_n_8\,
      \gen_pf_ic_rc.ngen_full_rst_val.ram_full_i_reg\ => \^full\,
      ram_full_i0 => ram_full_i0,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wrst_busy => wrst_busy
    );
xpm_fifo_rst_inst: entity work.design_1_eth_rx_0_2_xpm_fifo_rst
     port map (
      SR(0) => \^rd_rst_busy\,
      rd_clk => rd_clk,
      rst => rst,
      rst_d1 => rst_d1,
      wr_clk => wr_clk,
      wr_rst_busy => wr_rst_busy,
      wrst_busy => wrst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_eth_rx_0_2_xpm_fifo_async is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 9 downto 0 );
    full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 0 to 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 9 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 0 to 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of design_1_eth_rx_0_2_xpm_fifo_async : entity is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of design_1_eth_rx_0_2_xpm_fifo_async : entity is 2;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of design_1_eth_rx_0_2_xpm_fifo_async : entity is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of design_1_eth_rx_0_2_xpm_fifo_async : entity is "no_ecc";
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of design_1_eth_rx_0_2_xpm_fifo_async : entity is "16'b0000000000000000";
  attribute EN_SIM_ASSERT_ERR : string;
  attribute EN_SIM_ASSERT_ERR of design_1_eth_rx_0_2_xpm_fifo_async : entity is "warning";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of design_1_eth_rx_0_2_xpm_fifo_async : entity is "block";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of design_1_eth_rx_0_2_xpm_fifo_async : entity is 1;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of design_1_eth_rx_0_2_xpm_fifo_async : entity is 512;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of design_1_eth_rx_0_2_xpm_fifo_async : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_eth_rx_0_2_xpm_fifo_async : entity is "xpm_fifo_async";
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of design_1_eth_rx_0_2_xpm_fifo_async : entity is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of design_1_eth_rx_0_2_xpm_fifo_async : entity is 500;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of design_1_eth_rx_0_2_xpm_fifo_async : entity is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of design_1_eth_rx_0_2_xpm_fifo_async : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of design_1_eth_rx_0_2_xpm_fifo_async : entity is 2;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of design_1_eth_rx_0_2_xpm_fifo_async : entity is 0;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of design_1_eth_rx_0_2_xpm_fifo_async : entity is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of design_1_eth_rx_0_2_xpm_fifo_async : entity is 1;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of design_1_eth_rx_0_2_xpm_fifo_async : entity is 10;
  attribute READ_MODE : string;
  attribute READ_MODE of design_1_eth_rx_0_2_xpm_fifo_async : entity is "std";
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of design_1_eth_rx_0_2_xpm_fifo_async : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of design_1_eth_rx_0_2_xpm_fifo_async : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of design_1_eth_rx_0_2_xpm_fifo_async : entity is "0000";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of design_1_eth_rx_0_2_xpm_fifo_async : entity is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of design_1_eth_rx_0_2_xpm_fifo_async : entity is 10;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of design_1_eth_rx_0_2_xpm_fifo_async : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of design_1_eth_rx_0_2_xpm_fifo_async : entity is "TRUE";
  attribute dont_touch : string;
  attribute dont_touch of design_1_eth_rx_0_2_xpm_fifo_async : entity is "true";
end design_1_eth_rx_0_2_xpm_fifo_async;

architecture STRUCTURE of design_1_eth_rx_0_2_xpm_fifo_async is
  signal \<const0>\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_data_valid_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_overflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_prog_empty_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_prog_full_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_underflow_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_ack_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_rd_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_data_count_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CASCADE_HEIGHT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute DOUT_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "0";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "16'b0000000000000000";
  attribute EN_AE : string;
  attribute EN_AE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_AF : string;
  attribute EN_AF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_DVLD : string;
  attribute EN_DVLD of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_OF : string;
  attribute EN_OF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_PE : string;
  attribute EN_PE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_PF : string;
  attribute EN_PF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_RDC : string;
  attribute EN_RDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_SIM_ASSERT_ERR of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "warning";
  attribute EN_UF : string;
  attribute EN_UF of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_WACK : string;
  attribute EN_WACK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute EN_WDC : string;
  attribute EN_WDC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 512;
  attribute FIFO_READ_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5120;
  attribute FIFO_WRITE_DEPTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 512;
  attribute FULL_RESET_VALUE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "1'b0";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "SOFT";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 509;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 3;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 500;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 509;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 5;
  attribute PROG_EMPTY_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute PROG_FULL_THRESH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 500;
  attribute RD_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute RD_MODE : integer;
  attribute RD_MODE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 9;
  attribute READ_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute READ_MODE_integer : integer;
  attribute READ_MODE_integer of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute RELATED_CLOCKS of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute SIM_ASSERT_CHK of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute USE_ADV_FEATURES of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "0000";
  attribute VERSION : integer;
  attribute VERSION of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute WRITE_DATA_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute WR_DATA_COUNT_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 10;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 9;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 9;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 4;
  attribute XPM_MODULE of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 3;
  attribute invalid : integer;
  attribute invalid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of \gnuram_async_fifo.xpm_fifo_base_inst\ : label is 1;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  data_valid <= \<const0>\;
  dbiterr <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gnuram_async_fifo.xpm_fifo_base_inst\: entity work.design_1_eth_rx_0_2_xpm_fifo_base
     port map (
      almost_empty => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_empty_UNCONNECTED\,
      almost_full => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_almost_full_UNCONNECTED\,
      data_valid => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_data_valid_UNCONNECTED\,
      dbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_dbiterr_UNCONNECTED\,
      din(9 downto 0) => din(9 downto 0),
      dout(9 downto 0) => dout(9 downto 0),
      empty => empty,
      full => full,
      full_n => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_full_n_UNCONNECTED\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_overflow_UNCONNECTED\,
      prog_empty => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_prog_empty_UNCONNECTED\,
      prog_full => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_prog_full_UNCONNECTED\,
      rd_clk => rd_clk,
      rd_data_count(0) => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_rd_data_count_UNCONNECTED\(0),
      rd_en => rd_en,
      rd_rst_busy => rd_rst_busy,
      rst => rst,
      sbiterr => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_sbiterr_UNCONNECTED\,
      sleep => sleep,
      underflow => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_underflow_UNCONNECTED\,
      wr_ack => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_ack_UNCONNECTED\,
      wr_clk => wr_clk,
      wr_data_count(0) => \NLW_gnuram_async_fifo.xpm_fifo_base_inst_wr_data_count_UNCONNECTED\(0),
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_eth_rx_0_2_eth_rx is
  port (
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_AWVALID : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_WLAST : out STD_LOGIC;
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wready_reg_reg : out STD_LOGIC;
    read_state_reg_reg : out STD_LOGIC;
    arready_reg_reg : out STD_LOGIC;
    bvalid_reg_reg : out STD_LOGIC;
    awready_reg_reg : out STD_LOGIC;
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_aresetn : in STD_LOGIC;
    i_ref_clk : in STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    i_crs_dv : in STD_LOGIC;
    i_rxd : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_WREADY : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_eth_rx_0_2_eth_rx : entity is "eth_rx";
end design_1_eth_rx_0_2_eth_rx;

architecture STRUCTURE of design_1_eth_rx_0_2_eth_rx is
  signal empty : STD_LOGIC;
  signal eth_rx_dma_inst_n_0 : STD_LOGIC;
  signal fifo_din : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal fifo_dout : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal fifo_full : STD_LOGIC;
  signal rd_en : STD_LOGIC;
  signal rd_rst_busy : STD_LOGIC;
  signal wr_en : STD_LOGIC;
  signal wr_rst_busy : STD_LOGIC;
  signal NLW_rx_async_fifo_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_rx_async_fifo_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_rx_async_fifo_inst_data_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_rx_async_fifo_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_rx_async_fifo_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_rx_async_fifo_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_rx_async_fifo_inst_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_rx_async_fifo_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_rx_async_fifo_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_rx_async_fifo_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_rx_async_fifo_inst_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rx_async_fifo_inst_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of rx_async_fifo_inst : label is 0;
  attribute CDC_SYNC_STAGES : integer;
  attribute CDC_SYNC_STAGES of rx_async_fifo_inst : label is 2;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of rx_async_fifo_inst : label is std.standard.true;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of rx_async_fifo_inst : label is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of rx_async_fifo_inst : label is 0;
  attribute EN_ADV_FEATURE_ASYNC : string;
  attribute EN_ADV_FEATURE_ASYNC of rx_async_fifo_inst : label is "16'b0000000000000000";
  attribute EN_SIM_ASSERT_ERR : string;
  attribute EN_SIM_ASSERT_ERR of rx_async_fifo_inst : label is "warning";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of rx_async_fifo_inst : label is 0;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of rx_async_fifo_inst : label is 1;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of rx_async_fifo_inst : label is 512;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of rx_async_fifo_inst : label is 0;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of rx_async_fifo_inst : label is 10;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of rx_async_fifo_inst : label is 500;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of rx_async_fifo_inst : label is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of rx_async_fifo_inst : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of rx_async_fifo_inst : label is 2;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of rx_async_fifo_inst : label is 0;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of rx_async_fifo_inst : label is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of rx_async_fifo_inst : label is 1;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of rx_async_fifo_inst : label is 10;
  attribute READ_MODE : integer;
  attribute READ_MODE of rx_async_fifo_inst : label is 0;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of rx_async_fifo_inst : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of rx_async_fifo_inst : label is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of rx_async_fifo_inst : label is "0000";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of rx_async_fifo_inst : label is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of rx_async_fifo_inst : label is 10;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of rx_async_fifo_inst : label is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of rx_async_fifo_inst : label is "TRUE";
begin
eth_rx_dma_inst: entity work.design_1_eth_rx_0_2_eth_rx_dma
     port map (
      M_AXI_AWADDR(31 downto 0) => M_AXI_AWADDR(31 downto 0),
      M_AXI_AWLEN(3 downto 0) => M_AXI_AWLEN(3 downto 0),
      M_AXI_AWREADY => M_AXI_AWREADY,
      M_AXI_BVALID => M_AXI_BVALID,
      M_AXI_WDATA(31 downto 0) => M_AXI_WDATA(31 downto 0),
      M_AXI_WLAST => M_AXI_WLAST,
      M_AXI_WREADY => M_AXI_WREADY,
      M_AXI_WSTRB(3 downto 0) => M_AXI_WSTRB(3 downto 0),
      Q(2) => M_AXI_BREADY,
      Q(1) => M_AXI_WVALID,
      Q(0) => M_AXI_AWVALID,
      S_AXI_ARADDR(3 downto 0) => S_AXI_ARADDR(3 downto 0),
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(3 downto 0) => S_AXI_AWADDR(3 downto 0),
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BRESP(0) => S_AXI_BRESP(0),
      S_AXI_RDATA(1 downto 0) => S_AXI_RDATA(1 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RRESP(0) => S_AXI_RRESP(0),
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      arready_reg_reg => arready_reg_reg,
      awready_reg_reg => awready_reg_reg,
      axi_aclk => axi_aclk,
      axi_aresetn => axi_aresetn,
      axi_aresetn_0 => eth_rx_dma_inst_n_0,
      bvalid_reg_reg => bvalid_reg_reg,
      dout(9 downto 0) => fifo_dout(9 downto 0),
      empty => empty,
      rd_en => rd_en,
      rd_rst_busy => rd_rst_busy,
      read_state_reg_reg => read_state_reg_reg,
      wready_reg_reg => wready_reg_reg
    );
rmii_mac_rx_inst: entity work.design_1_eth_rx_0_2_rmii_mac_rx
     port map (
      Q(9 downto 0) => fifo_din(9 downto 0),
      axi_aresetn => axi_aresetn,
      full => fifo_full,
      i_crs_dv => i_crs_dv,
      i_ref_clk => i_ref_clk,
      i_rxd(1 downto 0) => i_rxd(1 downto 0),
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
rx_async_fifo_inst: entity work.design_1_eth_rx_0_2_xpm_fifo_async
     port map (
      almost_empty => NLW_rx_async_fifo_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_rx_async_fifo_inst_almost_full_UNCONNECTED,
      data_valid => NLW_rx_async_fifo_inst_data_valid_UNCONNECTED,
      dbiterr => NLW_rx_async_fifo_inst_dbiterr_UNCONNECTED,
      din(9 downto 0) => fifo_din(9 downto 0),
      dout(9 downto 0) => fifo_dout(9 downto 0),
      empty => empty,
      full => fifo_full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => NLW_rx_async_fifo_inst_overflow_UNCONNECTED,
      prog_empty => NLW_rx_async_fifo_inst_prog_empty_UNCONNECTED,
      prog_full => NLW_rx_async_fifo_inst_prog_full_UNCONNECTED,
      rd_clk => axi_aclk,
      rd_data_count(0) => NLW_rx_async_fifo_inst_rd_data_count_UNCONNECTED(0),
      rd_en => rd_en,
      rd_rst_busy => rd_rst_busy,
      rst => eth_rx_dma_inst_n_0,
      sbiterr => NLW_rx_async_fifo_inst_sbiterr_UNCONNECTED,
      sleep => '0',
      underflow => NLW_rx_async_fifo_inst_underflow_UNCONNECTED,
      wr_ack => NLW_rx_async_fifo_inst_wr_ack_UNCONNECTED,
      wr_clk => i_ref_clk,
      wr_data_count(0) => NLW_rx_async_fifo_inst_wr_data_count_UNCONNECTED(0),
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_eth_rx_0_2 is
  port (
    i_ref_clk : in STD_LOGIC;
    i_rxd : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_rxer : in STD_LOGIC;
    i_crs_dv : in STD_LOGIC;
    axi_aclk : in STD_LOGIC;
    axi_aresetn : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_WLAST : out STD_LOGIC;
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_BREADY : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_eth_rx_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_eth_rx_0_2 : entity is "design_1_eth_rx_0_2,eth_rx,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_eth_rx_0_2 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_eth_rx_0_2 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_eth_rx_0_2 : entity is "eth_rx,Vivado 2025.2";
end design_1_eth_rx_0_2;

architecture STRUCTURE of design_1_eth_rx_0_2 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axi_awlen\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute x_interface_info : string;
  attribute x_interface_info of M_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute x_interface_info of M_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute x_interface_info of M_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute x_interface_info of M_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute x_interface_info of M_AXI_WLAST : signal is "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  attribute x_interface_info of M_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute x_interface_info of M_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute x_interface_info of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of axi_aclk : signal is "xilinx.com:signal:clock:1.0 axi_aclk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of axi_aclk : signal is "slave axi_aclk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of axi_aclk : signal is "XIL_INTERFACENAME axi_aclk, ASSOCIATED_BUSIF M_AXI:S_AXI, ASSOCIATED_RESET axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of axi_aresetn : signal is "xilinx.com:signal:reset:1.0 axi_aresetn RST";
  attribute x_interface_mode of axi_aresetn : signal is "slave axi_aresetn";
  attribute x_interface_parameter of axi_aresetn : signal is "XIL_INTERFACENAME axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of i_ref_clk : signal is "xilinx.com:signal:clock:1.0 i_ref_clk CLK";
  attribute x_interface_mode of i_ref_clk : signal is "slave i_ref_clk";
  attribute x_interface_parameter of i_ref_clk : signal is "XIL_INTERFACENAME i_ref_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_i_ref_clk, INSERT_VIP 0";
  attribute x_interface_info of M_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute x_interface_mode of M_AXI_AWADDR : signal is "master M_AXI";
  attribute x_interface_parameter of M_AXI_AWADDR : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of M_AXI_AWBURST : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  attribute x_interface_info of M_AXI_AWLEN : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  attribute x_interface_info of M_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute x_interface_info of M_AXI_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  attribute x_interface_info of M_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute x_interface_info of M_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute x_interface_info of M_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute x_interface_info of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of S_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute x_interface_info of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_mode of S_AXI_AWADDR : signal is "slave S_AXI";
  attribute x_interface_parameter of S_AXI_AWADDR : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute x_interface_info of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  M_AXI_AWBURST(1) <= \<const0>\;
  M_AXI_AWBURST(0) <= \<const1>\;
  M_AXI_AWLEN(7) <= \<const0>\;
  M_AXI_AWLEN(6) <= \<const0>\;
  M_AXI_AWLEN(5) <= \<const0>\;
  M_AXI_AWLEN(4) <= \^m_axi_awlen\(4);
  M_AXI_AWLEN(3) <= \^m_axi_awlen\(4);
  M_AXI_AWLEN(2 downto 0) <= \^m_axi_awlen\(2 downto 0);
  M_AXI_AWPROT(2) <= \<const0>\;
  M_AXI_AWPROT(1) <= \<const0>\;
  M_AXI_AWPROT(0) <= \<const0>\;
  M_AXI_AWSIZE(2) <= \<const0>\;
  M_AXI_AWSIZE(1) <= \<const1>\;
  M_AXI_AWSIZE(0) <= \<const0>\;
  S_AXI_BRESP(1) <= \^s_axi_bresp\(1);
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RDATA(31) <= \<const0>\;
  S_AXI_RDATA(30) <= \<const0>\;
  S_AXI_RDATA(29) <= \<const0>\;
  S_AXI_RDATA(28) <= \<const0>\;
  S_AXI_RDATA(27) <= \<const0>\;
  S_AXI_RDATA(26) <= \<const0>\;
  S_AXI_RDATA(25) <= \<const0>\;
  S_AXI_RDATA(24) <= \<const0>\;
  S_AXI_RDATA(23) <= \<const0>\;
  S_AXI_RDATA(22) <= \<const0>\;
  S_AXI_RDATA(21) <= \<const0>\;
  S_AXI_RDATA(20) <= \<const0>\;
  S_AXI_RDATA(19) <= \<const0>\;
  S_AXI_RDATA(18) <= \<const0>\;
  S_AXI_RDATA(17) <= \<const0>\;
  S_AXI_RDATA(16) <= \<const0>\;
  S_AXI_RDATA(15) <= \<const0>\;
  S_AXI_RDATA(14) <= \<const0>\;
  S_AXI_RDATA(13) <= \<const0>\;
  S_AXI_RDATA(12) <= \<const0>\;
  S_AXI_RDATA(11) <= \<const0>\;
  S_AXI_RDATA(10) <= \<const0>\;
  S_AXI_RDATA(9) <= \<const0>\;
  S_AXI_RDATA(8) <= \<const0>\;
  S_AXI_RDATA(7) <= \<const0>\;
  S_AXI_RDATA(6) <= \<const0>\;
  S_AXI_RDATA(5) <= \<const0>\;
  S_AXI_RDATA(4) <= \<const0>\;
  S_AXI_RDATA(3) <= \<const0>\;
  S_AXI_RDATA(2) <= \<const0>\;
  S_AXI_RDATA(1 downto 0) <= \^s_axi_rdata\(1 downto 0);
  S_AXI_RRESP(1) <= \^s_axi_rresp\(1);
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_eth_rx_0_2_eth_rx
     port map (
      M_AXI_AWADDR(31 downto 0) => M_AXI_AWADDR(31 downto 0),
      M_AXI_AWLEN(3) => \^m_axi_awlen\(4),
      M_AXI_AWLEN(2 downto 0) => \^m_axi_awlen\(2 downto 0),
      M_AXI_AWREADY => M_AXI_AWREADY,
      M_AXI_AWVALID => M_AXI_AWVALID,
      M_AXI_BREADY => M_AXI_BREADY,
      M_AXI_BVALID => M_AXI_BVALID,
      M_AXI_WDATA(31 downto 0) => M_AXI_WDATA(31 downto 0),
      M_AXI_WLAST => M_AXI_WLAST,
      M_AXI_WREADY => M_AXI_WREADY,
      M_AXI_WSTRB(3 downto 0) => M_AXI_WSTRB(3 downto 0),
      M_AXI_WVALID => M_AXI_WVALID,
      S_AXI_ARADDR(3 downto 0) => S_AXI_ARADDR(3 downto 0),
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(3 downto 0) => S_AXI_AWADDR(3 downto 0),
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BRESP(0) => \^s_axi_bresp\(1),
      S_AXI_RDATA(1 downto 0) => \^s_axi_rdata\(1 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RRESP(0) => \^s_axi_rresp\(1),
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      arready_reg_reg => S_AXI_ARREADY,
      awready_reg_reg => S_AXI_AWREADY,
      axi_aclk => axi_aclk,
      axi_aresetn => axi_aresetn,
      bvalid_reg_reg => S_AXI_BVALID,
      i_crs_dv => i_crs_dv,
      i_ref_clk => i_ref_clk,
      i_rxd(1 downto 0) => i_rxd(1 downto 0),
      read_state_reg_reg => S_AXI_RVALID,
      wready_reg_reg => S_AXI_WREADY
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
