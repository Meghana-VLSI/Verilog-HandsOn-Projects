`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2025 19:13:52
// Design Name: 
// Module Name: up_count_tb
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

module up_count_tb;

    reg clk;
    reg [3:0] N;
    wire [3:0] a;

  up_count uut(a, clk, N);

    initial 
    begin
        clk = 0;
        N   = 4'b1011;    // N = 11 
    #5;
    end

    always #2 clk = ~clk;

endmodule

