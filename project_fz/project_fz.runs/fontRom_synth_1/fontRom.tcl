# 
# Synthesis run script generated by Vivado
# 

set_param project.vivado.isBlockSynthRun true
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7a100tlfgg676-2L

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir E:/project_fz/project_fz.cache/wt [current_project]
set_property parent.project_path E:/project_fz/project_fz.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo e:/project_fz/project_fz.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet e:/project_fz/project_fz.srcs/sources_1/ip/fontRom/fontRom.xci
set_property used_in_implementation false [get_files -all e:/project_fz/project_fz.srcs/sources_1/ip/fontRom/fontRom_ooc.xdc]
set_property is_locked true [get_files e:/project_fz/project_fz.srcs/sources_1/ip/fontRom/fontRom.xci]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir E:/project_fz/project_fz.runs/fontRom_synth_1 -new_name fontRom -ip [get_ips fontRom]]

if { $cached_ip eq {} } {

synth_design -top fontRom -part xc7a100tlfgg676-2L -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix fontRom_ fontRom.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fontRom_stub.v
 lappend ipCachedFiles fontRom_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fontRom_stub.vhdl
 lappend ipCachedFiles fontRom_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fontRom_sim_netlist.v
 lappend ipCachedFiles fontRom_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fontRom_sim_netlist.vhdl
 lappend ipCachedFiles fontRom_sim_netlist.vhdl

 config_ip_cache -add -dcp fontRom.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips fontRom]
}

rename_ref -prefix_all fontRom_

write_checkpoint -force -noxdef fontRom.dcp

catch { report_utilization -file fontRom_utilization_synth.rpt -pb fontRom_utilization_synth.pb }

if { [catch {
  file copy -force E:/project_fz/project_fz.runs/fontRom_synth_1/fontRom.dcp e:/project_fz/project_fz.srcs/sources_1/ip/fontRom/fontRom.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub e:/project_fz/project_fz.srcs/sources_1/ip/fontRom/fontRom_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub e:/project_fz/project_fz.srcs/sources_1/ip/fontRom/fontRom_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim e:/project_fz/project_fz.srcs/sources_1/ip/fontRom/fontRom_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim e:/project_fz/project_fz.srcs/sources_1/ip/fontRom/fontRom_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force E:/project_fz/project_fz.runs/fontRom_synth_1/fontRom.dcp e:/project_fz/project_fz.srcs/sources_1/ip/fontRom/fontRom.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force E:/project_fz/project_fz.runs/fontRom_synth_1/fontRom_stub.v e:/project_fz/project_fz.srcs/sources_1/ip/fontRom/fontRom_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force E:/project_fz/project_fz.runs/fontRom_synth_1/fontRom_stub.vhdl e:/project_fz/project_fz.srcs/sources_1/ip/fontRom/fontRom_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force E:/project_fz/project_fz.runs/fontRom_synth_1/fontRom_sim_netlist.v e:/project_fz/project_fz.srcs/sources_1/ip/fontRom/fontRom_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force E:/project_fz/project_fz.runs/fontRom_synth_1/fontRom_sim_netlist.vhdl e:/project_fz/project_fz.srcs/sources_1/ip/fontRom/fontRom_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir E:/project_fz/project_fz.ip_user_files/ip/fontRom]} {
  catch { 
    file copy -force e:/project_fz/project_fz.srcs/sources_1/ip/fontRom/fontRom_stub.v E:/project_fz/project_fz.ip_user_files/ip/fontRom
  }
}

if {[file isdir E:/project_fz/project_fz.ip_user_files/ip/fontRom]} {
  catch { 
    file copy -force e:/project_fz/project_fz.srcs/sources_1/ip/fontRom/fontRom_stub.vhdl E:/project_fz/project_fz.ip_user_files/ip/fontRom
  }
}
