`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2025 17:17:43
// Design Name: 
// Module Name: jk_using_t_tb
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

module jk_using_t_tb;
reg J, K, clk, rst;
wire Q;
wire Qb;
 jk_using_t dut(J, K, clk, rst, Q,Qb);

    // Clock
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1; J=0; K=0;
        #10 rst = 0;

        #10 J=1; K=0;
        #10 J=0; K=1;
        #10 J=1; K=1;
        #10 J=0; K=0;
        #10 rst = 1;    
        #10 rst = 0;
    end
endmodule