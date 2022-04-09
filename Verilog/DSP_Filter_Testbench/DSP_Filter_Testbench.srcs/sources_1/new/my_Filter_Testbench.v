`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2020 16:27:27
// Design Name: 
// Module Name: my_Filter_Testbench
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

module my_Filter_Testbench(
);
reg CLK_tb;
reg RST_tb;
reg [17:0] B_IN_tb;
wire [15:0] P_OUT16_tb;
wire [47:0] P_OUT48_tb;
my_Filter dut(
.CLK(CLK_tb),
.RST(RST_tb),
.B_IN(B_IN_tb),
.P_OUT16(P_OUT16_tb),
.P_OUT48(P_OUT48_tb)
);
reg [24:0]i_tb;
real pi = 3.14159265359;
initial begin
CLK_tb = 0;
RST_tb = 0;
#2
CLK_tb = 1;
RST_tb = 0;
#2
CLK_tb = 0;
RST_tb = 1;
for (i_tb=1; i_tb<3000; i_tb=i_tb+1) begin
#1
B_IN_tb = 18'h_1_ff_ff*$sin(pi/2.0 + pi/2*i_tb * 0.4 );
//B_IN_tb = 18'h_1_ff_ff;
#1
CLK_tb = 1;
#2
CLK_tb = 0;
end
end
endmodule