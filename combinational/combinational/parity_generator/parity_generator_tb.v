`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2025 19:28:26
// Design Name: 
// Module Name: parity_generator_tb
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
// testbench //
module parity_generator_tb;
    reg  [2:0] data_in;
    wire parity_even,parity_odd;
    parity_generator uut (
        .data_in(data_in),
        .parity_even(parity_even),
        .parity_odd(parity_odd)
    );

    initial begin
        data_in = 3'b000; #10;
        data_in = 3'b001; #10;
        data_in = 3'b010; #10;
        data_in = 3'b011; #10;
        data_in = 3'b100; #10;
        data_in = 3'b101; #10;
        data_in = 3'b110; #10;
        data_in = 3'b111; #10;
    end
endmodule
