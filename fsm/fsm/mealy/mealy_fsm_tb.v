`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2025 16:14:23
// Design Name: 
// Module Name: mealy_fsm_tb
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
module mealy_fsm_tb;
    reg clk;
    reg rst;
    reg din;
    wire y;
    wire [1:0] PS_out;
 mealy_fsm uut (
        .clk(clk),
        .rst(rst),
        .din(din),
        .y(y),
        .PS_out(PS_out)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        din = 0;

        #10 rst = 0;

        // Input sequence: 101
        #10 din = 1;
        #10 din = 0;
        #10 din = 1;   

        // Extra bits
        #10 din = 0;
        #10 din = 1;
    end

endmodule