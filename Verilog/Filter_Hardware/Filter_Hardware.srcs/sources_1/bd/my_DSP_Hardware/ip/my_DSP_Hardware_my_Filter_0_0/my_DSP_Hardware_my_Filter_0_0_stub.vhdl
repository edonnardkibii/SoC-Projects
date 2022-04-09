-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Dec  9 20:52:54 2020
-- Host        : LAPTOP-8T04MTTM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/kibii/OneDrive/Studienkolleg/Vivado/Filter_Hardware/Filter_Hardware.srcs/sources_1/bd/my_DSP_Hardware/ip/my_DSP_Hardware_my_Filter_0_0/my_DSP_Hardware_my_Filter_0_0_stub.vhdl
-- Design      : my_DSP_Hardware_my_Filter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity my_DSP_Hardware_my_Filter_0_0 is
  Port ( 
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    B_IN : in STD_LOGIC_VECTOR ( 17 downto 0 );
    P_OUT16 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    P_OUT48 : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );

end my_DSP_Hardware_my_Filter_0_0;

architecture stub of my_DSP_Hardware_my_Filter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,RST,B_IN[17:0],P_OUT16[15:0],P_OUT48[47:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "my_Filter,Vivado 2018.2";
begin
end;
