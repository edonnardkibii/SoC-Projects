-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Dec  9 15:28:00 2020
-- Host        : LAPTOP-8T04MTTM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ my_DSP_Hardware_my_DA_Converter_0_0_sim_netlist.vhdl
-- Design      : my_DSP_Hardware_my_DA_Converter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_DA_Converter is
  port (
    dac_clk_o : out STD_LOGIC;
    dac_wrt_o : out STD_LOGIC;
    dac_sel_o : out STD_LOGIC;
    dac_rst_o : out STD_LOGIC;
    dac_dat_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_clk : in STD_LOGIC;
    dat_b_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dat_a_i : in STD_LOGIC_VECTOR ( 13 downto 0 );
    rstn_i : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_DA_Converter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_DA_Converter is
  signal RST0 : STD_LOGIC;
  signal dac_2clk_buf : STD_LOGIC;
  signal dac_2clk_out : STD_LOGIC;
  signal dac_2ph_buf : STD_LOGIC;
  signal dac_2ph_out : STD_LOGIC;
  signal dac_clk_buf : STD_LOGIC;
  signal dac_clk_fb : STD_LOGIC;
  signal dac_clk_fb_buf : STD_LOGIC;
  signal dac_clk_out : STD_LOGIC;
  signal dac_dat_a : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \dac_dat_a[10]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[11]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[12]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[13]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[14]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[2]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[3]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[4]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[5]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[6]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[7]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[8]_i_1_n_0\ : STD_LOGIC;
  signal \dac_dat_a[9]_i_1_n_0\ : STD_LOGIC;
  signal dac_dat_b : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal dac_locked : STD_LOGIC;
  signal dac_rst : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal NLW_i_dac_0_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_1_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_10_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_11_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_12_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_13_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_2_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_3_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_4_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_5_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_6_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_7_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_8_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_9_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_clk_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_plle2_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_plle2_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_plle2_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_plle2_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_plle2_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_i_dac_rst_R_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_rst_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_sel_S_UNCONNECTED : STD_LOGIC;
  signal NLW_i_dac_wrt_S_UNCONNECTED : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of i_dac1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of i_dac2_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of i_dac2ph_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of i_dac_0 : label is "PRIMITIVE";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of i_dac_0 : label is "FALSE";
  attribute BOX_TYPE of i_dac_1 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_1 : label is "FALSE";
  attribute BOX_TYPE of i_dac_10 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_10 : label is "FALSE";
  attribute BOX_TYPE of i_dac_11 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_11 : label is "FALSE";
  attribute BOX_TYPE of i_dac_12 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_12 : label is "FALSE";
  attribute BOX_TYPE of i_dac_13 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_13 : label is "FALSE";
  attribute BOX_TYPE of i_dac_2 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_2 : label is "FALSE";
  attribute BOX_TYPE of i_dac_3 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_3 : label is "FALSE";
  attribute BOX_TYPE of i_dac_4 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_4 : label is "FALSE";
  attribute BOX_TYPE of i_dac_5 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_5 : label is "FALSE";
  attribute BOX_TYPE of i_dac_6 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_6 : label is "FALSE";
  attribute BOX_TYPE of i_dac_7 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_7 : label is "FALSE";
  attribute BOX_TYPE of i_dac_8 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_8 : label is "FALSE";
  attribute BOX_TYPE of i_dac_9 : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_9 : label is "FALSE";
  attribute BOX_TYPE of i_dac_clk : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_clk : label is "FALSE";
  attribute BOX_TYPE of i_dac_plle2 : label is "PRIMITIVE";
  attribute BOX_TYPE of i_dac_rst : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_rst : label is "TRUE";
  attribute BOX_TYPE of i_dac_sel : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_sel : label is "FALSE";
  attribute BOX_TYPE of i_dac_wrt : label is "PRIMITIVE";
  attribute \__SRVAL\ of i_dac_wrt : label is "FALSE";
  attribute BOX_TYPE of i_dacfb_buf : label is "PRIMITIVE";
begin
\dac_dat_a[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_a_i(8),
      O => \dac_dat_a[10]_i_1_n_0\
    );
\dac_dat_a[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_a_i(9),
      O => \dac_dat_a[11]_i_1_n_0\
    );
\dac_dat_a[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_a_i(10),
      O => \dac_dat_a[12]_i_1_n_0\
    );
\dac_dat_a[13]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_a_i(11),
      O => \dac_dat_a[13]_i_1_n_0\
    );
\dac_dat_a[14]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_a_i(12),
      O => \dac_dat_a[14]_i_1_n_0\
    );
