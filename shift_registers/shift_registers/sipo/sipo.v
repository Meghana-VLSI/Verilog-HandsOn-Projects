`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2025 17:21:36
// Design Name: 
// Module Name: sipo
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
// ---------------------------------------------
// 4-Bit Serial-In Parallel-Out Shift Register
// Behavioral Modeling (posedge clk & posedge rst)
// ---------------------------------------------

module sipo (
    input clk,
    input rst,
    input serial_in,
    output [3:0] parallel_out
);

reg [3:0] shift_reg;

always @(posedge clk or posedge rst) begin
    if (rst)
        shift_reg <= 4'b0000;                     
    else
        shift_reg <= {shift_reg[2:0], serial_in};  
end

assign parallel_out = shift_reg; 

endmodule
