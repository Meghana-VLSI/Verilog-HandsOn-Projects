`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2025 17:24:03
// Design Name: 
// Module Name: sipo_tb
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

// ---------------------------------------------------
// Testbench for 4-Bit Serial-In Parallel-Out Register
// ---------------------------------------------------

module sipo_tb;

reg clk;
reg rst;
reg serial_in;
wire [3:0] parallel_out;
sipo dut (
    .clk(clk),
    .rst(rst),
    .serial_in(serial_in),
    .parallel_out(parallel_out)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1; serial_in = 0;
    #10 rst = 0;
    serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;
    serial_in = 1; #10;
end

endmodule