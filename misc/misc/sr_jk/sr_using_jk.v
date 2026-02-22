`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2025 19:02:58
// Design Name: 
// Module Name: sr_using_jk
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
module sr_using_jk (
    input  S, R, clk,
    output reg Q
);

wire J, K;
assign J = S;
assign K = R;

initial Q = 0;   

// JK Flip-Flop behavior working as SR
always @(posedge clk)
begin
    case ({J,K})
        2'b00: Q <= Q;    // No change
        2'b01: Q <= 0;    // Reset
        2'b10: Q <= 1;    // Set
        2'b11: Q <= 1'bx; // Invalid for SR FF
    endcase
end

endmodule
