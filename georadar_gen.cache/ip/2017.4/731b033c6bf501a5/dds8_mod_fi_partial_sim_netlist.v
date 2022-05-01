// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun May  1 16:11:53 2022
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
l7VwXBjOwxMdIJ7W7IX+uXGeNYgp9FkjmUOO6o/AhxeKO2m8MtQTcodyQM+luUlgo2BrtN8rkL6Y
RSXGwUyHDuR4JEKB2n340ESO37qlOggVBfbm38H8JbXxm3Q9aIg86nNyMPUctBkH11x4gxxDuaij
5rXe8IOZiFnCwdRrVOujMvlFSmLheEFsppNPpIwiDhZX+8uq9K1WOHXux7x6wecqDBAnIMokoWM/
ORekXdgMcgj4Jet/AWnSrpjNasT/gWRtJ6fy8Etr6DO4uKuGR6GY6KQv8NAL3OEHNCTvCbXpdn5N
v7xD9YMI95jCh5JxHu0oAc1Rnejq5DrqVIbCNw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XNBr6WNp7q4mFbD5juS4q2sApCz9M/7n9Kzdtp2/3+WRIItf6gv2OCPcWCMSNgqdLnKCaVBfq1y/
seNv+HcNVmR+GsVTurHf+7h9lFjFxfYDg7YjvtamLMoiFzqq9bn/oXYBt39Lv8LVqoammBbGV9Z1
Ecxn5//UlBmNoZgiJfdkk4XB+lFZVwmiyQ8TQn9aGyfmAssXNucidR58mk4lKMwwRYRwDqGDkWpQ
hxKLytLTv4k0uUMaYszYJvS6vWnEVoOJILOGjLmwmENVoDxN0qSz0wha2fOw5M5mnxDcpvBluXMv
82++CC+QlxG1D+18+UPd4e5+rnKL+k5JSo76ag==

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
