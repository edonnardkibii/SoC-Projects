-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Dec  9 15:28:57 2020
-- Host        : LAPTOP-8T04MTTM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ my_DSP_Hardware_my_DSP_0_0_stub.vhdl
-- Design      : my_DSP_Hardware_my_DSP_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    A_IN : in STD_LOGIC_VECTOR ( 24 downto 0 );
    B_IN : in STD_LOGIC_VECTOR ( 17 downto 0 );
    C_IN : in STD_LOGIC_VECTOR ( 47 downto 0 );
    P_OUT : out STD_LOGIC_VECTOR ( 47 downto 0 );
    P_OUT16 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,RST,A_IN[24:0],B_IN[17:0],C_IN[47:0],P_OUT[47:0],P_OUT16[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "my_DSP,Vivado 2018.2";
begin
end;
