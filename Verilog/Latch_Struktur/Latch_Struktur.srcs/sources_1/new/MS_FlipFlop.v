`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2020 17:18:47
// Design Name: 
// Module Name: MS_FlipFlop
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


module MS_FlipFlop(
    input D, C,
    output Q, Qn
    );
    
    wire w1, w2, w3, w4, w5, w6, w7, w8;
    
    assign w1 = ~(D&w2); assign w2= ~C; assign w3= ~(w1&w2); assign w4= ~w2;
    assign w5= ~(w1&w8); assign w6= ~(w5&w4); assign w7= ~(w6&w4); assign w8= ~(w3&w5);
    
    //Ausgänge
    assign Q  = ~(w6&Qn);
    assign Qn = ~(w7&Q);
    
endmodule
