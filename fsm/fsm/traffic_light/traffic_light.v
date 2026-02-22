`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.12.2025 16:39:07
// Design Name: 
// Module Name: traffic_light
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

module traffic_light (
    input wire clk,
    input wire reset,
    output reg red,
    output reg yellow,
    output reg green
);
    // State encoding
    parameter RED_STATE    = 2'b00;
    parameter GREEN_STATE  = 2'b01;
    parameter YELLOW_STATE = 2'b10;

    reg [1:0] state, next_state;
    reg [3:0] counter;   // small counter is enough

    // State & Counter Update
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state   <= RED_STATE;
            counter <= 0;
        end else begin
            state <= next_state;
  // reset counter when state changes
            if (state != next_state)
                counter <= 0;
            else
                counter <= counter + 1;
        end
    end



// Next State Logic
    always @(*) begin
        next_state = state; // default
        case (state)
            RED_STATE: begin
                if (counter == 5)
                    next_state = GREEN_STATE;
            end
          GREEN_STATE: begin
                if (counter == 5)
                    next_state = YELLOW_STATE;
            end
         YELLOW_STATE: begin
                if (counter == 2)
                    next_state = RED_STATE;
            end
           default: next_state = RED_STATE;
        endcase
    end
    // Output Logic
    always @(*) begin
        red = 0; yellow = 0; green = 0;

        case (state)
            RED_STATE:    red = 1;
            GREEN_STATE:  green = 1;
            YELLOW_STATE: yellow = 1;
        endcase
      end
endmodule