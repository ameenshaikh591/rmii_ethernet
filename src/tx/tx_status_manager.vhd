library ieee;
use ieee.std_logic_1164.all;

entity tx_status_manager is
    port (
        -- AXI clock/reset
        axi_aclk    : in std_logic;
        axi_aresetn : in std_logic;

        -- AXI4-Lite write address channel
        S_AXI_AWADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_AWPROT  : in  std_logic_vector(2 downto 0);
        S_AXI_AWVALID : in  std_logic;
        S_AXI_AWREADY : out std_logic;

        -- AXI4-Lite write data channel
        S_AXI_WDATA  : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_WSTRB  : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        S_AXI_WVALID : in  std_logic;
        S_AXI_WREADY : out std_logic;

        -- AXI4-Lite write response channel
        S_AXI_BRESP  : out std_logic_vector(1 downto 0);
        S_AXI_BVALID : out std_logic;
        S_AXI_BREADY : in  std_logic;

        -- AXI4-Lite read address channel
        S_AXI_ARADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_ARPROT  : in  std_logic_vector(2 downto 0);
        S_AXI_ARVALID : in  std_logic;
        S_AXI_ARREADY : out std_logic;

        -- AXI4-Lite read data channel
        S_AXI_RDATA  : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_RRESP  : out std_logic_vector(1 downto 0);
        S_AXI_RVALID : out std_logic;
        S_AXI_RREADY : in  std_logic;
    );
end entity;

architecture rtl of tx_status_manager is
    type T_AXI_LITE_WRITE_FSM_STATE is (S_AWADDR, S_WDATA, S_WRITE_RESP); 
    type T_AXI_LITE_READ_FSM_STATE is (S_IDLE, S_READ_RESP);

    signal write_fsm_state_reg : T_AXI_LITE_WRITE_FSM_STATE;
    signal write_fsm_state_next : T_AXI_LITE_WRITE_FSM_STATE;

    -- Registered AXI-Lite slave inputs
    signal s_axi_awvalid_reg : std_logic;
    signal s_axi_wvalid_reg : std_logic;
    
    signal s_axi_awaddr_reg : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    signal s_axi_awaddr_next : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
begin

    process(axi_aclk) is
    begin
        if rising_edge(axi_aclk) then
            if (axi_aresetn = '0') then
                write_fsm_state_reg <= S_AWADDR;
            else
                write_fsm_state_reg <= write_fsm_state_next;
                
                -- Synchronous reads of incoming AXI-Lite ports
                s_axi_awvalid_reg <= S_AXI_AWVALID;
            end if;
        end if;
    end process;

    process(all) is
    begin
        S_AXI_AWREADY <= '1' when write_fsm_state_reg = S_AWADDR else '0';
        S_AXI_WREADY <= '1' when write_fsm_state_reg = S_WDATA else '0';
    end process;

    process(all) is
    begin
        write_fsm_state_next <= write_fsm_state_reg;
        s_axi_awaddr_next <= s_axi_awaddr_reg;


        case write_fsm_state_reg is


            when S_AWADDR =>
                if (s_axi_awvalid_reg = '1') then
                    s_axi_awaddr_next <= S_AXI_AWADDR;
                    write_fsm_state_next <= S_WDATA;
                end if;

            when S_WDATA =>
                if (s_axi_wvalid_reg = '1') then

                end if; 


        end case;

    end process;

end architecture;