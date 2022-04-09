// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Nov 26 22:51:41 2020
// Host        : LAPTOP-8T04MTTM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/kibii/OneDrive/Studienkolleg/Vivado/AD_DA_Exp/AD_DA_Exp.srcs/sources_1/bd/my_AD_DA_Exp/ip/my_AD_DA_Exp_my_DA_Converter_0_0/my_AD_DA_Exp_my_DA_Converter_0_0_sim_netlist.v
// Design      : my_AD_DA_Exp_my_DA_Converter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "my_AD_DA_Exp_my_DA_Converter_0_0,my_DA_Converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "my_DA_Converter,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module my_AD_DA_Exp_my_DA_Converter_0_0
   (rstn_i,
    adc_clk,
    dat_a_i,
    dat_b_i,
    dac_dat_o,
    dac_wrt_o,
    dac_sel_o,
    dac_clk_o,
    dac_rst_o);
  input rstn_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN my_AD_DA_Exp_my_AD_Converter_0_0_adc_clk" *) input adc_clk;
  input [15:0]dat_a_i;
  input [15:0]dat_b_i;
  output [13:0]dac_dat_o;
  output dac_wrt_o;
  output dac_sel_o;
  output dac_clk_o;
  output dac_rst_o;

  wire adc_clk;
  wire dac_clk_o;
  wire [13:0]dac_dat_o;
  wire dac_rst_o;
  wire dac_sel_o;
  wire dac_wrt_o;
  wire [15:0]dat_a_i;
  wire [15:0]dat_b_i;
  wire rstn_i;

  my_AD_DA_Exp_my_DA_Converter_0_0_my_DA_Converter inst
       (.adc_clk(adc_clk),
        .dac_clk_o(dac_clk_o),
        .dac_dat_o(dac_dat_o),
        .dac_rst_o(dac_rst_o),
        .dac_sel_o(dac_sel_o),
        .dac_wrt_o(dac_wrt_o),
        .dat_a_i(dat_a_i[15:2]),
        .dat_b_i(dat_b_i[15:2]),
        .rstn_i(rstn_i));
endmodule

