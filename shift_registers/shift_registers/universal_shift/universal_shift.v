`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2025 16:47:16
// Design Name: 
// Module Name: universal_shift
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

module universal_shift(
    input        clk,
    input        rst,
    input  [1:0] s,        // select lines
    input  [3:0] din,
    input        sin,
    output reg [3:0] q
);

always @(posedge clk or posedge rst)
begin
    if (rst)
        q <= 4'b0000;
    else begin
        case (s)
            2'b00: q <= q;                 // No change
            2'b01: q <= {sin, q[3:1]};     // Right shift
            2'b10: q <= {q[2:0], sin};     // Left shift
            2'b11: q <= din;               // Parallel load
        endcase
    end
end
endmodule