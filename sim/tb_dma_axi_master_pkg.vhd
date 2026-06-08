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
        constant c_num_beats_full_transaction : integer := 4;

        variable num_transactions : integer,
        variable num_beats_final_transaction : integer,
        variable num_bytes_final_beat : integer,
        variable aw_accept : boolean := false,
        variable w_accept : boolean := false
    begin

        -- Expected number of AXI write transactions
        -- Each transaction can hold 16 bytes (4 beats × 4 bytes/beat)
        num_transactions := (expected_payload'length + 15) / 16;

        -- Expected number of beats in the final transaction
        if (expected_payload'length = 0) then
            num_beats_final_transaction := 0;
        elsif (expected_payload'length mod 16 = 0) then
            -- Final transaction is completely full
            num_beats_final_transaction := 4;
        else
            -- Remaining bytes in final transaction rounded up to beats
            num_beats_final_transaction := 
                ((expected_payload'length mod 16) + 3) / 4;
        end if;

        -- Expected number of bytes in the final beat
        if (expected_payload'length = 0) then
            num_bytes_final_beat := 0;
        elsif (expected_payload'length mod 4 = 0) then
            -- Final beat is completely full
            num_bytes_final_beat := 4;
        else
            num_bytes_final_beat := expected_payload'length mod 4;
        end if;

        -- Synchronize with 'clk'
        wait until rising_edge(clk);
        wait for 1 ns;

        for i in 0 to (num_transactions-1) loop
            -- De-assert BVALID signal
            axi_bus.bvalid <= '0';

            -- AW valid/ready handshake
            -- For now, assume AWADDR is correct
            while (not aw_accept) loop
                axi_bus.awready <= '1';

                if (axi_bus.awvalid = '1') then
                    aw_accept := true;
                end if;

                wait until rising_edge(clk);
                wait for 1 ns;

                if (aw_accept) then
                    axi_bus.awready <= '0';
                end if
            end loop;


            -- WDATA width is 32-bit (4 bytes)
            -- Expected number of 
            -- W valid/ready handshake
        for i in 0 to (c_num_beats_full_transaction-1) loop
            while (not w_accept) loop
                axi_bus.wready <= '1';

                if (axi_bus.wvalid = '1') then
                    w_accept := true;
                end if;

                wait until rising_edge(clk);
                wait for 1 ns;

                if (w_accept) then
                    axi_bus.wready <= '0';
                end if;
            end loop;
        end loop;
            S
        
        



        


        
    end verify_dma_axi_payload_write;


end package body;