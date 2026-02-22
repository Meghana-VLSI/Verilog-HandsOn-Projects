`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 20:31:08
// Design Name: 
// Module Name: jk_flip_tb
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


module jk_flip_tb;
reg j,k,clk;
wire q,q1;
jk_flip uut(q,q1,j,k,clk);
initial clk=0;
always #10 clk=~clk;
initial begin
j=0; k=0; #30;
j=1; k=1; #50; j=0; k=0; #50;  j=0; k=1; #50;  j=1; k=0; #50;  
j=1; k=1; #50;  
end
endmodule
