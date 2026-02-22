`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.12.2025 18:04:32
// Design Name: 
// Module Name: barrel_shifter
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

module barrel_shifter (
    input  [3:0] d,
    input  [1:0] s,
    input        dir,   // 0 = left rotate, 1 = right rotate
    output reg [3:0] y
);

always @(*) begin
    if (dir == 0) begin
        // LEFT ROTATE
        case (s)
            2'b00: y = d;
            2'b01: y = {d[2:0], d[3]};
            2'b10: y = {d[1:0], d[3:2]};
            2'b11: y = {d[0],   d[3:1]};
            default: y = d;
        endcase
    end
    else begin
        // RIGHT ROTATE
        case (s)
            2'b00: y = d;
            2'b01: y = {d[0],   d[3:1]};
            2'b10: y = {d[1:0], d[3:2]};
            2'b11: y = {d[2:0], d[3]};
            default: y = d;
        endcase
    end
end

endmodule
