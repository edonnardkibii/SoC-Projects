`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2020 18:03:26
// Design Name: 
// Module Name: Volladdierer
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


module Volladdierer(
        input a,b,c_in,
        output s, c_out
    );
    
    //wires
    wire w1, w2, w3;
    
    assign w1 = a ^ b;
    assign w2 = c_in & w1;
    assign w3 = a & b;
    
    //Output
    assign s = w1 ^ c_in;
    assign c_out = w2 | w3;
     
endmodule
