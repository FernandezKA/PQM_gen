// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun May  1 16:11:49 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dds8_mod_fi_add_sim_netlist.v
// Design      : dds8_mod_fi_add
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds8_mod_fi_add,c_addsub_v12_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_11,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_11 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_11
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_11_viv xst_addsub
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
OdfIZmx/6Uvde5jjNqeildsW+tWCumCz59ggo8emlXYVDJCyzklg+XTFocktPXbzjStUOo8WIMWI
O54W3mObJqCfuDg+85ASuAvIAb3VjPVCyfKA1FSsjxuLPyaTbZWekAd7SENRSkXau2gE7m1nulAZ
frL44Yyq8wSq4Ji4vfIfOFzIfpughIQj6FUNKzzCvdhF+C0oBVxp+YJv3MRy7/PYHlEFy52e84VR
p0qExsh2xWiZkkMIM1IXq2B0CQeDosNKpO0ylWTI5AYQ480/t7MEnBo8RJ7/x+shKLnco4jlG0Ut
SEmh8YztqoBcHB/kV7IECYKx17o2Ojqlkefv1g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YEoGExLg2bjdeO0GN2ukZwjOfJuO3ERDK3r1kC+ACUqjoZD1Ljig6GlU6+5J5pJtgGhOyqdyxo1w
PI+HStcJGDhAybOjROSuS3rQqUgi0bfUQLlt0DxpvdBb8aUFed9Qz8TD/bVsz9x4KbYYlXDqYtMt
jzxFPsGaoIt9m+H9PpBDTN6MFUob7eWBXwlXIJmpD1nhst/MUT9Fr0CXrb/fE6feTpYO4Uj4ftrL
6T8W3GAz9CGJRkxw+MTg05b5nhEC6qBsf0QBtnwtD9VYpaUSKUAV5tggk6GGz9rz7JFir7rVF4j9
+cIpfQTe0wAFmBvWCSllz2XSFcMbBcxGpkf9pw==

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
