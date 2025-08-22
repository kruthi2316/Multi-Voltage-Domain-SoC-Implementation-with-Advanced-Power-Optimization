# Multi-Voltage Domain System-on-Chip (MVC-SoC) Implementation with Advanced Power Optimization.

## 📋 Project Overview

This repository contains the complete implementation of a **Multi-Voltage Domain System-on-Chip (MVC-SoC)** featuring advanced power management techniques. The project demonstrates a full RTL-to-GDSII flow using industry-standard tools and methodologies, achieving significant power optimization through voltage domain partitioning.

### 🎯 Key Achievements

- **40% Power Reduction** compared to single-voltage implementation
- **Three Voltage Domains**: 0.8V (Always-On), 0.9V (DSP), 1.2V (CPU)
- **Zero DRC Violations** in final layout
- **Optimized Die Size**: Reduced from 160×160 μm to 41×41 μm
- **Complete Tool Flow**: RTL → Synthesis → Placement → Routing → GDSII

## 🏗️ Architecture

### System Components

| Domain | Voltage | Function | Power Strategy | Area (μm²) |
|--------|---------|----------|----------------|------------|
| **AON** | 0.8V | Always-On (RTC, GPIO, Wake) | Always powered | 156.3 |
| **DSP** | 0.9V | Digital Signal Processing | Power gatable | 156.3 |
| **CPU** | 1.2V | High-Performance Computing | Power gatable | 312.5 |

### Power Management Features

- ✅ **Power Gating**: Selective shutdown of CPU and DSP domains
- ✅ **Isolation Cells**: Signal protection during power transitions
- ✅ **Level Shifters**: Voltage crossing management (0.8V ↔ 0.9V ↔ 1.2V)
- ✅ **Retention Registers**: State preservation during power-down
- ✅ **IEEE 1801 UPF**: Industry-standard power intent specification

## 🛠️ Technology Stack

### EDA Tools
- **Synthesis**: Cadence Genus 19.13-s073_1
- **Physical Design**: Cadence Innovus 19.11-s128_1
- **Technology Library**: NanGate 45nm Open Cell Library v1.3

### Design Languages
- **RTL**: Verilog
- **Power Intent**: IEEE 1801 UPF 2.1
- **Constraints**: Synopsys Design Constraints (SDC)

## 📊 Implementation Results

### Area Metrics
Total Instances:     5,714 (including 1,638 CTS buffers)
Logic Gates:         172 cells
Total Core Area:     625.0 μm²
Die Size:           41.0 × 41.0 μm
Utilization:        21.23%

### Power Analysis
Total Power:        1.282 mW
├── Internal:       1.212 mW (94.54%)
├── Switching:      0.031 mW (2.44%)
└── Leakage:        0.039 mW (3.01%)
Clock Power:        1.040 mW (81.12% of total)

### Timing Performance
Setup Slack:        8000 ps (positive)
Hold Slack:         All paths met
Max Frequency:      100 MHz (main clock)
Clock Uncertainty:  100 ps

## 📁 Repository Structure
mvc_soc/
├── rtl/                      # RTL source files
│   └── mvc_soc.v            # Top-level design with power annotations
├── constraints/              # Design constraints
│   ├── mvc_soc.sdc          # Timing constraints
│   └── mvc_soc.upf          # Power intent specification
├── libs/                     # Technology libraries
│   ├── stdcell/             # Standard cell libraries
│   ├── multi_vdd/           # Voltage-specific libraries
│   │   ├── 0p8v/           # 0.8V library
│   │   ├── 0p9v/           # 0.9V library
│   │   └── 1p2v/           # 1.2V library
│   └── special_cells/       # Power management cells
├── scripts/                  # Implementation scripts
│   ├── synthesis/           # Synthesis TCL scripts
│   │   └── mvc_soc_synthesis.tcl
│   └── pnr/                 # Place and route scripts
│       └── mvc_soc_pnr.tcl
├── work/                     # Generated outputs
│   ├── synthesis/           # Synthesis results
│   └── pnr/                 # Physical design outputs
│       ├── reports/         # Timing, power, area reports
│       └── outputs/         # Final GDSII, DEF, netlist
└── docs/                     # Documentation
└── MVC_SoC_Report.pdf   # Complete project report

