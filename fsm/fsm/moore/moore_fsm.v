`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.12.2025 19:20:44
// Design Name: 
// Module Name: moore_fsm
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
module moore_fsm (
    input  clk,
    input  rst,
    input  din,
    output reg y,
    output reg [1:0]PS_out);
   // State declaration
    parameter reset  = 2'b00,
              got1   = 2'b01,
              got10  = 2'b10,
              got101 = 2'b11;
     reg [1:0] PS, NS;
    // Next State Decoder (Combinational)
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
                        NS = got101;
                    else
                        NS = reset;

            got101: if (din)
                        NS = got1;
                    else
                        NS = got10;

            default: NS = reset;
        endcase
    end
    
    // Memory Element (Sequential)
    always @(posedge clk, posedge rst) begin
        if (rst)
            PS <= reset;
        else
            PS <= NS;
    end
   always @(*) begin
   PS_out=PS;
   end
    
   // Output Decoder (Moore)
    always @(PS) begin
        case (PS)
            reset:  y = 1'b0;
            got1:   y = 1'b0;
            got10:  y = 1'b0;
            got101: y = 1'b1;
            default:y = 1'b0;
        endcase
    end

endmodule
