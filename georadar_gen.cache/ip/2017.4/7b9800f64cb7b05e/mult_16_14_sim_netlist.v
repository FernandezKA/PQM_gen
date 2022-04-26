// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr 23 16:34:48 2022
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
