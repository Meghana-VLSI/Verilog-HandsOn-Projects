`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2025 17:48:25
// Design Name: 
// Module Name: nand_latch_gate
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


module nand_latch_gate(q,qb,set,reset);
input set,reset;
output q,qb;
nand g1(q,qb,set);
nand g2(qb,q,reset);
endmodule
