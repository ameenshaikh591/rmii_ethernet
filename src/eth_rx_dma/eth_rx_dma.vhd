library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.eth_rx_package.all;

entity eth_rx_dma is

  port (
    -- reset and clock
    i_aresetn : in std_logic;
    i_aclk    : in std_logic;

    -- RX FIFO interface
    i_rx_fifo_dout  : in  std_logic_vector(9 downto 0);
    i_rx_fifo_empty : in  std_logic;
    o_rx_fifo_rd_en : out std_logic;

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

    -- AXI master write address channel
    M_AXI_AWADDR  : out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
    M_AXI_AWLEN   : out std_logic_vector(7 downto 0);
    M_AXI_AWSIZE  : out std_logic_vector(2 downto 0);
    M_AXI_AWBURST : out std_logic_vector(1 downto 0);
    M_AXI_AWPROT  : out std_logic_vector(2 downto 0);
    M_AXI_AWVALID : out std_logic;
    M_AXI_AWREADY : in  std_logic;

    -- AXI master write data channel
    M_AXI_WDATA   : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
    M_AXI_WSTRB   : out std_logic_vector((C_M_AXI_DATA_WIDTH/8)-1 downto 0);
    M_AXI_WLAST   : out std_logic;
    M_AXI_WVALID  : out std_logic;
    M_AXI_WREADY  : in  std_logic;

    -- AXI master write response channel
    M_AXI_BRESP   : in  std_logic_vector(1 downto 0);
    M_AXI_BVALID  : in  std_logic;
    M_AXI_BREADY  : out std_logic
  );
end entity;

architecture rtl of eth_rx_dma is

  -- Payload collector <-> AXI writer
  signal chunk_valid      : std_logic;
  signal chunk_ready      : std_logic;
  signal chunk_buf_id     : std_logic;
  signal chunk_byte_count : unsigned(4 downto 0);
  signal chunk_last       : std_logic;
  signal chunk_error      : std_logic;

  -- Status manager <-> AXI writer
  signal wr_addr_valid : std_logic;
  signal wr_addr_ready : std_logic;
  signal wr_base_addr  : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
  signal frame_done    : std_logic;

  -- Payload collector -> ping-pong buffer
  signal buf_wr_en   : std_logic;
  signal buf_wr_addr : unsigned(3 downto 0);
  signal buf_wr_data : std_logic_vector(7 downto 0);
  signal buf_wr_id   : std_logic;

  -- AXI writer -> ping-pong buffer
  signal buf_rd_addr : unsigned(1 downto 0);
  signal buf_rd_id   : std_logic;
  signal buf_rd_data : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);

  type t_ping_pong_buf is array (0 to 1, 0 to 3) of std_logic_vector(31 downto 0);
  signal ping_pong_buf_reg : t_ping_pong_buf;

