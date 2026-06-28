library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Register Map

-- Control Registers Offset : x"00";
-- PAYLOAD_BASE_REG : x"00" : R/W;
-- TAIL_PTR_REG : x"04" : R/W;
-- HEAD_PTR_REG : x"08" : R;

-- Entry0 Registers Offset : x"10";
-- DEST_MAC_ADDR_LOW_REG : x"10" : R/W;
-- DEST_MAC_ADDR_HIGH_REG : x"14" : R/W;
-- PAYLOAD_LENGTH_REG : x"18" : R/W;

-- Entry1 Registers Offset : x"20";
-- DEST_MAC_ADDR_LOW_REG : x"20" : R/W;
-- DEST_MAC_ADDR_HIGH_REG : x"24" : R/W;
-- PAYLOAD_LENGTH_REG : x"28" : R/W;

-- Entry2 Registers Offset : x"30";
-- DEST_MAC_ADDR_LOW_REG : x"30" : R/W;
-- DEST_MAC_ADDR_HIGH_REG : x"34" : R/W;
-- PAYLOAD_LENGTH_REG : x"38" : R/W;

-- Entry3 Registers Offset : x"40";
-- DEST_MAC_ADDR_LOW_REG : x"40" : R/W;
-- DEST_MAC_ADDR_HIGH_REG : x"44" : R/W;
-- PAYLOAD_LENGTH_REG : x"48" : R/W;


entity tx_status_manager is
    generic (
        C_S_AXI_ADDR_WIDTH : integer := 32;
        C_S_AXI_DATA_WIDTH : integer := 32
    );
    port (
        -- AXI clock/reset
        axi_aclk    : in std_logic;
        axi_aresetn : in std_logic;

        -- AXI4-Lite write address channel
        S_AXI_AWADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_AWPROT  : in  std_logic_vector(2 downto 0);
        S_AXI_AWVALID : in  std_logic;
        S_AXI_AWREADY : out std_logic;

        -- AXI4-Lite write data channel
        S_AXI_WDATA  : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_WSTRB  : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        S_AXI_WVALID : in  std_logic;
        S_AXI_WREADY : out std_logic;

        -- AXI4-Lite write response channel
        S_AXI_BRESP  : out std_logic_vector(1 downto 0);
        S_AXI_BVALID : out std_logic;
        S_AXI_BREADY : in  std_logic;

        -- AXI4-Lite read address channel
        S_AXI_ARADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_ARPROT  : in  std_logic_vector(2 downto 0);
        S_AXI_ARVALID : in  std_logic;
        S_AXI_ARREADY : out std_logic;

        -- AXI4-Lite read data channel
        S_AXI_RDATA  : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_RRESP  : out std_logic_vector(1 downto 0);
        S_AXI_RVALID : out std_logic;
        S_AXI_RREADY : in  std_logic;

        i_frame_tx_complete : in std_logic;

        o_sched_frame_req_valid : out std_logic;
        i_sched_frame_req_ready : in std_logic;
        o_sched_frame_dest_mac : out std_logic_vector(47 downto 0);
        
        o_entry_read_req_valid : out std_logic;
        i_entry_read_req_ready : in std_logic;
        o_entry_addr : out std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        o_entry_length : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0)            
    );
end entity;

