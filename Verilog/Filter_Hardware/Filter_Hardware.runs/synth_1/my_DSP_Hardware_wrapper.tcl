# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_msg_config -id {HDL-1065} -limit 10000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/kibii/OneDrive/Studienkolleg/Vivado/Filter_Hardware/Filter_Hardware.cache/wt [current_project]
set_property parent.project_path C:/Users/kibii/OneDrive/Studienkolleg/Vivado/Filter_Hardware/Filter_Hardware.xpr [current_project]
set_property XPM_LIBRARIES {XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  c:/Users/kibii/OneDrive/Studienkolleg/Vivado/DSP_Testbench/DSP_Testbench.srcs
  c:/Users/kibii/OneDrive/Studienkolleg/Vivado/DA_Converter/DA_Converter.srcs
  c:/Users/kibii/OneDrive/Studienkolleg/Vivado/AD_Converter/AD_Converter.srcs
  c:/Users/kibii/OneDrive/Studienkolleg/Vivado/Vector_Length_Mod/Vector_Length_Mod.srcs
  c:/Users/kibii/OneDrive/Studienkolleg/Vivado/DSP_Filter_Testbench/DSP_Filter_Testbench.srcs
} [current_project]
set_property ip_output_repo c:/Users/kibii/OneDrive/Studienkolleg/Vivado/Filter_Hardware/Filter_Hardware.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib C:/Users/kibii/OneDrive/Studienkolleg/Vivado/Filter_Hardware/Filter_Hardware.srcs/sources_1/bd/my_DSP_Hardware/hdl/my_DSP_Hardware_wrapper.v
add_files C:/Users/kibii/OneDrive/Studienkolleg/Vivado/Filter_Hardware/Filter_Hardware.srcs/sources_1/bd/my_DSP_Hardware/my_DSP_Hardware.bd
set_property used_in_implementation false [get_files -all c:/Users/kibii/OneDrive/Studienkolleg/Vivado/Filter_Hardware/Filter_Hardware.srcs/sources_1/bd/my_DSP_Hardware/ip/my_DSP_Hardware_processing_system7_0_0/my_DSP_Hardware_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all C:/Users/kibii/OneDrive/Studienkolleg/Vivado/Filter_Hardware/Filter_Hardware.srcs/sources_1/bd/my_DSP_Hardware/my_DSP_Hardware_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/kibii/OneDrive/Studienkolleg/Vivado/Filter_Hardware/Filter_Hardware.srcs/constrs_1/new/Red_Pitaya.xdc
set_property used_in_implementation false [get_files C:/Users/kibii/OneDrive/Studienkolleg/Vivado/Filter_Hardware/Filter_Hardware.srcs/constrs_1/new/Red_Pitaya.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top my_DSP_Hardware_wrapper -part xc7z010clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef my_DSP_Hardware_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file my_DSP_Hardware_wrapper_utilization_synth.rpt -pb my_DSP_Hardware_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
