// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Mon Sep 16 17:28:09 2019
// Host        : pabele-ThinkPad-T430 running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ my_AD_DA_Exp_my_AD_Converter_0_0_stub.v
// Design      : my_AD_DA_Exp_my_AD_Converter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "my_AD_Converter,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(adc_dat_a_i, adc_dat_b_i, adc_clk_p_i, 
  adc_clk_n_i, adc_dat_a, adc_dat_b, adc_clk)
/* synthesis syn_black_box black_box_pad_pin="adc_dat_a_i[15:2],adc_dat_b_i[15:2],adc_clk_p_i,adc_clk_n_i,adc_dat_a[15:0],adc_dat_b[15:0],adc_clk" */;
  input [15:2]adc_dat_a_i;
  input [15:2]adc_dat_b_i;
  input adc_clk_p_i;
  input adc_clk_n_i;
  output [15:0]adc_dat_a;
  output [15:0]adc_dat_b;
  output adc_clk;
endmodule
