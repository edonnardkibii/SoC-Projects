// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Dec  9 15:28:58 2020
// Host        : LAPTOP-8T04MTTM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/kibii/OneDrive/Studienkolleg/Vivado/DSP_Hardware/DSP_Hardware.srcs/sources_1/bd/my_DSP_Hardware/ip/my_DSP_Hardware_my_DSP_0_0/my_DSP_Hardware_my_DSP_0_0_stub.v
// Design      : my_DSP_Hardware_my_DSP_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "my_DSP,Vivado 2018.2" *)
module my_DSP_Hardware_my_DSP_0_0(CLK, RST, A_IN, B_IN, C_IN, P_OUT, P_OUT16)
/* synthesis syn_black_box black_box_pad_pin="CLK,RST,A_IN[24:0],B_IN[17:0],C_IN[47:0],P_OUT[47:0],P_OUT16[15:0]" */;
  input CLK;
  input RST;
  input [24:0]A_IN;
  input [17:0]B_IN;
  input [47:0]C_IN;
  output [47:0]P_OUT;
  output [15:0]P_OUT16;
endmodule
