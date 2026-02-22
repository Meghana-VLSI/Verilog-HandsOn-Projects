`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2025 21:53:47
// Design Name: 
// Module Name: mux4_1
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

// 4x1 mux using 2x1 mux //
module mux4_1(y,i0,i1,i2,i3,s1,s0);
input i0,i1,i2,i3;
input s1,s0;
output y;
wire p,q;
assign p=i1,q=i0;
mux_2_1 m1(p,i0,i1,s1);
mux_2_1 m2(q,i2,i3,s1);
mux_2_1 m3(y,p,q,s0);
endmodule
