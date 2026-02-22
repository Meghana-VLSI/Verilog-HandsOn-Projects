`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2025 15:19:48
// Design Name: 
// Module Name: fulladder_decoder
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

// full adder using 3-to-8 decoder //
module fulladder_decoder(
    input A, B, Cin,
    output Sum, Cout
);
    wire [7:0] y; 

    // 3-to-8 decoder
  decoder3to8 u1(A,B,Cin,y);

    // Sum = y1 + y2 + y4 + y7
    assign Sum  = y[1] | y[2] | y[4] | y[7];

    // Cout = y3 + y5 + y6 + y7
    assign Cout = y[3] | y[5] | y[6] | y[7];

endmodule