`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2020 19:34:17
// Design Name: 
// Module Name: Adder
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


module Adder(
    //Inputs
    input [3:0] a,
    input [3:0] b,
    
    output [3:0] s,
    output overflow
    );
    
    Halbaddierer halbaddierer_0(.x(a[0]), .y(b[0]), .c(c_out_0), .s(s[0])); 
    Volladdierer volladdierer_1(.a(a[1]), .b(b[1]), .c_in(c_out_0), .s(s[1]), .c_out(c_out_1));
    Volladdierer volladdierer_2(.a(a[2]), .b(b[2]), .c_in(c_out_1), .s(s[2]), .c_out(c_out_2));
    Volladdierer volladdierer_3(.a(a[3]), .b(b[3]), .c_in(c_out_2), .s(s[3]), .c_out(overflow));             
endmodule
