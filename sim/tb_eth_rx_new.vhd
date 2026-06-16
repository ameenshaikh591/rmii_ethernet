library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.eth_rx_package.all;
use work.tb_dma_axi_master_pkg.all;
use work.tb_rx_random_payload_pkg.all;

entity tb_eth_rx_new is
end entity;

architecture sim of tb_eth_rx_new is

    constant c_rmii_refclk_period : time := 20 ns;
    constant c_axi_clk_period : time := 10 ns;
    constant c_payload_reg_addr : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := x"00000000";
    constant c_head_ptr_addr : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := x"00000004";
    constant c_tail_ptr_addr : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := x"0000000C";

    signal to_dut_axi_aclk : std_logic;
    signal to_dut_axi_aresetn: std_logic;

    signal payloads_ready : std_logic := '0';
    signal axil_program_done : std_logic := '0';

    signal dma_payload_write_count : integer := 0;

    signal axil_tail_rd_req : std_logic := '0';
    signal axil_tail_rd_done : std_logic := '0';
    signal axil_tail_rd_data : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');
    signal axil_tail_rd_resp : std_logic_vector(1 downto 0) := (others => '0');

    signal axil_head_wr_req : std_logic := '0';
    signal axil_head_wr_done : std_logic := '0';
    signal axil_head_wr_data : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');
    signal axil_head_wr_resp : std_logic_vector(1 downto 0) := (others => '0');

    shared variable payload_lengths : random_payload_lengths_arr;
    shared variable payloads : random_payloads_arr;

    -- Synchronized with 'to_dut_axi_aclk'
    signal to_dut_axi4_lite : t_axil_bus := (
        awaddr  => (others => '0'),
        awprot  => (others => '0'),
        awvalid => '0',
        awready => 'Z',

        wdata   => (others => '0'),
        wstrb   => (others => '0'),
        wvalid  => '0',
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
        clk    => 'Z',
        rxd    => (others => '0'),
        rxer   => '0',
        crs_dv => '0'
    );

    signal from_dut_axi : t_axi_write_bus := (
        awaddr  => (others => 'Z'),
        awlen   => (others => 'Z'),
        awsize  => (others => 'Z'),
        awburst => (others => 'Z'),
        awprot  => (others => 'Z'),
        awvalid => 'Z',

        wdata   => (others => 'Z'),
        wstrb   => (others => 'Z'),
        wlast   => 'Z',
        wvalid  => 'Z',

        bready  => 'Z',

        awready => '0',
        wready  => '0',
        bresp   => "00",
        bvalid  => '0'
    );

