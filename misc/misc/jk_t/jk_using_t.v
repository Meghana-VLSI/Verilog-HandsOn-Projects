`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2025 17:15:22
// Design Name: 
// Module Name: jk_using_t
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

module jk_using_t(
    input J, K, clk, rst,
    output reg Q,
    output Qb
);

    wire T;

    // T flip-flop excitation using JK formula
    assign T = (J & ~Q) | (K & Q);
    assign Qb = ~Q;
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            Q <= 0;       // Reset output
        else if(T)
            Q <= ~Q;      // Toggle
        else
            Q <= Q;       // No change
    end

endmodule
