`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2025 20:04:29
// Design Name: 
// Module Name: logic_gates_using_mux
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


module logic_gates_using_mux (
    input A,
    input B,
    output AND_Y,
    output OR_Y,
    output XOR_Y,
    output NAND_Y,
    output NOR_Y,
    output XNOR_Y,
    output NOT_A
);

    assign AND_Y  = A ? B : 1'b0;
    assign OR_Y   = A ? 1'b1 : B;
    assign XOR_Y  = A ? ~B : B;
    assign NAND_Y = A ? ~B : 1'b1;
    assign NOR_Y  = A ? 1'b0 : ~B;
    assign XNOR_Y = A ? B : ~B;
    assign NOT_A  = A ? 1'b0 : 1'b1;

endmodule
