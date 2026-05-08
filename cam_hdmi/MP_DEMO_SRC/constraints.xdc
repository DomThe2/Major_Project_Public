set_property PACKAGE_PIN T14  [get_ports rx]
set_property IOSTANDARD  LVCMOS33 [get_ports rx]

set_property PACKAGE_PIN U12  [get_ports tx]
set_property IOSTANDARD  LVCMOS33 [get_ports tx]

set_property PACKAGE_PIN D19 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]

set_property PACKAGE_PIN H16 [get_ports clk_in1]
set_property IOSTANDARD LVCMOS33 [get_ports clk_in1]
create_clock -period 8.000 -name sys_clk [get_ports clk_in1]

# DATA PINS

set_property PACKAGE_PIN Y18 [get_ports {p_data[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p_data[0]}]

set_property PACKAGE_PIN V16 [get_ports {p_data[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p_data[1]}]

set_property PACKAGE_PIN Y19 [get_ports {p_data[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p_data[2]}]

set_property PACKAGE_PIN W16 [get_ports {p_data[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p_data[3]}]

set_property PACKAGE_PIN Y16 [get_ports {p_data[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p_data[4]}]

set_property PACKAGE_PIN W18 [get_ports {p_data[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p_data[5]}]

set_property PACKAGE_PIN Y17 [get_ports {p_data[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p_data[6]}]

set_property PACKAGE_PIN W19 [get_ports {p_data[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {p_data[7]}]

# -------------------------------------------------- #

set_property PACKAGE_PIN U19 [get_ports x_clk]
set_property IOSTANDARD LVCMOS33 [get_ports x_clk]

set_property PACKAGE_PIN U18 [get_ports p_clk]
set_property IOSTANDARD LVCMOS33 [get_ports p_clk]

set_property PACKAGE_PIN T11 [get_ports href]
set_property IOSTANDARD LVCMOS33 [get_ports href]

set_property PACKAGE_PIN V12 [get_ports vsync]
set_property IOSTANDARD LVCMOS33 [get_ports vsync]

set_property PACKAGE_PIN T10 [get_ports siod]
set_property IOSTANDARD LVCMOS33 [get_ports siod]
set_property PULLTYPE PULLUP [get_ports siod]

set_property PACKAGE_PIN W13 [get_ports sioc]
set_property IOSTANDARD LVCMOS33 [get_ports sioc]
