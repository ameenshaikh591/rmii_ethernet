-- AXI4-Lite slave handshake implementation:
-- Registered 'S_AXI_xREADY' outputs avoid AXI input-to-output combinational paths
-- Live 'S_AXI_xVALID' inputs are used to avoid an extra cycle of latency and improve throughput


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dma_status_manager is
    generic (
        C_M_AXI_ADDR_WIDTH : integer := 32;
        C_M_AXI_DATA_WIDTH : integer := 32;
        C_S_AXI_ADDR_WIDTH : integer := 32;
        C_S_AXI_DATA_WIDTH : integer := 32
    );

    port (
        -- reset and clock
        i_aresetn : in std_logic;
        i_aclk    : in std_logic;

        -- Interface to DMA AXI writer
        o_wr_addr_valid : out std_logic;
        i_wr_addr_ready : in std_logic;
        o_wr_base_addr  : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
        i_frame_done    : in std_logic;

        -- AXI4-Lite write address channel
        S_AXI_AWADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_AWPROT  : in  std_logic_vector(2 downto 0);
        S_AXI_AWVALID : in  std_logic;
        S_AXI_AWREADY : out std_logic;

        -- AXI4-Lite write data channel
        S_AXI_WDATA   : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_WSTRB   : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        S_AXI_WVALID  : in  std_logic;
        S_AXI_WREADY  : out std_logic;

        -- AXI4-Lite write response channel
        S_AXI_BRESP   : out std_logic_vector(1 downto 0);
        S_AXI_BVALID  : out std_logic;
        S_AXI_BREADY  : in  std_logic;

        -- AXI4-Lite read address channel
        S_AXI_ARADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_ARPROT  : in  std_logic_vector(2 downto 0);
        S_AXI_ARVALID : in  std_logic;
        S_AXI_ARREADY : out std_logic;

        -- AXI4-Lite read data channel
        S_AXI_RDATA   : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_RRESP   : out std_logic_vector(1 downto 0);
        S_AXI_RVALID  : out std_logic;
        S_AXI_RREADY  : in  std_logic
    );
end entity;

architecture rtl of dma_status_manager is

    constant PAYLOAD_REGION_BASE_ADDR_REG : std_logic_vector(3 downto 0) := x"0";
    constant HEAD_ADVANCE_REG             : std_logic_vector(3 downto 0) := x"4";
    constant c_HEAD_REG                   : std_logic_vector(3 downto 0) := x"8";
    constant c_TAIL_REG                   : std_logic_vector(3 downto 0) := x"C";

    constant BRESP_OKAY   : std_logic_vector(1 downto 0) := "00";
    constant BRESP_SLVERR : std_logic_vector(1 downto 0) := "10";

    constant RRESP_OKAY   : std_logic_vector(1 downto 0) := "00";
    constant RRESP_SLVERR : std_logic_vector(1 downto 0) := "10";

    type t_axi4_lite_controller_state is
        (S_IDLE, S_UPDATE_REG, S_WRITE_RESP);

    signal state_reg  : t_axi4_lite_controller_state;
    signal state_next : t_axi4_lite_controller_state;

    type t_axi4_lite_read_state is
        (S_READ_IDLE, S_READ_RESP);

    signal read_state_reg  : t_axi4_lite_read_state;
    signal read_state_next : t_axi4_lite_read_state;

    type t_dma_status_state is
        (S_DMA_IDLE, S_ISSUE_VALID, S_WAIT_FRAME_DONE, S_PUBLISH_TAIL);

    signal dma_state_reg  : t_dma_status_state;
    signal dma_state_next : t_dma_status_state;

    signal rx_payload_region_base_addr_reg  : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    signal rx_payload_region_base_addr_next : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);

    signal axi4_lite_wr_addr_offset_reg  : std_logic_vector(3 downto 0);
    signal axi4_lite_wr_addr_offset_next : std_logic_vector(3 downto 0);

    signal axi4_lite_rd_addr_offset_reg  : std_logic_vector(3 downto 0);
    signal axi4_lite_rd_addr_offset_next : std_logic_vector(3 downto 0);

    signal rx_payload_region_base_addr_valid_reg  : std_logic;
    signal rx_payload_region_base_addr_valid_next : std_logic;

    signal axi4_lite_wr_data_reg  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal axi4_lite_wr_data_next : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);

    signal axi4_lite_rd_data_reg  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal axi4_lite_rd_data_next : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);

    signal awready_reg  : std_logic;
    signal awready_next : std_logic;

    signal wready_reg  : std_logic;
    signal wready_next : std_logic;

    signal bvalid_reg  : std_logic;
    signal bvalid_next : std_logic;

    signal arready_reg  : std_logic;
    signal arready_next : std_logic;

    signal rvalid_reg  : std_logic;
    signal rvalid_next : std_logic;

    signal aw_seen_reg  : std_logic;
    signal aw_seen_next : std_logic;

    signal w_seen_reg  : std_logic;
    signal w_seen_next : std_logic;

    signal head_reg  : unsigned(1 downto 0);
    signal head_next : unsigned(1 downto 0);

    signal tail_reg  : unsigned(1 downto 0);
    signal tail_next : unsigned(1 downto 0);

    signal bresp_reg  : std_logic_vector(1 downto 0);
    signal bresp_next : std_logic_vector(1 downto 0);

    signal rresp_reg  : std_logic_vector(1 downto 0);
    signal rresp_next : std_logic_vector(1 downto 0);

    function increment_ptr(
        ptr_reg : unsigned(1 downto 0)
    ) return unsigned is
    begin
        return ptr_reg + 1;
    end function;

