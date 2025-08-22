# Script to generate multi-voltage libraries from base NangateOpenCell library
# This creates voltage-scaled versions for 0.8V, 0.9V, and 1.2V domains

puts "=========================================="
puts "Multi-Voltage Library Generation Script"
puts "=========================================="

# Base library information 
set BASE_LIB_DIR "libs/stdcell/nangate45/lib"
set BASE_LEF_DIR "libs/stdcell/nangate45/lef"
set BASE_LIB "NangateOpenCellLibrary_typical.lib"
set BASE_LEF "NangateOpenCellLibrary.macro.lef"

# Target voltages and scaling factors
set VOLTAGE_LIST {0.8 0.9 1.2}
set BASE_VOLTAGE 1.1

# Output directories
set OUTPUT_DIR "libs/multi_vdd"

# Create output directory structure
puts "Creating directory structure..."
foreach voltage $VOLTAGE_LIST {
    set volt_str [string map {. p} ${voltage}]v
    exec mkdir -p ${OUTPUT_DIR}/${volt_str}/lib
    exec mkdir -p ${OUTPUT_DIR}/${volt_str}/lef
    exec mkdir -p ${OUTPUT_DIR}/${volt_str}/db
}

# Voltage scaling functions
proc voltage_scale_delay {base_delay old_volt new_volt} {
    set vth 0.25  ;# Approximate threshold voltage
    set scale_factor [expr ($old_volt - $vth) / ($new_volt - $vth)]
    return [expr $base_delay * $scale_factor]
}

proc voltage_scale_power {base_power old_volt new_volt} {
    # Dynamic power scales as V²f, leakage scales exponentially
    # Simplified: P ∝ V²
    set scale_factor [expr ($new_volt * $new_volt) / ($old_volt * $old_volt)]
    return [expr $base_power * $scale_factor]
}

proc voltage_scale_current {base_current old_volt new_volt} {
    # Current scales linearly with voltage for first order
    set scale_factor [expr $new_volt / $old_volt]
    return [expr $base_current * $scale_factor]
}

