// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr 23 16:33:12 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dds8_mod_fi_partial_sim_netlist.v
// Design      : dds8_mod_fi_partial
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds8_mod_fi_partial,xbip_multadd_v3_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_multadd_v3_0_11,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    CE,
    SCLR,
    A,
    B,
    C,
    SUBTRACT,
    P,
    PCOUT);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF pcout_intf:p_intf:subtract_intf:pcin_intf:c_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [3:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [31:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 subtract_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME subtract_intf, LAYERED_METADATA undef" *) input SUBTRACT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;

  wire [31:0]A;
  wire [3:0]B;
  wire [31:0]C;
  wire CE;
  wire CLK;
  wire [31:0]P;
  wire [47:0]PCOUT;
  wire SCLR;
  wire SUBTRACT;

  (* C_AB_LATENCY = "-1" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_WIDTH = "4" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_C_LATENCY = "-1" *) 
  (* C_C_TYPE = "1" *) 
  (* C_C_WIDTH = "32" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_multadd_v3_0_11 U0
       (.A(A),
        .B(B),
        .C(C),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
        .SUBTRACT(SUBTRACT));
endmodule

(* C_AB_LATENCY = "-1" *) (* C_A_TYPE = "1" *) (* C_A_WIDTH = "32" *) 
(* C_B_TYPE = "1" *) (* C_B_WIDTH = "4" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_C_LATENCY = "-1" *) (* C_C_TYPE = "1" *) (* C_C_WIDTH = "32" *) 
(* C_OUT_HIGH = "31" *) (* C_OUT_LOW = "0" *) (* C_TEST_CORE = "0" *) 
(* C_USE_PCIN = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_multadd_v3_0_11
   (CLK,
    CE,
    SCLR,
    A,
    B,
    C,
    PCIN,
    SUBTRACT,
    P,
    PCOUT);
  input CLK;
  input CE;
  input SCLR;
  input [31:0]A;
  input [3:0]B;
  input [31:0]C;
  input [47:0]PCIN;
  input SUBTRACT;
  output [31:0]P;
  output [47:0]PCOUT;

  wire \<const0> ;
  wire [31:0]A;
  wire [3:0]B;
  wire [31:0]C;
  wire CE;
  wire CLK;
  wire [31:0]P;
  wire SCLR;
  wire SUBTRACT;
  wire [47:0]NLW_i_synth_PCOUT_UNCONNECTED;

  assign PCOUT[47] = \<const0> ;
  assign PCOUT[46] = \<const0> ;
  assign PCOUT[45] = \<const0> ;
  assign PCOUT[44] = \<const0> ;
  assign PCOUT[43] = \<const0> ;
  assign PCOUT[42] = \<const0> ;
  assign PCOUT[41] = \<const0> ;
  assign PCOUT[40] = \<const0> ;
  assign PCOUT[39] = \<const0> ;
  assign PCOUT[38] = \<const0> ;
  assign PCOUT[37] = \<const0> ;
  assign PCOUT[36] = \<const0> ;
  assign PCOUT[35] = \<const0> ;
  assign PCOUT[34] = \<const0> ;
  assign PCOUT[33] = \<const0> ;
  assign PCOUT[32] = \<const0> ;
  assign PCOUT[31] = \<const0> ;
  assign PCOUT[30] = \<const0> ;
  assign PCOUT[29] = \<const0> ;
  assign PCOUT[28] = \<const0> ;
  assign PCOUT[27] = \<const0> ;
  assign PCOUT[26] = \<const0> ;
  assign PCOUT[25] = \<const0> ;
  assign PCOUT[24] = \<const0> ;
  assign PCOUT[23] = \<const0> ;
  assign PCOUT[22] = \<const0> ;
  assign PCOUT[21] = \<const0> ;
  assign PCOUT[20] = \<const0> ;
  assign PCOUT[19] = \<const0> ;
  assign PCOUT[18] = \<const0> ;
  assign PCOUT[17] = \<const0> ;
  assign PCOUT[16] = \<const0> ;
  assign PCOUT[15] = \<const0> ;
  assign PCOUT[14] = \<const0> ;
  assign PCOUT[13] = \<const0> ;
  assign PCOUT[12] = \<const0> ;
  assign PCOUT[11] = \<const0> ;
  assign PCOUT[10] = \<const0> ;
  assign PCOUT[9] = \<const0> ;
  assign PCOUT[8] = \<const0> ;
  assign PCOUT[7] = \<const0> ;
  assign PCOUT[6] = \<const0> ;
  assign PCOUT[5] = \<const0> ;
  assign PCOUT[4] = \<const0> ;
  assign PCOUT[3] = \<const0> ;
  assign PCOUT[2] = \<const0> ;
  assign PCOUT[1] = \<const0> ;
  assign PCOUT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AB_LATENCY = "-1" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_WIDTH = "4" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_C_LATENCY = "-1" *) 
  (* C_C_TYPE = "1" *) 
  (* C_C_WIDTH = "32" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_multadd_v3_0_11_viv i_synth
       (.A(A),
        .B(B),
        .C(C),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_i_synth_PCOUT_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .SUBTRACT(SUBTRACT));
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
Wx/FjveTershjy3KuV/LHAChHJS0gj5uVV9EsxukKQORMdMHMOQk92Ll0O4LO3kXcIlnxWl5Zw55
1dfyN1j5ezFJke7HUzQVV+aiS7VVXIeT0sWIlIKK+ZeOohTAomlG0PmEHOHkYClAlnoapWRybCTh
9mmobsn/+C+8wxwSu5HAYQWRytSSNBfVjFxq6j9EE6BrvfEG7DzY+uC47t1UH7nEZLWMjmQ5bTtj
+3VtRsxx0kCTyvuY/BkX3sJLMWHwfwM9JZsvHGChvmDJeMXqTLUxBUqpvmUl5e+npBzFxobYVvJ+
fBcxAHoSezIxHVRe47+eQKkHUBD+hakJVpYc3Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hCWDI1PXAL8I4CxzuYFRijMRPj2CV9Gxu4xDZzBVS15MvDoF9vymSWMFFY2bE2T3n8Yyy5cbg/Ue
H3LsORfL7lwF7XWHnUYZtQcj35CzAf5EfK1OWSe6U2hbkgBNbfS+BAFJ+l+Ys1+9lx6fxXyUg4PD
i47+CHAcajpNvZgW+SAMLZOsrCQ23A32nqz0oLbDHGZsrxqLkABmgOkWeeBNsZtHViw+t5VvGtAW
FvgjYZROjANyCCVLoM6VzPD9G1/eViy4BoyF1y792wkMzwKjpmycASgwO3o5pjl7Sg3+STT5gfMy
Hkig6fV/VIi35JUgHfFmk11iFCDH4X6jwrPdPg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25360)
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
