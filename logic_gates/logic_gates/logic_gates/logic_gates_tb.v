`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 20:10:55
// Design Name: 
// Module Name: logic_gates_tb
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

//Testbench//
module logic_gates_tb;
reg a,b;
wire c_and,c_or,c_nand,c_nor,c_xor,c_xnor,c_not;
logic_gates uut(a,b,c_and,c_or,c_nand,c_nor,c_xor,c_xnor,c_not);
initial 
begin
a=1'b0;b=1'b0;#10;
a=1'b0;b=1'b1;#10;
a=1'b1;b=1'b0;#10;
a=1'b1;b=1'b1;#10;
a=1'b1;b=1'bx;#10;
a=1'b0;b=1'bz;
end
endmodule
