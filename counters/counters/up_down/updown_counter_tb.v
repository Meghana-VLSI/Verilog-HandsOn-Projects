`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2025 19:21:19
// Design Name: 
// Module Name: updown_counter_tb
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

module updown_counter_tb;

    reg clk,u_d;
    reg [3:0] N;
    wire [3:0] a;

  updown_counter uut(a, clk, N,u_d);

    initial 
    begin
        clk = 0;
        u_d=1;
        N   = 4'b1011;    // N = 11 
    #5;
    end

    always #2 clk = ~clk;
    always #45 u_d=~u_d;
endmodule
