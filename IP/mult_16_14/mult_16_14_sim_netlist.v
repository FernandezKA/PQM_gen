// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr 23 16:34:48 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mult_16_14 -prefix
//               mult_16_14_ mult_16_14_sim_netlist.v
// Design      : mult_16_14
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_16_14,mult_gen_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_13,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module mult_16_14
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [13:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [13:0]P;

  wire [15:0]A;
  wire [13:0]B;
  wire CLK;
  wire [13:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "14" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "28" *) 
  (* C_OUT_LOW = "15" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_16_14_mult_gen_v12_0_13 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "14" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "28" *) 
(* C_OUT_LOW = "15" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module mult_16_14_mult_gen_v12_0_13
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [15:0]A;
  input [13:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [13:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [13:0]B;
  wire CLK;
  wire [13:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "14" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "28" *) 
  (* C_OUT_LOW = "15" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_16_14_mult_gen_v12_0_13_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
CvmaYyJzAT4gGJRlCkE1yXt5Lv9gJbr2gC0wBzixkhI3TupXRLTg9s4Z9WVWp43QDkUuM3VRZjAj
RVnqESt3JA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hHyS2uxRkJ6sHR79RwG8dxYfMwySDoNzo0ZpVSoiAp/93R212I5J1LxM+7EujDw/cO/x9djlyxbz
erzC6/tIqQ2nS2hUZANmmER9YkiA1RlXlIqDOWo8pOFHNj1c4jf7Zdq7OJMDPvKF+fLgmk5Lu9Y0
15oIyfQw7L+gXpW1qEU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Cfhh7YIOGyVJiZpd5j8xa2ugbHZdDDpkNcw6vvVCCgnGCfzlen3wlGk0omzzJqyVapnfg0aPFCVf
eH/noQVGu1bQkowx0JKcNE5x1v5DKH//UNI+lq09SNF0WKlMcTAGlNSUzO8kgVv9uNbKUHDXodcD
5iGh6bHMhVPSu1QKpTfJlIMd2CMz0JfDQiVbfTaAGKvrQhaqVte7pYpnqiXM7povPwt/ntWHBH4s
XSF4J4eDVLMuQmQNy3vrqFdEUqmQFtLWgNRpG2fwo19Y2lRzT3ux5SiA0Iv55uR6x7AG21x8BZlD
JC102ufirdrREfWUzlClY8zmr+TUHpTF/SgPMw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UWceDgHVHZAg17Yudaw03bncVn75AJ6y0RYlYeqdZU3kMG9E1W6q5REaQAI7sMZSrC2g0zavsx4w
utskoq80P2avoebtdvBfjr/nBCQqUN3AvM3GSk85froboZgk4fCQ8UtEj2Qk7ob+ox/md7d9P9dw
2YULi+eG04dUc1g45wwF0ZoZdARk7Ml+fXMnm7zxmvqVieAEsVq6ETZN/P0pwvIpAakLTayKriGC
qcrb1S28bOuV+Na/FX9rxN6hM5aK7vSdFqja5GGs32r9UVRIkX6i7uqS9pWQDR0Qa31W3z6wrRrT
+2wzEwNMDKYuWVIM1FQo/Tp0NKa1Y+kyjahSGA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tLsJPLnIUk5FSxPTGLkNhAFldHrP7oFH8h39nfqyEmnC/AmGzR3fePfCEcee3I4TYySABpWhyXIf
m1jGiCuHfIpFkF2EJqjWmBev0bD33cbw1av2xtJRFa5gaQjxChO9URfjedFvCQWWwjlxejc9nD0N
O0V2XUDQxd573YmSBuByzshlxt3bujEd6Xeeb8N8NI8c2ZsfY4693LGdb3k6gtY9ZEoo4XuYVt6n
S2tNFVJTfQjyBEXbuCPqpwGf6bPdy2SKvTE/s4rSIVTO08J6bXDaEOBUGg13XVoJJqrayiJRVuQL
LhoiPzgOqS6ude1uUaMHE/SN9X/vt/6uOsOl2w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jgk19ieS+ZYiySHKvgAHMus0OAx0HPJ59p64LMaYK8CyW0wSM8LIn++sFz9tsOBdLj2gb8IKpSVr
SOX9XXXM2pQFSME7x8q0m+EPg9m1+ghIpW4bU/w4zVq4NBjYydZCI0Hpy+X3op0a3+eENVEw5SoK
4R/zOL7aV/2nZ//wkaw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L/BPRr/PHH5da1O06dKRr5ST8eskM6lzR1UPuTvZQ6RCsFEjTD1HgyqjW7/ypnIq7V5TYDC553+Y
rJnEENzDc6RSpzenrYxw7NrURpUedIWlCc/PEf5Zq9gu1ESkpND7t98rc+uiAz7zsn/pHD/K50NR
q9l/gcWkOCgArmADo1Lw9usrfZ8ECIPKY2kLxeTYbh4fsrCpPQsQUk4NxX3N1Q0h3RRUCdHSFc0O
lvGip/vd24OK8zXDMaQv4fPmgToFQMUvLrJXErEUeRlkpxkcX6g6Zu4RMWwwmkNIfZHpc5K8Q3RL
MMc5rARUSXbNbpf28H3iyAMZ0y+EgI0CrKwooA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UR7IoVOqkYQ8jSJvH22jclHRSg0iFjnk29EC0FLtZ4xAbMpI2Tm3Vk7SeiwIPkvx4IV2joVLWKnI
a0WM4YceVlQlvAIag74XdVsJl4O6rOeh20eu4o1DVi2Dg0Vk1W7WObm18ZZNz+C7AMS6ES9RY+2Z
eRwumc+BjhJs9pkrKIsvadlZFL4jVEySUHTw+8KUGOpWKLcJTze3D/zOSb7bS1EVAfu+M0K1UONK
l2Bs5yKXhgSDa35p9p5DCDaElzDtjAf6wUX80OZ7YLZlWJPlrhznLHnCX1WWgeQs+C87BHAouzig
sgf9hgm6QO2h+bPUDoK55q+nzjmH+1IVuF15rw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BSh9ElNs+v4wGeBDcH9dPTwZQnBMgSNxRkE8tjS/o5WbPms53wAGK4AR29LVkUfXs46HDzaAMvdc
XbAAGN6fIBlwFXym2iz0NHoWoMPXXzuR9GMhfJ6pEqrgx6z5TMZFvtUQfty8IcOqo+gPxMHPfk9Z
c1lrJ8anZuDuY6fp8dmv1Vdu3BIGgThlFVoQUF0hG4EgDcoTmQfZeq6azEI+atIxyTH40k7x5o/b
feQwOmuRdRiafteVnsRUN9X7PXWZVbSPf8fxu4B1VC8e1XaXF/SRS5vl05+ZH1qtBznfNvCHZzhe
ENUmuEcProQaePiFWiPE9yO4/r93qTs58LYWAA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8544)
`pragma protect data_block
CZBLhtxIk6RIKpJXCsLIB5niNJOI1nApZzeOIcs51XpsjEcXZkwVM06tYX1HGZq4iFeThgkxQtSk
0hela7eaJWPKH/KDydQjrjyPAtWBS0VzDg42g9DmiWE7+mxZ9HwF45g9ENXBSSvngtb+nZlsKuZ4
rygo8OGgGTtqY/S6Ogikh8kNnTS7NyJIlPzKYCraKzEeT7EOZ3Xbx86f1RtyMq83pJHehGofYBH1
GGsl/NgMoG+bwYA9xQ/pAFifwUQV+3ZDRPAQqdluKelFlZkXGJ+ptwGUNVyg4tgFktnz2VinmPlX
hKzlxKu/0axyJwJu5ep7uiwUDwN7XoF6BbdQpqtRT3QPsjl4sD6SH7VhtVLQdMbneW+nlMA+X5kJ
GYc/iJg+0BW6vP1BqbK+LaCz2KVhAIbkHY8XluAspw1a9I9n4lZj+eZLAMUcwVUXoMOlH8w8IQ7D
RLSQYXRUO6nHn5VIlSc7sOub3pbhKaNGyPF8zNFGScP4pf8Q1mZ/Vp3iUjZbtBdRHOSB5RgRZKwb
vSWA7fnjQqsVo9yVIx2hB2q49eSQXuwsjlM2b4c4sA/yzqjzva2wxI+JqdVoN8wVsZeUt6dX5oVr
o7wmYrAzz7up6Oyqx7dlDhkwTg03oVuEQMx2Hng5rumVKVnBU8uzBU1p3xsCTP6IXFu7jzREhMwG
HZXKKFQc43Xiq0RLlHpx7gD3ljMCodrSyBsaqo4Hw9QYvmSqtRaOOvjAOjSOCeLVBQOqqul3xDzr
GVGS3XCkKYU/piF4mQVT6CCYKhFg8JNfCeREKkveTcXz1qaUt9X8CsD84wV9TLkNcJssQS2HGhvu
kzsMkVevQOn5kVAEojzq8quQvDdhEzA6xVvSPxRh20ND6vrXrjG3bWZ8lkFOtSPlDBXV06FS+Cjh
ROjAMvztd+xZlzE2MziQeg+s2MuAhUoSjAotbxFQ7A+u4DzxP0Wbd+VE6id+TvfN/zx2MGnnxO4y
Ux2DNKcdd2iMcqnAWlc9POxF2rXF354bm3wrvqDOU3hBxmmxpgu+jbfpKTdNRUJY4p2laO7SmwZW
uuCAsWhPDvWpQ2DqMEGH+2oT1OQAXRfy70W0+S+iWtTv+mg5rt8L7Xsjo2m2kNY6w6K5HbrhLviN
nv2orcDEQ7rf2wzpqNcd56XSNDIy8Cj/lBb/3rA6QL64NGWtyHBtYOOxhylnB0AACB1a0FmDhnEl
8j1eevllArPEU3fxzBXjzNnLWhTJAFLXg7EOlHKvRPuMWwI6fw+DhvhHgMZcagft8CkZqk5N3124
I72QREmtGRcGuWKOCRQerWoA8P7QHxdc1Gnh7rdnIuWWtIQLGg4E8P278D2pqDAhN/ViHUhlNxBs
kkLDQ16C/L7qvkXTyCcpMHhRuHFtwwa9zcTGDykd0WRp0G5If/yhb6p8Uljencz2tCnTjrwKsXR7
Cj6amee5iCRvf/orZMtCY6rV/rJaUj2uDexzHBrMgJTeNYbt8WIn3ugAWAdQxnLBnOcyKP6MjwdA
9xEwGvABXUq4+ekQsnjKM79trF1BYL3V1KYQCeC6Foyoyf5lI7bx2/eKqTfy0LGG1/aYqkcxJkpl
KoF1RURimllBk9ELqRkr9Bx752uPOT1AimhLEiNLM5E06XiLAgazAy2WwctyTdweVMkgLIfmMxTF
cx8ILI1Ua58kRlBYBn5OIMKwphTznWgP4gR9xLUEM0crpXagUWwem9unCrm5w6BNOcqIwbDzTpX3
k5GhCtONlQK1uZqOSsa9cAEZJaJ4ZKxIdRqppfl/Ms5N+Ut0QxIbEtYoBUabhbnnmW/45OMqJvxR
o4Euf00rNkIpib+Twm1YgM0b2HzetkbC2y8ONiBLZaDt5f6APesuV+96Fj9hNfUgzdifKCvnDl/2
q1HvhC3F4hku9c8Ehd312J4kSCBdLXuallRfoaDGW6LIlyewsidxP2OrqiiZ3qF7ISOJxk84X2ym
gfp6BxviDumw0Vm2XlBN0dIYC/lpAIMX1HdOFjXzyYBWl935x7ea8etgh8gdy1r+5rf5r0LbsayK
lgKoHPWmk+2uKpIJ2hkd5GnmN0ckryXJ4HFiVnFSkyHGINk/DMR9LCRLV/aWu6DkO2mHwZbzssV5
0fKjyMiKjE/6ZJbwv7tQZ05TFIuYFmWliSj84wfIpnvhQHezeuxept7AYwJo73OmTyhuNClsoZAy
jSLWXye+jd6icuiMcMEftaOffdphOg14/EPcVi/VsVhQ0leL1ntBNUPzTx6cg5NhjoJgDf/f+CVx
W6Oa3I+tjKBfCA3pJc9/Wab7aM6X7eTM3xdW6VTgjm4QIPsLRdCjMeVEO1z2DDgS3AV2b1VOJ8EJ
VSAJT+xlZMzCHKez0KA4GdEChQvOLcLQMY/KLWd5kWtR/5MHVgutf8ePRYpjnAFXkUn8CRYREoPB
TldTJLkjfYHT3OM9sF97gCm9MKWR0D/JKpZkSN3yGDZdCeLNp7yh0OL4crgYXTNjRHYfY0WTkz2c
2KnlR8YnJbTaeS3QHOr04TgEVT8AVpLTAo33lSUdUhgVp0SNA4M15z/Z1p7uRhGbKafzwsJCMpOu
M/K5e5/qyKXQYBolF9un45XrY8uFvM3HBJdz4uXwvtn64cRVmI91bEwxe28JZO86bikdLmRmXFVT
ptkiu1g7mDeCInj9NsAP+xCsDLwn7LoK1x3wLeOxXJyfK6KmnxkmYJPhVEuFmgY/bLHyXeB4xP1Z
H7v2cMbTVm1w7n+m1hgR8zSGawp2svfVJI1k6ZArrA5xzCQWs0LrNQmEPd+ETXcUz5R4FFV0+Cdh
KBBa0xd1iiJp7DtAvGWmbUVe9Vf9ABfHXvvkojYxPltz6cl0zI0jDS9m8q/K78U+H8oGuweVplbU
nMlu3TdEKMixDOQdsBS76Rv8WE1z2S0nPsjhzyGKwJjVYNVT0LYT/NCWI4UVtpW86SwzRO7LYBsw
GYL37db1FWMsPPT0MDvhWezQn+ZP/UeQtCyKYZG2jQ5WhaYuLpdlxZ3nGgjJGkrrAZ1uCBw63Uyo
4V8k2FPy1CPGwtH9E5L2c2bp8rV5jCN4bw6qeaT4hnqys/vqUdMMH7sA3yxrg+GYbbYDjsZCEkbP
lr5w/8w9PEr94BTskGfwqZMnsfzBRaExAB3Om/yE/XRYGL3jj7eawIigEWaHpklQ+HAhHoNLT18N
V4lrGna9hu7eHOuDa/RnP09L2Q/3rI/Fn/il53WpJCAQlXJkD7CZxp5ZchmB4HADJWsw8myziqer
0pUS3/hGdmcTkneLebNVaY3IpVGxcAv21kNOnAGUT5D8dYmfzfqf2OGTpdkJZwCZhzBDWeztwhVt
yKqzBJgm7tU4sWZKtIr7fOMOS/FivoIh/dKzCCfOyair011ki2mzLB4eiYsqLT3xDbnsKv0ZaJCp
FSo2W6HZqNyT5guh37HIsx7EX2UmBAroxA8JUs+dCFQxT/Ifgto1nZvka2NQ4s01NceEId3GJ/RO
CmOnjG2FE3mixhyLbhEQ5CaCjt2n2Y2V/tuTNKRkAvKymnAmzr+U/Gg752XQY6r07LL78sOURltM
PgYThMaNclTYATwf89uJxLX/QcRNtdCJHoyKrJiT4zbkLGYwTTBMYX+qlqkWEv/oDwo/oQyW0a6C
m9H76fnpSgsvQPeOamRYDeJD71lt5ouCzNs3E8pL0pISlCC06EKbS0b6xQQw/ebt7YlG84qMHnHu
LWcFn4IV6qefnZGYpIIqM2CCTyJCEtKu+w5P6akerpVAQfRVHiYM8dGAOlxdTulqWIfcywtV997Y
l8C82F22VW95v7Pf7IDYEdeNMTuuZmVnOfVc1UGV9GJAsn1rqWawVEBRpeP2xFcMS92jEmvmKkKE
dxWsrlAcse0JR9iIERxNdCNZ31rqDTh1Fnjxfn8lPBNEpo6ssrqdf05QxYJLrnh7KcSOn8B9b79A
CqouaZ21emiNgpeQK90KSOHZmEEAQHNOaAxSKhAHeBuSVFmRJSLJqTZWvpbN78ZX36Qffzilclah
glGb+Zy1R8GXcviVgTDvjmxv0vsW4WA1THzzTxecSRKcDVPtomuK44VkFJ1oxu9iuX5utVjZHaEr
PkBOEmM+pEHyu9lZBef/I8Lg7TutindtqCs+p3qXPEYFMXgi0zGvc96N994JVBLuzI5cA7S/o5hr
v1ojmFMVDfesCsUQKCApKBuYIWD1yKgy2FC/gdzUjZbeTOoTpSdLUAt5i5MhIMTc8kQI6SnK0f+z
DkpIq23LUvKQOx8Eu7iNS8p8WaPeFLxwVQBoETe2FNDzL4AJgY8p204apMsR1Cm4GXcS3T7fwmkx
H7737OR4w9Ijw8Bw9JFxVfbnvMuCjEmlU8Uk07KozQZvKlH+i+nxbk71fH3CmZ+daoJYUiKBXfi0
MCUVI98pP6o/btg0BCToPH1ROE05y1tmgznlh24wI6uWlGPQxb9tQUGCgG/X3v6WKBROnxPKmh9P
WzC5b1F16iRFiqfmU6fozpOKlbWkWksCW0Y8lcLRTzdnHYwqoHzeWW1WrqIZ1PqfOOy0lSKL4Ur3
Z26lFUOQORvImy/wVSISoVK08dgnE5buZJ4rtDVcPMlH5qpWPYux47PLxYwgAQtiSq0WOaHj61hI
KFcwQvU9AYk8QWcH4ry/fMjwmGbP1kI6REurBodPING/lEoNNVFJQFtOjZ9QZpJ+btzGZKn7gcgU
CoE/2HOyeLCPL15AkR2ivJNcT9T5kbxhhOH8NWTi42FWg3mtwhf3B6t8NbUSHtw3i+W2vi0WBdRM
34ZR9KrIC+pPhheioCV4ZdpGKEnvdiGvZRqpiBYVsxGfa3ZLNN/1xUXT7k702nmf9EsqpK2Ou4AP
dvL2sVuocWCZOABsEeuJhq+jmeJuZiFPtwRfGRFbUC5wmm6+kBKy3JvcJKpyAIbHB1MPLKrubsy1
Jp008BIrmIKL3LVheYXzDixmQ1aR+tOPzEw86//Ye9ffDG+vrCRS840X2SM57HJBY1moonmTAer4
bkryY24rd4+3jRL1I779qq2FtXYl5MiwttwAO6/3VJCp2EPFBLBKbVFftiAXl73zoVk6aZUqEeCc
wmmCEIHqKKARuLlZeS52H2Rv0RnDrUsS6jHJV0/9PRWIXLPf0e15rsqFNw4a27FgiugxvMeZ7Stu
/m5J5qOvPBBvLfmVma5tr9+7kctdNll2NIhA/jSbZmyJaZ7i132Z9C+VX6BuypOTKZKouPiEcpXt
PNE4vj/ZP3TeWeUVFahW9fJ6QnZ5lvkL6HAvDPQUTuqrFU2x7cIgh0FL6VYHq4X2t1ne+J9feVRW
28fmt32ZbZrMs2tL00XtHhJq5AV4nICUVPz+WW5hlqVbpsg26Bcj2BwdD3wF52dbDHYIKpm9ZagE
cEXLRkKWBztQ5qTIQOwZE0FV/Hbr8hfzPBlNn/yikCStUKE4dCgAW7/dJHtJJlyE0klfQINocqwt
HBjDh/xN8b3SjdsfkFBDm5S5S3m0Qjgl3HXaauAugGrZQ0xvSXAPFpyrhMUyK3d3xqqee7UAqKYw
RPO5Pr1vkMJgBKvWEKPFjRrhwQXfqVmtjzckGBb6L2aXlQNQ336BENApuDbS0fvcoAMyupwgcjS6
uCBLqa4gloU22gmFnOh52vrQ1PcL8Tn3IzOmUFlxoKGqKKoQPV1jhWCp8w8fuDa0uX7uCn5KegjP
9vS8n2zeVNwC/belXjF/CQjSrBFRzInc6kTkY8yqwGHeSuVqJWG6n1ULWE48g/yV8UbOsdPoB0Kp
L4a1Ql3wYTs0vscLasNTOPctleC9IjTHselTeHdw/EddKMpaiE0SAXzoQqS2uPABu/k+NIE9JJRD
o08fQ+fn5Si2g5g/zWVj85GnDD6X2Xi0hCvdYlSiLFeEgv/Cd3gWRdlTy+BvVF0DTtuhIOr7kt26
PYu5ejVDDuPKvB/iGZFRj3zaVUxbSVj8+w9WDmMa+NWlNdTmccDEJ/uRnXKrvNoAbZ10eNeM2JAS
22WM7LGdRnKr2JKFgKppFezly69a/MnglvYyl6BCMCMd6x4wIAQ/mUWCxaZ/H+fL6kizqsrmg4vI
dcyr4V9AnLFklSC7nMbJWxQsTtqy0aBstTJ/IyCeKDALnzA5Msl2Sp66NMzJ66/P0voS3/yDERXH
YQw409OL9CPXCtSgwKKje4zdT4rDZ/76Ip4Ouf6Kq8Flo/LKchahrS88aPNrJ141IPun4Pzjfkf8
Ps0HEnwdiltPdAK2Wd1e401O8bBOUbi3et1bZffmjUUOUwFek25QW/Jt0QCYVOG6YNo5NakfC8xY
6aS1QKu1A2nfFOOfOerWuT1UGrL6qjjeccLB3fwXGJPxGJOSCWyC8y5W5SHDIAbLByPCMOFP0Zsb
puuwDeGkJlp2gaLTT6b0Fw1i1LfLFuNiGLzBkUt4q/RN7B8e6gzAk+KdoTcyPeOeJq76Nr6zWFY7
cX2PyM2l6HkV148Nrz75Tf6CBBFHC7o90essUmNK7qOhoLZZBS5v+rYyxmcDqdnFYjDbXbDsDne3
1hHqMGk8ookVVaIRKESwfaVnP4QPx4xfXutV5wMvrfJgf6MYe+s3Ymd4Nc1C+fuh5zwQTMocyTea
6rtjk7T9r48sS/GB91nOv77UyS5oxLPpcZ+8LKuuWY+XAhZuFPhfZg/n5Cxr74EseYauWTKD04Ze
UGNdYohiP96YzoecWgd0EGfZudR0ZsDBIhb+0iauuUCYC9AyttnGwtvXLH+kYwHBSm4JViWbb3Kf
SuNIkFKyILR0yoCaxaCB2bD99WRWxTb4QmIuzUaD8QMzIVl51xoOvfdbF2/WDGkLISNrrx6Ecy+m
sjn0/kZeyvwdZo7WZspNLnTWzQhkceMlH6c21vg/r6WefrDZ10MW1y5/+UXghlo6kfHLggOZMoTO
LhRGcocx5Ucff2FoMNKknSMMYKnoWKkc8svxHiv5lZf8xiMs//Jt4zXeiHD3pxQxdGThTV5daEPN
Z96OUXa3S+wiQQtZEi80noiA9TV1QbaVHsgySv1tEeoqEFLoX9Y2zYIidkbvm+of7Xzwg6WMZAYz
Exvjl9WzsEmS/3SkDuE9JNWk9dNmY5OO6LahA7TGJk/kkFJcbj3dICl1Azv40U6oCzOjwJcOs7Jx
W5cHfGHzWxsXZoApwf6mrpnwr3CSvUMEhsMYVRRRv3FR+miEpJnZKDiJQaGvqId0SkIOsYGRDzV2
UUGQ3IFd21H90+LCZTbUItbD2CwLC3P5dilYU8ADfLlbg1btfGEiCmMdvT+uCtYbyKWSXWS87nde
6ZoL5KvITNIGxoV/DnW744uwRvgl5tcZqVewZ9xStKWRaGySp6FJW/D1yRwyTFcmVmNluMn43ZK4
PVsDYakDWCtJZCfLCBBuQrAO4OLdCFMO/wvj7r30XlRuIxaE5WeurT+2fKMv3onual4+Yi5RkeAX
MvxaPwJt0jS7qJBIFn7AP5Habx696TOxCZ3qO+36+5g7Bch5kM8tUtEASW8hDZzoiAkczHfAHWaJ
0FFQqMmmOhREqtGDAFvMDQPP2s0Q50RSUIwWR1Cr6tZiW5vngE+LorBd0PtWPMSXufiFQPpnhH5D
1U2h19ndPgUfTtUCCgaaDPXz49mmdFy8YetpNJ3pyAAE84HLtWIzGALcfsfdztueOyLeCshlXzfP
mkHJIlegoELNrlwWB+bGk0/vJpvOzhOe6FvYk0OOPhfXZiCM/4iZF1cpf24qlzqaULWarS2FIr/U
fd2rLaLaX3Q+w7+xgaphDxF80h65147/lG2dikNQdqkjUgF+aZ0slZoZ0Wi+veIw2Jt8vc2J0/XO
1Po+rWSAJ1K9Frc/rUpzkmcZRiHTvuP5ptJCGj6vPKh0QBeABZjlx4PyTIX47dBH4Kk64Bi6wa/K
yXwWKZIJhdcyChXDZYSj+4bfAtKvb/okYyLnCyNB2pz86hM8TiMPOlDabyWGZshb2IOFbPQHlMgF
7FY17+H0m99CnUyrmU5Hwf0J6PCV6B75BaNiswkKLtm+vqHeGF5+Of3B6oM0dXu6Zf/hob/YMZj8
TZrvBEMzNlxaOPmM+jWv7KyfwEWT5d3vwoy2CKnTZnt/+CVKM66zNskuOpcNkA4Y/xWGyzZT1iY0
/+ZwDI5tVOfSVPBagAvcc51uWvQoh6TW504sukkof2mjeIjv4tPWVC+86OHcepXpVT4o1G5SRoRn
123C7oNCVLh0Y50J/dxZpShROQwrtjxZUSknaoRQhDM/9upRuPb48zKfoFotfn7wUzacxgM3Jiu3
6MttjeADWN9H6YUwSedYer2JpFNIG1D7TmZX1Aadei9GlBQ1o2VnCjCvmS4NMGUYZmhUm3XYPCXd
tB7CHzy8xQwuUGrw5eIbLIa/I4WYNmbJebbGweAzn1EvOynt7o0SNU0R6u75O8IYxToCwBvaVQmI
ivKw+xHZCx5l+1C7QcVISsz10RXNPXjrH0iImxaHB2NzLWrvzkrWqQsdnbIhIeEbMiyra0h0sGML
MFBua3nWT4HRn55JEuwAq0xMOE6XijXekc/sD4s3zUDiUnMNLlcBuMBWpgl6f5ItEmR8HgousqYL
wfWqGSVmnGAJsLgkSGzqcigkqvS6Tj8N8XkAaJyjHxOzdrUPbDfV0bv31n/oG/updZtdrFF4Md9c
WL4Pp+3E5opUhRvkMxzQTYcn0Qr4AkUA4FcTiMReg1a739Y8DgcSSIQlTFFqPhYlpocv7NOzq8xK
SMJqyERuUVWJJdEH9rI5iiJPNuUzhj2d0ooOL+FxuCLE0Hw/hzAN0Hp8BxWbLZXh/Y/lmLfFAt1A
triDgdcHty9olnuMl4aM+sAKFIpCk0vhq+TxHwBPO+cj7An2f+h1q1DxYaG8QkAu+P4mKMvFm/gh
Oezvew6S4q0kuewygwlyJS67PMVgqA0VgP9PZyMHwaErYb9IwtkqwPeeQVoISGRq9U2QV6z5sWPG
cIvRYFSPFRMZvkpnL7K77VJDnytA6DlMw8WuImSpQz2XAN5CiXskZFx5T88lbTbiFN0rNVqDYLDN
fVhxN6+PjRJnphfAcTTMELu1oIOTbZVWMs0hKVhiGODJvE7I7CfJNlwU73yNDATAN9H40qKvtO+x
d6s7w+kpsVaFlhucKatFLfRmUX1uPpdTwGeiszrh6O1pwTBjOOCgSQr7dY3anoV+Ia+/x8fWAMso
feNqdDBO1sa5wWe8s3w1izp3wjXjpCDpX2RxR88UlEmwbtv1wPj7ktoJkDo1VRzp7ylURTos1qeG
fq5lYE/6xl4BmchPSgxp9QTYs9AG/vaIfLbY+oCn/4KaEcR2jy+Q5KfKyHoFqeB8wzVxJeQIHKcy
JGzc12nmQNg3swigqjWKIhHE9SG8IBfnbGuNSVlwHtoWXBghTOPxl8/A1SvdnFmz7z2252xjUY5y
21xpvCX1ohfr3dtzbo3We02ixMGs/lq1jQUAbEDzmRuJn+viQrRU7BhcZLKZ4n2Z4hKYyrouT+Of
I61Iu/LCoM5nN+CMx1ROlHzXp8dcjafEOt0+GuAHY6kYBwrE8JWR1aSxWj64RxKptjb+5j/NE85K
JEtv1DWDgoYwqpR0+2jcBJ0HkajMHBUMYzX+cuwFOS2N93dlc5+nCLV8lOYMFechAaCZClo4/l9b
tJHMMgea2ug3SSunP57HFAsYeG6j0+aFcxNN+/kwZAvk32xjYcECf7U3gcqUuu6mjqLBqoDgb9VT
S1YyaLNLQi04T79ADYN7lEW4nMm+lbLRJ5HKxkT0GdHSP/vP26K5617GcmyQ/H9pqNdtWv1dJmfz
TxM2xDGiEJIQZhOqIXWykyhMSGH+bgIVF4YLYOb1h3oJtEAv+svwFMBbYBqbXVL8yrI2gtnuW7b6
+7br4rdcTIeFrpFPm8xAXtmRZ1G0hDrvqABn4bfVIFzHpIm4WkSXiIeaMPwNdT75Le9JhUUoaZBx
wt+7pjGhss0383W9u6lYdjtgZbmqQM2JAEMqVXHS0nUPoSeoLwtRxMTiGN+UVjE9hAkVhufyjdXN
DH6cpjSMqRylQvqKlIx0nSZazRdnS5er+vTEM/Gr93NoKpEyneFl8ARJUNwSTszyzCRVt4gKbP8c
PGeckv/kcNuIUUYjfYy5oaJIbC4mKutCmmzI/Cyh2saS476UA2iwuowfYqnz6zmTpthNauayro9I
EzjQ0J2+6QMfftM32ii9pWIpT5hO1w434XEpRe6UOVe8jexRp4tPddtwzfQ0Oytl+7WDZ4PKqqDp
V1MChLxZ1OtYhIhFQaRJ2B6U4BcpzI/sZ6Z6pdQnpv+DasRAe6BvatBkFakvoJEZIhhrpTWDOnfp
3nvHCA5gOIPoUFbo4rZNyGqCdRXaLnS79ncnIPDjoM+vCqOl82BeSFnOTSOyHwEQbhULblcyP7Wi
/7qeI3nSB+v7BwnP5MfdIVWxEhakZdKsbt4lbvT4EOFh9+EjeqvVXIsfz/QvVGtMUMomB0FTK6U8
/LFKik0i6Gus9l/lfM6IhbGwJy+gsNy94Ufzi2k8Mnd4Zl53SoL45mXPVvPcYUFfGf0M/sj8p2rx
MOrJASdY0Vkdq+kHv6m2eK+sFCn7bJl86awZvmNtFukDBA1PP0rMWHjREiSpbz/KtGNpWgeb2shV
anf8HzwZ28gam4IBvbMU8+wdM8toriPoF+MgW2jTrnFvBkRWNfEJAjy+d1E2Jhl6ffJStH9Lc1Sf
b0HR51LZs1gGleZkq9+13uVeILUjDwKXa0gnf4m7/7t0v3R8Fa1Rj1i1mXXfVg7EN9iqvGFyaqfp
HTASNXXhIlWxLcPO79b9jt+QlwIW9TObTT2HO76SOrokCRptumdNzM2SE/G1VdkFID7sxdGLo9Gf
EssygAk9lUtBDkg5nUv36bjpJdtJGu/TqV/d1z7D87IujFu1x9moEQc78mps105I3huPTi3wvzs+
qHIqlXdGJgZCIQMb0GIh8YNWpmLoYg0ltLDDVZVdQnbwI8lhKe3qOLeUtDV5jHApdm4QjV2pmJ+E
zH2FgbZ3HOZKFPkshj5nBtekLRTLVME6mv6UGN9y6A4bxPM3zUbsREGoFl0BnVdYgQ9MBz+vfV4Y
j+vG8I1aEFF1Sy4Wq+ffGtlMSOpS84qc0TTnJ+jhw7thi9ToVGtT16NOmsPrpfw8QKTriQNp5dgK
mD3LYzwN0TbPmh9fAXbmxm1axM+NBaJQ7qtC98/MvH40kK2JrAIo3deNCBX0jranuPIKwmHAYR93
v1rNsDVG4WmxF6DQ
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
