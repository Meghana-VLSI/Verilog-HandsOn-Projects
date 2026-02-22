`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2025 22:35:21
// Design Name: 
// Module Name: binarytogray_tb
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
module binarytogray_tb;
reg[3:0]bin;
wire[3:0]g;
binarytogray uut(bin,g);
initial
begin
bin=4'b0000;#10;
bin=4'b0001;#10;
bin=4'b0010;#10;
bin=4'b0011;#10;
bin=4'b0100;#10;
bin=4'b0101;#10;
bin=4'b0110;#10;
bin=4'b0111;#10;
bin=4'b1000;#10;
bin=4'b1001;#10;
bin=4'b1010;#10;
bin=4'b1011;#10;
bin=4'b1100;#10;
bin=4'b1101;#10;
bin=4'b1110;#10;
bin=4'b1111;#10;
#100;
end
endmodule
