`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2025 21:55:54
// Design Name: 
// Module Name: mux_tb
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

// testbench //
module mux_tb;
reg[2:0]s;
reg[7:0]i0,i1,i2,i3,i4,i5,i6,i7;
wire[7:0]y;
reg[2:0]count=3'd0;
mux uut(.y(y),.s(s),.i0(i0),.i1(i1),.i2(i2),.i3(i3),.i4(i4),.i5(i5),.i6(i6),.i7(i7));
initial begin
i0=8'd0;i1=8'd1;i2=8'd2;i3=8'd3;i4=8'd4;i5=8'd5;i6=8'd6;i7=8'd7;
for(count=0;count<8;count=count+1)
begin
s=count;
#20;
end
$finish;
end
endmodule
