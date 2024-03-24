
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name grid -dir "/users/btech/rajvm22/Documents/LAB6/LAB6_2/grid/planAhead_run_2" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "grid.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {grid.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top grid $srcset
add_files [list {grid.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
