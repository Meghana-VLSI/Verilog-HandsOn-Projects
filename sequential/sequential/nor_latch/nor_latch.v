`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2025 16:44:52
// Design Name: 
// Module Name: nor_latch
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

module nor_latch(q,qb,set,reset);
input set,reset;
output q,qb;
nor g1(q,qb,reset);
nor g2(qb,q,set);
endmodule

