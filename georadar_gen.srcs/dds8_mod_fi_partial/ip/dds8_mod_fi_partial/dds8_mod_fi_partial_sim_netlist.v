// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun May  1 16:11:54 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/dev/FPGA/PQM_gen/georadar_gen.srcs/dds8_mod_fi_partial/ip/dds8_mod_fi_partial/dds8_mod_fi_partial_sim_netlist.v
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
(* ORIG_REF_NAME = "xbip_multadd_v3_0_11" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
Xuq91MefFMbqXWQM81prSYgrgfpE5kVQE9SV73s1Po5Z/hEGebQTiCT/IwBWS5w71fN/WbcYbaV+
cDbs9r6x9VMPw2kkx5EveEMJP5lDsh+QgrqzCTuufYFn1QnIMu3nq+Yard+a94Iar8lC1gZZJq3f
A9VWBMV667/oaRZsFs96TI0kcDLxb4AoLZEpN9oIUdm1PS8wau51P8NQi5pvqCfdpUQEGfcmNeY9
O3J57r9jMbKJ76zOWI8o0k+wk0CiBFPHDA3VIT1TyHH2yOQKb+RL51Ct9fRyKXPzT2cCRwkXDX4I
renQWS4kjrgSc1i2Gack1yQsIJlVZin4nf9vUg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xucIITcL3AZk4mCkFzxcFaZr11eh+BzNBgsBmJQ9Stvl0WVkftRv/PBrD2dYPhPJ9uTUhYLmmkTi
9HlArj+ZqGrMUeFwPvzF3O1FGg+Ug7XoIu3YhV73iuL4UoQY8Uw+nFiterSWF9PGS8SyZvL7R12D
3sX2vFEl+TlOcCY3m9pg126XPnDCZffkSUZryuWCkKMA7eveL1rCWtW8xhP9udz1QYYZYont7CUG
MlJ5xaMoDXUQqlK4G+HGqprKwgm4dxLvMjU8MUhQxrI1DQOovRcGBMnum5OVNHyCMzDeGhjLNyw6
IS6rWSM5P7tUSNYSdwvCCDNYO4Af9nhvJNcMsw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25280)
`pragma protect data_block
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
8ztgXOvU54xqPdT20g4K4NMtHuJ8y34CZTcTlTQ=
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
