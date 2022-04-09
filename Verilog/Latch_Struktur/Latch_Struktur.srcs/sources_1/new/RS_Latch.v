`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2020 16:47:16
// Design Name: 
// Module Name: RS_Latch
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


module RS_Latch(
        input R, S,
        output Q, Qn
    );
    
    assign Q = ~(R|Qn);
    assign Qn = ~(S|Q);
endmodule
