`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2017 03:28:20 PM
// Design Name: 
// Module Name: create_clk_50M
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


module create_clk_50M(
    input CLK,
    output reg newCLK = 0
    );
    
    reg COUNT = 0;
        
    always @ (posedge CLK) begin
    
        COUNT <= (COUNT == 0) ? 0 : COUNT + 1;
        newCLK <= (COUNT == 0) ? ~newCLK : newCLK;
    
    end
endmodule
