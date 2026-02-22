`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 22:16:30
// Design Name: 
// Module Name: demux1_tb
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
module demux1_tb;
reg d;
reg[2:0]s;
wire y0,y1,y2,y3,y4,y5,y6,y7;
reg[2:0]count=3'd0;
demux1 uut(.d(d),.s(s),.y0(y0),.y1(y1),.y2(y2),.y3(y3),.y4(y4),.y5(y5),.y6(y6),.y7(y7));
initial begin
d=1;
s=3'b000;#100;
s=3'b001;#100;
s=3'b010;#100;
s=3'b011;#100;
s=3'b100;#100;
s=3'b101;#100;
s=3'b110;#100;
s=3'b111;#100;
for(count=0;count<8;count=count+1)
begin
s=count;#20;
end
$finish;
end
endmodule
