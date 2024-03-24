
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name R_LED -dir "/users/btech/pk/Documents/Lab3_2/R_LED/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "R_LED.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {R_LED.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top R_LED $srcset
add_files [list {R_LED.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
