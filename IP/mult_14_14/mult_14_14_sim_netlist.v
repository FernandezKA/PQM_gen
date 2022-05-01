// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr 23 16:34:33 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top mult_14_14 -prefix
//               mult_14_14_ mult_14_14_sim_netlist.v
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
CmuNy3RAP4USCfppqODZr2c7cIBCA2orIW3va6VKBJ1azlhwrJlj+EmaX8fToCQrhLk+Wumo100E
UrrJyVX0UjwQPHQ91sg7qRGwnF75STlccflfXseHZJv4r/gcSdXK4cq0LPgXJmYbaJIfNboh2Dwy
X/tITEmJ5G7e92zv0vEtm2H5f6z+oXIsaKALoWuYFWscv1sjZ0pAoq3tCBaE1WPRh4WtOyAvTVT6
UXJJXr0+YWfv3W0jJH7hFrzT+caOHr+wVdHh4HwW68/wNpUKwBQwst615bUM6qGIwgcOwROYAURM
ru0kI1+C27v58DS0bz2aNLg8C65FVFNb9EwCeA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gRloRYbvMRz+jDE9wU/k1HJUyXL5iE1gLPfiXBnscTsirkXCL57Jlni3d3doQi/8Zvch+bU1T8+V
FAUwe0XdZFHfMgET8NCR3NNPVdcsJV4wpfafUvsF3wPuxStGCi/rigSwMlM9eFqM+IWjw8cfE81z
Ce1KmBZ8GtjupgE7w7xQX566encrKxHxHmXri0EhlZoTe+V/uXy6ENArLXGiWsMbT06f38EFOP/6
woWfAhSTWQP8X63eVDzrepqDIVw6tRsa1Ng16bx9uN34lPL7ISqhmVNX9h2Lm229n4jmiEpPgAjz
TaV3rWzBaRuYnzsmGReRLVNYP0xJwvjlUbgWdg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8480)
`pragma protect data_block
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
zoTEZ/s=
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
