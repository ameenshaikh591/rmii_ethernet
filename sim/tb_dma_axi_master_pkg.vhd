library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.eth_rx_package.all;


package tb_dma_axi_master_pkg is
    procedure verify_dma_axi_payload_write (
        signal clk : in std_logic;
        signal axi_bus : inout t_axi_write_bus;
        constant expected_payload : in t_DATA;
        constant expected_payload_length : in integer
    );
end package;

    package body tb_dma_axi_master_pkg is

        procedure verify_dma_axi_payload_write (
        signal clk : in std_logic;
        signal axi_bus : inout t_axi_write_bus;
        constant expected_payload : in t_DATA;
        constant expected_payload_length : in integer
    ) is
        constant c_num_beats_full_transaction : integer := 4;

        variable num_transactions : integer;
        variable num_beats_final_transaction : integer;
        variable num_bytes_final_beat : integer;
        variable aw_accept : boolean := false;
        variable w_accept : boolean := false;
        variable b_accept : boolean := false;
        variable recorded_payload : t_DATA(expected_payload'range) := (others => (others => '0'));
        variable byte_counter : integer := 0;
        variable final_beat : integer;
        variable payload_match : boolean := true;
    begin

        num_transactions := (expected_payload_length + 15) / 16;

        if (expected_payload_length = 0) then
            num_beats_final_transaction := 0;
        elsif (expected_payload_length mod 16 = 0) then
            num_beats_final_transaction := 4;
        else
            num_beats_final_transaction := ((expected_payload_length mod 16) + 3) / 4;
        end if;

        if (expected_payload_length = 0) then
            num_bytes_final_beat := 0;
        elsif (expected_payload_length mod 4 = 0) then
            num_bytes_final_beat := 4;
        else
            num_bytes_final_beat := expected_payload_length mod 4;
        end if;

        wait until rising_edge(clk);
        wait for 1 ns;

        -- Handle all non-final transactions
        if (num_transactions > 1) then
            for txn in 0 to (num_transactions-2) loop
                aw_accept := false;
                b_accept := false;

                axi_bus.bvalid <= '0';
                axi_bus.awready <= '0';
                axi_bus.wready <= '0';

                while (not aw_accept) loop
                    axi_bus.awready <= '1';

                    if (axi_bus.awvalid = '1') then
                        aw_accept := true;
                    end if;

                    wait until rising_edge(clk);
                    wait for 1 ns;

                    if (aw_accept) then
                        axi_bus.awready <= '0';
                    end if;
                end loop;

                for beat in 0 to (c_num_beats_full_transaction-1) loop
                    w_accept := false;

                    while (not w_accept) loop
                        axi_bus.wready <= '1';

                        if (axi_bus.wvalid = '1') then
                            w_accept := true;

                            if (axi_bus.wlast = '1' and beat /= (c_num_beats_full_transaction-1)) then
                                report "ERROR: 'WLAST' incorrectly asserted before final beat";
                            end if;

                            if (axi_bus.wstrb(0) = '1') then
                                recorded_payload(byte_counter) := axi_bus.wdata(7 downto 0);
                            end if;

                            if (axi_bus.wstrb(1) = '1') then
                                recorded_payload(byte_counter + 1) := axi_bus.wdata(15 downto 8);
                            end if;

                            if (axi_bus.wstrb(2) = '1') then
                                recorded_payload(byte_counter + 2) := axi_bus.wdata(23 downto 16);
                            end if;

                            if (axi_bus.wstrb(3) = '1') then
                                recorded_payload(byte_counter + 3) := axi_bus.wdata(31 downto 24);
                            end if;

                            byte_counter := byte_counter + 4;
                        end if;

                        wait until rising_edge(clk);
                        wait for 1 ns;
                    end loop;
                end loop;

                axi_bus.wready <= '0';

                while (not b_accept) loop
                    axi_bus.bvalid <= '1';
                    axi_bus.bresp <= "00";

                    if (axi_bus.bready = '1') then
                        b_accept := true;
                    end if;

                    wait until rising_edge(clk);
                    wait for 1 ns;

                    if (b_accept) then
                        axi_bus.bvalid <= '0';
                    end if;
                end loop;
            end loop;
        end if;

        -- Handle final transaction
        if (num_transactions > 0) then
            aw_accept := false;
            b_accept := false;

            axi_bus.bvalid <= '0';
            axi_bus.awready <= '0';
            axi_bus.wready <= '0';

            while (not aw_accept) loop
                axi_bus.awready <= '1';

                if (axi_bus.awvalid = '1') then
                    aw_accept := true;
                end if;

                wait until rising_edge(clk);
                wait for 1 ns;

                if (aw_accept) then
                    axi_bus.awready <= '0';
                end if;
            end loop;

            final_beat := num_beats_final_transaction - 1;

            for beat in 0 to (num_beats_final_transaction-1) loop
                w_accept := false;

                while (not w_accept) loop
                    axi_bus.wready <= '1';

                    if (axi_bus.wvalid = '1') then
                        w_accept := true;

                        if (beat = final_beat) then
                            if (axi_bus.wlast /= '1') then
                                report "ERROR: 'WLAST' was not asserted on final beat";
                            end if;
                        else
                            if (axi_bus.wlast = '1') then
                                report "ERROR: 'WLAST' incorrectly asserted before final beat";
                            end if;
                        end if;

                        if (axi_bus.wstrb(0) = '1') then
                            if (byte_counter <= expected_payload_length - 1) then
                                recorded_payload(byte_counter) := axi_bus.wdata(7 downto 0);
                            else
                                report "ERROR: WSTRB(0) asserted past expected payload length";
                            end if;
                        end if;

                        if (axi_bus.wstrb(1) = '1') then
                            if ((byte_counter + 1) <= expected_payload_length - 1) then
                                recorded_payload(byte_counter + 1) := axi_bus.wdata(15 downto 8);
                            else
                                report "ERROR: WSTRB(1) asserted past expected payload length";
                            end if;
                        end if;

                        if (axi_bus.wstrb(2) = '1') then
                            if ((byte_counter + 2) <= expected_payload_length - 1) then
                                recorded_payload(byte_counter + 2) := axi_bus.wdata(23 downto 16);
                            else
                                report "ERROR: WSTRB(2) asserted past expected payload length";
                            end if;
                        end if;

                        if (axi_bus.wstrb(3) = '1') then
                            if ((byte_counter + 3) <= expected_payload_length - 1) then
                                recorded_payload(byte_counter + 3) := axi_bus.wdata(31 downto 24);
                            else
                                report "ERROR: WSTRB(3) asserted past expected payload length";
                            end if;
                        end if;

                        if (beat = final_beat) then
                            byte_counter := byte_counter + num_bytes_final_beat;
                        else
                            byte_counter := byte_counter + 4;
                        end if;
                    end if;

                    wait until rising_edge(clk);
                    wait for 1 ns;
                end loop;
            end loop;

            axi_bus.wready <= '0';

            while (not b_accept) loop
                axi_bus.bvalid <= '1';
                axi_bus.bresp <= "00";

                if (axi_bus.bready = '1') then
                    b_accept := true;
                end if;

                wait until rising_edge(clk);
                wait for 1 ns;

                if (b_accept) then
                    axi_bus.bvalid <= '0';
                end if;
            end loop;

            -- Verify only the meaningful bytes
            for i in 0 to expected_payload_length - 1 loop
                if (expected_payload(i) /= recorded_payload(i)) then
                    payload_match := false;

                    report "ERROR: Payload mismatch at byte " & integer'image(i) &
                        ". Expected: 0x" & to_hstring(expected_payload(i)) &
                        ", Actual: 0x" & to_hstring(recorded_payload(i));
                end if;
            end loop;

            if (payload_match) then
                report "INFO: Correct match between 'expected_payload' and 'recorded_payload'";
            else
                report "ERROR: Incorrect match between 'expected_payload' and 'recorded_payload'";
            end if;

        end if;
    end verify_dma_axi_payload_write;

end package body;