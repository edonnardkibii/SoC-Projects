// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Dec  9 15:28:00 2020
// Host        : LAPTOP-8T04MTTM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ my_DSP_Hardware_my_DA_Converter_0_0_stub.v
// Design      : my_DSP_Hardware_my_DA_Converter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "my_DA_Converter,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(rstn_i, adc_clk, dat_a_i, dat_b_i, dac_dat_o, 
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
