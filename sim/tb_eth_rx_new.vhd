library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.eth_rx_package.all;

entity tb_eth_rx_new is
end entity;

architecture sim of tb_eth_rx_new is

    constant c_rmii_refclk_period : time := 20 ns;
    constant c_axi_clk_period : time := 10 ns;
    constant c_payload_reg_addr : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := x"00000000";

    signal to_dut_axi_aclk : std_logic;
    signal to_dut_axi_aresetn: std_logic;

    -- Synchronized with 'to_dut_axi_aclk'
    signal to_dut_axi4_lite : t_axil_bus := (
        awaddr  => (others => '0'),
        awprot  => (others => '0'),
        awvalid => 'Z',
        awready => 'Z',

        wdata   => (others => '0'),
        wstrb   => (others => '0'),
        wvalid  => 'Z',
        wready  => 'Z',

        bresp   => (others => 'Z'),
        bvalid  => 'Z',
        bready  => '0',

        araddr  => (others => '0'),
        arprot  => (others => '0'),
        arvalid => '0',
        arready => 'Z',

        rdata   => (others => 'Z'),
        rresp   => (others => 'Z'),
        rvalid  => 'Z',
        rready  => '0'
    );

    signal to_dut_rmii : t_rmii_bus := (
        clk    => 'Z', -- Ensures any potential driver starts off driving 'Z'
        rxd    => (others => '0'),
        rxer   => '0',
        crs_dv => '0'
    );
    signal from_dut_axi : t_axi_write_bus;
