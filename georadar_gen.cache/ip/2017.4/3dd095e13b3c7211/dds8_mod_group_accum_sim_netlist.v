// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun May  1 16:11:44 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dds8_mod_group_accum_sim_netlist.v
// Design      : dds8_mod_group_accum
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds8_mod_group_accum,c_accum_v12_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_accum_v12_0_11,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (B,
    CLK,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [34:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [47:0]Q;

  wire [34:0]B;
  wire CLK;
  wire [47:0]Q;
  wire SCLR;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_WIDTH = "35" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_OUT_WIDTH = "48" *) 
  (* C_SCALE = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_accum_v12_0_11 U0
       (.ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_TYPE = "0" *) (* C_B_WIDTH = "35" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) 
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "2" *) (* C_OUT_WIDTH = "48" *) 
(* C_SCALE = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_accum_v12_0_11
   (B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [34:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output [47:0]Q;

  wire [34:0]B;
  wire CLK;
  wire [47:0]Q;
  wire SCLR;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_WIDTH = "35" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_OUT_WIDTH = "48" *) 
  (* C_SCALE = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_accum_v12_0_11_viv i_synth
       (.ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
Ugc6FdWL7POZ70z2gd/vtc5vUTk7nmnOc6x6GMUCdUwoDFdT8WnSzjKh5I0Y0m1vniIz2Yp2cAqh
OaEqpXGrhg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FXqM4O8QPotfIimM02hA4j5hZMdmS37+swJBqH+5CsUC4DNKFqjNL9rIKRWsqluRTZsRa8MDaMQ9
jPvlt46L73TR6jBrlzkW28QBwiXeSsIHfXdvFVRQLMopGVaARQ1EGd9/c3iyjwiByAhW1Jt8FinD
dh5clra/xBz77UXR7tE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g34KQoxuMCd6/UoXGNq1LUw6fACbLJJnWrv+t58R3f0TLzJqS0A/IOV3Ebjdnvg47tFGL0h6wEgk
KkJ8kgWctgN3gtX3NaEq0Toar+sxaw/4PPZrhJbqNrlYzpbn41rhMGt4N8P8flFmXPBnlNDzxaiK
CXCLCtRLBsAS6lTX+M7p5jRs/PxImqwJpXL3sWTQ9/FgY5wwqlMcCzAvD75kTe3CBE3nFu/SSpaZ
jzfpkW/4SpbNqu8flTVbEcex8K/HDAhBdWlBU4tdC1lT4rocPLBCSn24Lr3+Zp16EQgWHu3vbK1O
m6RZFhalcb7cRImMxHmCni7Sit3hqjaHYGNssQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nO6jnd8pbwJfbbg2+95ZO3AVri39Vy7rD5lRj+3/lF84CltWRbtzoUtbhj3ZgpBdioYvcTxGv/i2
8YtJgJDwQkGZm+ewN8eDJrDJvY+jZ3PKD/htPOdIHeirYWvRwzGTlgF9WUelbmOk76/wSMi/zAto
bqrhQOz8dzZ7WRcvgTeX7CXsbfpe6ADgQnVEVq+tb9hzIRP4B0RPAKwN2Tex3z0Mep3oNKQ0SoH8
tBG/IyDtGGYDOgGnnp0kR5vQAW7w4W2OZjMhWVsz2apb1N1PxUQQjRGrB0x4h6RZ2L5Ve9lhM+3U
RqXJ6/P/7ZuTQXiH1fGJhNMUdenwcOfDrZasDA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tUFKsnj0fNStBFWGXviiqLpQAWEhJPNc+y2N668WT4AjUiD6Cfi3MsIoPl3iITeV1NQi+iTF90tk
vvE8RodWQhtaS/b8F+twGWhoCwkNr+s4e9c/uUJjjbM9Gr24C4ej4KKhxPhFNYBy6/eZ3LGaznr6
HLUk5fx8JOSShEoonUHK/qvSZouWlhqK6AzvdFo2fkRAzJHMgFAorMWrkBD55mXFs4t912alyDl/
DfNi0s5x2c+pKbcHCYZNbNjIi4aZsTaqxURHXQRM4slSn1719zZ1oZKGWLz8FM7ZNj+5bqSLWZ3T
iEqvWCzWzhrwP10FIfcytMXWL6XN62+quaWveg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
GD7wPrCfjGn4OXkOOgEMsooysuGTy7fuf/t6s6ed8hI6eVO1wiRiTUr8T6TOFMUPz25Fe3+AjAsj
7GJP9S+ylHE9/t8ljSrYjm+tr2qp0pItUQHlfnzD1HDFjcU2GQx71hUggRP7HSTXoX0ZBtdMxJsx
y5wU7l8PME4Z6+rFfWg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GQnnfXcKvfJGHibasZeBo9w+cQuQQMi0GLH3uU5kRl81aYoMeX41ttSWKNlAw2smlufudIVWIqr4
1XDM2abRB//KO5mDmKgYJIg/tf9731+Bdr1rCZs9mQF4PIroKcKqQa74O8/Yf0vQN0bHupu7hLbR
dvYSfOCD+cuomPjkVm7OlHAeJENPiNxOo8qROXxOi11ob8PnO+tzX4HuTSNWvZM4owOCdeV+bfJu
P4INquk12odtGIE2qfP62zVbUOWXx/QWHOiIBcwofde7bjvBW8FaJHBlvGXfqWCbzuAJnK5HQnoa
ghV+DzALxr2evIF+0yjPKB26Due69DJlFy4fEg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z+0Jw3JHyVLauKlKmBj/otJb1WYDnNzERpsifR8h6nM6E5/Jhm7+/2iZK5KJ8V8V51N1PeHpt3cV
hh5kO0VEsgdN0bM8/LcS5LSwTEedVpMpFg/cXKPdhMknVRU9yMDufBQQiU5dcp8niz7G2+vh9Hqm
jPz5mUIfLKSQZXOrkzSJtxCVv3HvaUyoqsXrpnNixIJSyVZwD93YbZ8DiJak40p+U6uy1klwqAI1
D9dg8RACHsf0zR0g9MbmBsgQzAhcJ7JtSumTZm/xppbl9m5Wew0zfv3rpbEWDmZAxy/OPDxNhDo4
bHTZWqce+wt7DTOAnYEcDtIpEAHa/zh7YAfQ9Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LPRlrbEQ5LdAZ8v/yORpJOdbnXim4YFKlJclTR+zKqsLB4NZKL79BCurG5si+g0FK2tnZ7WGGxNt
3fa5tSlKXYRXUtC/ivWJmbgcoyZ6mZoff6vIOWvga9ZVX856BqwPXb5J818LUPFxEipjZrKHvmqY
USrp1YjEPPfBu1dVjWq3ON9/tvz/agRepLLlTE7F+wbGMn1umQ6Qjx6y2FRYdeL6qqNKBBPsxNF/
a3CIPVfnTETWMci2eTTs+9NYw3qjlfe5gAjxEDJM1+7ZJXxyLvN4aD82Kqq3v2JQJam8lqfpW5u/
235GeBr4S+yd9SSfv3i7EmMb+UeI9KnBBYJkaA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10080)
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
