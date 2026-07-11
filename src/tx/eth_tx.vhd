library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.eth_tx_package.all;

entity eth_tx is
    port (
        -- AXI clock/reset
        S_AXI_ACLK    : in std_logic;
        S_AXI_ARESETN : in std_logic;

        -- RMII TX clock/reset
        i_ref_clk : in std_logic;
        i_rst_n   : in std_logic;

        -- RMII TX
        o_tx_en : out std_logic;
        o_txd   : out std_logic_vector(1 downto 0);

        -- AXI4-Lite slave write address channel
        S_AXI_AWADDR  : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_AWPROT  : in  std_logic_vector(2 downto 0);
        S_AXI_AWVALID : in  std_logic;
        S_AXI_AWREADY : out std_logic;

        -- AXI4-Lite slave write data channel
        S_AXI_WDATA  : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_WSTRB  : in  std_logic_vector((C_AXI_DATA_WIDTH/8)-1 downto 0);
        S_AXI_WVALID : in  std_logic;
        S_AXI_WREADY : out std_logic;

        -- AXI4-Lite slave write response channel
        S_AXI_BRESP  : out std_logic_vector(1 downto 0);
        S_AXI_BVALID : out std_logic;
        S_AXI_BREADY : in  std_logic;

        -- AXI4-Lite slave read address channel
        S_AXI_ARADDR  : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_ARPROT  : in  std_logic_vector(2 downto 0);
        S_AXI_ARVALID : in  std_logic;
        S_AXI_ARREADY : out std_logic;

        -- AXI4-Lite slave read data channel
        S_AXI_RDATA  : out std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_RRESP  : out std_logic_vector(1 downto 0);
        S_AXI_RVALID : out std_logic;
        S_AXI_RREADY : in  std_logic;

        -- AXI4-Full read address channel
        M_AXI_ARADDR  : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
        M_AXI_ARLEN   : out std_logic_vector(7 downto 0);
        M_AXI_ARSIZE  : out std_logic_vector(2 downto 0);
        M_AXI_ARBURST : out std_logic_vector(1 downto 0);
        M_AXI_ARVALID : out std_logic;
        M_AXI_ARREADY : in  std_logic;

        -- AXI4-Full read data channel
        M_AXI_RDATA  : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
        M_AXI_RRESP  : in  std_logic_vector(1 downto 0);
        M_AXI_RLAST  : in  std_logic;
        M_AXI_RVALID : in  std_logic;
        M_AXI_RREADY : out std_logic
    );
end entity;

architecture rtl of eth_tx is
    signal sched_frame_req_valid : std_logic;
    signal sched_frame_req_ready : std_logic;
    signal sched_frame_dest_mac  : std_logic_vector(C_MAC_ADDR_WIDTH-1 downto 0);

    signal entry_read_req_valid : std_logic;
    signal entry_read_req_ready : std_logic;
    signal entry_addr           : std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    signal entry_length         : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);

    signal buf_wr_valid  : std_logic;
    signal buf_wr_ready  : std_logic;
    signal buf_wr_data   : std_logic_vector(C_FIFO_ENTRY_WIDTH-1 downto 0);
    signal read_complete : std_logic;
    signal read_error    : std_logic;

    signal frame_tx_complete : std_logic;

    signal mac_fifo_rd_en     : std_logic;
    signal mac_fifo_dout      : std_logic_vector(C_FIFO_ENTRY_WIDTH-1 downto 0);
    signal mac_fifo_empty     : std_logic;
    signal mac_fifo_data_valid : std_logic;

    signal frame_tx_start      : std_logic;
    signal frame_tx_start_ack  : std_logic;
    signal frame_tx_finish     : std_logic;
    signal frame_tx_finish_ack : std_logic;
