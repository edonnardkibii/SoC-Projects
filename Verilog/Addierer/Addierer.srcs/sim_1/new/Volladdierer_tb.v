`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.11.2020 18:16:01
// Design Name: 
// Module Name: Volladdierer_tb
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


module Volladdierer_tb(

    );


reg a_tb, b_tb, c_in_tb;
wire s_tb, c_out_tb;

Volladdierer my_volladierer(
    .a(a_tb), .b(b_tb), .c_in(c_in_tb), .s(s_tb), .c_out(c_out_tb) 
);

initial begin
a_tb=0; b_tb=0; c_in_tb=0;
end

always begin
#10;
c_in_tb=~c_in_tb;
end

always begin
#20;
b_tb=~b_tb;
end

always begin
#40;
a_tb=~a_tb;
end

endmodule