library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library xpm;
use xpm.vcomponents.all;

entity eth_rx is
    generic (
        C_S_AXI_DATA_WIDTH : integer := 32;
        C_S_AXI_ADDR_WIDTH : integer := 32
    );
    port (
       -- i_rst_n : in std_logic;
        i_ref_clk : in std_logic;
       -- i_sys_clk : in std_logic;

        -- RMII PHY RX interface
        i_rxd : in std_logic_vector(1 downto 0);
        i_rxer : in std_logic;
        i_crs_dv : in std_logic;
        
        S_AXI_ACLK : in std_logic;
        S_AXI_ARESETN : in std_logic;

        -- AXI write address channel
        S_AXI_AWADDR : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_AWPROT : in std_logic_vector(2 downto 0);
        S_AXI_AWVALID : in std_logic;
        S_AXI_AWREADY : out std_logic;

        -- AXI write data channel
        S_AXI_WDATA : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_WSTRB : in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        S_AXI_WVALID : in std_logic;
        S_AXI_WREADY : out std_logic;

        -- AXI write response channel
        S_AXI_BRESP : out std_logic_vector(1 downto 0);
        S_AXI_BVALID : out std_logic;
        S_AXI_BREADY : in std_logic;

        -- AXI read address channel
        S_AXI_ARADDR : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_ARPROT : in std_logic_vector(2 downto 0);
        S_AXI_ARVALID : in std_logic;
        S_AXI_ARREADY : out std_logic;

        -- AXI read data channel
        S_AXI_RDATA : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_RRESP : out std_logic_vector(1 downto 0);
        S_AXI_RVALID : out std_logic;
        S_AXI_RREADY : in std_logic;
    );
end entity;

architecture rtl of eth_rx is
    signal fifo_din : std_logic_vector(9 downto 0);
    signal fifo_dout : std_logic_vector(9 downto 0);
    signal fifo_wr_en : std_logic;
    signal fifo_rd_en : std_logic;
    signal fifo_full : std_logic;
    signal fifo_empty : std_logic;
    signal fifo_rst : std_logic;
    signal fifo_wr_rst_busy : std_logic;
    signal fifo_rd_rst_busy : std_logic;

    signal mac_rx_valid : std_logic;
    signal mac_rx_wr_data : std_logic_vector(9 downto 0);

    signal axil_fifo_empty : std_logic;
    signal axil_fifo_rd_en : std_logic;
begin

    fifo_rst <= not i_rst_n;

    fifo_din <= mac_rx_wr_data;

    -- Drop writes if FIFO is full.
    -- Later, you may want to add an overflow/error flag here.
    fifo_wr_en <= mac_rx_valid and not fifo_full;

    axil_fifo_empty <= fifo_empty or fifo_rd_rst_busy;

    fifo_rd_en <= axil_fifo_rd_en and not axil_fifo_empty;

    o_fifo_full <= fifo_full;

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
            -- Outputs
            dout => fifo_dout,
            empty => fifo_empty,
            full => fifo_full,
            rd_rst_busy => fifo_rd_rst_busy,
            wr_rst_busy => fifo_wr_rst_busy,

            -- Unused outputs
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

            -- Inputs
            din => fifo_din,
            wr_en => fifo_wr_en,
            rd_en  => fifo_rd_en,
            wr_clk => i_ref_clk,
            rd_clk => i_sys_clk,
            rst => fifo_rst,

            -- Unused inputs
            sleep => '0',
            injectdbiterr => '0',
            injectsbiterr => '0'
        );

    rmii_mac_rx_inst : entity work.rmii_mac_rx
        port map (
            i_rst_n => i_rst_n,
            i_ref_clk => i_ref_clk,

            i_rxd => i_rxd,
            i_rxer => i_rxer,
            i_crs_dv => i_crs_dv,

            o_rx_fifo_valid => mac_rx_valid,
            o_rx_fifo_wr_data => mac_rx_wr_data
        );

    eth_rx_axil_inst : entity work.eth_rx_axil
        generic map (
            C_S_AXI_DATA_WIDTH => C_S_AXI_DATA_WIDTH,
            C_S_AXI_ADDR_WIDTH => C_S_AXI_ADDR_WIDTH
        )
        port map (
            S_AXI_ACLK => i_sys_clk,
            S_AXI_ARESETN => i_rst_n,

            S_AXI_AWADDR => S_AXI_AWADDR,
            S_AXI_AWPROT => S_AXI_AWPROT,
            S_AXI_AWVALID => S_AXI_AWVALID,
            S_AXI_AWREADY => S_AXI_AWREADY,

            S_AXI_WDATA => S_AXI_WDATA,
            S_AXI_WSTRB => S_AXI_WSTRB,
            S_AXI_WVALID => S_AXI_WVALID,
            S_AXI_WREADY => S_AXI_WREADY,

            S_AXI_BRESP => S_AXI_BRESP,
            S_AXI_BVALID => S_AXI_BVALID,
            S_AXI_BREADY => S_AXI_BREADY,

            S_AXI_ARADDR => S_AXI_ARADDR,
            S_AXI_ARPROT => S_AXI_ARPROT,
            S_AXI_ARVALID => S_AXI_ARVALID,
            S_AXI_ARREADY => S_AXI_ARREADY,

            S_AXI_RDATA => S_AXI_RDATA,
            S_AXI_RRESP => S_AXI_RRESP,
            S_AXI_RVALID => S_AXI_RVALID,
            S_AXI_RREADY => S_AXI_RREADY,

            rx_fifo_empty => axil_fifo_empty,
            rx_fifo_dout => fifo_dout,
            rx_fifo_rd_en => axil_fifo_rd_en
        );

end architecture;