begin

  payload_collector_inst : entity work.dma_payload_collector
    port map (
      i_aclk    => i_aclk,
      i_aresetn => i_aresetn,

      i_rx_fifo_dout  => i_rx_fifo_dout,
      i_rx_fifo_empty => i_rx_fifo_empty,
      o_rx_fifo_rd_en => o_rx_fifo_rd_en,

      o_chunk_valid      => chunk_valid,
      i_chunk_ready      => chunk_ready,

      o_chunk_buf_id     => chunk_buf_id,
      o_chunk_byte_count => chunk_byte_count,
      o_chunk_last       => chunk_last,
      o_chunk_error      => chunk_error,

      o_buf_wr_en   => buf_wr_en,
      o_buf_wr_addr => buf_wr_addr,
      o_buf_wr_data => buf_wr_data,
      o_buf_wr_id   => buf_wr_id
    );

  axi_writer_inst : entity work.dma_axi_writer
    generic map (
      C_M_AXI_ADDR_WIDTH => C_M_AXI_ADDR_WIDTH,
      C_M_AXI_DATA_WIDTH => C_M_AXI_DATA_WIDTH
    )
    port map (
      i_aresetn => i_aresetn,
      i_aclk    => i_aclk,

      i_chunk_valid      => chunk_valid,
      o_chunk_ready      => chunk_ready,

      i_chunk_buf_id     => chunk_buf_id,
      i_chunk_byte_count => chunk_byte_count,
      i_chunk_last       => chunk_last,
      i_chunk_error      => chunk_error,

      M_AXI_AWADDR  => M_AXI_AWADDR,
      M_AXI_AWLEN   => M_AXI_AWLEN,
      M_AXI_AWSIZE  => M_AXI_AWSIZE,
      M_AXI_AWBURST => M_AXI_AWBURST,
      M_AXI_AWPROT  => M_AXI_AWPROT,
      M_AXI_AWVALID => M_AXI_AWVALID,
      M_AXI_AWREADY => M_AXI_AWREADY,

      M_AXI_WDATA  => M_AXI_WDATA,
      M_AXI_WSTRB  => M_AXI_WSTRB,
      M_AXI_WLAST  => M_AXI_WLAST,
      M_AXI_WVALID => M_AXI_WVALID,
      M_AXI_WREADY => M_AXI_WREADY,

      M_AXI_BRESP  => M_AXI_BRESP,
      M_AXI_BVALID => M_AXI_BVALID,
      M_AXI_BREADY => M_AXI_BREADY,

      i_wr_addr_valid => wr_addr_valid,
      o_wr_addr_ready => wr_addr_ready,
      i_wr_base_addr  => wr_base_addr,
      o_frame_done    => frame_done,

      o_buf_rd_addr => buf_rd_addr,
      o_buf_rd_id   => buf_rd_id,
      i_buf_rd_data => buf_rd_data
    );

  status_manager_inst : entity work.dma_status_manager
    generic map (
      C_M_AXI_ADDR_WIDTH => C_M_AXI_ADDR_WIDTH,
      C_M_AXI_DATA_WIDTH => C_M_AXI_DATA_WIDTH,
      C_S_AXI_ADDR_WIDTH => C_S_AXI_ADDR_WIDTH,
      C_S_AXI_DATA_WIDTH => C_S_AXI_DATA_WIDTH
    )
    port map (
      i_aresetn => i_aresetn,
      i_aclk    => i_aclk,

      o_wr_addr_valid => wr_addr_valid,
      i_wr_addr_ready => wr_addr_ready,
      o_wr_base_addr  => wr_base_addr,
      i_frame_done    => frame_done,

      S_AXI_AWADDR  => S_AXI_AWADDR,
      S_AXI_AWPROT  => S_AXI_AWPROT,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_AWREADY => S_AXI_AWREADY,

      S_AXI_WDATA  => S_AXI_WDATA,
      S_AXI_WSTRB  => S_AXI_WSTRB,
      S_AXI_WVALID => S_AXI_WVALID,
      S_AXI_WREADY => S_AXI_WREADY,

      S_AXI_BRESP  => S_AXI_BRESP,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_BREADY => S_AXI_BREADY,

      S_AXI_ARADDR  => S_AXI_ARADDR,
      S_AXI_ARPROT  => S_AXI_ARPROT,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_ARREADY => S_AXI_ARREADY,

      S_AXI_RDATA  => S_AXI_RDATA,
      S_AXI_RRESP  => S_AXI_RRESP,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_RREADY => S_AXI_RREADY
    );

  -- Ping-pong buffer write side
  process(i_aclk)
    variable word_index : integer;
    variable byte_index : integer;
    variable buf_index  : integer;
  begin
    if rising_edge(i_aclk) then
      if (i_aresetn = '0') then
        ping_pong_buf_reg <= (others => (others => (others => '0')));
      else
        if (buf_wr_en = '1') then
          buf_index  := to_integer(unsigned'(0 => buf_wr_id));
          word_index := to_integer(buf_wr_addr(3 downto 2));
          byte_index := to_integer(buf_wr_addr(1 downto 0));

          case byte_index is
            when 0 =>
              ping_pong_buf_reg(buf_index, word_index)(7 downto 0) <= buf_wr_data;
            when 1 =>
              ping_pong_buf_reg(buf_index, word_index)(15 downto 8) <= buf_wr_data;
            when 2 =>
              ping_pong_buf_reg(buf_index, word_index)(23 downto 16) <= buf_wr_data;
            when others =>
              ping_pong_buf_reg(buf_index, word_index)(31 downto 24) <= buf_wr_data;
          end case;
        end if;
      end if;
    end if;
  end process;

  -- Ping-pong buffer read side
  buf_rd_data <= ping_pong_buf_reg(
    to_integer(unsigned'(0 => buf_rd_id)),
    to_integer(buf_rd_addr)
  );

end architecture;