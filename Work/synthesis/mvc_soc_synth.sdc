# ####################################################################

#  Created by Genus(TM) Synthesis Solution 19.13-s073_1 on Tue Aug 19 17:43:11 EDT 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1fF
set_units -time 1000ps

# Set the current design
current_design top_soc

create_clock -name "clk_main" -period 10.0 -waveform {0.0 5.0} [get_ports clk_main]
create_clock -name "clk_32k" -period 30517.6 -waveform {0.0 15258.8} [get_ports clk_32k]
set_load -pin_load 0.0 [get_ports cpu_iso_en]
set_load -pin_load 0.0 [get_ports dsp_iso_en]
set_load -pin_load 0.0 [get_ports cpu_save]
set_load -pin_load 0.0 [get_ports cpu_restore]
set_load -pin_load 0.0 [get_ports dsp_save]
set_load -pin_load 0.0 [get_ports dsp_restore]
set_load -pin_load 0.0 [get_ports {gpio_out[31]}]
set_load -pin_load 0.0 [get_ports {gpio_out[30]}]
set_load -pin_load 0.0 [get_ports {gpio_out[29]}]
set_load -pin_load 0.0 [get_ports {gpio_out[28]}]
set_load -pin_load 0.0 [get_ports {gpio_out[27]}]
set_load -pin_load 0.0 [get_ports {gpio_out[26]}]
set_load -pin_load 0.0 [get_ports {gpio_out[25]}]
set_load -pin_load 0.0 [get_ports {gpio_out[24]}]
set_load -pin_load 0.0 [get_ports {gpio_out[23]}]
set_load -pin_load 0.0 [get_ports {gpio_out[22]}]
set_load -pin_load 0.0 [get_ports {gpio_out[21]}]
set_load -pin_load 0.0 [get_ports {gpio_out[20]}]
set_load -pin_load 0.0 [get_ports {gpio_out[19]}]
set_load -pin_load 0.0 [get_ports {gpio_out[18]}]
set_load -pin_load 0.0 [get_ports {gpio_out[17]}]
set_load -pin_load 0.0 [get_ports {gpio_out[16]}]
set_load -pin_load 0.0 [get_ports {gpio_out[15]}]
set_load -pin_load 0.0 [get_ports {gpio_out[14]}]
set_load -pin_load 0.0 [get_ports {gpio_out[13]}]
set_load -pin_load 0.0 [get_ports {gpio_out[12]}]
set_load -pin_load 0.0 [get_ports {gpio_out[11]}]
set_load -pin_load 0.0 [get_ports {gpio_out[10]}]
set_load -pin_load 0.0 [get_ports {gpio_out[9]}]
set_load -pin_load 0.0 [get_ports {gpio_out[8]}]
set_load -pin_load 0.0 [get_ports {gpio_out[7]}]
set_load -pin_load 0.0 [get_ports {gpio_out[6]}]
set_load -pin_load 0.0 [get_ports {gpio_out[5]}]
set_load -pin_load 0.0 [get_ports {gpio_out[4]}]
set_load -pin_load 0.0 [get_ports {gpio_out[3]}]
set_load -pin_load 0.0 [get_ports {gpio_out[2]}]
set_load -pin_load 0.0 [get_ports {gpio_out[1]}]
set_load -pin_load 0.0 [get_ports {gpio_out[0]}]
set_load -pin_load 0.0 [get_ports {mem_addr[31]}]
set_load -pin_load 0.0 [get_ports {mem_addr[30]}]
set_load -pin_load 0.0 [get_ports {mem_addr[29]}]
set_load -pin_load 0.0 [get_ports {mem_addr[28]}]
set_load -pin_load 0.0 [get_ports {mem_addr[27]}]
set_load -pin_load 0.0 [get_ports {mem_addr[26]}]
set_load -pin_load 0.0 [get_ports {mem_addr[25]}]
set_load -pin_load 0.0 [get_ports {mem_addr[24]}]
set_load -pin_load 0.0 [get_ports {mem_addr[23]}]
set_load -pin_load 0.0 [get_ports {mem_addr[22]}]
set_load -pin_load 0.0 [get_ports {mem_addr[21]}]
set_load -pin_load 0.0 [get_ports {mem_addr[20]}]
set_load -pin_load 0.0 [get_ports {mem_addr[19]}]
set_load -pin_load 0.0 [get_ports {mem_addr[18]}]
set_load -pin_load 0.0 [get_ports {mem_addr[17]}]
set_load -pin_load 0.0 [get_ports {mem_addr[16]}]
set_load -pin_load 0.0 [get_ports {mem_addr[15]}]
set_load -pin_load 0.0 [get_ports {mem_addr[14]}]
set_load -pin_load 0.0 [get_ports {mem_addr[13]}]
set_load -pin_load 0.0 [get_ports {mem_addr[12]}]
set_load -pin_load 0.0 [get_ports {mem_addr[11]}]
set_load -pin_load 0.0 [get_ports {mem_addr[10]}]
set_load -pin_load 0.0 [get_ports {mem_addr[9]}]
set_load -pin_load 0.0 [get_ports {mem_addr[8]}]
set_load -pin_load 0.0 [get_ports {mem_addr[7]}]
set_load -pin_load 0.0 [get_ports {mem_addr[6]}]
set_load -pin_load 0.0 [get_ports {mem_addr[5]}]
set_load -pin_load 0.0 [get_ports {mem_addr[4]}]
set_load -pin_load 0.0 [get_ports {mem_addr[3]}]
set_load -pin_load 0.0 [get_ports {mem_addr[2]}]
set_load -pin_load 0.0 [get_ports {mem_addr[1]}]
set_load -pin_load 0.0 [get_ports {mem_addr[0]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[31]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[30]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[29]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[28]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[27]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[26]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[25]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[24]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[23]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[22]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[21]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[20]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[19]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[18]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[17]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[16]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[15]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[14]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[13]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[12]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[11]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[10]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[9]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[8]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[7]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[6]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[5]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[4]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[3]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[2]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[1]}]
set_load -pin_load 0.0 [get_ports {mem_wdata[0]}]
set_load -pin_load 0.0 [get_ports mem_we]
set_load -pin_load 0.0 [get_ports mem_re]
set_false_path -from [list \
  [get_ports pwr_cpu_on]  \
  [get_ports pwr_dsp_on]  \
  [get_ports sleep_mode] ]
set_false_path -to [list \
  [get_ports cpu_iso_en]  \
  [get_ports dsp_iso_en]  \
  [get_ports dsp_save]  \
  [get_ports cpu_save]  \
  [get_ports dsp_restore]  \
  [get_ports cpu_restore] ]
