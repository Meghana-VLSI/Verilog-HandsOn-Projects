`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 22:13:10
// Design Name: 
// Module Name: demux1
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




// behavioral modeling //
module demux1(
    input wire [2:0] s,    // 3-bit select
    input wire d,           // data input
    output reg y0, y1, y2, y3, y4, y5, y6, y7
);
    always @(*) begin
    y0=0;y1=0;y2=0;y3=0;y4=0;y5=0;y6=0;y7=0;
    case(s)
            3'd0: y0 = d;
            3'd1: y1 = d;
            3'd2: y2 = d;
            3'd3: y3 = d;
            3'd4: y4 = d;
            3'd5: y5 = d;
            3'd6: y6 = d;
            3'd7: y7 = d;
     endcase
     end
endmodule