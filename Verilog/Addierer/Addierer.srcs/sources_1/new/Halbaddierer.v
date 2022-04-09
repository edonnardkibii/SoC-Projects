`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2020 00:08:44
// Design Name: 
// Module Name: Halbaddierer
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


module Halbaddierer(
    input x,y,
    output c,s 
    );
    
    assign c = x & y;
    assign s = x ^ y;
    
endmodule
