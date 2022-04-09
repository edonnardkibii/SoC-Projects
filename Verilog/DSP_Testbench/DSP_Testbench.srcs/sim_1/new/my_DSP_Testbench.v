`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.12.2020 16:46:06
// Design Name: 
// Module Name: my_DSP_Testbench
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

module my_DSP_Testbench(
);
reg CLK_tb;
reg RST_tb;
reg [24:0] A_IN_tb;
reg [17:0] B_IN_tb;
reg [47:0] C_IN_tb;
wire [47:0] P_OUT_tb;
wire [15:0] P_OUT16_tb;
my_DSP dut(
.CLK(CLK_tb),
.RST(RST_tb),
.A_IN(A_IN_tb),
.B_IN(B_IN_tb),
.C_IN(C_IN_tb),
.P_OUT(P_OUT_tb),
.P_OUT16(P_OUT16_tb)
);
real pi = 3.14159265359;
reg [24:0]i_tb;
initial begin
C_IN_tb = 48'b0;
CLK_tb = 0;
RST_tb = 0;
#2
CLK_tb = 1;
RST_tb = 0;
#2
CLK_tb = 0;
RST_tb = 0;
#2
CLK_tb = 1;
RST_tb = 0;
#2
CLK_tb = 0;
RST_tb = 1;
// Delay of 100ns needed after reset!
#100
// load A with 25'h_0_ff_ff_ff
A_IN_tb = 25'h_0_ff_ff_ff;
for (i_tb=1; i_tb<250; i_tb=i_tb+1) begin
#1
B_IN_tb = 18'h_1_ff_ff*$sin(2*pi*i_tb/100);
//B_IN_tb = 18'h_1_ff_ff;
#1
CLK_tb = 1;
#2
CLK_tb = 0;
end
end
endmodule