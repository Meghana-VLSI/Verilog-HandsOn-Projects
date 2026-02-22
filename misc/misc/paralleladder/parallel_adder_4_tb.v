`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2025 18:52:34
// Design Name: 
// Module Name: parallel_adder_4_tb
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


module parallel_adder_4_tb;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire cout;
    parallel_adder_4 uut (a, b, cin, sum, cout);

    initial begin
        a = 4'b0000; b = 4'b0000; cin = 0; #10;
        a = 4'b0101; b = 4'b0011; cin = 0; #10;
        a = 4'b1111; b = 4'b0001; cin = 0; #10;
        a = 4'b1010; b = 4'b0101; cin = 1; #10;
        a = 4'b1111; b = 4'b1111; cin = 0; #10;
    end
endmodule
