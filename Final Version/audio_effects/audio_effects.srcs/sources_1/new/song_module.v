`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2017 11:46:05 AM
// Design Name: 
// Module Name: song_module
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


module song_module(
    input CLK,
    output reg [5:0] tone_out
    );
    
    reg [17:0] tone_counter = 0;
    
    always @ (posedge CLK) begin
        tone_counter = tone_counter + 1;
        if (tone_counter <= 10_000 )
            tone_out =  6'b000100;
        else if (tone_counter >= 11_000 && tone_counter <= 21_000)
            tone_out =  6'b000100;
        else if (tone_counter >= 22_000 && tone_counter <= 32_000)
            tone_out =  6'b001000;
        else if (tone_counter >= 33_000 && tone_counter <= 43_000)
            tone_out =  6'b010000;
        else if (tone_counter >= 44_000 && tone_counter <= 54_000)
            tone_out =  6'b010000;
        else if (tone_counter >= 55_000 && tone_counter <= 65_000)
            tone_out =  6'b001000;
        else if (tone_counter >= 66_000 && tone_counter <= 76_000)
            tone_out =  6'b000100;
        else if (tone_counter >= 77_000 && tone_counter <= 87_000)
            tone_out =  6'b000010;
        else if (tone_counter >= 88_000 && tone_counter <= 98_000)
            tone_out =  6'b000001;
        else if (tone_counter >= 99_000 && tone_counter <= 109_000)
            tone_out =  6'b000001;
        else if (tone_counter >= 110_000 && tone_counter <= 120_000)
            tone_out =  6'b000010;
        else if (tone_counter >= 121_000 && tone_counter <= 131_000)
            tone_out =  6'b000100;
        else if (tone_counter >= 132_000 && tone_counter <= 148_000)
            tone_out =  6'b000100;
        else if (tone_counter >= 149_000 && tone_counter <= 155_000)
            tone_out =  6'b000010;
        else if (tone_counter >= 156_000 && tone_counter <= 166_000)
            tone_out =  6'b000010;
        else if(tone_counter > 200_000)
            tone_counter = 0;
        else
            tone_out =  6'b000000;
        
            
        
    
    end
    
    
    
    
    
    
endmodule
