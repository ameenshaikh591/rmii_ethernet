library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.eth_rx_package.all;

entity dma_axi_writer is

  port (
    -- reset and clock
    i_aresetn : in std_logic;
    i_aclk    : in std_logic;

    -- Interface to DMA payload collector
    i_chunk_valid      : in  std_logic;
    o_chunk_ready      : out std_logic;

    i_chunk_buf_id     : in std_logic;
    i_chunk_byte_count : in unsigned(4 downto 0);
    i_chunk_last       : in std_logic;
    i_chunk_error      : in std_logic;

    -- Interface to AXI interconnect
    M_AXI_AWADDR  : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI_AWLEN   : out std_logic_vector(7 downto 0);
    M_AXI_AWSIZE  : out std_logic_vector(2 downto 0);
    M_AXI_AWBURST : out std_logic_vector(1 downto 0);
    M_AXI_AWPROT  : out std_logic_vector(2 downto 0);
    M_AXI_AWVALID : out std_logic;
    M_AXI_AWREADY : in  std_logic;

    M_AXI_WDATA   : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    M_AXI_WSTRB   : out std_logic_vector((C_M_AXI_DATA_WIDTH/8)-1 downto 0);
    M_AXI_WLAST   : out std_logic;
    M_AXI_WVALID  : out std_logic;
    M_AXI_WREADY  : in  std_logic;

    M_AXI_BRESP   : in  std_logic_vector(1 downto 0);
    M_AXI_BVALID  : in  std_logic;
    M_AXI_BREADY  : out std_logic;

    -- Interface to status manager
    i_wr_addr_valid : in  std_logic;
    o_wr_addr_ready : out std_logic;
    i_wr_base_addr  : in  std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    o_frame_done    : out std_logic;

    -- Interface to ping-pong buffer
    o_buf_rd_addr : out unsigned(1 downto 0);
    o_buf_rd_id   : out std_logic;
    i_buf_rd_data : in  std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0)
  );
end entity;

architecture rtl of dma_axi_writer is

  type t_axi_writer_state is
    (S_IDLE, S_RECV_CHUNK, S_AWVALID, S_AXI_WRITE, S_WAIT_B);

  signal axi_writer_state_reg  : t_axi_writer_state;
  signal axi_writer_state_next : t_axi_writer_state;

  signal wr_base_addr_reg  : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
  signal wr_base_addr_next : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);

  signal wr_addr_offset_reg  : unsigned(C_M_AXI_ADDR_WIDTH-1 downto 0);
  signal wr_addr_offset_next : unsigned(C_M_AXI_ADDR_WIDTH-1 downto 0);

  signal chunk_byte_count_reg  : unsigned(4 downto 0);
  signal chunk_byte_count_next : unsigned(4 downto 0);

  signal buf_addr_reg  : unsigned(1 downto 0);
  signal buf_addr_next : unsigned(1 downto 0);

  signal chunk_buf_id_reg  : std_logic;
  signal chunk_buf_id_next : std_logic;

  signal last_reg  : std_logic;
  signal last_next : std_logic;

