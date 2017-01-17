create_clock [get_ports clk] -name clk -period 41.67 -waveform {0 20.84}
set_input_delay 0 -clock clk  [get_ports {clk start rst nbLevels_rsc_z* Dst_rsc_singleport_data_out* Src_rsc_singleport_data_out* Vga_rsc_singleport_data_out*}]
set_input_delay 2.46 -clock clk  [get_ports Src_rsc_singleport_data_out(7:0)]
set_input_delay 2.46 -clock clk  [get_ports Dst_rsc_singleport_data_out(7:0)]
set_input_delay 2.46 -clock clk  [get_ports Vga_rsc_singleport_data_out(7:0)]
set_output_delay 0 -clock clk  [get_ports {done nbLevels_triosy_lz Src_triosy_lz Dst_triosy_lz Vga_triosy_lz Src_rsc_singleport_re Src_rsc_singleport_we Dst_rsc_singleport_re Dst_rsc_singleport_we Vga_rsc_singleport_re Vga_rsc_singleport_we Vga_rsc_singleport_data_in* Src_rsc_singleport_data_in* Src_rsc_singleport_addr* Dst_rsc_singleport_data_in* Dst_rsc_singleport_addr* Vga_rsc_singleport_addr*}]
set_output_delay 0.1 -clock clk  [get_ports Src_rsc_singleport_data_in(7:0)]
set_output_delay 0.1 -clock clk  [get_ports Src_rsc_singleport_addr(16:0)]
set_output_delay 0.1 -clock clk  [get_ports Src_rsc_singleport_re]
set_output_delay 0.1 -clock clk  [get_ports Src_rsc_singleport_we]
set_output_delay 0.1 -clock clk  [get_ports Dst_rsc_singleport_data_in(7:0)]
set_output_delay 0.1 -clock clk  [get_ports Dst_rsc_singleport_addr(16:0)]
set_output_delay 0.1 -clock clk  [get_ports Dst_rsc_singleport_re]
set_output_delay 0.1 -clock clk  [get_ports Dst_rsc_singleport_we]
set_output_delay 0.1 -clock clk  [get_ports Vga_rsc_singleport_data_in(7:0)]
set_output_delay 0.1 -clock clk  [get_ports Vga_rsc_singleport_addr(16:0)]
set_output_delay 0.1 -clock clk  [get_ports Vga_rsc_singleport_re]
set_output_delay 0.1 -clock clk  [get_ports Vga_rsc_singleport_we]
set_clock_uncertainty [get_clocks clk]
set_max_delay 41.67 -from [get_ports start] -to [get_ports Src_rsc_singleport_re]
set_max_delay 41.67 -from [get_ports start] -to [get_ports Src_rsc_singleport_we]
set_max_delay 41.67 -from [get_ports start] -to [get_ports Dst_rsc_singleport_re]
set_max_delay 41.67 -from [get_ports start] -to [get_ports Dst_rsc_singleport_we]
set_max_delay 41.67 -from [get_ports start] -to [get_ports Vga_rsc_singleport_we]
# set_max_delay 41.67 -from {Src_rsc_singleport_data_out(7:0)} -to {Src_rsc_singleport_data_in(7:0)}
# set_max_delay 41.67 -from {Src_rsc_singleport_data_out(7:0)} -to {Dst_rsc_singleport_data_in(7:0)}
# set_max_delay 41.67 -from {Dst_rsc_singleport_data_out(7:0)} -to {Src_rsc_singleport_data_in(7:0)}
# set_max_delay 41.67 -from {Dst_rsc_singleport_data_out(7:0)} -to {Dst_rsc_singleport_data_in(7:0)}
# set_max_delay 41.67 -from {Dst_rsc_singleport_data_out(7:0)} -to {Vga_rsc_singleport_data_in(7:0)}
