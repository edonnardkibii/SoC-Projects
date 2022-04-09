-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Nov 19 00:47:49 2020
-- Host        : LAPTOP-8T04MTTM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ my_AD_DA_Direct_my_AD_Converter_0_0_stub.vhdl
-- Design      : my_AD_DA_Direct_my_AD_Converter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    adc_dat_a_i : in STD_LOGIC_VECTOR ( 15 downto 2 );
    adc_dat_b_i : in STD_LOGIC_VECTOR ( 15 downto 2 );
    adc_clk_p_i : in STD_LOGIC;
    adc_clk_n_i : in STD_LOGIC;
    adc_dat_a : out STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_dat_b : out STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_clk : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "adc_dat_a_i[15:2],adc_dat_b_i[15:2],adc_clk_p_i,adc_clk_n_i,adc_dat_a[15:0],adc_dat_b[15:0],adc_clk";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "my_AD_Converter,Vivado 2018.2";
begin
end;
