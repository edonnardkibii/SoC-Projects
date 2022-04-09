// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Nov 26 22:52:31 2020
// Host        : LAPTOP-8T04MTTM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/kibii/OneDrive/Studienkolleg/Vivado/AD_DA_Exp/AD_DA_Exp.srcs/sources_1/bd/my_AD_DA_Exp/ip/my_AD_DA_Exp_my_Vector_Length_Mod_1_0/my_AD_DA_Exp_my_Vector_Length_Mod_1_0_stub.v
// Design      : my_AD_DA_Exp_my_Vector_Length_Mod_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "my_Vector_Length_Mod,Vivado 2018.2" *)
module my_AD_DA_Exp_my_Vector_Length_Mod_1_0(input_vector, output_vector)
/* synthesis syn_black_box black_box_pad_pin="input_vector[15:0],output_vector[7:0]" */;
  input [15:0]input_vector;
  output [7:0]output_vector;
endmodule
