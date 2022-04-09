`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2020 19:29:42
// Design Name: 
// Module Name: MS_FlipFlop_prim
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


module MS_FlipFlop_prim(
    input D, C,
    output Q, Qn
    );
    
    wire w1, w2, w3, w4, w5, w6, w7,w8;
    
    nand(w1, D, w2);
    nand(w3, w1, w2);
    nand(w5, w1, w8);
    nand(w8, w3, w5);
    nand(w6, w5, w4);
    nand(w7, w6, w4);
    nand(Q, w6, Qn);
    nand(Qn, w7, Q);
    not(w2, C);
    not(w4,w2);
endmodule
