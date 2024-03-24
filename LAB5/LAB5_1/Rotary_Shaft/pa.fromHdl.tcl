
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Rotary_Shaft -dir "/users/btech/pk/Documents/Lab5/Rotary_Shaft/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "rotary_shaft_encoder.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Rotary_Shaft.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top rotary_shaft_encoder $srcset
add_files [list {rotary_shaft_encoder.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
