// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Dec  9 20:52:53 2020
// Host        : LAPTOP-8T04MTTM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ my_DSP_Hardware_my_Filter_0_0_stub.v
// Design      : my_DSP_Hardware_my_Filter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "my_Filter,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(CLK, RST, B_IN, P_OUT16, P_OUT48)
/* synthesis syn_black_box black_box_pad_pin="CLK,RST,B_IN[17:0],P_OUT16[15:0],P_OUT48[47:0]" */;
  input CLK;
  input RST;
  input [17:0]B_IN;
  output [15:0]P_OUT16;
  output [47:0]P_OUT48;
endmodule
