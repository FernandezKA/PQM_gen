-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Apr 23 16:34:33 2022
-- Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top mult_14_14 -prefix
--               mult_14_14_ mult_14_14_sim_netlist.vhdl
-- Design      : mult_14_14
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
SqiI9MI7dwg4e1OkB1iKKQbm0QxH0sN3ATE8vEofp9hFSqwj5yRUn++GjQIRkJy0Z/+E8aX7kj2E
DleYmUt9STaNpmdtHBXoQWR+p30QGtrXAFPqzUmaedg4wHoBmPecFBoKca/BpkgpQPF1+5Mhdhu7
8hrGwMnOODqXF1en/aSIDz4pH8WHOSKYVBPaPLeuXotyyU1ZRKgLPZETvn1mZsgSdhqZ4durj9y1
mOnHlnT6ifyL0MAILakv6kgF3w69Ln9knAdQ+5GVc3SlPG09wTnTIR7+VpooWOFG5Wqx4HbocBDQ
clCd/NTuCJn1wQDIUj0lFNg7G0VUMY4rukCeig==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
UYc7i4L/qAL8LM9qPiUnJclMl3ab/39HZKTN32hfqCy3iDCMfuXxxrhvojFb/PWFAr6cfHbV9zC0
e3JwumPNyeAE+46vgLisYnkGgubs6Ko1PyTYQtU7FAFp7blUa82+QqPnpsRySRdizOHA/c98sq4l
9mtZGvwuoqsmjd5YxwcEMDOdpg7ih+n0kQJKOF0HxX6iJMJN38ALS1nm/JGrJ0Jqi4a7nfpXT1o3
rbXTbzq0KEefMMknPIRczscIZ8cv0c8uSsszHO9ysY39VowEDlgP/dUxTQnyBKTjHEnhpfFc9uSc
vr2SuPS9Uyv2ZSj4tAWYrLmduj0g0VHeDrMdEw==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12192)
`protect data_block
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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mult_14_14_mult_gen_v12_0_13 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 13 downto 0 );
    B : in STD_LOGIC_VECTOR ( 13 downto 0 );
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    ZERO_DETECT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    P : out STD_LOGIC_VECTOR ( 13 downto 0 );
    PCASC : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of mult_14_14_mult_gen_v12_0_13 : entity is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of mult_14_14_mult_gen_v12_0_13 : entity is 14;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of mult_14_14_mult_gen_v12_0_13 : entity is 0;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of mult_14_14_mult_gen_v12_0_13 : entity is "10000001";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of mult_14_14_mult_gen_v12_0_13 : entity is 14;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of mult_14_14_mult_gen_v12_0_13 : entity is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of mult_14_14_mult_gen_v12_0_13 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of mult_14_14_mult_gen_v12_0_13 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of mult_14_14_mult_gen_v12_0_13 : entity is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of mult_14_14_mult_gen_v12_0_13 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of mult_14_14_mult_gen_v12_0_13 : entity is 3;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of mult_14_14_mult_gen_v12_0_13 : entity is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of mult_14_14_mult_gen_v12_0_13 : entity is 1;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of mult_14_14_mult_gen_v12_0_13 : entity is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of mult_14_14_mult_gen_v12_0_13 : entity is 27;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of mult_14_14_mult_gen_v12_0_13 : entity is 14;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of mult_14_14_mult_gen_v12_0_13 : entity is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of mult_14_14_mult_gen_v12_0_13 : entity is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of mult_14_14_mult_gen_v12_0_13 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of mult_14_14_mult_gen_v12_0_13 : entity is "zynq";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mult_14_14_mult_gen_v12_0_13 : entity is "yes";
end mult_14_14_mult_gen_v12_0_13;

architecture STRUCTURE of mult_14_14_mult_gen_v12_0_13 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_i_mult_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_i_mult_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE of i_mult : label is 0;
  attribute C_A_WIDTH of i_mult : label is 14;
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
  attribute C_OUT_HIGH of i_mult : label is 27;
  attribute C_OUT_LOW of i_mult : label is 14;
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
i_mult: entity work.mult_14_14_mult_gen_v12_0_13_viv
     port map (
      A(13 downto 0) => A(13 downto 0),
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
entity mult_14_14 is
  port (
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 13 downto 0 );
    B : in STD_LOGIC_VECTOR ( 13 downto 0 );
    P : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of mult_14_14 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of mult_14_14 : entity is "mult_14_14,mult_gen_v12_0_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of mult_14_14 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of mult_14_14 : entity is "mult_gen_v12_0_13,Vivado 2017.4";
end mult_14_14;

architecture STRUCTURE of mult_14_14 is
  signal NLW_U0_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_U0_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of U0 : label is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 14;
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
  attribute C_OUT_HIGH of U0 : label is 27;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of U0 : label is 14;
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
U0: entity work.mult_14_14_mult_gen_v12_0_13
     port map (
      A(13 downto 0) => A(13 downto 0),
      B(13 downto 0) => B(13 downto 0),
      CE => '1',
      CLK => CLK,
      P(13 downto 0) => P(13 downto 0),
      PCASC(47 downto 0) => NLW_U0_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_U0_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
