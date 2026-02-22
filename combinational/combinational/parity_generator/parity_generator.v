`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2025 19:25:52
// Design Name: 
// Module Name: parity_generator
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
// dataflow modeling //
module parity_generator (   
    input  [2:0] data_in,                                        
    output parity_even,parity_odd                  
);
    assign parity_even=^(data_in);
    assign parity_odd = ~(^data_in);
endmodule
