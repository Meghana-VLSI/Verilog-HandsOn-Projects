`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2025 17:38:26
// Design Name: 
// Module Name: piso_tb
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
module piso_tb;
reg clk;
reg rst;
reg load;
reg shift_in;
reg [3:0] parallel_in;
wire serial_out;
piso dut (
    .clk(clk),
    .rst(rst),
    .load(load),
    .parallel_in(parallel_in),
    .shift_in(shift_in),
    .serial_out(serial_out)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end
initial begin
    rst = 1; load = 0; shift_in = 0; parallel_in = 4'b0000;
    #10 rst = 0;
    parallel_in = 4'b1011;
    load = 1; #10;       
    load = 0;          
     shift_in = 0;
    #40; 
end

endmodule
