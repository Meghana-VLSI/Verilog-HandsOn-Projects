`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.12.2025 19:42:02
// Design Name: 
// Module Name: udp_and
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

// AND gate using UDP
primitive udp_and(out, in1, in2);
  output out;
  input  in1, in2;

  table
    // in1 in2 : out
       0   0   : 0;
       0   1   : 0;
       1   0   : 0;
       1   1   : 1;
       x   0   : 0;
       0   x   : 0;
       x   1   : x;
       1   x   : x;
  endtable
endprimitive
