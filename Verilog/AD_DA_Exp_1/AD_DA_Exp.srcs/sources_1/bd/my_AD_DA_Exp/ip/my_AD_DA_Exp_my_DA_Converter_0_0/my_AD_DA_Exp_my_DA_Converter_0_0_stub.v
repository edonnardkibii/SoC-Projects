// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Mon Sep 16 17:29:31 2019
// Host        : pabele-ThinkPad-T430 running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/pabele/HTWG/Skripte/SoC/Labor_Vorlesung/02d_Block_Design_erzeugen/Vivado_Projekte/AD_DA_Exp/AD_DA_Exp.srcs/sources_1/bd/my_AD_DA_Exp/ip/my_AD_DA_Exp_my_DA_Converter_0_0/my_AD_DA_Exp_my_DA_Converter_0_0_stub.v
// Design      : my_AD_DA_Exp_my_DA_Converter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "my_DA_Converter,Vivado 2018.2" *)
module my_AD_DA_Exp_my_DA_Converter_0_0(rstn_i, adc_clk, dat_a_i, dat_b_i, dac_dat_o, 
  dac_wrt_o, dac_sel_o, dac_clk_o, dac_rst_o)
/* synthesis syn_black_box black_box_pad_pin="rstn_i,adc_clk,dat_a_i[15:0],dat_b_i[15:0],dac_dat_o[13:0],dac_wrt_o,dac_sel_o,dac_clk_o,dac_rst_o" */;
  input rstn_i;
  input adc_clk;
  input [15:0]dat_a_i;
  input [15:0]dat_b_i;
  output [13:0]dac_dat_o;
  output dac_wrt_o;
  output dac_sel_o;
  output dac_clk_o;
  output dac_rst_o;
endmodule
