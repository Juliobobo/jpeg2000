create_clock {clk} -name clk -domain clk -period 41.67 -waveform {0 20.84}
set_clock_uncertainty [get_clocks clk]
