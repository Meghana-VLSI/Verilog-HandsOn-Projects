`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2025 17:34:49
// Design Name: 
// Module Name: sr_using_t
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

module sr_using_t (
    input S, R, clk, rst,
    output reg q,
    output qb
);

assign qb = ~q;
wire t;
assign t = (S & ~q) | (R & q);

always @(posedge clk or posedge rst) begin
    if(rst)
        q <= 1'b0;
    else if(S & R)
        q <= 1'bx;       // invalid condition
    else if(t)
        q <= ~q;         // toggle when t=1
    else
        q <= q;          // hold
end

endmodule