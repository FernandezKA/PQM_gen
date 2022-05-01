// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun May  1 16:11:50 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/dev/FPGA/PQM_gen/georadar_gen.srcs/mult_14_14/ip/mult_14_14/mult_14_14_sim_netlist.v
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
S/nwKnikC0Wh696bs5DpI55LhTCxgm+V/BlibhWbz6DO191JVpBad6pEBQmsWRWULwxNBsBChm6W
v0DME4G2N63Fr0ogtcQJDb7Jtiv2r/o610ePkITDvZ84rlfP7ds8rvtlDTDSV8y1stivyuQ84wVr
kFDY7ZWvqvPosqH8peRP7CRj5B3YNkJ35ihI4fsAF+oRekQ9jfgi7uuU/Jdd7XvozWiRYzA/lK9Q
5i1kQyHNGN4MnmUgyfLfEkJTl/ufk2uRaDlYfD2CDpTkzJs6bLr7X8sgaDWxMvM3HcP55DZ5vcTl
OhIKgMUOySnJNYoa/sFA/P/Thbeq3LQS4agxLg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6QEjm4aRI3Bf97yKGu1Rfi1+FSpeJJAsTMDWdULwwoy6NnOAYNgDQkSZsHtih6DTW0uKaxF88Au4
fea6XTbVg91BQYJpSUrtiDfrPrBv43guDWNhYLJWDCbSl8LyUTJVbEAjgHduxmCWGTIc1FWzAEgr
RMPJXh0TV5hUJVsCnOvjDN4KltA84fNdK3ZqRktAaDhfiss8GqHBiFSmiEKu8sylPjF/xFX/8oDb
5MXxgBcCmXImSK2WPEhmPYj/910hyPmhJzPalzcz/4DP+RA+9O0DP8g3BTxn7tzmgZjJbna4Z8/5
04IJIYLae6JIhru3k6rSBP3GcUEw8ByjPwjF8A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8464)
`pragma protect data_block
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
3V3AMzqjH2Jjo1vHgBuaTEFksOeZBxQpbIAlbA==
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
