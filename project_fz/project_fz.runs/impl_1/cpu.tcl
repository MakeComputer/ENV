proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}


start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7a100tlfgg676-2L
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir E:/project_fz/project_fz.cache/wt [current_project]
  set_property parent.project_path E:/project_fz/project_fz.xpr [current_project]
  set_property ip_output_repo E:/project_fz/project_fz.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES XPM_MEMORY [current_project]
  add_files -quiet E:/project_fz/project_fz.runs/synth_1/cpu.dcp
  read_ip -quiet e:/project_fz/project_fz.srcs/sources_1/ip/fontRom/fontRom.xci
  set_property is_locked true [get_files e:/project_fz/project_fz.srcs/sources_1/ip/fontRom/fontRom.xci]
  read_xdc E:/project_fz/project_fz.srcs/constrs_1/new/cpu.xdc
  link_design -top cpu -part xc7a100tlfgg676-2L
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force cpu_opt.dcp
  catch { report_drc -file cpu_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force cpu_placed.dcp
  catch { report_io -file cpu_io_placed.rpt }
  catch { report_utilization -file cpu_utilization_placed.rpt -pb cpu_utilization_placed.pb }
  catch { report_control_sets -verbose -file cpu_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force cpu_routed.dcp
  catch { report_drc -file cpu_drc_routed.rpt -pb cpu_drc_routed.pb -rpx cpu_drc_routed.rpx }
  catch { report_methodology -file cpu_methodology_drc_routed.rpt -rpx cpu_methodology_drc_routed.rpx }
  catch { report_power -file cpu_power_routed.rpt -pb cpu_power_summary_routed.pb -rpx cpu_power_routed.rpx }
  catch { report_route_status -file cpu_route_status.rpt -pb cpu_route_status.pb }
  catch { report_clock_utilization -file cpu_clock_utilization_routed.rpt }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file cpu_timing_summary_routed.rpt -rpx cpu_timing_summary_routed.rpx }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force cpu_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES XPM_MEMORY [current_project]
  catch { write_mem_info -force cpu.mmi }
  write_bitstream -force cpu.bit 
  catch {write_debug_probes -no_partial_ltxfile -quiet -force debug_nets}
  catch {file copy -force debug_nets.ltx cpu.ltx}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

