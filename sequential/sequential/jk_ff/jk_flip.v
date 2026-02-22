`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 20:24:19
// Design Name: 
// Module Name: jk_flip
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


module jk_flip(q,q1,j,k,clk,reset);
output q,q1;
input j,k,clk,reset;
reg q,q1;
initial begin q=1'b0;q1=1'b1; end
always @(posedge clk or posedge reset)
begin
if (reset)
q<=0;
else begin
case({j,k})
2'b00:begin q<=q;q1<=q1; end
2'b01:begin q<=1'b0;q1<=1'b1; end
2'b10:begin q<=1'b1;q1<=1'b0; end
2'b11:begin q<=~q;q1<=~q1; end
endcase
end
end
endmodule
