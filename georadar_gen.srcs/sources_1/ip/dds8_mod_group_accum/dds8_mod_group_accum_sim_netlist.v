// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun May  1 16:11:45 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/dev/FPGA/PQM_gen/georadar_gen.srcs/sources_1/ip/dds8_mod_group_accum/dds8_mod_group_accum_sim_netlist.v
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_accum_v12_0_11" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
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
ksoOUaAhUkxrC0btXOS1DCi0cec8SPtLfSK0dKXJxGsQ5n3idF3+pnFz01th7tDJRZeCi0b8ssE6
a+hn+NUK/Vedv7YIU1F7o7IEuOKkHQniBRq4hV/8DHirQUxliY9ME3wHRwjlehi66VfRpXDrO7X6
yhlc2O4XLKpuPu+g6HNxCbcIkJ6SZR++ha+yhy12YrGR8SRWbnuzWZrlUr28aFtF4wqFoKyaJsO6
TlJ/04Ut8aIkhWyjCn+lA3Wq61wDRtOpQwXRNx1T433By/Ftw7yEsTdgde01/ob/4WzMaVYNzJ4o
cPATnC7fvBhZ5RQQ8/fWtZ2sVg2M4jezwjKreg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rtsNWnyknu3YV022sJdlU8MEsbiKYlTjujpUOmTg8jBCVXJcf4EuI/rYLWLLQGNwNS5uMsggxVfZ
6uCghZkVOQ7H16seAiY71J9tiH3NDOgvLbKsLA5m+1+Y7R03I7t3YDBBNijISnrqxy/+48+7WKG+
e222pyZwY+vF28+jwNTKMnQO87nIF5MNg+Tz/1hvIUqIHK2gCu8GeycDoFFy5CUBUaPKyyR3b881
T/fvMlzfX0PcVVyEXui1ZpBKRo1YVI0lFP2pKzthfwkx729x5FXM+qFnHVLc9W+AyPZtA/B0rR6Y
aV0zhy9HOhfsXbTzQvoNpkfRGL87+Gp3IBtYTg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10128)
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
