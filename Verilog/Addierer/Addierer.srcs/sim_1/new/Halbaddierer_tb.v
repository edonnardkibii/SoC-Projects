`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2020 00:14:21
// Design Name: 
// Module Name: Halbaddierer_tb
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


module Halbaddierer_tb(

    );


reg x_tb, y_tb;
wire c_tb, s_tb;

Halbaddierer my_halbaddierer(.x(x_tb), .y(y_tb), .c(c_tb), .s(s_tb)); 

initial begin
    //Initial values
    x_tb=0;
    y_tb=0;
    
    /*
    #10;
    x_tb=0;
    y_tb=0;
    #10;
    x_tb=0;
    y_tb=1;
    #10;
    x_tb=1;
    y_tb=0;
    #10;
    x_tb=1;
    y_tb=1;
    */
end  

always begin
#10
y_tb=~y_tb;
end     

always begin
#20
x_tb=~x_tb;
end

endmodule