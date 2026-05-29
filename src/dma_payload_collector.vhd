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
    type t_payload_collector_state is
        ( S_IDLE, S_HANDLE_ENTRY );

    state_reg : t_payload_collector_state;
    state_next : t_payload_collector_state;
begin

    process(i_aclk) is
    begin
        if rising_edge(i_aclk) then
            if (i_aresetn = '0') then
                state_reg <= S_IDLE;
            else
                state_reg <= state_next;
            end if;
        end if;
    end process;

    process(all) is
    begin

        -- Defaults
        state_next <= state_reg;
        o_rx_fifo_rd_en <= '0';

        case state_reg is
        begin

            when S_IDLE =>

                if (i_rx_fifo_empty = '0') then
                    o_rx_fifo_rd_en <= '1';
                    state_next <= S_HANDLE_ENTRY;
                end if;
            
            when S_HANDLE_ENTRY =>



        end case;



    end process;


end architecture;