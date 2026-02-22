`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2025 22:19:40
// Design Name: 
// Module Name: mux4_1_tb
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

module mux4_1_tb;
reg i0,i1,i2,i3;
reg s1,s0;
wire y;
mux4_1 uut(y,i0,i1,i2,i3,s1,s0);
initial begin
i0=0;i1=1;i2=0;i3=1;
s1=0;s0=0;#10;
s1=0;s0=1;#10;
s1=1;s0=0;#10;
s1=1;s0=1;#10;
end
endmodule

