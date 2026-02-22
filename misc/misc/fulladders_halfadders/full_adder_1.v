`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2025 21:02:26
// Design Name: 
// Module Name: full_adder_1
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

// full adder using half adders //
module full_adder_1(sum,carry,a,b,cin);
    input a,b,cin;
    output sum,carry;
    wire c,c1,s;

    // Instantiate Half Adders
    half_adder ha1 (s,c,a,b);
    half_adder ha2 (sum,c1,s,cin);

    assign carry = (c | c1);
endmodule
