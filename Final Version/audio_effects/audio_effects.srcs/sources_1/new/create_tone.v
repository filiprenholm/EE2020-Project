`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2017 09:54:05 AM
// Design Name: 
// Module Name: create_tone
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


module create_tone(
    input CLK,
    input [5:0] Tone_Choice,
    output reg Tone_Freq = 0
    );
    
    reg [31:0] STOP = 0; 
    reg [17:0] COUNT = 0;
    reg [31:0] OFFSET = 0;
    
    always @(posedge CLK) begin
        
        
        if(Tone_Choice[5] == 1) 
            OFFSET <= 50_000;
        else
            OFFSET <= 0;
    
        if(Tone_Choice[0] == 1'b1) begin
            STOP <= 113_635 + OFFSET;
            COUNT <= (COUNT == STOP) ? 0 : COUNT + 1;
            Tone_Freq <= (COUNT == 0) ? ~Tone_Freq : Tone_Freq;
        end
        else if(Tone_Choice[1] == 1'b1) begin
            STOP <= 101_214 + OFFSET;
            COUNT <= (COUNT == STOP) ? 0 : COUNT + 1;
            Tone_Freq <= (COUNT == 0) ? ~Tone_Freq : Tone_Freq;
        end
        else if(Tone_Choice[2] == 1'b1) begin
            STOP <= 90_252 + OFFSET;
            COUNT <= (COUNT == STOP) ? 0 : COUNT + 1;
            Tone_Freq <= (COUNT == 0) ? ~Tone_Freq : Tone_Freq;
        end
        else if(Tone_Choice[3] == 1'b1) begin
            STOP <= 85_178 + OFFSET;
            COUNT <= (COUNT == STOP) ? 0 : COUNT + 1;
            Tone_Freq <= (COUNT == 0) ? ~Tone_Freq : Tone_Freq;
        end
        else if(Tone_Choice[4] == 1'b1) begin
            STOP <= 75_871 + OFFSET;
            COUNT <= (COUNT == STOP) ? 0 : COUNT + 1;
            Tone_Freq <= (COUNT == 0) ? ~Tone_Freq : Tone_Freq;
        end
            
        else 
            Tone_Freq = 0;
        
    end
      
    
    
endmodule
