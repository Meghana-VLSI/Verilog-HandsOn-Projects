`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2025 17:48:47
// Design Name: 
// Module Name: jk_using_d
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

// JK Flip-Flop using D Flip-Flop logic
module jk_using_d (
    input j, k, clk, rst,
    output reg q,
    output qb
);

assign qb = ~q;
wire d;
assign d = (j & ~q) | (~k & q);

always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 1'b0;
    else
        q <= d;
end

endmodule