`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.11.2025 17:05:26
// Design Name: 
// Module Name: d_ff
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

module d_ff(
    input D,      
    input clk,     
    input reset,   
    output reg Q,
    output reg Qbar  
);
    always @(posedge clk or posedge reset)
     begin
        if (reset)begin
            Q <= 1'b0;  
            Qbar<=1'b1; 
           end
        else begin
            Q <= D;
            Qbar<=~D;  
            end      
    end
endmodule