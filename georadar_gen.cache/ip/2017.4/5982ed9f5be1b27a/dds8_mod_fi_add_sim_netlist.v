// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr 23 16:32:55 2022
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
