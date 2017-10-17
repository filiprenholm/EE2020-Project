`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// AY1718 Sem 1 EE2020 Project
// Project Name: Audio Effects
// Module Name: AUDIO_FX_TOP
// Team No.: 
// Student Names: 
// Matric No.:
// Description: 
// 
// Work Distribution:
//////////////////////////////////////////////////////////////////////////////////

module AUDIO_FX_TOP(
    input CLK,            // 100MHz FPGA clock
    
    input  J_MIC3_Pin3,   // PmodMIC3 audio input data (serial)
    
    input [5:0] Tone_Choice, //Choosing tone according to bit switches
    
    output J_MIC3_Pin1,   // PmodMIC3 chip select, 20kHz sampling clock
    output J_MIC3_Pin4,   // PmodMIC3 serial clock (generated by module SPI.v)
    //output [11:0] MIC_in, 
     
    output J_DA2_Pin1,    // PmodDA2 sampling clock (generated by module DA2RefComp.vhd)
    output J_DA2_Pin2,    // PmodDA2 Data_A, 12-bit speaker output (generated by module DA2RefComp.vhd)
    output J_DA2_Pin3,    // PmodDA2 Data_B, not used (generated by module DA2RefComp.vhd)
    output J_DA2_Pin4     // PmodDA2 serial clock, 50MHz clock
    );

    //////////////////////////////////////////////////////////////////////////////////
    // Clock Divider Module: Generate necessary clocks from 100MHz FPGA CLK
    // Please create the clock divider module and instantiate it here.
      wire clk_20k;
      wire clk_50M;
      //wire Tone_Freq;
      wire [11:0] speaker_out;
      
      create_clk_20k f1(CLK, clk_20k);
      create_clk_50M f2(CLK, clk_50M);
      
      //create_tone t1(CLK, Tone_Choice, speaker_out);
      
      reg [12:0] COUNT  = 0;
      always @ (posedge clk_20k) begin
        
      COUNT = COUNT + 1;
      
      end
      dist_mem_gen_0 g1(COUNT, speaker_out);
     
      
  
     //////////////////////////////////////////////////////////////////////////////////
     //SPI Module: Converting serial data into a 12-bit parallel register
     //Do not change the codes in this area
       //wire [11:0] MIC_in;
       //SPI u1 (CLK, clk_20k, J_MIC3_Pin3, J_MIC3_Pin1, J_MIC3_Pin4, MIC_in);
   
    /////////////////////////////////////////////////////////////////////////////////////
    // Real-time Audio Effect Features
    // Please create modules to implement different features and instantiate them here   
       //wire [11:0] speaker_out;
    

      //assign speaker_out = MIC_in;
    /////////////////////////////////////////////////////////////////////////////////////
    //DAC Module: Digital-to-Analog Conversion
    //Do not change the codes in this area        
      DA2RefComp u2(clk_50M, clk_20k, speaker_out, ,1'b0, J_DA2_Pin2, J_DA2_Pin3, J_DA2_Pin4, J_DA2_Pin1,);
        
  //////////////////////////////////////////////////////////////////////////////////

endmodule
