`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2025 17:28:47
// Design Name: 
// Module Name: t_using_d_tb
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

module t_using_d_tb;
    reg t, clk, rst;
    wire q, qb;

    t_using_d dut(t, clk, rst, q, qb);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1; t = 0;
        #10 rst = 0;

        #10 t = 1;
        #10 t = 0;
        #10 t = 1;
        #10 t = 1;
        #10 t = 0;
    end
endmodule
