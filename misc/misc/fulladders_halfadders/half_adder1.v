`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2025 21:29:38
// Design Name: 
// Module Name: half_adder1
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
// half adder //
module half_adder(sum,carry,a,b);
input a,b;
output sum,carry;
assign sum=a^b;
assign carry=a&b;
endmodule

