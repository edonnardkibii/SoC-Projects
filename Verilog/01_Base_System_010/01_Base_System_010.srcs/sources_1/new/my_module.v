`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2020 02:00:10 PM
// Design Name: 
// Module Name: my_module
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


module my_module(

    input        [7:0] exp_p_in,
    output       [7:0] exp_p_out,
    output       [7:0] exp_p_dir,
    
    input        [7:0] exp_n_in,
    output       [7:0] exp_n_out,
    output       [7:0] exp_n_dir,

    input        clk0, clk1, clk2
    );
    
    
reg [28:0] counter0;
reg [28:0] counter1;

assign exp_p_dir = 8'b1111_1111; // 1=output, 0=input
assign exp_n_dir = 8'b1111_1111; // 1=output, 0=input


assign exp_p_out = {counter0[28],counter0[27],counter0[26],counter0[25],counter0[28],counter0[27],counter0[26],counter0[25]};
assign exp_n_out = {counter1[28],counter1[27],counter1[26],counter1[25],counter1[28],counter1[27],counter1[26],counter1[25]};

 
always @(posedge clk1)
begin
    counter0 = counter0 + 1;
end

always @(posedge clk2)
begin
    counter1 = counter1 + 1;
end
        
endmodule
