`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2025 17:43:21
// Design Name: 
// Module Name: pipo_tb
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

// --------------------------------------------------
// Testbench for 4-Bit Parallel-In Parallel-Out Register
// --------------------------------------------------

module pipo_tb;
reg clk;
reg rst;
reg [3:0] parallel_in;
wire [3:0] parallel_out;
pipo dut (
    .clk(clk),
    .rst(rst),
    .parallel_in(parallel_in),
    .parallel_out(parallel_out)
);
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1; parallel_in = 4'b0000;
    #10 rst = 0;
    parallel_in = 4'b1010; #10;
    parallel_in = 4'b1101; #10;
    parallel_in = 4'b0111; #10;
end

endmodule