// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr 23 16:34:49 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim C:/dev/FPGA/PQM_gen/georadar_gen/IP/mult_16_14/mult_16_14_sim_netlist.v
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
I25IL+BQ85sh/SVf5UeoFX/sAGMaaoGlTHJcbWNKAR7u8QtSGU29xgFd3JepQdzmky2nzFRp+5ld
PYXkNgPldfROydrRAlSA/ZKETkUmo+L0X6WXdEj5YMA3ooFDcRVeD9xLRbB4gK+ztbzs+yv2wf2o
3SyD/A2Wc+PfjiHMIh/+9Ri+VBH73Xt9MQukRVpDZXQL7nLeVbQktbB8cZCPXnNxLeDQknTyteWE
1gY5HnFiMEvVqqzJSFwoX3JfLe2Wcq7YqymO8bXm0tKrkotQUL27rVKbSZELg2NHzWsA7Ll88wYb
++2LEAlYHIQLALeV3/O9LfQ4FdnUKxDiTHIaeA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KZbuEuZMGCb4+SxCOCNI09vZe8xVnaSG18E2FSCqGSOmkWxf044aFTVxsd8IezH2N2jupDQ2UCd6
m0OGvW1AZFnwXhCbR4EFUH8vGRjejm7AgrldTeEn+8nobcTce7yP8Wtn+UHBa7W5RdcV55PXVk7k
aJZxfN5HJf0Zd5SBpwn04FlNPGKhROnOqcGx+aPClYi5ZuTiH/XjjdmWWjxSUwMekzVIT2Fm03Dj
x7fzibKS4+ekd5eXgFBg7gw+awivaYB0xqd+FkX4myxx3kIYu68hFVlOML3PYGfSKugyHaySFHRW
ytQZpk7Zag3Iz07Mk2DVaeibKP/tBbiBnnbyrQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8528)
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
