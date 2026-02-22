`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.12.2025 19:57:34
// Design Name: 
// Module Name: ram8_8
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

module ram8_8(
    input clk,
    input [7:0] data_in,
    input wr,
    input rd,
    input [2:0] add,
    output [7:0] data_out
    );
    
    reg [7:0] ram [0:7];   // 8 locations, each 8-bit
    
    always @(posedge clk) 
    begin
        if (wr) 
            ram[add] <= data_in;   // Write operation
    end

    assign data_out = rd ? ram[add] : 8'bz;   // Read operation (tri-state)
endmodule