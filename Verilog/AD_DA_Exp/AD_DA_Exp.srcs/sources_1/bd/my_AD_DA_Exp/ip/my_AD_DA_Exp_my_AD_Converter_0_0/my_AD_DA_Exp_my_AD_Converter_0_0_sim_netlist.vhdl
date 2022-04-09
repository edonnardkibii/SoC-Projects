-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Nov 26 22:51:41 2020
-- Host        : LAPTOP-8T04MTTM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/kibii/OneDrive/Studienkolleg/Vivado/AD_DA_Exp/AD_DA_Exp.srcs/sources_1/bd/my_AD_DA_Exp/ip/my_AD_DA_Exp_my_AD_Converter_0_0/my_AD_DA_Exp_my_AD_Converter_0_0_sim_netlist.vhdl
-- Design      : my_AD_DA_Exp_my_AD_Converter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_AD_DA_Exp_my_AD_Converter_0_0_my_AD_Converter is
  port (
    adc_clk : out STD_LOGIC;
    adc_dat_a : out STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_dat_b : out STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_clk_p_i : in STD_LOGIC;
    adc_clk_n_i : in STD_LOGIC;
    adc_dat_a_i : in STD_LOGIC_VECTOR ( 15 downto 2 );
    adc_dat_b_i : in STD_LOGIC_VECTOR ( 15 downto 2 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of my_AD_DA_Exp_my_AD_Converter_0_0_my_AD_Converter : entity is "my_AD_Converter";
end my_AD_DA_Exp_my_AD_Converter_0_0_my_AD_Converter;

architecture STRUCTURE of my_AD_DA_Exp_my_AD_Converter_0_0_my_AD_Converter is
  signal \^adc_clk\ : STD_LOGIC;
  signal adc_clk_in : STD_LOGIC;
  signal \adc_dat_b[10]_i_1_n_0\ : STD_LOGIC;
  signal \adc_dat_b[11]_i_1_n_0\ : STD_LOGIC;
  signal \adc_dat_b[12]_i_1_n_0\ : STD_LOGIC;
  signal \adc_dat_b[13]_i_1_n_0\ : STD_LOGIC;
  signal \adc_dat_b[14]_i_1_n_0\ : STD_LOGIC;
  signal \adc_dat_b[2]_i_1_n_0\ : STD_LOGIC;
  signal \adc_dat_b[3]_i_1_n_0\ : STD_LOGIC;
  signal \adc_dat_b[4]_i_1_n_0\ : STD_LOGIC;
  signal \adc_dat_b[5]_i_1_n_0\ : STD_LOGIC;
  signal \adc_dat_b[6]_i_1_n_0\ : STD_LOGIC;
  signal \adc_dat_b[7]_i_1_n_0\ : STD_LOGIC;
  signal \adc_dat_b[8]_i_1_n_0\ : STD_LOGIC;
  signal \adc_dat_b[9]_i_1_n_0\ : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 14 downto 2 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of i_adc_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of i_clk : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of i_clk : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of i_clk : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of i_clk : label is "AUTO";
begin
  adc_clk <= \^adc_clk\;
\adc_dat_a[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a_i(10),
      O => p_1_out(10)
    );
\adc_dat_a[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a_i(11),
      O => p_1_out(11)
    );
\adc_dat_a[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a_i(12),
      O => p_1_out(12)
    );
\adc_dat_a[13]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a_i(13),
      O => p_1_out(13)
    );
\adc_dat_a[14]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a_i(14),
      O => p_1_out(14)
    );
\adc_dat_a[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a_i(2),
      O => p_1_out(2)
    );
\adc_dat_a[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a_i(3),
      O => p_1_out(3)
    );
\adc_dat_a[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a_i(4),
      O => p_1_out(4)
    );
\adc_dat_a[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a_i(5),
      O => p_1_out(5)
    );
\adc_dat_a[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a_i(6),
      O => p_1_out(6)
    );
