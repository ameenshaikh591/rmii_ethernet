library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package eth_rx_package is

    constant C_M_AXI_ADDR_WIDTH : integer := 32;
    constant C_M_AXI_DATA_WIDTH : integer := 32;
    constant C_S_AXI_ADDR_WIDTH : integer := 32;
    constant C_S_AXI_DATA_WIDTH : integer := 32;

    type t_axil_bus is record
        awaddr  : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        awprot  : std_logic_vector(2 downto 0);
        awvalid : std_logic;
        awready : std_logic;

        wdata   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        wstrb   : std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        wvalid  : std_logic;
        wready  : std_logic;

        bresp   : std_logic_vector(1 downto 0);
        bvalid  : std_logic;
        bready  : std_logic;

        araddr  : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        arprot  : std_logic_vector(2 downto 0);
        arvalid : std_logic;
        arready : std_logic;

        rdata   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        rresp   : std_logic_vector(1 downto 0);
        rvalid  : std_logic;
        rready  : std_logic;
    end record;

    type t_axi_write_bus is record
        awaddr  : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
        awlen   : std_logic_vector(7 downto 0);
        awsize  : std_logic_vector(2 downto 0);
        awburst : std_logic_vector(1 downto 0);
        awprot  : std_logic_vector(2 downto 0);
        awvalid : std_logic;
        awready : std_logic;

        wdata   : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
        wstrb   : std_logic_vector((C_M_AXI_DATA_WIDTH/8)-1 downto 0);
        wlast   : std_logic;
        wvalid  : std_logic;
        wready  : std_logic;

        bresp   : std_logic_vector(1 downto 0);
        bvalid  : std_logic;
        bready  : std_logic;
    end record;

    type t_rmii_bus is record
        clk    : std_logic;
        rxd    : std_logic_vector(1 downto 0);
        rxer   : std_logic;
        crs_dv : std_logic;
    end record;

    type t_MAC_ADDR is array (0 to 5) of std_logic_vector(7 downto 0);
    type t_TYPE is array (0 to 1) of std_logic_vector(7 downto 0);
    type t_DATA is array (natural range <>) of std_logic_vector(7 downto 0);

    procedure axil_write(
        signal clk  : in std_logic;
        signal axil : inout t_axil_bus;
        constant addr : in std_logic_vector(31 downto 0);
        constant data : in std_logic_vector(31 downto 0);
        variable resp : out std_logic_vector(1 downto 0)
    );

    procedure expect_axi_write_payload(
        signal clk : in std_logic;
        signal axi : inout t_axi_write_bus;
        constant expected_base_addr : in std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
        constant expected_data : in t_DATA
    );

    procedure send_byte(
        signal rmii : inout t_rmii_bus;
        constant byte : in std_logic_vector(7 downto 0)
    );

    procedure send_eth_frame(
        signal rmii : inout t_rmii_bus;
        constant dest_addr : in t_MAC_ADDR;
        constant src_addr : in t_MAC_ADDR;
        constant eth_type : in t_TYPE;
        constant data : in t_DATA
    );

end package;

