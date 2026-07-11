library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.eth_tx_package.all;

entity tx_rmii_mac is
    port (
        -- RMII
        i_rst_n   : in std_logic;
        i_ref_clk : in std_logic;
        o_tx_en   : out std_logic;
        o_txd     : out std_logic_vector(1 downto 0);

        -- FIFO Manager FIFO read interface
        o_mac_fifo_rd_en      : out std_logic;
        i_mac_fifo_dout       : in  std_logic_vector(C_FIFO_ENTRY_WIDTH-1 downto 0);
        i_mac_fifo_empty      : in  std_logic;
        i_mac_fifo_data_valid : in  std_logic;

        -- FIFO Manager toggle-based handshaking interface
        i_frame_tx_start     : in std_logic;
        o_frame_tx_start_ack : out std_logic;
        o_frame_tx_finish    : out std_logic;
        i_frame_tx_finish_ack : in std_logic

    );
end entity;

architecture rtl of tx_rmii_mac is
    type t_TX_STATE is (
        S_IFG,
        S_WAIT_FRAME,
        S_PREAMBLE,
        S_DEST_MAC,
        S_SRC_MAC,
        S_TYPE,
        S_DATA,
        S_PADDING,
        S_FCS,
        S_FRAME_COMPLETE,
        S_WAIT_FRAME_COMPLETE_ACK
    );

    type t_BYTE_ARRAY is array (natural range <>) of std_logic_vector(7 downto 0);

    constant C_INIT_CRC : std_logic_vector(31 downto 0) := x"FFFFFFFF";
    constant C_PREAMBLE : std_logic_vector(7 downto 0) := x"55";
    constant C_SFD      : std_logic_vector(7 downto 0) := x"D5";

    constant C_ETH_MIN_PAYLOAD_BYTES : integer := 46;
    constant C_IFG_CYCLES            : integer := 48;

    constant C_FIFO_BYTE_COUNT_LSB : integer := 32;
    constant C_FIFO_BYTE_COUNT_MSB : integer := 33;

    constant C_SRC_MAC_ADDR : t_BYTE_ARRAY(0 to 5) := (
        x"00", x"11", x"22", x"33", x"44", x"55"
    );

    constant C_ETH_TYPE : t_BYTE_ARRAY(0 to 1) := (
        x"88", x"D5"
    );

    signal tx_state_reg : t_TX_STATE;
    signal tx_state_next : t_TX_STATE;

    signal tx_en_reg : std_logic;
    signal tx_en_next : std_logic;

    signal txd_reg : std_logic_vector(1 downto 0);
    signal txd_next : std_logic_vector(1 downto 0);

    signal ifg_ctr_reg : integer range 0 to C_IFG_CYCLES-1;
    signal ifg_ctr_next : integer range 0 to C_IFG_CYCLES-1;

    signal byte_phase_reg : integer range 0 to 3;
    signal byte_phase_next : integer range 0 to 3;

    signal byte_ctr_reg : integer range 0 to 7;
    signal byte_ctr_next : integer range 0 to 7;

    signal payload_byte_ctr_reg : integer range 0 to 2047;
    signal payload_byte_ctr_next : integer range 0 to 2047;

    signal fifo_byte_idx_reg : integer range 0 to 3;
    signal fifo_byte_idx_next : integer range 0 to 3;

    signal crc_reg : std_logic_vector(31 downto 0);
    signal crc_next : std_logic_vector(31 downto 0);

    signal fcs_reg : std_logic_vector(31 downto 0);
    signal fcs_next : std_logic_vector(31 downto 0);

    signal frame_start_sync_1_reg : std_logic;
    signal frame_start_sync_2_reg : std_logic;
    signal frame_start_prev_reg   : std_logic;
    signal frame_start_prev_next  : std_logic;

    signal frame_finish_ack_sync_1_reg : std_logic;
    signal frame_finish_ack_sync_2_reg : std_logic;
    signal frame_finish_ack_prev_reg   : std_logic;
    signal frame_finish_ack_prev_next  : std_logic;

    signal frame_tx_start_ack_reg  : std_logic;
    signal frame_tx_start_ack_next : std_logic;

    signal frame_tx_finish_reg  : std_logic;
    signal frame_tx_finish_next : std_logic;

    signal mac_fifo_rd_en : std_logic;

    function crc32_update(
        crc_in : std_logic_vector(31 downto 0);
        data   : std_logic_vector(7 downto 0)
    ) return std_logic_vector is
        variable crc : unsigned(31 downto 0);
    begin
        crc := unsigned(crc_in) xor resize(unsigned(data), 32);

        for i in 0 to 7 loop
            if (crc(0) = '1') then
                crc := shift_right(crc, 1) xor x"EDB88320";
            else
                crc := shift_right(crc, 1);
            end if;
        end loop;

        return std_logic_vector(crc);
    end function;

    function entry_byte_count(
        entry : std_logic_vector(C_FIFO_ENTRY_WIDTH-1 downto 0)
    ) return integer is
    begin
        case entry(C_FIFO_BYTE_COUNT_MSB downto C_FIFO_BYTE_COUNT_LSB) is
            when "00" =>
                return 4;
            when "01" =>
                return 1;
            when "10" =>
                return 2;
            when others =>
                return 3;
        end case;
    end function;

    function fifo_entry_byte(
        entry    : std_logic_vector(C_FIFO_ENTRY_WIDTH-1 downto 0);
        byte_idx : integer
    ) return std_logic_vector is
    begin
        case byte_idx is
            when 0 =>
                return entry(7 downto 0);
            when 1 =>
                return entry(15 downto 8);
            when 2 =>
                return entry(23 downto 16);
            when others =>
                return entry(31 downto 24);
        end case;
    end function;

    function fcs_byte(
        fcs      : std_logic_vector(31 downto 0);
        byte_idx : integer
    ) return std_logic_vector is
    begin
        case byte_idx is
            when 0 =>
                return fcs(7 downto 0);
            when 1 =>
                return fcs(15 downto 8);
            when 2 =>
                return fcs(23 downto 16);
            when others =>
                return fcs(31 downto 24);
        end case;
    end function;