set_max_delay 8 -from [list \
  [get_pins u_cpu/mem_re]  \
  [get_pins u_cpu/mem_we]  \
  [get_pins {u_cpu/mem_wdata[0]}]  \
  [get_pins {u_cpu/mem_wdata[1]}]  \
  [get_pins {u_cpu/mem_wdata[2]}]  \
  [get_pins {u_cpu/mem_wdata[3]}]  \
  [get_pins {u_cpu/mem_wdata[4]}]  \
  [get_pins {u_cpu/mem_wdata[5]}]  \
  [get_pins {u_cpu/mem_wdata[6]}]  \
  [get_pins {u_cpu/mem_wdata[7]}]  \
  [get_pins {u_cpu/mem_wdata[8]}]  \
  [get_pins {u_cpu/mem_wdata[9]}]  \
  [get_pins {u_cpu/mem_wdata[10]}]  \
  [get_pins {u_cpu/mem_wdata[11]}]  \
  [get_pins {u_cpu/mem_wdata[12]}]  \
  [get_pins {u_cpu/mem_wdata[13]}]  \
  [get_pins {u_cpu/mem_wdata[14]}]  \
  [get_pins {u_cpu/mem_wdata[15]}]  \
  [get_pins {u_cpu/mem_wdata[16]}]  \
  [get_pins {u_cpu/mem_wdata[17]}]  \
  [get_pins {u_cpu/mem_wdata[18]}]  \
  [get_pins {u_cpu/mem_wdata[19]}]  \
  [get_pins {u_cpu/mem_wdata[20]}]  \
  [get_pins {u_cpu/mem_wdata[21]}]  \
  [get_pins {u_cpu/mem_wdata[22]}]  \
  [get_pins {u_cpu/mem_wdata[23]}]  \
  [get_pins {u_cpu/mem_wdata[24]}]  \
  [get_pins {u_cpu/mem_wdata[25]}]  \
  [get_pins {u_cpu/mem_wdata[26]}]  \
  [get_pins {u_cpu/mem_wdata[27]}]  \
  [get_pins {u_cpu/mem_wdata[28]}]  \
  [get_pins {u_cpu/mem_wdata[29]}]  \
  [get_pins {u_cpu/mem_wdata[30]}]  \
  [get_pins {u_cpu/mem_wdata[31]}]  \
  [get_pins {u_cpu/mem_addr[0]}]  \
  [get_pins {u_cpu/mem_addr[1]}]  \
  [get_pins {u_cpu/mem_addr[2]}]  \
  [get_pins {u_cpu/mem_addr[3]}]  \
  [get_pins {u_cpu/mem_addr[4]}]  \
  [get_pins {u_cpu/mem_addr[5]}]  \
  [get_pins {u_cpu/mem_addr[6]}]  \
  [get_pins {u_cpu/mem_addr[7]}]  \
  [get_pins {u_cpu/mem_addr[8]}]  \
  [get_pins {u_cpu/mem_addr[9]}]  \
  [get_pins {u_cpu/mem_addr[10]}]  \
  [get_pins {u_cpu/mem_addr[11]}]  \
  [get_pins {u_cpu/mem_addr[12]}]  \
  [get_pins {u_cpu/mem_addr[13]}]  \
  [get_pins {u_cpu/mem_addr[14]}]  \
  [get_pins {u_cpu/mem_addr[15]}]  \
  [get_pins {u_cpu/mem_addr[16]}]  \
  [get_pins {u_cpu/mem_addr[17]}]  \
  [get_pins {u_cpu/mem_addr[18]}]  \
  [get_pins {u_cpu/mem_addr[19]}]  \
  [get_pins {u_cpu/mem_addr[20]}]  \
  [get_pins {u_cpu/mem_addr[21]}]  \
  [get_pins {u_cpu/mem_addr[22]}]  \
  [get_pins {u_cpu/mem_addr[23]}]  \
  [get_pins {u_cpu/mem_addr[24]}]  \
  [get_pins {u_cpu/mem_addr[25]}]  \
  [get_pins {u_cpu/mem_addr[26]}]  \
  [get_pins {u_cpu/mem_addr[27]}]  \
  [get_pins {u_cpu/mem_addr[28]}]  \
  [get_pins {u_cpu/mem_addr[29]}]  \
  [get_pins {u_cpu/mem_addr[30]}]  \
  [get_pins {u_cpu/mem_addr[31]}]  \
  [get_pins {u_cpu/ao_cmd[0]}]  \
  [get_pins {u_cpu/ao_cmd[1]}]  \
  [get_pins {u_cpu/ao_cmd[2]}]  \
  [get_pins {u_cpu/ao_cmd[3]}]  \
  [get_pins {u_cpu/ao_cmd[4]}]  \
  [get_pins {u_cpu/ao_cmd[5]}]  \
  [get_pins {u_cpu/ao_cmd[6]}]  \
  [get_pins {u_cpu/ao_cmd[7]}]  \
  [get_pins u_cpu/data_out_valid]  \
  [get_pins {u_cpu/data_out[0]}]  \
  [get_pins {u_cpu/data_out[1]}]  \
  [get_pins {u_cpu/data_out[2]}]  \
  [get_pins {u_cpu/data_out[3]}]  \
  [get_pins {u_cpu/data_out[4]}]  \
  [get_pins {u_cpu/data_out[5]}]  \
  [get_pins {u_cpu/data_out[6]}]  \
  [get_pins {u_cpu/data_out[7]}]  \
  [get_pins {u_cpu/data_out[8]}]  \
  [get_pins {u_cpu/data_out[9]}]  \
  [get_pins {u_cpu/data_out[10]}]  \
  [get_pins {u_cpu/data_out[11]}]  \
  [get_pins {u_cpu/data_out[12]}]  \
  [get_pins {u_cpu/data_out[13]}]  \
  [get_pins {u_cpu/data_out[14]}]  \
  [get_pins {u_cpu/data_out[15]}]  \
  [get_pins {u_cpu/data_out[16]}]  \
  [get_pins {u_cpu/data_out[17]}]  \
  [get_pins {u_cpu/data_out[18]}]  \
  [get_pins {u_cpu/data_out[19]}]  \
  [get_pins {u_cpu/data_out[20]}]  \
  [get_pins {u_cpu/data_out[21]}]  \
  [get_pins {u_cpu/data_out[22]}]  \
  [get_pins {u_cpu/data_out[23]}]  \
  [get_pins {u_cpu/data_out[24]}]  \
  [get_pins {u_cpu/data_out[25]}]  \
  [get_pins {u_cpu/data_out[26]}]  \
  [get_pins {u_cpu/data_out[27]}]  \
  [get_pins {u_cpu/data_out[28]}]  \
  [get_pins {u_cpu/data_out[29]}]  \
  [get_pins {u_cpu/data_out[30]}]  \
  [get_pins {u_cpu/data_out[31]}]  \
  [get_pins {u_cpu/mem_rdata[0]}]  \
  [get_pins {u_cpu/mem_rdata[1]}]  \
  [get_pins {u_cpu/mem_rdata[2]}]  \
  [get_pins {u_cpu/mem_rdata[3]}]  \
  [get_pins {u_cpu/mem_rdata[4]}]  \
  [get_pins {u_cpu/mem_rdata[5]}]  \
  [get_pins {u_cpu/mem_rdata[6]}]  \
  [get_pins {u_cpu/mem_rdata[7]}]  \
  [get_pins {u_cpu/mem_rdata[8]}]  \
  [get_pins {u_cpu/mem_rdata[9]}]  \
  [get_pins {u_cpu/mem_rdata[10]}]  \
  [get_pins {u_cpu/mem_rdata[11]}]  \
  [get_pins {u_cpu/mem_rdata[12]}]  \
  [get_pins {u_cpu/mem_rdata[13]}]  \
  [get_pins {u_cpu/mem_rdata[14]}]  \
  [get_pins {u_cpu/mem_rdata[15]}]  \
  [get_pins {u_cpu/mem_rdata[16]}]  \
  [get_pins {u_cpu/mem_rdata[17]}]  \
  [get_pins {u_cpu/mem_rdata[18]}]  \
  [get_pins {u_cpu/mem_rdata[19]}]  \
  [get_pins {u_cpu/mem_rdata[20]}]  \
  [get_pins {u_cpu/mem_rdata[21]}]  \
  [get_pins {u_cpu/mem_rdata[22]}]  \
  [get_pins {u_cpu/mem_rdata[23]}]  \
  [get_pins {u_cpu/mem_rdata[24]}]  \
  [get_pins {u_cpu/mem_rdata[25]}]  \
  [get_pins {u_cpu/mem_rdata[26]}]  \
  [get_pins {u_cpu/mem_rdata[27]}]  \
  [get_pins {u_cpu/mem_rdata[28]}]  \
  [get_pins {u_cpu/mem_rdata[29]}]  \
  [get_pins {u_cpu/mem_rdata[30]}]  \
  [get_pins {u_cpu/mem_rdata[31]}]  \
  [get_pins {u_cpu/ao_status[0]}]  \
  [get_pins {u_cpu/ao_status[1]}]  \
  [get_pins {u_cpu/ao_status[2]}]  \
  [get_pins {u_cpu/ao_status[3]}]  \
  [get_pins {u_cpu/ao_status[4]}]  \
  [get_pins {u_cpu/ao_status[5]}]  \
  [get_pins {u_cpu/ao_status[6]}]  \
  [get_pins {u_cpu/ao_status[7]}]  \
  [get_pins u_cpu/data_in_valid]  \
  [get_pins {u_cpu/data_in[0]}]  \
  [get_pins {u_cpu/data_in[1]}]  \
  [get_pins {u_cpu/data_in[2]}]  \
  [get_pins {u_cpu/data_in[3]}]  \
  [get_pins {u_cpu/data_in[4]}]  \
  [get_pins {u_cpu/data_in[5]}]  \
  [get_pins {u_cpu/data_in[6]}]  \
  [get_pins {u_cpu/data_in[7]}]  \
  [get_pins {u_cpu/data_in[8]}]  \
  [get_pins {u_cpu/data_in[9]}]  \
  [get_pins {u_cpu/data_in[10]}]  \
  [get_pins {u_cpu/data_in[11]}]  \
  [get_pins {u_cpu/data_in[12]}]  \
  [get_pins {u_cpu/data_in[13]}]  \
  [get_pins {u_cpu/data_in[14]}]  \
  [get_pins {u_cpu/data_in[15]}]  \
  [get_pins {u_cpu/data_in[16]}]  \
  [get_pins {u_cpu/data_in[17]}]  \
  [get_pins {u_cpu/data_in[18]}]  \
  [get_pins {u_cpu/data_in[19]}]  \
  [get_pins {u_cpu/data_in[20]}]  \
  [get_pins {u_cpu/data_in[21]}]  \
  [get_pins {u_cpu/data_in[22]}]  \
  [get_pins {u_cpu/data_in[23]}]  \
  [get_pins {u_cpu/data_in[24]}]  \
  [get_pins {u_cpu/data_in[25]}]  \
  [get_pins {u_cpu/data_in[26]}]  \
  [get_pins {u_cpu/data_in[27]}]  \
  [get_pins {u_cpu/data_in[28]}]  \
  [get_pins {u_cpu/data_in[29]}]  \
  [get_pins {u_cpu/data_in[30]}]  \
  [get_pins {u_cpu/data_in[31]}]  \
  [get_pins u_cpu/enable]  \
  [get_pins u_cpu/rst_n]  \
  [get_pins u_cpu/clk] ] -to [list \
  [get_pins u_dsp/data_out_valid]  \
  [get_pins {u_dsp/data_out[0]}]  \
  [get_pins {u_dsp/data_out[1]}]  \
  [get_pins {u_dsp/data_out[2]}]  \
  [get_pins {u_dsp/data_out[3]}]  \
  [get_pins {u_dsp/data_out[4]}]  \
  [get_pins {u_dsp/data_out[5]}]  \
  [get_pins {u_dsp/data_out[6]}]  \
  [get_pins {u_dsp/data_out[7]}]  \
  [get_pins {u_dsp/data_out[8]}]  \
  [get_pins {u_dsp/data_out[9]}]  \
  [get_pins {u_dsp/data_out[10]}]  \
  [get_pins {u_dsp/data_out[11]}]  \
  [get_pins {u_dsp/data_out[12]}]  \
  [get_pins {u_dsp/data_out[13]}]  \
  [get_pins {u_dsp/data_out[14]}]  \
  [get_pins {u_dsp/data_out[15]}]  \
  [get_pins {u_dsp/data_out[16]}]  \
  [get_pins {u_dsp/data_out[17]}]  \
  [get_pins {u_dsp/data_out[18]}]  \
  [get_pins {u_dsp/data_out[19]}]  \
  [get_pins {u_dsp/data_out[20]}]  \
  [get_pins {u_dsp/data_out[21]}]  \
  [get_pins {u_dsp/data_out[22]}]  \
  [get_pins {u_dsp/data_out[23]}]  \
  [get_pins {u_dsp/data_out[24]}]  \
  [get_pins {u_dsp/data_out[25]}]  \
  [get_pins {u_dsp/data_out[26]}]  \
  [get_pins {u_dsp/data_out[27]}]  \
  [get_pins {u_dsp/data_out[28]}]  \
  [get_pins {u_dsp/data_out[29]}]  \
  [get_pins {u_dsp/data_out[30]}]  \
  [get_pins {u_dsp/data_out[31]}]  \
  [get_pins u_dsp/data_in_valid]  \
  [get_pins {u_dsp/data_in[0]}]  \
  [get_pins {u_dsp/data_in[1]}]  \
  [get_pins {u_dsp/data_in[2]}]  \
  [get_pins {u_dsp/data_in[3]}]  \
  [get_pins {u_dsp/data_in[4]}]  \
  [get_pins {u_dsp/data_in[5]}]  \
  [get_pins {u_dsp/data_in[6]}]  \
  [get_pins {u_dsp/data_in[7]}]  \
  [get_pins {u_dsp/data_in[8]}]  \
  [get_pins {u_dsp/data_in[9]}]  \
  [get_pins {u_dsp/data_in[10]}]  \
  [get_pins {u_dsp/data_in[11]}]  \
  [get_pins {u_dsp/data_in[12]}]  \
  [get_pins {u_dsp/data_in[13]}]  \
  [get_pins {u_dsp/data_in[14]}]  \
  [get_pins {u_dsp/data_in[15]}]  \
  [get_pins {u_dsp/data_in[16]}]  \
  [get_pins {u_dsp/data_in[17]}]  \
  [get_pins {u_dsp/data_in[18]}]  \
  [get_pins {u_dsp/data_in[19]}]  \
  [get_pins {u_dsp/data_in[20]}]  \
  [get_pins {u_dsp/data_in[21]}]  \
  [get_pins {u_dsp/data_in[22]}]  \
  [get_pins {u_dsp/data_in[23]}]  \
  [get_pins {u_dsp/data_in[24]}]  \
  [get_pins {u_dsp/data_in[25]}]  \
  [get_pins {u_dsp/data_in[26]}]  \
  [get_pins {u_dsp/data_in[27]}]  \
  [get_pins {u_dsp/data_in[28]}]  \
  [get_pins {u_dsp/data_in[29]}]  \
  [get_pins {u_dsp/data_in[30]}]  \
  [get_pins {u_dsp/data_in[31]}]  \
  [get_pins u_dsp/enable]  \
  [get_pins u_dsp/rst_n]  \
  [get_pins u_dsp/clk]  \
  [get_pins {u_ao/gpio_out[0]}]  \
  [get_pins {u_ao/gpio_out[1]}]  \
  [get_pins {u_ao/gpio_out[2]}]  \
  [get_pins {u_ao/gpio_out[3]}]  \
  [get_pins {u_ao/gpio_out[4]}]  \
  [get_pins {u_ao/gpio_out[5]}]  \
  [get_pins {u_ao/gpio_out[6]}]  \
  [get_pins {u_ao/gpio_out[7]}]  \
  [get_pins {u_ao/gpio_out[8]}]  \
  [get_pins {u_ao/gpio_out[9]}]  \
  [get_pins {u_ao/gpio_out[10]}]  \
  [get_pins {u_ao/gpio_out[11]}]  \
  [get_pins {u_ao/gpio_out[12]}]  \
  [get_pins {u_ao/gpio_out[13]}]  \
  [get_pins {u_ao/gpio_out[14]}]  \
  [get_pins {u_ao/gpio_out[15]}]  \
  [get_pins {u_ao/gpio_out[16]}]  \
  [get_pins {u_ao/gpio_out[17]}]  \
  [get_pins {u_ao/gpio_out[18]}]  \
  [get_pins {u_ao/gpio_out[19]}]  \
  [get_pins {u_ao/gpio_out[20]}]  \
  [get_pins {u_ao/gpio_out[21]}]  \
  [get_pins {u_ao/gpio_out[22]}]  \
  [get_pins {u_ao/gpio_out[23]}]  \
  [get_pins {u_ao/gpio_out[24]}]  \
  [get_pins {u_ao/gpio_out[25]}]  \
  [get_pins {u_ao/gpio_out[26]}]  \
  [get_pins {u_ao/gpio_out[27]}]  \
  [get_pins {u_ao/gpio_out[28]}]  \
  [get_pins {u_ao/gpio_out[29]}]  \
  [get_pins {u_ao/gpio_out[30]}]  \
  [get_pins {u_ao/gpio_out[31]}]  \
  [get_pins {u_ao/cpu_status[0]}]  \
  [get_pins {u_ao/cpu_status[1]}]  \
  [get_pins {u_ao/cpu_status[2]}]  \
  [get_pins {u_ao/cpu_status[3]}]  \
  [get_pins {u_ao/cpu_status[4]}]  \
  [get_pins {u_ao/cpu_status[5]}]  \
  [get_pins {u_ao/cpu_status[6]}]  \
  [get_pins {u_ao/cpu_status[7]}]  \
  [get_pins {u_ao/gpio_in[0]}]  \
  [get_pins {u_ao/gpio_in[1]}]  \
  [get_pins {u_ao/gpio_in[2]}]  \
  [get_pins {u_ao/gpio_in[3]}]  \
  [get_pins {u_ao/gpio_in[4]}]  \
  [get_pins {u_ao/gpio_in[5]}]  \
  [get_pins {u_ao/gpio_in[6]}]  \
  [get_pins {u_ao/gpio_in[7]}]  \
  [get_pins {u_ao/gpio_in[8]}]  \
  [get_pins {u_ao/gpio_in[9]}]  \
  [get_pins {u_ao/gpio_in[10]}]  \
  [get_pins {u_ao/gpio_in[11]}]  \
  [get_pins {u_ao/gpio_in[12]}]  \
  [get_pins {u_ao/gpio_in[13]}]  \
  [get_pins {u_ao/gpio_in[14]}]  \
  [get_pins {u_ao/gpio_in[15]}]  \
  [get_pins {u_ao/gpio_in[16]}]  \
  [get_pins {u_ao/gpio_in[17]}]  \
  [get_pins {u_ao/gpio_in[18]}]  \
  [get_pins {u_ao/gpio_in[19]}]  \
  [get_pins {u_ao/gpio_in[20]}]  \
  [get_pins {u_ao/gpio_in[21]}]  \
  [get_pins {u_ao/gpio_in[22]}]  \
  [get_pins {u_ao/gpio_in[23]}]  \
  [get_pins {u_ao/gpio_in[24]}]  \
  [get_pins {u_ao/gpio_in[25]}]  \
  [get_pins {u_ao/gpio_in[26]}]  \
  [get_pins {u_ao/gpio_in[27]}]  \
  [get_pins {u_ao/gpio_in[28]}]  \
  [get_pins {u_ao/gpio_in[29]}]  \
  [get_pins {u_ao/gpio_in[30]}]  \
  [get_pins {u_ao/gpio_in[31]}]  \
  [get_pins {u_ao/cpu_cmd[0]}]  \
  [get_pins {u_ao/cpu_cmd[1]}]  \
  [get_pins {u_ao/cpu_cmd[2]}]  \
  [get_pins {u_ao/cpu_cmd[3]}]  \
  [get_pins {u_ao/cpu_cmd[4]}]  \
  [get_pins {u_ao/cpu_cmd[5]}]  \
  [get_pins {u_ao/cpu_cmd[6]}]  \
  [get_pins {u_ao/cpu_cmd[7]}]  \
  [get_pins u_ao/sleep_mode]  \
  [get_pins u_ao/rst_n]  \
  [get_pins u_ao/clk_32k] ]
