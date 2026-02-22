`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.12.2025 19:58:52
// Design Name: 
// Module Name: ram8_8_tb
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

module ram8_8_tb;
reg clk;
reg [7:0] data_in;
reg wr;
reg rd;
reg [2:0] add;
wire [7:0] data_out;

// Instantiate RAM
ram8_8 uut (
    .clk(clk),
    .data_in(data_in),
    .wr(wr),
    .rd(rd),
    .add(add),
    .data_out(data_out)
);

// Clock generation
always #10 clk = ~clk;

initial begin
    clk = 0;
    
    // Write 7 at address 0
    data_in = 8'd7; 
    wr = 1; rd = 0; add = 3'd0;
    #20;
    
    // Write 2 at address 6
    data_in = 8'd2; 
    add = 3'd6;
    #20;
    
    // Write 3 at address 5
    data_in = 8'd3; 
    add = 3'd5;
    #20;
    
    // Read address 4 ? no write
    wr = 0; rd = 1; add = 3'd4;
    #20;
    
    // Read address 6 (should output 2)
    add = 3'd6;
    #20;
    
    // Read address 5 (should output 3)
    add = 3'd5;
    #20;
end

endmodule