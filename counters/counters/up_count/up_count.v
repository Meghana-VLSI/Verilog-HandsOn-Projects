`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2025 19:01:28
// Design Name: 
// Module Name: up_count
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
///////////////////////////////////////////////////////////////////////////////

module up_count(a, clk, N);
    input clk;
    input [3:0] N;
    output reg [3:0] a;

    initial a = 4'b0000;

    always @(negedge clk)
    begin
        if (a == N)
            a <= 4'b0000;
        else
            a <= a + 1'b1;
    end
endmodule