# Function to generate voltage-specific library
proc generate_voltage_library {base_lib_file target_voltage} {
    global BASE_VOLTAGE OUTPUT_DIR
    
    set volt_str [string map {. p} ${target_voltage}]v
    set output_file "${OUTPUT_DIR}/${volt_str}/lib/nangate45_${volt_str}.lib"
    
    puts "Generating ${target_voltage}V library: $output_file"
    
    # Read base library
    set base_fp [open $base_lib_file r]
    set base_content [read $base_fp]
    close $base_fp
    
    # Create output file
    set out_fp [open $output_file w]
    
    # Process library line by line
    set lines [split $base_content "\n"]
    set in_cell 0
    set cell_name ""
    
    foreach line $lines {
        # Update library header
        if {[regexp {library\s*\(\s*(\w+)\s*\)} $line -> lib_name]} {
            set new_lib_name "nangate45_${volt_str}"
            regsub $lib_name $line $new_lib_name line
            puts $out_fp $line
            continue
        }
        
        # Update nominal voltage
        if {[regexp {nom_voltage\s*:\s*([\d\.]+)} $line -> voltage]} {
            regsub $voltage $line $target_voltage line
            puts $out_fp $line
            continue
        }
        
        # Update operating conditions
        if {[regexp {voltage\s*:\s*([\d\.]+)} $line -> voltage] && $voltage == $BASE_VOLTAGE} {
            regsub $voltage $line $target_voltage line
            puts $out_fp $line
            continue
        }
        
        # Track cell boundaries
        if {[regexp {cell\s*\(\s*(\w+)\s*\)} $line -> name]} {
            set in_cell 1
            set cell_name $name
            puts $out_fp $line
            continue
        }
        
        if {$in_cell && [regexp {^\s*\}\s*$} $line]} {
            set in_cell 0
            set cell_name ""
            puts $out_fp $line
            continue
        }
        
        # Scale timing values
        if {[regexp {cell_rise|cell_fall|rise_transition|fall_transition} $line]} {
            # Extract and scale timing values in lookup tables
            if {[regexp {values\s*\(\s*"([^"]+)"\s*\)} $line -> values]} {
                set scaled_values ""
                set value_rows [split $values ","]
                foreach row $value_rows {
                    set row [string trim $row]
                    if {[regexp {^"?([^"]*)"?$} $row -> row_data]} {
                        set new_row_values ""
                        set row_values [split $row_data ", "]
                        foreach val $row_values {
                            set val [string trim $val]
                            if {[string is double $val]} {
                                set scaled_val [voltage_scale_delay $val $BASE_VOLTAGE $target_voltage]
                                lappend new_row_values [format "%.3f" $scaled_val]
                            } else {
                                lappend new_row_values $val
                            }
                        }
                        if {$scaled_values != ""} {
                            append scaled_values ", \\\n                           "
                        }
                        append scaled_values "\"[join $new_row_values {, }]\""
                    }
                }
                regsub $values $line $scaled_values line
            }
        }
        
        # Scale setup/hold constraints
        if {[regexp {rise_constraint|fall_constraint} $line]} {
            if {[regexp {values\s*\(\s*"([^"]+)"\s*\)} $line -> values]} {
                set scaled_values ""
                set value_rows [split $values ","]
                foreach row $value_rows {
                    set row [string trim $row]
                    if {[regexp {^"?([^"]*)"?$} $row -> row_data]} {
                        set new_row_values ""
                        set row_values [split $row_data ", "]
                        foreach val $row_values {
                            set val [string trim $val]
                            if {[string is double $val]} {
                                set scaled_val [voltage_scale_delay $val $BASE_VOLTAGE $target_voltage]
                                lappend new_row_values [format "%.3f" $scaled_val]
                            } else {
                                lappend new_row_values $val
                            }
                        }
                        if {$scaled_values != ""} {
                            append scaled_values ", \\\n                           "
                        }
                        append scaled_values "\"[join $new_row_values {, }]\""
                    }
                }
                regsub $values $line $scaled_values line
            }
        }
        
        # Scale scalar timing values
        if {[regexp {(\w*delay\w*|setup|hold)\s*:\s*([\d\.]+)} $line -> param value]} {
            if {[string is double $value]} {
                set scaled_value [voltage_scale_delay $value $BASE_VOLTAGE $target_voltage]
                regsub $value $line [format "%.3f" $scaled_value] line
            }
        }
        
        # Scale power values
        if {[regexp {(cell_leakage_power|leakage_power)\s*:\s*([\d\.]+)} $line -> param value]} {
            if {[string is double $value]} {
                set scaled_value [voltage_scale_power $value $BASE_VOLTAGE $target_voltage]
                regsub $value $line [format "%.2f" $scaled_value] line
            }
        }
        
        # Scale current values
        if {[regexp {(max_transition|max_capacitance)\s*:\s*([\d\.]+)} $line -> param value]} {
            if {[string is double $value]} {
                set scaled_value [voltage_scale_current $value $BASE_VOLTAGE $target_voltage]
                regsub $value $line [format "%.5f" $scaled_value] line
            }
        }
        
        puts $out_fp $line
    }
    close $out_fp
    puts "Generated library: $output_file"
}

# Function to generate voltage-specific LEF
proc generate_voltage_lef {base_lef_file target_voltage} {
    global OUTPUT_DIR
    
    set volt_str [string map {. p} ${target_voltage}]v
    set output_file "${OUTPUT_DIR}/${volt_str}/lef/nangate45_${volt_str}.lef"
    
    puts "Generating ${target_voltage}V LEF: $output_file"
    
    # Read base LEF
    set base_fp [open $base_lef_file r]
    set base_content [read $base_fp]
    close $base_fp
    
    # Create output file
    set out_fp [open $output_file w]
    
    # Process LEF content
    set lines [split $base_content "\n"]
    
    foreach line $lines {
        # Update library name in LEF
        if {[regexp {LIBRARY\s+(\w+)} $line -> lib_name]} {
            regsub $lib_name $line "nangate45_${volt_str}" line
        }
        
        # Add voltage-specific metadata
        if {[regexp {VERSION\s+[\d\.]+} $line]} {
            puts $out_fp $line
            puts $out_fp ""
            puts $out_fp "# Voltage-specific LEF for ${target_voltage}V domain"
            puts $out_fp "# Generated from base NangateOpenCell library"
            puts $out_fp ""
            continue
        }
        
        puts $out_fp $line
    }
    
    close $out_fp
    puts "Generated LEF: $output_file"
}

# Main generation process
puts "\nGenerating multi-voltage libraries..."

foreach voltage $VOLTAGE_LIST {
    puts "\n--- Processing ${voltage}V domain ---"
    
    # Generate library
    generate_voltage_library "${BASE_LIB_DIR}/${BASE_LIB}" $voltage
    
    # Generate LEF
    generate_voltage_lef "${BASE_LEF_DIR}/${BASE_LEF}" $voltage
    
    puts "Completed ${voltage}V domain"
}

puts "\n=========================================="
puts "Multi-voltage library generation complete!"
puts "=========================================="

# Generate summary report
puts "\nGenerated libraries:"
foreach voltage $VOLTAGE_LIST {
    set volt_str [string map {. p} ${voltage}]v
    puts "  ${voltage}V: libs/multi_vdd/${volt_str}/"
    puts "    - lib/nangate45_${volt_str}.lib"
    puts "    - lef/nangate45_${volt_str}.lef"
}

puts "\nNext steps:"
puts "1. Verify generated libraries with library compiler"
puts "2. Run characterization if needed"
puts "3. Update synthesis/P&R scripts to use new libraries"
puts "4. Validate timing with STA tools"
