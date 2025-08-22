//-----------------------------------------------------------------------------
// CPU Block Module 
//-----------------------------------------------------------------------------
module cpu_core (
    input wire clk,
    input wire rst_n,
    input wire enable,
    output wire [31:0] data_out,
    output wire data_out_valid,
    input wire [31:0] data_in,
    input wire data_in_valid,
    output wire [7:0] ao_cmd,
    input wire [7:0] ao_status,
    output wire [31:0] mem_addr,
    output wire [31:0] mem_wdata,
    input wire [31:0] mem_rdata,
    output wire mem_we,
    output wire mem_re
);

    assign data_out = enable ? (data_in + 32'h1) : 32'h0;
    assign data_out_valid = enable & data_in_valid;
    assign ao_cmd = ao_status + 8'h1;
    assign mem_addr = data_in;
    assign mem_wdata = data_out;
    assign mem_we = enable & data_in_valid;
    assign mem_re = enable;

endmodule

//-----------------------------------------------------------------------------
// DSP Block Module 
//-----------------------------------------------------------------------------
module dsp_block (
    input wire clk,
    input wire rst_n,
    input wire enable,
    input wire [31:0] data_in,
    input wire data_in_valid,
    output wire [31:0] data_out,
    output wire data_out_valid
);

    // Simple DSP operation - multiply by 2
    assign data_out = enable ? (data_in << 1) : 32'h0;
    assign data_out_valid = enable & data_in_valid;

endmodule

//-----------------------------------------------------------------------------
// Always-On Domain Module 
//-----------------------------------------------------------------------------
module always_on_domain (
    input wire clk_32k,
    input wire rst_n,
    input wire sleep_mode,
    input wire [7:0] cpu_cmd,
    output wire [7:0] cpu_status,
    input wire [31:0] gpio_in,
    output wire [31:0] gpio_out
);

    // Simple combinational processing
    assign cpu_status = cpu_cmd + 8'h1;
    assign gpio_out = gpio_in ^ 32'h55555555;  // XOR pattern

endmodule

//-----------------------------------------------------------------------------
// Power Controller Module 
//-----------------------------------------------------------------------------
module power_controller (
    input wire clk,
    input wire rst_n,
    input wire pwr_cpu_on,
    input wire pwr_dsp_on,
    input wire sleep_mode,
    output wire cpu_iso_en,
    output wire dsp_iso_en,
    output wire cpu_save,
    output wire cpu_restore,
    output wire dsp_save,
    output wire dsp_restore
);

    // Simple power control logic
    assign cpu_iso_en = ~pwr_cpu_on;
    assign dsp_iso_en = ~pwr_dsp_on;
    assign cpu_save = ~pwr_cpu_on & ~sleep_mode;
    assign cpu_restore = pwr_cpu_on & ~sleep_mode;
    assign dsp_save = ~pwr_dsp_on & ~sleep_mode;
    assign dsp_restore = pwr_dsp_on & ~sleep_mode;

endmodule

//=============================================================================
// TOP MODULE - Multi-Voltage SoC 
//=============================================================================
module top_soc (
    // Clock and Reset
    input wire clk_main,
    input wire clk_32k,
    input wire rst_n,
    
    // Power Control
    input wire pwr_cpu_on,
    input wire pwr_dsp_on,
    input wire sleep_mode,
    
    // Power Management outputs
    output wire cpu_iso_en,
    output wire dsp_iso_en,
    output wire cpu_save,
    output wire cpu_restore,
    output wire dsp_save,
    output wire dsp_restore,
    
    // External Interface
    input wire [31:0] gpio_in,
    output wire [31:0] gpio_out,
    
    // Memory Interface
    output wire [31:0] mem_addr,
    output wire [31:0] mem_wdata,
    input wire [31:0] mem_rdata,
    output wire mem_we,
    output wire mem_re
);

    // Internal signals
    wire [31:0] cpu_to_dsp_data;
    wire [31:0] dsp_to_cpu_data;
    wire cpu_to_dsp_valid;
    wire dsp_to_cpu_valid;
    wire [7:0] cpu_to_ao_cmd;
    wire [7:0] ao_to_cpu_status;
    
    // CPU Core - 1.2V Domain
    //synthesis translate_off
    //pragma attribute u_cpu power_domain PD_CPU
    //synthesis translate_on
    cpu_core u_cpu (
        .clk(clk_main),
        .rst_n(rst_n),
        .enable(pwr_cpu_on),
        .data_out(cpu_to_dsp_data),
        .data_out_valid(cpu_to_dsp_valid),
        .data_in(dsp_to_cpu_data),
        .data_in_valid(dsp_to_cpu_valid),
        .ao_cmd(cpu_to_ao_cmd),
        .ao_status(ao_to_cpu_status),
        .mem_addr(mem_addr),
        .mem_wdata(mem_wdata),
        .mem_rdata(mem_rdata),
        .mem_we(mem_we),
        .mem_re(mem_re)
    );
    
    // DSP Block - 0.9V Domain
    //synthesis translate_off
    //pragma attribute u_dsp power_domain PD_DSP
    //synthesis translate_on
    dsp_block u_dsp (
        .clk(clk_main),
        .rst_n(rst_n),
        .enable(pwr_dsp_on),
        .data_in(cpu_to_dsp_data),
        .data_in_valid(cpu_to_dsp_valid),
        .data_out(dsp_to_cpu_data),
        .data_out_valid(dsp_to_cpu_valid)
    );
    
    // Always-On Domain - 0.8V Domain
    //synthesis translate_off
    //pragma attribute u_ao power_domain PD_AON
    //pragma attribute u_pwr_ctrl power_domain PD_AON
    //synthesis translate_on
    always_on_domain u_ao (
        .clk_32k(clk_32k),
        .rst_n(rst_n),
        .sleep_mode(sleep_mode),
        .cpu_cmd(cpu_to_ao_cmd),
        .cpu_status(ao_to_cpu_status),
        .gpio_in(gpio_in),
        .gpio_out(gpio_out)
    );
    
    power_controller u_pwr_ctrl (
        .clk(clk_32k),
        .rst_n(rst_n),
        .pwr_cpu_on(pwr_cpu_on),
        .pwr_dsp_on(pwr_dsp_on),
        .sleep_mode(sleep_mode),
        .cpu_iso_en(cpu_iso_en),
        .dsp_iso_en(dsp_iso_en),
        .cpu_save(cpu_save),
        .cpu_restore(cpu_restore),
        .dsp_save(dsp_save),
        .dsp_restore(dsp_restore)
    );

endmodule
