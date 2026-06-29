library ieee;
use ieee.std_logic_1164.all;
use ieee.numerc_std.all;

use work.eth_tx_package.all;

entity tx_axi_reader is
    generic (
        C_AXI_ADDR_WIDTH : integer := 32;
        C_AXI_DATA_WIDTH : integer := 32
    );
    port (
        -- AXI clock/reset
        axi_aclk    : in std_logic;
        axi_aresetn : in std_logic;

        -- Status Manager request interface
        i_entry_read_req_valid : in  std_logic;
        o_entry_read_req_ready : out std_logic;
        i_entry_addr : in std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
        i_entry_length : in std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);

        -- Buffer Writer interface
        o_buf_wr_valid : out std_logic;
        i_buf_wr_ready : in  std_logic;
        o_buf_wr_data  : out std_logic_vector(C_FIFO_ENTRY_WIDTH-1 downto 0);
        o_read_complete : out std_logic;
        o_read_error : out std_logic;

        -- AXI4-Full read address channel
        M_AXI_ARADDR  : out std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
        M_AXI_ARLEN   : out std_logic_vector(7 downto 0);
        M_AXI_ARSIZE  : out std_logic_vector(2 downto 0);
        M_AXI_ARBURST : out std_logic_vector(1 downto 0);
        M_AXI_ARVALID : out std_logic;
        M_AXI_ARREADY : in  std_logic;

        -- AXI4-Full read data channel
        M_AXI_RDATA  : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
        M_AXI_RRESP  : in  std_logic_vector(1 downto 0);
        M_AXI_RLAST  : in  std_logic;
        M_AXI_RVALID : in  std_logic;
        M_AXI_RREADY : out std_logic
    );
end entity;


architecture rtl of tx_axi_reader is
    type T_AXI_READER_FSM_STATE is (S_IDLE, S_ARADDR, S_RDATA, S_TRANS_COMPLETE);

    signal axi_reader_fsm_reg : T_AXI_READER_FSM_STATE;
    signal axi_reader_fsm_next : T_AXI_READER_FSM_STATE;

    signal payload_base_addr_reg : std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    signal payload_base_addr_next : std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);

    signal payload_length_reg : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);
    signal payload_length_next : std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);


begin

    process(axi_aclk) is
    begin
        if rising_edge(axi_aclk) then
            if (axi_aresetn = '0') then
                axi_reader_fsm_reg <= S_IDLE;
            else
                axi_reader_fsm_reg <= axi_reader_fsm_next;
            end if;
        end if;
    end process;

    process(all) is
    begin
        o_entry_read_req_ready <= '1' when read_fsm_state_reg = S_IDLE else '0';
    end process;

    process(all) is
    begin
        axi_reader_fsm_next <= axi_reader_fsm_reg;

        case axi_reader_fsm_reg is

            when S_IDLE =>
                if (i_entry_read_req_valid) then
                    axi_reader_fsm_next <= S_ARADDR;
                    payload_base_addr_next <= i_entry_addr;
                    payload_length_next <= i_entry_length;
                end if;



        end case;


    end process;

end architecture;