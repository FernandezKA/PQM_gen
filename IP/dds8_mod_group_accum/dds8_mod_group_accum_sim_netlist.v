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
ZmKpMNdCuF9HkFWfwcrYUWFjdtQz1TPU5fri
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
