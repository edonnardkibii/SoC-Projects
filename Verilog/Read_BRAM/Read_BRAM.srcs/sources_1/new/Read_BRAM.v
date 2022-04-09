`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2020 17:07:44
// Design Name: 
// Module Name: Read_BRAM
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


module my_Read_BRAM(
// Clock-Signal
input wire clk_in,
// Verbindung zum BRAM
output reg [31:0] br_addr,
input [31:0] br_din,
output reg br_en,
output reg br_rst,
output reg [3:0] br_we,
output wire br_clk,
// Verbindung zum DA-Wandler
output reg [15:0] data_a,
output reg [15:0] data_b
);
assign br_clk = clk_in;
always @(negedge clk_in) begin
br_addr <= (br_addr + 4) & 16'h0000_003F; // nach 16*4 Byte wieder auf 0 setzen
br_en <= 1'b1;
// der Wert von rst scheint egal zu sein, sollte aber 0 sein!!!
br_rst <= 1'b0;
br_we <= 4'b0000;
data_a <= br_din[15: 0];
data_b <= br_din[31:16];
end
endmodule
