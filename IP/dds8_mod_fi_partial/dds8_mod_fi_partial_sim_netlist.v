// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr 23 16:33:12 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top dds8_mod_fi_partial -prefix
//               dds8_mod_fi_partial_ dds8_mod_fi_partial_sim_netlist.v
// Design      : dds8_mod_fi_partial
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds8_mod_fi_partial,xbip_multadd_v3_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_multadd_v3_0_11,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module dds8_mod_fi_partial
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
  dds8_mod_fi_partial_xbip_multadd_v3_0_11 U0
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
module dds8_mod_fi_partial_xbip_multadd_v3_0_11
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
  dds8_mod_fi_partial_xbip_multadd_v3_0_11_viv i_synth
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
