`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2025 17:50:01
// Design Name: 
// Module Name: jk_using_d_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module jk_using_d_tb;
    reg j, k, clk, rst;
    wire q, qb;

    jk_using_d dut(j, k, clk, rst, q, qb);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1; j = 0; k = 0;
        #10 rst = 0;

        #10 j = 1; k = 0;   // Set
        #10 j = 0; k = 0;   // Hold
        #10 j = 0; k = 1;   // Reset
        #10 j = 1; k = 1;   // Toggle
        #10 j = 0; k = 0;   // Hold
    end
endmodule