// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun May  1 16:11:49 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_14_14_sim_netlist.v
// Design      : mult_14_14
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_14_14,mult_gen_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_13,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [13:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [13:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [13:0]P;

  wire [13:0]A;
  wire [13:0]B;
  wire CLK;
  wire [13:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "14" *) 
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
  (* C_OUT_HIGH = "27" *) 
  (* C_OUT_LOW = "14" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_13 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "14" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "14" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "27" *) 
(* C_OUT_LOW = "14" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_13
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [13:0]A;
  input [13:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [13:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [13:0]A;
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
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "14" *) 
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
  (* C_OUT_HIGH = "27" *) 
  (* C_OUT_LOW = "14" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_13_viv i_mult
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
KcHMVDzswbdPRNwm92B3u87MqF4b/XZegEQQ1j/BhJGRR1NiOeN2wLUzF6XwfkcPq4P2E9ug2Cat
XLONRQLy2SuEa38x5gRACXzfy8xmAnFm4u8df9Am+FAMreudJzB6osFAunaNE5lkmgQ5aX4zVOYV
Nzx9OHLZfZVfLhPEUFO0Tp+WA44I7UjsCwjDcoWEkeEWAZ416RP28HPYNSd7Nq9cdSsAEGCFo1Bh
3v4A6AAzejL3CW20rkU1rrNgjR6/WSnNBIxRV6nmcdmjsqpTvcKrKTlLIC3Z+xTh3FDYe5ifFP+H
DEJZZxfVhomkwleD9gj2y8mcrVAV101StqZ9Bw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
02zluOem4w/U3/Hu35AhbrG0IsPetAwDjJ4GW2PJ4+IchHHxqnH2ElnDKTbEQZbyi3LnuoVcowDk
W73to/l08Qb8K55P355ob7o2ynqfluSv/WZVKogNxepsJVidtj/ZAL1ZjjGxP8lrvy9J8S2su7Zx
Q1JGmToW7e4Tuf/WQmOCk/3znChFWXRuwWPEyfmhePykYwOdDFqJ6AZOVW68HvlFYCpFKWa4KTuZ
/mqdDN3zYlnPUAEeLi3pK/SScJdsFxFmh5Xlkh7ihAmmn0/04J4JK6kwm2BXJY5YGIhnw9fGc7cM
b4yU169ESGq3KOe1NeNDbfi6+8c3VVYIyU3uGA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8480)
`pragma protect data_block
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
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
