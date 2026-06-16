## Clock signal
#set_property PACKAGE_PIN W5 [get_ports sys_clock]							
#	set_property IOSTANDARD LVCMOS33 [get_ports sys_clock]
#	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports sys_clock] 
 
##Buttons
#set_property PACKAGE_PIN U18 [get_ports reset]						
#	set_property IOSTANDARD LVCMOS33 [get_ports reset]
 



# a16 -> refclk
# a17 -> crs
# b15 -> rx0
# c15 -> rx1
# b16 -> tx_en
# c16 -> tx0

##Pmod Header JB
##Sch name = JB1
#set_property PACKAGE_PIN A14 [get_ports {JB[0]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[0]}]
##Sch name = JB2
set_property PACKAGE_PIN A16 [get_ports i_ref_clk]					
	set_property IOSTANDARD LVCMOS33 [get_ports i_ref_clk]
	create_clock -add -name rmii_ref_clk -period 20.00 [get_ports i_ref_clk]
##Sch name = JB3
set_property PACKAGE_PIN B15 [get_ports {i_rxd[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {i_rxd[0]}]
##Sch name = JB4
set_property PACKAGE_PIN B16 [get_ports o_tx_en]					
	set_property IOSTANDARD LVCMOS33 [get_ports o_tx_en]
##Sch name = JB7
#set_property PACKAGE_PIN A15 [get_ports {JB[4]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[4]}]
##Sch name = JB8
set_property PACKAGE_PIN A17 [get_ports i_crs_dv]					
	set_property IOSTANDARD LVCMOS33 [get_ports i_crs_dv]
##Sch name = JB9
set_property PACKAGE_PIN C15 [get_ports {i_rxd[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {i_rxd[1]}]
##Sch name = JB10 
set_property PACKAGE_PIN C16 [get_ports o_tx0]					
	set_property IOSTANDARD LVCMOS33 [get_ports o_tx0]
 
set_clock_groups -asynchronous \
  -group [get_clocks -include_generated_clocks clk_out1_design_1_clk_wiz_1_0] \
  -group [get_clocks rmii_ref_clk]



##USB-RS232 Interface
#set_property PACKAGE_PIN B18 [get_ports uart_rx]						
#	set_property IOSTANDARD LVCMOS33 [get_ports uart_rx]
#set_property PACKAGE_PIN A18 [get_ports uart_tx]						
#	set_property IOSTANDARD LVCMOS33 [get_ports uart_tx]
