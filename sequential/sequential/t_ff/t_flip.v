`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 20:44:44
// Design Name: 
// Module Name: t_flip
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


module t_flip(q,q1,t,c,rst);
output q,q1;
input t,c,rst;
reg q,q1;
always @(posedge c or posedge rst)
begin
if (rst) begin
q<=0;
q1<=1; end
else if (t) begin
q<=~q;
q1<=~q1; end
else begin
q<=q;
q1<=q1; end
end
endmodule
