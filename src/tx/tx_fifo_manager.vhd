library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library xpm;
use xpm.vcomponents.all;

use work.eth_tx_package.all;


entity tx_fifo_manager is
    port (
        -- AXI/system clock domain
        clk    : in std_logic;
        resetn : in std_logic;

        -- MAC TX clock domain
        mac_clk    : in std_logic;
        mac_resetn : in std_logic;

        -- AXI Reader write interface
        i_buf_wr_valid : in  std_logic;
        o_buf_wr_ready : out std_logic;
        i_buf_wr_data  : in  std_logic_vector(C_FIFO_ENTRY_WIDTH-1 downto 0);
        i_read_complete : in std_logic;
        i_read_error    : in std_logic;

        -- Status Manager schedule interface
        i_sched_frame_req_valid : in  std_logic;
        o_sched_frame_req_ready : out std_logic;
        i_sched_frame_dest_mac  : in  std_logic_vector(C_MAC_ADDR_WIDTH-1 downto 0);

        -- Status Manager completion pulse
        o_frame_tx_complete : out std_logic;

        -- MAC TX FIFO read interface
        i_mac_fifo_rd_en     : in  std_logic;
        o_mac_fifo_dout      : out std_logic_vector(C_FIFO_ENTRY_WIDTH-1 downto 0);
        o_mac_fifo_empty     : out std_logic;
        o_mac_fifo_data_valid : out std_logic;

        -- MAC TX toggle-based handshaking interface
        o_frame_tx_start : out std_logic;
        i_frame_tx_start_ack : in std_logic;
        i_frame_tx_finish : in std_logic;
        o_frame_tx_finish_ack : out std_logic

    );
end entity;


architecture rtl of tx_fifo_manager is

    constant C_TX_FIFO_DEPTH : integer := 512;

    -- XPM programmable-full is used as the FIFO Manager's "almost full".
    -- Threshold 101 means prog_full asserts once used entries are >= 101,
    -- leaving fewer than 277 free entries. That is enough room for 2
    -- destination-MAC entries plus one maximum 256-beat AXI read burst.
    constant C_TX_FIFO_PROG_FULL_THRESH : integer := 101;

    constant C_FIFO_BYTE_COUNT_4 : std_logic_vector(1 downto 0) := "00";
    constant C_FIFO_BYTE_COUNT_2 : std_logic_vector(1 downto 0) := "10";

    constant C_FRAME_STATUS_OK    : std_logic := '0';
    constant C_FRAME_STATUS_ERROR : std_logic := '1';

    type T_FIFO_WR_FSM_STATE is (S_WR_IDLE, S_WR_DEST_MAC_LOW, S_WR_DEST_MAC_HIGH, S_WR_WAIT_READER);

    type T_FIFO_RD_FSM_STATE is (S_RD_IDLE, S_RD_WAIT_MAC_START_ACK, S_RD_WAIT_MAC_FINISH, S_FRAME_ERROR);

    type T_FRAME_STATUS_REGS is array (0 to 1) of std_logic;

    signal fifo_wr_fsm_state_reg  : T_FIFO_WR_FSM_STATE;
    signal fifo_wr_fsm_state_next : T_FIFO_WR_FSM_STATE;

    signal frame_status_reg  : T_FRAME_STATUS_REGS;
    signal frame_status_next : T_FRAME_STATUS_REGS;

    signal wr_status_idx_reg  : integer range 0 to 1;
    signal wr_status_idx_next : integer range 0 to 1;

    signal rd_status_idx_reg  : integer range 0 to 1;
    signal rd_status_idx_next : integer range 0 to 1;

    signal frame_count_reg  : integer range 0 to 2;
    signal frame_count_next : integer range 0 to 2;

    signal write_frame_done : std_logic;
    signal read_frame_done  : std_logic;

    signal fifo_rst : std_logic;

    signal fifo_din  : std_logic_vector(C_FIFO_ENTRY_WIDTH-1 downto 0);
    signal fifo_dout : std_logic_vector(C_FIFO_ENTRY_WIDTH-1 downto 0);

    signal fifo_wr_en : std_logic;
    signal fifo_rd_en : std_logic;

    signal fifo_full        : std_logic;
    signal fifo_prog_full   : std_logic;
    signal fifo_empty       : std_logic;
    signal fifo_data_valid  : std_logic;
    signal fifo_wr_rst_busy : std_logic;
    signal fifo_rd_rst_busy : std_logic;

    signal fifo_rd_fsm_state_reg    : T_FIFO_RD_FSM_STATE;
    signal fifo_rd_fsm_state_next   : T_FIFO_RD_FSM_STATE;

    signal frame_tx_start_reg : std_logic;
    signal frame_tx_start_next : std_logic;

    signal frame_tx_start_ack_sync_1_reg : std_logic;
    signal frame_tx_start_ack_sync_2_reg : std_logic;
    signal frame_tx_start_ack_prev_reg   : std_logic;

    signal frame_tx_finish_sync_1_reg : std_logic;
    signal frame_tx_finish_sync_2_reg : std_logic;
    signal frame_tx_finish_prev_reg : std_logic;

    signal frame_tx_finish_ack_reg : std_logic;
    signal frame_tx_finish_ack_next : std_logic;

    signal fifo_discard_rd_en : std_logic;