architecture rtl of tx_status_manager is

    constant C_TX_ADDR_OFFSET_WIDTH : integer := 8;
    constant C_PAYLOAD_ENTRY_SIZE : integer := 2048;

    constant C_CTRL_ADDR_OFFSET : std_logic_vector(7 downto 0) := x"00";
    constant C_ENTRY0_ADDR_OFFSET : std_logic_vector(7 downto 0) := x"10";
    constant C_ENTRY1_ADDR_OFFSET : std_logic_vector(7 downto 0) := x"20";
    constant C_ENTRY2_ADDR_OFFSET : std_logic_vector(7 downto 0) := x"30";
    constant C_ENTRY3_ADDR_OFFSET : std_logic_vector(7 downto 0) := x"40";

    constant C_BASE_ADDR_IDX : integer := 0;
    constant C_TAIL_PTR_IDX : integer := 1;
    constant C_HEAD_PTR_IDX : integer := 2;

    constant C_PAYLOAD_LENGTH_IDX : integer := 2;

    type T_AXI_LITE_WRITE_FSM_STATE is (S_AWADDR, S_WDATA, S_UPDATE_REG, S_WRITE_OK, S_WRITE_ERR); 
    type T_AXI_LITE_READ_FSM_STATE is (S_ARADDR, S_READ_REG, S_READ_OK, S_READ_ERR);

    type T_SCHED_ENTRY_FSM_STATE is (S_IDLE, S_RESERVE_FIFO, S_NOTIFY_AXI_READER);

    -- Payload entries base address register : index 0
    -- Tail pointer register : index 1
    -- Head pointer register : index 2
    type T_CTRL_REGS is array (0 to 2) of std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    type T_ENTRY_REGS is array (0 to 2) of std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);

    signal write_fsm_state_reg  : T_AXI_LITE_WRITE_FSM_STATE;
    signal write_fsm_state_next : T_AXI_LITE_WRITE_FSM_STATE;
    
    signal awaddr_reg  : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    signal awaddr_next : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);

    signal wdata_reg  : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal wdata_next : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);

    signal read_fsm_state_reg : T_AXI_LITE_READ_FSM_STATE;
    signal read_fsm_state_next : T_AXI_LITE_READ_FSM_STATE;

    signal araddr_reg : std_logic_vector(C_TX_ADDR_OFFSET_WIDTH-1 downto 0);
    signal araddr_next : std_logic_vector(C_TX_ADDR_OFFSET_WIDTH-1 downto 0);

    signal rdata_reg : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal rdata_next : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);

    -- R/W registers
    signal ctrl_regs      : T_CTRL_REGS;
    signal ctrl_regs_next : T_CTRL_REGS;

    signal entry0_regs      : T_ENTRY_REGS;
    signal entry0_regs_next : T_ENTRY_REGS;

    signal entry1_regs      : T_ENTRY_REGS;
    signal entry1_regs_next : T_ENTRY_REGS;

    signal entry2_regs      : T_ENTRY_REGS;
    signal entry2_regs_next : T_ENTRY_REGS;

    signal entry3_regs      : T_ENTRY_REGS;
    signal entry3_regs_next : T_ENTRY_REGS;

    signal sched_entry_fsm_state_reg : T_SCHED_ENTRY_FSM_STATE;
    signal sched_entry_fsm_state_next : T_SCHED_ENTRY_FSM_STATE;

    signal schedule_ptr_reg : unsigned(1 downto 0);
    signal schedule_ptr_next : unsigned(1 downto 0);
