`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2025 16:12:11
// Design Name: 
// Module Name: mealy_fsm
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
////////////////////////////////////////////////////////////////////////////////
module mealy_fsm (
    input  clk,
    input  rst,
    input  din,
    output reg y,
    output reg [1:0] PS_out  
);
    // State encoding
    parameter reset = 2'b00,
              got1  = 2'b01,
              got10 = 2'b10;

    reg [1:0] PS, NS;

    // Next State Decoder
    always @(PS, din) begin
        case (PS)
            reset:  if (din)
                        NS = got1;
                    else
                        NS = reset;

            got1:   if (din)
                        NS = got1;
                    else
                        NS = got10;

            got10:  if (din)
                        NS = got1;
                    else
                        NS = reset;

            default: NS = reset;
        endcase
    end

    // State Register
    always @(posedge clk or posedge rst) begin
        if (rst)
            PS <= reset;
        else
            PS <= NS;
    end

    // Output Decoder (Mealy)
    always @(PS, din) begin
        case (PS)
            got10:  if (din)
                        y = 1'b1;   // 101 detected
                    else
                        y = 1'b0;
            default: y = 1'b0;
        endcase
    end
    always @(*) begin
        PS_out = PS;
    end

endmodule