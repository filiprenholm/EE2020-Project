`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2017 09:43:40 AM
// Design Name: 
// Module Name: volume_to_led
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

module volume_to_led(
    input CLOCK,
    input [11:0] MIC_in,
    input switch,
    input [2:0] FUNCTION_SELECTOR,
    output reg [15:0] led_out = 0
    );
   
    reg [23:0]count =0;
    integer i;
    integer j;
    
    reg [11:0] led_temp =0;
   reg [15:0] led_A = 16'b0;
  
    always @ (CLOCK) begin 
        if (FUNCTION_SELECTOR == 3'b000 || FUNCTION_SELECTOR == 3'b010) begin
            if (MIC_in >= led_temp ) begin
                led_temp=MIC_in;
            end
              
                  
            if ( count >= 24'b1111_1111_1111_1111_1111_1111)   begin     
                if (switch == 0) begin
                    led_temp<=0;
                    count<=0;                              
                                    if (led_temp >=4000) 
                                        led_out <= 16'b1111111111111111;
                                    else if (led_temp>=3950)
                                        led_out <= 16'b1111111111111110;
                                    else if (led_temp>=3900)
                                        led_out <= 16'b1111111111111100;
                                    else if (led_temp>=3800)
                                        led_out <= 16'b1111111111111000;
                                    else if (led_temp>=3700)
                                        led_out <= 16'b1111111111110000;
                                    else if (led_temp>=3600)
                                        led_out <= 16'b1111111111100000;
                                    else if (led_temp>=3500)
                                        led_out <= 16'b1111111111000000;
                                    else if (led_temp>=3400)
                                        led_out <= 16'b1111111110000000;
                                    else if (led_temp>=3300)
                                        led_out <= 16'b1111111100000000;
                                    else if (led_temp>=3200)
                                        led_out <= 16'b1111111000000000;
                                    else if (led_temp>=3100)
                                        led_out <= 16'b1111110000000000;
                                    else if (led_temp>=3000)
                                        led_out <= 16'b1111100000000000;
                                    else if (led_temp>=2900)
                                        led_out <= 16'b1111000000000000;
                                    else if (led_temp>=2800)
                                        led_out <= 16'b1110000000000000;
                                    else if (led_temp>=2700)
                                        led_out <= 16'b1100000000000000;
                                    else if (led_temp>=2500)
                                        led_out <= 16'b1000000000000000;
                                    else if   (led_temp>=0)
                                        led_out <= 16'b0000000000000000;
                
                
                end 
                else if (switch == 1) begin 
                            led_temp<=0;
                            count<=0;                              
                                if (led_temp >=3900) 
                                    led_out <= 16'b1111111111111111;
                                else if (led_temp>=3700)
                                    led_out <= 16'b1111111001111111;
                                else if (led_temp>=3500)
                                    led_out <= 16'b1111110000111111;
                                else if (led_temp>=3200)
                                    led_out <= 16'b1111100000011111;
                                else if (led_temp>=3000)
                                    led_out <= 16'b1111000000001111;
                                else if (led_temp>=2800)
                                    led_out <= 16'b1110000000000111;
                                else if (led_temp>=2650)
                                    led_out <= 16'b1100000000000011;
                                else if (led_temp>=2500)
                                    led_out <= 16'b1000000000000001;
                                else if (led_temp>=0)
                                    led_out <= 16'b0000000000000000;
                end
            end
            else if (count < 24'b1111_1111_1111_1111_1111_1111 )begin 
                                    count= count+1;
            end
        end    
    end           
endmodule                                



                 
     