\dac_dat_a[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_a_i(0),
      O => \dac_dat_a[2]_i_1_n_0\
    );
\dac_dat_a[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_a_i(1),
      O => \dac_dat_a[3]_i_1_n_0\
    );
\dac_dat_a[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_a_i(2),
      O => \dac_dat_a[4]_i_1_n_0\
    );
\dac_dat_a[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_a_i(3),
      O => \dac_dat_a[5]_i_1_n_0\
    );
\dac_dat_a[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_a_i(4),
      O => \dac_dat_a[6]_i_1_n_0\
    );
\dac_dat_a[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_a_i(5),
      O => \dac_dat_a[7]_i_1_n_0\
    );
\dac_dat_a[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_a_i(6),
      O => \dac_dat_a[8]_i_1_n_0\
    );
\dac_dat_a[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_a_i(7),
      O => \dac_dat_a[9]_i_1_n_0\
    );
\dac_dat_a_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => \dac_dat_a[10]_i_1_n_0\,
      Q => dac_dat_a(10),
      R => '0'
    );
\dac_dat_a_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => \dac_dat_a[11]_i_1_n_0\,
      Q => dac_dat_a(11),
      R => '0'
    );
\dac_dat_a_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => \dac_dat_a[12]_i_1_n_0\,
      Q => dac_dat_a(12),
      R => '0'
    );
\dac_dat_a_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => \dac_dat_a[13]_i_1_n_0\,
      Q => dac_dat_a(13),
      R => '0'
    );
\dac_dat_a_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => \dac_dat_a[14]_i_1_n_0\,
      Q => dac_dat_a(14),
      R => '0'
    );
\dac_dat_a_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => dat_a_i(13),
      Q => dac_dat_a(15),
      R => '0'
    );
\dac_dat_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => \dac_dat_a[2]_i_1_n_0\,
      Q => dac_dat_a(2),
      R => '0'
    );
\dac_dat_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => \dac_dat_a[3]_i_1_n_0\,
      Q => dac_dat_a(3),
      R => '0'
    );
\dac_dat_a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => \dac_dat_a[4]_i_1_n_0\,
      Q => dac_dat_a(4),
      R => '0'
    );
\dac_dat_a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => \dac_dat_a[5]_i_1_n_0\,
      Q => dac_dat_a(5),
      R => '0'
    );
\dac_dat_a_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => \dac_dat_a[6]_i_1_n_0\,
      Q => dac_dat_a(6),
      R => '0'
    );
\dac_dat_a_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => \dac_dat_a[7]_i_1_n_0\,
      Q => dac_dat_a(7),
      R => '0'
    );
\dac_dat_a_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => \dac_dat_a[8]_i_1_n_0\,
      Q => dac_dat_a(8),
      R => '0'
    );
\dac_dat_a_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => \dac_dat_a[9]_i_1_n_0\,
      Q => dac_dat_a(9),
      R => '0'
    );
\dac_dat_b[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_b_i(8),
      O => p_1_out(10)
    );
\dac_dat_b[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_b_i(9),
      O => p_1_out(11)
    );
\dac_dat_b[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_b_i(10),
      O => p_1_out(12)
    );
\dac_dat_b[13]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_b_i(11),
      O => p_1_out(13)
    );
\dac_dat_b[14]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_b_i(12),
      O => p_1_out(14)
    );
\dac_dat_b[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_b_i(0),
      O => p_1_out(2)
    );
\dac_dat_b[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_b_i(1),
      O => p_1_out(3)
    );
\dac_dat_b[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_b_i(2),
      O => p_1_out(4)
    );
\dac_dat_b[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_b_i(3),
      O => p_1_out(5)
    );
\dac_dat_b[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_b_i(4),
      O => p_1_out(6)
    );
\dac_dat_b[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_b_i(5),
      O => p_1_out(7)
    );
\dac_dat_b[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_b_i(6),
      O => p_1_out(8)
    );
\dac_dat_b[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dat_b_i(7),
      O => p_1_out(9)
    );
\dac_dat_b_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => p_1_out(10),
      Q => dac_dat_b(10),
      R => '0'
    );
\dac_dat_b_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => p_1_out(11),
      Q => dac_dat_b(11),
      R => '0'
    );
\dac_dat_b_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => p_1_out(12),
      Q => dac_dat_b(12),
      R => '0'
    );
\dac_dat_b_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => p_1_out(13),
      Q => dac_dat_b(13),
      R => '0'
    );
\dac_dat_b_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => p_1_out(14),
      Q => dac_dat_b(14),
      R => '0'
    );
