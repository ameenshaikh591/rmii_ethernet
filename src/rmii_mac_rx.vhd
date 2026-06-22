library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rmii_mac_rx is
    port (
        i_rst_n : in std_logic;
        i_ref_clk : in std_logic;

        i_rxd : in std_logic_vector(1 downto 0);
        i_rxer : in std_logic;
        i_crs_dv : in std_logic;

        i_rx_fifo_full : in std_logic;

        o_rx_fifo_valid : out std_logic;
        o_rx_fifo_wr_data : out std_logic_vector(9 downto 0)
    );
end entity;

architecture rtl of rmii_mac_rx is
    type t_RX_STATE is 
        (s_PREAMBLE, s_DEST_ADDR, s_SRC_ADDR, s_TYPE, s_DATA);

    signal rx_state_q : t_RX_STATE;
    signal rx_state_d : t_RX_STATE;

    signal rx_shift_q : std_logic_vector(7 downto 0);
    signal rx_shift_d : std_logic_vector(7 downto 0);

    signal rx_shift_ctr_q : unsigned(1 downto 0);
    signal rx_shift_ctr_d : unsigned(1 downto 0);

    signal rx_byte_ctr_q : unsigned(2 downto 0);
    signal rx_byte_ctr_d : unsigned(2 downto 0);

    type t_DELAY_BUFFER is array (0 to 3) of std_logic_vector(7 downto 0);
    signal delay_buf_q : t_DELAY_BUFFER;
    signal delay_buf_d : t_DELAY_BUFFER;

    signal delay_buf_ctr_q : unsigned(2 downto 0);
    signal delay_buf_ctr_d : unsigned(2 downto 0);

    type t_MAC_ADDR is array (0 to 5) of std_logic_vector(7 downto 0);
    constant mac_addr : t_MAC_ADDR := (
        x"00", x"11", x"22", x"33", x"44", x"55"
    );

    signal crs_dv_q : std_logic; 
    signal crs_dv_d : std_logic;

    signal rx_fifo_valid_q : std_logic;
    signal rx_fifo_valid_d : std_logic;

    signal rx_fifo_wr_data_q : std_logic_vector(9 downto 0);
    signal rx_fifo_wr_data_d : std_logic_vector(9 downto 0);

    signal crc_q : std_logic_vector(31 downto 0);
    signal crc_d : std_logic_vector(31 downto 0);

    signal frame_ready_q : std_logic;
    signal frame_ready_d : std_logic;

    signal i_rst_n1 : std_logic := '0';
    signal i_rst_n2 : std_logic := '0';

    signal pending_err_q : std_logic;
    signal pending_err_d : std_logic;

    signal dbg_rx_state : std_logic_vector(2 downto 0);

    attribute mark_debug : string;

    attribute mark_debug of dbg_rx_state : signal is "true";
    attribute mark_debug of rx_shift_q : signal is "true";
    attribute mark_debug of rx_shift_ctr_q : signal is "true";
    attribute mark_debug of rx_shift_d : signal is "true";

    function crc32_update(
        crc_in : std_logic_vector(31 downto 0);
        data : std_logic_vector(7 downto 0)
    ) return std_logic_vector is
        variable crc : unsigned(31 downto 0);
    begin
        crc := unsigned(crc_in) xor resize(unsigned(data), 32);

        for i in 0 to 7 loop
            if crc(0) = '1' then
                crc := shift_right(crc, 1) xor x"EDB88320";
            else
                crc := shift_right(crc, 1);
            end if;
        end loop;

        return std_logic_vector(crc);
    end function;
