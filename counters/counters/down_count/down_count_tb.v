`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2025 18:52:10
// Design Name: 
// Module Name: down_count_tb
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

module down_count_tb;

    reg clk;
    reg [3:0] N;
    wire [3:0] a;

  down_count uut(a, clk, N);

    initial 
    begin
        clk = 0;
        N   = 4'b1011; 
    #5;
    end

    always #2 clk = ~clk;

endmodule

