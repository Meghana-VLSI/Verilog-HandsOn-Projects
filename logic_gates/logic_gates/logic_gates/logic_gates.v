`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 20:05:56
// Design Name: 
// Module Name: logic_gates
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

//Gate Level Modeling//
module logic_gates(
input a,b,
output c_and,c_or,c_nand,c_nor,c_xor,c_xnor,c_not);
and g1(c_and,a,b);
or g2(c_or,a,b);
nand g3(c_nand,a,b);
nor g4(c_nor,a,b);
xor g5(c_xor,a,b);
xnor g6(c_xnor,a,b);
not g7(c_not,a);
endmodule