begin

    status_manager_inst : entity work.tx_status_manager
        generic map (
            C_S_AXI_ADDR_WIDTH => C_AXI_ADDR_WIDTH,
            C_S_AXI_DATA_WIDTH => C_AXI_DATA_WIDTH
        )
        port map (
            axi_aclk    => S_AXI_ACLK,
            axi_aresetn => S_AXI_ARESETN,

            S_AXI_AWADDR  => S_AXI_AWADDR,
            S_AXI_AWPROT  => S_AXI_AWPROT,
            S_AXI_AWVALID => S_AXI_AWVALID,
            S_AXI_AWREADY => S_AXI_AWREADY,

            S_AXI_WDATA  => S_AXI_WDATA,
            S_AXI_WSTRB  => S_AXI_WSTRB,
            S_AXI_WVALID => S_AXI_WVALID,
            S_AXI_WREADY => S_AXI_WREADY,

            S_AXI_BRESP  => S_AXI_BRESP,
            S_AXI_BVALID => S_AXI_BVALID,
            S_AXI_BREADY => S_AXI_BREADY,

            S_AXI_ARADDR  => S_AXI_ARADDR,
            S_AXI_ARPROT  => S_AXI_ARPROT,
            S_AXI_ARVALID => S_AXI_ARVALID,
            S_AXI_ARREADY => S_AXI_ARREADY,

            S_AXI_RDATA  => S_AXI_RDATA,
            S_AXI_RRESP  => S_AXI_RRESP,
            S_AXI_RVALID => S_AXI_RVALID,
            S_AXI_RREADY => S_AXI_RREADY,

            i_frame_tx_complete => frame_tx_complete,

            o_sched_frame_req_valid => sched_frame_req_valid,
            i_sched_frame_req_ready => sched_frame_req_ready,
            o_sched_frame_dest_mac  => sched_frame_dest_mac,

            o_entry_read_req_valid => entry_read_req_valid,
            i_entry_read_req_ready => entry_read_req_ready,
            o_entry_addr           => entry_addr,
            o_entry_length         => entry_length
        );

    axi_reader_inst : entity work.tx_axi_reader
        generic map (
            C_AXI_ADDR_WIDTH => C_AXI_ADDR_WIDTH,
            C_AXI_DATA_WIDTH => C_AXI_DATA_WIDTH
        )
        port map (
            axi_aclk    => S_AXI_ACLK,
            axi_aresetn => S_AXI_ARESETN,

            i_entry_read_req_valid => entry_read_req_valid,
            o_entry_read_req_ready => entry_read_req_ready,
            i_entry_addr           => entry_addr,
            i_entry_length         => entry_length,

            o_buf_wr_valid  => buf_wr_valid,
            i_buf_wr_ready  => buf_wr_ready,
            o_buf_wr_data   => buf_wr_data,
            o_read_complete => read_complete,
            o_read_error    => read_error,

            M_AXI_ARADDR  => M_AXI_ARADDR,
            M_AXI_ARLEN   => M_AXI_ARLEN,
            M_AXI_ARSIZE  => M_AXI_ARSIZE,
            M_AXI_ARBURST => M_AXI_ARBURST,
            M_AXI_ARVALID => M_AXI_ARVALID,
            M_AXI_ARREADY => M_AXI_ARREADY,

            M_AXI_RDATA  => M_AXI_RDATA,
            M_AXI_RRESP  => M_AXI_RRESP,
            M_AXI_RLAST  => M_AXI_RLAST,
            M_AXI_RVALID => M_AXI_RVALID,
            M_AXI_RREADY => M_AXI_RREADY
        );

    fifo_manager_inst : entity work.tx_fifo_manager
        port map (
            clk    => S_AXI_ACLK,
            resetn => S_AXI_ARESETN,

            mac_clk    => i_ref_clk,
            mac_resetn => i_rst_n,

            i_buf_wr_valid  => buf_wr_valid,
            o_buf_wr_ready  => buf_wr_ready,
            i_buf_wr_data   => buf_wr_data,
            i_read_complete => read_complete,
            i_read_error    => read_error,

            i_sched_frame_req_valid => sched_frame_req_valid,
            o_sched_frame_req_ready => sched_frame_req_ready,
            i_sched_frame_dest_mac  => sched_frame_dest_mac,

            o_frame_tx_complete => frame_tx_complete,

            i_mac_fifo_rd_en      => mac_fifo_rd_en,
            o_mac_fifo_dout       => mac_fifo_dout,
            o_mac_fifo_empty      => mac_fifo_empty,
            o_mac_fifo_data_valid => mac_fifo_data_valid,

            o_frame_tx_start      => frame_tx_start,
            i_frame_tx_start_ack  => frame_tx_start_ack,
            i_frame_tx_finish     => frame_tx_finish,
            o_frame_tx_finish_ack => frame_tx_finish_ack
        );

    rmii_mac_inst : entity work.tx_rmii_mac
        port map (
            i_rst_n   => i_rst_n,
            i_ref_clk => i_ref_clk,
            o_tx_en   => o_tx_en,
            o_txd     => o_txd,

            o_mac_fifo_rd_en      => mac_fifo_rd_en,
            i_mac_fifo_dout       => mac_fifo_dout,
            i_mac_fifo_empty      => mac_fifo_empty,
            i_mac_fifo_data_valid => mac_fifo_data_valid,

            i_frame_tx_start      => frame_tx_start,
            o_frame_tx_start_ack  => frame_tx_start_ack,
            o_frame_tx_finish     => frame_tx_finish,
            i_frame_tx_finish_ack => frame_tx_finish_ack
        );

end architecture;