\adc_dat_a[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a_i(7),
      O => p_1_out(7)
    );
\adc_dat_a[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a_i(8),
      O => p_1_out(8)
    );
\adc_dat_a[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a_i(9),
      O => p_1_out(9)
    );
\adc_dat_a_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_1_out(10),
      Q => adc_dat_a(8),
      R => '0'
    );
\adc_dat_a_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_1_out(11),
      Q => adc_dat_a(9),
      R => '0'
    );
\adc_dat_a_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_1_out(12),
      Q => adc_dat_a(10),
      R => '0'
    );
\adc_dat_a_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_1_out(13),
      Q => adc_dat_a(11),
      R => '0'
    );
\adc_dat_a_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_1_out(14),
      Q => adc_dat_a(12),
      R => '0'
    );
\adc_dat_a_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_a_i(15),
      Q => adc_dat_a(13),
      R => '0'
    );
\adc_dat_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_1_out(2),
      Q => adc_dat_a(0),
      R => '0'
    );
\adc_dat_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_1_out(3),
      Q => adc_dat_a(1),
      R => '0'
    );
\adc_dat_a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_1_out(4),
      Q => adc_dat_a(2),
      R => '0'
    );
\adc_dat_a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_1_out(5),
      Q => adc_dat_a(3),
      R => '0'
    );
\adc_dat_a_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_1_out(6),
      Q => adc_dat_a(4),
      R => '0'
    );
\adc_dat_a_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_1_out(7),
      Q => adc_dat_a(5),
      R => '0'
    );
\adc_dat_a_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_1_out(8),
      Q => adc_dat_a(6),
      R => '0'
    );
\adc_dat_a_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_1_out(9),
      Q => adc_dat_a(7),
      R => '0'
    );
\adc_dat_b[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b_i(10),
      O => \adc_dat_b[10]_i_1_n_0\
    );
\adc_dat_b[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b_i(11),
      O => \adc_dat_b[11]_i_1_n_0\
    );
\adc_dat_b[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b_i(12),
      O => \adc_dat_b[12]_i_1_n_0\
    );
\adc_dat_b[13]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b_i(13),
      O => \adc_dat_b[13]_i_1_n_0\
    );
\adc_dat_b[14]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b_i(14),
      O => \adc_dat_b[14]_i_1_n_0\
    );
\adc_dat_b[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b_i(2),
      O => \adc_dat_b[2]_i_1_n_0\
    );
\adc_dat_b[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b_i(3),
      O => \adc_dat_b[3]_i_1_n_0\
    );
\adc_dat_b[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b_i(4),
      O => \adc_dat_b[4]_i_1_n_0\
    );
\adc_dat_b[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b_i(5),
      O => \adc_dat_b[5]_i_1_n_0\
    );
\adc_dat_b[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b_i(6),
      O => \adc_dat_b[6]_i_1_n_0\
    );
\adc_dat_b[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b_i(7),
      O => \adc_dat_b[7]_i_1_n_0\
    );
\adc_dat_b[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b_i(8),
      O => \adc_dat_b[8]_i_1_n_0\
    );
\adc_dat_b[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_b_i(9),
      O => \adc_dat_b[9]_i_1_n_0\
    );
\adc_dat_b_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \adc_dat_b[10]_i_1_n_0\,
      Q => adc_dat_b(8),
      R => '0'
    );
\adc_dat_b_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \adc_dat_b[11]_i_1_n_0\,
      Q => adc_dat_b(9),
      R => '0'
    );
\adc_dat_b_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \adc_dat_b[12]_i_1_n_0\,
      Q => adc_dat_b(10),
      R => '0'
    );
\adc_dat_b_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \adc_dat_b[13]_i_1_n_0\,
      Q => adc_dat_b(11),
      R => '0'
    );
\adc_dat_b_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \adc_dat_b[14]_i_1_n_0\,
      Q => adc_dat_b(12),
      R => '0'
    );
