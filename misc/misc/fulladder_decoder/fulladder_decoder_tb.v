`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2025 15:22:04
// Design Name: 
// Module Name: fulladder_decoder_tb
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

module fulladder_decoder_tb;
    reg A, B, Cin;
    wire Sum, Cout;

    fulladder_decoder uut (A,B,Cin,Sum,Cout);

    initial begin

        // Test all input combinations
        {A,B,Cin} = 3'b000; #10;
        {A,B,Cin} = 3'b001; #10;
        {A,B,Cin} = 3'b010; #10;
        {A,B,Cin} = 3'b011; #10;
        {A,B,Cin} = 3'b100; #10;
        {A,B,Cin} = 3'b101; #10;
        {A,B,Cin} = 3'b110; #10;
        {A,B,Cin} = 3'b111; #10;

    end
endmodule