set_max_delay 10 -from [list \
  [get_pins u_dsp/data_out_valid]  \
  [get_pins {u_dsp/data_out[0]}]  \
  [get_pins {u_dsp/data_out[1]}]  \
  [get_pins {u_dsp/data_out[2]}]  \
  [get_pins {u_dsp/data_out[3]}]  \
  [get_pins {u_dsp/data_out[4]}]  \
  [get_pins {u_dsp/data_out[5]}]  \
  [get_pins {u_dsp/data_out[6]}]  \
  [get_pins {u_dsp/data_out[7]}]  \
  [get_pins {u_dsp/data_out[8]}]  \
  [get_pins {u_dsp/data_out[9]}]  \
  [get_pins {u_dsp/data_out[10]}]  \
  [get_pins {u_dsp/data_out[11]}]  \
  [get_pins {u_dsp/data_out[12]}]  \
  [get_pins {u_dsp/data_out[13]}]  \
  [get_pins {u_dsp/data_out[14]}]  \
  [get_pins {u_dsp/data_out[15]}]  \
  [get_pins {u_dsp/data_out[16]}]  \
  [get_pins {u_dsp/data_out[17]}]  \
  [get_pins {u_dsp/data_out[18]}]  \
  [get_pins {u_dsp/data_out[19]}]  \
  [get_pins {u_dsp/data_out[20]}]  \
  [get_pins {u_dsp/data_out[21]}]  \
  [get_pins {u_dsp/data_out[22]}]  \
  [get_pins {u_dsp/data_out[23]}]  \
  [get_pins {u_dsp/data_out[24]}]  \
  [get_pins {u_dsp/data_out[25]}]  \
  [get_pins {u_dsp/data_out[26]}]  \
  [get_pins {u_dsp/data_out[27]}]  \
  [get_pins {u_dsp/data_out[28]}]  \
  [get_pins {u_dsp/data_out[29]}]  \
  [get_pins {u_dsp/data_out[30]}]  \
  [get_pins {u_dsp/data_out[31]}]  \
  [get_pins u_dsp/data_in_valid]  \
  [get_pins {u_dsp/data_in[0]}]  \
  [get_pins {u_dsp/data_in[1]}]  \
  [get_pins {u_dsp/data_in[2]}]  \
  [get_pins {u_dsp/data_in[3]}]  \
  [get_pins {u_dsp/data_in[4]}]  \
  [get_pins {u_dsp/data_in[5]}]  \
  [get_pins {u_dsp/data_in[6]}]  \
  [get_pins {u_dsp/data_in[7]}]  \
  [get_pins {u_dsp/data_in[8]}]  \
  [get_pins {u_dsp/data_in[9]}]  \
  [get_pins {u_dsp/data_in[10]}]  \
  [get_pins {u_dsp/data_in[11]}]  \
  [get_pins {u_dsp/data_in[12]}]  \
  [get_pins {u_dsp/data_in[13]}]  \
  [get_pins {u_dsp/data_in[14]}]  \
  [get_pins {u_dsp/data_in[15]}]  \
  [get_pins {u_dsp/data_in[16]}]  \
  [get_pins {u_dsp/data_in[17]}]  \
  [get_pins {u_dsp/data_in[18]}]  \
  [get_pins {u_dsp/data_in[19]}]  \
  [get_pins {u_dsp/data_in[20]}]  \
  [get_pins {u_dsp/data_in[21]}]  \
  [get_pins {u_dsp/data_in[22]}]  \
  [get_pins {u_dsp/data_in[23]}]  \
  [get_pins {u_dsp/data_in[24]}]  \
  [get_pins {u_dsp/data_in[25]}]  \
  [get_pins {u_dsp/data_in[26]}]  \
  [get_pins {u_dsp/data_in[27]}]  \
  [get_pins {u_dsp/data_in[28]}]  \
  [get_pins {u_dsp/data_in[29]}]  \
  [get_pins {u_dsp/data_in[30]}]  \
  [get_pins {u_dsp/data_in[31]}]  \
  [get_pins u_dsp/enable]  \
  [get_pins u_dsp/rst_n]  \
  [get_pins u_dsp/clk] ] -to [list \
  [get_pins u_cpu/mem_re]  \
  [get_pins u_cpu/mem_we]  \
  [get_pins {u_cpu/mem_wdata[0]}]  \
  [get_pins {u_cpu/mem_wdata[1]}]  \
  [get_pins {u_cpu/mem_wdata[2]}]  \
  [get_pins {u_cpu/mem_wdata[3]}]  \
  [get_pins {u_cpu/mem_wdata[4]}]  \
  [get_pins {u_cpu/mem_wdata[5]}]  \
  [get_pins {u_cpu/mem_wdata[6]}]  \
  [get_pins {u_cpu/mem_wdata[7]}]  \
  [get_pins {u_cpu/mem_wdata[8]}]  \
  [get_pins {u_cpu/mem_wdata[9]}]  \
  [get_pins {u_cpu/mem_wdata[10]}]  \
  [get_pins {u_cpu/mem_wdata[11]}]  \
  [get_pins {u_cpu/mem_wdata[12]}]  \
  [get_pins {u_cpu/mem_wdata[13]}]  \
  [get_pins {u_cpu/mem_wdata[14]}]  \
  [get_pins {u_cpu/mem_wdata[15]}]  \
  [get_pins {u_cpu/mem_wdata[16]}]  \
  [get_pins {u_cpu/mem_wdata[17]}]  \
  [get_pins {u_cpu/mem_wdata[18]}]  \
  [get_pins {u_cpu/mem_wdata[19]}]  \
  [get_pins {u_cpu/mem_wdata[20]}]  \
  [get_pins {u_cpu/mem_wdata[21]}]  \
  [get_pins {u_cpu/mem_wdata[22]}]  \
  [get_pins {u_cpu/mem_wdata[23]}]  \
  [get_pins {u_cpu/mem_wdata[24]}]  \
  [get_pins {u_cpu/mem_wdata[25]}]  \
  [get_pins {u_cpu/mem_wdata[26]}]  \
  [get_pins {u_cpu/mem_wdata[27]}]  \
  [get_pins {u_cpu/mem_wdata[28]}]  \
  [get_pins {u_cpu/mem_wdata[29]}]  \
  [get_pins {u_cpu/mem_wdata[30]}]  \
  [get_pins {u_cpu/mem_wdata[31]}]  \
  [get_pins {u_cpu/mem_addr[0]}]  \
  [get_pins {u_cpu/mem_addr[1]}]  \
  [get_pins {u_cpu/mem_addr[2]}]  \
  [get_pins {u_cpu/mem_addr[3]}]  \
  [get_pins {u_cpu/mem_addr[4]}]  \
  [get_pins {u_cpu/mem_addr[5]}]  \
  [get_pins {u_cpu/mem_addr[6]}]  \
  [get_pins {u_cpu/mem_addr[7]}]  \
  [get_pins {u_cpu/mem_addr[8]}]  \
  [get_pins {u_cpu/mem_addr[9]}]  \
  [get_pins {u_cpu/mem_addr[10]}]  \
  [get_pins {u_cpu/mem_addr[11]}]  \
  [get_pins {u_cpu/mem_addr[12]}]  \
  [get_pins {u_cpu/mem_addr[13]}]  \
  [get_pins {u_cpu/mem_addr[14]}]  \
  [get_pins {u_cpu/mem_addr[15]}]  \
  [get_pins {u_cpu/mem_addr[16]}]  \
  [get_pins {u_cpu/mem_addr[17]}]  \
  [get_pins {u_cpu/mem_addr[18]}]  \
  [get_pins {u_cpu/mem_addr[19]}]  \
  [get_pins {u_cpu/mem_addr[20]}]  \
  [get_pins {u_cpu/mem_addr[21]}]  \
  [get_pins {u_cpu/mem_addr[22]}]  \
  [get_pins {u_cpu/mem_addr[23]}]  \
  [get_pins {u_cpu/mem_addr[24]}]  \
  [get_pins {u_cpu/mem_addr[25]}]  \
  [get_pins {u_cpu/mem_addr[26]}]  \
  [get_pins {u_cpu/mem_addr[27]}]  \
  [get_pins {u_cpu/mem_addr[28]}]  \
  [get_pins {u_cpu/mem_addr[29]}]  \
  [get_pins {u_cpu/mem_addr[30]}]  \
  [get_pins {u_cpu/mem_addr[31]}]  \
  [get_pins {u_cpu/ao_cmd[0]}]  \
  [get_pins {u_cpu/ao_cmd[1]}]  \
  [get_pins {u_cpu/ao_cmd[2]}]  \
  [get_pins {u_cpu/ao_cmd[3]}]  \
  [get_pins {u_cpu/ao_cmd[4]}]  \
  [get_pins {u_cpu/ao_cmd[5]}]  \
  [get_pins {u_cpu/ao_cmd[6]}]  \
  [get_pins {u_cpu/ao_cmd[7]}]  \
  [get_pins u_cpu/data_out_valid]  \
  [get_pins {u_cpu/data_out[0]}]  \
  [get_pins {u_cpu/data_out[1]}]  \
  [get_pins {u_cpu/data_out[2]}]  \
  [get_pins {u_cpu/data_out[3]}]  \
  [get_pins {u_cpu/data_out[4]}]  \
  [get_pins {u_cpu/data_out[5]}]  \
  [get_pins {u_cpu/data_out[6]}]  \
  [get_pins {u_cpu/data_out[7]}]  \
  [get_pins {u_cpu/data_out[8]}]  \
  [get_pins {u_cpu/data_out[9]}]  \
  [get_pins {u_cpu/data_out[10]}]  \
  [get_pins {u_cpu/data_out[11]}]  \
  [get_pins {u_cpu/data_out[12]}]  \
  [get_pins {u_cpu/data_out[13]}]  \
  [get_pins {u_cpu/data_out[14]}]  \
  [get_pins {u_cpu/data_out[15]}]  \
  [get_pins {u_cpu/data_out[16]}]  \
  [get_pins {u_cpu/data_out[17]}]  \
  [get_pins {u_cpu/data_out[18]}]  \
  [get_pins {u_cpu/data_out[19]}]  \
  [get_pins {u_cpu/data_out[20]}]  \
  [get_pins {u_cpu/data_out[21]}]  \
  [get_pins {u_cpu/data_out[22]}]  \
  [get_pins {u_cpu/data_out[23]}]  \
  [get_pins {u_cpu/data_out[24]}]  \
  [get_pins {u_cpu/data_out[25]}]  \
  [get_pins {u_cpu/data_out[26]}]  \
  [get_pins {u_cpu/data_out[27]}]  \
  [get_pins {u_cpu/data_out[28]}]  \
  [get_pins {u_cpu/data_out[29]}]  \
  [get_pins {u_cpu/data_out[30]}]  \
  [get_pins {u_cpu/data_out[31]}]  \
  [get_pins {u_cpu/mem_rdata[0]}]  \
  [get_pins {u_cpu/mem_rdata[1]}]  \
  [get_pins {u_cpu/mem_rdata[2]}]  \
  [get_pins {u_cpu/mem_rdata[3]}]  \
  [get_pins {u_cpu/mem_rdata[4]}]  \
  [get_pins {u_cpu/mem_rdata[5]}]  \
  [get_pins {u_cpu/mem_rdata[6]}]  \
  [get_pins {u_cpu/mem_rdata[7]}]  \
  [get_pins {u_cpu/mem_rdata[8]}]  \
  [get_pins {u_cpu/mem_rdata[9]}]  \
  [get_pins {u_cpu/mem_rdata[10]}]  \
  [get_pins {u_cpu/mem_rdata[11]}]  \
  [get_pins {u_cpu/mem_rdata[12]}]  \
  [get_pins {u_cpu/mem_rdata[13]}]  \
  [get_pins {u_cpu/mem_rdata[14]}]  \
  [get_pins {u_cpu/mem_rdata[15]}]  \
  [get_pins {u_cpu/mem_rdata[16]}]  \
  [get_pins {u_cpu/mem_rdata[17]}]  \
  [get_pins {u_cpu/mem_rdata[18]}]  \
  [get_pins {u_cpu/mem_rdata[19]}]  \
  [get_pins {u_cpu/mem_rdata[20]}]  \
  [get_pins {u_cpu/mem_rdata[21]}]  \
  [get_pins {u_cpu/mem_rdata[22]}]  \
  [get_pins {u_cpu/mem_rdata[23]}]  \
  [get_pins {u_cpu/mem_rdata[24]}]  \
  [get_pins {u_cpu/mem_rdata[25]}]  \
  [get_pins {u_cpu/mem_rdata[26]}]  \
  [get_pins {u_cpu/mem_rdata[27]}]  \
  [get_pins {u_cpu/mem_rdata[28]}]  \
  [get_pins {u_cpu/mem_rdata[29]}]  \
  [get_pins {u_cpu/mem_rdata[30]}]  \
  [get_pins {u_cpu/mem_rdata[31]}]  \
  [get_pins {u_cpu/ao_status[0]}]  \
  [get_pins {u_cpu/ao_status[1]}]  \
  [get_pins {u_cpu/ao_status[2]}]  \
  [get_pins {u_cpu/ao_status[3]}]  \
  [get_pins {u_cpu/ao_status[4]}]  \
  [get_pins {u_cpu/ao_status[5]}]  \
  [get_pins {u_cpu/ao_status[6]}]  \
  [get_pins {u_cpu/ao_status[7]}]  \
  [get_pins u_cpu/data_in_valid]  \
  [get_pins {u_cpu/data_in[0]}]  \
  [get_pins {u_cpu/data_in[1]}]  \
  [get_pins {u_cpu/data_in[2]}]  \
  [get_pins {u_cpu/data_in[3]}]  \
  [get_pins {u_cpu/data_in[4]}]  \
  [get_pins {u_cpu/data_in[5]}]  \
  [get_pins {u_cpu/data_in[6]}]  \
  [get_pins {u_cpu/data_in[7]}]  \
  [get_pins {u_cpu/data_in[8]}]  \
  [get_pins {u_cpu/data_in[9]}]  \
  [get_pins {u_cpu/data_in[10]}]  \
  [get_pins {u_cpu/data_in[11]}]  \
  [get_pins {u_cpu/data_in[12]}]  \
  [get_pins {u_cpu/data_in[13]}]  \
  [get_pins {u_cpu/data_in[14]}]  \
  [get_pins {u_cpu/data_in[15]}]  \
  [get_pins {u_cpu/data_in[16]}]  \
  [get_pins {u_cpu/data_in[17]}]  \
  [get_pins {u_cpu/data_in[18]}]  \
  [get_pins {u_cpu/data_in[19]}]  \
  [get_pins {u_cpu/data_in[20]}]  \
  [get_pins {u_cpu/data_in[21]}]  \
  [get_pins {u_cpu/data_in[22]}]  \
  [get_pins {u_cpu/data_in[23]}]  \
  [get_pins {u_cpu/data_in[24]}]  \
  [get_pins {u_cpu/data_in[25]}]  \
  [get_pins {u_cpu/data_in[26]}]  \
  [get_pins {u_cpu/data_in[27]}]  \
  [get_pins {u_cpu/data_in[28]}]  \
  [get_pins {u_cpu/data_in[29]}]  \
  [get_pins {u_cpu/data_in[30]}]  \
  [get_pins {u_cpu/data_in[31]}]  \
  [get_pins u_cpu/enable]  \
  [get_pins u_cpu/rst_n]  \
  [get_pins u_cpu/clk]  \
  [get_pins {u_ao/gpio_out[0]}]  \
  [get_pins {u_ao/gpio_out[1]}]  \
  [get_pins {u_ao/gpio_out[2]}]  \
  [get_pins {u_ao/gpio_out[3]}]  \
  [get_pins {u_ao/gpio_out[4]}]  \
  [get_pins {u_ao/gpio_out[5]}]  \
  [get_pins {u_ao/gpio_out[6]}]  \
  [get_pins {u_ao/gpio_out[7]}]  \
  [get_pins {u_ao/gpio_out[8]}]  \
  [get_pins {u_ao/gpio_out[9]}]  \
  [get_pins {u_ao/gpio_out[10]}]  \
  [get_pins {u_ao/gpio_out[11]}]  \
  [get_pins {u_ao/gpio_out[12]}]  \
  [get_pins {u_ao/gpio_out[13]}]  \
  [get_pins {u_ao/gpio_out[14]}]  \
  [get_pins {u_ao/gpio_out[15]}]  \
  [get_pins {u_ao/gpio_out[16]}]  \
  [get_pins {u_ao/gpio_out[17]}]  \
  [get_pins {u_ao/gpio_out[18]}]  \
  [get_pins {u_ao/gpio_out[19]}]  \
  [get_pins {u_ao/gpio_out[20]}]  \
  [get_pins {u_ao/gpio_out[21]}]  \
  [get_pins {u_ao/gpio_out[22]}]  \
  [get_pins {u_ao/gpio_out[23]}]  \
  [get_pins {u_ao/gpio_out[24]}]  \
  [get_pins {u_ao/gpio_out[25]}]  \
  [get_pins {u_ao/gpio_out[26]}]  \
  [get_pins {u_ao/gpio_out[27]}]  \
  [get_pins {u_ao/gpio_out[28]}]  \
  [get_pins {u_ao/gpio_out[29]}]  \
  [get_pins {u_ao/gpio_out[30]}]  \
  [get_pins {u_ao/gpio_out[31]}]  \
  [get_pins {u_ao/cpu_status[0]}]  \
  [get_pins {u_ao/cpu_status[1]}]  \
  [get_pins {u_ao/cpu_status[2]}]  \
  [get_pins {u_ao/cpu_status[3]}]  \
  [get_pins {u_ao/cpu_status[4]}]  \
  [get_pins {u_ao/cpu_status[5]}]  \
  [get_pins {u_ao/cpu_status[6]}]  \
  [get_pins {u_ao/cpu_status[7]}]  \
  [get_pins {u_ao/gpio_in[0]}]  \
  [get_pins {u_ao/gpio_in[1]}]  \
  [get_pins {u_ao/gpio_in[2]}]  \
  [get_pins {u_ao/gpio_in[3]}]  \
  [get_pins {u_ao/gpio_in[4]}]  \
  [get_pins {u_ao/gpio_in[5]}]  \
  [get_pins {u_ao/gpio_in[6]}]  \
  [get_pins {u_ao/gpio_in[7]}]  \
  [get_pins {u_ao/gpio_in[8]}]  \
  [get_pins {u_ao/gpio_in[9]}]  \
  [get_pins {u_ao/gpio_in[10]}]  \
  [get_pins {u_ao/gpio_in[11]}]  \
  [get_pins {u_ao/gpio_in[12]}]  \
  [get_pins {u_ao/gpio_in[13]}]  \
  [get_pins {u_ao/gpio_in[14]}]  \
  [get_pins {u_ao/gpio_in[15]}]  \
  [get_pins {u_ao/gpio_in[16]}]  \
  [get_pins {u_ao/gpio_in[17]}]  \
  [get_pins {u_ao/gpio_in[18]}]  \
  [get_pins {u_ao/gpio_in[19]}]  \
  [get_pins {u_ao/gpio_in[20]}]  \
  [get_pins {u_ao/gpio_in[21]}]  \
  [get_pins {u_ao/gpio_in[22]}]  \
  [get_pins {u_ao/gpio_in[23]}]  \
  [get_pins {u_ao/gpio_in[24]}]  \
  [get_pins {u_ao/gpio_in[25]}]  \
  [get_pins {u_ao/gpio_in[26]}]  \
  [get_pins {u_ao/gpio_in[27]}]  \
  [get_pins {u_ao/gpio_in[28]}]  \
  [get_pins {u_ao/gpio_in[29]}]  \
  [get_pins {u_ao/gpio_in[30]}]  \
  [get_pins {u_ao/gpio_in[31]}]  \
  [get_pins {u_ao/cpu_cmd[0]}]  \
  [get_pins {u_ao/cpu_cmd[1]}]  \
  [get_pins {u_ao/cpu_cmd[2]}]  \
  [get_pins {u_ao/cpu_cmd[3]}]  \
  [get_pins {u_ao/cpu_cmd[4]}]  \
  [get_pins {u_ao/cpu_cmd[5]}]  \
  [get_pins {u_ao/cpu_cmd[6]}]  \
  [get_pins {u_ao/cpu_cmd[7]}]  \
  [get_pins u_ao/sleep_mode]  \
  [get_pins u_ao/rst_n]  \
  [get_pins u_ao/clk_32k] ]
