library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_eth_rx is
end entity;

architecture sim of tb_eth_rx is
    constant c_REF_CLK_PERIOD : time := 20 ns;
    constant c_SYS_CLK_PERIOD : time := 10 ns;
    constant c_NUM_FRAMES : natural := 4;
    constant c_DATA_BYTES : natural := 6;

    constant C_S_AXI_DATA_WIDTH : integer := 32;
    constant C_S_AXI_ADDR_WIDTH : integer := 32;

    type t_MAC_ADDR is array (0 to 5) of std_logic_vector(7 downto 0);
    type t_TYPE is array (0 to 1) of std_logic_vector(7 downto 0);
    type t_DATA is array (natural range <>) of std_logic_vector(7 downto 0);
    subtype t_FRAME_DATA is t_DATA(0 to c_DATA_BYTES - 1);
    type t_FRAME_DATA_ARRAY is array (natural range <>) of t_FRAME_DATA;

    signal i_rst_n : std_logic := '0';
    signal i_ref_clk : std_logic := '0';
    signal i_sys_clk : std_logic := '0';

    signal i_rxd : std_logic_vector(1 downto 0) := (others => '0');
    signal i_rxer : std_logic := '0';
    signal i_crs_dv : std_logic := '0';

    signal S_AXI_AWADDR : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
    signal S_AXI_AWPROT : std_logic_vector(2 downto 0) := (others => '0');
    signal S_AXI_AWVALID : std_logic := '0';
    signal S_AXI_AWREADY : std_logic;

    signal S_AXI_WDATA : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');
    signal S_AXI_WSTRB : std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0) := (others => '0');
    signal S_AXI_WVALID : std_logic := '0';
    signal S_AXI_WREADY : std_logic;

    signal S_AXI_BRESP : std_logic_vector(1 downto 0);
    signal S_AXI_BVALID : std_logic;
    signal S_AXI_BREADY : std_logic := '0';

    signal S_AXI_ARADDR : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
    signal S_AXI_ARPROT : std_logic_vector(2 downto 0) := (others => '0');
    signal S_AXI_ARVALID : std_logic := '0';
    signal S_AXI_ARREADY : std_logic;

    signal S_AXI_RDATA : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal S_AXI_RRESP : std_logic_vector(1 downto 0);
    signal S_AXI_RVALID : std_logic;
    signal S_AXI_RREADY : std_logic := '0';

    signal o_fifo_full : std_logic;

    function crc32_update(
        crc_in : std_logic_vector(31 downto 0);
        data : std_logic_vector(7 downto 0)
    ) return std_logic_vector is
        variable crc : unsigned(31 downto 0);
    begin
        crc := unsigned(crc_in) xor resize(unsigned(data), 32);

        for i in 0 to 7 loop
            if crc(0) = '1' then
                crc := shift_right(crc, 1) xor x"EDB88320";
            else
                crc := shift_right(crc, 1);
            end if;
        end loop;

        return std_logic_vector(crc);
    end function;

    function lfsr_next(
        state : std_logic_vector(31 downto 0)
    ) return std_logic_vector is
        variable feedback : std_logic;
    begin
        feedback := state(31) xor state(21) xor state(1) xor state(0);
        return state(30 downto 0) & feedback;
    end function;

    function generate_test_data return t_FRAME_DATA_ARRAY is
        variable data : t_FRAME_DATA_ARRAY(0 to c_NUM_FRAMES - 1);
        variable lfsr : std_logic_vector(31 downto 0) := x"00C0FFEE";
    begin
        for frame_idx in data'range loop
            for byte_idx in data(frame_idx)'range loop
                lfsr := lfsr_next(lfsr);
                data(frame_idx)(byte_idx) := lfsr(7 downto 0);
            end loop;
        end loop;

        return data;
    end function;

    constant c_TEST_DATA : t_FRAME_DATA_ARRAY(0 to c_NUM_FRAMES - 1) :=
        generate_test_data;

    procedure m_axi_rd_transaction (
        signal clk : in std_logic;
        constant ar_addr : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        signal araddr : out std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        signal arvalid : out std_logic;
        signal arready : in std_logic;

        signal rready : out std_logic;
        signal rdata : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        signal rresp : in std_logic_vector(1 downto 0);
        signal rvalid : in std_logic;
        variable rd_data : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0)
    ) is
    begin
        araddr <= ar_addr;
        arvalid <= '1';
        rready <= '0';

        loop
            wait until rising_edge(clk);
            exit when arready = '1';
        end loop;

        wait for 1 ns;
        arvalid <= '0';
        rready <= '1';

        loop
            wait until rising_edge(clk);
            wait for 1 ns;
            exit when rvalid = '1';
        end loop;

        rd_data := rdata;
        wait until rising_edge(clk);
        wait for 1 ns;
        rready <= '0';
    end m_axi_rd_transaction;

    procedure send_byte(
        signal clk : in std_logic;
        signal rxd : out std_logic_vector(1 downto 0);
        signal crs_dv : out std_logic;
        constant byte : in std_logic_vector(7 downto 0)
    ) is
    begin
        wait until rising_edge(clk);
        crs_dv <= '1';
        rxd <= byte(1 downto 0);

        wait until rising_edge(clk);
        rxd <= byte(3 downto 2);

        wait until rising_edge(clk);
        rxd <= byte(5 downto 4);

        wait until rising_edge(clk);
        rxd <= byte(7 downto 6);
    end procedure;

    procedure send_eth_frame(
        signal clk : in std_logic;
        signal rxd : out std_logic_vector(1 downto 0);
        signal crs_dv : out std_logic;
        constant dest_addr : in t_MAC_ADDR;
        constant src_addr : in t_MAC_ADDR;
        constant eth_type : in t_TYPE;
        constant data : in t_DATA
    ) is
        variable crc : std_logic_vector(31 downto 0);
        variable fcs : std_logic_vector(31 downto 0);
    begin
        crc := x"FFFFFFFF";

        -- Preamble plus start-of-frame delimiter
        for i in 0 to 6 loop
            send_byte(clk, rxd, crs_dv, x"55");
        end loop;
        send_byte(clk, rxd, crs_dv, x"D5");

        -- Destination Address
        for i in dest_addr'range loop
            send_byte(clk, rxd, crs_dv, dest_addr(i));
            crc := crc32_update(crc, dest_addr(i));
        end loop;

        -- Source Address
        for i in src_addr'range loop
            send_byte(clk, rxd, crs_dv, src_addr(i));
            crc := crc32_update(crc, src_addr(i));
        end loop;

        -- Type
        for i in eth_type'range loop
            send_byte(clk, rxd, crs_dv, eth_type(i));
            crc := crc32_update(crc, eth_type(i));
        end loop;

        -- Data
        for i in data'range loop
            send_byte(clk, rxd, crs_dv, data(i));
            crc := crc32_update(crc, data(i));
        end loop;

        -- FCS is transmitted least-significant byte first.
        fcs := not crc;
        send_byte(clk, rxd, crs_dv, fcs(7 downto 0));
        send_byte(clk, rxd, crs_dv, fcs(15 downto 8));
        send_byte(clk, rxd, crs_dv, fcs(23 downto 16));
        send_byte(clk, rxd, crs_dv, fcs(31 downto 24));

        -- End (de-assert 'i_crs_dv' to indicate EOF)
        wait until rising_edge(clk);
        crs_dv <= '0';
        rxd <= (others => '0');
    end procedure;

    procedure eth_reset (
        signal clk : in std_logic;
        signal rst_n : out std_logic;
        signal rxd : out std_logic_vector(1 downto 0);
        signal rxer : out std_logic;
        signal crs_dv : out std_logic;
        signal awaddr : out std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        signal awprot : out std_logic_vector(2 downto 0);
        signal awvalid : out std_logic;
        signal wdata : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        signal wstrb : out std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        signal wvalid : out std_logic;
        signal bready : out std_logic;
        signal araddr : out std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        signal arprot : out std_logic_vector(2 downto 0);
        signal arvalid : out std_logic;
        signal rready : out std_logic
    ) is
    begin
        rst_n <= '0';
        rxd <= (others => '0');
        rxer <= '0';
        crs_dv <= '0';
        awaddr <= (others => '0');
        awprot <= (others => '0');
        awvalid <= '0';
        wdata <= (others => '0');
        wstrb <= (others => '0');
        wvalid <= '0';
        bready <= '0';
        araddr <= (others => '0');
        arprot <= (others => '0');
        arvalid <= '0';
        rready <= '0';
        wait for 100 ns;
        wait until rising_edge(clk);
        rst_n <= '1';
        wait for 100 ns;
        wait until rising_edge(clk);
    end eth_reset;

