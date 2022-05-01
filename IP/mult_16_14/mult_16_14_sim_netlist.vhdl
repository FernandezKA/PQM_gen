-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Apr 23 16:34:49 2022
-- Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top mult_16_14 -prefix
--               mult_16_14_ mult_16_14_sim_netlist.vhdl
-- Design      : mult_16_14
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
CvmaYyJzAT4gGJRlCkE1yXt5Lv9gJbr2gC0wBzixkhI3TupXRLTg9s4Z9WVWp43QDkUuM3VRZjAj
RVnqESt3JA==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
hHyS2uxRkJ6sHR79RwG8dxYfMwySDoNzo0ZpVSoiAp/93R212I5J1LxM+7EujDw/cO/x9djlyxbz
erzC6/tIqQ2nS2hUZANmmER9YkiA1RlXlIqDOWo8pOFHNj1c4jf7Zdq7OJMDPvKF+fLgmk5Lu9Y0
15oIyfQw7L+gXpW1qEU=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Cfhh7YIOGyVJiZpd5j8xa2ugbHZdDDpkNcw6vvVCCgnGCfzlen3wlGk0omzzJqyVapnfg0aPFCVf
eH/noQVGu1bQkowx0JKcNE5x1v5DKH//UNI+lq09SNF0WKlMcTAGlNSUzO8kgVv9uNbKUHDXodcD
5iGh6bHMhVPSu1QKpTfJlIMd2CMz0JfDQiVbfTaAGKvrQhaqVte7pYpnqiXM7povPwt/ntWHBH4s
XSF4J4eDVLMuQmQNy3vrqFdEUqmQFtLWgNRpG2fwo19Y2lRzT3ux5SiA0Iv55uR6x7AG21x8BZlD
JC102ufirdrREfWUzlClY8zmr+TUHpTF/SgPMw==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
UWceDgHVHZAg17Yudaw03bncVn75AJ6y0RYlYeqdZU3kMG9E1W6q5REaQAI7sMZSrC2g0zavsx4w
utskoq80P2avoebtdvBfjr/nBCQqUN3AvM3GSk85froboZgk4fCQ8UtEj2Qk7ob+ox/md7d9P9dw
2YULi+eG04dUc1g45wwF0ZoZdARk7Ml+fXMnm7zxmvqVieAEsVq6ETZN/P0pwvIpAakLTayKriGC
qcrb1S28bOuV+Na/FX9rxN6hM5aK7vSdFqja5GGs32r9UVRIkX6i7uqS9pWQDR0Qa31W3z6wrRrT
+2wzEwNMDKYuWVIM1FQo/Tp0NKa1Y+kyjahSGA==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
tLsJPLnIUk5FSxPTGLkNhAFldHrP7oFH8h39nfqyEmnC/AmGzR3fePfCEcee3I4TYySABpWhyXIf
m1jGiCuHfIpFkF2EJqjWmBev0bD33cbw1av2xtJRFa5gaQjxChO9URfjedFvCQWWwjlxejc9nD0N
O0V2XUDQxd573YmSBuByzshlxt3bujEd6Xeeb8N8NI8c2ZsfY4693LGdb3k6gtY9ZEoo4XuYVt6n
S2tNFVJTfQjyBEXbuCPqpwGf6bPdy2SKvTE/s4rSIVTO08J6bXDaEOBUGg13XVoJJqrayiJRVuQL
LhoiPzgOqS6ude1uUaMHE/SN9X/vt/6uOsOl2w==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
jgk19ieS+ZYiySHKvgAHMus0OAx0HPJ59p64LMaYK8CyW0wSM8LIn++sFz9tsOBdLj2gb8IKpSVr
SOX9XXXM2pQFSME7x8q0m+EPg9m1+ghIpW4bU/w4zVq4NBjYydZCI0Hpy+X3op0a3+eENVEw5SoK
4R/zOL7aV/2nZ//wkaw=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
L/BPRr/PHH5da1O06dKRr5ST8eskM6lzR1UPuTvZQ6RCsFEjTD1HgyqjW7/ypnIq7V5TYDC553+Y
rJnEENzDc6RSpzenrYxw7NrURpUedIWlCc/PEf5Zq9gu1ESkpND7t98rc+uiAz7zsn/pHD/K50NR
q9l/gcWkOCgArmADo1Lw9usrfZ8ECIPKY2kLxeTYbh4fsrCpPQsQUk4NxX3N1Q0h3RRUCdHSFc0O
lvGip/vd24OK8zXDMaQv4fPmgToFQMUvLrJXErEUeRlkpxkcX6g6Zu4RMWwwmkNIfZHpc5K8Q3RL
MMc5rARUSXbNbpf28H3iyAMZ0y+EgI0CrKwooA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
kTH1N6q7lEX81gjUnL0ZIzKTXGlSh5Vh9S13LLSCi0oMTnpcCTpUQIPv6aSUqMkaSHFmyie+S+n2
B8FcHnPYt84H6se+/PqPlfPjz+eAE93VkK+wTTT28DN7sT1y8UvTal5wx9JQrKvIst/IXUg5djeA
tBdofe5TRkcv47x/piw2kIGbQ7IQaBBE3xQ8q4TEaNcJq4vS77w+03EM6I+u/4Qsa2kWITSsJcgV
o5eY/UcDCAWs02o0rg49NZj33utVO+EMbV9/TtrOrY9QNs1HeIbGfWbySpkDaWbtC4PcuaR8DtYh
1AB/s1Q94uDHGxH5vHy4ncU1tR4hYshm/v0I/w==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ZQSXDGI2EBDX5GGt0fSc6clihMGUA69xLWEttNgo4tyUrYI6Vjkci6PwYsxYtXWtLmql9rSW8J79
k+MwnVvvzUweT1Vd5t47U272k6v8lJacWxIzE5COzcOIXJp1FY5Tzp5+KsDvmc+EDMBz6FAc/TAg
GVFV3kqj2jW1NRR2yIvy8yrW/vbCLqYo9/wpqBPH5jzEzTBCaEYTXOagALhvgek8+sJhmQT0v1BB
xaeHUmiwoDeZXL2rPdgC4pg4P0GL0gXSv9SBdzHZOmfN3Dt+BXK7D4NUy1ytOR9GDJtGBP23Iaxa
52/braZt3fX90h2FxkCLNwy1s9dV9OIsiL9uuA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12000)
`protect data_block
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
qVcTpWE0GUcrmHR8O1s=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mult_16_14_mult_gen_v12_0_13 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 13 downto 0 );
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    ZERO_DETECT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    P : out STD_LOGIC_VECTOR ( 13 downto 0 );
    PCASC : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of mult_16_14_mult_gen_v12_0_13 : entity is 1;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of mult_16_14_mult_gen_v12_0_13 : entity is 16;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of mult_16_14_mult_gen_v12_0_13 : entity is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of mult_16_14_mult_gen_v12_0_13 : entity is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of mult_16_14_mult_gen_v12_0_13 : entity is 14;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of mult_16_14_mult_gen_v12_0_13 : entity is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of mult_16_14_mult_gen_v12_0_13 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of mult_16_14_mult_gen_v12_0_13 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of mult_16_14_mult_gen_v12_0_13 : entity is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of mult_16_14_mult_gen_v12_0_13 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of mult_16_14_mult_gen_v12_0_13 : entity is 3;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of mult_16_14_mult_gen_v12_0_13 : entity is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of mult_16_14_mult_gen_v12_0_13 : entity is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of mult_16_14_mult_gen_v12_0_13 : entity is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of mult_16_14_mult_gen_v12_0_13 : entity is 28;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of mult_16_14_mult_gen_v12_0_13 : entity is 15;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of mult_16_14_mult_gen_v12_0_13 : entity is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of mult_16_14_mult_gen_v12_0_13 : entity is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of mult_16_14_mult_gen_v12_0_13 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of mult_16_14_mult_gen_v12_0_13 : entity is "zynq";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mult_16_14_mult_gen_v12_0_13 : entity is "yes";
end mult_16_14_mult_gen_v12_0_13;

architecture STRUCTURE of mult_16_14_mult_gen_v12_0_13 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_i_mult_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_i_mult_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE of i_mult : label is 1;
  attribute C_A_WIDTH of i_mult : label is 16;
  attribute C_B_TYPE of i_mult : label is 0;
  attribute C_B_VALUE of i_mult : label is "10000001";
  attribute C_B_WIDTH of i_mult : label is 14;
  attribute C_CCM_IMP of i_mult : label is 0;
  attribute C_CE_OVERRIDES_SCLR of i_mult : label is 0;
  attribute C_HAS_CE of i_mult : label is 0;
  attribute C_HAS_SCLR of i_mult : label is 0;
  attribute C_HAS_ZERO_DETECT of i_mult : label is 0;
  attribute C_LATENCY of i_mult : label is 3;
  attribute C_MODEL_TYPE of i_mult : label is 0;
  attribute C_MULT_TYPE of i_mult : label is 1;
  attribute C_OPTIMIZE_GOAL of i_mult : label is 1;
  attribute C_OUT_HIGH of i_mult : label is 28;
  attribute C_OUT_LOW of i_mult : label is 15;
  attribute C_ROUND_OUTPUT of i_mult : label is 0;
  attribute C_ROUND_PT of i_mult : label is 0;
  attribute C_VERBOSITY of i_mult : label is 0;
  attribute C_XDEVICEFAMILY of i_mult : label is "zynq";
  attribute downgradeipidentifiedwarnings of i_mult : label is "yes";
begin
  PCASC(47) <= \<const0>\;
  PCASC(46) <= \<const0>\;
  PCASC(45) <= \<const0>\;
  PCASC(44) <= \<const0>\;
  PCASC(43) <= \<const0>\;
  PCASC(42) <= \<const0>\;
  PCASC(41) <= \<const0>\;
  PCASC(40) <= \<const0>\;
  PCASC(39) <= \<const0>\;
  PCASC(38) <= \<const0>\;
  PCASC(37) <= \<const0>\;
  PCASC(36) <= \<const0>\;
  PCASC(35) <= \<const0>\;
  PCASC(34) <= \<const0>\;
  PCASC(33) <= \<const0>\;
  PCASC(32) <= \<const0>\;
  PCASC(31) <= \<const0>\;
  PCASC(30) <= \<const0>\;
  PCASC(29) <= \<const0>\;
  PCASC(28) <= \<const0>\;
  PCASC(27) <= \<const0>\;
  PCASC(26) <= \<const0>\;
  PCASC(25) <= \<const0>\;
  PCASC(24) <= \<const0>\;
  PCASC(23) <= \<const0>\;
  PCASC(22) <= \<const0>\;
  PCASC(21) <= \<const0>\;
  PCASC(20) <= \<const0>\;
  PCASC(19) <= \<const0>\;
  PCASC(18) <= \<const0>\;
  PCASC(17) <= \<const0>\;
  PCASC(16) <= \<const0>\;
  PCASC(15) <= \<const0>\;
  PCASC(14) <= \<const0>\;
  PCASC(13) <= \<const0>\;
  PCASC(12) <= \<const0>\;
  PCASC(11) <= \<const0>\;
  PCASC(10) <= \<const0>\;
  PCASC(9) <= \<const0>\;
  PCASC(8) <= \<const0>\;
  PCASC(7) <= \<const0>\;
  PCASC(6) <= \<const0>\;
  PCASC(5) <= \<const0>\;
  PCASC(4) <= \<const0>\;
  PCASC(3) <= \<const0>\;
  PCASC(2) <= \<const0>\;
  PCASC(1) <= \<const0>\;
  PCASC(0) <= \<const0>\;
  ZERO_DETECT(1) <= \<const0>\;
  ZERO_DETECT(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
i_mult: entity work.mult_16_14_mult_gen_v12_0_13_viv
     port map (
      A(15 downto 0) => A(15 downto 0),
      B(13 downto 0) => B(13 downto 0),
      CE => '0',
      CLK => CLK,
      P(13 downto 0) => P(13 downto 0),
      PCASC(47 downto 0) => NLW_i_mult_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_i_mult_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mult_16_14 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 13 downto 0 );
    P : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mult_16_14 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mult_16_14 : entity is "mult_16_14,mult_gen_v12_0_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mult_16_14 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mult_16_14 : entity is "mult_gen_v12_0_13,Vivado 2017.4";
end mult_16_14;

architecture STRUCTURE of mult_16_14 is
  signal NLW_U0_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_U0_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of U0 : label is 1;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 16;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of U0 : label is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of U0 : label is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of U0 : label is 14;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of U0 : label is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of U0 : label is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of U0 : label is 3;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of U0 : label is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of U0 : label is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of U0 : label is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of U0 : label is 28;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of U0 : label is 15;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of U0 : label is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of U0 : label is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000";
  attribute x_interface_info of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute x_interface_parameter of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute x_interface_info of B : signal is "xilinx.com:signal:data:1.0 b_intf DATA";
  attribute x_interface_parameter of B : signal is "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef";
  attribute x_interface_info of P : signal is "xilinx.com:signal:data:1.0 p_intf DATA";
  attribute x_interface_parameter of P : signal is "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef";
begin
U0: entity work.mult_16_14_mult_gen_v12_0_13
     port map (
      A(15 downto 0) => A(15 downto 0),
      B(13 downto 0) => B(13 downto 0),
      CE => '1',
      CLK => CLK,
      P(13 downto 0) => P(13 downto 0),
      PCASC(47 downto 0) => NLW_U0_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_U0_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
