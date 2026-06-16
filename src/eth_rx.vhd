library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library xpm;
use xpm.vcomponents.all;

use work.eth_rx_package.all;

entity eth_rx is

    port (
        -- RMII PHY RX interface
        i_ref_clk : in std_logic;
        i_rxd    : in std_logic_vector(1 downto 0);
        i_rxer   : in std_logic;
        i_crs_dv : in std_logic;

        -- AXI clock/reset
        axi_aclk    : in std_logic;
        axi_aresetn : in std_logic;

        -- AXI4-Lite write address channel
        S_AXI_AWADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_AWPROT  : in  std_logic_vector(2 downto 0);
        S_AXI_AWVALID : in  std_logic;
        S_AXI_AWREADY : out std_logic;

        -- AXI4-Lite write data channel
        S_AXI_WDATA  : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_WSTRB  : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        S_AXI_WVALID : in  std_logic;
        S_AXI_WREADY : out std_logic;

        -- AXI4-Lite write response channel
        S_AXI_BRESP  : out std_logic_vector(1 downto 0);
        S_AXI_BVALID : out std_logic;
        S_AXI_BREADY : in  std_logic;

        -- AXI4-Lite read address channel
        S_AXI_ARADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_ARPROT  : in  std_logic_vector(2 downto 0);
        S_AXI_ARVALID : in  std_logic;
        S_AXI_ARREADY : out std_logic;

        -- AXI4-Lite read data channel
        S_AXI_RDATA  : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_RRESP  : out std_logic_vector(1 downto 0);
        S_AXI_RVALID : out std_logic;
        S_AXI_RREADY : in  std_logic;

        -- AXI master write address channel
        M_AXI_AWADDR  : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
        M_AXI_AWLEN   : out std_logic_vector(7 downto 0);
        M_AXI_AWSIZE  : out std_logic_vector(2 downto 0);
        M_AXI_AWBURST : out std_logic_vector(1 downto 0);
        M_AXI_AWPROT  : out std_logic_vector(2 downto 0);
        M_AXI_AWVALID : out std_logic;
        M_AXI_AWREADY : in  std_logic;

        -- AXI master write data channel
        M_AXI_WDATA  : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
        M_AXI_WSTRB  : out std_logic_vector((C_M_AXI_DATA_WIDTH/8)-1 downto 0);
        M_AXI_WLAST  : out std_logic;
        M_AXI_WVALID : out std_logic;
        M_AXI_WREADY : in  std_logic;

        -- AXI master write response channel
        M_AXI_BRESP  : in  std_logic_vector(1 downto 0);
        M_AXI_BVALID : in  std_logic;
        M_AXI_BREADY : out std_logic
    );
    
end entity;

architecture rtl of eth_rx is

    signal fifo_din   : std_logic_vector(9 downto 0);
    signal fifo_dout  : std_logic_vector(9 downto 0);
    signal fifo_wr_en : std_logic;
    signal fifo_rd_en : std_logic;
    signal fifo_full  : std_logic;
    signal fifo_empty : std_logic;

    signal fifo_rst         : std_logic;
    signal fifo_wr_rst_busy : std_logic;
    signal fifo_rd_rst_busy : std_logic;

    signal mac_rx_valid  : std_logic;
    signal mac_rx_wr_data : std_logic_vector(9 downto 0);

    signal dma_fifo_empty : std_logic;
    signal dma_fifo_rd_en : std_logic;

begin

    fifo_rst <= not axi_aresetn;

    fifo_din <= mac_rx_wr_data;

    fifo_wr_en <= mac_rx_valid and not fifo_full and not fifo_wr_rst_busy;

    dma_fifo_empty <= fifo_empty or fifo_rd_rst_busy;

    fifo_rd_en <= dma_fifo_rd_en and not dma_fifo_empty;

    rx_async_fifo_inst : xpm_fifo_async
        generic map (
            FIFO_MEMORY_TYPE => "block",
            FIFO_WRITE_DEPTH => 512,
            WRITE_DATA_WIDTH => 10,
            READ_DATA_WIDTH => 10,

            READ_MODE => "std",
            FIFO_READ_LATENCY => 1,

            CDC_SYNC_STAGES => 2,
            RELATED_CLOCKS => 0,

            DOUT_RESET_VALUE => "0",
            ECC_MODE => "no_ecc",
            FULL_RESET_VALUE => 0,
            PROG_EMPTY_THRESH => 10,
            PROG_FULL_THRESH => 500,

            RD_DATA_COUNT_WIDTH => 1,
            WR_DATA_COUNT_WIDTH => 1,
            USE_ADV_FEATURES => "0000",
            EN_SIM_ASSERT_ERR => "warning",
            SIM_ASSERT_CHK => 0,
            WAKEUP_TIME => 0,
            CASCADE_HEIGHT => 0
        )
        port map (
            dout => fifo_dout,
            empty => fifo_empty,
            full => fifo_full,
            rd_rst_busy => fifo_rd_rst_busy,
            wr_rst_busy => fifo_wr_rst_busy,

            almost_empty => open,
            almost_full => open,
            data_valid => open,
            dbiterr => open,
            overflow => open,
            prog_empty => open,
            prog_full => open,
            rd_data_count => open,
            sbiterr => open,
            underflow => open,
            wr_ack => open,
            wr_data_count => open,

            din => fifo_din,
            wr_en => fifo_wr_en,
            rd_en => fifo_rd_en,
            wr_clk => i_ref_clk,
            rd_clk => axi_aclk,
            rst => fifo_rst,

            sleep => '0',
            injectdbiterr => '0',
            injectsbiterr => '0'
        );

    rmii_mac_rx_inst : entity work.rmii_mac_rx
        port map (
            i_rst_n   => axi_aresetn,
            i_ref_clk => i_ref_clk,

            i_rxd    => i_rxd,
            i_rxer   => i_rxer,
            i_crs_dv => i_crs_dv,

            i_rx_fifo_full => fifo_full,

            o_rx_fifo_valid   => mac_rx_valid,
            o_rx_fifo_wr_data => mac_rx_wr_data
        );

    eth_rx_dma_inst : entity work.eth_rx_dma
        port map (
            i_aresetn => axi_aresetn,
            i_aclk    => axi_aclk,

            i_rx_fifo_dout  => fifo_dout,
            i_rx_fifo_empty => dma_fifo_empty,
            o_rx_fifo_rd_en => dma_fifo_rd_en,

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

            M_AXI_AWADDR  => M_AXI_AWADDR,
            M_AXI_AWLEN   => M_AXI_AWLEN,
            M_AXI_AWSIZE  => M_AXI_AWSIZE,
            M_AXI_AWBURST => M_AXI_AWBURST,
            M_AXI_AWPROT  => M_AXI_AWPROT,
            M_AXI_AWVALID => M_AXI_AWVALID,
            M_AXI_AWREADY => M_AXI_AWREADY,

            M_AXI_WDATA  => M_AXI_WDATA,
            M_AXI_WSTRB  => M_AXI_WSTRB,
            M_AXI_WLAST  => M_AXI_WLAST,
            M_AXI_WVALID => M_AXI_WVALID,
            M_AXI_WREADY => M_AXI_WREADY,

            M_AXI_BRESP  => M_AXI_BRESP,
            M_AXI_BVALID => M_AXI_BVALID,
            M_AXI_BREADY => M_AXI_BREADY
        );

end architecture;