begin

    -- DUT Instantiation
    eth_rx_inst : entity work.eth_rx
        generic map (
            C_S_AXI_DATA_WIDTH => C_S_AXI_DATA_WIDTH,
            C_S_AXI_ADDR_WIDTH => C_S_AXI_ADDR_WIDTH
        )
        port map (
            i_ref_clk => i_ref_clk,

            i_rxd => i_rxd,
            i_rxer => i_rxer,
            i_crs_dv => i_crs_dv,

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

            o_fifo_full => o_fifo_full
        );

    -- Clock Generation
    i_ref_clk <= not i_ref_clk after c_REF_CLK_PERIOD / 2;
    i_sys_clk <= not i_sys_clk after c_SYS_CLK_PERIOD / 2;

    process is
        constant c_STATUS_REG_ADDR : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := x"00000000";
        constant c_RX_DATA_REG_ADDR : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := x"00000004";
        constant c_DEST_ADDR : t_MAC_ADDR := (
            x"00", x"11", x"22", x"33", x"44", x"55"
        );
        constant c_SRC_ADDR : t_MAC_ADDR := (
            x"66", x"77", x"88", x"99", x"AA", x"BB"
        );
        constant c_ETH_TYPE : t_TYPE := (x"08", x"00");
        constant c_SUCCESS_WORD : std_logic_vector(9 downto 0) := "10" & x"00";
        variable rd_data : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        variable expected_word : std_logic_vector(9 downto 0);
    begin

        eth_reset(
            i_sys_clk,
            i_rst_n,
            i_rxd,
            i_rxer,
            i_crs_dv,
            S_AXI_AWADDR,
            S_AXI_AWPROT,
            S_AXI_AWVALID,
            S_AXI_WDATA,
            S_AXI_WSTRB,
            S_AXI_WVALID,
            S_AXI_BREADY,
            S_AXI_ARADDR,
            S_AXI_ARPROT,
            S_AXI_ARVALID,
            S_AXI_RREADY
        );

        m_axi_rd_transaction(
            i_sys_clk,
            c_STATUS_REG_ADDR,
            S_AXI_ARADDR,
            S_AXI_ARVALID,
            S_AXI_ARREADY,
            S_AXI_RREADY,
            S_AXI_RDATA,
            S_AXI_RRESP,
            S_AXI_RVALID,
            rd_data
        );

        if (rd_data(0) = '1') then
            report "SUCCESS: RX FIFO is empty";
        else
            report "FAIL: RX FIFO isn't empty";
        end if;

        -- Transmission of 4 frames
        for frame_idx in c_TEST_DATA'range loop
            send_eth_frame(
                i_ref_clk,
                i_rxd,
                i_crs_dv,
                c_DEST_ADDR,
                c_SRC_ADDR,
                c_ETH_TYPE,
                c_TEST_DATA(frame_idx)
            );
        end loop;

        wait for 200 ns;

        -- Pop 4 frames from the RX Fifo
        for frame_idx in c_TEST_DATA'range loop
            for byte_idx in c_TEST_DATA(frame_idx)'range loop
                m_axi_rd_transaction(
                    i_sys_clk,
                    c_RX_DATA_REG_ADDR,
                    S_AXI_ARADDR,
                    S_AXI_ARVALID,
                    S_AXI_ARREADY,
                    S_AXI_RREADY,
                    S_AXI_RDATA,
                    S_AXI_RRESP,
                    S_AXI_RVALID,
                    rd_data
                );

                expected_word := "00" & c_TEST_DATA(frame_idx)(byte_idx);
                assert rd_data(9 downto 0) = expected_word
                    report "Expected RX FIFO data 0x" & to_hstring(expected_word) &
                           ", Actual: 0x" & to_hstring(rd_data(9 downto 0))
                    severity error;
            end loop;

            m_axi_rd_transaction(
                i_sys_clk,
                c_RX_DATA_REG_ADDR,
                S_AXI_ARADDR,
                S_AXI_ARVALID,
                S_AXI_ARREADY,
                S_AXI_RREADY,
                S_AXI_RDATA,
                S_AXI_RRESP,
                S_AXI_RVALID,
                rd_data
            );

            assert rd_data(9 downto 0) = c_SUCCESS_WORD
                report "Expected successful frame status 0x" & to_hstring(c_SUCCESS_WORD) &
                       ", Actual: 0x" & to_hstring(rd_data(9 downto 0))
                severity error;

            report "SUCCESS: Correct Ethernet Frame";
        end loop;

        m_axi_rd_transaction(
            i_sys_clk,
            c_STATUS_REG_ADDR,
            S_AXI_ARADDR,
            S_AXI_ARVALID,
            S_AXI_ARREADY,
            S_AXI_RREADY,
            S_AXI_RDATA,
            S_AXI_RRESP,
            S_AXI_RVALID,
            rd_data
        );

        if (rd_data(0) = '1') then
            report "SUCCESS: RX FIFO is empty after frame reads";
        else
            report "FAIL: RX FIFO isn't empty after frame reads";
        end if;

        report "Test: Finished";
        std.env.stop;
        wait;
    end process;
end architecture;
