library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.udp_engine_pkg.all;

entity udp_status_manager is
    port (
        axi_aclk    : in  std_logic;
        axi_aresetn : in  std_logic;

        S_AXI_AWADDR  : in  std_logic_vector(31 downto 0);
        S_AXI_AWPROT  : in  std_logic_vector(2 downto 0);
        S_AXI_AWVALID : in  std_logic;
        S_AXI_AWREADY : out std_logic;
        S_AXI_WDATA   : in  std_logic_vector(31 downto 0);
        S_AXI_WSTRB   : in  std_logic_vector(3 downto 0);
        S_AXI_WVALID  : in  std_logic;
        S_AXI_WREADY  : out std_logic;
        S_AXI_BRESP   : out std_logic_vector(1 downto 0);
        S_AXI_BVALID  : out std_logic;
        S_AXI_BREADY  : in  std_logic;

        S_AXI_ARADDR  : in  std_logic_vector(31 downto 0);
        S_AXI_ARPROT  : in  std_logic_vector(2 downto 0);
        S_AXI_ARVALID : in  std_logic;
        S_AXI_ARREADY : out std_logic;
        S_AXI_RDATA   : out std_logic_vector(31 downto 0);
        S_AXI_RRESP   : out std_logic_vector(1 downto 0);
        S_AXI_RVALID  : out std_logic;
        S_AXI_RREADY  : in  std_logic;

        i_rx_commit_valid  : in std_logic;
        i_rx_commit_socket : in std_logic;
        i_tx_release_valid : in std_logic;

        o_dma_base_addr    : out std_logic_vector(31 downto 0);
        o_local_ipv4_addr  : out std_logic_vector(31 downto 0);
        o_subnet_mask      : out std_logic_vector(31 downto 0);
        o_default_gateway  : out std_logic_vector(31 downto 0);
        o_socket0_enable   : out std_logic;
        o_socket0_port     : out std_logic_vector(15 downto 0);
        o_socket1_enable   : out std_logic;
        o_socket1_port     : out std_logic_vector(15 downto 0);
        o_rx0_head_ptr     : out t_queue_ptr;
        o_rx0_tail_ptr     : out t_queue_ptr;
        o_rx1_head_ptr     : out t_queue_ptr;
        o_rx1_tail_ptr     : out t_queue_ptr;
        o_tx_head_ptr      : out t_queue_ptr;
        o_tx_tail_ptr      : out t_queue_ptr;
        o_network_config_changed : out std_logic
    );
end entity;

architecture rtl of udp_status_manager is
    constant C_AXI_OKAY   : std_logic_vector(1 downto 0) := "00";
    constant C_AXI_SLVERR : std_logic_vector(1 downto 0) := "10";

    type t_write_state is (W_ADDR, W_DATA, W_UPDATE, W_RESP);
    type t_read_state is (R_ADDR, R_RESP);

    signal write_state : t_write_state;
    signal read_state  : t_read_state;
    signal write_addr  : std_logic_vector(31 downto 0);
    signal write_data  : std_logic_vector(31 downto 0);
    signal write_strb  : std_logic_vector(3 downto 0);
    signal bresp_reg   : std_logic_vector(1 downto 0);
    signal rdata_reg   : std_logic_vector(31 downto 0);
    signal rresp_reg   : std_logic_vector(1 downto 0);

    signal dma_base_reg : std_logic_vector(31 downto 0);
    signal rx0_config_reg : std_logic_vector(31 downto 0);
    signal rx1_config_reg : std_logic_vector(31 downto 0);
    signal local_ip_reg : std_logic_vector(31 downto 0);
    signal subnet_mask_reg : std_logic_vector(31 downto 0);
    signal gateway_reg : std_logic_vector(31 downto 0);
    signal rx0_head_reg, rx0_tail_reg : t_queue_ptr;
    signal rx1_head_reg, rx1_tail_reg : t_queue_ptr;
    signal tx_head_reg, tx_tail_reg : t_queue_ptr;
    signal config_changed_reg : std_logic;

    function apply_wstrb(
        old_value : std_logic_vector(31 downto 0);
        new_value : std_logic_vector(31 downto 0);
        strb      : std_logic_vector(3 downto 0)
    ) return std_logic_vector is
        variable result : std_logic_vector(31 downto 0) := old_value;
    begin
        for byte_index in 0 to 3 loop
            if strb(byte_index) = '1' then
                result((byte_index * 8) + 7 downto byte_index * 8) :=
                    new_value((byte_index * 8) + 7 downto byte_index * 8);
            end if;
        end loop;
        return result;
    end function;
