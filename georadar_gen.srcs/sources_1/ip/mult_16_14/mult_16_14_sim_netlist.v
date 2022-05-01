// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun May  1 16:11:50 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/dev/FPGA/PQM_gen/georadar_gen.srcs/sources_1/ip/mult_16_14/mult_16_14_sim_netlist.v
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_13" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
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
C1Fhrwk9MFka7ZDBIwI/K1wZuKStu8E9mMtsSEkT5fKg/GKxVC3syDk5MloVB4nWRia8knIfo47y
Cjah8JM9ymnVK9Ht4zPyVVInvivWCP/80txXiWqxFOm4tjEawoy07IiarNNR66glHH8l7gbMReW8
FHR5t23OoEvRm1Qyd0F5K6Qd57uU76Ca954rDW7FGRXbaSMW+MwRrJTKNEGJ23w+usA/VSfc7rSH
M2qwvYoBGPi8D8y5sRoN22arI7JMKD1B2dLULXT2JO/a7YaDPMQsBtQjizSh6ZMRKKQF0zm2bCw5
885sQWQwvu0GpzfsU7krW/ID0M6uqtWELrRQng==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ndZUW0vxW22LSYHpO15o+cX6t3NhNs6Ke1dQDYDckqasHTCjGLsgEn45vI+P8x7EV9EDXJgnBMgh
JN35mzDcHSd5pgmG2T/Hnb54vmCoyRR70ZgvmgMdxq/sfz6fwc2ciZ7CTJR3Jr4DdkmFI6miTCe9
YNacsTH80xWP5MtAdYQVuGRROzT09mF4LwPYsqtKoWIY+iarJoe7FL3Mze59QzfRqZXho6ALhDVq
XR1ezEOVsW24aQZDSb7kwiUV6Jd+Pf96TJmNBQkWj7gvDB65dRiG4ODZ7nDwC6EwI7Y1H3aQrkH9
/mEiwZ6pXaRzCCUTQ+a/eMZ0Ae18FI69EWFwww==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8528)
`pragma protect data_block
qD9XtVu/1rJ/b8wH8rfIqrkCg50amulcVTzpgvBBO19CxHX+izrXi1ZhcKeYw/eroeOzeQ5mK9uW
Azzu5PGXlEMNpqG9iGEf3xtTJdEyQGXPcQdenFGOT+6Qug6NwhGCFezxNL7YBkw5YFb6tNZMJNZy
HL5H4KbLqRyrGkw5tHUTO7HORtpwAWPtnFeji4aX6XH22IARUZ4x9ri0anmYykg1ITvjMvx2WpxE
OmLCiTGT9f7K7MXbj17wsdZJW1j9wME75YdDfiwfdrEFcGYB55I7MQisUAxTygZPpY2oKflesKj+
+heV29FkWwWocKz6LQnlYPBaYnNMH5hXAMIZr1aENsjAFTurgyGl/BB46FldE/th/FFP7xxk6N4V
BIXAn3ctoKlWVRNhg9zdiCqkuHj6EXSYUwGC/krapbsiCmKpFr6/BII4k1ZVXDwlKHa8/xg+yp5O
nKfpmfo1Wjgb+q4eUXs7ndG7+VJgYtTTELjZ7lFYZEn2BNnk5ZfkFwH7hh5rdxqGj8NCInse5OjE
0SpfZfylmoXTNiAElS9+aS9xWdEE5QrcKMcd1ZGTT/A2mEXTRqdzgY56TEOINpjYbAVL5k0bVmSH
IJ2VT9xq1ef3D8c0G5/TLh5Qmu+Trirk9IlrGSrBAmZVcn47MQo+YSz3OcCG+wC8P0Yny/qy4psb
oTbeu9Idie/McOeGeA32eTmgZ8wfcNcXm0y3A/bPsUaYe84z33XjCivq0+rp8k16JMBDRWjBEIcZ
Dw6Reo5rtBJi/aHVd2uI+xlnaV/jQHtTSc+9JEgM4nplk3fss6Fj/ghNCpvGZmsk9UgjMjoXET1I
/CgN4rCyZPCc1dzsaHg/lkvLW0CtnQEvkTG9RmQrdN/MmgYpmSjAfOU9yvu0pESFSsUdCZcVgIj5
DJKs+y2H/zJWoH+lws5413yto4IU5OvhjpkOTCqvq2B52t4pn/yq4u1EEi3joeDWI+qpFnouTmyO
ffWP7ju3CucV3yIrMXlmKFNFdGEKXhZx5V2JTj0yWtrTFhZY6XZhMAfg0E1yJqdAmtp4CKCYQKoB
eEWBUWdp3wc6TM4G/YmlrhVC9LWwPTRwR0jNlYlLu3ESRWQeFMIwh1hsKTTSESL5NDBbzLJJ/vTT
bDuEsVE5OXXnAQbFMDWZyF9F10h6BTL6angzzMlHzKXPi886jCIUVirw4Y2+K96Wf3XNV4QDmEJX
cdpX1mV03MEg2g8kEJKjixUzpO31/UOJhuAmA3IMTeXBc/Pfz5VCT5SS3GKH9LfJZuai6pOGNzkK
GSkjeDlYxwlCHi7rPpGyDwzqQhu4jemWotc1Ho0KtzZrMlUrHqhIz8qgXc7PluqgMsmj2te4+rHV
pw58UOdGJ3aibBjjRZLw8AD35jufgx3RUV2tJYhUafXwQqrE+rVcTl7RVEh2qCYGuR2xpf7OccdY
xN7FIBIbbQKzH2OxjmyxpSAcf8vMaRWXammF/3eYGbzNFQe9+AILEAmA799uEWR9R294shqWBQg1
0+J8QWr/OY0GDTHX2iZ29t+xmoQCsQO1hXfC/p5lDTiwRssk1AqqeD+RGkOgMC8lE+zChMf4B46P
uONgoiZXaFJF5964TdbXvkPIDsWzgpvrTDkP4m9/fCDhr1UN5A+OoJGrvXu7HareSZiTP+p2a4kb
kfmPyUTWoyUxySeu5Wa7mIKoxJwZMoLf8RwLFoc/DcPErPSE5Es2zVwQ5dnx5GeXVvwMdh7JjKXN
X8nWEgZXA9ZZpcsvwSto941HiLQddOwysDnSFdOhBSIO0srcoozY4D+6fsHIGPc/RXqMv81iUctP
FdOv3Jx2+H/PwweoKa0Fl6ObG5sRLSHHefEZetuAuiV7Ib/EwMl1ziUq78JebrgAw4G9fzyH40c7
DUt+uryMqngpY2RUMSPD/9Yful8AaE0vrF1KdCCL/GkyBRxG8CxZmIkT3aXoYluuPh9GYU6IQt0E
doHgkBR1+vs/ZOd5QXiApj74Pocv/hMp8gOVyIORR3mMPSj6H9M0fBnipzbzTNHDdI4VUN7qvAYi
WrgxMGRDMYJzS8dKHCfIvWtxHGc/1vfWwJUDN+udkxjuby9L3Lbd8h50ShUi2Fknp4yTbexNA5ox
tEdKF0sTX2K/7aAihQEr2Sk/spfpibdI26opFbDilL+kT1q+OVzOM+ejJMlbz6LFxpD8pps4ZDGX
wFyxk0XENYFubMf1TCqTT4C/wGhK9yJ1MJIWtj5bgrKgqAFNMXQykmJR1Z8sxD59Ium4dURcnZhq
ybt1Z3DZi4w3CIINf5j61e7yxNrYuTcytddMNErmKStsV0Tc1B7KE0tVixFXrTtQ3JDICLxTOFhb
H9wR90CA5o2Ck4sfSVZoH7dwEFu32fWy00bN9ldRK3Fu/2GoplDMjNa4dbj8Uk2RmGZc/a2Z8uAC
kOkVxvPH7r0SA/0oXHuRuUV8vZymstZzaxLitAjrFzp/o6ErDA4wGVeH4khLXLt5x2K+EIzxuqzu
lz9Ogvsr8j0gWKB2b4ELjCgyweZf+4Y2g7m+yWb9GL9JZwgi9zmsFdOwm+xYALM9tNqDL79gLRs3
jv5UgPQVS0eB4gYrhiy7rDq6NOHYO+ij4BOaTU53xz5EvVyqXwB5z3gSeBckttdCzYJ8+as4EfRM
u40hxykfQ/Wo13n4OEVKVaPB5vwPqMcnnSeM0Uw8Eg12XZpPceLCkzuM2ELJv0FvUS+UdzwsyzYb
6rCxNw/g9gpgk6sNtdeIh3gFSDPUP8WCrDeQ/RDhvsRKJBY/yq88nLfUlSNt+DLzDcrdukdGv4ng
cIclGW6gEFje9C68s43izmxdJmdjq3Fx8mRFSOCjsXXSw+vhwxkWK8Tf9JflKWtQrQI52gSiKZO5
MHtzxfBcdC95eozVwFKB41aYOp5dQ2L4h38raW4c19HjvJK8KBp9vcNsSfPrVP/RkqDrZ+7a7EgW
8+gq5Fomrqp/svWHMoUYkp86ZmjP1NmFi8Fr3PE9f/LyuJ/v8Kx7bA5JN7nmofkKD3B/7//7GfeW
+DO0Yyd10pwD3BB+9bY3ThJFDQyCZtWBb+mdM+eQ0hZB+PF9q820ZHbwrfKnMkMokXJ55zjsDn6q
r5s4RmqNFxKuzbn3c89imRgnv55G+WW/L3/2qpzloFG6BUtUC7ciL4KfFblBHGcrH+JE9NrVooQh
0ATUkezmPlhkNYHzQxxOy4OW2ycNlrz2SEyPt+NwWz30HTYuzBDknD6S8LYrI3+yf+ELbGZfzNyS
EA5Ski6DYbaHbcEW08NVc9QkIiLY0hm+GkGIHAjEKAwFInBW2EoMB/HPi6YscJ8MMQj1tdx6DTHt
VVgw00vUwJJTJ74DPx/e0XJI1NFcZCK2K0STYEZ4cQp2EJQlxv1hlKIPAA95U0mcqPOpKrKJ5mIc
4L2ApISfqbUsD6d/OAWrB3jYMskbn2Me1xtWNHT8NNPCMGSSqd+lw4Uewdo2RJIA//UTre8n0uCS
EldNpi1/NdsPXphZ36o+KXzLvQ0KiHqecJMaOPGa32HyxPrjDrFpivMi/vx5pxh3mCMZfQydNKQa
CHqb5czNq/cUwUMDVjn0Fiv34xGk0wXfyfIe58FNtI9Ykaez7NF0NPUnHvfB238CoBQDsKsSdtP0
7uBXe+HYVhKAWL/dgQ2csswqZ2JlihjR8+CHMb3iz6M73QwDNRcinFd8fND4aR+pmxODo6rUy1J4
ogutCcw/bdMRcrteXuQREZoSn5e/K8Ba4peOyoB6fDBwJNHp9UYQEGe7e6YUvl1Jr8UrBNp3pdcV
BYUb5lHUeqwM7AQpmn7+GH7uqRCcM8Umlvdrx1rRIUWs7mIuqTAquAspYEvTbpk/gCy3252qyEyk
LTh2QjxChn7EJDHxyipfZ6hllhX2tRrOr3qLTFJB5tAmtJBphNWsHyUl2wLHwRA1+sl2yqzghvNN
HAnptgKg/mL4C/QieazbVfOBrGn1r+NM4GaLI0DY8oSvT0U+2L/hQ3iR2dU5ort1ioqyBO3AzKz7
R67cXGWMOJQg7FcipUkeBmv9CUVSe9S3EFn0NLfZvlSCEmHwsTd50G6dSMl+qreihVP6pck5au3w
GsPS0p5nWRQAL8+QUyE7y+qN3K46Z4nzGikHjDIPKKql05qKHAD7t+D/0MQggxQY64+1bzk7W//j
FI9tUqSPia/tZOnUTatqblqJxTKPgl0fTioU5z72AYOSZnoFfT4EBnZ6c0AtdhymyIesXsS4JoCM
x2l2sdYzTwICZaCnBRCh0M4VYKLrZd2LXu+eouE2YgPUQuc6sRHA8+ezHHdr4Oa782jW8MNlZze2
dftdiH/c/CDl7thPmErtTQD6VGuPTsVC9Q4VM1AEK45aKN96BM5tnc+2FYElF+fKps7/joJCwtRJ
eX385WaVpJCiI5OXIZLkzSLBC1oysktiY0qDUTZa7NuE5GFFjSrfZIV2I5PKWN5r0GH0wjzpEkNj
zytCRfVKHU/3pgoiyY36pXTfj1gprB0IghHprbMj/w9gbRe3Ju6RMJOmws5CaPU4dIScIca305Xd
ll0molHbZl2J8JRZqL4yBiKdk1YdkejzCgIhlQwnYK9SWf21jE4cD0zlpOqKeeNUr+Bs0ww0sRfS
eJxs3PB4CbJfM5IJTWYf/9deCv4bD6wjVElb3jYGSTN3n7m7YGmJ+jOmVDif5buDSy/Xc++/o8OB
NBBkTIhHg0FcvkF4y+Ysy4TfVRmr5MomJScQOgOnXI/+bGSsLIcZo5MnBY3RVJt1nS2k/vZhYeNf
iIlpttTTcoNlxH7qmNz27FUnc5HRFiSXzPlLwC9EclNcWeVAvMWCNGHaZuVlk95RUuUzy9UbFUIx
ZZl4/Xw5NGUkKP7Kh9ZAuRsjP4ktXhrGCFEC1cwEIQzUmoqjNz8MdB3IZH+TOrvLAMd9WNoY26Zn
HzojgetlFzEtJ95zZOa/d9aVQx+5FeqAO9bpSXUgx6X4hO37vVZC0L/gH/p9nf6+5X22zGaQ4JyE
HXEjcB84jfGsujnL3CeonglNmLGDGsf2DdgBJksOmJtRVCsK/Cb3QLxrliFCQQMf0tC4hR5OGKUM
g+vdgPIf7xWjG2enXETjZc2KWV+A2OGjs/C6j1PFoplRyQRI+yVUSNZ2PodJT7ojdN6tddlDyoxC
ASqPjkKf+LuOr69fgTJK/7f5tkn7Zin6IkQsiNf1WiZfPLelq9zncyRPGxW58bosdrlLLh7/Ofir
BDwwUPDBwMDWIGhB67E2EI2H5hXupENNIc6a3gYy9VH50GvzhQdg3LZ2/ORHc6tpLs9dAfxoMpvO
DmHa4srhUArQDvL6Eq0P5jOKzHepDCY1EPO2YLZ9AQmqfUVYbAa8sccOAbyzVpxEqgwMxUeilGJ/
ntrj972XPzENZE/lyZPPl1mCLSXe8lGE7PqDlw4yYdnNty2mghSk1ZGDM6FwQATRdne6EpfJnGyc
FtmCS0GEDER73aMuLOzo6Yv+p5j0b+wuPNWzvK1NZ4/DZa2oaWBXdcwyJ5CrcHPakxln3zikYsIx
fo0M+pKWOiee/n8cr6H3fL0X4XFh2tSkVfLb5apGUTbUH9e3cG0ORbPMonMJh6BeL0X8mMUPdmjL
ZPlxRAJ2nZ1s/hVJaKqcYH4Fh7OulEFnoleVuGfWnSvrzaPuzfq2O1I8hreJySktIgK5mld0o+9U
E41dLdFuYhd4Z0xoDMHmqAO8osy1QSL1lXewquqrjjo3MW89xIKh8M+ezTDwkpOCR2bLbbcxvmaf
qgWvv009qpcOxE0iKYkNtWwzqJvWWupisNE1TBbqfj8+e/6wWWpHrn1/bAhAnS2FL4ulkz+krdrQ
B+FOOdilw76d9g/7WoLZOc8DQqP13mWQm43IAC+y73MZYKyBSM9lPxtQ/RJjF9JnZ2GZ8GyPejkR
2RZ5u7/lkeOIxQ/ML6Q0ngp+Q1t7cIoiI7AjQFq14l9vkxw3vuKv8Fn01NZ5rvtw5iLT6R6Zzh/2
w0ri0b7I2WE2ZR1V7ugx9isAJFlSADRs46zhmDjJVJG+LnjkAcEz1jIS0q2Ta5G2N+WFV5vQ5Kz4
dO9CC5vQ7jCBiUlGdvqhoVwNNxX44d5Di0Am2lBYZutM0JCLLrFFHkwBxiN2rJi4r3Ttp+SrYqmG
Cwk+yOupXKiLzmshPWLv1jHs377gE8pg91UL5mNilzMPq6r09QNqTu/yoaVitTHF5Tj0UfdN2lXQ
8FJLe/X0c89yoBCstb+d2aImFs4JpsiEtGcUwMxHhUcoLRPa4HMBHa5YrcWyB0Ea0IPYRNWSuPkd
/0wl/qSzhAYdEiRPR0hpkZIpLmlGH3HZu3m53IoVOZ2z7Nly2yvdB6uMFATYiQ9DHu4PQe8GtW+a
HCIeY5SGefLzGFBuSfnL/DI0B2QVHaKid+OTM0trBh5umdMhGm9w+JjXharMZ8ggPpb/imeH4JGe
IZghbgmyJkdhvMrcKdUUYvE+Gw00t9SqhI77y3IuNp5SAh8auFXTJDW2R8IXXZiNhqzFpvannar3
CMfemtuAerUgPjvUeE84kJxym9EzyhOUDKf/Txz+DeEU2tBpDjVnyQGkpIkkPERMDZ++yC6TTe+u
qxU39speglTQWt5+4F0d+IR7p89MlkP9XOEebXLt+ChunqEaD+lzaoExTHSZeK4R0JKyLV6xKtGc
KeMvuk5+MymAuSEmB72MczScLGp0D6CUWTjPBu2gEQ0480rm02fIOH6R8XeGUSa8IVu/TFW+TInU
RTtq+EeV4uW4OBbTlkZCf001yTSoZztMySJc7MATmnLejUAmRN9mN4gs1rvQiQhW+3bPFnogrpmA
GBjx8XF2KidjygPsELmH302i4+cG9vNgtyAL/9XseK6Y6ruJq0zbswL5IoN8JLtcFsHgefB4StTA
LKsk+dHOZbZiYejDZhG1diQRafeR0LVwkXfH6Neew9MgAqZVkpkbzLwooa16lw3iJcSV7aA97qsT
lkxOpUpqZJomVtjhJ/kcvBoPff4CcmzierNUEtuYO7+NnDoIU0dxH2gIDaEZEVL2B1YASpQ4VoC/
9NrJ+FHj2xohG7L+V7HWl6aclvVYMtgO3/pOHQU1ZkDC87pQqnkxHp3rU1+f/o680p8eMPwuMAjn
nGaL2rcQtgrIQYTDX9sfwGtfZTYAvSw4usPsUdM5JQbFFYTjDHm5DZ/d2xor28q3aZ5pkc2X4gd1
h3PiHyqAG4YxKw/FIlhPXDKi8b5/x0Mzgxz5p4EoLvX/0Lj5qKc3KfxAAFNCZx/JF95ImZ6mZ5Jz
iwrjuNLsqqjPam/Op1CEJSQSLXcAAuqZONyIV/KE13IuRggJdYUxxLXHOVXeknI7feYHbrEqv7/U
hIe+4OKEMfvsD4cVn6vHjmnnfSXIsUiQ7VEhZWwiQQRg1ifo83qLqzHy7/LVEM7blHf5c/YihTs2
994jroCzsVbXAtrD2QB6pBTAvGJOT/j4D5f4SKZkLPs2j6xGjWppIdQsVK1nyiYludHTaUNd1ykE
ERh1H0FLsA7vCUmvqAzfzTGqNMqiaVufE0vstAuQQfUth7iVjpjmAfc+1fTDkDk76qj0CtNruHDJ
EtBH/Wn133utTv1DCZ1GX/RAtvsDycW/Hyyw5XHCLtvQylXNfWHzdhWOm0BbpG/lyp6YJ+bEQQ7a
pHTZfJX05eUaxrg8WOKaD2OHs9+40NLf08zE/QWfzUyLUrYDkyEbbXaN5qDOpfFi5YZa6SV360OX
+hrOz4rQanhKBPpkS02gi3jIvCkgy8AsaOHpfd6R5VHJ9b8Bu5v3wVb+oXFxwCQf93gNpIToAJ8W
fPZmMOmYxusv4JQg50PNzctgq02Okaj6FXafOcqkOCyNdmgvHvI+bsRS/QQ6ft+Zkh9bHMjSOxI1
njT7ooX2hax1PX6HkU8anWTYUKi1MP4OMf/j+mp6AvTGFKM9YGQ3lDSd2iGj0yF17PjSuLYUwUQp
rF9JV68PKZKsFoTSacs1J5LFagnuCZp+KhHlJVziNiglhcTf8hIbLXiQ0ni9AIq/7eO5iMFOPc2K
2vv3gtTgR3YIbl5ZavAOo+JNCzsWjcaoV6ilJzAnNCR/etc08H/ig0lYzzk+bdtWADeXVBK6t7Gs
O284mjOK+E2M7vv+C5jvmqrVEGMSP9zXcbKp44vqyq4U0fmanvpd5znXcWu86kafKu+nwFtzmpeI
4ThXoNru1qxiY1uG1aAABzTGdFYszTD/KQXYbuQwj/UnLkY4j2diw3d14khaDRVqs8f0eEpv4JYm
im+SNwBe9gGBQNPpfJXRypNbHXeroTUG05+xjxXxUdaeHi0lWaguVDCCGlBtkPTefvUknoWTPP2f
ksXVmBQ0l7lf2e0UsavrvoFMXwcoOLaall+Qt39a85OFWrSH1QMG3meu9ctLPW4U0QelsUetZfwn
pKiv0XzqmPAxrNfM4mU8rY0uVkLFc9S0gE22W8RIwARifl5UkVhCs6chz3Wnfcxfwu4ebYzIdhaO
tRpQMHTVxnXhUkDs2GdpeCXCf8cerAWOpaVbVJwpOlyIr85CqLQUZrglqc761L2lds7fIhU14gEo
Q2utIFqUjQCPxVozVyowLRKuFR3x02YkPpEC/ut7z/UxpLGZENTfx2bec5KmAtYdb1VHTvXCtjTg
w2+4FoiHaboKXC1Zg2+PCfrpkSNQi/REjJNWy2hlOEEzAy7yon0/dOHb7K4lHUmN+wGBjKo2eKvr
i9AwM1Fe9CLxgXfsn4cPJUwe1NtO+156H+q1xyQfGHuTojgguDR1F74B2fc5HPlQKdMe/i6YBCCx
H/U0r+yuOYmTJpHjpeScQOaVUcoM2fFVmJkBXLHUYU8+fQQNt/xkoe/u4+XQkF5BVPPw8yGnd8DS
nO2o8znApguRpJsF6Nme1DLXnsPIqJorlZhKn1oFSB4vFdbhZDGtQE6yMhkcGgzhzATZt3qjOjM4
5UkxQgbs7iWbADnlK7mKttwHquJerAEpuCwAWche2RPmxdyKmVjjOAYX3wlx5u2Bt+0bT3M+lopz
jhb6oXqzbxg/Ih2PDGV6CMiX0hF2OSusYJarZs6RkYgy37lve2QmjP4sIhbJPA/NMkrO9BUPgwoq
igzvXurhKXvj2yA/xDGa5JiYwn49QbhdOe5MAPPKpLKymMr2HesxBsKC0yZ86AOZcHp+ImRyPCLX
+ZUdPsVsg2XR2EoeAmvtiDJg9Oqb3+dyWypymrhhawM/WdB5/FjEhQu3EqzztVDwLgGPi3DBT6ZT
f8sa4fl01/J/o7tCXJ++G7y+o4zcp2/tlZjcTcAivWr6eRnMnqWnTqK/hTSnYovmqPGYqrGx6N8S
lhdzt5jNZ9sZjxpa9rD4BBxfncW6BhSddzvVviQuAMwSleY/ny2n7P5lnRN5joKVI03vfLcOY+Oz
DMYGA8gFT63LSWVtzUC30VUoxDGkG64OHfylGUo9M4POyYV+sfoYxQsAEBThUehyBVEQaTG9hUXV
KOEhAun+rvT18E1hPNfxFz4mWkeWHhFZy6tkXoXOcmNAJN1M0c7kgLwAHhuKgbVQiXs9DWDQ8bgd
ZHWi1QKCQOZodyvzd8oly6EYHLh1Peq86X5Q60eieYQrKRT9NZZArCmfkmZ8oA1WtqP76asiM4mF
1tcLFa6J9i8YwpyGjUpSvEXGUPHyjKY+1dLAjkLBREmeZHd3d/liOWIDO90XnqftE+ABCkFzzuHK
hg/l0p1vH71lXNevnJa4HOWx4NlJD3TANLIUAZi0PM3Ysy2SLCXn0UfMGcnSogikWLDZO0HgjitU
2pkxRqAXytdgWmDAlz1Ck3pPlIhtcbLo6iRQvgt6WPKr9f8ykCD4GFXhApeTpbAK9spcPZFAlqtD
EZwwf1jwC9z0TAjm7v0IUqsacxFGIhKGs+kVYuP1LcDyWPSbvi4uU6nnzIBXC5TepcPFsQ3em634
X0p8yryNU3dWFCalNxYr2vMD3i/OSBJDsvLc/I+yV2sSHHMLI7L+XKxJzhk/JQre2nqu5Mem7scG
6OCrNkVML5JVNrWJMH7PootpT2x1mdepc0FndOB3MOSpbcA6HTiadPfuSdjtxBfrG5NJh962oi57
3MUR1h6imU81xj15vb1hEgDMVcUuhdkR/Efg2gMynChvpuYdq/0/ku0WGRbZekOKeG5korf9eLWg
Oqh2gi0IKJdMoCLgoYK4YI5YoKZgKCBcuPFWi0R2RCJfLoWZWNNbN+md6cEYPw5d33XjZjD4sY/a
V/C+Z9SITjYwukxw2iWNKhN22q6WtIVqQLrhF6WIW1JA91BvcSbqqKBmhWVmjduq99YS6IG90Llw
pBcqxflJobwmnf4Pklbwi8aQElOJ/b/A0F/ulnCjUFHUfTo5tIHkuA4bFgjNwnaP+5Wwr/Ptivao
1W3J+DUfnFbrCw86peX5ltNQagZDmn4p6rbnHoqePy1gstSou9aM0Yn/QGwRBesu72FNaw+gpDp1
jSvx0lRpbX7xrpJ3zNu0FWLqXDK9K+zWHq6nwX5iXg+KlSBOm2sEbGvWosRck+Lrape3BMw74uRT
4zBoyR+aiPabxp2vUNjjhVWQ6N76LjSi0mkAMJiCVhwVsfuhA76p9Il+jyOjs3Tnm6XaOYopjdKY
uGxKLech8mvxoxvpsTfZ+nK9wCFmGEmECyCMsTFDPWCQ51Sn/Aj9KHrJmueaiPjDVmyimHYq4MfC
uMbudheBFcD2wqg5vdQMJCr8oQ65qwzhUsepXkv92Zs4Cl+GbZ+e5VpG41feJC+xpTfQv49MZ4zy
EC1oMC2juaYVxkDJZA2t4Se3ek1M8JleiVJPoue4SM9AMhVDneO9Z9kcD/X1BO2iAhCoxL6+bjcu
fVlyxYloWBof6coEyT5rFRawveFtcJTw9HIM4PpCvIjBJUAMPGdlykoF9iMZSvlYVN7utGXvmm85
APuZ9mzVnskpA7yMIC2nUBJZiKENE9SxWMdCp89GXpDVg0FIJ/TulYgWGyTNM++1vXhkjjmIO6Mc
ZVd9YjUb9rbzSW2I59JMmyvk9Id8gzdXUUmvza5biG8vhgkrJniwrwNKZj/i/g2hU2LA9JWgyIn6
S+lgtAdsm09aH/fj0BJYtbB9N5mo0ME2CWhdaZlflrd0IM/lo+17Bb5mpFsjnBav9hzdL5tRJvqP
GA4RQ6/dPHeAt+Y9JjvKJ+eyT8+9JnMoO4gQM0ynb/PprYA3xhU0OfHudMKHfAfSQdJs14yN/SJA
3DY2VABMEiQ/NF8gjte9MIFpeshdTPelUUL3nS+FhojmFFBZb17rNVU9c1ciCGbnzYUpCVc5jVCc
3H1uneMFhGBpOOQ9qtcxuQMftyBMKLdu9rRY/AY6cMHFuBg=
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
