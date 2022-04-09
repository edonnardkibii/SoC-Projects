`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2020 20:24:35
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [7:0] I1, I2,
    input [1:0] OP,
    input CLK,
    output reg [15:0] O
    );

//Mux    
wire [7:0] op1, op2, op3, op4;
wire [7:0] aus;

assign op1 = I1+I2; assign op2 = I1*I2; assign op3=I1&I2; assign op4=I1|I2;
assign aus = OP[1]? (OP[0]? op4:op3):(OP[0]? op2:op1);

 always @(posedge CLK) begin
    O=aus;        
  end  

endmodule
