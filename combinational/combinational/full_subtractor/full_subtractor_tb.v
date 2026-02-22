`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 18:49:29
// Design Name: 
// Module Name: full_subtractor_tb
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
module full_subtractor_tb;
reg a,b,bin;
wire d,bout;
full_subtractor uut(a,b,bin,d,bout);
initial begin
a=0;b=0;bin=0;#10;
a=0;b=0;bin=1;#10;
a=0;b=1;bin=0;#10;
a=0;b=1;bin=1;#10;
a=1;b=0;bin=0;#10;
a=1;b=0;bin=1;#10;
a=1;b=1;bin=0;#10;
a=1;b=1;bin=1;#10;
end
endmodule
