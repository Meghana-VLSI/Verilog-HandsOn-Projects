`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 20:48:22
// Design Name: 
// Module Name: t_flip_tb
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


module t_flip_tb;
reg t,c,rst;
wire q,q1;
t_flip dut(.q(q),.q1(q1),.t(t),.c(c),.rst(rst));
initial begin 
c=0;
forever #10 c=~c;
end
initial begin
rst=1;#10;
rst=0;
t=1;#10;
t=0;#10;
t=1;#100;
t=0;#10;
end
endmodule
