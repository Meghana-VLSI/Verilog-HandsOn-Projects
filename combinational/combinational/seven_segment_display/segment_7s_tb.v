`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.12.2025 17:51:36
// Design Name: 
// Module Name: segment_7s_tb
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

module segment_7s_tb;
   reg  [3:0] bin_in;
    wire [6:0] seg;
  // Instantiate DUT
    segment_7s uut (
        .bin_in(bin_in),
        .seg(seg)
    );
    initial begin
        bin_in = 4'h0; #10;
        bin_in = 4'h1; #10;
        bin_in = 4'h2; #10;
        bin_in = 4'h3; #10;
        bin_in = 4'h4; #10;
        bin_in = 4'h5; #10;
        bin_in = 4'h6; #10;
        bin_in = 4'h7; #10;
        bin_in = 4'h8; #10;
        bin_in = 4'h9; #10;
        bin_in = 4'hA; #10;
        bin_in = 4'hB; #10;
        bin_in = 4'hC; #10;
        bin_in = 4'hD; #10;
        bin_in = 4'hE; #10;
        bin_in = 4'hF; #10;
    end

endmodule