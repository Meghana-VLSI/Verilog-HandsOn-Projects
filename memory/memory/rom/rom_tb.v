`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.12.2025 17:32:49
// Design Name: 
// Module Name: rom_tb
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

module rom_tb;
reg clk;
reg rd;
reg [2:0] add;
wire [7:0] data_out;
rom uut (
    .clk(clk),
    .rd(rd),
    .add(add),
    .data_out(data_out)
);

// Clock generation
always #10 clk = ~clk;

initial begin
    clk = 0;
    rd = 1;
    add = 3'd7;   // Read ROM[7]
    #20;
     add = 3'd6;   // Read ROM[6]
    #20;
    
    add = 3'd5;   // Read ROM[5]
    #20;
    
    add = 3'd4;   // Read ROM[4]
    #20;
end
endmodule