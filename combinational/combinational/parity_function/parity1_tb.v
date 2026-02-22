`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2025 17:33:16
// Design Name: 
// Module Name: parity1_tb
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
module parity1_tb;
reg [7:0] a;
reg en;
wire chk;
parity1 uut (
    .a(a),
    .en(en),
    .chk(chk)
);

initial begin
    en = 0;

    a = 8'b10101101;  
    #10 en = 1;     
    #10 en = 0;

    a = 8'b00011110;
    #10 en = 1;
    #10 en = 0;

    a = 8'b11111111;
    #10 en = 1;
    #10 en = 0;
end
endmodule