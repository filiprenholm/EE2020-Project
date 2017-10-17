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
    output [15:0] led_out
    
    );
    
   wire new_clock;
   reg [5:0] my_speed; 
   reg [15:0] led_out_A; 
   wire [15:0] led_out_B;
   
   always @ (CLOCK, switch, MIC_in) begin
   
      
       if (MIC_in>=4000) 
        led_out_A <= 16'b1111111111111111;
       else if (MIC_in>=3900)
        led_out_A <= 16'b1111111111111110;
        else if (MIC_in>=3800)
         led_out_A <= 16'b1111111111111100;
        else if (MIC_in>=3700)
         led_out_A <= 16'b1111111111111000;
        else if (MIC_in>=3600)
         led_out_A <= 16'b1111111111110000;
       else if (MIC_in>=3500)
       led_out_A <= 16'b1111111111100000;
       else if (MIC_in>=3400)
       led_out_A <= 16'b1111111111000000;
        else if (MIC_in>=3300)
        led_out_A <= 16'b1111111110000000;
        else if (MIC_in>=3200)
        led_out_A <= 16'b1111111100000000;
        else if (MIC_in>=3100)
         led_out_A <= 16'b1111111000000000;
        else if (MIC_in>=3000)
         led_out_A <= 16'b1111110000000000;
        else if (MIC_in>=2900)
         led_out_A <= 16'b1111100000000000;
       else if (MIC_in>=2800)
        led_out_A <= 16'b1111000000000000;
        else if (MIC_in>=2700)
        led_out_A <= 16'b1110000000000000;
        else if (MIC_in>=2600)
         led_out_A <= 16'b1100000000000000;
        else if (MIC_in>=2500)
         led_out_A <= 16'b1000000000000000;
        else
         led_out_A <= 16'b0000000000000000;
        
     
        
    
        
         if (MIC_in>=4000) begin
            my_speed<=6'b000001;
         end  
         else if (MIC_in>=3900) begin 
           my_speed<=6'b000010;
         end
         else if (MIC_in>=3800) begin
           my_speed<=6'b000011;              
         end
         else if (MIC_in>=3700) begin
           my_speed<=6'b000100;   
        end
         else if (MIC_in>=3600) begin
             my_speed<=6'b000101; 
         end
         else if (MIC_in>=3500) begin
              my_speed<=6'b000110; 
         end
         else if (MIC_in>=3400) begin
              my_speed<=6'b000111; 
        end
       else if (MIC_in>=3300) begin 
               my_speed<=6'b001000; 
        end
        else if (MIC_in>=3200) begin
               my_speed<=6'b001001; 
        end
        else if (MIC_in>=3100) begin
               my_speed<=6'b001010; 
        end
       else if (MIC_in>=3000) begin
               my_speed<=6'b001011; 
       end
       else if (MIC_in>=2900) begin
              my_speed<=6'b001100; 
        end 
        else if (MIC_in>=2800) begin
              my_speed<=6'b001101; 
       end
        else if (MIC_in>=2700) begin
               my_speed<=6'b001110; 
        end
          else if (MIC_in>=2600) begin
               my_speed<=6'b001111; 
         end
        else if (MIC_in>=0) begin 
               my_speed<=6'b010000; 
         end
               

    end
              
   // any_clock c1 (CLOCK, my_speed , new_clock);
    
    falling_volume f1 (CLOCK, switch,led_out_B); 
    
    
   assign led_out = switch ? led_out_B : led_out_A;
    
    
endmodule
