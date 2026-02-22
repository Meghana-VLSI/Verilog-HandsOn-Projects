`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.12.2025 17:31:47
// Design Name: 
// Module Name: rom
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

module rom(
    input clk,
    input rd,
    input [2:0] add,
    output reg [7:0] data_out
    );
    
    reg [7:0] rom [0:7];   // 8 locations, each 8-bit

    // Initialize ROM contents
    initial begin
        rom[0] = 8'd108;
        rom[1] = 8'd10;
        rom[2] = 8'd106;
        rom[3] = 8'd56;
        rom[4] = 8'd45;
        rom[5] = 8'd130;
        rom[6] = 8'd201;
        rom[7] = 8'd217;
    end

    // Read on positive edge
    always @(posedge clk) begin
        if (rd)
            data_out <= rom[add];
    end

endmodule