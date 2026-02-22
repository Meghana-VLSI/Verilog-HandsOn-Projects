`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 18:33:47
// Design Name: 
// Module Name: half_subtractor_tb
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
module half_subtractor_tb;
reg a,bin;
wire d,bout;
half_subtractor uut(a,bin,d,bout);
initial begin
a=0;bin=0;#10;
a=0;bin=1;#10;
a=1;bin=0;#10;
a=1;bin=1;#10;
end
endmodule
