`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2025 20:09:16
// Design Name: 
// Module Name: encoder8to3_12_tb
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
module encoder8to3_12_tb;
reg[7:0]Din;
reg En;
wire[2:0]E0;
encoder8to3_12 uut(.E0(E0),.En(En),.Din(Din));
initial
begin
En=1'b1;

Din=8'b00000000;#10;
Din=8'b00000001;#10;
Din=8'b00000010;#10;
Din=8'b00000100;#10;
Din=8'b00001000;#10;
Din=8'b00010000;#10;
Din=8'b00100000;#10;
Din=8'b01000000;#10;
Din=8'b10000000;#10;
end
endmodule
