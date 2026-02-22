`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2025 17:35:41
// Design Name: 
// Module Name: sr_using_t_tb
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

module sr_using_t_tb;
    reg S, R, clk, rst;
    wire q, qb;

    sr_using_t dut(S, R, clk, rst, q, qb);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1; S = 0; R = 0;
        #10 rst = 0;

        #10 S = 1; R = 0;   // Set
        #10 S = 0; R = 0;   // Hold
        #10 S = 0; R = 1;   // Reset
        #10 S = 0; R = 0;   // Hold
        #10 S = 1; R = 1;   // Invalid
    end
endmodule