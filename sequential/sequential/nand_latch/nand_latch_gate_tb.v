`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2025 17:50:08
// Design Name: 
// Module Name: nand_latch_gate_tb
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


module nand_latch_gate_tb;
reg set,reset;
wire q,qb;
nand_latch_gate uut(q,qb,set,reset);
initial begin 
set=1;
reset=0;
end
always
begin
set=0;reset=0;#10;
set=0;reset=1;#10;
set=1;reset=0;#10;
set=1;reset=1;#10;
end
endmodule
