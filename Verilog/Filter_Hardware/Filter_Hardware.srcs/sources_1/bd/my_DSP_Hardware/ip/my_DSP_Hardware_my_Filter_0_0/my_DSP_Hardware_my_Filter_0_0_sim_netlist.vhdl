-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Dec  9 20:52:54 2020
-- Host        : LAPTOP-8T04MTTM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/kibii/OneDrive/Studienkolleg/Vivado/Filter_Hardware/Filter_Hardware.srcs/sources_1/bd/my_DSP_Hardware/ip/my_DSP_Hardware_my_Filter_0_0/my_DSP_Hardware_my_Filter_0_0_sim_netlist.vhdl
-- Design      : my_DSP_Hardware_my_Filter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_DSP_Hardware_my_Filter_0_0_my_DSP is
  port (
    P : out STD_LOGIC_VECTOR ( 47 downto 0 );
    CLK : in STD_LOGIC;
    B_IN : in STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of my_DSP_Hardware_my_Filter_0_0_my_DSP : entity is "my_DSP";
end my_DSP_Hardware_my_Filter_0_0_my_DSP;

architecture STRUCTURE of my_DSP_Hardware_my_Filter_0_0_my_DSP is
  signal NLW_DSP48E1_inst_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_MULTSIGNIN_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_DSP48E1_inst_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_DSP48E1_inst_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_DSP48E1_inst_PCIN_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_DSP48E1_inst_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of DSP48E1_inst : label is "PRIMITIVE";
begin
DSP48E1_inst: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 0,
      ALUMODEREG => 1,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 1,
      CARRYINSELREG => 1,
      CREG => 1,
      DREG => 0,
      INMODEREG => 1,
      IS_ALUMODE_INVERTED => B"0000",
      IS_CARRYIN_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_INMODE_INVERTED => B"00000",
      IS_OPMODE_INVERTED => B"0000000",
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 1,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"111110000001011111110101111010",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_DSP48E1_inst_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B_IN(17 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_DSP48E1_inst_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_DSP48E1_inst_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_DSP48E1_inst_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '1',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '1',
      CEB1 => '1',
      CEB2 => '1',
      CEC => '1',
      CECARRYIN => '1',
      CECTRL => '1',
      CED => '0',
      CEINMODE => '1',
      CEM => '1',
      CEP => '1',
      CLK => CLK,
      D(24 downto 0) => B"1111111111111111111111111",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => NLW_DSP48E1_inst_MULTSIGNIN_UNCONNECTED,
      MULTSIGNOUT => NLW_DSP48E1_inst_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_DSP48E1_inst_OVERFLOW_UNCONNECTED,
      P(47 downto 0) => P(47 downto 0),
      PATTERNBDETECT => NLW_DSP48E1_inst_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_DSP48E1_inst_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => NLW_DSP48E1_inst_PCIN_UNCONNECTED(47 downto 0),
      PCOUT(47 downto 0) => NLW_DSP48E1_inst_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_DSP48E1_inst_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_DSP_Hardware_my_Filter_0_0_my_DSP_0 is
  port (
    P : out STD_LOGIC_VECTOR ( 47 downto 0 );
    CLK : in STD_LOGIC;
    B_IN : in STD_LOGIC_VECTOR ( 17 downto 0 );
    DSP48E1_inst_0 : in STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of my_DSP_Hardware_my_Filter_0_0_my_DSP_0 : entity is "my_DSP";
end my_DSP_Hardware_my_Filter_0_0_my_DSP_0;

architecture STRUCTURE of my_DSP_Hardware_my_Filter_0_0_my_DSP_0 is
  signal NLW_DSP48E1_inst_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_MULTSIGNIN_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_DSP48E1_inst_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_DSP48E1_inst_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_DSP48E1_inst_PCIN_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_DSP48E1_inst_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of DSP48E1_inst : label is "PRIMITIVE";
begin
DSP48E1_inst: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 0,
      ALUMODEREG => 1,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 1,
      CARRYINSELREG => 1,
      CREG => 1,
      DREG => 0,
      INMODEREG => 1,
      IS_ALUMODE_INVERTED => B"0000",
      IS_CARRYIN_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_INMODE_INVERTED => B"00000",
      IS_OPMODE_INVERTED => B"0000000",
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 1,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"111110000101111010111000101110",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_DSP48E1_inst_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B_IN(17 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_DSP48E1_inst_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => DSP48E1_inst_0(47 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_DSP48E1_inst_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_DSP48E1_inst_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '1',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '1',
      CEB1 => '1',
      CEB2 => '1',
      CEC => '1',
      CECARRYIN => '1',
      CECTRL => '1',
      CED => '0',
      CEINMODE => '1',
      CEM => '1',
      CEP => '1',
      CLK => CLK,
      D(24 downto 0) => B"1111111111111111111111111",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => NLW_DSP48E1_inst_MULTSIGNIN_UNCONNECTED,
      MULTSIGNOUT => NLW_DSP48E1_inst_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_DSP48E1_inst_OVERFLOW_UNCONNECTED,
      P(47 downto 0) => P(47 downto 0),
      PATTERNBDETECT => NLW_DSP48E1_inst_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_DSP48E1_inst_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => NLW_DSP48E1_inst_PCIN_UNCONNECTED(47 downto 0),
      PCOUT(47 downto 0) => NLW_DSP48E1_inst_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_DSP48E1_inst_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_DSP_Hardware_my_Filter_0_0_my_DSP_1 is
  port (
    P : out STD_LOGIC_VECTOR ( 47 downto 0 );
    CLK : in STD_LOGIC;
    B_IN : in STD_LOGIC_VECTOR ( 17 downto 0 );
    DSP48E1_inst_0 : in STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of my_DSP_Hardware_my_Filter_0_0_my_DSP_1 : entity is "my_DSP";
end my_DSP_Hardware_my_Filter_0_0_my_DSP_1;

architecture STRUCTURE of my_DSP_Hardware_my_Filter_0_0_my_DSP_1 is
  signal NLW_DSP48E1_inst_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_MULTSIGNIN_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_DSP48E1_inst_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_DSP48E1_inst_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_DSP48E1_inst_PCIN_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_DSP48E1_inst_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of DSP48E1_inst : label is "PRIMITIVE";
begin
DSP48E1_inst: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 0,
      ALUMODEREG => 1,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 1,
      CARRYINSELREG => 1,
      CREG => 1,
      DREG => 0,
      INMODEREG => 1,
      IS_ALUMODE_INVERTED => B"0000",
      IS_CARRYIN_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_INMODE_INVERTED => B"00000",
      IS_OPMODE_INVERTED => B"0000000",
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 1,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"111110001110111000011000101100",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_DSP48E1_inst_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B_IN(17 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_DSP48E1_inst_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => DSP48E1_inst_0(47 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_DSP48E1_inst_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_DSP48E1_inst_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '1',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '1',
      CEB1 => '1',
      CEB2 => '1',
      CEC => '1',
      CECARRYIN => '1',
      CECTRL => '1',
      CED => '0',
      CEINMODE => '1',
      CEM => '1',
      CEP => '1',
      CLK => CLK,
      D(24 downto 0) => B"1111111111111111111111111",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => NLW_DSP48E1_inst_MULTSIGNIN_UNCONNECTED,
      MULTSIGNOUT => NLW_DSP48E1_inst_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_DSP48E1_inst_OVERFLOW_UNCONNECTED,
      P(47 downto 0) => P(47 downto 0),
      PATTERNBDETECT => NLW_DSP48E1_inst_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_DSP48E1_inst_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => NLW_DSP48E1_inst_PCIN_UNCONNECTED(47 downto 0),
      PCOUT(47 downto 0) => NLW_DSP48E1_inst_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_DSP48E1_inst_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_DSP_Hardware_my_Filter_0_0_my_DSP_2 is
  port (
    P : out STD_LOGIC_VECTOR ( 47 downto 0 );
    CLK : in STD_LOGIC;
    B_IN : in STD_LOGIC_VECTOR ( 17 downto 0 );
    DSP48E1_inst_0 : in STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of my_DSP_Hardware_my_Filter_0_0_my_DSP_2 : entity is "my_DSP";
end my_DSP_Hardware_my_Filter_0_0_my_DSP_2;

architecture STRUCTURE of my_DSP_Hardware_my_Filter_0_0_my_DSP_2 is
  signal NLW_DSP48E1_inst_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_MULTSIGNIN_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_DSP48E1_inst_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_DSP48E1_inst_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_DSP48E1_inst_PCIN_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_DSP48E1_inst_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of DSP48E1_inst : label is "PRIMITIVE";
begin
DSP48E1_inst: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 0,
      ALUMODEREG => 1,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 1,
      CARRYINSELREG => 1,
      CREG => 1,
      DREG => 0,
      INMODEREG => 1,
      IS_ALUMODE_INVERTED => B"0000",
      IS_CARRYIN_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_INMODE_INVERTED => B"00000",
      IS_OPMODE_INVERTED => B"0000000",
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 1,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"111110010011011001110001011000",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_DSP48E1_inst_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B_IN(17 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_DSP48E1_inst_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => DSP48E1_inst_0(47 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_DSP48E1_inst_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_DSP48E1_inst_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '1',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '1',
      CEB1 => '1',
      CEB2 => '1',
      CEC => '1',
      CECARRYIN => '1',
      CECTRL => '1',
      CED => '0',
      CEINMODE => '1',
      CEM => '1',
      CEP => '1',
      CLK => CLK,
      D(24 downto 0) => B"1111111111111111111111111",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => NLW_DSP48E1_inst_MULTSIGNIN_UNCONNECTED,
      MULTSIGNOUT => NLW_DSP48E1_inst_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_DSP48E1_inst_OVERFLOW_UNCONNECTED,
      P(47 downto 0) => P(47 downto 0),
      PATTERNBDETECT => NLW_DSP48E1_inst_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_DSP48E1_inst_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => NLW_DSP48E1_inst_PCIN_UNCONNECTED(47 downto 0),
      PCOUT(47 downto 0) => NLW_DSP48E1_inst_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_DSP48E1_inst_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_DSP_Hardware_my_Filter_0_0_my_DSP_3 is
  port (
    P : out STD_LOGIC_VECTOR ( 47 downto 0 );
    CLK : in STD_LOGIC;
    B_IN : in STD_LOGIC_VECTOR ( 17 downto 0 );
    DSP48E1_inst_0 : in STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of my_DSP_Hardware_my_Filter_0_0_my_DSP_3 : entity is "my_DSP";
end my_DSP_Hardware_my_Filter_0_0_my_DSP_3;

architecture STRUCTURE of my_DSP_Hardware_my_Filter_0_0_my_DSP_3 is
  signal NLW_DSP48E1_inst_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_MULTSIGNIN_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_DSP48E1_inst_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_DSP48E1_inst_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_DSP48E1_inst_PCIN_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_DSP48E1_inst_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of DSP48E1_inst : label is "PRIMITIVE";
begin
DSP48E1_inst: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 0,
      ALUMODEREG => 1,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 1,
      CARRYINSELREG => 1,
      CREG => 1,
      DREG => 0,
      INMODEREG => 1,
      IS_ALUMODE_INVERTED => B"0000",
      IS_CARRYIN_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_INMODE_INVERTED => B"00000",
      IS_OPMODE_INVERTED => B"0000000",
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 1,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"111110001110111000011000101100",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_DSP48E1_inst_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B_IN(17 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_DSP48E1_inst_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => DSP48E1_inst_0(47 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_DSP48E1_inst_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_DSP48E1_inst_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '1',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '1',
      CEB1 => '1',
      CEB2 => '1',
      CEC => '1',
      CECARRYIN => '1',
      CECTRL => '1',
      CED => '0',
      CEINMODE => '1',
      CEM => '1',
      CEP => '1',
      CLK => CLK,
      D(24 downto 0) => B"1111111111111111111111111",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => NLW_DSP48E1_inst_MULTSIGNIN_UNCONNECTED,
      MULTSIGNOUT => NLW_DSP48E1_inst_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_DSP48E1_inst_OVERFLOW_UNCONNECTED,
      P(47 downto 0) => P(47 downto 0),
      PATTERNBDETECT => NLW_DSP48E1_inst_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_DSP48E1_inst_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => NLW_DSP48E1_inst_PCIN_UNCONNECTED(47 downto 0),
      PCOUT(47 downto 0) => NLW_DSP48E1_inst_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_DSP48E1_inst_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_DSP_Hardware_my_Filter_0_0_my_DSP_4 is
  port (
    P : out STD_LOGIC_VECTOR ( 47 downto 0 );
    CLK : in STD_LOGIC;
    B_IN : in STD_LOGIC_VECTOR ( 17 downto 0 );
    DSP48E1_inst_0 : in STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of my_DSP_Hardware_my_Filter_0_0_my_DSP_4 : entity is "my_DSP";
end my_DSP_Hardware_my_Filter_0_0_my_DSP_4;

architecture STRUCTURE of my_DSP_Hardware_my_Filter_0_0_my_DSP_4 is
  signal NLW_DSP48E1_inst_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_MULTSIGNIN_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_DSP48E1_inst_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_DSP48E1_inst_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_DSP48E1_inst_PCIN_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_DSP48E1_inst_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of DSP48E1_inst : label is "PRIMITIVE";
begin
DSP48E1_inst: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 0,
      ALUMODEREG => 1,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 1,
      CARRYINSELREG => 1,
      CREG => 1,
      DREG => 0,
      INMODEREG => 1,
      IS_ALUMODE_INVERTED => B"0000",
      IS_CARRYIN_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_INMODE_INVERTED => B"00000",
      IS_OPMODE_INVERTED => B"0000000",
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 1,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"111110000101111010111000101110",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_DSP48E1_inst_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B_IN(17 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_DSP48E1_inst_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => DSP48E1_inst_0(47 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_DSP48E1_inst_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_DSP48E1_inst_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '1',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '1',
      CEB1 => '1',
      CEB2 => '1',
      CEC => '1',
      CECARRYIN => '1',
      CECTRL => '1',
      CED => '0',
      CEINMODE => '1',
      CEM => '1',
      CEP => '1',
      CLK => CLK,
      D(24 downto 0) => B"1111111111111111111111111",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => NLW_DSP48E1_inst_MULTSIGNIN_UNCONNECTED,
      MULTSIGNOUT => NLW_DSP48E1_inst_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_DSP48E1_inst_OVERFLOW_UNCONNECTED,
      P(47 downto 0) => P(47 downto 0),
      PATTERNBDETECT => NLW_DSP48E1_inst_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_DSP48E1_inst_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => NLW_DSP48E1_inst_PCIN_UNCONNECTED(47 downto 0),
      PCOUT(47 downto 0) => NLW_DSP48E1_inst_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_DSP48E1_inst_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_DSP_Hardware_my_Filter_0_0_my_DSP_5 is
  port (
    P_OUT48 : out STD_LOGIC_VECTOR ( 47 downto 0 );
    CLK : in STD_LOGIC;
    B_IN : in STD_LOGIC_VECTOR ( 17 downto 0 );
    P : in STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of my_DSP_Hardware_my_Filter_0_0_my_DSP_5 : entity is "my_DSP";
end my_DSP_Hardware_my_Filter_0_0_my_DSP_5;

architecture STRUCTURE of my_DSP_Hardware_my_Filter_0_0_my_DSP_5 is
  signal NLW_DSP48E1_inst_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_MULTSIGNIN_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_DSP48E1_inst_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_DSP48E1_inst_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_DSP48E1_inst_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_DSP48E1_inst_PCIN_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_DSP48E1_inst_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of DSP48E1_inst : label is "PRIMITIVE";
begin
DSP48E1_inst: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 0,
      ALUMODEREG => 1,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 1,
      CARRYINSELREG => 1,
      CREG => 1,
      DREG => 0,
      INMODEREG => 1,
      IS_ALUMODE_INVERTED => B"0000",
      IS_CARRYIN_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_INMODE_INVERTED => B"00000",
      IS_OPMODE_INVERTED => B"0000000",
      MASK => X"3FFFFFFFFFFF",
      MREG => 1,
      OPMODEREG => 1,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"111110000001011111110101111010",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_DSP48E1_inst_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B_IN(17 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_DSP48E1_inst_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => P(47 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_DSP48E1_inst_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_DSP48E1_inst_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '1',
      CEA2 => '1',
      CEAD => '0',
      CEALUMODE => '1',
      CEB1 => '1',
      CEB2 => '1',
      CEC => '1',
      CECARRYIN => '1',
      CECTRL => '1',
      CED => '0',
      CEINMODE => '1',
      CEM => '1',
      CEP => '1',
      CLK => CLK,
      D(24 downto 0) => B"1111111111111111111111111",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => NLW_DSP48E1_inst_MULTSIGNIN_UNCONNECTED,
      MULTSIGNOUT => NLW_DSP48E1_inst_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_DSP48E1_inst_OVERFLOW_UNCONNECTED,
      P(47 downto 0) => P_OUT48(47 downto 0),
      PATTERNBDETECT => NLW_DSP48E1_inst_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_DSP48E1_inst_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => NLW_DSP48E1_inst_PCIN_UNCONNECTED(47 downto 0),
      PCOUT(47 downto 0) => NLW_DSP48E1_inst_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_DSP48E1_inst_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_DSP_Hardware_my_Filter_0_0_my_Filter is
  port (
    P_OUT48 : out STD_LOGIC_VECTOR ( 47 downto 0 );
    CLK : in STD_LOGIC;
    B_IN : in STD_LOGIC_VECTOR ( 17 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of my_DSP_Hardware_my_Filter_0_0_my_Filter : entity is "my_Filter";
end my_DSP_Hardware_my_Filter_0_0_my_Filter;

architecture STRUCTURE of my_DSP_Hardware_my_Filter_0_0_my_Filter is
  signal P0 : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal P1 : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal P2 : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal P3 : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal P4 : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal P5 : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
dsp0: entity work.my_DSP_Hardware_my_Filter_0_0_my_DSP
     port map (
      B_IN(17 downto 0) => B_IN(17 downto 0),
      CLK => CLK,
      P(47 downto 0) => P0(47 downto 0)
    );
dsp1: entity work.my_DSP_Hardware_my_Filter_0_0_my_DSP_0
     port map (
      B_IN(17 downto 0) => B_IN(17 downto 0),
      CLK => CLK,
      DSP48E1_inst_0(47 downto 0) => P0(47 downto 0),
      P(47 downto 0) => P1(47 downto 0)
    );
dsp2: entity work.my_DSP_Hardware_my_Filter_0_0_my_DSP_1
     port map (
      B_IN(17 downto 0) => B_IN(17 downto 0),
      CLK => CLK,
      DSP48E1_inst_0(47 downto 0) => P1(47 downto 0),
      P(47 downto 0) => P2(47 downto 0)
    );
dsp3: entity work.my_DSP_Hardware_my_Filter_0_0_my_DSP_2
     port map (
      B_IN(17 downto 0) => B_IN(17 downto 0),
      CLK => CLK,
      DSP48E1_inst_0(47 downto 0) => P2(47 downto 0),
      P(47 downto 0) => P3(47 downto 0)
    );
dsp4: entity work.my_DSP_Hardware_my_Filter_0_0_my_DSP_3
     port map (
      B_IN(17 downto 0) => B_IN(17 downto 0),
      CLK => CLK,
      DSP48E1_inst_0(47 downto 0) => P3(47 downto 0),
      P(47 downto 0) => P4(47 downto 0)
    );
dsp5: entity work.my_DSP_Hardware_my_Filter_0_0_my_DSP_4
     port map (
      B_IN(17 downto 0) => B_IN(17 downto 0),
      CLK => CLK,
      DSP48E1_inst_0(47 downto 0) => P4(47 downto 0),
      P(47 downto 0) => P5(47 downto 0)
    );
dsp6: entity work.my_DSP_Hardware_my_Filter_0_0_my_DSP_5
     port map (
      B_IN(17 downto 0) => B_IN(17 downto 0),
      CLK => CLK,
      P(47 downto 0) => P5(47 downto 0),
      P_OUT48(47 downto 0) => P_OUT48(47 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_DSP_Hardware_my_Filter_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    B_IN : in STD_LOGIC_VECTOR ( 17 downto 0 );
    P_OUT16 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    P_OUT48 : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of my_DSP_Hardware_my_Filter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of my_DSP_Hardware_my_Filter_0_0 : entity is "my_DSP_Hardware_my_Filter_0_0,my_Filter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of my_DSP_Hardware_my_Filter_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of my_DSP_Hardware_my_Filter_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of my_DSP_Hardware_my_Filter_0_0 : entity is "my_Filter,Vivado 2018.2";
end my_DSP_Hardware_my_Filter_0_0;

architecture STRUCTURE of my_DSP_Hardware_my_Filter_0_0 is
  signal \^p_out48\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN my_DSP_Hardware_my_AD_Converter_0_0_adc_clk";
  attribute X_INTERFACE_INFO of RST : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of RST : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW";
begin
  P_OUT16(15) <= \^p_out48\(47);
  P_OUT16(14 downto 0) <= \^p_out48\(40 downto 26);
  P_OUT48(47 downto 0) <= \^p_out48\(47 downto 0);
inst: entity work.my_DSP_Hardware_my_Filter_0_0_my_Filter
     port map (
      B_IN(17 downto 0) => B_IN(17 downto 0),
      CLK => CLK,
      P_OUT48(47 downto 0) => \^p_out48\(47 downto 0)
    );
end STRUCTURE;
