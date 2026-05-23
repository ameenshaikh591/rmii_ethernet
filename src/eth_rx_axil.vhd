library ieee;
use ieee.std_logic_1164.all;

entity eth_rx_axil is
    generic (
        C_S_AXI_DATA_WIDTH : integer := 32;
        C_S_AXI_ADDR_WIDTH : integer := 32
    );
    port (
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

        -- RX Fifo ports
        rx_fifo_empty : in std_logic;
        rx_fifo_dout : in std_logic_vector(9 downto 0);
        rx_fifo_rd_en : out std_logic
    );
end entity;

architecture rtl of eth_rx_axil is
    type t_write_state is (IDLE_S, WRITE_S, WRITE_RESPONSE_S);
    signal curr_write_state : t_write_state;
    signal next_write_state : t_write_state;

    signal curr_awready : std_logic;
    signal next_awready : std_logic;

    signal curr_wready : std_logic;
    signal next_wready : std_logic;

    signal curr_bresp : std_logic_vector(1 downto 0);
    signal next_bresp : std_logic_vector(1 downto 0);

    signal curr_bvalid : std_logic;
    signal next_bvalid : std_logic;

    signal curr_write_addr_valid : std_logic;
    signal next_write_addr_valid : std_logic;

    signal curr_write_data_valid : std_logic;
    signal next_write_data_valid : std_logic;

    signal curr_write_addr : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    signal next_write_addr : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);

    signal curr_write_data : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal next_write_data : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);

    type t_read_state is (IDLE_S, READ_S, READ_FIFO_S, READ_RESPONSE_S);
    signal curr_read_state : t_read_state;
    signal next_read_state : t_read_state;

    signal curr_arready : std_logic;
    signal next_arready : std_logic;

    signal curr_read_addr : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    signal next_read_addr : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);

    signal curr_read_data : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal next_read_data : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);

    signal curr_rresp : std_logic_vector(1 downto 0);
    signal next_rresp : std_logic_vector(1 downto 0);

    signal curr_rvalid : std_logic;
    signal next_rvalid : std_logic;

    constant STATUS_ADDR : std_logic_vector(3 downto 0) := "0000";
    constant RX_DATA_ADDR : std_logic_vector(3 downto 0) := "0100";

