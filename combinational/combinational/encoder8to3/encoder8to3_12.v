`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2025 20:06:08
// Design Name: 
// Module Name: encoder8to3_12
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

// behavioral modeling //
module encoder8to3_12(E0,Din,En);
input[7:0]Din;
input En;
output reg [2:0]E0;
always @(*)
begin
if (En)
begin
case(Din)
8'o0:E0=3'b000;
8'o1:E0=3'b001;
8'o2:E0=3'b010;
8'o3:E0=3'b011;
8'o4:E0=3'b100;
8'o5:E0=3'b101;
8'o6:E0=3'b110;
8'o7:E0=3'b111;
default:$display("error!");
endcase
end
end
endmodule
