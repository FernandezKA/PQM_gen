// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr 23 16:32:55 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top dds8_mod_fi_add -prefix
//               dds8_mod_fi_add_ dds8_mod_fi_add_sim_netlist.v
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
XCxg/zrLJrvrhmpAcjGPXycd+VUR+yQwWXjeyrIcmYy3W3O1j8lCC/vec5UDGQVayuvne+oE86aM
7cvC0somZu9IeBs4ahcZ0cSROU4mN11qXmym7lR9MMdrD7aY+ceUaGtZ3Hpb3/RcKm2xA2/N/4rd
V7/UysFRGj/DMmJEvDj6G+WrKADlF5GDNEY+rWILLn93tj5HqKKnbYEcBO16/xiCr2oj4E6mA//N
dY/+DdOBIEKns2IEHPxuqYEs/j1slMRgRr5gmnWaNN4ch7YXVAVXjZl0LwlMOASM02SNsVz/d5R3
Qsk0HVBNQrrrRRSyLqvRfJG35rIALn9bohvcHg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GkyiacN/V9JN+lSrUS5SoJIQJ43WjjQVANPjQYtHFVRhaegZOofnkklN4GYdkdahxqndjsbBWxOf
A4ZdOBBSLxiObQAlFrY984DN63vqaEBvmEjBLNQHJJTkqf5NMmcKq+kACtJ/fvUuCMWamrSOjLtb
hM545OSqSLuhlIyZKhneYah9alQKmDNLNHblxdIdS3YWHGbQB+4wL3+9G1zNgc5ytdfIEj0wri8Y
hA+iqHR1e/Vxq0fUGMiZALPOmnw8RYYAD9EP4S8wWUUCWAlnzJyruk5z/cs3R235vKK3t6inZtwz
z+7KAXbUMhWtkeEl5iY8ZdjR7Dcfepk0yjeXfA==

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