\adc_dat_b_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_b_i(15),
      Q => adc_dat_b(13),
      R => '0'
    );
\adc_dat_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \adc_dat_b[2]_i_1_n_0\,
      Q => adc_dat_b(0),
      R => '0'
    );
\adc_dat_b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \adc_dat_b[3]_i_1_n_0\,
      Q => adc_dat_b(1),
      R => '0'
    );
\adc_dat_b_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \adc_dat_b[4]_i_1_n_0\,
      Q => adc_dat_b(2),
      R => '0'
    );
\adc_dat_b_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \adc_dat_b[5]_i_1_n_0\,
      Q => adc_dat_b(3),
      R => '0'
    );
\adc_dat_b_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \adc_dat_b[6]_i_1_n_0\,
      Q => adc_dat_b(4),
      R => '0'
    );
\adc_dat_b_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \adc_dat_b[7]_i_1_n_0\,
      Q => adc_dat_b(5),
      R => '0'
    );
\adc_dat_b_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \adc_dat_b[8]_i_1_n_0\,
      Q => adc_dat_b(6),
      R => '0'
    );
\adc_dat_b_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => \adc_dat_b[9]_i_1_n_0\,
      Q => adc_dat_b(7),
      R => '0'
    );
i_adc_buf: unisim.vcomponents.BUFG
     port map (
      I => adc_clk_in,
      O => \^adc_clk\
    );
i_clk: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => adc_clk_p_i,
      IB => adc_clk_n_i,
      O => adc_clk_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity my_AD_DA_Exp_my_AD_Converter_0_0 is
  port (
    adc_dat_a_i : in STD_LOGIC_VECTOR ( 15 downto 2 );
    adc_dat_b_i : in STD_LOGIC_VECTOR ( 15 downto 2 );
    adc_clk_p_i : in STD_LOGIC;
    adc_clk_n_i : in STD_LOGIC;
    adc_dat_a : out STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_dat_b : out STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_clk : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of my_AD_DA_Exp_my_AD_Converter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of my_AD_DA_Exp_my_AD_Converter_0_0 : entity is "my_AD_DA_Exp_my_AD_Converter_0_0,my_AD_Converter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of my_AD_DA_Exp_my_AD_Converter_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of my_AD_DA_Exp_my_AD_Converter_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of my_AD_DA_Exp_my_AD_Converter_0_0 : entity is "my_AD_Converter,Vivado 2018.2";
end my_AD_DA_Exp_my_AD_Converter_0_0;

architecture STRUCTURE of my_AD_DA_Exp_my_AD_Converter_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^adc_dat_a\ : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \^adc_dat_b\ : STD_LOGIC_VECTOR ( 15 downto 2 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of adc_clk : signal is "xilinx.com:signal:clock:1.0 adc_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of adc_clk : signal is "XIL_INTERFACENAME adc_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN my_AD_DA_Exp_my_AD_Converter_0_0_adc_clk";
begin
  adc_dat_a(15 downto 2) <= \^adc_dat_a\(15 downto 2);
  adc_dat_a(1) <= \<const0>\;
  adc_dat_a(0) <= \<const0>\;
  adc_dat_b(15 downto 2) <= \^adc_dat_b\(15 downto 2);
  adc_dat_b(1) <= \<const0>\;
  adc_dat_b(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.my_AD_DA_Exp_my_AD_Converter_0_0_my_AD_Converter
     port map (
      adc_clk => adc_clk,
      adc_clk_n_i => adc_clk_n_i,
      adc_clk_p_i => adc_clk_p_i,
      adc_dat_a(13 downto 0) => \^adc_dat_a\(15 downto 2),
      adc_dat_a_i(15 downto 2) => adc_dat_a_i(15 downto 2),
      adc_dat_b(13 downto 0) => \^adc_dat_b\(15 downto 2),
      adc_dat_b_i(15 downto 2) => adc_dat_b_i(15 downto 2)
    );
end STRUCTURE;
