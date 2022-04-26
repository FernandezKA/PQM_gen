// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr 23 16:34:33 2022
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
