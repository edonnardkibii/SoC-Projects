-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Dec  9 15:28:51 2020
-- Host        : LAPTOP-8T04MTTM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/kibii/OneDrive/Studienkolleg/Vivado/DSP_Hardware/DSP_Hardware.srcs/sources_1/bd/my_DSP_Hardware/ip/my_DSP_Hardware_my_Vector_Length_Mod_0_0/my_DSP_Hardware_my_Vector_Length_Mod_0_0_sim_netlist.vhdl
-- Design      : my_DSP_Hardware_my_Vector_Length_Mod_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_DSP_Hardware_my_Vector_Length_Mod_0_0 is
  port (
    input_vector : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output_vector : out STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of my_DSP_Hardware_my_Vector_Length_Mod_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of my_DSP_Hardware_my_Vector_Length_Mod_0_0 : entity is "my_DSP_Hardware_my_Vector_Length_Mod_0_0,my_Vector_Length_Mod,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of my_DSP_Hardware_my_Vector_Length_Mod_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of my_DSP_Hardware_my_Vector_Length_Mod_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of my_DSP_Hardware_my_Vector_Length_Mod_0_0 : entity is "my_Vector_Length_Mod,Vivado 2018.2";
end my_DSP_Hardware_my_Vector_Length_Mod_0_0;

architecture STRUCTURE of my_DSP_Hardware_my_Vector_Length_Mod_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^input_vector\ : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  \^input_vector\(15 downto 0) <= input_vector(15 downto 0);
  output_vector(17 downto 2) <= \^input_vector\(15 downto 0);
  output_vector(1) <= \<const0>\;
  output_vector(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