set_max_delay 15 -from [list \
  [get_pins {u_ao/gpio_out[0]}]  \
  [get_pins {u_ao/gpio_out[1]}]  \
  [get_pins {u_ao/gpio_out[2]}]  \
  [get_pins {u_ao/gpio_out[3]}]  \
  [get_pins {u_ao/gpio_out[4]}]  \
  [get_pins {u_ao/gpio_out[5]}]  \
  [get_pins {u_ao/gpio_out[6]}]  \
  [get_pins {u_ao/gpio_out[7]}]  \
  [get_pins {u_ao/gpio_out[8]}]  \
  [get_pins {u_ao/gpio_out[9]}]  \
  [get_pins {u_ao/gpio_out[10]}]  \
  [get_pins {u_ao/gpio_out[11]}]  \
  [get_pins {u_ao/gpio_out[12]}]  \
  [get_pins {u_ao/gpio_out[13]}]  \
  [get_pins {u_ao/gpio_out[14]}]  \
  [get_pins {u_ao/gpio_out[15]}]  \
  [get_pins {u_ao/gpio_out[16]}]  \
  [get_pins {u_ao/gpio_out[17]}]  \
  [get_pins {u_ao/gpio_out[18]}]  \
  [get_pins {u_ao/gpio_out[19]}]  \
  [get_pins {u_ao/gpio_out[20]}]  \
  [get_pins {u_ao/gpio_out[21]}]  \
  [get_pins {u_ao/gpio_out[22]}]  \
  [get_pins {u_ao/gpio_out[23]}]  \
  [get_pins {u_ao/gpio_out[24]}]  \
  [get_pins {u_ao/gpio_out[25]}]  \
  [get_pins {u_ao/gpio_out[26]}]  \
  [get_pins {u_ao/gpio_out[27]}]  \
  [get_pins {u_ao/gpio_out[28]}]  \
  [get_pins {u_ao/gpio_out[29]}]  \
  [get_pins {u_ao/gpio_out[30]}]  \
  [get_pins {u_ao/gpio_out[31]}]  \
  [get_pins {u_ao/cpu_status[0]}]  \
  [get_pins {u_ao/cpu_status[1]}]  \
  [get_pins {u_ao/cpu_status[2]}]  \
  [get_pins {u_ao/cpu_status[3]}]  \
  [get_pins {u_ao/cpu_status[4]}]  \
  [get_pins {u_ao/cpu_status[5]}]  \
  [get_pins {u_ao/cpu_status[6]}]  \
  [get_pins {u_ao/cpu_status[7]}]  \
  [get_pins {u_ao/gpio_in[0]}]  \
  [get_pins {u_ao/gpio_in[1]}]  \
  [get_pins {u_ao/gpio_in[2]}]  \
  [get_pins {u_ao/gpio_in[3]}]  \
  [get_pins {u_ao/gpio_in[4]}]  \
  [get_pins {u_ao/gpio_in[5]}]  \
  [get_pins {u_ao/gpio_in[6]}]  \
  [get_pins {u_ao/gpio_in[7]}]  \
  [get_pins {u_ao/gpio_in[8]}]  \
  [get_pins {u_ao/gpio_in[9]}]  \
  [get_pins {u_ao/gpio_in[10]}]  \
  [get_pins {u_ao/gpio_in[11]}]  \
  [get_pins {u_ao/gpio_in[12]}]  \
  [get_pins {u_ao/gpio_in[13]}]  \
  [get_pins {u_ao/gpio_in[14]}]  \
  [get_pins {u_ao/gpio_in[15]}]  \
  [get_pins {u_ao/gpio_in[16]}]  \
  [get_pins {u_ao/gpio_in[17]}]  \
  [get_pins {u_ao/gpio_in[18]}]  \
  [get_pins {u_ao/gpio_in[19]}]  \
  [get_pins {u_ao/gpio_in[20]}]  \
  [get_pins {u_ao/gpio_in[21]}]  \
  [get_pins {u_ao/gpio_in[22]}]  \
  [get_pins {u_ao/gpio_in[23]}]  \
  [get_pins {u_ao/gpio_in[24]}]  \
  [get_pins {u_ao/gpio_in[25]}]  \
  [get_pins {u_ao/gpio_in[26]}]  \
  [get_pins {u_ao/gpio_in[27]}]  \
  [get_pins {u_ao/gpio_in[28]}]  \
  [get_pins {u_ao/gpio_in[29]}]  \
  [get_pins {u_ao/gpio_in[30]}]  \
  [get_pins {u_ao/gpio_in[31]}]  \
  [get_pins {u_ao/cpu_cmd[0]}]  \
  [get_pins {u_ao/cpu_cmd[1]}]  \
  [get_pins {u_ao/cpu_cmd[2]}]  \
  [get_pins {u_ao/cpu_cmd[3]}]  \
  [get_pins {u_ao/cpu_cmd[4]}]  \
  [get_pins {u_ao/cpu_cmd[5]}]  \
  [get_pins {u_ao/cpu_cmd[6]}]  \
  [get_pins {u_ao/cpu_cmd[7]}]  \
  [get_pins u_ao/sleep_mode]  \
  [get_pins u_ao/rst_n]  \
  [get_pins u_ao/clk_32k] ] -to [list \
  [get_pins u_cpu/mem_re]  \
  [get_pins u_cpu/mem_we]  \
  [get_pins {u_cpu/mem_wdata[0]}]  \
  [get_pins {u_cpu/mem_wdata[1]}]  \
  [get_pins {u_cpu/mem_wdata[2]}]  \
  [get_pins {u_cpu/mem_wdata[3]}]  \
  [get_pins {u_cpu/mem_wdata[4]}]  \
  [get_pins {u_cpu/mem_wdata[5]}]  \
  [get_pins {u_cpu/mem_wdata[6]}]  \
  [get_pins {u_cpu/mem_wdata[7]}]  \
  [get_pins {u_cpu/mem_wdata[8]}]  \
  [get_pins {u_cpu/mem_wdata[9]}]  \
  [get_pins {u_cpu/mem_wdata[10]}]  \
  [get_pins {u_cpu/mem_wdata[11]}]  \
  [get_pins {u_cpu/mem_wdata[12]}]  \
  [get_pins {u_cpu/mem_wdata[13]}]  \
  [get_pins {u_cpu/mem_wdata[14]}]  \
  [get_pins {u_cpu/mem_wdata[15]}]  \
  [get_pins {u_cpu/mem_wdata[16]}]  \
  [get_pins {u_cpu/mem_wdata[17]}]  \
  [get_pins {u_cpu/mem_wdata[18]}]  \
  [get_pins {u_cpu/mem_wdata[19]}]  \
  [get_pins {u_cpu/mem_wdata[20]}]  \
  [get_pins {u_cpu/mem_wdata[21]}]  \
  [get_pins {u_cpu/mem_wdata[22]}]  \
  [get_pins {u_cpu/mem_wdata[23]}]  \
  [get_pins {u_cpu/mem_wdata[24]}]  \
  [get_pins {u_cpu/mem_wdata[25]}]  \
  [get_pins {u_cpu/mem_wdata[26]}]  \
  [get_pins {u_cpu/mem_wdata[27]}]  \
  [get_pins {u_cpu/mem_wdata[28]}]  \
  [get_pins {u_cpu/mem_wdata[29]}]  \
  [get_pins {u_cpu/mem_wdata[30]}]  \
  [get_pins {u_cpu/mem_wdata[31]}]  \
  [get_pins {u_cpu/mem_addr[0]}]  \
  [get_pins {u_cpu/mem_addr[1]}]  \
  [get_pins {u_cpu/mem_addr[2]}]  \
  [get_pins {u_cpu/mem_addr[3]}]  \
  [get_pins {u_cpu/mem_addr[4]}]  \
  [get_pins {u_cpu/mem_addr[5]}]  \
  [get_pins {u_cpu/mem_addr[6]}]  \
  [get_pins {u_cpu/mem_addr[7]}]  \
  [get_pins {u_cpu/mem_addr[8]}]  \
  [get_pins {u_cpu/mem_addr[9]}]  \
  [get_pins {u_cpu/mem_addr[10]}]  \
  [get_pins {u_cpu/mem_addr[11]}]  \
  [get_pins {u_cpu/mem_addr[12]}]  \
  [get_pins {u_cpu/mem_addr[13]}]  \
  [get_pins {u_cpu/mem_addr[14]}]  \
  [get_pins {u_cpu/mem_addr[15]}]  \
  [get_pins {u_cpu/mem_addr[16]}]  \
  [get_pins {u_cpu/mem_addr[17]}]  \
  [get_pins {u_cpu/mem_addr[18]}]  \
  [get_pins {u_cpu/mem_addr[19]}]  \
  [get_pins {u_cpu/mem_addr[20]}]  \
  [get_pins {u_cpu/mem_addr[21]}]  \
  [get_pins {u_cpu/mem_addr[22]}]  \
  [get_pins {u_cpu/mem_addr[23]}]  \
  [get_pins {u_cpu/mem_addr[24]}]  \
  [get_pins {u_cpu/mem_addr[25]}]  \
  [get_pins {u_cpu/mem_addr[26]}]  \
  [get_pins {u_cpu/mem_addr[27]}]  \
  [get_pins {u_cpu/mem_addr[28]}]  \
  [get_pins {u_cpu/mem_addr[29]}]  \
  [get_pins {u_cpu/mem_addr[30]}]  \
  [get_pins {u_cpu/mem_addr[31]}]  \
  [get_pins {u_cpu/ao_cmd[0]}]  \
  [get_pins {u_cpu/ao_cmd[1]}]  \
  [get_pins {u_cpu/ao_cmd[2]}]  \
  [get_pins {u_cpu/ao_cmd[3]}]  \
  [get_pins {u_cpu/ao_cmd[4]}]  \
  [get_pins {u_cpu/ao_cmd[5]}]  \
  [get_pins {u_cpu/ao_cmd[6]}]  \
  [get_pins {u_cpu/ao_cmd[7]}]  \
  [get_pins u_cpu/data_out_valid]  \
  [get_pins {u_cpu/data_out[0]}]  \
  [get_pins {u_cpu/data_out[1]}]  \
  [get_pins {u_cpu/data_out[2]}]  \
  [get_pins {u_cpu/data_out[3]}]  \
  [get_pins {u_cpu/data_out[4]}]  \
  [get_pins {u_cpu/data_out[5]}]  \
  [get_pins {u_cpu/data_out[6]}]  \
  [get_pins {u_cpu/data_out[7]}]  \
  [get_pins {u_cpu/data_out[8]}]  \
  [get_pins {u_cpu/data_out[9]}]  \
  [get_pins {u_cpu/data_out[10]}]  \
  [get_pins {u_cpu/data_out[11]}]  \
  [get_pins {u_cpu/data_out[12]}]  \
  [get_pins {u_cpu/data_out[13]}]  \
  [get_pins {u_cpu/data_out[14]}]  \
  [get_pins {u_cpu/data_out[15]}]  \
  [get_pins {u_cpu/data_out[16]}]  \
  [get_pins {u_cpu/data_out[17]}]  \
  [get_pins {u_cpu/data_out[18]}]  \
  [get_pins {u_cpu/data_out[19]}]  \
  [get_pins {u_cpu/data_out[20]}]  \
  [get_pins {u_cpu/data_out[21]}]  \
  [get_pins {u_cpu/data_out[22]}]  \
  [get_pins {u_cpu/data_out[23]}]  \
  [get_pins {u_cpu/data_out[24]}]  \
  [get_pins {u_cpu/data_out[25]}]  \
  [get_pins {u_cpu/data_out[26]}]  \
  [get_pins {u_cpu/data_out[27]}]  \
  [get_pins {u_cpu/data_out[28]}]  \
  [get_pins {u_cpu/data_out[29]}]  \
  [get_pins {u_cpu/data_out[30]}]  \
  [get_pins {u_cpu/data_out[31]}]  \
  [get_pins {u_cpu/mem_rdata[0]}]  \
  [get_pins {u_cpu/mem_rdata[1]}]  \
  [get_pins {u_cpu/mem_rdata[2]}]  \
  [get_pins {u_cpu/mem_rdata[3]}]  \
  [get_pins {u_cpu/mem_rdata[4]}]  \
  [get_pins {u_cpu/mem_rdata[5]}]  \
  [get_pins {u_cpu/mem_rdata[6]}]  \
  [get_pins {u_cpu/mem_rdata[7]}]  \
  [get_pins {u_cpu/mem_rdata[8]}]  \
  [get_pins {u_cpu/mem_rdata[9]}]  \
  [get_pins {u_cpu/mem_rdata[10]}]  \
  [get_pins {u_cpu/mem_rdata[11]}]  \
  [get_pins {u_cpu/mem_rdata[12]}]  \
  [get_pins {u_cpu/mem_rdata[13]}]  \
  [get_pins {u_cpu/mem_rdata[14]}]  \
  [get_pins {u_cpu/mem_rdata[15]}]  \
  [get_pins {u_cpu/mem_rdata[16]}]  \
  [get_pins {u_cpu/mem_rdata[17]}]  \
  [get_pins {u_cpu/mem_rdata[18]}]  \
  [get_pins {u_cpu/mem_rdata[19]}]  \
  [get_pins {u_cpu/mem_rdata[20]}]  \
  [get_pins {u_cpu/mem_rdata[21]}]  \
  [get_pins {u_cpu/mem_rdata[22]}]  \
  [get_pins {u_cpu/mem_rdata[23]}]  \
  [get_pins {u_cpu/mem_rdata[24]}]  \
  [get_pins {u_cpu/mem_rdata[25]}]  \
  [get_pins {u_cpu/mem_rdata[26]}]  \
  [get_pins {u_cpu/mem_rdata[27]}]  \
  [get_pins {u_cpu/mem_rdata[28]}]  \
  [get_pins {u_cpu/mem_rdata[29]}]  \
  [get_pins {u_cpu/mem_rdata[30]}]  \
  [get_pins {u_cpu/mem_rdata[31]}]  \
  [get_pins {u_cpu/ao_status[0]}]  \
  [get_pins {u_cpu/ao_status[1]}]  \
  [get_pins {u_cpu/ao_status[2]}]  \
  [get_pins {u_cpu/ao_status[3]}]  \
  [get_pins {u_cpu/ao_status[4]}]  \
  [get_pins {u_cpu/ao_status[5]}]  \
  [get_pins {u_cpu/ao_status[6]}]  \
  [get_pins {u_cpu/ao_status[7]}]  \
  [get_pins u_cpu/data_in_valid]  \
  [get_pins {u_cpu/data_in[0]}]  \
  [get_pins {u_cpu/data_in[1]}]  \
  [get_pins {u_cpu/data_in[2]}]  \
  [get_pins {u_cpu/data_in[3]}]  \
  [get_pins {u_cpu/data_in[4]}]  \
  [get_pins {u_cpu/data_in[5]}]  \
  [get_pins {u_cpu/data_in[6]}]  \
  [get_pins {u_cpu/data_in[7]}]  \
  [get_pins {u_cpu/data_in[8]}]  \
  [get_pins {u_cpu/data_in[9]}]  \
  [get_pins {u_cpu/data_in[10]}]  \
  [get_pins {u_cpu/data_in[11]}]  \
  [get_pins {u_cpu/data_in[12]}]  \
  [get_pins {u_cpu/data_in[13]}]  \
  [get_pins {u_cpu/data_in[14]}]  \
  [get_pins {u_cpu/data_in[15]}]  \
  [get_pins {u_cpu/data_in[16]}]  \
  [get_pins {u_cpu/data_in[17]}]  \
  [get_pins {u_cpu/data_in[18]}]  \
  [get_pins {u_cpu/data_in[19]}]  \
  [get_pins {u_cpu/data_in[20]}]  \
  [get_pins {u_cpu/data_in[21]}]  \
  [get_pins {u_cpu/data_in[22]}]  \
  [get_pins {u_cpu/data_in[23]}]  \
  [get_pins {u_cpu/data_in[24]}]  \
  [get_pins {u_cpu/data_in[25]}]  \
  [get_pins {u_cpu/data_in[26]}]  \
  [get_pins {u_cpu/data_in[27]}]  \
  [get_pins {u_cpu/data_in[28]}]  \
  [get_pins {u_cpu/data_in[29]}]  \
  [get_pins {u_cpu/data_in[30]}]  \
  [get_pins {u_cpu/data_in[31]}]  \
  [get_pins u_cpu/enable]  \
  [get_pins u_cpu/rst_n]  \
  [get_pins u_cpu/clk]  \
  [get_pins u_dsp/data_out_valid]  \
  [get_pins {u_dsp/data_out[0]}]  \
  [get_pins {u_dsp/data_out[1]}]  \
  [get_pins {u_dsp/data_out[2]}]  \
  [get_pins {u_dsp/data_out[3]}]  \
  [get_pins {u_dsp/data_out[4]}]  \
  [get_pins {u_dsp/data_out[5]}]  \
  [get_pins {u_dsp/data_out[6]}]  \
  [get_pins {u_dsp/data_out[7]}]  \
  [get_pins {u_dsp/data_out[8]}]  \
  [get_pins {u_dsp/data_out[9]}]  \
  [get_pins {u_dsp/data_out[10]}]  \
  [get_pins {u_dsp/data_out[11]}]  \
  [get_pins {u_dsp/data_out[12]}]  \
  [get_pins {u_dsp/data_out[13]}]  \
  [get_pins {u_dsp/data_out[14]}]  \
  [get_pins {u_dsp/data_out[15]}]  \
  [get_pins {u_dsp/data_out[16]}]  \
  [get_pins {u_dsp/data_out[17]}]  \
  [get_pins {u_dsp/data_out[18]}]  \
  [get_pins {u_dsp/data_out[19]}]  \
  [get_pins {u_dsp/data_out[20]}]  \
  [get_pins {u_dsp/data_out[21]}]  \
  [get_pins {u_dsp/data_out[22]}]  \
  [get_pins {u_dsp/data_out[23]}]  \
  [get_pins {u_dsp/data_out[24]}]  \
  [get_pins {u_dsp/data_out[25]}]  \
  [get_pins {u_dsp/data_out[26]}]  \
  [get_pins {u_dsp/data_out[27]}]  \
  [get_pins {u_dsp/data_out[28]}]  \
  [get_pins {u_dsp/data_out[29]}]  \
  [get_pins {u_dsp/data_out[30]}]  \
  [get_pins {u_dsp/data_out[31]}]  \
  [get_pins u_dsp/data_in_valid]  \
  [get_pins {u_dsp/data_in[0]}]  \
  [get_pins {u_dsp/data_in[1]}]  \
  [get_pins {u_dsp/data_in[2]}]  \
  [get_pins {u_dsp/data_in[3]}]  \
  [get_pins {u_dsp/data_in[4]}]  \
  [get_pins {u_dsp/data_in[5]}]  \
  [get_pins {u_dsp/data_in[6]}]  \
  [get_pins {u_dsp/data_in[7]}]  \
  [get_pins {u_dsp/data_in[8]}]  \
  [get_pins {u_dsp/data_in[9]}]  \
  [get_pins {u_dsp/data_in[10]}]  \
  [get_pins {u_dsp/data_in[11]}]  \
  [get_pins {u_dsp/data_in[12]}]  \
  [get_pins {u_dsp/data_in[13]}]  \
  [get_pins {u_dsp/data_in[14]}]  \
  [get_pins {u_dsp/data_in[15]}]  \
  [get_pins {u_dsp/data_in[16]}]  \
  [get_pins {u_dsp/data_in[17]}]  \
  [get_pins {u_dsp/data_in[18]}]  \
  [get_pins {u_dsp/data_in[19]}]  \
  [get_pins {u_dsp/data_in[20]}]  \
  [get_pins {u_dsp/data_in[21]}]  \
  [get_pins {u_dsp/data_in[22]}]  \
  [get_pins {u_dsp/data_in[23]}]  \
  [get_pins {u_dsp/data_in[24]}]  \
  [get_pins {u_dsp/data_in[25]}]  \
  [get_pins {u_dsp/data_in[26]}]  \
  [get_pins {u_dsp/data_in[27]}]  \
  [get_pins {u_dsp/data_in[28]}]  \
  [get_pins {u_dsp/data_in[29]}]  \
  [get_pins {u_dsp/data_in[30]}]  \
  [get_pins {u_dsp/data_in[31]}]  \
  [get_pins u_dsp/enable]  \
  [get_pins u_dsp/rst_n]  \
  [get_pins u_dsp/clk] ]
