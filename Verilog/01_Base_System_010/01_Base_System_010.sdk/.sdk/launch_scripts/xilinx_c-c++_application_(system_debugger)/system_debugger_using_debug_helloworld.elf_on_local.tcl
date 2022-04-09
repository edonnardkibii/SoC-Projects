connect -url tcp:127.0.0.1:3121
source /home/pabele/programming/fpga/2018.3/zynqberry_7007S/Base_system_for_lab/01_Base_system/01_Base_system.sdk/top_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "JTAG-ONB4 251633000000A"} -index 0
loadhw -hw /home/pabele/programming/fpga/2018.3/zynqberry_7007S/Base_system_for_lab/01_Base_system/01_Base_system.sdk/top_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "JTAG-ONB4 251633000000A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "JTAG-ONB4 251633000000A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "JTAG-ONB4 251633000000A"} -index 0
dow /home/pabele/programming/fpga/2018.3/zynqberry_7007S/Base_system_for_lab/01_Base_system/01_Base_system.sdk/HelloWorld/Debug/HelloWorld.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "JTAG-ONB4 251633000000A"} -index 0
con
