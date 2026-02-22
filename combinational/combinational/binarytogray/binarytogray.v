`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2025 22:33:21
// Design Name: 
// Module Name: binarytogray
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

// dataflow modeling //
module binarytogray(
input[3:0]bin,
output[3:0]g
);
assign g[3]=bin[3];
assign g[2]=bin[3]^bin[2];
assign g[1]=bin[2]^bin[1];
assign g[0]=bin[1]^bin[0];
endmodule