begin

    -- Instantiate DUT
    eth_rx_0 : entity work.eth_rx
     port map (
        -- RMII
        i_ref_clk => to_dut_rmii.clk,
        i_rxd => to_dut_rmii.rxd,
        i_rxer => to_dut_rmii.rxer,
        i_crs_dv => to_dut_rmii.crs_dv,

        -- AXI clock and reset
        S_AXI_ACLK => to_dut_axi_aclk,
        S_AXI_ARESETN => to_dut_axi_aresetn,

        -- AXI4-Lite --
        ---------------
        S_AXI_AWADDR => to_dut_axi4_lite.awaddr,
        S_AXI_AWPROT => to_dut_axi4_lite.awprot,
        S_AXI_AWVALID => to_dut_axi4_lite.awvalid,
        S_AXI_AWREADY => to_dut_axi4_lite.awready,

        S_AXI_WDATA => to_dut_axi4_lite.wdata,
        S_AXI_WSTRB => to_dut_axi4_lite.wstrb,
        S_AXI_WVALID => to_dut_axi4_lite.wvalid,
        S_AXI_WREADY => to_dut_axi4_lite.wready,

        -- AXI4-Lite write response channel
        S_AXI_BRESP => to_dut_axi4_lite.bresp,
        S_AXI_BVALID => to_dut_axi4_lite.bvalid,
        S_AXI_BREADY => to_dut_axi4_lite.bready,

        -- AXI4-Lite read address channel
        S_AXI_ARADDR => to_dut_axi4_lite.araddr,
        S_AXI_ARPROT => to_dut_axi4_lite.arprot,
        S_AXI_ARVALID => to_dut_axi4_lite.arvalid,
        S_AXI_ARREADY => to_dut_axi4_lite.arready,

        -- AXI4-Lite read data channel
        S_AXI_RDATA => to_dut_axi4_lite.rdata, 
        S_AXI_RRESP => to_dut_axi4_lite.rresp, 
        S_AXI_RVALID => to_dut_axi4_lite.rvalid,
        S_AXI_RREADY => to_dut_axi4_lite.rready,

        -- AXI Full (write) --
        --------------
        M_AXI_AWADDR => from_dut_axi.awaddr,
        M_AXI_AWLEN => from_dut_axi.awlen,
        M_AXI_AWSIZE => from_dut_axi.awsize,
        M_AXI_AWBURST => from_dut_axi.awburst,
        M_AXI_AWPROT => from_dut_axi.awprot,
        M_AXI_AWVALID => from_dut_axi.awvalid,
        M_AXI_AWREADY => from_dut_axi.awready,

        -- AXI master write data channel
        M_AXI_WDATA => from_dut_axi.wdata,
        M_AXI_WSTRB => from_dut_axi.wstrb,
        M_AXI_WLAST => from_dut_axi.wlast,
        M_AXI_WVALID => from_dut_axi.wvalid,
        M_AXI_WREADY => from_dut_axi.wready,

        -- AXI master write response channel
        M_AXI_BRESP => from_dut_axi.bresp, 
        M_AXI_BVALID => from_dut_axi.bvalid,
        M_AXI_BREADY => from_dut_axi.bready
     );


    -- Clock generation (AXI aclk)
    process is
    begin
        to_dut_axi_aclk <= '1';
        wait for c_axi_clk_period / 2;
        to_dut_axi_aclk <= '0';
        wait for c_axi_clk_period / 2;
    end process;

    -- Clock generation (RMII refclk)
    process is
    begin
        to_dut_rmii.clk <= '1';
        wait for c_rmii_refclk_period / 2;
        to_dut_rmii.clk <= '0';
        wait for c_rmii_refclk_period / 2;
    end process;

    process is

        constant c_DEST_ADDR : t_MAC_ADDR := (
            x"00", x"11", x"22", x"33", x"44", x"55"
        );

        constant c_SRC_ADDR : t_MAC_ADDR := (
            x"66", x"77", x"88", x"99", x"AA", x"BB"
        );

        constant c_ETH_TYPE : t_TYPE := (x"08", x"00");

        constant c_TEST_DATA : t_DATA := (x"12", x"34", x"56", x"78");

        procedure rmii_reset is
        begin
            to_dut_rmii.rxd <= "00";
            to_dut_rmii.rxer <= '0';
            to_dut_rmii.crs_dv <= '0';
        end procedure;

        procedure axi4_lite_reset is
        begin
            to_dut_axi4_lite.awaddr <= (others => '0');
            to_dut_axi4_lite.awprot <= "000";
            to_dut_axi4_lite.awvalid <= '0';

            to_dut_axi4_lite.wvalid <= '0';

            to_dut_axi4_lite.bready <= '0';

            to_dut_axi4_lite.araddr <= (others => '0');
            to_dut_axi4_lite.arprot <= "000";
            to_dut_axi4_lite.arvalid <= '0';

            to_dut_axi4_lite.rready <= '0';
        end procedure;

        procedure full_reset is
        begin

            to_dut_axi_aresetn <= '0';
            rmii_reset;
            axi4_lite_reset;

            -- Hold 'aresetn' for 10 cycles
            for i in 1 to 10 loop
                wait until rising_edge(to_dut_axi_aclk);
            end loop;

            wait for 1 ns;

            to_dut_axi_aresetn <= '1';

        end procedure;

        variable axil_bresp : std_logic_vector(1 downto 0);

    begin
        -- Reset
        full_reset;

        for i in 1 to 5 loop
            wait until rising_edge(to_dut_axi_aclk);
        end loop;

        -- Program the payload region base address
        axil_write(
            to_dut_axi_aclk,
            to_dut_axi4_lite,
            c_payload_reg_addr,
            x"00000004",
            axil_bresp
        );

        for i in 1 to 5 loop
            wait until rising_edge(to_dut_rmii.clk);
        end loop;

        -- Transmit an ethernet frame
        send_eth_frame(
            to_dut_rmii, c_DEST_ADDR, c_SRC_ADDR, c_ETH_TYPE, c_TEST_DATA
        );

        -- Give some time for RMII MAC RX to push the remaining bytes to the FIFO
        wait for 1000 ns;

        report "Test: Finished";
        std.env.stop;
        wait;
        
    end process;



end architecture;