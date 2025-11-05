`timescale 1ns / 1ps
module top(
    input clk_100mhz,     // Nexys A7 clock
    input btn_reset,      // Reset button
    output [15:0] LED     // LEDs to see CPU output
);

    wire [15:0] pc_out;
    wire [15:0] alu_result;

    // Instantiate your CPU
    mips_16 cpu(
        .clk(clk_100mhz),
        .reset(btn_reset),
        .pc_out(pc_out),
        .alu_result(alu_result)
    );

    // Show ALU result on LEDs
    assign LED = alu_result;

endmodule
