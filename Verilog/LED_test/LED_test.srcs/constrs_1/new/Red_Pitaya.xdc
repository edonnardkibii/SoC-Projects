############################################################################
# IO constraints                                                           #
############################################################################

### Expansion connector
set_property IOSTANDARD LVCMOS33 [get_ports {exp_p_io[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {exp_n_io[*]}]
set_property SLEW       FAST     [get_ports {exp_p_io[*]}]
set_property SLEW       FAST     [get_ports {exp_n_io[*]}]
set_property DRIVE      8        [get_ports {exp_p_io[*]}]
set_property DRIVE      8        [get_ports {exp_n_io[*]}]

set_property PACKAGE_PIN G17 [get_ports {exp_p_io[0]}]
set_property PACKAGE_PIN G18 [get_ports {exp_n_io[0]}]
set_property PACKAGE_PIN H16 [get_ports {exp_p_io[1]}]
set_property PACKAGE_PIN H17 [get_ports {exp_n_io[1]}]
set_property PACKAGE_PIN J18 [get_ports {exp_p_io[2]}]
set_property PACKAGE_PIN H18 [get_ports {exp_n_io[2]}]
set_property PACKAGE_PIN K17 [get_ports {exp_p_io[3]}]
set_property PACKAGE_PIN K18 [get_ports {exp_n_io[3]}]
set_property PACKAGE_PIN L14 [get_ports {exp_p_io[4]}]
set_property PACKAGE_PIN L15 [get_ports {exp_n_io[4]}]
set_property PACKAGE_PIN L16 [get_ports {exp_p_io[5]}]
set_property PACKAGE_PIN L17 [get_ports {exp_n_io[5]}]
set_property PACKAGE_PIN K16 [get_ports {exp_p_io[6]}]
set_property PACKAGE_PIN J16 [get_ports {exp_n_io[6]}]
set_property PACKAGE_PIN M14 [get_ports {exp_p_io[7]}]
set_property PACKAGE_PIN M15 [get_ports {exp_n_io[7]}]

#set_property PULLDOWN TRUE [get_ports {exp_p_io[0]}]
#set_property PULLDOWN TRUE [get_ports {exp_n_io[0]}]
#set_property PULLUP   TRUE [get_ports {exp_p_io[7]}]
#set_property PULLUP   TRUE [get_ports {exp_n_io[7]}]


#### LED
#set_property IOSTANDARD LVCMOS33 [get_ports {led_o[*]}]
#set_property SLEW       SLOW     [get_ports {led_o[*]}]
#set_property DRIVE      4        [get_ports {led_o[*]}]

#set_property PACKAGE_PIN F16     [get_ports {led_o[0]}]
#set_property PACKAGE_PIN F17     [get_ports {led_o[1]}]
#set_property PACKAGE_PIN G15     [get_ports {led_o[2]}]
#set_property PACKAGE_PIN H15     [get_ports {led_o[3]}]
#set_property PACKAGE_PIN K14     [get_ports {led_o[4]}]
#set_property PACKAGE_PIN G14     [get_ports {led_o[5]}]
#set_property PACKAGE_PIN J15     [get_ports {led_o[6]}]
#set_property PACKAGE_PIN J14     [get_ports {led_o[7]}]

############################################################################
# Clock constraints                                                        #
############################################################################

##NET "adc_clk" TNM_NET = "adc_clk";
##TIMESPEC TS_adc_clk = PERIOD "adc_clk" 125 MHz;

#create_clock -period 8.000 -name adc_clk [get_ports adc_clk_i[1]]

#set_input_delay -clock adc_clk 3.400 [get_ports adc_dat_i[*][*]]

#create_clock -period 4.000 -name rx_clk  [get_ports daisy_p_i[1]]

#set_false_path -from [get_clocks adc_clk]     -to [get_clocks dac_clk_o]
#set_false_path -from [get_clocks adc_clk]     -to [get_clocks dac_clk_2x]
#set_false_path -from [get_clocks adc_clk]     -to [get_clocks dac_clk_2p]
#set_false_path -from [get_clocks clk_fpga_0]  -to [get_clocks adc_clk]
#set_false_path -from [get_clocks clk_fpga_0]  -to [get_clocks dac_clk_1x]
#set_false_path -from [get_clocks clk_fpga_0]  -to [get_clocks dac_clk_2x]
#set_false_path -from [get_clocks clk_fpga_0]  -to [get_clocks dac_clk_2p]
#set_false_path -from [get_clocks clk_fpga_0]  -to [get_clocks ser_clk]
#set_false_path -from [get_clocks clk_fpga_0]  -to [get_clocks pdm_clk]
#set_false_path -from [get_clocks dac_clk_o] -to [get_clocks dac_clk_2x]
#set_false_path -from [get_clocks dac_clk_o] -to [get_clocks dac_clk_2p]