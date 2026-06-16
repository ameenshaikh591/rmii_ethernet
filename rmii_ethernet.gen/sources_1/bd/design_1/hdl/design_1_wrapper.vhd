--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
--Date        : Sun Jun 14 18:34:54 2026
--Host        : GREENGOBLIN running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    i_crs_dv : in STD_LOGIC;
    i_ref_clk : in STD_LOGIC;
    i_rxd : in STD_LOGIC_VECTOR ( 1 downto 0 );
    o_tx0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_tx_en : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    uart_tx : out STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    sys_clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    i_ref_clk : in STD_LOGIC;
    i_rxd : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_crs_dv : in STD_LOGIC;
    uart_tx : out STD_LOGIC;
    o_tx0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_tx_en : out STD_LOGIC_VECTOR ( 0 to 0 );
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      i_crs_dv => i_crs_dv,
      i_ref_clk => i_ref_clk,
      i_rxd(1 downto 0) => i_rxd(1 downto 0),
      o_tx0(0) => o_tx0(0),
      o_tx_en(0) => o_tx_en(0),
      reset => reset,
      sys_clock => sys_clock,
      uart_tx => uart_tx,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd
    );
end STRUCTURE;
