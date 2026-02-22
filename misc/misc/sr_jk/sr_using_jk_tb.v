`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2025 19:13:45
// Design Name: 
// Module Name: sr_using_jk_tb
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

module sr_using_jk_tb;
reg clk = 0;
reg S = 0, R = 0;
wire Q;
sr_using_jk dut (
    .S(S),
    .R(R),
    .clk(clk),
    .Q(Q)
);
// Clock generation
always #5 clk = ~clk;
initial begin
     // Hold
    #10 S=0; R=0;
     // Set
    #20 S=1; R=0;
     // Reset
    #20 S=0; R=1;
     // Invalid (S=R=1)
    #20 S=1; R=1;
     // Hold back
    #20 S=0; R=0;
end
endmodule