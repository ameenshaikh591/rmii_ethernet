library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.eth_rx_package.all;


package tb_dma_axi_master_pkg is

end package;

package body tb_dma_axi_master_pkg is

    procedure verify_dma_axi_payload_write (
        signal clk : in std_logic,
        signal axi_bus : inout t_axi_write_bus,
        constant expected_payload : in t_DATA
    ) is
    begin
        wait until rising_edge(clk);
        wait for 1 ns;

        
    end verify_dma_axi_payload_write;


end package body;