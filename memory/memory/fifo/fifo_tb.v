`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.12.2025 19:42:21
// Design Name: 
// Module Name: fifo_tb
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
/////////////////////////////////////////////////////////////////////////////////

module fifo_tb;
    reg clk;
    reg rst;
    reg wr;
    reg rd;
    reg [7:0] data_in;
    wire [7:0] data_out;
    wire empty;
    wire full;
    wire [3:0] fifo_cnt;

    // Instantiate FIFO
    fifo dut (
        .clk(clk),
        .rst(rst),
        .wr(wr),
        .rd(rd),
        .data_in(data_in),
        .data_out(data_out),
        .empty(empty),
        .full(full),
        .fifo_cnt(fifo_cnt)
    );

    // Clock generation (10ns period)
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        wr  = 0;
        rd  = 0;
        data_in = 0;

        // RESET
        #10 rst = 0;

        // WRITE 8 DATA
        repeat (8) begin
            @(posedge clk);
            wr = 1;
            data_in = data_in + 8'd1;
        end

        @(posedge clk);
        wr = 0;   // FIFO FULL here

        @(posedge clk);
        wr = 1;
        data_in = 8'hFF;
        @(posedge clk);
        wr = 0;

        // READ 8 DATA
        repeat (8) begin
            @(posedge clk);
            rd = 1;
        end

        @(posedge clk);
        rd = 0;   // FIFO EMPTY here
        @(posedge clk);
        rd = 1;
        @(posedge clk);
        rd = 0;
    end

endmodule