library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.udp_engine_pkg.all;

entity udp_axi_reader is
    port (
        axi_aclk    : in std_logic;
        axi_aresetn : in std_logic;

        i_read_req_valid : in  std_logic;
        o_read_req_ready : out std_logic;
        i_read_addr      : in  std_logic_vector(31 downto 0);
        i_read_length    : in  std_logic_vector(15 downto 0);

        o_read_data_valid : out std_logic;
        i_read_data_ready : in  std_logic;
        o_read_data       : out std_logic_vector(31 downto 0);
        o_read_valid_bytes : out std_logic_vector(1 downto 0);
        o_read_last       : out std_logic;
        o_read_done       : out std_logic;
        o_read_error      : out std_logic;

        M_AXI_ARADDR  : out std_logic_vector(31 downto 0);
        M_AXI_ARLEN   : out std_logic_vector(7 downto 0);
        M_AXI_ARSIZE  : out std_logic_vector(2 downto 0);
        M_AXI_ARBURST : out std_logic_vector(1 downto 0);
        M_AXI_ARPROT  : out std_logic_vector(2 downto 0);
        M_AXI_ARVALID : out std_logic;
        M_AXI_ARREADY : in  std_logic;
        M_AXI_RDATA   : in  std_logic_vector(31 downto 0);
        M_AXI_RRESP   : in  std_logic_vector(1 downto 0);
        M_AXI_RLAST   : in  std_logic;
        M_AXI_RVALID  : in  std_logic;
        M_AXI_RREADY  : out std_logic
    );
end entity;

architecture rtl of udp_axi_reader is
    type t_state is (R_IDLE, R_AR, R_DATA, R_OFFER, R_DONE, R_ERROR);
    signal state : t_state;
    signal address_reg : std_logic_vector(31 downto 0);
    signal remaining_bytes : natural range 0 to C_MAX_IPV4_BYTES;
    signal data_reg : std_logic_vector(31 downto 0);
    signal byte_encoding_reg : std_logic_vector(1 downto 0);
    signal last_reg : std_logic;
begin
    o_read_req_ready <= '1' when state = R_IDLE else '0';
    o_read_data_valid <= '1' when state = R_OFFER else '0';
    o_read_data <= data_reg;
    o_read_valid_bytes <= byte_encoding_reg;
    o_read_last <= last_reg;
    o_read_done <= '1' when state = R_DONE else '0';
    o_read_error <= '1' when state = R_ERROR else '0';

    M_AXI_ARADDR <= address_reg;
    M_AXI_ARLEN <= (others => '0');
    M_AXI_ARSIZE <= "010";
    M_AXI_ARBURST <= "01";
    M_AXI_ARPROT <= "000";
    M_AXI_ARVALID <= '1' when state = R_AR else '0';
    M_AXI_RREADY <= '1' when state = R_DATA else '0';

    process(axi_aclk)
        variable requested_length : natural;
        variable current_bytes : natural range 1 to 4;
    begin
        if rising_edge(axi_aclk) then
            if axi_aresetn = '0' then
                state <= R_IDLE;
                address_reg <= (others => '0');
                remaining_bytes <= 0;
                data_reg <= (others => '0');
                byte_encoding_reg <= "00";
                last_reg <= '0';
            else
                case state is
                    when R_IDLE =>
                        if i_read_req_valid = '1' then
                            requested_length := to_integer(unsigned(i_read_length));
                            address_reg <= i_read_addr;
                            if requested_length > C_MAX_IPV4_BYTES then
                                state <= R_ERROR;
                            elsif requested_length = 0 then
                                remaining_bytes <= 0;
                                state <= R_DONE;
                            else
                                remaining_bytes <= requested_length;
                                state <= R_AR;
                            end if;
                        end if;

                    when R_AR =>
                        if M_AXI_ARREADY = '1' then
                            state <= R_DATA;
                        end if;

                    when R_DATA =>
                        if M_AXI_RVALID = '1' then
                            if M_AXI_RRESP /= "00" or M_AXI_RLAST /= '1' then
                                state <= R_ERROR;
                            else
                                data_reg <= M_AXI_RDATA;
                                if remaining_bytes >= 4 then
                                    current_bytes := 4;
                                else
                                    current_bytes := remaining_bytes;
                                end if;
                                byte_encoding_reg <= valid_bytes_encoding(current_bytes);
                                if remaining_bytes <= 4 then
                                    last_reg <= '1';
                                else
                                    last_reg <= '0';
                                end if;
                                state <= R_OFFER;
                            end if;
                        end if;

                    when R_OFFER =>
                        if i_read_data_ready = '1' then
                            if remaining_bytes <= 4 then
                                remaining_bytes <= 0;
                                state <= R_DONE;
                            else
                                remaining_bytes <= remaining_bytes - 4;
                                address_reg <= std_logic_vector(unsigned(address_reg) + 4);
                                state <= R_AR;
                            end if;
                        end if;

                    when R_DONE | R_ERROR =>
                        state <= R_IDLE;
                end case;
            end if;
        end if;
    end process;
end architecture;
