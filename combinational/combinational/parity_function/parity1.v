`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.12.2025 17:32:03
// Design Name: 
// Module Name: parity1
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
module parity1(
    input [7:0] a,
    input en,
    output reg chk
);

always @(posedge en)
begin
    chk = pb(a);   // function call
end

// -------- Function for parity --------
function pb;
    input [7:0] a;
begin
    pb = ^a;    // XOR of all bits -- parity
end
endfunction

endmodule