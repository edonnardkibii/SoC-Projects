-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Dec  9 15:28:57 2020
-- Host        : LAPTOP-8T04MTTM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ my_DSP_Hardware_my_DSP_0_0_sim_netlist.vhdl
-- Design      : my_DSP_Hardware_my_DSP_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_DSP is
  port (
    P_OUT : out STD_LOGIC_VECTOR ( 47 downto 0 );
    CLK : in STD_LOGIC;
    B_IN : in STD_LOGIC_VECTOR ( 17 downto 0 );
    A_IN : in STD_LOGIC_VECTOR ( 24 downto 0 );
    C_IN : in STD_LOGIC_VECTOR ( 47 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_DSP;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_DSP is
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
      A(29 downto 25) => B"11111",
      A(24 downto 0) => A_IN(24 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_DSP48E1_inst_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B_IN(17 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_DSP48E1_inst_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => C_IN(47 downto 0),
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
      P(47 downto 0) => P_OUT(47 downto 0),
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    A_IN : in STD_LOGIC_VECTOR ( 24 downto 0 );
    B_IN : in STD_LOGIC_VECTOR ( 17 downto 0 );
    C_IN : in STD_LOGIC_VECTOR ( 47 downto 0 );
    P_OUT : out STD_LOGIC_VECTOR ( 47 downto 0 );
    P_OUT16 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "my_DSP_Hardware_my_DSP_0_0,my_DSP,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "my_DSP,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^p_out\ : STD_LOGIC_VECTOR ( 46 downto 0 );
  signal \^p_out16\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN my_DSP_Hardware_my_AD_Converter_0_0_adc_clk";
  attribute X_INTERFACE_INFO of RST : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of RST : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW";
begin
  P_OUT(47) <= \^p_out16\(15);
  P_OUT(46 downto 41) <= \^p_out\(46 downto 41);
  P_OUT(40 downto 26) <= \^p_out16\(14 downto 0);
  P_OUT(25 downto 0) <= \^p_out\(25 downto 0);
  P_OUT16(15 downto 0) <= \^p_out16\(15 downto 0);
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_DSP
     port map (
      A_IN(24 downto 0) => A_IN(24 downto 0),
      B_IN(17 downto 0) => B_IN(17 downto 0),
      CLK => CLK,
      C_IN(47 downto 0) => C_IN(47 downto 0),
      P_OUT(47) => \^p_out16\(15),
      P_OUT(46 downto 41) => \^p_out\(46 downto 41),
      P_OUT(40 downto 26) => \^p_out16\(14 downto 0),
      P_OUT(25 downto 0) => \^p_out\(25 downto 0)
    );
end STRUCTURE;
