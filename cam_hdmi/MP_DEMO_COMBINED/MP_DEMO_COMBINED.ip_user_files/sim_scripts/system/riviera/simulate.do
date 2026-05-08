transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+system  -L xil_defaultlib -L proc_sys_reset_v5_0_17 -L axis_infrastructure_v1_1_1 -L axis_data_fifo_v2_0_17 -L xlconstant_v1_1_10 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.system xil_defaultlib.glbl

do {system.udo}

run 1000ns

endsim

quit -force
