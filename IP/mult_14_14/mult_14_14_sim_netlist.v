// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr 23 16:34:34 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim C:/dev/FPGA/PQM_gen/georadar_gen/IP/mult_14_14/mult_14_14_sim_netlist.v
// Design      : mult_14_14
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_14_14,mult_gen_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_13,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module mult_14_14
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
  mult_14_14_mult_gen_v12_0_13 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_13" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_14_14_mult_gen_v12_0_13
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
  mult_14_14_mult_gen_v12_0_13_viv i_mult
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
D2s4mrUNkL/f3bxwRQJ26fpGBr/BmW7mSQDxy+ndvtR7IsBWudsea97umrK1aNJIoyezoFxMWYi6
aL/dXvNKmoVK8Oi5n1kjusVCek9xcRffptLyfryoDpd55MgVlfltzbJOzGJrg+re2BWs/Sl9W8+R
lOZQLpy+HBU4fH6L39/BnzLCaAYQCCCo7IMI6vnWsVhbiBOdBAhHg29b7ZY8OCkYotzaW9sxdsTj
guDvAE9qcneBBTbcAHlSb2DgesxQ3ZgC6awwiccWZ5KV5xKntlg5A65iqj3H4HnyG2BgQvCL8p2m
mVvIlR6CTvTKXOfV3tw8wnjsFO9MfA6dlxXtsw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
3tyI6hhps9l90xKmtKMB63QmqzYAGmai0TtJFP4rMtmATnoHiYoEJr7DkBrtxRs0PtNCHp7q9OE3
nq6IaXxLom+RU7nb+MfRgN0u/VgVri4tNg7EDHK3+3oHiOvMyi7r5Ns6mKpLZEN5rwyE8+CtQ1lC
wvjd7t1vqb/yhNWJ1R42jvUCJI5VuF8NaF9frM0MC2GcdTkA1Gm+xoqzNTDTiamlKK37Enj8CMGm
3SxVMvcJqquKpPLZsSbo48tW6h3oELdlrRvUrZbDYvQRXMW/kp7mMg6KRLGDnzeLpXowky4chOaH
wYpl9jNDPcxV3r8dlaYYtEYHEpyTYwUHAlMEJA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8464)
`pragma protect data_block
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
ER5a95wu/5JO7VNGLmvg4o78D+FRilrcGLP13w==
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
