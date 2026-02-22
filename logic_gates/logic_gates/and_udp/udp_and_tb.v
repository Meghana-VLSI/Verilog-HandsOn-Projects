`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.12.2025 19:44:12
// Design Name: 
// Module Name: udp_and_tb
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

module udp_and_tb;
  reg in1, in2;
  wire out;

  // Instantiate the AND UDP module
  and_with_udp uut(in1, in2, out);

  initial begin
    // Apply test cases
    in1 = 0; in2 = 0; #10;
    in1 = 0; in2 = 1; #10;
    in1 = 1; in2 = 0; #10;
    in1 = 1; in2 = 1; #10;
    in1 = 1; in2 = 1; #10;
  end
endmodule