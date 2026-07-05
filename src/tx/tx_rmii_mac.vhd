library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tx_rmii_mac is
    port (
        -- RMII
        i_ref_clk : in std_logic;

        -- FIFO Manager toggle-based handshaking interface
        i_frame_tx_start : in std_logic;
        o_frame_tx_start_ack : out std_logic;
        o_frame_tx_finish : out std_logic;
        i_frame_tx_finish_ack : in std_logic

    );
end entity;

architecture rtl of tx_rmii_mac is
begin

end architecture;