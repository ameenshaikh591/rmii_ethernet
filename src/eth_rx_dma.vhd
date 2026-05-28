library ieee;
use ieee.std_logic_1164.all;

entity eth_rx_dma is
    generic (
        C_S_AXI_DATA_WIDTH : integer := 32;
        C_S_AXI_ADDR_WIDTH : integer := 32;
        C_M_AXI_DATA_WIDTH : integer := 32;
        C_M_AXI_ADDR_WIDTH : integer := 32
    );
    port (
        -- RX FIFO-facing ports
        i_rx_fifo_empty : in std_logic;
        i_rx_fifo_dout  : in std_logic_vector(9 downto 0);
        o_rx_fifo_rd_en : out std_logic;

        -- AXI4-Lite slave interface --
        -- Allows CPU to program DMA --
        -------------------------------
        S_AXI_ACLK    : in  std_logic
        S_AXI_ARESETN : in  std_logic;

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
        S_AXI_RREADY  : in  std_logic;

        -- AXI master write interface
        M_AXI_ACLK    : in  std_logic;
        M_AXI_ARESETN : in  std_logic;

        -- Write address channel
        M_AXI_AWADDR  : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
        M_AXI_AWLEN   : out std_logic_vector(7 downto 0); -- burst length
        M_AXI_AWSIZE  : out std_logic_vector(2 downto 0); -- bytes per beat
        M_AXI_AWBURST : out std_logic_vector(1 downto 0); 
        M_AXI_AWPROT  : out std_logic_vector(2 downto 0);
        M_AXI_AWVALID : out std_logic;
        M_AXI_AWREADY : in  std_logic;

        -- Write data channel
        M_AXI_WDATA   : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
        M_AXI_WSTRB   : out std_logic_vector((C_M_AXI_DATA_WIDTH/8)-1 downto 0);
        M_AXI_WLAST   : out std_logic; -- asserted on final beat of burst
        M_AXI_WVALID  : out std_logic;
        M_AXI_WREADY  : in  std_logic;

        -- Write response channel
        M_AXI_BRESP   : in  std_logic_vector(1 downto 0);
        M_AXI_BVALID  : in  std_logic;
        M_AXI_BREADY  : out std_logic
    );
end entity;

architecture rtl of eth_rx_dma is

    constant INCR := x"1";

    constant ERROR_BIT  : integer := 8;
    constant LAST_BIT   : integer := 9;

    constant PAYLOAD_BUFFER_FULL : unsigned(3 downto 0) := 15;

    signal dma_clk : std_logic; 
    signal dma_resetn : std_logic;

    type t_dma_state is
        ( S_IDLE, S_HANDLE_ENTRY );
    signal state_reg    : t_dma_state;
    signal state_next   : t_dma_state;

    type t_payload_buf is array(0 to 15) of std_logic_vector(8 downto 0);
    signal payload_buf_reg : t_payload_buf;

    signal payload_buf_ctr_reg  : unsigned(3 downto 0);
    signal payload_buf_ctr_next : unsigned(3 downto 0); 
    
    function send_m_axi_valid 

begin

    M_AXI_AWBURST   <= INCR;
    M_AXI_AWPROT    <= x"0";
    M_AXI_AWLEN     <= x"3";
    M_AXI_AWSIZE    <= x"2";

    dma_clk <= S_AXI_ACLK;
    dma_resetn <= S_AXI_ARESETN;

    process(dma_clk) is
    begin
        if rising_edge(dma_clk) then
            if (dma_resetn = '0') then
                payload_buf_ctr_reg <= (others => '0');
                payload_buf_reg     <= (others => (others => '0'));
            else
                state_reg <= state_next;
                payload_buf_ctr_reg <= payload_buf_ctr_next;
                payload_buf_reg <= payload_buf_next;
            end if;
        end if;
    end process;

    process(all) is
        variable payload_byte : std_logic_vector(9 downto 0);
    begin

        -- Defaults
        o_rx_fifo_rd_en <= '0';
        state_next <= state_reg;
        payload_buf_next <= payload_buf_reg;
        payload_buf_ctr_next <= payload_buf_ctr_reg;

        case state_reg is

            when S_IDLE =>
                if (i_rx_fifo_empty = '0') then
                    o_rx_fifo_rd_en <= '1'; 
                    -- Read latency is 1, so need to wait until next cycle to read 'i_rx_fifo_dout'
                    state_next <= S_HANDLE_ENTRY;
                end if;

            when S_HANDLE_ENTRY =>
                payload_byte := i_rx_fifo_dout;
                if (payload_byte(ERROR_BIT) = '1') then
                    -- Error condition
                elsif (payload_byte(LAST_BIT) = '1') then
                    -- Last condition
                else
                    -- Normal payload

                    -- Store the byte
                    payload_buf_next(to_integer(payload_buf_ctr_reg));
                    
                    -- Increment 'payload_buf_ctr'
                    payload_buf_ctr_next <= payload_buf_ctr_reg + 1;
                    
                    if (payload_buf_ctr_reg = PAYLOAD_BUFFER_FULL) then




                    else



                    end if;
                end if;
        end case;
    end process;

end architecture;