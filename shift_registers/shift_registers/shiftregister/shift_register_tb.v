`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2025 18:52:58
// Design Name: 
// Module Name: shift_register_tb
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

module  shift_register_tb;
  reg clk, r_l;
  wire [7:0] a;

  shift_register DUT(a, clk, r_l);      

  initial
  begin
    clk = 1'b1;
    r_l = 1'b0;   
  end

  // Clock generation
  always #2 clk = ~clk;

  // Change shift direction after 16 time units
  initial #16 r_l = ~r_l;
endmodule
