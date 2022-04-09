// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:my_AD_Converter:1.0
// IP Revision: 1

(* X_CORE_INFO = "my_AD_Converter,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "my_DSP_Hardware_my_AD_Converter_0_0,my_AD_Converter,{}" *)
(* CORE_GENERATION_INFO = "my_DSP_Hardware_my_AD_Converter_0_0,my_AD_Converter,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=my_AD_Converter,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,DATA_WIDTH=16}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module my_DSP_Hardware_my_AD_Converter_0_0 (
  adc_dat_a_i,
  adc_dat_b_i,
  adc_clk_p_i,
  adc_clk_n_i,
  adc_dat_a,
  adc_dat_b,
  adc_clk
);

input wire [15 : 2] adc_dat_a_i;
input wire [15 : 2] adc_dat_b_i;
input wire adc_clk_p_i;
input wire adc_clk_n_i;
output wire [15 : 0] adc_dat_a;
output wire [15 : 0] adc_dat_b;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN my_DSP_Hardware_my_AD_Converter_0_0_adc_clk" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc_clk CLK" *)
output wire adc_clk;

  my_AD_Converter #(
    .DATA_WIDTH(16)
  ) inst (
    .adc_dat_a_i(adc_dat_a_i),
    .adc_dat_b_i(adc_dat_b_i),
    .adc_clk_p_i(adc_clk_p_i),
    .adc_clk_n_i(adc_clk_n_i),
    .adc_dat_a(adc_dat_a),
    .adc_dat_b(adc_dat_b),
    .adc_clk(adc_clk)
  );
endmodule