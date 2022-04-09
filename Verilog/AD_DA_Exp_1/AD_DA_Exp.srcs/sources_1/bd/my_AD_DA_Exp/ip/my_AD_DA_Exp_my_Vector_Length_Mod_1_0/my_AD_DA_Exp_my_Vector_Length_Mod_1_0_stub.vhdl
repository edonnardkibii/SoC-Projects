-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Mon Sep 16 17:28:09 2019
-- Host        : pabele-ThinkPad-T430 running 64-bit Ubuntu 16.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/pabele/HTWG/Skripte/SoC/Labor_Vorlesung/02d_Block_Design_erzeugen/Vivado_Projekte/AD_DA_Exp/AD_DA_Exp.srcs/sources_1/bd/my_AD_DA_Exp/ip/my_AD_DA_Exp_my_Vector_Length_Mod_1_0/my_AD_DA_Exp_my_Vector_Length_Mod_1_0_stub.vhdl
-- Design      : my_AD_DA_Exp_my_Vector_Length_Mod_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity my_AD_DA_Exp_my_Vector_Length_Mod_1_0 is
  Port ( 
    input_vector : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output_vector : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end my_AD_DA_Exp_my_Vector_Length_Mod_1_0;

architecture stub of my_AD_DA_Exp_my_Vector_Length_Mod_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "input_vector[15:0],output_vector[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "my_Vector_Length_Mod,Vivado 2018.2";
begin
end;
