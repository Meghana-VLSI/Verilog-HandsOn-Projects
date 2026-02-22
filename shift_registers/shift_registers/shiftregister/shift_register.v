`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2025 18:50:25
// Design Name: 
// Module Name: shift_register
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

// Shift Register 

module shift_register (a, clk, r_l);
  input clk, r_l;         
  output reg [7:0] a;   
  
  initial a = 8'h01;      

  always @(negedge clk)
  begin
    if (r_l)
      a = {1'b0, a[7:1]};     // Right shift
    else
      a = {a[6:0], 1'b0};     // Left shift
  end
endmodule
