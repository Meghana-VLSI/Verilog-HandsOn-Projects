`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2025 17:12:45
// Design Name: 
// Module Name: lfsr
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

module lfsr(
    input clk,
    input rst,
    output reg [3:0] x
);

wire x4;

// Polynomial: x^4 + x + 1
assign x4 = x[0] ^ x[1];

always @(posedge clk)
begin
    if (rst)
        x <= 4'b0001;       
    else begin
        x[0] <= x[1];
        x[1] <= x[2];
        x[2] <= x[3];
        x[3] <= x4;
    end
end

endmodule
