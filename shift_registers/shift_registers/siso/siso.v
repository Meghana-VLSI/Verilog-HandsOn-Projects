`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2025 17:48:52
// Design Name: 
// Module Name: siso
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

// ----------------------------------------
// 4-Bit Serial-In Serial-Out Shift Register
// ----------------------------------------

module siso (
    input clk,
    input rst,
    input serial_in,
    output serial_out
);

reg [3:0] shift_reg;

always @(posedge clk or posedge rst) begin
    if (rst)
        shift_reg <= 4'b0000;                    
    else
        shift_reg <= {shift_reg[2:0], serial_in}; 
end

assign serial_out = shift_reg[3]; 

endmodule
