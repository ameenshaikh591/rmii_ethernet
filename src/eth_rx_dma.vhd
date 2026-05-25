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

        -- AXI master write interface --------------
        -- Allows DMA to perform writes to memory --
        --------------------------------------------
        M_AXI_ACLK : in std_logic;
        M_AXI_ARESETN : in std_logic;

        -- AXI write address channel
        M_AXI_AWADDR  : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
        M_AXI_AWPROT  : out std_logic_vector(2 downto 0);
        M_AXI_AWVALID : out std_logic;
        M_AXI_AWREADY : in std_logic;

        -- AXI write data channel
        M_AXI_WDATA : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
        M_AXI_WSTRB : out std_logic_vector((C_M_AXI_DATA_WIDTH/8)-1 downto 0);
        M_AXI_WVALID : out std_logic;
        M_AXI_WREADY : in  std_logic;

        -- AXI write response channel
        M_AXI_BRESP : in  std_logic_vector(1 downto 0);
        M_AXI_BVALID : in  std_logic;
        M_AXI_BREADY : out std_logic
    );
end entity;

architecture rtl of eth_rx_dma is
    signal dma_clk : std_logic; 
    signal dma_resetn : std_logic;

    type t_dma_state is
        ( s_A, s_B, );
    signal state_reg : t_dma_state;
    signal state_next : t_dma_state;
begin

    dma_clk <= S_AXI_ACLK;
    dma_resetn <= S_AXI_ARESETN;

    process(dma_clk) is
    begin
        if rising_edge(dma_clk) then
            if (dma_resetn = '0') then

            else

            end if;
        end if;
    end process;

    process(all) is
    begin

        -- Defaults
        state_next <= state_reg;

        case state_reg is

            when s_A =>
                if (i_rx_fifo_empty = '0') then
                    o_rx_fifo_rd_en <= '1'; 
                    -- Read latency is 1, so need to wait until next cycle to read 'i_rx_fifo_dout'
                    state_next <= s_B;
                end if;

            when
        end case;
    end process;

end architecture;