begin

    process(i_aclk)
    begin
        if rising_edge(i_aclk) then
            if (i_aresetn = '0') then

                state_reg <= S_IDLE;
                read_state_reg <= S_READ_IDLE;
                dma_state_reg <= S_DMA_IDLE;

                awready_reg <= '1';
                wready_reg <= '1';
                bvalid_reg <= '0';

                arready_reg <= '1';
                rvalid_reg <= '0';

                aw_seen_reg <= '0';
                w_seen_reg <= '0';

                rx_payload_region_base_addr_reg <= (others => '0');
                rx_payload_region_base_addr_valid_reg <= '0';

                axi4_lite_wr_addr_offset_reg <= (others => '0');
                -- axi4_lite_wr_data_reg <= (others => '0');

                axi4_lite_rd_addr_offset_reg <= (others => '0');
                -- axi4_lite_rd_data_reg <= (others => '0');

                head_reg <= (others => '0');
                tail_reg <= (others => '0');

                bresp_reg <= BRESP_OKAY;
                rresp_reg <= RRESP_OKAY;

            else

                state_reg <= state_next;
                read_state_reg <= read_state_next;
                dma_state_reg <= dma_state_next;

                awready_reg <= awready_next;
                wready_reg <= wready_next;
                bvalid_reg <= bvalid_next;

                arready_reg <= arready_next;
                rvalid_reg <= rvalid_next;

                aw_seen_reg <= aw_seen_next;
                w_seen_reg <= w_seen_next;

                rx_payload_region_base_addr_reg <= rx_payload_region_base_addr_next;
                rx_payload_region_base_addr_valid_reg <= rx_payload_region_base_addr_valid_next;

                axi4_lite_wr_addr_offset_reg <= axi4_lite_wr_addr_offset_next;
                axi4_lite_wr_data_reg <= axi4_lite_wr_data_next;

                axi4_lite_rd_addr_offset_reg <= axi4_lite_rd_addr_offset_next;
                axi4_lite_rd_data_reg <= axi4_lite_rd_data_next;

                head_reg <= head_next;
                tail_reg <= tail_next;

                bresp_reg <= bresp_next;
                rresp_reg <= rresp_next;

            end if;
        end if;
    end process;

    -- AXI4-Lite write-side controller
    process(all)

        variable aw_accept : std_logic;
        variable w_accept  : std_logic;
        variable b_accept  : std_logic;

    begin

        -- Defaults
        state_next <= state_reg;

        awready_next <= awready_reg;
        wready_next <= wready_reg;
        bvalid_next <= bvalid_reg;

        aw_seen_next <= aw_seen_reg;
        w_seen_next <= w_seen_reg;

        rx_payload_region_base_addr_next <= rx_payload_region_base_addr_reg;
        rx_payload_region_base_addr_valid_next <= rx_payload_region_base_addr_valid_reg;

        axi4_lite_wr_addr_offset_next <= axi4_lite_wr_addr_offset_reg;
        axi4_lite_wr_data_next <= axi4_lite_wr_data_reg;

        head_next <= head_reg;

        bresp_next <= bresp_reg;

        S_AXI_AWREADY <= awready_reg;
        S_AXI_WREADY <= wready_reg;

        S_AXI_BVALID <= bvalid_reg;
        S_AXI_BRESP <= bresp_reg;

        aw_accept := S_AXI_AWVALID and awready_reg;
        w_accept := S_AXI_WVALID and wready_reg;
        b_accept := bvalid_reg and S_AXI_BREADY;

        case state_reg is

            when S_IDLE =>

                if (aw_accept = '1') then
                    aw_seen_next <= '1';
                    axi4_lite_wr_addr_offset_next <= S_AXI_AWADDR(3 downto 0);
                    awready_next <= '0';
                end if;

                if (w_accept = '1') then
                    w_seen_next <= '1';
                    axi4_lite_wr_data_next <= S_AXI_WDATA;
                    wready_next <= '0';
                end if;

                if ((aw_seen_reg = '1' or aw_accept = '1') and
                    (w_seen_reg = '1' or w_accept = '1')) then

                    state_next <= S_UPDATE_REG;

                end if;

            when S_UPDATE_REG =>

                case axi4_lite_wr_addr_offset_reg is

                    when PAYLOAD_REGION_BASE_ADDR_REG =>

                        rx_payload_region_base_addr_next <= axi4_lite_wr_data_reg(C_M_AXI_ADDR_WIDTH-1 downto 0);
                        rx_payload_region_base_addr_valid_next <= '1';

                        bresp_next <= BRESP_OKAY;

                    when HEAD_ADVANCE_REG =>

                        head_next <= increment_ptr(head_reg);
                        bresp_next <= BRESP_OKAY;

                    when others =>

                        bresp_next <= BRESP_SLVERR;

                end case;

                aw_seen_next <= '0';
                w_seen_next <= '0';

                bvalid_next <= '1';
                state_next <= S_WRITE_RESP;

            when S_WRITE_RESP =>

                if (b_accept = '1') then
                    bvalid_next <= '0';

                    awready_next <= '1';
                    wready_next <= '1';

                    state_next <= S_IDLE;
                end if;

        end case;

    end process;

    -- AXI4-Lite read-side controller
    process(all)

        variable ar_accept : std_logic;
        variable r_accept  : std_logic;

    begin

        -- Defaults
        read_state_next <= read_state_reg;

        arready_next <= arready_reg;
        rvalid_next <= rvalid_reg;

        axi4_lite_rd_addr_offset_next <= axi4_lite_rd_addr_offset_reg;
        axi4_lite_rd_data_next <= axi4_lite_rd_data_reg;

        rresp_next <= rresp_reg;

        S_AXI_ARREADY <= arready_reg;

        S_AXI_RDATA <= axi4_lite_rd_data_reg;
        S_AXI_RRESP <= rresp_reg;
        S_AXI_RVALID <= rvalid_reg;

        ar_accept := S_AXI_ARVALID and arready_reg;
        r_accept := rvalid_reg and S_AXI_RREADY;

        case read_state_reg is

            when S_READ_IDLE =>

                if (ar_accept = '1') then

                    arready_next <= '0';

                    axi4_lite_rd_addr_offset_next <= S_AXI_ARADDR(3 downto 0);

                    case S_AXI_ARADDR(3 downto 0) is

                        when c_HEAD_REG =>

                            axi4_lite_rd_data_next <= (others => '0');
                            axi4_lite_rd_data_next(head_reg'length-1 downto 0) <= std_logic_vector(head_reg);
                            rresp_next <= RRESP_OKAY;

                        when c_TAIL_REG =>

                            axi4_lite_rd_data_next <= (others => '0');
                            axi4_lite_rd_data_next(tail_reg'length-1 downto 0) <= std_logic_vector(tail_reg);
                            rresp_next <= RRESP_OKAY;

                        when others =>

                            axi4_lite_rd_data_next <= (others => '0');
                            rresp_next <= RRESP_SLVERR;

                    end case;

                    rvalid_next <= '1';
                    read_state_next <= S_READ_RESP;

                end if;

            when S_READ_RESP =>

                if (r_accept = '1') then
                    rvalid_next <= '0';
                    arready_next <= '1';

                    read_state_next <= S_READ_IDLE;
                end if;

        end case;

    end process;

    -- DMA status controller
    process(all)

        variable next_tail : unsigned(1 downto 0);
        variable entry_offset : unsigned(C_M_AXI_ADDR_WIDTH-1 downto 0);
        variable entry_addr : unsigned(C_M_AXI_ADDR_WIDTH-1 downto 0);

    begin

        -- Defaults
        dma_state_next <= dma_state_reg;

        tail_next <= tail_reg;

        o_wr_addr_valid <= '0';
        o_wr_base_addr <= (others => '0');

        next_tail := increment_ptr(tail_reg);

        entry_offset := shift_left(resize(tail_reg, C_M_AXI_ADDR_WIDTH), 8);
        entry_addr := unsigned(rx_payload_region_base_addr_reg) + entry_offset;

        case dma_state_reg is

            when S_DMA_IDLE =>

                if (rx_payload_region_base_addr_valid_reg = '1') then
                    dma_state_next <= S_ISSUE_VALID;
                end if;

            when S_ISSUE_VALID =>

                o_wr_addr_valid <= '1';
                o_wr_base_addr <= std_logic_vector(entry_addr);

                if (i_wr_addr_ready = '1') then
                    dma_state_next <= S_WAIT_FRAME_DONE;
                end if;

            when S_WAIT_FRAME_DONE =>

                if (i_frame_done = '1') then
                    dma_state_next <= S_PUBLISH_TAIL;
                end if;

            when S_PUBLISH_TAIL =>

                if (next_tail = head_reg) then

                    dma_state_next <= S_PUBLISH_TAIL;

                else

                    tail_next <= next_tail;
                    dma_state_next <= S_ISSUE_VALID;

                end if;

        end case;

    end process;

end architecture;