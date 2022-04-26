// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr 23 16:33:17 2022
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
CgjCa1F6XaUXA01Uha4EcShBWQI8XpoqJRpIzZgj5hK4n5tDpoW4m6OyiGeorYg/IkmCMhzl5SI/
2dHMhk2DdmGCkalIkPO+oXPGk1kXKThZ0qUhSJZvSzbc6ZOgMPH3CXSPB3bm/j5E9jgTmMBzGphn
ggOjBItMkzbq0pi0+TldfkPdYsgrhmxrDpN9eNb1m/jP3fZIX6Sj1CyFoNisNCBLBWL6drITKZsU
Sjf3gt9RFeelnSXOsE2ll7T3rUpvcrRIeIDJZ2TFbpPvM3RHjb/iBoVx6R/bdMZkKsCea61C0BmB
KdSD0BqKL/1hhFapBBjYJ44WfAdww3fS1xUiDA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ySzQRbsz5JjZftGUE5/pQjTsBYBQsKD05ckVTMZJLmBt9dj53926qsQ4N7iVCnWfa7QVxENz4EiU
cr9BkHGfZfgt891vlwnucTiNRXL9ZcaNkyHj2UhaGREtrcdzPHxgSQVhNhV/eEBi5WUVqpOYjCum
fNX5eq1E3w3R+WoC04LxwZqZ6mSXfyC1b0h9lQWlmDjGP7BDxWhm5C7g4PAA7whAP+M35IjDFyGg
IB89/N8dgtmEUAE7qpucrzALDVPnb6Ey1fngo1T5LOZDGLjmbxuW794MGKSi/11szKnQJiImuseG
ifO3nnWVk4KUrkrkYAgbNw1UfyUsQd0Ch+cXsQ==

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
