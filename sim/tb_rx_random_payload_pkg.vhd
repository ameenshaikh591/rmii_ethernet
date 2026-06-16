library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.eth_rx_package.all;

package tb_rx_random_payload_pkg is

    constant c_num_random_payloads : integer := 7;

    type random_payloads_arr is array(0 to c_num_random_payloads-1) of t_DATA(0 to 255);
    type random_payload_lengths_arr is array (0 to c_num_random_payloads-1) of integer;

    shared variable seed1 : positive := 101;
    shared variable seed2 : positive := 202;

    -- Generates a payload with 'payload_length' meaningful bytes
    -- The remaining bytes will be set to 0
    -- Even though a 'payload' type of 't_DATA(0 to 255)' is required, not all 256 bytes will be utilized
    procedure random_payload(
        payload_length : out integer;
        payload : out t_DATA(0 to 255)
    );

    -- Populates the 'random_payloads_arr' to contain 'c_num_random_payloads' random payloads
    -- Also populates the 'random_payload_lengths_arr' to contain the number of meaningful bytes of each random payload
    procedure generate_random_payloads_arr(
        random_payloads : out random_payloads_arr;
        random_payload_lengths : out random_payload_lengths_arr
    );

end package;

package body tb_rx_random_payload_pkg is

    procedure random_payload(
        variable payload_length : out integer;
        variable payload : out t_DATA(0 to 255)
    ) is
        variable rand : real;
    begin

        -- Random length from 1 to 256
        uniform(seed1, seed2, rand);
        payload_length := integer(rand * 256.0);
        if (payload_length = 0) then
            payload_length := 1;
        end if;

        -- Fill the active portion of the payload
        for i in 0 to (payload_length-1) loop
            uniform(seed1, seed2, rand);
            payload(i) := std_logic_vector(to_unsigned(integer(rand * 256.0), 8));
        end loop;

        -- Set unused bytes to x"00"
        if (payload_length < 256) then
            for i in payload_length to 255 loop
                payload(i) := (others => '0');
            end loop;
        end if;

    end random_payload;

    procedure generate_random_payloads_arr(
        variable random_payloads : out random_payloads_arr;
        variable random_payload_lengths : out random_payload_lengths_arr
    ) is
    begin

        for i in 0 to (c_num_random_payloads - 1) loop
            random_payload(
                random_payload_lengths(i),
                random_payloads(i)
            );
        end loop;

    end generate_random_payloads_arr;

end package body;