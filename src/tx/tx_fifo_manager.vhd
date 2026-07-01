library ieee;
use ieee.std_logic_1164.all;

use work.eth_tx_package.all;

entity tx_fifo_manager is
  port (
    clk : in std_logic;
    resetn : in std_logic;

    i_buf_wr_valid : in std_logic;
    o_buf_wr_ready : out std_logic;
    i_buf_wr_data : in std_logic_vecto(C_FIFO_ENTRY_WIDTH-1 downto 0);
    i_read_complete : in std_logic;
    i_read_error : in std_logic;

    o_frame_tx_complete : out std_logic;
    i_sched_frame_req_valid : in std_logic;
    o_sched_frame_req_ready : out std_logic;
    i_sched_frame_dest_mac : in std_logic_vector(C_MAC_ADDR_WIDTH-1 downto 0)
  );
end entity;


architecture rtl of tx_fifo_manager is
begin

end architecture;