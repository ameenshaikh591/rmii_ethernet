library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_rmii_mac_rx is
end entity;

architecture sim of tb_rmii_mac_rx is
    constant c_REF_CLK_PERIOD : time := 20 ns;
    constant c_NUM_FRAMES : natural := 4;
    constant c_DATA_BYTES : natural := 6;

    type t_MAC_ADDR is array (0 to 5) of std_logic_vector(7 downto 0);
    type t_TYPE is array (0 to 1) of std_logic_vector(7 downto 0);
    type t_DATA is array (natural range <>) of std_logic_vector(7 downto 0);
    subtype t_FRAME_DATA is t_DATA(0 to c_DATA_BYTES - 1);
    type t_FRAME_DATA_ARRAY is array (natural range <>) of t_FRAME_DATA;

    signal i_rst_n : std_logic := '0';
    signal i_ref_clk : std_logic := '0';
    signal i_rxd : std_logic_vector(1 downto 0) := (others => '0');
    signal i_rxer : std_logic := '0';
    signal i_crs_dv : std_logic := '0';

    signal o_rx_fifo_valid : std_logic;
    signal o_rx_fifo_wr_data : std_logic_vector(9 downto 0);

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

    procedure reset(
        signal clk : in std_logic;
        signal rst_n : out std_logic;
        signal rxd : out std_logic_vector(1 downto 0);
        signal rxer : out std_logic;
        signal crs_dv : out std_logic
    ) is
    begin
        rst_n <= '0';
        rxd <= (others => '0');
        rxer <= '0';
        crs_dv <= '0';

        wait for 50 ns;
        wait until rising_edge(clk);
        rst_n <= '1';
        wait until rising_edge(clk);
    end procedure;

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

    procedure check_data_byte(
        signal clk : in std_logic;
        signal rx_valid : in std_logic;
        signal rx_wr_data : in std_logic_vector(9 downto 0);
        constant expected_byte : in std_logic_vector(7 downto 0)
    ) is
    begin
        loop
            wait until rising_edge(clk);
            wait for 1 ns;
            exit when rx_valid = '1';
        end loop;
        -- wait for 1 ns;

        if (rx_wr_data(7 downto 0) = expected_byte) then
            report "MATCHING";
        else
            report "FAIL: NOT MATCHING";
            report "Expected: 0x" & to_hstring(expected_byte) & ", Actual: 0x" & 
                to_hstring(rx_wr_data(7 downto 0));
        end if;
    end procedure;

    procedure check_eth_data(
        signal clk : in std_logic;
        signal rx_valid : in std_logic;
        signal rx_wr_data : in std_logic_vector(9 downto 0);
        constant expected_data : in t_DATA
    ) is
    begin
        for i in expected_data'range loop
            check_data_byte(clk, rx_valid, rx_wr_data, expected_data(i));
        end loop;
    end procedure;

    procedure check_frame_success(
        signal clk : in std_logic;
        signal rx_valid : in std_logic;
        signal rx_wr_data : in std_logic_vector(9 downto 0)
    ) is
        constant c_SUCCESS_WORD : std_logic_vector(9 downto 0) := "10" & x"00";
    begin
        loop
            wait until rising_edge(clk);
            wait for 1 ns;
            exit when rx_valid = '1';
        end loop;

        assert rx_wr_data = c_SUCCESS_WORD
            report "Expected successful frame status 0x" & to_hstring(c_SUCCESS_WORD) &
                   ", Actual: 0x" & to_hstring(rx_wr_data)
            severity error;
    end procedure;

    procedure check_eth_frame(
        signal clk : in std_logic;
        signal rx_valid : in std_logic;
        signal rx_wr_data : in std_logic_vector(9 downto 0);
        constant expected_data : in t_DATA
    ) is
    begin
        check_eth_data(clk, rx_valid, rx_wr_data, expected_data);
        check_frame_success(clk, rx_valid, rx_wr_data);
        report "SUCCESS: Correct Ethernet Frame";
    end procedure;

    

begin
    -- RMII MAC RX Module Instantiation
    rmii_mac_rx_tb : entity work.rmii_mac_rx
        port map(
            i_rst_n => i_rst_n,
            i_ref_clk => i_ref_clk,

            i_rxd => i_rxd,
            i_rxer => i_rxer,
            i_crs_dv => i_crs_dv,

            o_rx_fifo_valid => o_rx_fifo_valid,
            o_rx_fifo_wr_data => o_rx_fifo_wr_data
        );

    -- Clock Generation
    i_ref_clk <= not i_ref_clk after c_REF_CLK_PERIOD / 2;

    process is
        constant c_DEST_ADDR : t_MAC_ADDR := (
            x"00", x"11", x"22", x"33", x"44", x"55"
        );
        constant c_SRC_ADDR : t_MAC_ADDR := (
            x"66", x"77", x"88", x"99", x"AA", x"BB"
        );
        constant c_ETH_TYPE : t_TYPE := (x"08", x"00");
    begin
        reset(i_ref_clk, i_rst_n, i_rxd, i_rxer, i_crs_dv);
        
        for i in c_TEST_DATA'range loop
            send_eth_frame(
                i_ref_clk,
                i_rxd,
                i_crs_dv,
                c_DEST_ADDR,
                c_SRC_ADDR,
                c_ETH_TYPE,
                c_TEST_DATA(i)
            );
        end loop;

        wait for 200 ns;
        report "Test: Finished";
        std.env.stop;
        wait;
    end process;

    process is
    begin
        wait until i_rst_n = '1';

        for i in c_TEST_DATA'range loop
            check_eth_frame(i_ref_clk, o_rx_fifo_valid, o_rx_fifo_wr_data, c_TEST_DATA(i));
        end loop;

        wait;
    end process;
end architecture;
