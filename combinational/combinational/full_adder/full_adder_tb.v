`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 22:37:19
// Design Name: 
// Module Name: full_adder_tb
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

//testbench//
module full_adder_tb;
reg a,b,cin;
wire sum,carry;
full_adder uut(sum,carry,a,b,cin);
initial begin
a=0;b=0;cin=0;#5;
a=0;b=0;cin=1;#5;
a=0;b=1;cin=0;#5;
a=0;b=1;cin=1;#5;
a=1;b=0;cin=0;#5;
a=1;b=0;cin=1;#5;
a=1;b=1;cin=0;#5;
a=1;b=1;cin=1;#5;
end
endmodule
