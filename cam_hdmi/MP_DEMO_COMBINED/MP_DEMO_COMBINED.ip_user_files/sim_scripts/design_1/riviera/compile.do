transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/blk_mem_gen_v8_4_12

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap blk_mem_gen_v8_4_12 riviera/blk_mem_gen_v8_4_12

vlog -work xpm  -incr "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_12 \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/AMDDesignTools/2025.2/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_12 \
"../../../bd/design_1/ip/design_1_top_0_0/sim/design_1_top_0_0.v" \
"../../../bd/design_1/ip/design_1_rgb565_to_grayscale_8_0_0/sim/design_1_rgb565_to_grayscale_8_0_0.v" \
"../../../bd/design_1/ip/design_1_memory_writer_0_0/sim/design_1_memory_writer_0_0.v" \

vlog -work blk_mem_gen_v8_4_12  -incr -v2k5 "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_12 \
"../../../../MP_DEMO_COMBINED.gen/sources_1/bd/design_1/ipshared/42f3/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../../../../../../AMDDesignTools/2025.2/Vivado/data/rsb/busdef" -l xpm -l xil_defaultlib -l blk_mem_gen_v8_4_12 \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \
"../../../bd/design_1/ip/design_1_smoothing_0_0/sim/design_1_smoothing_0_0.v" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_1/sim/design_1_blk_mem_gen_0_1.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

