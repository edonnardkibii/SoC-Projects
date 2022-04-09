`timescale 1ms / 100ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2020 20:12:46
// Design Name: 
// Module Name: Adder_tb
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


module Adder_tb(

    );
    //Input
    reg [3:0]a_tb;
    reg [3:0]b_tb;
    
    //Output
    wire [3:0]s_tb; 
    wire overflow_tb; 
  
  Adder my_adder(.a(a_tb), .b(b_tb), .s(s_tb), .overflow(overflow_tb));
  
  initial begin
    a_tb = 0;
    b_tb = 0;    
  end
  
  always begin
  #1;
  b_tb[0]=~b_tb[0];
  end 
  
  always begin
  #20;
  b_tb[1]=~b_tb[1];
  end
  
  always begin
  #40;
  b_tb[2]=~b_tb[2];
  end
  
  always begin
  #80;
  b_tb[3]=~b_tb[3];
  end
  
  always begin
  #160;
  a_tb[0]=~a_tb[0];
  end
  
  always begin
  #320;
  a_tb[1]=~a_tb[1];
  end
 
  always begin
  #640;
  a_tb[2]=~a_tb[2];
  end
  
  always begin
  #1280;
  a_tb[3]=~a_tb[3];
  end
endmodule