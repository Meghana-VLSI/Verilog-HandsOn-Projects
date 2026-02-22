`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2025 16:20:58
// Design Name: 
// Module Name: decoder3to8_decoder2to4_tb
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

module decoder3to8_decoder2to4_tb;
    reg a,b,c;
    wire y0,y1,y2,y3,y4,y5,y6,y7;
decoder3to8_decoder2to4 uut(y0,y1,y2,y3,y4,y5,y6,y7,a,b,c);
 initial begin
        // Test all input combinations
        {a,b,c} = 3'b000; #10;
        {a,b,c} = 3'b001; #10;
        {a,b,c} = 3'b010; #10;
        {a,b,c} = 3'b011; #10;
        {a,b,c} = 3'b100; #10;
        {a,b,c} = 3'b101; #10;
        {a,b,c} = 3'b110; #10;
        {a,b,c} = 3'b111; #10;
    end
endmodule

