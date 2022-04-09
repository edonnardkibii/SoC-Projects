`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2020 16:23:15
// Design Name: 
// Module Name: my_Filter
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
module my_Filter(
input CLK,
input RST,
input [17:0] B_IN,
output [15:0] P_OUT16,
output [47:0] P_OUT48
);
wire [47:0] P0;
wire [47:0] P1;
wire [47:0] P2;
wire [47:0] P3;
wire [47:0] P4;
wire [47:0] P5;
wire [47:0] P6;
wire RST_i;
integer b0 = 392570;
integer b1 = 1551918;
integer b2 = 3900972;
integer b3 = 5086296;
integer b4 = 3900972;
integer b5 = 1551918;
integer b6 = 392570;
my_DSP dsp0(
.CLK(CLK),
.RST(RST),
.A_IN(b0),
.B_IN(B_IN),
.C_IN(0),
.P_OUT(P0)
);
my_DSP dsp1(
.CLK(CLK),
.RST(RST),
.A_IN(b1),
.B_IN(B_IN),
.C_IN(P0),
.P_OUT(P1)
);
my_DSP dsp2(
.CLK(CLK),
.RST(RST),
.A_IN(b2),
.B_IN(B_IN),
.C_IN(P1),
.P_OUT(P2)
);
my_DSP dsp3(
.CLK(CLK),
.RST(RST),
.A_IN(b3),
.B_IN(B_IN),
.C_IN(P2),
.P_OUT(P3)
);
my_DSP dsp4(
.CLK(CLK),
.RST(RST),
.A_IN(b4),
.B_IN(B_IN),
.C_IN(P3),
.P_OUT(P4)
);
my_DSP dsp5(
.CLK(CLK),
.RST(RST),
.A_IN(b5),
.B_IN(B_IN),
.C_IN(P4),
.P_OUT(P5)
);
my_DSP dsp6(
.CLK(CLK),
.RST(RST),
.A_IN(b6),
.B_IN(B_IN),
.C_IN(P5),
.P_OUT(P6)
);
assign P_OUT16 = {P6[47],P6[40:26]};
assign P_OUT48 = P6;
endmodule

