`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2019 04:59:49 PM
// Design Name: 
// Module Name: my_Vector_Length_Mod
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


module my_Vector_Length_Mod#
(
    parameter integer INPUT_LENGTH = 16,
    parameter integer OUTPUT_LENGTH = 18
)
(
    input [INPUT_LENGTH-1 :0] input_vector,
    output [OUTPUT_LENGTH-1:0] output_vector
);
generate
    if (INPUT_LENGTH <= OUTPUT_LENGTH)
        assign output_vector[OUTPUT_LENGTH-1:0] = {input_vector[INPUT_LENGTH - 1:0],{OUTPUT_LENGTH - INPUT_LENGTH{1'b0} } };
    else
        assign output_vector[OUTPUT_LENGTH-1:0] = input_vector[INPUT_LENGTH-1 : INPUT_LENGTH-OUTPUT_LENGTH];
endgenerate

endmodule


