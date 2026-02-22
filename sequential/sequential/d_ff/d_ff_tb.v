`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2025 17:09:05
// Design Name: 
// Module Name: d_ff_tb
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

module d_ff_tb;
    reg D, clk, reset;
    wire Q,Qbar;

    d_ff uut (.D(D), .clk(clk), .reset(reset), .Q(Q), .Qbar(Qbar));

    // Generate clock
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1; D = 0;
        #10 reset = 0;
        #10 D = 1;
        #10 D = 0;
        #10 D = 1;
        #10 reset = 1;   
        #10 reset = 0;
    end
endmodule