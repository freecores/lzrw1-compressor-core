
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name LZRWcompressor -dir "/home/lukas/e-/logic-analyzer/compression-test/hw/xst_12_3/planAhead_run_1" -part xa6slx45csg324-2
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "/home/lukas/e-/logic-analyzer/compression-test/hw/xst_12_3/LZRWcompressor.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/lukas/e-/logic-analyzer/compression-test/hw/xst_12_3} }
set_param project.paUcfFile  "LZRWcompressor.ucf"
add_files "LZRWcompressor.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
read_xdl -file "/home/lukas/e-/logic-analyzer/compression-test/hw/xst_12_3/LZRWcompressor.ncd"
if {[catch {read_twx -name results_1 -file "/home/lukas/e-/logic-analyzer/compression-test/hw/xst_12_3/LZRWcompressor.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"/home/lukas/e-/logic-analyzer/compression-test/hw/xst_12_3/LZRWcompressor.twx\": $eInfo"
}
