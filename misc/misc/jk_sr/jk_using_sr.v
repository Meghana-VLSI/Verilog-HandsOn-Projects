`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2025 19:02:29
// Design Name: 
// Module Name: jk_using_sr
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

module jk_using_sr(
    input J, K, clk,
    output reg Q
);

    wire S, R;

    // Mapping SR inputs from JK
    assign S = J & ~Q;   
    assign R = K & Q;    
    initial Q = 0;

    // SR Flip-Flop based JK behavior
    always @(posedge clk)
    begin
        case({S, R})
            2'b10: Q <= 1;   // Set
            2'b01: Q <= 0;   // Reset
            2'b00: Q <= Q;   // No change
            2'b11: Q <= 1'bx; // Invalid condition
        endcase
    end
endmodule