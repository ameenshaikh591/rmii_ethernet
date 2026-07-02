library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

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
        i_entry_addr           : in  std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
        i_entry_length         : in  std_logic_vector(C_AXI_DATA_WIDTH-1 downto 0);

        -- FIFO Manager write interface
        o_buf_wr_valid  : out std_logic;
        i_buf_wr_ready  : in  std_logic;
        o_buf_wr_data   : out std_logic_vector(C_FIFO_ENTRY_WIDTH-1 downto 0);
        o_read_complete : out std_logic;
        o_read_error    : out std_logic;

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

    constant C_MAX_BURST_LEN     : integer := 256;
    constant C_MAX_PAYLOAD_BYTES : integer := 1500;
    constant C_MAX_PAYLOAD_BEATS : integer := 375;

    constant C_ARBURST_INC_BURST : std_logic_vector(1 downto 0) := "01";
    constant C_ARSIZE_FOUR_BYTES : std_logic_vector(2 downto 0) := "010";

    -- FIFO entry format:
    -- bit 34      : last payload entry
    -- bits 33:32  : valid byte encoding
    -- bits 31:0   : payload data
    --
    -- valid byte encoding:
    -- "00" = 4 valid bytes
    -- "01" = 1 valid byte
    -- "10" = 2 valid bytes
    -- "11" = 3 valid bytes

    type T_AXI_READER_FSM_STATE is (S_IDLE, S_AR_CHANNEL, S_RDATA, S_TRANS_COMPLETE);

    signal axi_reader_fsm_reg  : T_AXI_READER_FSM_STATE;
    signal axi_reader_fsm_next : T_AXI_READER_FSM_STATE;

    signal payload_base_addr_reg  : std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);
    signal payload_base_addr_next : std_logic_vector(C_AXI_ADDR_WIDTH-1 downto 0);

    signal remaining_beats_reg  : integer range 0 to C_MAX_PAYLOAD_BEATS;
    signal remaining_beats_next : integer range 0 to C_MAX_PAYLOAD_BEATS;

    signal addr_offset_reg  : unsigned(C_AXI_ADDR_WIDTH-1 downto 0);
    signal addr_offset_next : unsigned(C_AXI_ADDR_WIDTH-1 downto 0);

    signal final_valid_bytes_reg  : std_logic_vector(1 downto 0);
    signal final_valid_bytes_next : std_logic_vector(1 downto 0);

    signal read_error_reg  : std_logic;
    signal read_error_next : std_logic;

