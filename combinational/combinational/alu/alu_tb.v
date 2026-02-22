`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.12.2025 18:14:23
// Design Name: 
// Module Name: alu_tb
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

module alu_tb;
reg  [3:0] a;
reg  [3:0] b;
reg  [2:0] sel;
wire [3:0] y;
wire carry;
alu uut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y),
    .carry(carry)
);
initial begin
    a = 4'b0101;
    b = 4'b0011;
   sel = 3'b000; #10; // ADD
    sel = 3'b001; #10; // SUB
    sel = 3'b010; #10; // AND
    sel = 3'b011; #10; // OR
    sel = 3'b100; #10; // XOR
    sel = 3'b101; #10; // NOT
    sel = 3'b110; #10; // INC
    sel = 3'b111; #10; // DEC

    $finish;
end

endmodule