(* ORIG_REF_NAME = "my_DA_Converter" *) 
module my_AD_DA_Exp_my_DA_Converter_0_0_my_DA_Converter
   (dac_clk_o,
    dac_wrt_o,
    dac_sel_o,
    dac_rst_o,
    dac_dat_o,
    adc_clk,
    dat_b_i,
    dat_a_i,
    rstn_i);
  output dac_clk_o;
  output dac_wrt_o;
  output dac_sel_o;
  output dac_rst_o;
  output [13:0]dac_dat_o;
  input adc_clk;
  input [13:0]dat_b_i;
  input [13:0]dat_a_i;
  input rstn_i;

  wire RST0;
  wire adc_clk;
  wire dac_2clk_buf;
  wire dac_2clk_out;
  wire dac_2ph_buf;
  wire dac_2ph_out;
  wire dac_clk_buf;
  wire dac_clk_fb;
  wire dac_clk_fb_buf;
  wire dac_clk_o;
  wire dac_clk_out;
  wire [15:2]dac_dat_a;
  wire \dac_dat_a[10]_i_1_n_0 ;
  wire \dac_dat_a[11]_i_1_n_0 ;
  wire \dac_dat_a[12]_i_1_n_0 ;
  wire \dac_dat_a[13]_i_1_n_0 ;
  wire \dac_dat_a[14]_i_1_n_0 ;
  wire \dac_dat_a[2]_i_1_n_0 ;
  wire \dac_dat_a[3]_i_1_n_0 ;
  wire \dac_dat_a[4]_i_1_n_0 ;
  wire \dac_dat_a[5]_i_1_n_0 ;
  wire \dac_dat_a[6]_i_1_n_0 ;
  wire \dac_dat_a[7]_i_1_n_0 ;
  wire \dac_dat_a[8]_i_1_n_0 ;
  wire \dac_dat_a[9]_i_1_n_0 ;
  wire [15:2]dac_dat_b;
  wire [13:0]dac_dat_o;
  wire dac_locked;
  wire dac_rst;
  wire dac_rst_o;
  wire dac_sel_o;
  wire dac_wrt_o;
  wire [13:0]dat_a_i;
  wire [13:0]dat_b_i;
  wire p_0_in;
  wire [14:2]p_1_out;
  wire rstn_i;
  wire NLW_i_dac_0_S_UNCONNECTED;
  wire NLW_i_dac_1_S_UNCONNECTED;
  wire NLW_i_dac_10_S_UNCONNECTED;
  wire NLW_i_dac_11_S_UNCONNECTED;
  wire NLW_i_dac_12_S_UNCONNECTED;
  wire NLW_i_dac_13_S_UNCONNECTED;
  wire NLW_i_dac_2_S_UNCONNECTED;
  wire NLW_i_dac_3_S_UNCONNECTED;
  wire NLW_i_dac_4_S_UNCONNECTED;
  wire NLW_i_dac_5_S_UNCONNECTED;
  wire NLW_i_dac_6_S_UNCONNECTED;
  wire NLW_i_dac_7_S_UNCONNECTED;
  wire NLW_i_dac_8_S_UNCONNECTED;
  wire NLW_i_dac_9_S_UNCONNECTED;
  wire NLW_i_dac_clk_S_UNCONNECTED;
  wire NLW_i_dac_plle2_CLKOUT3_UNCONNECTED;
  wire NLW_i_dac_plle2_CLKOUT4_UNCONNECTED;
  wire NLW_i_dac_plle2_CLKOUT5_UNCONNECTED;
  wire NLW_i_dac_plle2_DRDY_UNCONNECTED;
  wire [15:0]NLW_i_dac_plle2_DO_UNCONNECTED;
  wire NLW_i_dac_rst_R_UNCONNECTED;
  wire NLW_i_dac_rst_S_UNCONNECTED;
  wire NLW_i_dac_sel_S_UNCONNECTED;
  wire NLW_i_dac_wrt_S_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[10]_i_1 
       (.I0(dat_a_i[8]),
        .O(\dac_dat_a[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[11]_i_1 
       (.I0(dat_a_i[9]),
        .O(\dac_dat_a[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[12]_i_1 
       (.I0(dat_a_i[10]),
        .O(\dac_dat_a[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[13]_i_1 
       (.I0(dat_a_i[11]),
        .O(\dac_dat_a[13]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[14]_i_1 
       (.I0(dat_a_i[12]),
        .O(\dac_dat_a[14]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[2]_i_1 
       (.I0(dat_a_i[0]),
        .O(\dac_dat_a[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[3]_i_1 
       (.I0(dat_a_i[1]),
        .O(\dac_dat_a[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[4]_i_1 
       (.I0(dat_a_i[2]),
        .O(\dac_dat_a[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[5]_i_1 
       (.I0(dat_a_i[3]),
        .O(\dac_dat_a[5]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[6]_i_1 
       (.I0(dat_a_i[4]),
        .O(\dac_dat_a[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[7]_i_1 
       (.I0(dat_a_i[5]),
        .O(\dac_dat_a[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[8]_i_1 
       (.I0(dat_a_i[6]),
        .O(\dac_dat_a[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_a[9]_i_1 
       (.I0(dat_a_i[7]),
        .O(\dac_dat_a[9]_i_1_n_0 ));
  FDRE \dac_dat_a_reg[10] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(\dac_dat_a[10]_i_1_n_0 ),
        .Q(dac_dat_a[10]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[11] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(\dac_dat_a[11]_i_1_n_0 ),
        .Q(dac_dat_a[11]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[12] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(\dac_dat_a[12]_i_1_n_0 ),
        .Q(dac_dat_a[12]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[13] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(\dac_dat_a[13]_i_1_n_0 ),
        .Q(dac_dat_a[13]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[14] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(\dac_dat_a[14]_i_1_n_0 ),
        .Q(dac_dat_a[14]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[15] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(dat_a_i[13]),
        .Q(dac_dat_a[15]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[2] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(\dac_dat_a[2]_i_1_n_0 ),
        .Q(dac_dat_a[2]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[3] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(\dac_dat_a[3]_i_1_n_0 ),
        .Q(dac_dat_a[3]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[4] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(\dac_dat_a[4]_i_1_n_0 ),
        .Q(dac_dat_a[4]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[5] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(\dac_dat_a[5]_i_1_n_0 ),
        .Q(dac_dat_a[5]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[6] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(\dac_dat_a[6]_i_1_n_0 ),
        .Q(dac_dat_a[6]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[7] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(\dac_dat_a[7]_i_1_n_0 ),
        .Q(dac_dat_a[7]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[8] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(\dac_dat_a[8]_i_1_n_0 ),
        .Q(dac_dat_a[8]),
        .R(1'b0));
  FDRE \dac_dat_a_reg[9] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(\dac_dat_a[9]_i_1_n_0 ),
        .Q(dac_dat_a[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[10]_i_1 
       (.I0(dat_b_i[8]),
        .O(p_1_out[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[11]_i_1 
       (.I0(dat_b_i[9]),
        .O(p_1_out[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[12]_i_1 
       (.I0(dat_b_i[10]),
        .O(p_1_out[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[13]_i_1 
       (.I0(dat_b_i[11]),
        .O(p_1_out[13]));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[14]_i_1 
       (.I0(dat_b_i[12]),
        .O(p_1_out[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[2]_i_1 
       (.I0(dat_b_i[0]),
        .O(p_1_out[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[3]_i_1 
       (.I0(dat_b_i[1]),
        .O(p_1_out[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[4]_i_1 
       (.I0(dat_b_i[2]),
        .O(p_1_out[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[5]_i_1 
       (.I0(dat_b_i[3]),
        .O(p_1_out[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[6]_i_1 
       (.I0(dat_b_i[4]),
        .O(p_1_out[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[7]_i_1 
       (.I0(dat_b_i[5]),
        .O(p_1_out[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[8]_i_1 
       (.I0(dat_b_i[6]),
        .O(p_1_out[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \dac_dat_b[9]_i_1 
       (.I0(dat_b_i[7]),
        .O(p_1_out[9]));
  FDRE \dac_dat_b_reg[10] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(p_1_out[10]),
        .Q(dac_dat_b[10]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[11] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(p_1_out[11]),
        .Q(dac_dat_b[11]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[12] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(p_1_out[12]),
        .Q(dac_dat_b[12]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[13] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(p_1_out[13]),
        .Q(dac_dat_b[13]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[14] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(p_1_out[14]),
        .Q(dac_dat_b[14]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[15] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(dat_b_i[13]),
        .Q(dac_dat_b[15]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[2] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(p_1_out[2]),
        .Q(dac_dat_b[2]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[3] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(p_1_out[3]),
        .Q(dac_dat_b[3]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[4] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(p_1_out[4]),
        .Q(dac_dat_b[4]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[5] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(p_1_out[5]),
        .Q(dac_dat_b[5]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[6] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(p_1_out[6]),
        .Q(dac_dat_b[6]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[7] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(p_1_out[7]),
        .Q(dac_dat_b[7]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[8] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(p_1_out[8]),
        .Q(dac_dat_b[8]),
        .R(1'b0));
  FDRE \dac_dat_b_reg[9] 
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(p_1_out[9]),
        .Q(dac_dat_b[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    dac_rst_i_1
       (.I0(dac_locked),
        .O(p_0_in));
  FDRE dac_rst_reg
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D(p_0_in),
        .Q(dac_rst),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG i_dac1_buf
       (.I(dac_clk_out),
        .O(dac_clk_buf));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG i_dac2_buf
       (.I(dac_2clk_out),
        .O(dac_2clk_buf));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG i_dac2ph_buf
       (.I(dac_2ph_out),
        .O(dac_2ph_buf));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_0
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D1(dac_dat_b[2]),
        .D2(dac_dat_a[2]),
        .Q(dac_dat_o[0]),
        .R(dac_rst),
        .S(NLW_i_dac_0_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_1
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D1(dac_dat_b[3]),
        .D2(dac_dat_a[3]),
        .Q(dac_dat_o[1]),
        .R(dac_rst),
        .S(NLW_i_dac_1_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_10
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D1(dac_dat_b[12]),
        .D2(dac_dat_a[12]),
        .Q(dac_dat_o[10]),
        .R(dac_rst),
        .S(NLW_i_dac_10_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_11
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D1(dac_dat_b[13]),
        .D2(dac_dat_a[13]),
        .Q(dac_dat_o[11]),
        .R(dac_rst),
        .S(NLW_i_dac_11_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_12
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D1(dac_dat_b[14]),
        .D2(dac_dat_a[14]),
        .Q(dac_dat_o[12]),
        .R(dac_rst),
        .S(NLW_i_dac_12_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_13
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D1(dac_dat_b[15]),
        .D2(dac_dat_a[15]),
        .Q(dac_dat_o[13]),
        .R(dac_rst),
        .S(NLW_i_dac_13_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_2
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D1(dac_dat_b[4]),
        .D2(dac_dat_a[4]),
        .Q(dac_dat_o[2]),
        .R(dac_rst),
        .S(NLW_i_dac_2_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_3
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D1(dac_dat_b[5]),
        .D2(dac_dat_a[5]),
        .Q(dac_dat_o[3]),
        .R(dac_rst),
        .S(NLW_i_dac_3_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_4
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D1(dac_dat_b[6]),
        .D2(dac_dat_a[6]),
        .Q(dac_dat_o[4]),
        .R(dac_rst),
        .S(NLW_i_dac_4_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_5
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D1(dac_dat_b[7]),
        .D2(dac_dat_a[7]),
        .Q(dac_dat_o[5]),
        .R(dac_rst),
        .S(NLW_i_dac_5_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_6
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D1(dac_dat_b[8]),
        .D2(dac_dat_a[8]),
        .Q(dac_dat_o[6]),
        .R(dac_rst),
        .S(NLW_i_dac_6_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_7
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D1(dac_dat_b[9]),
        .D2(dac_dat_a[9]),
        .Q(dac_dat_o[7]),
        .R(dac_rst),
        .S(NLW_i_dac_7_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_8
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D1(dac_dat_b[10]),
        .D2(dac_dat_a[10]),
        .Q(dac_dat_o[8]),
        .R(dac_rst),
        .S(NLW_i_dac_8_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_9
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D1(dac_dat_b[11]),
        .D2(dac_dat_a[11]),
        .Q(dac_dat_o[9]),
        .R(dac_rst),
        .S(NLW_i_dac_9_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_clk
       (.C(dac_2ph_buf),
        .CE(1'b1),
        .D1(1'b0),
        .D2(1'b1),
        .Q(dac_clk_o),
        .R(dac_rst),
        .S(NLW_i_dac_clk_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  PLLE2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT(8),
    .CLKFBOUT_PHASE(0.000000),
    .CLKIN1_PERIOD(8.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE(8),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT1_DIVIDE(4),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT2_DIVIDE(4),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(-45.000000),
    .CLKOUT3_DIVIDE(4),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .STARTUP_WAIT("FALSE")) 
    i_dac_plle2
       (.CLKFBIN(dac_clk_fb_buf),
        .CLKFBOUT(dac_clk_fb),
        .CLKIN1(adc_clk),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKOUT0(dac_clk_out),
        .CLKOUT1(dac_2clk_out),
        .CLKOUT2(dac_2ph_out),
        .CLKOUT3(NLW_i_dac_plle2_CLKOUT3_UNCONNECTED),
        .CLKOUT4(NLW_i_dac_plle2_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_i_dac_plle2_CLKOUT5_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_i_dac_plle2_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_i_dac_plle2_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(dac_locked),
        .PWRDWN(1'b0),
        .RST(RST0));
  LUT1 #(
    .INIT(2'h1)) 
    i_dac_plle2_i_1
       (.I0(rstn_i),
        .O(RST0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_rst
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D1(dac_rst),
        .D2(dac_rst),
        .Q(dac_rst_o),
        .R(NLW_i_dac_rst_R_UNCONNECTED),
        .S(NLW_i_dac_rst_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_sel
       (.C(dac_clk_buf),
        .CE(1'b1),
        .D1(1'b1),
        .D2(1'b0),
        .Q(dac_sel_o),
        .R(dac_rst),
        .S(NLW_i_dac_sel_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  ODDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    i_dac_wrt
       (.C(dac_2clk_buf),
        .CE(1'b1),
        .D1(1'b0),
        .D2(1'b1),
        .Q(dac_wrt_o),
        .R(dac_rst),
        .S(NLW_i_dac_wrt_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG i_dacfb_buf
       (.I(dac_clk_fb),
        .O(dac_clk_fb_buf));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
