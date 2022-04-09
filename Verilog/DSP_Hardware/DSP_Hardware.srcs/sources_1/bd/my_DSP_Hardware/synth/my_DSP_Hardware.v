//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Wed Dec  9 15:26:44 2020
//Host        : LAPTOP-8T04MTTM running 64-bit major release  (build 9200)
//Command     : generate_target my_DSP_Hardware.bd
//Design      : my_DSP_Hardware
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "my_DSP_Hardware,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=my_DSP_Hardware,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_ps7_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "my_DSP_Hardware.hwdef" *) 
module my_DSP_Hardware
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    adc_clk_n_i,
    adc_clk_p_i,
    adc_dat_a_i,
    adc_dat_b_i,
    dac_clk_o,
    dac_dat_o,
    dac_rst_o,
    dac_sel_o,
    dac_wrt_o);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  input adc_clk_n_i;
  input adc_clk_p_i;
  input [15:2]adc_dat_a_i;
  input [15:2]adc_dat_b_i;
  output dac_clk_o;
  output [13:0]dac_dat_o;
  output dac_rst_o;
  output dac_sel_o;
  output dac_wrt_o;

  wire Net;
  wire adc_clk_n_i_0_1;
  wire adc_clk_p_i_0_1;
  wire [15:2]adc_dat_a_i_0_1;
  wire [15:2]adc_dat_b_i_0_1;
  wire my_AD_Converter_0_adc_clk;
  wire [15:0]my_AD_Converter_0_adc_dat_a;
  wire [15:0]my_AD_Converter_0_adc_dat_b;
  wire my_DA_Converter_0_dac_clk_o;
  wire [13:0]my_DA_Converter_0_dac_dat_o;
  wire my_DA_Converter_0_dac_rst_o;
  wire my_DA_Converter_0_dac_sel_o;
  wire my_DA_Converter_0_dac_wrt_o;
  wire [15:0]my_DSP_0_P_OUT16;
  wire [17:0]my_Vector_Length_Mod_0_output_vector;
  wire [15:0]my_Vector_Length_Mod_1_output_vector;
  wire [17:0]my_Vector_Length_Mod_2_output_vector;
  wire [24:0]my_Vector_Length_Mod_3_output_vector;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire [47:0]xlconstant_0_dout;

  assign adc_clk_n_i_0_1 = adc_clk_n_i;
  assign adc_clk_p_i_0_1 = adc_clk_p_i;
  assign adc_dat_a_i_0_1 = adc_dat_a_i[15:2];
  assign adc_dat_b_i_0_1 = adc_dat_b_i[15:2];
  assign dac_clk_o = my_DA_Converter_0_dac_clk_o;
  assign dac_dat_o[13:0] = my_DA_Converter_0_dac_dat_o;
  assign dac_rst_o = my_DA_Converter_0_dac_rst_o;
  assign dac_sel_o = my_DA_Converter_0_dac_sel_o;
  assign dac_wrt_o = my_DA_Converter_0_dac_wrt_o;
  my_DSP_Hardware_my_AD_Converter_0_0 my_AD_Converter_0
       (.adc_clk(my_AD_Converter_0_adc_clk),
        .adc_clk_n_i(adc_clk_n_i_0_1),
        .adc_clk_p_i(adc_clk_p_i_0_1),
        .adc_dat_a(my_AD_Converter_0_adc_dat_a),
        .adc_dat_a_i(adc_dat_a_i_0_1),
        .adc_dat_b(my_AD_Converter_0_adc_dat_b),
        .adc_dat_b_i(adc_dat_b_i_0_1));
  my_DSP_Hardware_my_DA_Converter_0_0 my_DA_Converter_0
       (.adc_clk(my_AD_Converter_0_adc_clk),
        .dac_clk_o(my_DA_Converter_0_dac_clk_o),
        .dac_dat_o(my_DA_Converter_0_dac_dat_o),
        .dac_rst_o(my_DA_Converter_0_dac_rst_o),
        .dac_sel_o(my_DA_Converter_0_dac_sel_o),
        .dac_wrt_o(my_DA_Converter_0_dac_wrt_o),
        .dat_a_i(my_Vector_Length_Mod_1_output_vector),
        .dat_b_i(my_DSP_0_P_OUT16),
        .rstn_i(Net));
  my_DSP_Hardware_my_DSP_0_0 my_DSP_0
       (.A_IN(my_Vector_Length_Mod_3_output_vector),
        .B_IN(my_Vector_Length_Mod_2_output_vector),
        .CLK(my_AD_Converter_0_adc_clk),
        .C_IN(xlconstant_0_dout),
        .P_OUT16(my_DSP_0_P_OUT16),
        .RST(Net));
  my_DSP_Hardware_my_Vector_Length_Mod_0_0 my_Vector_Length_Mod_0
       (.input_vector(my_AD_Converter_0_adc_dat_a),
        .output_vector(my_Vector_Length_Mod_0_output_vector));
  my_DSP_Hardware_my_Vector_Length_Mod_1_0 my_Vector_Length_Mod_1
       (.input_vector(my_Vector_Length_Mod_0_output_vector),
        .output_vector(my_Vector_Length_Mod_1_output_vector));
  my_DSP_Hardware_my_Vector_Length_Mod_2_0 my_Vector_Length_Mod_2
       (.input_vector(my_AD_Converter_0_adc_dat_a),
        .output_vector(my_Vector_Length_Mod_2_output_vector));
  my_DSP_Hardware_my_Vector_Length_Mod_3_0 my_Vector_Length_Mod_3
       (.input_vector(my_AD_Converter_0_adc_dat_b),
        .output_vector(my_Vector_Length_Mod_3_output_vector));
  my_DSP_Hardware_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_RESET0_N(Net),
        .MIO(FIXED_IO_mio[53:0]),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb));
  my_DSP_Hardware_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
