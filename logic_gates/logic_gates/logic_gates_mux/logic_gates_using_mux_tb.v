`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2025 20:07:26
// Design Name: 
// Module Name: logic_gates_using_mux_tb
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

module logic_gates_using_mux_tb;

    reg A, B;
    wire AND_Y, OR_Y, XOR_Y, NAND_Y, NOR_Y, XNOR_Y, NOT_A;

    logic_gates_using_mux uut (
        .A(A),
        .B(B),
        .AND_Y(AND_Y),
        .OR_Y(OR_Y),
        .XOR_Y(XOR_Y),
        .NAND_Y(NAND_Y),
        .NOR_Y(NOR_Y),
        .XNOR_Y(XNOR_Y),
        .NOT_A(NOT_A)
    );

    initial begin
        A=0;B=0;#10;
        A=0;B=1;#10;
        A=1;B=0;#10;
        A=1;B=1;#10;
             
    end

endmodule
