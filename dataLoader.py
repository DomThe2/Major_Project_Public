# Module: loads a .bin file into PYNQ DRAM
# Author: Dom Binns 

from pynq import Overlay, MMIO, allocate
from pynq.ps import Clocks
import numpy as np
import os

os.environ['XILINX_XRT'] = '/usr'

ol = Overlay("design_1_wrapper.bit")

Clocks.fclk0_mhz = 100.0

# Open data to write 
with open("w.bin", "rb") as f:
    raw = f.read()

# Write data to memory
weight_buf = allocate(shape=(len(raw),), dtype=np.uint8)
weight_buf[:] = np.frombuffer(raw, dtype=np.uint8)
weight_buf.flush()

phys_addr = weight_buf.physical_address
print(f"Physical address: {hex(phys_addr)}")

# Provide DDR base to FPGA
gpio = MMIO(0x41200000, 0x10)
gpio.write(0x004, 0x00000000)
gpio.write(0x00C, 0x00000000)
gpio.write(0x000, phys_addr & 0xFFFFFFFF)

print(f"GPIO readback: {hex(gpio.read(0x000))}")

# Don't exit to prevent data being garbage collected 
print("Data ready. Holding address space. Use Ctrl+C to exit.")
try:
        while True:
                pass
except KeyboardInterrupt:
	weight_buf.freebuffer()
	print("Done.")


#export XILINX_XRT=/usr && python3 dataLoader.py
