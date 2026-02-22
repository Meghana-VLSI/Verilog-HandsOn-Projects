`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2025 18:49:20
// Design Name: 
// Module Name: down_count
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

module down_count(a, clk, N);
    input clk;
    input [3:0] N;
    output reg [3:0] a;

    initial a = 4'b0000;

    always @(negedge clk)
    begin
        if (a == 4'b0000)
            a <= N;
        else
            a <= a - 1'b1;
    end
endmodule
