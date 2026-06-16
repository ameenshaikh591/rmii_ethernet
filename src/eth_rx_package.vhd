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

    procedure axil_read(
        signal clk : in std_logic;
        signal axil : inout t_axil_bus;
        constant rd_addr : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        variable rd_data : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        variable rd_resp : out std_logic_vector(1 downto 0)
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
        constant data : in t_DATA;
        constant payload_length : in integer
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
        variable b_seen  : boolean := false;
    begin

        -- Synchronize with 'clk'
        wait until rising_edge(clk);
        wait for 1 ns;

        -- Drive defaults/unused
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

        while (not b_seen) loop

            if (axil.bvalid = '1') then
                b_seen := true;
                resp := axil.bresp;
            end if;

            wait until rising_edge(clk);
            wait for 1 ns;

            if (b_seen) then
                axil.bready <= '0';
            end if;

        end loop;


    end axil_write;

    procedure axil_read(
        signal clk : in std_logic;
        signal axil : inout t_axil_bus;
        constant rd_addr : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        variable rd_data : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        variable rd_resp : out std_logic_vector(1 downto 0)
    ) is
        variable ar_seen : boolean := false;
        variable r_seen : boolean := false;
    begin
        wait until rising_edge(clk);
        wait for 1 ns;

        -- Drive defaults/unused
        axil.arprot <= "000";

        axil.rready <= '0';

        axil.arvalid <= '1';
        axil.araddr <= rd_addr;

        while (not ar_seen) loop
            if (axil.arready = '1') then
                ar_seen := true;
            end if;

            wait until rising_edge(clk);
            wait for 1 ns;

            if (ar_seen) then
                axil.arvalid <= '0';
            end if;
        end loop;

        axil.rready <= '1';

        while (not r_seen) loop
            if (axil.rvalid = '1') then
                r_seen := true;
                rd_data := axil.rdata;
                rd_resp := axil.rresp;
            end if;

            wait until rising_edge(clk);
            wait for 1 ns;

            if (r_seen) then
                axil.rready <= '0';
            end if;
        end loop;
    end axil_read;

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
        constant data : in t_DATA;
        constant payload_length : in integer
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
        for i in 0 to (payload_length - 1) loop
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