begin

    process(axi_aclk) is
    begin
        if rising_edge(axi_aclk) then
            if (axi_aresetn = '0') then
                axi_reader_fsm_reg <= S_IDLE;
                read_error_reg     <= '0';
            else
                axi_reader_fsm_reg <= axi_reader_fsm_next;

                payload_base_addr_reg <= payload_base_addr_next;
                remaining_beats_reg   <= remaining_beats_next;
                addr_offset_reg       <= addr_offset_next;
                final_valid_bytes_reg <= final_valid_bytes_next;
                read_error_reg        <= read_error_next;
            end if;
        end if;
    end process;

    -- Valid/ready/status outputs
    process(all) is
    begin
        o_entry_read_req_ready <= '1' when axi_reader_fsm_reg = S_IDLE else '0';

        M_AXI_ARVALID <= '1' when axi_reader_fsm_reg = S_AR_CHANNEL else '0';
        M_AXI_RREADY  <= '1' when (axi_reader_fsm_reg = S_RDATA and i_buf_wr_ready = '1') else '0';

        o_buf_wr_valid <= '1' when (axi_reader_fsm_reg = S_RDATA and M_AXI_RVALID = '1' and i_buf_wr_ready = '1') else '0';

        o_read_complete <= '1' when axi_reader_fsm_reg = S_TRANS_COMPLETE else '0';
        o_read_error    <= '1' when (axi_reader_fsm_reg = S_TRANS_COMPLETE and read_error_reg = '1') else '0';
    end process;

    -- AXI Reader FSM
    process(all) is
        variable v_payload_length : integer range 0 to C_MAX_PAYLOAD_BYTES;
        variable v_final_beat     : std_logic;
        variable v_valid_bytes    : std_logic_vector(1 downto 0);
    begin
        axi_reader_fsm_next <= axi_reader_fsm_reg;

        payload_base_addr_next <= payload_base_addr_reg;
        remaining_beats_next   <= remaining_beats_reg;
        addr_offset_next       <= addr_offset_reg;
        final_valid_bytes_next <= final_valid_bytes_reg;
        read_error_next        <= read_error_reg;

        M_AXI_ARADDR  <= std_logic_vector(unsigned(payload_base_addr_reg) + addr_offset_reg);
        M_AXI_ARLEN   <= (others => '0');
        M_AXI_ARSIZE  <= C_ARSIZE_FOUR_BYTES;
        M_AXI_ARBURST <= C_ARBURST_INC_BURST;

        o_buf_wr_data <= (others => '0');

        v_final_beat  := '0';
        v_valid_bytes := "00";

        case axi_reader_fsm_reg is

            when S_IDLE =>
                addr_offset_next <= (others => '0');
                read_error_next  <= '0';

                if (i_entry_read_req_valid = '1') then
                    v_payload_length := to_integer(unsigned(i_entry_length));

                    payload_base_addr_next <= i_entry_addr;
                    remaining_beats_next   <= (v_payload_length + 3) / 4;

                    case v_payload_length mod 4 is
                        when 0 =>
                            final_valid_bytes_next <= "00";
                        when 1 =>
                            final_valid_bytes_next <= "01";
                        when 2 =>
                            final_valid_bytes_next <= "10";
                        when others =>
                            final_valid_bytes_next <= "11";
                    end case;

                    if (v_payload_length = 0 or v_payload_length > C_MAX_PAYLOAD_BYTES) then
                        read_error_next <= '1';
                        axi_reader_fsm_next <= S_TRANS_COMPLETE;
                    else
                        axi_reader_fsm_next <= S_AR_CHANNEL;
                    end if;
                end if;

            when S_AR_CHANNEL =>
                if (remaining_beats_reg > C_MAX_BURST_LEN) then
                    M_AXI_ARLEN <= std_logic_vector(to_unsigned(C_MAX_BURST_LEN - 1, 8));
                else
                    M_AXI_ARLEN <= std_logic_vector(to_unsigned(remaining_beats_reg - 1, 8));
                end if;

                if (M_AXI_ARREADY = '1') then
                    axi_reader_fsm_next <= S_RDATA;
                end if;

            when S_RDATA =>
                if (M_AXI_RVALID = '1' and i_buf_wr_ready = '1') then
                    if (remaining_beats_reg = 1) then
                        v_final_beat  := '1';
                        v_valid_bytes := final_valid_bytes_reg;
                    else
                        v_final_beat  := '0';
                        v_valid_bytes := "00";
                    end if;

                    o_buf_wr_data(31 downto 0)              <= M_AXI_RDATA;
                    o_buf_wr_data(33 downto 32)             <= v_valid_bytes;
                    o_buf_wr_data(C_FIFO_ENTRY_LAST_BIT)    <= v_final_beat;

                    remaining_beats_next <= remaining_beats_reg - 1;
                    addr_offset_next     <= addr_offset_reg + 4;

                    if (M_AXI_RRESP /= "00") then
                        read_error_next <= '1';
                    end if;

                    if (M_AXI_RLAST = '1') then
                        if (remaining_beats_reg = 1) then
                            axi_reader_fsm_next <= S_TRANS_COMPLETE;
                        else
                            axi_reader_fsm_next <= S_AR_CHANNEL;
                        end if;
                    end if;
                end if;

            when S_TRANS_COMPLETE =>
                if (read_error_reg = '1') then
                    remaining_beats_next <= 0;
                end if;

                axi_reader_fsm_next <= S_IDLE;

        end case;
    end process;

end architecture;
