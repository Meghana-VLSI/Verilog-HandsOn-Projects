`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.12.2025 18:05:22
// Design Name: 
// Module Name: barrel_shifter_tb
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

module barrel_shifter_tb;
reg  [3:0] d;
reg  [1:0] s;
reg        dir;
wire [3:0] y;
barrel_shifter uut (
    .d(d),
    .s(s),
    .dir(dir),
    .y(y)
);
initial begin
 // Test Left Rotate
    d = 4'b1011; dir = 0;
    s = 2'b00; #10;
    s = 2'b01; #10;
    s = 2'b10; #10;
    s = 2'b11; #10;
// Test Right Rotate
    d = 4'b1011; dir = 1;
    s = 2'b00; #10;
    s = 2'b01; #10;
    s = 2'b10; #10;
    s = 2'b11; #10;

    $finish;
end

endmodule