begin

    fifo_rst <= (not resetn) or (not mac_resetn);
    fifo_rd_en <= (i_mac_fifo_rd_en or fifo_discard_rd_en) and not fifo_empty and not fifo_rd_rst_busy;

    -- Clocked process
    process(clk) is
    begin
        if rising_edge(clk) then
            if (resetn = '0') then
                fifo_wr_fsm_state_reg <= S_WR_IDLE;
                fifo_rd_fsm_state_reg <= S_RD_IDLE;

                frame_status_reg(0) <= C_FRAME_STATUS_OK;
                frame_status_reg(1) <= C_FRAME_STATUS_OK;
                wr_status_idx_reg <= 0;
                rd_status_idx_reg <= 0;
                frame_count_reg <= 0;

                frame_tx_start_reg <= '0';
                frame_tx_finish_ack_reg <= '0';

                frame_tx_start_ack_sync_1_reg <= '0';
                frame_tx_start_ack_sync_2_reg <= '0';
                frame_tx_start_ack_prev_reg <= '0';

                frame_tx_finish_sync_1_reg <= '0';
                frame_tx_finish_sync_2_reg <= '0';
                frame_tx_finish_prev_reg <= '0';
            else
                fifo_wr_fsm_state_reg <= fifo_wr_fsm_state_next;
                fifo_rd_fsm_state_reg <= fifo_rd_fsm_state_next;

                frame_status_reg <= frame_status_next;
                wr_status_idx_reg <= wr_status_idx_next;
                rd_status_idx_reg <= rd_status_idx_next;
                frame_count_reg <= frame_count_next;

                frame_tx_start_reg <= frame_tx_start_next;
                frame_tx_finish_ack_reg <= frame_tx_finish_ack_next;

                frame_tx_start_ack_sync_1_reg <= i_frame_tx_start_ack;
                frame_tx_start_ack_sync_2_reg <= frame_tx_start_ack_sync_1_reg;
                frame_tx_start_ack_prev_reg <= frame_tx_start_ack_sync_2_reg;

                frame_tx_finish_sync_1_reg <= i_frame_tx_finish;
                frame_tx_finish_sync_2_reg <= frame_tx_finish_sync_1_reg;
                frame_tx_finish_prev_reg <= frame_tx_finish_sync_2_reg;
            end if;
        end if;
    end process;

    -- FIFO write FSM
    process(all) is
        variable v_fifo_can_write : std_logic;
    begin
        fifo_wr_fsm_state_next <= fifo_wr_fsm_state_reg;

        frame_status_next <= frame_status_reg;
        wr_status_idx_next <= wr_status_idx_reg;
        write_frame_done <= '0';

        o_sched_frame_req_ready <= '0';
        o_buf_wr_ready <= '0';

        fifo_wr_en <= '0';
        fifo_din <= (others => '0');

        v_fifo_can_write := not fifo_full and not fifo_wr_rst_busy;

        case fifo_wr_fsm_state_reg is

            when S_WR_IDLE =>
                if (
                    i_sched_frame_req_valid = '1' and
                    fifo_prog_full = '0' and
                    fifo_wr_rst_busy = '0' and
                    frame_count_reg < 2
                ) then
                    fifo_wr_fsm_state_next <= S_WR_DEST_MAC_LOW;
                end if;

            when S_WR_DEST_MAC_LOW =>
                if (v_fifo_can_write = '1') then
                    fifo_din(31 downto 0) <= i_sched_frame_dest_mac(31 downto 0);
                    fifo_din(33 downto 32) <= C_FIFO_BYTE_COUNT_4;
                    fifo_din(C_FIFO_ENTRY_LAST_BIT) <= '0';
                    fifo_wr_en <= '1';

                    fifo_wr_fsm_state_next <= S_WR_DEST_MAC_HIGH;
                end if;

            when S_WR_DEST_MAC_HIGH =>
                if (v_fifo_can_write = '1') then
                    fifo_din(15 downto 0) <= i_sched_frame_dest_mac(47 downto 32);
                    fifo_din(33 downto 32) <= C_FIFO_BYTE_COUNT_2;
                    fifo_din(C_FIFO_ENTRY_LAST_BIT) <= '0';
                    fifo_wr_en <= '1';

                    -- The Status Manager must hold valid/dest_mac stable until
                    -- this ready pulse. That avoids a destination-MAC register
                    -- in this block, but it makes the handshake contract strict.
                    o_sched_frame_req_ready <= '1';
                    fifo_wr_fsm_state_next <= S_WR_WAIT_READER;
                end if;

            when S_WR_WAIT_READER =>
                o_buf_wr_ready <= v_fifo_can_write;

                if (i_buf_wr_valid = '1' and v_fifo_can_write = '1') then
                    fifo_din <= i_buf_wr_data;
                    fifo_wr_en <= '1';
                end if;

                if (i_read_complete = '1') then
                    if (i_read_error = '1') then
                        frame_status_next(wr_status_idx_reg) <= C_FRAME_STATUS_ERROR;
                    else
                        frame_status_next(wr_status_idx_reg) <= C_FRAME_STATUS_OK;
                    end if;

                    wr_status_idx_next <= 1 - wr_status_idx_reg;
                    write_frame_done <= '1';

                    fifo_wr_fsm_state_next <= S_WR_IDLE;
                end if;

        end case;
    end process;

    process(all) is
    begin
        o_mac_fifo_dout <= fifo_dout;
        o_mac_fifo_empty <= fifo_empty or fifo_rd_rst_busy;
        o_mac_fifo_data_valid <= not fifo_empty and not fifo_rd_rst_busy;

        o_frame_tx_start <= frame_tx_start_reg;
        o_frame_tx_finish_ack <= frame_tx_finish_ack_reg;
    end process;

    process(all) is
    begin
        fifo_rd_fsm_state_next <= fifo_rd_fsm_state_reg;

        rd_status_idx_next <= rd_status_idx_reg;
        read_frame_done <= '0';
        o_frame_tx_complete <= '0';

        frame_tx_start_next <= frame_tx_start_reg;
        frame_tx_finish_ack_next <= frame_tx_finish_ack_reg;
        fifo_discard_rd_en <= '0';

        case fifo_rd_fsm_state_reg is

            when S_RD_IDLE =>
                if (frame_count_reg > 0 and fifo_rd_rst_busy = '0') then
                    if (frame_status_reg(rd_status_idx_reg) = C_FRAME_STATUS_ERROR) then
                        fifo_rd_fsm_state_next <= S_FRAME_ERROR;
                    else
                        frame_tx_start_next <= not frame_tx_start_reg;
                        fifo_rd_fsm_state_next <= S_RD_WAIT_MAC_START_ACK;
                    end if;
                end if;

            when S_RD_WAIT_MAC_START_ACK =>
                if (frame_tx_start_ack_sync_2_reg /= frame_tx_start_ack_prev_reg) then
                    fifo_rd_fsm_state_next <= S_RD_WAIT_MAC_FINISH;
                end if;

            when S_RD_WAIT_MAC_FINISH =>
                if (frame_tx_finish_sync_2_reg /= frame_tx_finish_prev_reg) then
                    frame_tx_finish_ack_next <= not frame_tx_finish_ack_reg;

                    read_frame_done <= '1';
                    o_frame_tx_complete <= '1';
                    rd_status_idx_next <= 1 - rd_status_idx_reg;

                    fifo_rd_fsm_state_next <= S_RD_IDLE;
                end if;

            when S_FRAME_ERROR =>
                if (fifo_empty = '0' and fifo_rd_rst_busy = '0') then
                    fifo_discard_rd_en <= '1';

                    if (fifo_dout(C_FIFO_ENTRY_LAST_BIT) = '1') then
                        read_frame_done <= '1';
                        o_frame_tx_complete <= '1';
                        rd_status_idx_next <= 1 - rd_status_idx_reg;

                        fifo_rd_fsm_state_next <= S_RD_IDLE;
                    end if;
                end if;
        end case;
    end process;

    -- Frame count update
    process(all) is
    begin
        frame_count_next <= frame_count_reg;

        if (write_frame_done = '1' and read_frame_done = '0') then
            if (frame_count_reg < 2) then
                frame_count_next <= frame_count_reg + 1;
            end if;

        elsif (write_frame_done = '0' and read_frame_done = '1') then
            if (frame_count_reg > 0) then
                frame_count_next <= frame_count_reg - 1;
            end if;
        end if;
    end process;

    tx_async_fifo_inst : xpm_fifo_async
        generic map (
            FIFO_MEMORY_TYPE => "block",
            FIFO_WRITE_DEPTH => C_TX_FIFO_DEPTH,
            WRITE_DATA_WIDTH => C_FIFO_ENTRY_WIDTH,
            READ_DATA_WIDTH => C_FIFO_ENTRY_WIDTH,

            READ_MODE => "fwft",
            FIFO_READ_LATENCY => 0,

            CDC_SYNC_STAGES => 2,
            RELATED_CLOCKS => 0,

            DOUT_RESET_VALUE => "0",
            ECC_MODE => "no_ecc",
            FULL_RESET_VALUE => 0,
            PROG_EMPTY_THRESH => 10,
            PROG_FULL_THRESH => C_TX_FIFO_PROG_FULL_THRESH,

            RD_DATA_COUNT_WIDTH => 9,
            WR_DATA_COUNT_WIDTH => 9,
            USE_ADV_FEATURES => "0707",
            EN_SIM_ASSERT_ERR => "warning",
            SIM_ASSERT_CHK => 0,
            WAKEUP_TIME => 0,
            CASCADE_HEIGHT => 0
        )
        port map (
            dout => fifo_dout,
            empty => fifo_empty,
            full => fifo_full,
            rd_rst_busy => fifo_rd_rst_busy,
            wr_rst_busy => fifo_wr_rst_busy,

            almost_empty => open,
            almost_full => open,
            data_valid => fifo_data_valid,
            dbiterr => open,
            overflow => open,
            prog_empty => open,
            prog_full => fifo_prog_full,
            rd_data_count => open,
            sbiterr => open,
            underflow => open,
            wr_ack => open,
            wr_data_count => open,

            din => fifo_din,
            wr_en => fifo_wr_en,
            rd_en => fifo_rd_en,
            wr_clk => clk,
            rd_clk => mac_clk,
            rst => fifo_rst,

            sleep => '0',
            injectdbiterr => '0',
            injectsbiterr => '0'
        );

end architecture;
