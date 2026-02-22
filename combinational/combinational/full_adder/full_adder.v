`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 22:32:23
// Design Name: 
// Module Name: full_adder
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


module full_adder(sum,carry,a,b,cin);
input a,b,cin;
output sum,carry;
wire p,q,r;
xor g1(sum,a,b,cin);
and g2(p,a,b);
and g3(q,b,cin);
and g4(r,a,cin);
or g5(carry,p,q,r);
endmodule
