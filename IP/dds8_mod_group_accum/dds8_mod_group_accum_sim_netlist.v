// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr 23 16:33:17 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top dds8_mod_group_accum -prefix
//               dds8_mod_group_accum_ dds8_mod_group_accum_sim_netlist.v
// Design      : dds8_mod_group_accum
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds8_mod_group_accum,c_accum_v12_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_accum_v12_0_11,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module dds8_mod_group_accum
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
  dds8_mod_group_accum_c_accum_v12_0_11 U0
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
module dds8_mod_group_accum_c_accum_v12_0_11
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
  dds8_mod_group_accum_c_accum_v12_0_11_viv i_synth
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
PO4aV9iG+FtKTK6+/S1NP4mXcO1Ls7GmaROY
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
