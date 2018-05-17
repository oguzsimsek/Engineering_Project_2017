# Debounce button and config finished LED
set_property PACKAGE_PIN R18 [get_ports reset_button]
set_property PACKAGE_PIN M14 [get_ports config_finished]

# Top JC
set_property PACKAGE_PIN T10 [get_ports {d[4]}]
set_property PACKAGE_PIN T11 [get_ports {d[2]}]
set_property PACKAGE_PIN W15 [get_ports {d[0]}]
set_property PACKAGE_PIN V15 [get_ports pwdn]

# Bottom JC
set_property PACKAGE_PIN U12 [get_ports {d[5]}]
set_property PACKAGE_PIN T12 [get_ports {d[3]}]
set_property PACKAGE_PIN Y14 [get_ports {d[1]}]
set_property PACKAGE_PIN W14 [get_ports reset]                                                                                                                                                                                                                                                                                                                                                                                                                                      

# Bottom JD
set_property PACKAGE_PIN V18 [get_ports sioc]
set_property PACKAGE_PIN V17 [get_ports vsync]
set_property PACKAGE_PIN U15 [get_ports pclk]
set_property PACKAGE_PIN U14 [get_ports {d[7]}]

# Top JD
set_property PACKAGE_PIN R14 [get_ports siod]
set_property PACKAGE_PIN P14 [get_ports href]
set_property PACKAGE_PIN T15 [get_ports xclk]
set_property PACKAGE_PIN T14 [get_ports {d[6]}]

## Top JD
#set_property PACKAGE_PIN R14 [get_ports reset]
#set_property PACKAGE_PIN P14 [get_ports {d[1]}]
#set_property PACKAGE_PIN T15 [get_ports {d[3]}]
#set_property PACKAGE_PIN T14 [get_ports {d[5]}]
#
## Bottom JD
#set_property PACKAGE_PIN V18 [get_ports pwdn]
#set_property PACKAGE_PIN V17 [get_ports {d[0]}]
#set_property PACKAGE_PIN U15 [get_ports {d[2]}]
#set_property PACKAGE_PIN U14 [get_ports {d[4]}]
#
## Top JC
#set_property PACKAGE_PIN T10 [get_ports {d[7]}]
#set_property PACKAGE_PIN T11 [get_ports pclk]
#set_property PACKAGE_PIN W15 [get_ports vsync]
#set_property PACKAGE_PIN V15 [get_ports sioc]
#
## Bottom JC
#set_property PACKAGE_PIN U12 [get_ports {d[6]}]
#set_property PACKAGE_PIN T12 [get_ports xclk]
#set_property PACKAGE_PIN Y14 [get_ports href]
#set_property PACKAGE_PIN W14 [get_ports siod]

# Red channel of VGA output
set_property PACKAGE_PIN M19 [get_ports {vga_red[0]}]
set_property PACKAGE_PIN L20 [get_ports {vga_red[1]}]
set_property PACKAGE_PIN J20 [get_ports {vga_red[2]}]
set_property PACKAGE_PIN G20 [get_ports {vga_red[3]}]
set_property PACKAGE_PIN F19 [get_ports {vga_red[4]}]

# Green channel of VGA output
set_property PACKAGE_PIN H18 [get_ports {vga_green[0]}]
set_property PACKAGE_PIN N20 [get_ports {vga_green[1]}]
set_property PACKAGE_PIN L19 [get_ports {vga_green[2]}]
set_property PACKAGE_PIN J19 [get_ports {vga_green[3]}]
set_property PACKAGE_PIN H20 [get_ports {vga_green[4]}]
set_property PACKAGE_PIN F20 [get_ports {vga_green[5]}]

# Blue channel of VGA output
set_property PACKAGE_PIN P20 [get_ports {vga_blue[0]}]
set_property PACKAGE_PIN M20 [get_ports {vga_blue[1]}]
set_property PACKAGE_PIN K19 [get_ports {vga_blue[2]}]
set_property PACKAGE_PIN J18 [get_ports {vga_blue[3]}]
set_property PACKAGE_PIN G19 [get_ports {vga_blue[4]}]

# Horizontal and vertical synchronization of VGA output
set_property PACKAGE_PIN P19 [get_ports vga_hsync]
set_property PACKAGE_PIN R19 [get_ports vga_vsync]

# Voltage levels
set_property IOSTANDARD LVCMOS33 [get_ports reset_button]
set_property IOSTANDARD LVCMOS33 [get_ports config_finished]
set_property IOSTANDARD LVCMOS33 [get_ports pclk]
set_property IOSTANDARD LVCMOS33 [get_ports sioc]
set_property IOSTANDARD LVCMOS33 [get_ports vsync]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports pwdn]
set_property IOSTANDARD LVCMOS33 [get_ports href]
set_property IOSTANDARD LVCMOS33 [get_ports xclk]
set_property IOSTANDARD LVCMOS33 [get_ports siod]
set_property IOSTANDARD LVCMOS33 [get_ports {d[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports vga_hsync]
set_property IOSTANDARD LVCMOS33 [get_ports vga_vsync]

# Magic
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets pclk_IBUF]
