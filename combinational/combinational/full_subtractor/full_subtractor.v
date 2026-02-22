`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 18:40:28
// Design Name: 
// Module Name: full_subtractor
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

// gate-level modeling //
module full_subtractor(a,b,bin,d,bout);
input a,b,bin;
output d,bout;
wire p,q,r,s;
xor g1(d,a,b,bin);
not g2(s,a);
and g3(p,s,b);
and g4(q,b,bin);
and g5(r,s,bin);
or g6(bout,p,q,r);
endmodule
