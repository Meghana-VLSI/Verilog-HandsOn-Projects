`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.12.2025 18:12:27
// Design Name: 
// Module Name: alu
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
/////////////////////////////////////////////////////////////////////////////////

module alu (
    input  [3:0] a,
    input  [3:0] b,
    input  [2:0] sel,
    output reg [3:0] y,
    output reg carry
);

always @(*) begin
    carry = 0;
    case (sel)
        3'b000: {carry, y} = a + b; // ADD
        3'b001: {carry, y} = a - b; // SUB
        3'b010: y = a & b;          // AND
        3'b011: y = a | b;          // OR
        3'b100: y = a ^ b;          // XOR
        3'b101: y = ~a;             // NOT
        3'b110: y = a + 1;          // INC
        3'b111: y = a - 1;          // DEC
    endcase
end

endmodule
