`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2025 19:09:01
// Design Name: 
// Module Name: updown_counter
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

module updown_counter(a, clk, N,u_d);
    input clk,u_d;
    input [3:0] N;
    output reg [3:0] a;

    initial a = 4'b0000;

    always @(negedge clk)
    begin
       if (u_d==1'b1)begin  //up counter
       if (a==N)
       a<=4'b0000;
       else
       a<=a+1;
    end
    else begin       //down counter
    if (a==4'b0000)
       a<=N;
    else
       a<=a-1;
    end
    end
endmodule