package body eth_rx_package is

    function min_natural(
        left : natural;
        right : natural
    ) return natural is
    begin
        if left < right then
            return left;
        end if;

        return right;
    end function;

    function axi_wstrb_for_byte_count(
        byte_count : natural
    ) return std_logic_vector is
        variable wstrb : std_logic_vector((C_M_AXI_DATA_WIDTH/8)-1 downto 0) := (others => '0');
    begin
        for i in wstrb'range loop
            if i < byte_count then
                wstrb(i) := '1';
            end if;
        end loop;

        return wstrb;
    end function;

    function count_wstrb_bytes(
        wstrb : std_logic_vector
    ) return natural is
        variable count : natural := 0;
    begin
        for i in wstrb'range loop
            if wstrb(i) = '1' then
                count := count + 1;
            end if;
        end loop;

        return count;
    end function;

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

    procedure axil_write(
        signal clk  : in std_logic;
        signal axil : inout t_axil_bus;
        constant addr : in std_logic_vector(31 downto 0);
        constant data : in std_logic_vector(31 downto 0);
        variable resp : out std_logic_vector(1 downto 0)
    ) is
        variable aw_seen : boolean := false;
        variable w_seen  : boolean := false;
    begin

        -- Synchronize with 'clk'
        wait until rising_edge(clk);
        wait for 1 ns;

        -- Drive defaults/unused
        axil.arprot <= "000";
        axil.awprot <= "000";

        axil.awvalid <= '1';
        axil.awaddr  <= addr;

        axil.wvalid <= '1';
        axil.wdata  <= data;
        axil.wstrb  <= "1111";

        axil.bready <= '0';

        while ((not aw_seen) or (not w_seen)) loop

            if (axil.awready = '1') then
                aw_seen := true;
            end if;

            if (axil.wready = '1') then
                w_seen := true;
            end if;

            wait until rising_edge(clk);
            wait for 1 ns;

            if (aw_seen) then
                axil.awvalid <= '0';
            end if;

            if (w_seen) then
                axil.wvalid <= '0';
            end if;
        end loop;

        -- Wait for a write response
        axil.bready <= '1';

        loop
            wait until rising_edge(clk);
            wait for 1 ns;

            exit when axil.bvalid = '1';
        end loop;

        -- Save the write response
        resp := axil.bresp;
        axil.bready <= '0';

    end axil_write;

    procedure expect_axi_write_payload(
        signal clk : in std_logic;
        signal axi : inout t_axi_write_bus;
        constant expected_base_addr : in std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
        constant expected_data : in t_DATA
    ) is
        constant c_AXI_RESP_OKAY : std_logic_vector(1 downto 0) := "00";
        constant c_BYTES_PER_BEAT : natural := C_M_AXI_DATA_WIDTH / 8;

        variable bytes_seen : natural := 0;
        variable global_beat_idx : natural := 0;
        variable beats_in_burst : natural := 0;
        variable remaining_bytes : natural := 0;
        variable valid_byte_count : natural := 0;
        variable observed_byte_count : natural := 0;
        variable expected_addr : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
        variable expected_wstrb : std_logic_vector((C_M_AXI_DATA_WIDTH/8)-1 downto 0);
        variable actual_byte : std_logic_vector(7 downto 0);
        variable expected_byte : std_logic_vector(7 downto 0);
    begin
        axi.awready <= '0';
        axi.wready <= '0';
        axi.bvalid <= '0';
        axi.bresp <= c_AXI_RESP_OKAY;

        while bytes_seen < expected_data'length loop
            expected_addr := std_logic_vector(
                unsigned(expected_base_addr) + to_unsigned(bytes_seen, C_M_AXI_ADDR_WIDTH)
            );

            axi.awready <= '1';

            loop
                wait until rising_edge(clk);
                wait for 1 ns;
                exit when axi.awvalid = '1';
            end loop;

            assert axi.awaddr = expected_addr
                report "FAIL"
                severity error;

            assert axi.awsize = "010"
                report "FAIL"
                severity error;

            assert axi.awburst = "01"
                report "FAIL"
                severity error;

            beats_in_burst := to_integer(unsigned(axi.awlen)) + 1;
            axi.awready <= '0';

            for beat_idx in 0 to beats_in_burst - 1 loop
                assert bytes_seen < expected_data'length
                    report "FAIL"
                    severity error;

                axi.wready <= '1';

                loop
                    wait until rising_edge(clk);
                    wait for 1 ns;
                    exit when axi.wvalid = '1';
                end loop;

                remaining_bytes := expected_data'length - bytes_seen;
                valid_byte_count := min_natural(c_BYTES_PER_BEAT, remaining_bytes);
                expected_wstrb := axi_wstrb_for_byte_count(valid_byte_count);
                observed_byte_count := count_wstrb_bytes(axi.wstrb);

                assert axi.wstrb = expected_wstrb
                    report "FAIL"
                    severity error;

                assert observed_byte_count = valid_byte_count
                    report "FAIL"
                    severity error;

                for byte_lane in 0 to c_BYTES_PER_BEAT - 1 loop
                    if byte_lane < valid_byte_count then
                        actual_byte := axi.wdata((8 * byte_lane) + 7 downto 8 * byte_lane);
                        expected_byte := expected_data(expected_data'low + bytes_seen + byte_lane);

                        assert actual_byte = expected_byte
                            report "FAIL"
                            severity error;
                    end if;
                end loop;

                if beat_idx = beats_in_burst - 1 then
                    assert axi.wlast = '1'
                        report "FAIL"
                        severity error;
                else
                    assert axi.wlast = '0'
                        report "FAIL"
                        severity error;
                end if;

                bytes_seen := bytes_seen + valid_byte_count;
                global_beat_idx := global_beat_idx + 1;
            end loop;

            axi.wready <= '0';
            axi.bvalid <= '1';
            axi.bresp <= c_AXI_RESP_OKAY;

            loop
                wait until rising_edge(clk);
                wait for 1 ns;
                exit when axi.bready = '1';
            end loop;

            axi.bvalid <= '0';
        end loop;

        assert bytes_seen = expected_data'length
            report "Expected " & integer'image(expected_data'length) &
                   " AXI write payload bytes, Actual: " & integer'image(bytes_seen)
            severity error;
    end expect_axi_write_payload;

    procedure send_byte(
        signal rmii : inout t_rmii_bus;
        constant byte : in std_logic_vector(7 downto 0)
    ) is
    begin
        wait until rising_edge(rmii.clk);
        rmii.crs_dv <= '1';
        rmii.rxer <= '0';
        rmii.rxd <= byte(1 downto 0);

        wait until rising_edge(rmii.clk);
        rmii.rxd <= byte(3 downto 2);

        wait until rising_edge(rmii.clk);
        rmii.rxd <= byte(5 downto 4);

        wait until rising_edge(rmii.clk);
        rmii.rxd <= byte(7 downto 6);
    end procedure;

    procedure send_eth_frame(
        signal rmii : inout t_rmii_bus;
        constant dest_addr : in t_MAC_ADDR;
        constant src_addr : in t_MAC_ADDR;
        constant eth_type : in t_TYPE;
        constant data : in t_DATA
    ) is
        variable crc : std_logic_vector(31 downto 0);
        variable fcs : std_logic_vector(31 downto 0);
    begin
        crc := x"FFFFFFFF";

        -- 96 cycle IPG ('crs_dv' asserted LOW)
        for i in 1 to 96 loop
            wait until rising_edge(rmii.clk);
        end loop;

        -- Preamble plus start-of-frame delimiter
        for i in 0 to 6 loop
            send_byte(rmii, x"55");
        end loop;
        send_byte(rmii, x"D5");

        -- Destination address
        for i in dest_addr'range loop
            send_byte(rmii, dest_addr(i));
            crc := crc32_update(crc, dest_addr(i));
        end loop;

        -- Source address
        for i in src_addr'range loop
            send_byte(rmii, src_addr(i));
            crc := crc32_update(crc, src_addr(i));
        end loop;

        -- EtherType
        for i in eth_type'range loop
            send_byte(rmii, eth_type(i));
            crc := crc32_update(crc, eth_type(i));
        end loop;

        -- Payload
        for i in data'range loop
            send_byte(rmii, data(i));
            crc := crc32_update(crc, data(i));
        end loop;

        -- FCS is transmitted least-significant byte first.
        fcs := not crc;
        send_byte(rmii, fcs(7 downto 0));
        send_byte(rmii, fcs(15 downto 8));
        send_byte(rmii, fcs(23 downto 16));
        send_byte(rmii, fcs(31 downto 24));

        wait until rising_edge(rmii.clk);
        rmii.crs_dv <= '0';
        rmii.rxer <= '0';
        rmii.rxd <= (others => '0');
    end procedure;

    

end package body;
