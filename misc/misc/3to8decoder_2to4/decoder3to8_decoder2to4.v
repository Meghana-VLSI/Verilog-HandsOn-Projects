`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2025 16:17:28
// Design Name: 
// Module Name: decoder3to8_decoder2to4
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


module decoder3to8_decoder2to4(y0,y1,y2,y3,y4,y5,y6,y7,a,b,c);
input a,b,c;
output y0,y1,y2,y3,y4,y5,y6,y7;
decoder2to4 u0 (y0,y1,y2,y3,b,c,~a);
decoder2to4 u1 (y4,y5,y6,y7,b,c,a);
endmodule
