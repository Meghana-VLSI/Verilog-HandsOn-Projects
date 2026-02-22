`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2025 17:27:30
// Design Name: 
// Module Name: t_using_d
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

// T Flip-Flop using D Flip-Flop logic
module t_using_d (
    input t,
    input clk,
    input rst,
    output reg q,
    output qb
);

assign qb = ~q;
wire d;
assign d = t ^ q; 

always @(posedge clk or posedge rst) begin
    if(rst)
        q <= 1'b0;
    else
        q <= d;
end

endmodule