\dac_dat_b_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => dat_b_i(13),
      Q => dac_dat_b(15),
      R => '0'
    );
\dac_dat_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => p_1_out(2),
      Q => dac_dat_b(2),
      R => '0'
    );
\dac_dat_b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => p_1_out(3),
      Q => dac_dat_b(3),
      R => '0'
    );
\dac_dat_b_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => p_1_out(4),
      Q => dac_dat_b(4),
      R => '0'
    );
\dac_dat_b_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => p_1_out(5),
      Q => dac_dat_b(5),
      R => '0'
    );
\dac_dat_b_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => p_1_out(6),
      Q => dac_dat_b(6),
      R => '0'
    );
\dac_dat_b_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => p_1_out(7),
      Q => dac_dat_b(7),
      R => '0'
    );
\dac_dat_b_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => p_1_out(8),
      Q => dac_dat_b(8),
      R => '0'
    );
\dac_dat_b_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => p_1_out(9),
      Q => dac_dat_b(9),
      R => '0'
    );
dac_rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dac_locked,
      O => p_0_in
    );
dac_rst_reg: unisim.vcomponents.FDRE
     port map (
      C => dac_clk_buf,
      CE => '1',
      D => p_0_in,
      Q => dac_rst,
      R => '0'
    );
i_dac1_buf: unisim.vcomponents.BUFG
     port map (
      I => dac_clk_out,
      O => dac_clk_buf
    );
i_dac2_buf: unisim.vcomponents.BUFG
     port map (
      I => dac_2clk_out,
      O => dac_2clk_buf
    );
i_dac2ph_buf: unisim.vcomponents.BUFG
     port map (
      I => dac_2ph_out,
      O => dac_2ph_buf
    );
i_dac_0: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dac_clk_buf,
      CE => '1',
      D1 => dac_dat_b(2),
      D2 => dac_dat_a(2),
      Q => dac_dat_o(0),
      R => dac_rst,
      S => NLW_i_dac_0_S_UNCONNECTED
    );
i_dac_1: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dac_clk_buf,
      CE => '1',
      D1 => dac_dat_b(3),
      D2 => dac_dat_a(3),
      Q => dac_dat_o(1),
      R => dac_rst,
      S => NLW_i_dac_1_S_UNCONNECTED
    );
i_dac_10: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dac_clk_buf,
      CE => '1',
      D1 => dac_dat_b(12),
      D2 => dac_dat_a(12),
      Q => dac_dat_o(10),
      R => dac_rst,
      S => NLW_i_dac_10_S_UNCONNECTED
    );
i_dac_11: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dac_clk_buf,
      CE => '1',
      D1 => dac_dat_b(13),
      D2 => dac_dat_a(13),
      Q => dac_dat_o(11),
      R => dac_rst,
      S => NLW_i_dac_11_S_UNCONNECTED
    );
i_dac_12: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dac_clk_buf,
      CE => '1',
      D1 => dac_dat_b(14),
      D2 => dac_dat_a(14),
      Q => dac_dat_o(12),
      R => dac_rst,
      S => NLW_i_dac_12_S_UNCONNECTED
    );
i_dac_13: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dac_clk_buf,
      CE => '1',
      D1 => dac_dat_b(15),
      D2 => dac_dat_a(15),
      Q => dac_dat_o(13),
      R => dac_rst,
      S => NLW_i_dac_13_S_UNCONNECTED
    );
i_dac_2: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dac_clk_buf,
      CE => '1',
      D1 => dac_dat_b(4),
      D2 => dac_dat_a(4),
      Q => dac_dat_o(2),
      R => dac_rst,
      S => NLW_i_dac_2_S_UNCONNECTED
    );
i_dac_3: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dac_clk_buf,
      CE => '1',
      D1 => dac_dat_b(5),
      D2 => dac_dat_a(5),
      Q => dac_dat_o(3),
      R => dac_rst,
      S => NLW_i_dac_3_S_UNCONNECTED
    );
i_dac_4: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dac_clk_buf,
      CE => '1',
      D1 => dac_dat_b(6),
      D2 => dac_dat_a(6),
      Q => dac_dat_o(4),
      R => dac_rst,
      S => NLW_i_dac_4_S_UNCONNECTED
    );
i_dac_5: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dac_clk_buf,
      CE => '1',
      D1 => dac_dat_b(7),
      D2 => dac_dat_a(7),
      Q => dac_dat_o(5),
      R => dac_rst,
      S => NLW_i_dac_5_S_UNCONNECTED
    );
