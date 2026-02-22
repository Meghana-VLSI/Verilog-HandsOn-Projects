`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2025 17:34:48
// Design Name: 
// Module Name: piso
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

// -------------------------------------------------------
// 4-Bit Parallel-In Serial-Out Shift Register
// Behavioral Modeling (posedge clk & posedge rst)
// -------------------------------------------------------

module piso (
    input clk,
    input rst,
    input load,              
    input [3:0] parallel_in, 
    input shift_in,          
    output serial_out
);

reg [3:0] shift_reg;

always @(posedge clk or posedge rst) begin
    if (rst)
        shift_reg <= 4'b0000;                  
    else if (load)
        shift_reg <= parallel_in;              
    else
        shift_reg <= {shift_reg[2:0], shift_in}; 
end

assign serial_out = shift_reg[3];  

endmodule