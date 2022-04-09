`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2020 16:57:02
// Design Name: 
// Module Name: D_LatchGate
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


module D_LatchGate(
    input D, E,
    output Q, Qn
    );
    
    wire w1, w2, w3;
    
    assign w1 = ~D;
    assign w2 = E & w1;
    assign w3 = E & D;
    
    RS_Latch Inst_01_RS_Latch (
        .R(w2),
        .S(w3),
        .Q(Q),
        .Qn(Qn)
     );
     
endmodule
