`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2017 11:39:44 AM
// Design Name: 
// Module Name: delay_module
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


module delay_module(
    input CLK,
    input [11:0] MIC_in,
    input DELAY_SELECTOR,
    output reg [11:0] speaker_out_delay
    );
    
    reg [11:0] memory [5999:0];
    reg [12:0] i = 0;
    
    always @ (posedge CLK) begin
        memory [0] = MIC_in;
        if (DELAY_SELECTOR == 0) begin
            speaker_out_delay = memory [5999];
            for (i=0; i<5999; i=i+1) 
                memory[i+1] <= memory[i];
        end
        else
            speaker_out_delay = memory [2999];
            for (i=0; i<2999; i=i+1) 
                memory[i+1] <= memory[i];
        
        
    end
    
endmodule