begin

    o_tx_en <= tx_en_reg;
    o_txd <= txd_reg;

    o_mac_fifo_rd_en <= mac_fifo_rd_en;

    o_frame_tx_start_ack <= frame_tx_start_ack_reg;
    o_frame_tx_finish <= frame_tx_finish_reg;

    process(i_ref_clk) is
    begin
        if rising_edge(i_ref_clk) then
            byte_phase_reg <= byte_phase_next;
            byte_ctr_reg <= byte_ctr_next;
            payload_byte_ctr_reg <= payload_byte_ctr_next;

            fifo_byte_idx_reg <= fifo_byte_idx_next;

            crc_reg <= crc_next;
            fcs_reg <= fcs_next;

            if (i_rst_n = '0') then
                tx_state_reg <= S_IFG;
                tx_en_reg <= '0';
                txd_reg <= (others => '0');

                ifg_ctr_reg <= 0;

                frame_start_sync_1_reg <= '0';
                frame_start_sync_2_reg <= '0';
                frame_start_prev_reg <= '0';

                frame_finish_ack_sync_1_reg <= '0';
                frame_finish_ack_sync_2_reg <= '0';
                frame_finish_ack_prev_reg <= '0';

                frame_tx_start_ack_reg <= '0';
                frame_tx_finish_reg <= '0';
            else
                tx_state_reg <= tx_state_next;
                tx_en_reg <= tx_en_next;
                txd_reg <= txd_next;

                ifg_ctr_reg <= ifg_ctr_next;

                frame_start_sync_1_reg <= i_frame_tx_start;
                frame_start_sync_2_reg <= frame_start_sync_1_reg;
                frame_start_prev_reg <= frame_start_prev_next;

                frame_finish_ack_sync_1_reg <= i_frame_tx_finish_ack;
                frame_finish_ack_sync_2_reg <= frame_finish_ack_sync_1_reg;
                frame_finish_ack_prev_reg <= frame_finish_ack_prev_next;

                frame_tx_start_ack_reg <= frame_tx_start_ack_next;
                frame_tx_finish_reg <= frame_tx_finish_next;
            end if;
        end if;
    end process;

    process(all) is
        variable v_tx_byte : std_logic_vector(7 downto 0);
        variable v_crc     : std_logic_vector(31 downto 0);
        variable v_payload_byte_ctr : integer range 0 to 2047;

        procedure drive_rmii_byte(
            constant tx_byte : in std_logic_vector(7 downto 0)
        ) is
        begin
            tx_en_next <= '1';

            case byte_phase_reg is
                when 0 =>
                    txd_next <= tx_byte(1 downto 0);
                when 1 =>
                    txd_next <= tx_byte(3 downto 2);
                when 2 =>
                    txd_next <= tx_byte(5 downto 4);
                when others =>
                    txd_next <= tx_byte(7 downto 6);
            end case;
        end procedure;

        procedure advance_rmii_byte_dibit is
        begin
            if (byte_phase_reg = 3) then
                byte_phase_next <= 0;
            else
                byte_phase_next <= byte_phase_reg + 1;
            end if;
        end procedure;
    begin
        tx_state_next <= tx_state_reg;

        tx_en_next <= '0';
        txd_next <= (others => '0');

        ifg_ctr_next <= ifg_ctr_reg;
        byte_phase_next <= byte_phase_reg;
        byte_ctr_next <= byte_ctr_reg;
        payload_byte_ctr_next <= payload_byte_ctr_reg;

        fifo_byte_idx_next <= fifo_byte_idx_reg;

        crc_next <= crc_reg;
        fcs_next <= fcs_reg;

        frame_start_prev_next <= frame_start_prev_reg;
        frame_finish_ack_prev_next <= frame_finish_ack_prev_reg;

        frame_tx_start_ack_next <= frame_tx_start_ack_reg;
        frame_tx_finish_next <= frame_tx_finish_reg;

        mac_fifo_rd_en <= '0';

        case tx_state_reg is

            when S_IFG =>
                byte_phase_next <= 0;
                byte_ctr_next <= 0;
                payload_byte_ctr_next <= 0;
                fifo_byte_idx_next <= 0;
                crc_next <= C_INIT_CRC;
                fcs_next <= (others => '0');

                if (ifg_ctr_reg = C_IFG_CYCLES-1) then
                    ifg_ctr_next <= 0;
                    tx_state_next <= S_WAIT_FRAME;
                else
                    ifg_ctr_next <= ifg_ctr_reg + 1;
                end if;

            when S_WAIT_FRAME =>
                byte_phase_next <= 0;
                byte_ctr_next <= 0;

                if (frame_start_sync_2_reg /= frame_start_prev_reg) then
                    if (i_mac_fifo_empty = '0' and i_mac_fifo_data_valid = '1') then
                        frame_start_prev_next <= frame_start_sync_2_reg;
                        frame_tx_start_ack_next <= not frame_tx_start_ack_reg;

                        payload_byte_ctr_next <= 0;
                        fifo_byte_idx_next <= 0;
                        crc_next <= C_INIT_CRC;
                        fcs_next <= (others => '0');

                        tx_state_next <= S_PREAMBLE;
                    end if;
                else
                    frame_start_prev_next <= frame_start_sync_2_reg;
                end if;

            when S_PREAMBLE =>
                if (byte_ctr_reg = 7) then
                    v_tx_byte := C_SFD;
                else
                    v_tx_byte := C_PREAMBLE;
                end if;

                drive_rmii_byte(v_tx_byte);
                advance_rmii_byte_dibit;

                if (byte_phase_reg = 3) then
                    if (byte_ctr_reg = 7) then
                        byte_ctr_next <= 0;
                        fifo_byte_idx_next <= 0;
                        tx_state_next <= S_DEST_MAC;
                    else
                        byte_ctr_next <= byte_ctr_reg + 1;
                    end if;
                end if;

            when S_DEST_MAC =>
                if (i_mac_fifo_empty = '0' and i_mac_fifo_data_valid = '1') then
                    v_tx_byte := fifo_entry_byte(i_mac_fifo_dout, fifo_byte_idx_reg);

                    drive_rmii_byte(v_tx_byte);
                    advance_rmii_byte_dibit;

                    if (byte_phase_reg = 3) then
                        crc_next <= crc32_update(crc_reg, v_tx_byte);

                        if (byte_ctr_reg = 5) then
                            mac_fifo_rd_en <= '1';
                            byte_ctr_next <= 0;
                            fifo_byte_idx_next <= 0;
                            tx_state_next <= S_SRC_MAC;
                        elsif (fifo_byte_idx_reg = entry_byte_count(i_mac_fifo_dout)-1) then
                            mac_fifo_rd_en <= '1';
                            byte_ctr_next <= byte_ctr_reg + 1;
                            fifo_byte_idx_next <= 0;
                        else
                            byte_ctr_next <= byte_ctr_reg + 1;
                            fifo_byte_idx_next <= fifo_byte_idx_reg + 1;
                        end if;
                    end if;
                end if;

            when S_SRC_MAC =>
                v_tx_byte := C_SRC_MAC_ADDR(byte_ctr_reg);

                drive_rmii_byte(v_tx_byte);
                advance_rmii_byte_dibit;

                if (byte_phase_reg = 3) then
                    crc_next <= crc32_update(crc_reg, v_tx_byte);

                    if (byte_ctr_reg = 5) then
                        byte_ctr_next <= 0;
                        tx_state_next <= S_TYPE;
                    else
                        byte_ctr_next <= byte_ctr_reg + 1;
                    end if;
                end if;

            when S_TYPE =>
                v_tx_byte := C_ETH_TYPE(byte_ctr_reg);

                drive_rmii_byte(v_tx_byte);
                advance_rmii_byte_dibit;

                if (byte_phase_reg = 3) then
                    crc_next <= crc32_update(crc_reg, v_tx_byte);

                    if (byte_ctr_reg = 1) then
                        byte_ctr_next <= 0;
                        fifo_byte_idx_next <= 0;
                        tx_state_next <= S_DATA;
                    else
                        byte_ctr_next <= byte_ctr_reg + 1;
                    end if;
                end if;

            when S_DATA =>
                if (i_mac_fifo_empty = '0' and i_mac_fifo_data_valid = '1') then
                    v_tx_byte := fifo_entry_byte(i_mac_fifo_dout, fifo_byte_idx_reg);

                    drive_rmii_byte(v_tx_byte);
                    advance_rmii_byte_dibit;

                    if (byte_phase_reg = 3) then
                        v_crc := crc32_update(crc_reg, v_tx_byte);
                        v_payload_byte_ctr := payload_byte_ctr_reg + 1;

                        crc_next <= v_crc;
                        payload_byte_ctr_next <= v_payload_byte_ctr;

                        if (fifo_byte_idx_reg = entry_byte_count(i_mac_fifo_dout)-1) then
                            mac_fifo_rd_en <= '1';
                            fifo_byte_idx_next <= 0;

                            if (i_mac_fifo_dout(C_FIFO_ENTRY_LAST_BIT) = '1') then
                                if (v_payload_byte_ctr >= C_ETH_MIN_PAYLOAD_BYTES) then
                                    fcs_next <= not v_crc;
                                    byte_ctr_next <= 0;
                                    tx_state_next <= S_FCS;
                                else
                                    tx_state_next <= S_PADDING;
                                end if;
                            else
                                tx_state_next <= S_DATA;
                            end if;
                        else
                            fifo_byte_idx_next <= fifo_byte_idx_reg + 1;
                        end if;
                    end if;
                end if;

            when S_PADDING =>
                v_tx_byte := x"00";

                drive_rmii_byte(v_tx_byte);
                advance_rmii_byte_dibit;

                if (byte_phase_reg = 3) then
                    v_crc := crc32_update(crc_reg, v_tx_byte);
                    v_payload_byte_ctr := payload_byte_ctr_reg + 1;

                    crc_next <= v_crc;
                    payload_byte_ctr_next <= v_payload_byte_ctr;

                    if (v_payload_byte_ctr >= C_ETH_MIN_PAYLOAD_BYTES) then
                        fcs_next <= not v_crc;
                        byte_ctr_next <= 0;
                        tx_state_next <= S_FCS;
                    end if;
                end if;

            when S_FCS =>
                v_tx_byte := fcs_byte(fcs_reg, byte_ctr_reg);

                drive_rmii_byte(v_tx_byte);
                advance_rmii_byte_dibit;

                if (byte_phase_reg = 3) then
                    if (byte_ctr_reg = 3) then
                        byte_ctr_next <= 0;
                        tx_state_next <= S_FRAME_COMPLETE;
                    else
                        byte_ctr_next <= byte_ctr_reg + 1;
                    end if;
                end if;

            when S_FRAME_COMPLETE =>
                frame_tx_finish_next <= not frame_tx_finish_reg;
                tx_state_next <= S_WAIT_FRAME_COMPLETE_ACK;

            when S_WAIT_FRAME_COMPLETE_ACK =>
                if (frame_finish_ack_sync_2_reg /= frame_finish_ack_prev_reg) then
                    frame_finish_ack_prev_next <= frame_finish_ack_sync_2_reg;
                    ifg_ctr_next <= 0;
                    tx_state_next <= S_IFG;
                end if;

        end case;
    end process;
end architecture;
