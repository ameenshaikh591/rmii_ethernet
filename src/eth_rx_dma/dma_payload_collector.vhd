library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dma_payload_collector is
  port (
    -- Clock/reset
    i_aclk    : in  std_logic;
    i_aresetn : in  std_logic;

    -- RX FIFO interface
    i_rx_fifo_dout  : in  std_logic_vector(9 downto 0);
    i_rx_fifo_empty : in  std_logic;
    o_rx_fifo_rd_en : out std_logic;

    -- Chunk ownership interface to DMA AXI writer
    o_chunk_valid      : out std_logic;
    i_chunk_ready      : in  std_logic;

    o_chunk_buf_id     : out std_logic;
    o_chunk_byte_count : out unsigned(4 downto 0); -- 0 to 16 bytes
    o_chunk_last       : out std_logic;
    o_chunk_error      : out std_logic;

    -- Ping-pong buffer write interface
    o_buf_wr_en   : out std_logic;
    o_buf_wr_addr : out unsigned(3 downto 0); -- byte index 0 to 15
    o_buf_wr_data : out std_logic_vector(7 downto 0);
    o_buf_wr_id   : out std_logic
  );
end entity;

architecture rtl of dma_payload_collector is

    constant ERROR_BIT : integer := 8;
    constant LAST_BIT  : integer := 9;

    constant BUF_FULL_INDEX : unsigned(4 downto 0) := to_unsigned(15, 5);

    type t_payload_collector_state is
        ( S_IDLE, S_HANDLE_ENTRY, S_READY_WAIT );

    signal state_reg : t_payload_collector_state;
    signal state_next : t_payload_collector_state;

    signal chunk_byte_count_reg : unsigned(4 downto 0);
    signal chunk_byte_count_next : unsigned(4 downto 0);

    signal chunk_last_reg : std_logic;
    signal chunk_last_next : std_logic;

    signal chunk_error_reg : std_logic;
    signal chunk_error_next : std_logic;
    
    signal buf_id_reg : std_logic;
    signal buf_id_next : std_logic;

begin

    process(i_aclk) is
    begin
        if rising_edge(i_aclk) then
            if (i_aresetn = '0') then
                state_reg <= S_IDLE;
                buf_id_reg <= '0';
                chunk_byte_count_reg <= (others => '0');
                chunk_last_reg <= '0';
                chunk_error_reg <= '0';
            else
                state_reg <= state_next;
                buf_id_reg <= buf_id_next;
                chunk_byte_count_reg <= chunk_byte_count_next;
                chunk_last_reg <= chunk_last_next;
                chunk_error_reg <= chunk_error_next;
            end if;
        end if;
    end process;

    process(all) is

        variable chunk_byte : std_logic_vector(9 downto 0);

        procedure write_byte_to_buf is
        begin
            o_buf_wr_en <= '1';
            o_buf_wr_addr <= chunk_byte_count_reg(3 downto 0);
            o_buf_wr_data <= chunk_byte(7 downto 0);
            o_buf_wr_id <= buf_id_reg;
        end write_byte_to_buf;

        procedure transition_next_buf is
        begin
            buf_id_next <= not buf_id_reg;
            chunk_byte_count_next <= (others => '0');
            chunk_last_next <= '0';
            chunk_error_next <= '0';
            state_next <= S_IDLE;
        end transition_next_buf;

        procedure offer_chunk (
            constant last : in std_logic;
            constant err  : in std_logic
        ) is
        begin
            o_chunk_valid <= '1';
            o_chunk_buf_id <= buf_id_reg;

            if (last = '1') then
                o_chunk_byte_count <= chunk_byte_count_reg;
            else
                o_chunk_byte_count <= chunk_byte_count_reg + 1;
            end if;

            o_chunk_last <= last;
            o_chunk_error <= err;

            chunk_last_next <= last;
            chunk_error_next <= err;

            if (i_chunk_ready = '1') then
                transition_next_buf;
            else
                state_next <= S_READY_WAIT;
            end if;
        end offer_chunk;

        procedure reoffer_chunk is
        begin
            o_chunk_valid <= '1';
            o_chunk_buf_id <= buf_id_reg;
            if (chunk_last_reg = '1') then
                o_chunk_byte_count <= chunk_byte_count_reg;
            else
                o_chunk_byte_count <= chunk_byte_count_reg + 1;
            end if;
            o_chunk_last <= chunk_last_reg;
            o_chunk_error <= chunk_error_reg;

            if (i_chunk_ready = '1') then
                transition_next_buf;
            else
                state_next <= S_READY_WAIT;
            end if;
        end reoffer_chunk;

    begin

        -- Defaults
        state_next <= state_reg;

        o_rx_fifo_rd_en <= '0';

        o_chunk_valid <= '0';
        o_chunk_buf_id <= buf_id_reg;
        o_chunk_byte_count <= (others => '0');
        o_chunk_last <= '0';
        o_chunk_error <= '0';

        o_buf_wr_en <= '0';
        o_buf_wr_addr <= (others => '0');
        o_buf_wr_data <= (others => '0');
        o_buf_wr_id <= buf_id_reg;

        buf_id_next <= buf_id_reg;
        chunk_byte_count_next <= chunk_byte_count_reg;
        chunk_last_next <= chunk_last_reg;
        chunk_error_next <= chunk_error_reg;

        chunk_byte := i_rx_fifo_dout;

        case state_reg is

            when S_IDLE =>

                if (i_rx_fifo_empty = '0') then
                    o_rx_fifo_rd_en <= '1';
                    state_next <= S_HANDLE_ENTRY;
                end if;
            
            when S_HANDLE_ENTRY =>

                if (chunk_byte(ERROR_BIT) = '1') then

                    offer_chunk('0', '1');

                elsif (chunk_byte(LAST_BIT) = '1') then

                    -- Last byte contains no payload byte

                    -- If the buffer is empty, transition back to IDLE state
                    -- Otherwise, offer the existing chunk in the buffer to the DMA writer
                    if (chunk_byte_count_reg = 0) then
                        state_next <= S_IDLE;
                        chunk_last_next <= '0';
                        chunk_error_next <= '0';
                    else
                        -- Offer final chunk to AXI writer
                        offer_chunk('1', '0');
                    end if;

                else

                    -- Normal byte
                    -- Write the byte to the ping-pong buffer
                    write_byte_to_buf;

                    if (chunk_byte_count_reg = BUF_FULL_INDEX) then

                        -- Full buffer
                        offer_chunk('0', '0');

                    else

                        chunk_byte_count_next <= chunk_byte_count_reg + 1;
                        state_next <= S_IDLE;

                    end if;

                end if;
            
            when S_READY_WAIT =>

                reoffer_chunk;

        end case;
    end process;

end architecture;