begin

    with rx_state_q select
        dbg_rx_state <=
            "000" when s_PREAMBLE,
            "001" when s_DEST_ADDR,
            "010" when s_SRC_ADDR,
            "011" when s_TYPE,
            "100" when s_DATA,
            "111" when others;

    process(all) is
    begin
        o_rx_fifo_valid <= rx_fifo_valid_q;
        o_rx_fifo_wr_data <= rx_fifo_wr_data_q;
    end process;

    process(i_ref_clk) is
    begin
        if rising_edge(i_ref_clk) then
            i_rst_n1 <= i_rst_n;
            i_rst_n2 <= i_rst_n1;
            if (i_rst_n2 = '0') then
                rx_state_q <= s_PREAMBLE;
                rx_shift_q <= (others => '0');
                rx_shift_ctr_q <= (others => '0');
                rx_byte_ctr_q <= (others => '0');
                delay_buf_ctr_q <= (others => '0');
                delay_buf_q <= (others => (others => '0'));
                crs_dv_q <= '0';
                rx_fifo_valid_q <= '0';
                rx_fifo_wr_data_q <= (others => '0');
                crc_q <= x"FFFFFFFF";
                frame_ready_q <= '0';
                pending_err_q <= '0';
            else
                rx_state_q <= rx_state_d;
                rx_shift_q <= rx_shift_d;
                rx_shift_ctr_q <= rx_shift_ctr_d;
                rx_byte_ctr_q <= rx_byte_ctr_d;
                delay_buf_ctr_q <= delay_buf_ctr_d;
                delay_buf_q <= delay_buf_d;
                crs_dv_q <= crs_dv_d;
                rx_fifo_valid_q <= rx_fifo_valid_d;
                rx_fifo_wr_data_q <= rx_fifo_wr_data_d;
                crc_q <= crc_d;
                frame_ready_q <= frame_ready_d;
                pending_err_q <= pending_err_d;
            end if;
        end if;
    end process;

    process(all) is
        variable v_rx_shift_d : std_logic_vector(7 downto 0);
        variable v_pop_byte : std_logic_vector(7 downto 0);
        variable v_computed_fcs : std_logic_vector(31 downto 0);
        variable v_received_fcs : std_logic_vector(31 downto 0);

        procedure try_push_pending_err is
        begin
            if (pending_err_q = '1' and i_rx_fifo_full = '0') then
                rx_fifo_valid_d <= '1';
                rx_fifo_wr_data_d <= "11" & x"00";
                pending_err_d <= '0';
            end if;
        end procedure;
    begin
        -- Defaults
        rx_state_d <= rx_state_q;
        rx_shift_d <= rx_shift_q;
        rx_shift_ctr_d <= rx_shift_ctr_q;
        delay_buf_d <= delay_buf_q;
        delay_buf_ctr_d <= delay_buf_ctr_q;
        rx_byte_ctr_d <= rx_byte_ctr_q;
        crs_dv_d <= i_crs_dv;
        rx_fifo_valid_d <= '0';
        rx_fifo_wr_data_d <= rx_fifo_wr_data_q;
        crc_d <= crc_q;
        frame_ready_d <= frame_ready_q;
        pending_err_d <= pending_err_q;

        -- If 'pending_err' is set, attempt to push the error to the RX Fifo once non-full
        try_push_pending_err;

        case rx_state_q is
            when s_PREAMBLE =>

                if (i_crs_dv = '1') then
                    v_rx_shift_d := i_rxd & rx_shift_q(7 downto 2);
                    rx_shift_d <= v_rx_shift_d;

                    if (rx_shift_ctr_q = 3) then
                        rx_shift_ctr_d <= (others => '0');

                        if (v_rx_shift_d = x"D5" and frame_ready_q = '1') then
                            rx_state_d <= s_DEST_ADDR;

                            -- Reset CRC
                            crc_d <= x"FFFFFFFF";
                            delay_buf_ctr_d <= (others => '0');
                            rx_byte_ctr_d <= (others => '0');
                            frame_ready_d <= '0';
                        end if;
                    else
                        rx_shift_ctr_d <= rx_shift_ctr_q + 1;
                    end if;
                else
                    rx_shift_ctr_d <= (others => '0');
                    frame_ready_d <= '1';
                end if;

            when s_DEST_ADDR =>

                if (i_crs_dv = '1') then
                    v_rx_shift_d := i_rxd & rx_shift_q(7 downto 2);
                    rx_shift_d <= v_rx_shift_d;

                    if (rx_shift_ctr_q = 3) then
                        -- A new byte has been fully shifted into 'rx_shift_d'
                        rx_shift_ctr_d <= (others => '0');

                        if (v_rx_shift_d /= mac_addr(to_integer(rx_byte_ctr_q))) then
                            -- Ignore the remainder of this frame
                            rx_state_d <= s_PREAMBLE;
                            rx_byte_ctr_d <= (others => '0');
                        else
                            crc_d <= crc32_update(crc_q, v_rx_shift_d);

                            if (rx_byte_ctr_q = 5) then
                                -- 6 destination address bytes counted
                                -- Transition to the next state: 'SRC_ADDR'
                                rx_byte_ctr_d <= (others => '0');
                                rx_state_d <= s_SRC_ADDR;
                            else
                                rx_byte_ctr_d <= rx_byte_ctr_q + 1;
                            end if;
                        end if;
                    else
                        rx_shift_ctr_d <= rx_shift_ctr_q + 1;
                    end if;
                else
                    -- Error, transition to PREAMBLE state (the current frame will be dropped)
                    rx_state_d <= s_PREAMBLE;
                end if;
                
            when s_SRC_ADDR =>

                if (i_crs_dv = '1') then
                    v_rx_shift_d := i_rxd & rx_shift_q(7 downto 2);
                    rx_shift_d <= v_rx_shift_d;

                    if (rx_shift_ctr_q = 3) then
                        -- A new byte has been fully shifted into 'rx_shift_d'
                        rx_shift_ctr_d <= (others => '0');
                        crc_d <= crc32_update(crc_q, v_rx_shift_d);

                        if (rx_byte_ctr_q = 5) then
                            -- 6 source address bytes counted
                            -- Transition to the next state: 'TYPE'
                            rx_byte_ctr_d <= (others => '0');
                            rx_state_d <= s_TYPE;
                        else
                            rx_byte_ctr_d <= rx_byte_ctr_q + 1;
                        end if;
                    else
                        rx_shift_ctr_d <= rx_shift_ctr_q + 1;
                    end if;
                else
                    -- Error, transition to PREAMBLE state (the current frame will be dropped) 
                    rx_state_d <= s_PREAMBLE;
                end if;
                
            when s_TYPE =>

                if (i_crs_dv = '1') then
                    v_rx_shift_d := i_rxd & rx_shift_q(7 downto 2);
                    rx_shift_d <= v_rx_shift_d;

                    if (rx_shift_ctr_q = 3) then
                        -- A new byte has been fully shifted into 'rx_shift_d'
                        rx_shift_ctr_d <= (others => '0');
                        crc_d <= crc32_update(crc_q, v_rx_shift_d);

                        if (rx_byte_ctr_q = 1) then
                            -- 2 'type bytes counted
                            -- Transition to the next state: 'DATA'
                            rx_byte_ctr_d <= (others => '0');
                            rx_state_d <= s_DATA;
                            delay_buf_ctr_d <= (others => '0');
                        else
                            rx_byte_ctr_d <= rx_byte_ctr_q + 1;
                        end if;
                    else
                        rx_shift_ctr_d <= rx_shift_ctr_q + 1;
                    end if;
                else
                    -- Error, transition to PREAMBLE state (the current frame will be dropped) 
                    rx_state_d <= s_PREAMBLE;
                end if;

            when s_DATA =>

                if (i_crs_dv = '1') then
                    v_rx_shift_d := i_rxd & rx_shift_q(7 downto 2);
                    rx_shift_d <= v_rx_shift_d;

                    if (rx_shift_ctr_q = 3) then
                        -- A new byte has been fully shifted into 'rx_shift_d'
                        rx_shift_ctr_d <= (others => '0');

                        for i in 0 to 2 loop
                            -- Update the delay buffer to include the new byte
                            -- Shift everything else
                            delay_buf_d(i) <= delay_buf_q(i + 1);
                        end loop;

                        delay_buf_d(3) <= v_rx_shift_d;

                        if (delay_buf_ctr_q = 4) then
                            if (i_rx_fifo_full = '1' or pending_err_q = '1') then
                                -- Error: Cannot append to RX Fifo
                                -- Set 'pending_err' (if not already)
                                pending_err_d <= '1';
                                -- Transition to PREAMBLE state (the current frame will be dropped)
                                rx_state_d <= s_PREAMBLE;
                            else
                                v_pop_byte := delay_buf_q(0);

                                -- Signal to RX Fifo
                                rx_fifo_valid_d <= '1';
                                rx_fifo_wr_data_d <= "00" & v_pop_byte;

                                -- Update CRC
                                crc_d <= crc32_update(crc_q, v_pop_byte);
                            end if;
                        else
                            delay_buf_ctr_d <= delay_buf_ctr_q + 1;
                        end if;
                    else
                        rx_shift_ctr_d <= rx_shift_ctr_q + 1;
                    end if;

                elsif (i_crs_dv = '0' and crs_dv_q = '1') then
                    if (i_rx_fifo_full = '1' or pending_err_q = '1') then
                        -- Error: Cannot append to RX Fifo
                        -- Set 'pending_err' (if not already)
                        pending_err_d <= '1';
                        -- Transition to PREAMBLE state (the current frame will be dropped)
                        rx_state_d <= s_PREAMBLE;
                    else
                        -- Remaining 4 bytes in 'delay_buf_q' are FCS
                        -- Compare FCS bytes to computed CRC
                        v_computed_fcs := not crc_q;
                        v_received_fcs := delay_buf_q(3) & 
                                        delay_buf_q(2) & 
                                        delay_buf_q(1) & 
                                        delay_buf_q(0);

                        if (v_computed_fcs = v_received_fcs) then
                            -- Received frame is correct
                            -- Send a byte indicating end of successful frame
                            rx_fifo_valid_d <= '1';
                            rx_fifo_wr_data_d <= "10" & x"00";
                            rx_state_d <= s_PREAMBLE;
                            frame_ready_d <= '1';
                        else
                            -- Received frame is corrupted
                            -- Send a byte indicating end of corrupted frame
                            rx_fifo_valid_d <= '1';
                            rx_fifo_wr_data_d <= "11" & x"00";
                            rx_state_d <= s_PREAMBLE;
                            frame_ready_d <= '1';
                        end if;
                    end if;
                else 
                    -- Some error, indicate the error and reset
                    rx_fifo_valid_d <= '1';
                    rx_fifo_wr_data_d <= "11" & x"00";
                    rx_state_d <= s_PREAMBLE;
                end if;

        end case;
    end process;
end architecture;
