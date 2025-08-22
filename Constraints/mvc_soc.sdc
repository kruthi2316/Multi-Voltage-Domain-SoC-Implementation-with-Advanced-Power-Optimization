#######################################
# SDC Constraints for Multi-Voltage SoC
#######################################

# Clock definitions
create_clock -name clk_main -period 10.0 [get_ports clk_main]
create_clock -name clk_32k -period 30517.6 [get_ports clk_32k]

# Clock domain crossing - asynchronous
set_clock_groups -asynchronous     -group [get_clocks clk_main]     -group [get_clocks clk_32k]

# Input/Output delays
set_input_delay -clock clk_main -max 2.0 [all_inputs]
set_input_delay -clock clk_main -min 0.5 [all_inputs]
set_output_delay -clock clk_main -max 2.0 [all_outputs]
set_output_delay -clock clk_main -min 0.5 [all_outputs]

# Load constraints
set_load 0.01 [all_outputs]

# Drive constraints  
set_driving_cell -lib_cell BUF_X1 [all_inputs]

# Power domain specific constraints
# CPU domain - high performance (1.2V)
set_max_delay 8.0 -from [get_pins u_cpu/*] -to [get_pins u_dsp/*]
set_max_delay 8.0 -from [get_pins u_cpu/*] -to [get_pins u_ao/*]

# DSP domain - balanced (0.9V)  
set_max_delay 10.0 -from [get_pins u_dsp/*] -to [get_pins u_cpu/*]
set_max_delay 10.0 -from [get_pins u_dsp/*] -to [get_pins u_ao/*]

# AON domain - low power (0.8V)
set_max_delay 15.0 -from [get_pins u_ao/*] -to [get_pins u_cpu/*]
set_max_delay 15.0 -from [get_pins u_ao/*] -to [get_pins u_dsp/*]

# False paths for power control signals
set_false_path -from [get_ports pwr_cpu_on]
set_false_path -from [get_ports pwr_dsp_on]
set_false_path -from [get_ports sleep_mode]
set_false_path -to [get_ports cpu_iso_en]
set_false_path -to [get_ports dsp_iso_en]
set_false_path -to [get_ports *_save]
set_false_path -to [get_ports *_restore]
