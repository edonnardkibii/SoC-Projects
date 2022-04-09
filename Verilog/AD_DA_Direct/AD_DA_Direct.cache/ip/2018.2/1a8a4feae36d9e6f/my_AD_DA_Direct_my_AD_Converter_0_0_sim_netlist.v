// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Nov 19 00:47:49 2020
// Host        : LAPTOP-8T04MTTM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ my_AD_DA_Direct_my_AD_Converter_0_0_sim_netlist.v
// Design      : my_AD_DA_Direct_my_AD_Converter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_AD_Converter
   (adc_clk,
    adc_dat_a,
    adc_dat_b,
    adc_clk_p_i,
    adc_clk_n_i,
    adc_dat_a_i,
    adc_dat_b_i);
  output adc_clk;
  output [13:0]adc_dat_a;
  output [13:0]adc_dat_b;
  input adc_clk_p_i;
  input adc_clk_n_i;
  input [15:2]adc_dat_a_i;
  input [15:2]adc_dat_b_i;

  wire adc_clk;
  wire adc_clk_in;
  wire adc_clk_n_i;
  wire adc_clk_p_i;
  wire [13:0]adc_dat_a;
  wire [15:2]adc_dat_a_i;
  wire [13:0]adc_dat_b;
  wire \adc_dat_b[10]_i_1_n_0 ;
  wire \adc_dat_b[11]_i_1_n_0 ;
  wire \adc_dat_b[12]_i_1_n_0 ;
  wire \adc_dat_b[13]_i_1_n_0 ;
  wire \adc_dat_b[14]_i_1_n_0 ;
  wire \adc_dat_b[2]_i_1_n_0 ;
  wire \adc_dat_b[3]_i_1_n_0 ;
  wire \adc_dat_b[4]_i_1_n_0 ;
  wire \adc_dat_b[5]_i_1_n_0 ;
  wire \adc_dat_b[6]_i_1_n_0 ;
  wire \adc_dat_b[7]_i_1_n_0 ;
  wire \adc_dat_b[8]_i_1_n_0 ;
  wire \adc_dat_b[9]_i_1_n_0 ;
  wire [15:2]adc_dat_b_i;
  wire [14:2]p_1_out;

  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_a[10]_i_1 
       (.I0(adc_dat_a_i[10]),
        .O(p_1_out[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_a[11]_i_1 
       (.I0(adc_dat_a_i[11]),
        .O(p_1_out[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_a[12]_i_1 
       (.I0(adc_dat_a_i[12]),
        .O(p_1_out[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_a[13]_i_1 
       (.I0(adc_dat_a_i[13]),
        .O(p_1_out[13]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_a[14]_i_1 
       (.I0(adc_dat_a_i[14]),
        .O(p_1_out[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_a[2]_i_1 
       (.I0(adc_dat_a_i[2]),
        .O(p_1_out[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_a[3]_i_1 
       (.I0(adc_dat_a_i[3]),
        .O(p_1_out[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_a[4]_i_1 
       (.I0(adc_dat_a_i[4]),
        .O(p_1_out[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_a[5]_i_1 
       (.I0(adc_dat_a_i[5]),
        .O(p_1_out[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_a[6]_i_1 
       (.I0(adc_dat_a_i[6]),
        .O(p_1_out[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_a[7]_i_1 
       (.I0(adc_dat_a_i[7]),
        .O(p_1_out[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_a[8]_i_1 
       (.I0(adc_dat_a_i[8]),
        .O(p_1_out[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_a[9]_i_1 
       (.I0(adc_dat_a_i[9]),
        .O(p_1_out[9]));
  FDRE \adc_dat_a_reg[10] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_1_out[10]),
        .Q(adc_dat_a[8]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[11] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_1_out[11]),
        .Q(adc_dat_a[9]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[12] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_1_out[12]),
        .Q(adc_dat_a[10]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[13] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_1_out[13]),
        .Q(adc_dat_a[11]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[14] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_1_out[14]),
        .Q(adc_dat_a[12]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[15] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_i[15]),
        .Q(adc_dat_a[13]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[2] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_1_out[2]),
        .Q(adc_dat_a[0]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[3] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_1_out[3]),
        .Q(adc_dat_a[1]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[4] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_1_out[4]),
        .Q(adc_dat_a[2]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[5] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_1_out[5]),
        .Q(adc_dat_a[3]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[6] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_1_out[6]),
        .Q(adc_dat_a[4]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[7] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_1_out[7]),
        .Q(adc_dat_a[5]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[8] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_1_out[8]),
        .Q(adc_dat_a[6]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[9] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_1_out[9]),
        .Q(adc_dat_a[7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_b[10]_i_1 
       (.I0(adc_dat_b_i[10]),
        .O(\adc_dat_b[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_b[11]_i_1 
       (.I0(adc_dat_b_i[11]),
        .O(\adc_dat_b[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_b[12]_i_1 
       (.I0(adc_dat_b_i[12]),
        .O(\adc_dat_b[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_b[13]_i_1 
       (.I0(adc_dat_b_i[13]),
        .O(\adc_dat_b[13]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_b[14]_i_1 
       (.I0(adc_dat_b_i[14]),
        .O(\adc_dat_b[14]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_b[2]_i_1 
       (.I0(adc_dat_b_i[2]),
        .O(\adc_dat_b[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_b[3]_i_1 
       (.I0(adc_dat_b_i[3]),
        .O(\adc_dat_b[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_b[4]_i_1 
       (.I0(adc_dat_b_i[4]),
        .O(\adc_dat_b[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_b[5]_i_1 
       (.I0(adc_dat_b_i[5]),
        .O(\adc_dat_b[5]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_b[6]_i_1 
       (.I0(adc_dat_b_i[6]),
        .O(\adc_dat_b[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_b[7]_i_1 
       (.I0(adc_dat_b_i[7]),
        .O(\adc_dat_b[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_b[8]_i_1 
       (.I0(adc_dat_b_i[8]),
        .O(\adc_dat_b[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_b[9]_i_1 
       (.I0(adc_dat_b_i[9]),
        .O(\adc_dat_b[9]_i_1_n_0 ));
  FDRE \adc_dat_b_reg[10] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\adc_dat_b[10]_i_1_n_0 ),
        .Q(adc_dat_b[8]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[11] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\adc_dat_b[11]_i_1_n_0 ),
        .Q(adc_dat_b[9]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[12] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\adc_dat_b[12]_i_1_n_0 ),
        .Q(adc_dat_b[10]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[13] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\adc_dat_b[13]_i_1_n_0 ),
        .Q(adc_dat_b[11]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[14] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\adc_dat_b[14]_i_1_n_0 ),
        .Q(adc_dat_b[12]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[15] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_i[15]),
        .Q(adc_dat_b[13]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[2] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\adc_dat_b[2]_i_1_n_0 ),
        .Q(adc_dat_b[0]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[3] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\adc_dat_b[3]_i_1_n_0 ),
        .Q(adc_dat_b[1]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[4] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\adc_dat_b[4]_i_1_n_0 ),
        .Q(adc_dat_b[2]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[5] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\adc_dat_b[5]_i_1_n_0 ),
        .Q(adc_dat_b[3]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[6] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\adc_dat_b[6]_i_1_n_0 ),
        .Q(adc_dat_b[4]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[7] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\adc_dat_b[7]_i_1_n_0 ),
        .Q(adc_dat_b[5]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[8] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\adc_dat_b[8]_i_1_n_0 ),
        .Q(adc_dat_b[6]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[9] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\adc_dat_b[9]_i_1_n_0 ),
        .Q(adc_dat_b[7]),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG i_adc_buf
       (.I(adc_clk_in),
        .O(adc_clk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    i_clk
       (.I(adc_clk_p_i),
        .IB(adc_clk_n_i),
        .O(adc_clk_in));
endmodule

(* CHECK_LICENSE_TYPE = "my_AD_DA_Direct_my_AD_Converter_0_0,my_AD_Converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "my_AD_Converter,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (adc_dat_a_i,
    adc_dat_b_i,
    adc_clk_p_i,
    adc_clk_n_i,
    adc_dat_a,
    adc_dat_b,
    adc_clk);
  input [15:2]adc_dat_a_i;
  input [15:2]adc_dat_b_i;
  input adc_clk_p_i;
  input adc_clk_n_i;
  output [15:0]adc_dat_a;
  output [15:0]adc_dat_b;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN my_AD_DA_Direct_my_AD_Converter_0_0_adc_clk" *) output adc_clk;

  wire \<const0> ;
  wire adc_clk;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire adc_clk_n_i;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire adc_clk_p_i;
  wire [15:2]\^adc_dat_a ;
  wire [15:2]adc_dat_a_i;
  wire [15:2]\^adc_dat_b ;
  wire [15:2]adc_dat_b_i;

  assign adc_dat_a[15:2] = \^adc_dat_a [15:2];
  assign adc_dat_a[1] = \<const0> ;
  assign adc_dat_a[0] = \<const0> ;
  assign adc_dat_b[15:2] = \^adc_dat_b [15:2];
  assign adc_dat_b[1] = \<const0> ;
  assign adc_dat_b[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_AD_Converter inst
       (.adc_clk(adc_clk),
        .adc_clk_n_i(adc_clk_n_i),
        .adc_clk_p_i(adc_clk_p_i),
        .adc_dat_a(\^adc_dat_a ),
        .adc_dat_a_i(adc_dat_a_i),
        .adc_dat_b(\^adc_dat_b ),
        .adc_dat_b_i(adc_dat_b_i));
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
