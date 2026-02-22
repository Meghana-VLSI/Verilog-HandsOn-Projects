`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.12.2025 19:18:51
// Design Name: 
// Module Name: fifo
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
///////////////////////////////////////////////////////////////////////////////
module fifo (
    input  wire  clk,rst,wr,rd,
    input  wire [7:0]  data_in,
    output reg  [7:0]  data_out,
    output wire   empty,
    output wire   full,
    output reg  [3:0]  fifo_cnt
);
     // FIFO memory
    reg [7:0] fifo_ram [0:7];
   // Pointers
    reg [2:0] wr_ptr;
    reg [2:0] rd_ptr;
   // Status flags
    assign empty = (fifo_cnt == 0);
    assign full  = (fifo_cnt == 8);
  // WRITE OPERATION
    always @(posedge clk) begin
        if (wr && !full)
            fifo_ram[wr_ptr] <= data_in;
    end
 
 
 // READ OPERATION 
    always @(posedge clk) begin
        if (rst)
            data_out <= 8'd0;
        else if (rd && !empty)
            data_out <= fifo_ram[rd_ptr];
    end
 // POINTER OPERATION 
    always @(posedge clk) begin
        if (rst) begin
            wr_ptr <= 3'd0;
            rd_ptr <= 3'd0;
        end else begin
            if (wr && !full)
                wr_ptr <= wr_ptr + 1;

            if (rd && !empty)
                rd_ptr <= rd_ptr + 1;
        end
    end
  
 // FIFO COUNT OPERATION
    always @(posedge clk) begin
        if (rst)
            fifo_cnt <= 4'd0;
        else begin
            case ({wr && !full, rd && !empty})
                2'b10: fifo_cnt <= fifo_cnt + 1;
                2'b01: fifo_cnt <= fifo_cnt - 1;
                default: fifo_cnt <= fifo_cnt;
            endcase
            end
    end
endmodule
    
