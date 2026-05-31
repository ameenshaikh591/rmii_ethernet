library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dma_status_manager is

    constant C_M_AXI_ADDR_WIDTH : integer := 32;
    constant C_M_AXI_DATA_WIDTH : integer := 32;

    port (
        -- reset and clock
        i_aresetn : in std_logic;
        i_aclk : in std_logic; 

        -- Interface to DMA AXI writer --
        ---------------------------------
        o_wr_addr_valid : out std_logic;
        i_wr_addr_ready : in std_logic;
        o_wr_base_addr  : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
        i_frame_done    : in std_logic;


        -- Interface to interconnect (AXI4-Lite) --
        -------------------------------------------
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
    );
end entity;

architecture rtl of dma_status_manager is

    signal rx_payload_region_base_addr_reg : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    signal rx_payload_region_base_addr_next : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);

    process(i_aclk) is
    begin
        if rising_edge(i_aclk) then
            if (i_aresetn = '0') then
            else
            end if;
        end if;
    end process;

    process(all) is
    begin
    
    end process;

begin

end architecture;