set_clock_groups -name "clock_groups_clk_main_to_clk_32k" -asynchronous -group [get_clocks clk_main] -group [get_clocks clk_32k]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports rst_n]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports pwr_cpu_on]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports pwr_dsp_on]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports sleep_mode]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[31]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[30]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[29]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[28]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[27]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[26]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[25]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[24]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[23]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[22]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[21]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[20]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[19]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[18]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[17]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[16]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[15]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[14]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[13]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[12]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[11]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[10]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[9]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[8]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[7]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[6]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[5]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[4]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[3]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[2]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[1]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_in[0]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[31]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[30]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[29]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[28]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[27]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[26]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[25]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[24]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[23]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[22]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[21]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[20]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[19]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[18]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[17]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[16]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[15]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[14]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[13]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[12]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[11]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[10]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[9]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[8]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[7]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[6]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[5]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[4]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[3]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[2]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[1]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_rdata[0]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports rst_n]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports pwr_cpu_on]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports pwr_dsp_on]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports sleep_mode]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[31]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[30]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[29]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[28]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[27]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[26]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[25]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[24]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[23]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[22]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[21]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[20]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[19]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[18]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[17]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[16]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[15]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[14]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[13]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[12]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[11]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[10]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[9]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[8]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[7]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[6]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[5]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[4]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[3]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[2]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[1]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_in[0]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[31]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[30]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[29]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[28]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[27]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[26]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[25]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[24]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[23]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[22]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[21]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[20]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[19]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[18]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[17]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[16]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[15]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[14]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[13]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[12]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[11]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[10]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[9]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[8]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[7]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[6]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[5]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[4]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[3]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[2]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[1]}]
set_input_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_rdata[0]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports cpu_iso_en]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports dsp_iso_en]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports cpu_save]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports cpu_restore]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports dsp_save]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports dsp_restore]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[31]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[30]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[29]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[28]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[27]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[26]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[25]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[24]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[23]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[22]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[21]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[20]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[19]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[18]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[17]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[16]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[15]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[14]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[13]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[12]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[11]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[10]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[9]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[8]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[7]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[6]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[5]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[4]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[3]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[2]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[1]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {gpio_out[0]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[31]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[30]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[29]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[28]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[27]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[26]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[25]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[24]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[23]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[22]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[21]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[20]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[19]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[18]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[17]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[16]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[15]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[14]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[13]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[12]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[11]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[10]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[9]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[8]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[7]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[6]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[5]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[4]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[3]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[2]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[1]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_addr[0]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[31]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[30]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[29]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[28]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[27]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[26]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[25]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[24]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[23]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[22]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[21]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[20]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[19]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[18]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[17]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[16]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[15]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[14]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[13]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[12]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[11]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[10]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[9]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[8]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[7]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[6]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[5]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[4]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[3]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[2]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[1]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports {mem_wdata[0]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports mem_we]
set_output_delay -clock [get_clocks clk_main] -add_delay -max 2.0 [get_ports mem_re]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports cpu_iso_en]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports dsp_iso_en]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports cpu_save]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports cpu_restore]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports dsp_save]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports dsp_restore]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[31]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[30]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[29]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[28]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[27]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[26]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[25]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[24]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[23]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[22]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[21]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[20]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[19]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[18]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[17]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[16]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[15]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[14]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[13]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[12]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[11]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[10]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[9]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[8]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[7]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[6]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[5]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[4]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[3]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[2]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[1]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {gpio_out[0]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[31]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[30]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[29]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[28]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[27]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[26]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[25]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[24]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[23]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[22]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[21]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[20]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[19]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[18]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[17]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[16]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[15]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[14]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[13]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[12]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[11]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[10]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[9]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[8]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[7]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[6]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[5]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[4]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[3]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[2]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[1]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_addr[0]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[31]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[30]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[29]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[28]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[27]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[26]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[25]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[24]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[23]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[22]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[21]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[20]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[19]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[18]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[17]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[16]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[15]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[14]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[13]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[12]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[11]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[10]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[9]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[8]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[7]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[6]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[5]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[4]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[3]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[2]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[1]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports {mem_wdata[0]}]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports mem_we]
set_output_delay -clock [get_clocks clk_main] -add_delay -min 0.5 [get_ports mem_re]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports clk_main]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports clk_32k]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports rst_n]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports pwr_cpu_on]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports pwr_dsp_on]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports sleep_mode]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[31]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[30]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[29]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[28]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[27]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[26]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[25]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[24]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[23]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[22]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[21]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[20]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[19]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[18]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[17]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[16]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[15]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[14]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[13]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[12]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[11]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[10]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[9]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[8]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[7]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[6]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[5]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[4]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[3]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[2]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[1]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {gpio_in[0]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[31]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[30]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[29]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[28]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[27]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[26]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[25]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[24]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[23]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[22]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[21]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[20]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[19]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[18]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[17]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[16]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[15]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[14]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[13]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[12]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[11]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[10]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[9]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[8]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[7]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[6]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[5]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[4]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[3]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[2]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[1]}]
set_driving_cell -lib_cell BUF_X1 -library nangate45_0p8v -pin "Z" [get_ports {mem_rdata[0]}]
set_wire_load_mode "enclosed"
