`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2017 11:05:54 AM
// Design Name: 
// Module Name: play_or_pause
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


module play_or_pause(
    input CLK,
    input PAUSE,
    output reg [12:0] COUNT
    );
    
     always @ (posedge CLK) begin
        if(PAUSE) begin
           COUNT = COUNT + 1;
        end 
     end
     
endmodule
