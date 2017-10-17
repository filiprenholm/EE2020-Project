`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2017 02:33:35 PM
// Design Name: 
// Module Name: falling_volume
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


module falling_volume(
    input clock,
    input switch,
    output reg [15:0] led_out = 16'b0011111111111111
    );
    
    integer i;
    
   always @ (clock, switch) begin
   
        if (switch ==1 ) 
       
         for (i=0; i<15; i=i+1) begin 
             led_out[i] <= led_out[i+1];
         end
            
             led_out[15] <= led_out[0];
    end
    
    
    
endmodule
