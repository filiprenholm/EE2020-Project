`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2017 02:44:51 PM
// Design Name: 
// Module Name: any_clock
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


module any_clock(
    input CLOCK,
    input [5:0] my_speed,
    output reg new_clock =0
    );
    
    reg [5:0] count =0;

        always @ (posedge CLOCK)  begin
            count <= (count==my_speed)? 0: count+1;
            new_clock <= (count==0) ?~new_clock : new_clock;
        end
        
        
        
           
endmodule