begin
    S_AXI_AWREADY <= '1' when write_state = W_ADDR else '0';
    S_AXI_WREADY  <= '1' when write_state = W_DATA else '0';
    S_AXI_BVALID  <= '1' when write_state = W_RESP else '0';
    S_AXI_BRESP   <= bresp_reg;

    S_AXI_ARREADY <= '1' when read_state = R_ADDR else '0';
    S_AXI_RVALID  <= '1' when read_state = R_RESP else '0';
    S_AXI_RDATA   <= rdata_reg;
    S_AXI_RRESP   <= rresp_reg;

    o_dma_base_addr   <= dma_base_reg;
    o_local_ipv4_addr <= local_ip_reg;
    o_subnet_mask     <= subnet_mask_reg;
    o_default_gateway <= gateway_reg;
    o_socket0_enable  <= rx0_config_reg(31);
    o_socket0_port    <= rx0_config_reg(15 downto 0);
    o_socket1_enable  <= rx1_config_reg(31);
    o_socket1_port    <= rx1_config_reg(15 downto 0);
    o_rx0_head_ptr <= rx0_head_reg;
    o_rx0_tail_ptr <= rx0_tail_reg;
    o_rx1_head_ptr <= rx1_head_reg;
    o_rx1_tail_ptr <= rx1_tail_reg;
    o_tx_head_ptr  <= tx_head_reg;
    o_tx_tail_ptr  <= tx_tail_reg;
    o_network_config_changed <= config_changed_reg;

    process(axi_aclk)
        variable merged : std_logic_vector(31 downto 0);
        variable read_offset : natural range 0 to 255;
        variable ptr_value : t_queue_ptr;
    begin
        if rising_edge(axi_aclk) then
            if axi_aresetn = '0' then
                write_state <= W_ADDR;
                read_state <= R_ADDR;
                write_addr <= (others => '0');
                write_data <= (others => '0');
                write_strb <= (others => '0');
                bresp_reg <= C_AXI_OKAY;
                rdata_reg <= (others => '0');
                rresp_reg <= C_AXI_OKAY;

                dma_base_reg <= (others => '0');
                rx0_config_reg <= (others => '0');
                rx1_config_reg <= (others => '0');
                local_ip_reg <= (others => '0');
                subnet_mask_reg <= (others => '0');
                gateway_reg <= (others => '0');
                rx0_head_reg <= (others => '0');
                rx0_tail_reg <= (others => '0');
                rx1_head_reg <= (others => '0');
                rx1_tail_reg <= (others => '0');
                tx_head_reg <= (others => '0');
                tx_tail_reg <= (others => '0');
                config_changed_reg <= '0';
            else
                config_changed_reg <= '0';

                if i_rx_commit_valid = '1' then
                    if i_rx_commit_socket = '0' then
                        rx0_tail_reg <= rx_ptr_advance(rx0_tail_reg);
                    else
                        rx1_tail_reg <= rx_ptr_advance(rx1_tail_reg);
                    end if;
                end if;
                if i_tx_release_valid = '1' then
                    tx_head_reg <= tx_ptr_advance(tx_head_reg);
                end if;

                case write_state is
                    when W_ADDR =>
                        if S_AXI_AWVALID = '1' then
                            write_addr <= S_AXI_AWADDR;
                            write_state <= W_DATA;
                        end if;

                    when W_DATA =>
                        if S_AXI_WVALID = '1' then
                            write_data <= S_AXI_WDATA;
                            write_strb <= S_AXI_WSTRB;
                            write_state <= W_UPDATE;
                        end if;

                    when W_UPDATE =>
                        bresp_reg <= C_AXI_OKAY;
                        if write_addr(1 downto 0) /= "00" or write_addr(31 downto 8) /= x"000000" then
                            bresp_reg <= C_AXI_SLVERR;
                        else
                            case to_integer(unsigned(write_addr(7 downto 0))) is
                                when C_REG_DMA_BASE_ADDR =>
                                    merged := apply_wstrb(dma_base_reg, write_data, write_strb);
                                    if merged(1 downto 0) = "00" and
                                       unsigned(merged) <= unsigned'(x"FFFFC568") then
                                        dma_base_reg <= merged;
                                    else
                                        bresp_reg <= C_AXI_SLVERR;
                                    end if;

                                when C_REG_RX0_CONFIG =>
                                    rx0_config_reg <= apply_wstrb(rx0_config_reg, write_data, write_strb);

                                when C_REG_RX0_HEAD =>
                                    merged := (others => '0');
                                    merged(2 downto 0) := rx0_head_reg;
                                    merged := apply_wstrb(merged, write_data, write_strb);
                                    ptr_value := merged(2 downto 0);
                                    if merged(31 downto 3) = (merged(31 downto 3)'range => '0') and rx_ptr_valid(ptr_value) then
                                        rx0_head_reg <= ptr_value;
                                    else
                                        bresp_reg <= C_AXI_SLVERR;
                                    end if;

                                when C_REG_RX1_CONFIG =>
                                    rx1_config_reg <= apply_wstrb(rx1_config_reg, write_data, write_strb);

                                when C_REG_RX1_HEAD =>
                                    merged := (others => '0');
                                    merged(2 downto 0) := rx1_head_reg;
                                    merged := apply_wstrb(merged, write_data, write_strb);
                                    ptr_value := merged(2 downto 0);
                                    if merged(31 downto 3) = (merged(31 downto 3)'range => '0') and rx_ptr_valid(ptr_value) then
                                        rx1_head_reg <= ptr_value;
                                    else
                                        bresp_reg <= C_AXI_SLVERR;
                                    end if;

                                when C_REG_TX_TAIL =>
                                    merged := (others => '0');
                                    merged(2 downto 0) := tx_tail_reg;
                                    merged := apply_wstrb(merged, write_data, write_strb);
                                    if merged(31 downto 3) = (merged(31 downto 3)'range => '0') then
                                        tx_tail_reg <= merged(2 downto 0);
                                    else
                                        bresp_reg <= C_AXI_SLVERR;
                                    end if;

                                when C_REG_LOCAL_IPV4 =>
                                    merged := apply_wstrb(local_ip_reg, write_data, write_strb);
                                    local_ip_reg <= merged;
                                    config_changed_reg <= '1';

                                when C_REG_SUBNET_MASK =>
                                    merged := apply_wstrb(subnet_mask_reg, write_data, write_strb);
                                    subnet_mask_reg <= merged;
                                    config_changed_reg <= '1';

                                when C_REG_DEFAULT_GATEWAY =>
                                    merged := apply_wstrb(gateway_reg, write_data, write_strb);
                                    gateway_reg <= merged;
                                    config_changed_reg <= '1';

                                when others =>
                                    bresp_reg <= C_AXI_SLVERR;
                            end case;
                        end if;
                        write_state <= W_RESP;

                    when W_RESP =>
                        if S_AXI_BREADY = '1' then
                            write_state <= W_ADDR;
                        end if;
                end case;

                case read_state is
                    when R_ADDR =>
                        if S_AXI_ARVALID = '1' then
                            rdata_reg <= (others => '0');
                            rresp_reg <= C_AXI_OKAY;
                            if S_AXI_ARADDR(1 downto 0) /= "00" or S_AXI_ARADDR(31 downto 8) /= x"000000" then
                                rresp_reg <= C_AXI_SLVERR;
                            else
                                read_offset := to_integer(unsigned(S_AXI_ARADDR(7 downto 0)));
                                case read_offset is
                                    when C_REG_DMA_BASE_ADDR => rdata_reg <= dma_base_reg;
                                    when C_REG_RX0_CONFIG => rdata_reg <= rx0_config_reg;
                                    when C_REG_RX0_HEAD => rdata_reg(2 downto 0) <= rx0_head_reg;
                                    when C_REG_RX0_TAIL => rdata_reg(2 downto 0) <= rx0_tail_reg;
                                    when C_REG_RX1_CONFIG => rdata_reg <= rx1_config_reg;
                                    when C_REG_RX1_HEAD => rdata_reg(2 downto 0) <= rx1_head_reg;
                                    when C_REG_RX1_TAIL => rdata_reg(2 downto 0) <= rx1_tail_reg;
                                    when C_REG_TX_HEAD => rdata_reg(2 downto 0) <= tx_head_reg;
                                    when C_REG_TX_TAIL => rdata_reg(2 downto 0) <= tx_tail_reg;
                                    when C_REG_LOCAL_IPV4 => rdata_reg <= local_ip_reg;
                                    when C_REG_SUBNET_MASK => rdata_reg <= subnet_mask_reg;
                                    when C_REG_DEFAULT_GATEWAY => rdata_reg <= gateway_reg;
                                    when others => rresp_reg <= C_AXI_SLVERR;
                                end case;
                            end if;
                            read_state <= R_RESP;
                        end if;

                    when R_RESP =>
                        if S_AXI_RREADY = '1' then
                            read_state <= R_ADDR;
                        end if;
                end case;
            end if;
        end if;
    end process;
end architecture;
