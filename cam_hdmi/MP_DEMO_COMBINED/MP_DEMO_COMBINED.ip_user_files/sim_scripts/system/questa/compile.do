vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/proc_sys_reset_v5_0_17
vlib questa_lib/msim/axis_infrastructure_v1_1_1
vlib questa_lib/msim/axis_data_fifo_v2_0_17
vlib questa_lib/msim/xlconstant_v1_1_10

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap proc_sys_reset_v5_0_17 questa_lib/msim/proc_sys_reset_v5_0_17
vmap axis_infrastructure_v1_1_1 questa_lib/msim/axis_infrastructure_v1_1_1
vmap axis_data_fifo_v2_0_17 questa_lib/msim/axis_data_fifo_v2_0_17
vmap xlconstant_v1_1_10 questa_lib/msim/xlconstant_v1_1_10

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/system/ipshared/a415" "+incdir+../../../../project_1.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" \
"../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.v" \

vcom -work proc_sys_reset_v5_0_17  -93  \
"../../../../project_1.gen/sources_1/bd/system/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/system/ip/system_rst_pixel_74m_0/sim/system_rst_pixel_74m_0.vhd" \

vlog -work axis_infrastructure_v1_1_1  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/system/ipshared/a415" "+incdir+../../../../project_1.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" \
"../../../../project_1.gen/sources_1/bd/system/ipshared/434f/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_17  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/system/ipshared/a415" "+incdir+../../../../project_1.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" \
"../../../../project_1.gen/sources_1/bd/system/ipshared/e1e3/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/system/ipshared/a415" "+incdir+../../../../project_1.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" \
"../../../bd/system/ip/system_axis_data_fifo_0_0/sim/system_axis_data_fifo_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../../project_1.gen/sources_1/bd/system/ipshared/d57c/src/ClockGen.vhd" \
"../../../../project_1.gen/sources_1/bd/system/ipshared/d57c/src/SyncAsync.vhd" \
"../../../../project_1.gen/sources_1/bd/system/ipshared/d57c/src/SyncAsyncReset.vhd" \
"../../../../project_1.gen/sources_1/bd/system/ipshared/d57c/src/DVI_Constants.vhd" \
"../../../../project_1.gen/sources_1/bd/system/ipshared/d57c/src/OutputSERDES.vhd" \
"../../../../project_1.gen/sources_1/bd/system/ipshared/d57c/src/TMDS_Encoder.vhd" \
"../../../../project_1.gen/sources_1/bd/system/ipshared/d57c/src/rgb2dvi.vhd" \
"../../../bd/system/ip/system_rgb2dvi_0_0/sim/system_rgb2dvi_0_0.vhd" \

vlog -work xlconstant_v1_1_10  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/system/ipshared/a415" "+incdir+../../../../project_1.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" \
"../../../../project_1.gen/sources_1/bd/system/ipshared/a165/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/system/ipshared/a415" "+incdir+../../../../project_1.gen/sources_1/bd/system/ipshared/434f/hdl" "+incdir+../../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" \
"../../../bd/system/ip/system_const_vcc_0/sim/system_const_vcc_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"

