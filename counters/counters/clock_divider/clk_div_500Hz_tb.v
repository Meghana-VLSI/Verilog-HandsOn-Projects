`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2025 16:49:14
// Design Name: 
// Module Name: clk_div_500Hz_tb
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
`timescale 1ns/1ps

module clk_div_500Hz_tb;
    reg clk_in;
    reg rst;
    wire clk_out;

    // Instantiate DUT
    clk_div_500Hz dut (
        .clk_in(clk_in),
        .rst(rst),
        .clk_out(clk_out)
    );

    // Generate 50 MHz clock 
    always #10 clk_in = ~clk_in;

    initial begin
        clk_in = 0;
        rst    = 1;

        #50rst = 0;     
    #5000_000 $finish;
    end

endmodule