begin

    -- Clocked process
    process(axi_aclk) is
    begin
        if rising_edge(axi_aclk) then
            if (axi_aresetn = '0') then
                write_fsm_state_reg <= S_AWADDR;
                read_fsm_state_reg <= S_ARADDR;
                sched_entry_fsm_state_reg <= sched_entry_fsm_state_next;

                ctrl_regs(1) <= (others => '0');
                ctrl_regs(2) <= (others => '0');

                schedule_ptr_reg <= (others => '0');
            else
                write_fsm_state_reg <= write_fsm_state_next;
                read_fsm_state_reg <= read_fsm_state_next;
                sched_entry_fsm_state_reg <= sched_entry_fsm_state_next;

                awaddr_reg <= awaddr_next;
                wdata_reg  <= wdata_next;
                araddr_reg <= araddr_next;
                rdata_reg  <= rdata_next;

                ctrl_regs <= ctrl_regs_next;

                entry0_regs <= entry0_regs_next;
                entry1_regs <= entry1_regs_next;
                entry2_regs <= entry2_regs_next;
                entry3_regs <= entry3_regs_next;

                schedule_ptr_reg <= schedule_ptr_next;
            end if;
        end if;
    end process;

    process(all) is
    begin
        S_AXI_AWREADY <= '1' when write_fsm_state_reg = S_AWADDR else '0';
        S_AXI_WREADY  <= '1' when write_fsm_state_reg = S_WDATA else '0';
        S_AXI_BVALID <= '1' when (write_fsm_state_reg = S_WRITE_OK or write_fsm_state_reg = S_WRITE_ERR) else '0';
        S_AXI_BRESP <= "10" when write_fsm_state_reg = S_WRITE_ERR else "00";
    end process;

    process(all) is
        variable awaddr_offset : std_logic_vector(7 downto 0);
        variable reg_idx : integer range 0 to 3;
    begin
        write_fsm_state_next <= write_fsm_state_reg;

        awaddr_next <= awaddr_reg;
        wdata_next  <= wdata_reg;

        ctrl_regs_next <= ctrl_regs;

        entry0_regs_next <= entry0_regs;
        entry1_regs_next <= entry1_regs;
        entry2_regs_next <= entry2_regs;
        entry3_regs_next <= entry3_regs;

        case write_fsm_state_reg is

            when S_AWADDR =>
                if (S_AXI_AWVALID = '1') then
                    awaddr_next <= S_AXI_AWADDR;
                    write_fsm_state_next <= S_WDATA;
                end if;

            when S_WDATA =>
                if (S_AXI_WVALID = '1') then
                    wdata_next <= S_AXI_WDATA;
                    write_fsm_state_next <= S_UPDATE_REG;
                end if; 

            when S_UPDATE_REG =>
                write_fsm_state_next <= S_WRITE_OK;

                awaddr_offset := awaddr_reg(7 downto 4) & "0000";
                reg_idx := to_integer(unsigned(awaddr_reg(3 downto 2)));

                if (awaddr_reg(1 downto 0) /= "00") then
                    write_fsm_state_next <= S_WRITE_ERR;
                else
                    case awaddr_offset is

                        when C_CTRL_ADDR_OFFSET =>
                            if (reg_idx <= 1) then
                                ctrl_regs_next(reg_idx) <= wdata_reg;
                            else
                                write_fsm_state_next <= S_WRITE_ERR;
                            end if;

                        when C_ENTRY0_ADDR_OFFSET =>
                            if (reg_idx <= 2) then
                                entry0_regs_next(reg_idx) <= wdata_reg;
                            else
                                write_fsm_state_next <= S_WRITE_ERR;
                            end if;

                        when C_ENTRY1_ADDR_OFFSET =>
                            if (reg_idx <= 2) then
                                entry1_regs_next(reg_idx) <= wdata_reg;
                            else
                                write_fsm_state_next <= S_WRITE_ERR;
                            end if;

                        when C_ENTRY2_ADDR_OFFSET =>
                            if (reg_idx <= 2) then
                                entry2_regs_next(reg_idx) <= wdata_reg;
                            else
                                write_fsm_state_next <= S_WRITE_ERR;
                            end if;

                        when C_ENTRY3_ADDR_OFFSET =>
                            if (reg_idx <= 2) then
                                entry3_regs_next(reg_idx) <= wdata_reg;
                            else
                                write_fsm_state_next <= S_WRITE_ERR;
                            end if;

                        when others =>
                            write_fsm_state_next <= S_WRITE_ERR;

                    end case;
                end if;

            when S_WRITE_OK =>
                if (S_AXI_BREADY = '1') then
                    write_fsm_state_next <= S_AWADDR;
                end if;

            when S_WRITE_ERR =>
                if (S_AXI_BREADY = '1') then
                    write_fsm_state_next <= S_AWADDR;
                end if;

        end case;
    end process;

    -- AXI4-Lite read response outputs
    process(all) is
    begin
        S_AXI_ARREADY <= '1' when read_fsm_state_reg = S_ARADDR else '0';
        S_AXI_RVALID <= '1' when (read_fsm_state_reg = S_READ_OK or read_fsm_state_reg = S_READ_ERR) else '0';
        S_AXI_RRESP <= "10" when read_fsm_state_reg = S_READ_ERR else "00";
        S_AXI_RDATA <= rdata_reg;
    end process;


    process(all) is
        variable araddr_offset : std_logic_vector(7 downto 0);
        variable reg_idx : integer range 0 to 3;
    begin
        read_fsm_state_next <= read_fsm_state_reg;
        araddr_next <= araddr_reg;
        rdata_next <= rdata_reg;

        case read_fsm_state_reg is
            when S_ARADDR =>
                if (S_AXI_ARVALID = '1') then
                    araddr_next <= S_AXI_ARADDR(C_TX_ADDR_OFFSET_WIDTH-1 downto 0);
                    read_fsm_state_next <= S_READ_REG;
                end if;

            when S_READ_REG =>
                read_fsm_state_next <= S_READ_OK;
                araddr_offset := araddr_reg(7 downto 4) & "0000";
                reg_idx := to_integer(unsigned(araddr_reg(3 downto 2)));

                if (araddr_reg(1 downto 0) /= "00") then
                    -- If unaligned address, error
                    read_fsm_state_next <= S_READ_ERR;
                    rdata_next <= (others => '0');
                else
                    case araddr_offset is
                        when C_CTRL_ADDR_OFFSET =>
                            if (reg_idx <= 2) then
                                rdata_next <= ctrl_regs(reg_idx);
                            else
                                read_fsm_state_next <= S_READ_ERR;
                                rdata_next <= (others => '0');
                            end if;

                        when C_ENTRY0_ADDR_OFFSET =>
                            if (reg_idx <= 2) then
                                rdata_next <= entry0_regs(reg_idx);
                            else
                                read_fsm_state_next <= S_READ_ERR;
                                rdata_next <= (others => '0');
                            end if;

                        when C_ENTRY1_ADDR_OFFSET =>
                            if (reg_idx <= 2) then
                                rdata_next <= entry1_regs(reg_idx);
                            else
                                read_fsm_state_next <= S_READ_ERR;
                                rdata_next <= (others => '0');
                            end if;

                        when C_ENTRY2_ADDR_OFFSET =>
                            if (reg_idx <= 2) then
                                rdata_next <= entry2_regs(reg_idx);
                            else
                                read_fsm_state_next <= S_READ_ERR;
                                rdata_next <= (others => '0');
                            end if;

                        when C_ENTRY3_ADDR_OFFSET =>
                            if (reg_idx <= 2) then
                                rdata_next <= entry3_regs(reg_idx);
                            else
                                read_fsm_state_next <= S_READ_ERR;
                                rdata_next <= (others => '0');
                            end if;

                        when others =>
                            read_fsm_state_next <= S_READ_ERR;
                            rdata_next <= (others => '0');
                    end case;
                end if;

            when S_READ_OK =>
                if (S_AXI_RREADY = '1') then
                    read_fsm_state_next <= S_ARADDR;
                end if;

            when S_READ_ERR =>
                if (S_AXI_RREADY = '1') then
                    read_fsm_state_next <= S_ARADDR;
                end if;  
        end case;
    end process;

    -- Update head process
    process(all) is
    begin
        if (i_frame_tx_complete = '1') then
            ctrl_regs_next(C_HEAD_PTR_IDX) <= std_logic_vector(unsigned(ctrl_regs(C_HEAD_PTR_IDX)) + 1);
        else
            ctrl_regs_next(C_HEAD_PTR_IDX) <= ctrl_regs(C_HEAD_PTR_IDX);
        end if; 
    end process;

    process(all) is
    begin
        o_sched_frame_req_valid <= '1' when sched_entry_fsm_state_reg = S_RESERVE_FIFO else '0';
        o_entry_read_req_valid <= '1' when sched_entry_fsm_state_reg = S_NOTIFY_AXI_READER else '0';
    end process;

    process(all) is
        constant ENTRY_0 : unsigned(1 downto 0) := "00";
        constant ENTRY_1 : unsigned(1 downto 0) := "01";
        constant ENTRY_2 : unsigned(1 downto 0) := "10";
        constant ENTRY_3 : unsigned(1 downto 0) := "11";
    begin
        sched_entry_fsm_state_next <= sched_entry_fsm_state_reg;

        case S_IDLE =>
            if (schedule_ptr_reg /= unsigned(ctrl_regs(C_TAIL_PTR_IDX))) then
                sched_entry_fsm_state_next <= S_RESERVE_FIFO;
            end if;

        case S_RESERVE_FIFO => 
            if (i_sched_frame_req_ready = '1') then
                -- FIFO Manager has reserved a FIFO for this frame
                sched_entry_fsm_state_next <= S_NOTIFY_AXI_READER;
                o_sched_frame_dest_mac <=

            end if;

        case S_NOTIFY_AXI_READER =>
            o_entry_addr <= std_logic_vector(unsigned(ctrl_regs(C_BASE_ADDR_IDX)) + (schedule_ptr_reg * C_PAYLOAD_ENTRY_SIZE)); 

            case schedule_ptr_reg is
                when ENTRY_0 =>
                    o_entry_length <= entry0_regs(C_PAYLOAD_LENGTH_IDX);
                
                when ENTRY_1 =>
                    o_entry_length <= entry1_regs(C_PAYLOAD_LENGTH_IDX);

                when ENTRY_2 =>
                    o_entry_length <= entry2_regs(C_PAYLOAD_LENGTH_IDX);

                when ENTRY_3 =>
                    o_entry_length <= entry3_regs(C_PAYLOAD_LENGTH_IDX);
            end case;

            if (i_entry_read_req_ready = '1') then
                sched_entry_fsm_state_next <= S_IDLE;
                schedule_ptr_next <= schedule_ptr_reg + 1;
            end if;
    end process;
end architecture;
