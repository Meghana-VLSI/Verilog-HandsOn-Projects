`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2025 17:42:04
// Design Name: 
// Module Name: t_using_jk
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

// T Flip-Flop using JK Flip-Flop logic
module t_using_jk (
    input t, clk, rst,
    output reg q,
    output qb
);

assign qb = ~q;
wire j, k;
assign j = t;
assign k = t;

always @(posedge clk or posedge rst) begin
    if(rst)
        q <= 1'b0;
    else begin
        case({j,k})
            2'b10: q <= 1'b1;   // Set
            2'b01: q <= 1'b0;   // Reset
            2'b00: q <= q;      // Hold
            2'b11: q <= ~q;     // Toggle 
        endcase
    end
end

endmodule