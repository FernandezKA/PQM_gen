// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun May  1 16:11:50 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/dev/FPGA/PQM_gen/georadar_gen.srcs/dds8_mod_fi_add/ip/dds8_mod_fi_add/dds8_mod_fi_add_sim_netlist.v
// Design      : dds8_mod_fi_add
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds8_mod_fi_add,c_addsub_v12_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_11,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module dds8_mod_fi_add
   (A,
    B,
    CLK,
    CE,
    SCLR,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [31:0]S;

  wire [31:0]A;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [31:0]S;
  wire SCLR;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "00000000000000000000000000000000" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dds8_mod_fi_add_c_addsub_v12_0_11 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "32" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "00000000000000000000000000000000" *) 
(* C_B_WIDTH = "32" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "2" *) 
(* C_OUT_WIDTH = "32" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_11" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module dds8_mod_fi_add_c_addsub_v12_0_11
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [31:0]A;
  input [31:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [31:0]S;

  wire \<const0> ;
  wire [31:0]A;
  wire ADD;
  wire [31:0]B;
  wire CE;
  wire CLK;
  wire [31:0]S;
  wire SCLR;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "00000000000000000000000000000000" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dds8_mod_fi_add_c_addsub_v12_0_11_viv xst_addsub
       (.A(A),
        .ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
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
iO2Bdkfy0dqqValMR4KhTWXpD0gDQF+kyoly3tZBTZTVs0CbWJ4Owhu4jxMCf8X2gbWR6iweF6Ks
B5dmLHZTDA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
dbcEbgyZfx3YLmYpvjegvD9sRQCV1qBv0GqFBvCakC3SMR/H82zqo5uv5MZldBGUVmNHnxF3Vejx
zSqxUKfTNc90CS6quuoQe0eeq3T5XSdgwbNtjPZKvJuJTmQKT96yB3CfQOz13fGjaLrn/8NBUBBh
I7OEoGGg7ADph9V3vRg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bD3a4YgAnaoJx9/hljj2C1rODcUhawTVE1gtdPkNj8/YjemaFM6/sF7Q0CXbDJ7a+OBrB5pUgj3O
Vesi4yVmFp+mGmFarftWat5KmZiP3RVWrXwdzMj+f8T7p+lE3iD4njqUxIUz0TsUaNvFeW0xVNNb
OwTEX04nyt5HrU82dltJCclpFxE6yrP9YvI7l328bphwnC63xxk8T3yXwCrvj3VrIYuDT2yMRxrB
TBCv/Fe2f07JQyV73J7+DGAeJG0B1dTHeu48auQT63g1HsYaUXREihEUKgZe70QlOqlPbrr6Quhx
2LXE8LSdCA+FbJ7LlQc/Sgasj3ZYjM5lhEKleQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GCfR7acMSeEtOw1DhZKkUXjh9Uw/vUar7CGDRG9rZcB9NFDtQTltJeuKjFg8eaeKH9HFBMryuX72
/tmzhtFaiSTjr2na4ncL2XV3QRXe7nQaiHdc7cKBcZDvdSSMzOSYcIxLunwLwQTLC7sCvINmlxO1
NXnYzJVL1xb9HP8QVnSYpo1p+gCXcRBZzrOjZjCUnl7F2t3ZZStSGjBEyXVLnV+ouU3+247oJAOa
kC7v+pOtG2ho4KclIg0MGijjPs+jyOFU+b5C+ufQp/zL9GiZ5waCjb/0Y1vkBc9jZKR7YRnv+ASG
ju1uP8oqEXR9742kXRnW4HkMKkCK1MLDgWYdqw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L+AGKmFZ1zoRJFd2cA+zxJhkgQ1R0aEjGQCGRFLNNhLHZXpzGDIjdSLjralBVRJ2rD6UcJutapF5
YaMoV9kphGGG2B07dxBuIimVjOxS3ZQJ7ru59ddfGBxUe9EHrv00Q5hTwoxig0lxqnmjSSnfsDeF
weTIqNnXkG5kqqezKC8a2FvUD5QWQBibhK69OAdmhhIOwZmpfvQKbEKgLX70BzcNlmLnttRL7G+q
XZ3fabZ42+JJHDLiIfveB3Gp2Lf2tzTH1u2xx5aEUr9154pnC9PWIwL3y3VBAT1oHR7ScdoGDOEy
HoYUiDibldOidIeKW0KrTeAIuBNmtM4R0R+RSA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
V5ClnklUs5Wo++EDemG/KeowZlAfqB8SUrvSxPQGrdIwGfUvoCajhuABAWdS/L/pQl7Eyz51aiuw
KzPMrWtQozAEITf1xzvzgKbWZqoi4PQD3rThywFsFq60u8DdvHYM/kEvit0cZVFvG8rAbtlseHLu
0vU1kbrNgxb3bxjOovg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cRqAgScIUeXUwYGfCC0XDtpcc+mFNm3p8oTcFdtIU1nnlMagpBMqRm5ELc+m/Yw8jBwvcvt4tUFv
u/ypEEw+y12B+5Pr6SmnLJ+NVB3Q3Eyh4Q/d7p3jReIIsUxrlENpCTi4PVXMKr1B1Htzm8F8mXDq
y2UV+0SC+4yrBIntsdS0S8jPBERhfJhzNC5z38pPHANtM4wGGIUuKxIALLz1aq+2AjLbEgFHNrzw
2bJiDwRSTwrY4Yx2MSzYJk3O+cQBUe8nJDPx+aGEvDzQ4ZdJMNg2z+iaiE7OTaqK492Jb/1jvU0j
wlI+n35s2rrnc9QgfljdOJuueruPuYDi5vTTxA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cYFROgupMjoMQFQc2e/ARO7p8lxCOtpMA1gNA2YldA3bt0sFjvqheqKWr7M/0d0sRUB/o6bn01Oo
QEvQZBkq6A12UAACG8wHo7LYwKeAKONkMvQFkeWuJjacuEhjwMs8Li0dRhEsgfWo2UFembOmZC8D
ExJa4Dr2dknLlUy5oZinmBoE4KAU5TTkOjZRA+UAaVakeGMu++ooJ2f2ZuoLqX90sGgbS8aZ9gGc
kHv/MUq0mIrcbQCZmVigtSqlN0yZa+OjW04aoDWdWR5J7uzY2iVwqUnr4dMEvXQnbznzZEzM6J/b
VHA0dmnbqqh/jS4QsxQRBzoZgiqkWmbX/zYXoA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
5sCVh89+4lRrBH3yS4dX6j/rbXcAAw9KkEU71rQB/A1RPG8ZEo/OCB+kF/nnbjLpjCoy0BTHmsjR
GqsXKEgP/g1HYLXXp4pN29MjhRlSwXw7NdNKIt+4qPsxy3+8lwf07ejTccpimWDOLyrVG3ttHEjT
FBFxJx4zzpFY8RD47ewz8Wqs3NMrxhw22gv22sp/pxnvOpxBNwBfnG3mflAWxSPCJf/4A941IrxA
J1NcILdApsGteup2ci49xeFq4G241Bq0r9/A+i8mUXRLm2lxDjBIyUhdJv9SlgfHnrV4Qu0NIqWm
rMD0amgcn9RV8MZSHKC870jkngQKY5otNGGFcg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12416)
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
