`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2025 16:48:29
// Design Name: 
// Module Name: universal_shift_tb
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

module universal_shift_tb;
reg clk, rst, sin;
reg [1:0] s;
reg [3:0] din;
wire [3:0] q;
universal_shift DUT (
    .clk(clk),
    .rst(rst),
    .s(s),
    .din(din),
    .sin(sin),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    clk = 0; rst = 1; sin = 0; s = 2'b00; din = 4'b0000;

    #10 rst = 0;
    #10 s = 2'b11; din = 4'b1011;  // Load
    #10 s = 2'b01; sin = 1;       // Right shift
    #10 sin = 0;
    #10 s = 2'b10; sin = 1;       // Left shift
    #10 s = 2'b00;               // No change
    end
endmodule