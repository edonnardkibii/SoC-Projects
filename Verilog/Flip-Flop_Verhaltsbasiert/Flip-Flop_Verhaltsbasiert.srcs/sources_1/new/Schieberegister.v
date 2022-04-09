`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2020 18:17:54
// Design Name: 
// Module Name: Schieberegister
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


module Schieberegister(
    input CLK,
    input P,Q,S,
    
    output N
    //output reg [3:1] Nreg
    );
    
    reg [3:1] Nreg;
    
    assign N = Nreg[3];
    
    always @(posedge CLK) begin
        Nreg[1] <= S ? P: Q;
        Nreg[2] <= Nreg[1];
        Nreg[3] <= Nreg[2];
     end
     
endmodule
