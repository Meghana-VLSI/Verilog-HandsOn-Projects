`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2025 15:33:20
// Design Name: 
// Module Name: decoder3to8
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


module decoder3to8(
input A,B,Cin,
output [7:0] y
    );
    assign y[0] = ~A & ~B & ~Cin;
        assign y[1] = ~A & ~B &  Cin;
        assign y[2] = ~A &  B & ~Cin;
        assign y[3] = ~A &  B &  Cin;
        assign y[4] =  A & ~B & ~Cin;
        assign y[5] =  A & ~B &  Cin;
        assign y[6] =  A &  B & ~Cin;
        assign y[7] =  A &  B &  Cin;

endmodule