begin

  process(i_aclk) is
  begin
    if rising_edge(i_aclk) then
      if (i_aresetn = '0') then
        axi_writer_state_reg <= S_IDLE;
       -- wr_base_addr_reg <= (others => '0');
       -- wr_addr_offset_reg <= (others => '0');
        chunk_byte_count_reg <= (others => '0');
        buf_addr_reg <= (others => '0');
        chunk_buf_id_reg <= '0';
        last_reg <= '0';
      else
        axi_writer_state_reg <= axi_writer_state_next;
        wr_base_addr_reg <= wr_base_addr_next;
        wr_addr_offset_reg <= wr_addr_offset_next;
        chunk_byte_count_reg <= chunk_byte_count_next;
        buf_addr_reg <= buf_addr_next;
        chunk_buf_id_reg <= chunk_buf_id_next;
        last_reg <= last_next;
      end if;
    end if;
  end process;

  process(all) is

    function calc_awlen(
      constant byte_count : unsigned(4 downto 0)
    ) return std_logic_vector is
      variable beats : unsigned(4 downto 0);
    begin
      beats := (byte_count + 3) / 4;
      return std_logic_vector(resize(beats - 1, 8));
    end function;

    function calc_wstrb(
      constant byte_count : unsigned(4 downto 0)
    ) return std_logic_vector is
    begin
      if (byte_count >= 4) then
        return "1111";
      elsif (byte_count = 3) then
        return "0111";
      elsif (byte_count = 2) then
        return "0011";
      elsif (byte_count = 1) then
        return "0001";
      else
        return "0000";
      end if;
    end function;

  begin

    -- Defaults
    axi_writer_state_next <= axi_writer_state_reg;

    wr_base_addr_next <= wr_base_addr_reg;
    wr_addr_offset_next <= wr_addr_offset_reg;

    chunk_byte_count_next <= chunk_byte_count_reg;
    chunk_buf_id_next <= chunk_buf_id_reg;

    buf_addr_next <= buf_addr_reg;
    last_next <= last_reg;

    o_wr_addr_ready <= '0';
    o_frame_done <= '0';

    o_chunk_ready <= '0';

    o_buf_rd_addr <= buf_addr_reg;
    o_buf_rd_id <= chunk_buf_id_reg;

    M_AXI_AWADDR <= std_logic_vector(unsigned(wr_base_addr_reg) + wr_addr_offset_reg);
    M_AXI_AWLEN <= calc_awlen(chunk_byte_count_reg);
    M_AXI_AWSIZE <= "010";
    M_AXI_AWBURST <= "01";
    M_AXI_AWPROT <= "000";
    M_AXI_AWVALID <= '0';

    M_AXI_WDATA <= i_buf_rd_data;
    M_AXI_WSTRB <= calc_wstrb(chunk_byte_count_reg);
    M_AXI_WLAST <= '0';
    M_AXI_WVALID <= '0';

    M_AXI_BREADY <= '0';

    case axi_writer_state_reg is

      when S_IDLE =>
        o_wr_addr_ready <= '1';

        if (i_wr_addr_valid = '1') then
          wr_base_addr_next <= i_wr_base_addr;
          wr_addr_offset_next <= (others => '0');
          buf_addr_next <= (others => '0');
          chunk_byte_count_next <= (others => '0');
          last_next <= '0';

          axi_writer_state_next <= S_RECV_CHUNK;
        end if;

      when S_RECV_CHUNK =>
        o_chunk_ready <= '1';

        if (i_chunk_valid = '1') then

          if (i_chunk_error = '1') then
          -- If this chunk is marked with 'i_chunk_error', then some byte within the current payload is corrupted
          -- Reset state so the next payload overwrites the same memory location
            wr_addr_offset_next <= (others => '0');
            buf_addr_next <= (others => '0');
            chunk_byte_count_next <= (others => '0');
            last_next <= '0';

          elsif (i_chunk_last = '1' and i_chunk_byte_count = 0) then
            -- If this chunk is marked with 'i_chunk_last' and 'i_chunk_byte_count' = 0,
            -- this chunk is empty and is being used to indicate the full payload has been sent with previous chunks
            -- 'AXI Writer' can reset its state and assert 'o_frame_done' to indicate it has completed writing the payload to memory
            o_frame_done <= '1';
            wr_addr_offset_next <= (others => '0');
            buf_addr_next <= (others => '0');
            chunk_byte_count_next <= (others => '0');
            last_next <= '0';
            axi_writer_state_next <= S_IDLE;

          else
            last_next <= i_chunk_last;
            chunk_byte_count_next <= i_chunk_byte_count;
            chunk_buf_id_next <= i_chunk_buf_id;
            buf_addr_next <= (others => '0');

            axi_writer_state_next <= S_AWVALID;
          end if;

        end if;

      when S_AWVALID =>
        M_AXI_AWVALID <= '1';

        if (M_AXI_AWREADY = '1') then
          axi_writer_state_next <= S_AXI_WRITE;
        end if;

      when S_AXI_WRITE =>
        M_AXI_WVALID <= '1';
        M_AXI_WDATA <= i_buf_rd_data;
        M_AXI_WSTRB <= calc_wstrb(chunk_byte_count_reg);

        if (chunk_byte_count_reg <= 4) then
          M_AXI_WLAST <= '1';
        end if;

        if (M_AXI_WREADY = '1') then

          if (chunk_byte_count_reg <= 4) then
            wr_addr_offset_next <= wr_addr_offset_reg + resize(chunk_byte_count_reg, wr_addr_offset_reg'length);
            chunk_byte_count_next <= (others => '0');
            axi_writer_state_next <= S_WAIT_B;
          else
            wr_addr_offset_next <= wr_addr_offset_reg + 4;
            chunk_byte_count_next <= chunk_byte_count_reg - 4;
            buf_addr_next <= buf_addr_reg + 1;
          end if;

        end if;

      when S_WAIT_B =>
        M_AXI_BREADY <= '1';

        if (M_AXI_BVALID = '1') then
          if (last_reg = '1') then
            o_frame_done <= '1';
            axi_writer_state_next <= S_IDLE;
          else
            axi_writer_state_next <= S_RECV_CHUNK;
          end if;
        end if;

    end case;

  end process;

end architecture;