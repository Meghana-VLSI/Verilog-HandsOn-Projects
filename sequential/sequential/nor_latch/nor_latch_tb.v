`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2025 16:46:27
// Design Name: 
// Module Name: nor_latch_tb
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

module nor_latch_tb;
reg set,reset;
wire q,qb;
nor_latch uut(q,qb,set,reset);
initial begin 
set=0;
reset=0;
end
always
begin
reset=0;set=0;
reset=0;set=1;#10;
reset=1;set=0;#10;
reset=1;set=1;#10;
end
endmodule
