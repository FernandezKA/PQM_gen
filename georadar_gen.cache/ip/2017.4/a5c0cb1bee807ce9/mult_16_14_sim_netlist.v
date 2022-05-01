// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun May  1 16:11:49 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_16_14_sim_netlist.v
// Design      : mult_16_14
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_16_14,mult_gen_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_13,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "14" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "28" *) 
(* C_OUT_LOW = "15" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
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
CvrDlfpsvO2Rl4N7GHPNawLxDPT1iKJwcCInoXnbfGM6cQuJBp+dqBKXdPzRsk7lxhtdGfehx1P/
Fns2OJKvnJHfEtgncHbvooKyzZp3Dm8vVNujYEdzWpzeeb8NSCuU1cD1qAqExoiSf/PC3v36Meme
XjtbvWX998ZVyDBcpV3hiqM0FDMN/iAeC7H8wo5lmkkmNcIy2rjjDMXiajHD763O8vXrXAm3XwP0
iWby0WAZG9Xb2EITRZbfnlg6g4K90QsqZcQhUedyR+ljgGhNE12hL2SOejOlZGnISpMyxAtNY/A6
uang4nVvRk+CcjhvN1thsIx+H5cWczbF8Re6mw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FLbx3Z03YajPbDqgudORk+8W/XqdMph7nSo1Y7b0BVRsmidc/ZVsDqlJotn63firnPwuuu2kNK+Y
WWx1LyV4W1+ien7miYA67CTlIuAvk0Tc67nkHFKbKZ79OZEhQQANX+98sDaDBkOJAstbleRWki9L
FahXrmNtMWPQ296hAiLfTiX0a7Qvxe5i88JzmxwlXZWo6d5mIFbIjzg1j7x5deFl5/sm93OufgZK
do/lhBIWP/E0S0duaJUXyJ0iHo6zqf6YH0apypLS4RuqgV8UMEm6iEh8QiVDz18vv/d4toDRm/B0
0anIWiCEVasr483lr6iF4KIIAz8bdRN/2hDeeA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8544)
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
