# PYNQ-Z2 / OV7670 / HDMI - standard pinout (healthy board)
# for damaged U18/U19/W18 board use pynq_z2_damaged.xdc instead


set_property PACKAGE_PIN D19 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]

# 125 MHz sys clock
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports sys_clk]
create_clock -period 8.000 -name sys_clk [get_ports sys_clk]

# HDMI HPD tied high in top.v
set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports hdmi_tx_hpd]
set_false_path -to [get_ports hdmi_tx_hpd]

# LEDs
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports led_mmcm_locked]
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports led_pixel_active]
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports led_pll_locked]
set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33} [get_ports led_vid_locked]
set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS33} [get_ports led4_g]
set_property -dict {PACKAGE_PIN L14 IOSTANDARD LVCMOS33} [get_ports led5_g]

# HDMI TMDS (bank 33)
set_property -dict {PACKAGE_PIN L16 IOSTANDARD TMDS_33} [get_ports hdmi_tx_clk_p]
set_property -dict {PACKAGE_PIN L17 IOSTANDARD TMDS_33} [get_ports hdmi_tx_clk_n]
set_property -dict {PACKAGE_PIN K17 IOSTANDARD TMDS_33} [get_ports {hdmi_tx_d_p[0]}]
set_property -dict {PACKAGE_PIN K18 IOSTANDARD TMDS_33} [get_ports {hdmi_tx_d_n[0]}]
set_property -dict {PACKAGE_PIN K19 IOSTANDARD TMDS_33} [get_ports {hdmi_tx_d_p[1]}]
set_property -dict {PACKAGE_PIN J19 IOSTANDARD TMDS_33} [get_ports {hdmi_tx_d_n[1]}]
set_property -dict {PACKAGE_PIN J18 IOSTANDARD TMDS_33} [get_ports {hdmi_tx_d_p[2]}]
set_property -dict {PACKAGE_PIN H18 IOSTANDARD TMDS_33} [get_ports {hdmi_tx_d_n[2]}]

# camera - PMOD A + PMOD B
# W14/Y14 would be PWDN/RESET but FPGA drives neither (PWDN floats, RESET tied to 3V3 externally)
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports {cam_data[0]}]
set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports {cam_data[2]}]
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports {cam_data[4]}]
set_property -dict {PACKAGE_PIN Y17 IOSTANDARD LVCMOS33} [get_ports {cam_data[6]}]
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports cam_pclk]
set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports cam_xclk]
set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVCMOS33} [get_ports {cam_data[5]}]
set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports {cam_data[7]}]
set_property -dict {PACKAGE_PIN T11 IOSTANDARD LVCMOS33} [get_ports cam_href]
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports cam_sda]
set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports {cam_data[1]}]
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports {cam_data[3]}]
set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports cam_vsync]
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports cam_scl]
set_property PULLTYPE PULLUP [get_ports cam_sda]
set_property PULLTYPE PULLUP [get_ports cam_scl]

# PCLK ~12MHz, U18 is not MRCC so dedicated_route must be false
create_clock -period 83.000 -name cam_pclk [get_ports cam_pclk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets cam_pclk_IBUF]
set_clock_groups -asynchronous -group [get_clocks cam_pclk] -group [get_clocks -include_generated_clocks sys_clk]

set_false_path -to [get_ports cam_scl]
set_false_path -to [get_ports cam_sda]
set_false_path -to [get_ports led_mmcm_locked]
set_false_path -to [get_ports led_pixel_active]
set_false_path -to [get_ports led_pll_locked]
set_false_path -to [get_ports led_vid_locked]
set_false_path -to [get_ports led4_g]
set_false_path -to [get_ports led5_g]

