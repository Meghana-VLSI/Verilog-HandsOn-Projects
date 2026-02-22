`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2025 16:13:36
// Design Name: 
// Module Name: decoder2to4
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


module decoder2to4(y0,y1,y2,y3,a,b,en);
input a,b,en;
output y0,y1,y2,y3;
wire p,q;
and g1(y0,p,q,en);
and g2(y1,p,b,en);
and g3(y2,a,q,en);
and g4(y3,a,b,en);
not g5(p,a);
not g6(q,b);
endmodule