begin

    S_AXI_AWREADY <= curr_awready;
    S_AXI_WREADY <= curr_wready;
    S_AXI_BRESP <= curr_bresp;
    S_AXI_BVALID <= curr_bvalid;

    S_AXI_ARREADY <= curr_arready;
    S_AXI_RDATA <= curr_read_data;
    S_AXI_RRESP <= curr_rresp;
    S_AXI_RVALID <= curr_rvalid;

    -- Write-side clocked process
    process(S_AXI_ACLK) is
    begin
        if rising_edge(S_AXI_ACLK) then
            if (S_AXI_ARESETN = '0') then
                curr_write_state <= IDLE_S;
                curr_awready <= '1';
                curr_wready <= '1';
                curr_bresp <= (others => '0');
                curr_bvalid <= '0';
                curr_write_addr_valid <= '0';
                curr_write_data_valid <= '0';
                curr_write_addr <= (others => '0');
                curr_write_data <= (others => '0');
            else
                curr_write_state <= next_write_state;
                curr_awready <= next_awready;
                curr_wready <= next_wready;
                curr_bresp <= next_bresp;
                curr_bvalid <= next_bvalid;
                curr_write_addr_valid <= next_write_addr_valid;
                curr_write_data_valid <= next_write_data_valid;
                curr_write_addr <= next_write_addr;
                curr_write_data <= next_write_data;
            end if;
        end if;
    end process;

    -- Write-side combinational process
    process(all) is
    begin
        next_write_state <= curr_write_state;
        next_awready <= curr_awready;
        next_wready <= curr_wready;
        next_bresp <= curr_bresp;
        next_bvalid <= curr_bvalid;
        next_write_addr_valid <= curr_write_addr_valid;
        next_write_data_valid <= curr_write_data_valid;
        next_write_addr <= curr_write_addr;
        next_write_data <= curr_write_data;

        case curr_write_state is
            when IDLE_S =>
                if (S_AXI_AWVALID = '1' and curr_awready = '1') then
                    next_write_addr <= S_AXI_AWADDR;
                    next_write_addr_valid <= '1';
                    next_awready <= '0';
                end if;

                if (S_AXI_WVALID = '1' and curr_wready = '1') then
                    next_write_data <= S_AXI_WDATA;
                    next_write_data_valid <= '1';
                    next_wready <= '0';
                end if;

                if (next_write_addr_valid = '1' and next_write_data_valid = '1') then
                    next_write_state <= WRITE_S;
                end if;

            when WRITE_S =>
                -- Add implementation-specific write address decode here.
                next_bresp <= "00";
                next_bvalid <= '1';
                next_write_state <= WRITE_RESPONSE_S;

            when WRITE_RESPONSE_S =>
                if (S_AXI_BREADY = '1' and curr_bvalid = '1') then
                    next_bvalid <= '0';
                    next_awready <= '1';
                    next_wready <= '1';
                    next_write_addr_valid <= '0';
                    next_write_data_valid <= '0';
                    next_write_state <= IDLE_S;
                end if;
        end case;
    end process;

    -- Read-side clocked process
    process(S_AXI_ACLK) is
    begin
        if rising_edge(S_AXI_ACLK) then
            if (S_AXI_ARESETN = '0') then
                curr_read_state <= IDLE_S;
                curr_arready <= '1';
                curr_read_addr <= (others => '0');
                curr_read_data <= (others => '0');
                curr_rresp <= (others => '0');
                curr_rvalid <= '0';
            else
                curr_read_state <= next_read_state;
                curr_arready <= next_arready;
                curr_read_addr <= next_read_addr;
                curr_read_data <= next_read_data;
                curr_rresp <= next_rresp;
                curr_rvalid <= next_rvalid;
            end if;
        end if;
    end process;

    -- Read-side combinational process
    process(all) is
    begin
        next_read_state <= curr_read_state;
        next_arready <= curr_arready;
        next_read_addr <= curr_read_addr;
        next_read_data <= curr_read_data;
        next_rresp <= curr_rresp;
        next_rvalid <= curr_rvalid;
        rx_fifo_rd_en <= '0';

        case curr_read_state is
            when IDLE_S =>
                if (S_AXI_ARVALID = '1' and curr_arready = '1') then
                    next_read_addr <= S_AXI_ARADDR;
                    next_arready <= '0';
                    next_read_state <= READ_S;
                end if;

            when READ_S =>
                next_read_data <= (others => '0');
                next_rresp <= "00";
                if (curr_read_addr(3 downto 0) = STATUS_ADDR) then
                    next_read_data(0) <= rx_fifo_empty;
                    next_rvalid <= '1';
                    next_read_state <= READ_RESPONSE_S;

                elsif (curr_read_addr(3 downto 0) = RX_DATA_ADDR) then
                    if (rx_fifo_empty = '0') then
                        rx_fifo_rd_en <= '1';
                        next_read_state <= READ_FIFO_S;
                    else
                        -- Error: Cannot pop from an empty FIFO
                        next_rresp <= "10";
                        next_rvalid <= '1';
                        next_read_state <= READ_RESPONSE_S;
                    end if;

                else
                    next_rresp <= "10";
                    next_rvalid <= '1';
                    next_read_state <= READ_RESPONSE_S;
                end if;

            when READ_FIFO_S =>
                next_read_data <= (others => '0');
                next_read_data(9 downto 0) <= rx_fifo_dout;
                next_rresp <= "00";
                next_rvalid <= '1';
                next_read_state <= READ_RESPONSE_S;

            when READ_RESPONSE_S =>
                if (S_AXI_RREADY = '1' and curr_rvalid = '1') then
                    next_rvalid <= '0';
                    next_arready <= '1';
                    next_read_state <= IDLE_S;
                end if;
        end case;
    end process;

end architecture;