begin

    -- Instantiate DUT
    eth_rx_0 : entity work.eth_rx
     port map (
        i_ref_clk => to_dut_rmii.clk,
        i_rxd => to_dut_rmii.rxd,
        i_rxer => to_dut_rmii.rxer,
        i_crs_dv => to_dut_rmii.crs_dv,

        S_AXI_ACLK => to_dut_axi_aclk,
        S_AXI_ARESETN => to_dut_axi_aresetn,

        S_AXI_AWADDR => to_dut_axi4_lite.awaddr,
        S_AXI_AWPROT => to_dut_axi4_lite.awprot,
        S_AXI_AWVALID => to_dut_axi4_lite.awvalid,
        S_AXI_AWREADY => to_dut_axi4_lite.awready,

        S_AXI_WDATA => to_dut_axi4_lite.wdata,
        S_AXI_WSTRB => to_dut_axi4_lite.wstrb,
        S_AXI_WVALID => to_dut_axi4_lite.wvalid,
        S_AXI_WREADY => to_dut_axi4_lite.wready,

        S_AXI_BRESP => to_dut_axi4_lite.bresp,
        S_AXI_BVALID => to_dut_axi4_lite.bvalid,
        S_AXI_BREADY => to_dut_axi4_lite.bready,

        S_AXI_ARADDR => to_dut_axi4_lite.araddr,
        S_AXI_ARPROT => to_dut_axi4_lite.arprot,
        S_AXI_ARVALID => to_dut_axi4_lite.arvalid,
        S_AXI_ARREADY => to_dut_axi4_lite.arready,

        S_AXI_RDATA => to_dut_axi4_lite.rdata, 
        S_AXI_RRESP => to_dut_axi4_lite.rresp, 
        S_AXI_RVALID => to_dut_axi4_lite.rvalid,
        S_AXI_RREADY => to_dut_axi4_lite.rready,

        M_AXI_AWADDR => from_dut_axi.awaddr,
        M_AXI_AWLEN => from_dut_axi.awlen,
        M_AXI_AWSIZE => from_dut_axi.awsize,
        M_AXI_AWBURST => from_dut_axi.awburst,
        M_AXI_AWPROT => from_dut_axi.awprot,
        M_AXI_AWVALID => from_dut_axi.awvalid,
        M_AXI_AWREADY => from_dut_axi.awready,

        M_AXI_WDATA => from_dut_axi.wdata,
        M_AXI_WSTRB => from_dut_axi.wstrb,
        M_AXI_WLAST => from_dut_axi.wlast,
        M_AXI_WVALID => from_dut_axi.wvalid,
        M_AXI_WREADY => from_dut_axi.wready,

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

    -- Generate stimulus
    process is

        constant c_DEST_ADDR : t_MAC_ADDR := (
            x"00", x"11", x"22", x"33", x"44", x"55"
        );

        constant c_SRC_ADDR : t_MAC_ADDR := (
            x"66", x"77", x"88", x"99", x"AA", x"BB"
        );

        constant c_ETH_TYPE : t_TYPE := (x"08", x"00");

        procedure rmii_reset is
        begin
            to_dut_rmii.rxd <= "00";
            to_dut_rmii.rxer <= '0';
            to_dut_rmii.crs_dv <= '0';
        end procedure;

        procedure full_reset is
        begin
            to_dut_axi_aresetn <= '0';
            payloads_ready <= '0';

            rmii_reset;

            for i in 1 to 10 loop
                wait until rising_edge(to_dut_axi_aclk);
            end loop;

            wait for 1 ns;

            to_dut_axi_aresetn <= '1';

        end procedure;

    begin
        -- Reset
        full_reset;

        wait until axil_program_done = '1';

        -- Generate random payloads
        generate_random_payloads_arr(payloads, payload_lengths);
        payloads_ready <= '1';

        for i in 1 to 5 loop
            wait until rising_edge(to_dut_rmii.clk);
        end loop;

        for i in 0 to c_num_random_payloads - 1 loop

            -- Transmit an ethernet frame
            send_eth_frame(
                to_dut_rmii,
                c_DEST_ADDR,
                c_SRC_ADDR,
                c_ETH_TYPE,
                payloads(i),
                payload_lengths(i)
            );

        end loop;

        wait;
        
    end process;

    -- AXI4-Lite master
    process is

        procedure axi4_lite_reset is
        begin
            to_dut_axi4_lite.awaddr <= (others => '0');
            to_dut_axi4_lite.awprot <= "000";
            to_dut_axi4_lite.awvalid <= '0';

            to_dut_axi4_lite.wdata <= (others => '0');
            to_dut_axi4_lite.wstrb <= (others => '0');
            to_dut_axi4_lite.wvalid <= '0';

            to_dut_axi4_lite.bready <= '0';

            to_dut_axi4_lite.araddr <= (others => '0');
            to_dut_axi4_lite.arprot <= "000";
            to_dut_axi4_lite.arvalid <= '0';

            to_dut_axi4_lite.rready <= '0';
        end procedure;

        variable axil_bresp : std_logic_vector(1 downto 0);
        variable axil_rd_data : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        variable axil_rd_resp : std_logic_vector(1 downto 0);

    begin
        axi4_lite_reset;

        wait until to_dut_axi_aresetn = '1';

        for i in 1 to 5 loop
            wait until rising_edge(to_dut_axi_aclk);
        end loop;

        -- Program the payload region base address
        axil_write(
            to_dut_axi_aclk,
            to_dut_axi4_lite,
            c_payload_reg_addr,
            x"20000000",
            axil_bresp
        );

        if (axil_bresp /= "00") then
            report "ERROR: SLVERR reported during AXI4-Lite write of payload region base address";
        end if;

        axil_program_done <= '1';

        loop
            wait until ((axil_tail_rd_req = '1') or (axil_head_wr_req = '1'));

            if (axil_tail_rd_req = '1') then
                axil_read(
                    to_dut_axi_aclk,
                    to_dut_axi4_lite,
                    c_tail_ptr_addr,
                    axil_rd_data,
                    axil_rd_resp
                );

                axil_tail_rd_data <= axil_rd_data;
                axil_tail_rd_resp <= axil_rd_resp;
                axil_tail_rd_done <= '1';

                wait until axil_tail_rd_req = '0';
                axil_tail_rd_done <= '0';
            end if;

            if (axil_head_wr_req = '1') then
                axil_write(
                    to_dut_axi_aclk,
                    to_dut_axi4_lite,
                    c_head_ptr_addr,
                    axil_head_wr_data,
                    axil_bresp
                );

                axil_head_wr_resp <= axil_bresp;
                axil_head_wr_done <= '1';

                wait until axil_head_wr_req = '0';
                axil_head_wr_done <= '0';
            end if;
        end loop;

    end process;

    -- Verify AXI payload writes
    process is
    begin

        wait until payloads_ready = '1';

        for i in 0 to c_num_random_payloads - 1 loop
            verify_dma_axi_payload_write(
                to_dut_axi_aclk,
                from_dut_axi,
                payloads(i),
                payload_lengths(i)
            );

            dma_payload_write_count <= i + 1;
        end loop;

        wait;

    end process;

    -- Check/update descriptor pointers
    process is
        variable expected_tail_ptr : integer := 1;
        variable actual_tail_ptr : integer;
        variable tail_ptr_match : boolean := false;
    begin

        wait until payloads_ready = '1';

        for i in 0 to c_num_random_payloads - 1 loop
            wait until dma_payload_write_count = i + 1;

            -- Give some time (6 clock cycles) for the status manager to update the tail pointer register
            for j in 0 to 5 loop
                wait until rising_edge(to_dut_axi_aclk);
            end loop;
            wait for 1 ns;

            tail_ptr_match := false;
            
            while (not tail_ptr_match) loop
                axil_tail_rd_req <= '1';
                wait until axil_tail_rd_done = '1';

                if (axil_tail_rd_resp /= "00") then
                    report "ERROR: SLVERR reported during AXI4-Lite read of tail's address";
                end if;

                actual_tail_ptr := to_integer(unsigned(axil_tail_rd_data));
                report "Tail pointer after DMA write: " & integer'image(actual_tail_ptr);

                axil_tail_rd_req <= '0';
                wait until axil_tail_rd_done = '0';

                if (actual_tail_ptr = expected_tail_ptr) then
                    axil_head_wr_data <= std_logic_vector(to_unsigned(expected_tail_ptr, C_S_AXI_DATA_WIDTH));

                    report "Actual tail meets expected tail; permitting head update";

                    axil_head_wr_req <= '1';
                    wait until axil_head_wr_done = '1';

                    report "Head update complete";

                    if (axil_head_wr_resp /= "00") then
                        report "ERROR: SLVERR reported during AXI4-Lite write of head's address";
                    end if;

                    axil_head_wr_req <= '0';
                    wait until axil_head_wr_done = '0';

                    report "AXI4-Lite write for head update complete";

                    report "Head pointer after DMA write: " & integer'image(to_integer(unsigned(axil_head_wr_data)));

                    expected_tail_ptr := (expected_tail_ptr + 1) mod 4;
                    tail_ptr_match := true;
                end if;
            end loop;
        end loop;

        wait for 150 ns;

        report "Test: Finished";
        std.env.stop;
        wait;

    end process;

end architecture;