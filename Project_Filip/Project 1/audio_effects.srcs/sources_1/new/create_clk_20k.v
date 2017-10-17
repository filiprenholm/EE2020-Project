`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2017 02:26:24 PM
// Design Name: 
// Module Name: create_new_clk
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


module create_clk_20k(
    input CLK,
    output reg newCLK = 0
    );
    
    reg [11:0] COUNT = 0;
    
    always @ (posedge CLK) begin
    
        COUNT <= (COUNT == 2499) ? 0 : COUNT + 1;
        newCLK <= (COUNT == 0) ? ~newCLK : newCLK;
    
    end
    
    
    
    
    
endmodule
