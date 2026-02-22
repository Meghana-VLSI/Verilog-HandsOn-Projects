`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2025 16:48:09
// Design Name: 
// Module Name: clk_div_500Hz
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

module clk_div_500Hz (
    input  wire clk_in,   // 50 MHz clock
    input  wire rst,       
    output reg  clk_out   // 500 Hz clock
);

    // 50 MHz / 500 Hz = 100,000
    // Toggle every 50,000 cycles
    localparam integer DIV_COUNT = 50000;

    reg [15:0] counter;

    always @(posedge clk_in or posedge rst) begin
        if (rst) begin
            counter <= 0;
            clk_out <= 0;
        end else begin
            if (counter == DIV_COUNT - 1) begin
                counter <= 0;
                clk_out <= ~clk_out;   // Toggle 
            end else begin
                counter <= counter + 1;
            end
        end
    end

endmodule
