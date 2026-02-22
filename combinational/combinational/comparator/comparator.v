`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2025 19:55:00
// Design Name: 
// Module Name: comparator
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
// dataflow modeling //
module comparator(
    input  A,
    input  B,
    output A_greater_B,
    output A_equal_B,
    output A_lesser_B
);
    assign A_greater_B = A & ~B;    // A > B
    assign A_equal_B = ~(A ^ B);  // A = B
    assign A_lesser_B = ~A & B;    // A < B
endmodule