i_dac_6: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dac_clk_buf,
      CE => '1',
      D1 => dac_dat_b(8),
      D2 => dac_dat_a(8),
      Q => dac_dat_o(6),
      R => dac_rst,
      S => NLW_i_dac_6_S_UNCONNECTED
    );
i_dac_7: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dac_clk_buf,
      CE => '1',
      D1 => dac_dat_b(9),
      D2 => dac_dat_a(9),
      Q => dac_dat_o(7),
      R => dac_rst,
      S => NLW_i_dac_7_S_UNCONNECTED
    );
i_dac_8: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dac_clk_buf,
      CE => '1',
      D1 => dac_dat_b(10),
      D2 => dac_dat_a(10),
      Q => dac_dat_o(8),
      R => dac_rst,
      S => NLW_i_dac_8_S_UNCONNECTED
    );
i_dac_9: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dac_clk_buf,
      CE => '1',
      D1 => dac_dat_b(11),
      D2 => dac_dat_a(11),
      Q => dac_dat_o(9),
      R => dac_rst,
      S => NLW_i_dac_9_S_UNCONNECTED
    );
i_dac_clk: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dac_2ph_buf,
      CE => '1',
      D1 => '0',
      D2 => '1',
      Q => dac_clk_o,
      R => dac_rst,
      S => NLW_i_dac_clk_S_UNCONNECTED
    );
i_dac_plle2: unisim.vcomponents.PLLE2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT => 8,
      CLKFBOUT_PHASE => 0.000000,
      CLKIN1_PERIOD => 8.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE => 8,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT1_DIVIDE => 4,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT2_DIVIDE => 4,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => -45.000000,
      CLKOUT3_DIVIDE => 4,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      STARTUP_WAIT => "FALSE"
    )
        port map (
      CLKFBIN => dac_clk_fb_buf,
      CLKFBOUT => dac_clk_fb,
      CLKIN1 => adc_clk,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKOUT0 => dac_clk_out,
      CLKOUT1 => dac_2clk_out,
      CLKOUT2 => dac_2ph_out,
      CLKOUT3 => NLW_i_dac_plle2_CLKOUT3_UNCONNECTED,
      CLKOUT4 => NLW_i_dac_plle2_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_i_dac_plle2_CLKOUT5_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_i_dac_plle2_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_i_dac_plle2_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => dac_locked,
      PWRDWN => '0',
      RST => RST0
    );
i_dac_plle2_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn_i,
      O => RST0
    );
i_dac_rst: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dac_clk_buf,
      CE => '1',
      D1 => dac_rst,
      D2 => dac_rst,
      Q => dac_rst_o,
      R => NLW_i_dac_rst_R_UNCONNECTED,
      S => NLW_i_dac_rst_S_UNCONNECTED
    );
i_dac_sel: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dac_clk_buf,
      CE => '1',
      D1 => '1',
      D2 => '0',
      Q => dac_sel_o,
      R => dac_rst,
      S => NLW_i_dac_sel_S_UNCONNECTED
    );
i_dac_wrt: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => dac_2clk_buf,
      CE => '1',
      D1 => '0',
      D2 => '1',
      Q => dac_wrt_o,
      R => dac_rst,
      S => NLW_i_dac_wrt_S_UNCONNECTED
    );
i_dacfb_buf: unisim.vcomponents.BUFG
     port map (
      I => dac_clk_fb,
      O => dac_clk_fb_buf
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    rstn_i : in STD_LOGIC;
    adc_clk : in STD_LOGIC;
    dat_a_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dat_b_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dac_dat_o : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dac_wrt_o : out STD_LOGIC;
    dac_sel_o : out STD_LOGIC;
    dac_clk_o : out STD_LOGIC;
    dac_rst_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "my_DSP_Hardware_my_DA_Converter_0_0,my_DA_Converter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "my_DA_Converter,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of adc_clk : signal is "xilinx.com:signal:clock:1.0 adc_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of adc_clk : signal is "XIL_INTERFACENAME adc_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN my_DSP_Hardware_my_AD_Converter_0_0_adc_clk";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_DA_Converter
     port map (
      adc_clk => adc_clk,
      dac_clk_o => dac_clk_o,
      dac_dat_o(13 downto 0) => dac_dat_o(13 downto 0),
      dac_rst_o => dac_rst_o,
      dac_sel_o => dac_sel_o,
      dac_wrt_o => dac_wrt_o,
      dat_a_i(13 downto 0) => dat_a_i(15 downto 2),
      dat_b_i(13 downto 0) => dat_b_i(15 downto 2),
      rstn_i => rstn_i
    );
end STRUCTURE;
