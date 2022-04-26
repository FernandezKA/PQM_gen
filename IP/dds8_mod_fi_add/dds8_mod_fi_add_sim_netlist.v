// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr 23 16:32:55 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/dev/FPGA/PQM_gen/georadar_gen/IP/dds8_mod_fi_add/dds8_mod_fi_add_sim_netlist.v
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
GNsoLvB1nv2ZJbjcH0mwf2eRX+EYdneQq2imIrzwdeYxdPIbJZ1WkwDgI9s0hUh3+RW2BQhEe6zb
mZzueNWUsRzKszKQiUU9jBFUskJ7XSoW8jy1jcZFd1EZoicnuJ6fNY6XIXGXFrTr5EsoC2LfO/xc
R4f3G0OeY2ihNM+rf5PdFjR/HGhU1AZbIIp+0S40fKkgXFN0cT610kqfIz9NQ9hUpy96ghCsqZCO
2zngpwBMojORgtgSZCe0gzFGnLBoyvlSoXF5nwHwCIaVSZQNCUXZ0LvIwd1NM9QEI4z2Wjw/BZtg
Uy0N61EmPROcQkMoqvQWOEmdDwQdAUvJgGBJFg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZeO9ip92TX9rTdiptrlQixLAJonB72nW2qsw3kQ09O9aNUYT35htZ52pdepFgwFqYnylmfpi4AYc
r4c4Fp4LoQ3cq5Oj+/ZJ5pl+w+iNhr6r01p/FXHKq9KhpwCgG0MMQ4WWXGBAZ2o1pO8eg+AQeUmC
AehX6Jh6KDqWQ3BE/ERgHKNgZQzwqOSCt7MKdp+K8SSfqJSWObupiV808GjweK7V5VHf5fOIiGGF
w4Bi+CrkuRPj//yAifz8yE0gJJPecvl0KtbLRzYPPasbYIEjrrUV+Zul5OdIRy12OMtWne7kSgqi
/r11EvI3QbFJb+ODuLZNK0Dz2dgV0bxCocw32w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12416)
`pragma protect data_block
qA5xbnBvbRtYlrYsJCOvXCt7BPMNu2JtM1dGO2dh0myBH0/C50gv2cAh3p011FL9eZLTiPj7uunB
tY5sT2DjHkNTrwz2KRhO9D+moLFulyyd/pv/4hlYx9puyBg06IIEaOXfqkRwcQuPiDPQ43NEwzHu
WO3eyBlxhk2G89jE1yaBrqqu2s1Neuki2w3+xAy2wWheT+Re49n+5IPU3/y+ngZRezIF24oow3z9
FVjssT+Y5K83Oq+GnH3SbVejh9xfhPmGJ0LfxrKZeO4M2gnp9csz5FemvbCt28O3l0HeDhriWZNw
7ijmbY4QPCkq2berdTbbxaRpWYllpZf++SjH7zqX6xcbesxA9aj9Ov3hwBGySLzZt8c9pFtw1pfA
ZS05kLJlf9rj4PcKbZtx43Yz2zjx2eht3HuVJn7fqHdObpqZjESawRL37Hsx6d/0Lv3PueTBiC99
+ZaDk9mrKTp3miQDJf/w5wU6+3qp9WPt79adIpgC26GBPUPQwakH8qqJp0BXlYhLytDfJOZsakOv
1z+9nxWEOJd3wD3CFIvlyU4Y6aNr8qqTtx+eK46PTU8WAVyS/Q/KO0hnwk45+GEZCSiSaS5/qB47
L2LZCj+CQuD4sVOtawLAV7aR/ik90XpUtdgu/JF9A3svseyDVu70aOAz9id4CT2Dp6Aal+vkz6/l
AmKAiK8dtyXRVXpkR95hlxrhbQ6S1upmsVvLjxdc6Wj6do4wUfuV5h/cV/GLcXHQgjIy2RxWcapk
AjY4ijT4h2GEOR6LMPhcHT3p5upu8oruYikY4aNB6rB1NTk7UbNPT95IbPtqdcBVZPVPYAiAUzRN
p2vuZK057FZZbpvAkJUF4bJcFuUyXMRE1FTV41uwKa7pGt88PFpe3pTG258xwY0nwxtx2MowVcHO
y/TqavpciPbl4UBZHObhU5x31WRNnjvKaqhDWptB9RS64zxMkjo4LUe2m40EihYxnCU+U6rPc0+c
u23SNfWRgwGq349FyoPnmg9T/37hD6jU9pDTw1Du/P1OXBJJfxx4pU4BejL+krii1njnGEtmu04S
bpFuu49k3x392v4WMpC3KFE0PWyGu+ISOxJ7HeCYAm/mViANdN1xYOe3NelMGOvT8h8BG/JJRJ03
UPq/E4IqYpDeDYRVCKdbkZEtECBCwRN0YVWs89eaVOsFlU9a98+BgRMQmPVQ+HV83R4AURLWkJ2k
pbBVFp+rS9PTTb110z98eG8J7g9yk8Gf4NoGghKKGUE3xWTB36shxanq2Sm7LULe6S2imUSUWjRp
1hKFubbphBziMD7mNF1QNeoY+qGZU2H0UgZh4ybxYTz+7mPGx0yT2UWFpMmX/5QmYIliGMEIPdHb
brcJzmqIQuZdtN2AfTLLXa4zVyIIfsEk4XHo1hOaFd2X6aHIDj+sljcNHyNjY5tlQnQ/gNh93uPy
NvIRlLLZnbjxRmC3e8+rL5HKMU9b74Fg9WwQRMixXZ1vVDPebGOpCyI9tL/ZSx3eWwBXpSgrexYa
emVoGvg2+/xkdTL1nAtqBjOFxIq6rCZWdjqs5ByztOiB6xso1lIUun3jqAIHM4Vxltkt8vIK0/gk
CpgCXhrd/4qZbIcQbKk1//+y2qyjUUaiKe32fO9akUljUEVelwQDmK9mjfebly0UY9yOHp9HpmZM
dl7jeiLpLm3EM19y1FMuzYkBI8UjjwXayu7ckEuKYj0X+3rN6cfi6szT9rkxFZDHqQFRPTRJlVsG
Ccda3ev0Tk33ibpDX+yXixAQDRprJprdvgqxTmDxTmek4A804E+7t/yTtW/RzwcD5vX6ITKWZSxW
QBxp8fr4IAdzgDSHHYe/AO372bSNL4qAOVeFAb5Z2gflJytdZWxnc5zihceXJfyaUKk8XB/glBVT
sqcBiutM3jRHJzQZ/MCP20xB6h4ZFJFY049Wg+A16H8AzcqNB9WGu+4dJFgcxILvfr8yUefqsP4r
HreyRJKPjfCyEqGrJu/eSHtK4sdnEMg/a7Jy6ngmwWhZ7/ClbRzl69OhPOq+A3ZfT/8GJ6sCq3D1
Flku0XJcPw684hCRi5lyKeNKG4i4CHPbloTa4PlqtMFg3O4CrnAtqWiT6SgRGFTXipPNRIs1QuMo
IHt5020BU3QVEjEQ9wX/CVnVoZWIHG/cWpq3dl4BgErJe2Np7Bx+063JZJyMXJKtNo9yWjyRQOvd
fsjcl/iFQEvKCJfR9dzz3QZ/N/xIPSG9LmkK+0VS1vSl7tPCRL/rlwObJIPsUZ1s9tRP9iZItYQ/
wPdUfiENdhF6TGXEXQSBxbDVZDfpagn+d55wdp6tGJyilxq1rFHFCUdJpLHdimZtyJgPztCMMK3T
tSeEV7PcktN3Ryxbi5cTYba4zaEBpfc4EUeNq07fkMKjnarrzoGqdfS1BNsSATvwAa8Kzofzk4E8
4DlSOzODiVJ3Ku99JveTqfapwMzcmKFmTqMJBNJ3f7t2O9NU8FIFYVL5sXdzAJK60fMTa3cZwNxz
fXCj9L5JlfTHXbhplY9jnwaU+ZdRoCOmds614RnoMznFftw4wfjkSOdlBvniBVfrwbzT6tIcHWx+
NXUGxMzzOJ6VXGeMH4sutkuKANoPI4RWRn4OiICUA8ciykXqAwARUwo92AzMb7KezOYGpbjYeBHP
MAqla6CRLQmf0zok/A/Lxs1f4jj9uPhnH5xLP8eWR+a8D5m1u0Q01sH5OEKGG8wrMMcb13nN6fkd
vZArS/zhhPbmnsqqszd8grJnKuWMtCluEPMvBPeTwFby968E/nV9gmYRMBu4L9gbxlBOAajmy6S2
B4jzADEFH6u7ssUQZ0qWgbnSXH2n4biezaH/1zNqNZ02gAysz3saUS9W4iDwt7nTDeVKe1xvVGjI
ZjqgicjOKq7nbo7B20Av/9ZwOkV/Qbc5tbWB9aF0tkWjDooTmKRh0UfNdTnnj88aa1z6ErBg3PMv
006u4K90udEhrqrzJ1/C7Wqk2GuQszmOU56Qg+0o5Ek6OYsQ5cNPsRWVvgQyRFZbxDXJPKaT6sOs
S1iWnFRJk0mb52rF8Y+9IR+XL0mF2m4zYGreZGIYGT/wa4WEgIZcNWeBVZgVMGj+ENRBGMzBGXfO
kPKIbEPtPY12uO86ipALmwaDQns9Gr4FZkI7Sm0A0HNJikBKYpf47+tPwkmgZe/+l8rLIvOE8odx
NmcG7tAi95JEt7TzakD1IrCeqP1uP2LFe7BJ5NTLisX802GkkNOV1bmFD+ORSz9t+dAa58p5iuBE
Qs2ttfNEnRWybGP8gtoKzAp9/TsjD3Y4VTNn3FvYdGOtmx50rC/Zyq0hlP9pb2CMxetX5NQQJHi6
BnD1t5UfnADaGCIMfzHatiNa76DrTzJdvjVduWeTcpqUfUl4zT8OsRS3+ruqckopcrPqnBN2eIEH
ZI7AuLdal5fzx4FW3RX+rn+vA57W/AryWdLi0+ZKFeIc4UuxEszJ12HZfjOWFrvn2jLIPk68D7fH
zaE/NMy2+iD9N5stzhhi2ZY+RmVZP2HPxZtFbzYCnzq6meZiRsTVi70BrrVPWqeHt1cZkOH54+Ce
WW50/iice3ZWflzT44CGsCdNpSon/yWWiw33C7MsJhw/tLSceGZMXMwkeHUrLgAGom5FmrkKDHtq
UP8CzBxQtppaA38Y/UVDTpwDM+sf/8jvcKqPZlsUffwyYzAs32ZhNONSPlzrtI0P04kpBNzmBPE2
tyi0aGHU1pclzhoUri1ZKF5ZpVg2dv2kTbwZAylgPda0x771GK7B0ZS6BXDt/PvRoXU8PIBmWeeV
nGWnEjWWYNI4yE++ZCoPB5ZHpWSXAnEXBhRPkc2D1cPelxTJh6555g94FMi3MCfiI/P+hzDnocj3
g2UhFgoryk36CLZapCXLHqS9YB9fQpoXeINlcYMDy3RLRbky03CYuHN3pUKLJ28WvYNYjVcEjie8
WKWbRYAO3LKMLEDcT6/4lWteVGbsWg4HlKNUKZunk9V/ZpU3sBiCXUWtBDMomQ92E4dIYhGFPrGh
X7kd3nuSCC/QcqknlI9d3q781kERCc4mT7Gp0ckpye5m6UGlWUMh2JLuVqC0ly9Thes5UUHliqeY
8iaLGRj3wvfULUYohSUP0+ArmERItPUCTU804pE3LaPyD0IGOwxtSzY+KA5XObQpETZCIPKATSc5
L3xLMQxUAYNWbH3jkHVNO3uTBpVZ2vbrCPRz6iNcLyluKrNof83g3sNDGsXuNTue272zxG3k6ofN
YEK7BKmrtuNsUNAedL1fZNKM0dH55b/UQwd7c5UmOmp1mkVOzpYynxbUCVWmOswt5GdY5tA0KeqP
Lw9GCN3G87vFoGhEXe7l+R/O+0z87d3fMv8ZHRmOUdqesRAD0+Sx6eoAxNuMHwpaSUC4EqwDBvm8
Vuu2wNq4rHHEeT/CD0T949g7kS1yYzSjQHUrg3zee9bb7T9VLdjHP1OzBYFXJkT1et7N75f7v3vb
UwaPCQBOpaxHSTK4mo9BY+1RDk5c5+n4M/O3z2VZMS4s470sEy42ybknA8TXWvmO7r2+ETi+8JdJ
FyHZMlloRxdcFYujG2uyBiNxaSV/XFFmOjSIfViJwyKVDT/CEjkM6rwAcHQ+6ZqVCQtaZFHZhDA0
dHy743lcJQVSQgGcIsAzpP5llf05qaWyqH+DY+BeprHxBLPItKDeN4ZtWo0+smRdZS2KvdY76yGf
yrr6nQ+CQip9n1uQeym5Wp47fHqDwIfRB7o5buOWMZwmkzSevIXEz6WAeiPJMlWMXs3+ONq4JeC1
0QDzLnmL9/x4RjuafuO30mKPoxz7UbahPxLPjgsPFOcRfzprr1wzwIxFyRP5oiwGgTxd1wNNwsya
b9QNE4FXJoFFU570hhfmlv4Ydj8MUo6pu/eQ/MmyiY2jF8yzqBr0+gZB3dyMPl43KW0EQZwRrtl2
6e8jZOdBLEcKBnjCLV9wMGPkTSnkDMDSOuj37P8ZmSPV449nCPZcoMzRAeOX9rMokdrTBf1p1v0g
vq1O9rxgHxpRuskcphTf41h5DQgotvjb4HWY0J5LJY0RMKJMo2VdYsXhGq4JWVyGT2HV1Lg8X0n/
GxSx/Qh1y6OH8NEanbvs2HrvNelGa+rYxvu2j5ENhyjyoLbQ0otBEsqJ0f+naQUlcgxqUKrVovRq
/WYnUkcx4ijiiROammJIPVxc0Dk7EVa2Vsn8xTk6CkdT6t5z7aAdUUnasuyKhJgTbDFmg/twVx35
EtaSgv9KHVX1SrvV3rbTzgbHHFq5+pbAks2yMqaKjW+FuQiou1rVCOincD4Rd0/2ib7r+iDfdgKC
i1kEf2VHtocw58EIHXofGN0vQIE7jLHrQ8mFZBt0AxKhl/fSXCQtfcHVfJvCKUfl2/L0F86mRf6i
l7ru9Oy3o2wA61AxwW2wbeQZUMFR9nE33kvWYJnjBDsoqkuBYNOgPvco3tbLEWbKe77bM1YRTrGg
jF3TjlNKcXcWKgL6zwvssq2pA70Nx22S6Rk0lRC26Cq0NnwxAkDfgb6rIPHyIcWXsWlRM+GzZUbw
bVoFtKCHPI2oS2spZ0XsTzJn3DidqD+OXWf4z4ZDulLWOjUHGvgwCIz2PYK0SPF+FV6XYbt9Xnoo
5dArVwmlDa7fNr0c/xt2+f9QTifn6qCHJqv1rHcCC7EwWqqHfuUxHL/oB8xPjL6qEukG9JjgYb+I
17jHSSY5d1XbWY4muWjZORJ2D+CpLL30I/1uIcs6M0PCE+AE2tZxGLJJRp9RZQGcAaehptu8BAlb
pidKijiJDhyEY3bz5av8XK2S9n8vh+rTOH/644Cf1ruSl8FTbRXp4C8rLhBgdCqCKDhoKjmDf/PN
CbLip/AvSFDwoR8im6dUvDpKN4ED5pKNum+8Gy85S1jFGeICd3BcGIpBYLo2E+GYm1VWVD9cp5iZ
F4zDS2vEky+qM58ZKSm0ez2Duuyw7tSc8b64T2cvymK22ZbmKDh9uwRV4FYd3TICxKBgZKMrFzgA
mUBuCda3dorIh71f6lY08+BMtRqbBZEbd80zCyO6JTxUA8CMDoz306o2OXqLcvp2pvNWHFn5skGD
+vRuNTYMNetjldKdaX2AHHblqkOuXniagw5MC9Wb4hkGTB3fggFNY6cfvXtIaFtO8yrMp7c8AhB4
RQIYjQoRNfQQJcl8L3FlgMUfh7GJx/Br+blf0TQAERzVRHynlWVY1FgCLDYMQMmjxnhewAn5LU9w
6I8VU7CF2nywDd8lShA8mFO/dp5CbVPBPt8iHDaGoDwrDRumG4QooxsJfrXMFDGwqAeL243FX6Bk
bd0c3da16IPkIjICgaG4cGrx2NuKqMibFOVrcR1VzD/qhu/wr9fq9DRH69QjOdLg4cLCjyXFXUat
oDO8MS8c55fW3Yren+Ylsx3rBxETajRWdi7ZgD/idZqZnnB2B0IytQsOrpC31wWblxHdYiXzjXBp
NnknO0aWQU40XXcfiy3QxbIS0T26rHXahfYYEXFOkLoFgz/ph649pHV66RwlhGYlGeaUKEyWMdYu
PV64JBpDOLQmmNIl9iQnUacFCBw8ZR0RXJSG0pYnULlb7KXg7z+ROymeUwRGdh+290GiqmDQuFND
MW6rf94aqaBfvMRhafBmWW0S9CUG2y79IAWVpatpSjRxZVHvMWyfa2dlB+zVDu5UAjebFxBZIapL
u503Ltn9EZ1g1iC+/ohIwsGua0pzHpbDgmu+QEhY603auvGnP4JzL1TG1dWuq1m3UWhaS69ReIZU
4v+jKNXzd8DeEhBzfdkfTq0KGid7SZU2KhURqgK00slaeO1lJ/JPXF/K/ZF3PDL1ic8YRC+S9tKh
hImLYjA2K+/j+3hxrqPqb3ianK8+YW08/X/UT0SQg7co7v3U9OVwdV9BL4mQX9TbwsG4Iwm28R+p
qcpzg4exDhkPbfo1Olhkjp0vmgIGf1xPscSK7df7CCXCQJBudPXyhEoKVbiigE2zBpS6Q47vfw3T
hcAKtEFjc3xxjk/BCWZFlKL2IhzuMgGNdmxg5Sc1UYFKEG2dhyuawzxKpI6aVdDg4bamJjRyuMb+
EQ3vTlmIV7l3GkE1JCHLDqOqjeaa3H+iMRfc0qfsH7xzyJ/JH2w924ddcoICE9i1JZkqdeEqZA0L
dfzGuRr724Tg9+MfdAn0D4zqgWBo0txuC151l+35lGZ7Ofb5C9saVTpEnX0ToeJQnrXOH3CNwYDQ
d2hcagsOf+LdKKMbMPX9/RvtO0OOotMKfoxpVCqKz3eizNdcu/aU52oSrOZrwXsUzzbeC07Q9Bht
Kg6hNinHXpPxvkRu4ZvMCSd56RPYjBpHi0P0l0UEye98E33pHk/6/46JpAHJeOhMP411FDlP3Ihk
8siuC15Fgv3Z5imJrRgrjFtQAfcn+Xm/OhZ4R6b+/sc9KSgt8428+9IWvUq0LrsNyVyenrIfftxF
iY2AAXezfSBQvHVlaJqaooFzUbeHIjzKdBedUOk4CCnWIuBGgRdzLDinzFfsmBQ67r35Dr5ICXv+
u69wLArGJflTKUlN0vZwlNtI9NsUZgw4dt/DpxRVfit3v833TbLIlvVMTnfdMsvYB1MSSa85BWWU
6aShObj9IUga4k79Haa/aI9puatFitoLFw6rLh9TGgSlxSETCLZ3+oaf9k5uSguy3QunegrSdm1f
GB9g95KbjCyDbxtRh33B3+2jQsHgeRvdBb2NcVwoAE28lJXCnsjNlVUzlv0Db1V1h30L3FXvwBiL
DwW1M7/kge8NPEItHIsLGOJ213Vp/SYiYDhhLM1jG6f0Ip4+PPtepADMgwMt53ofKQyLJDswu13h
Lk3yMCHhkbftiHeSSd4ggPU0Jq7Axm61EVxsUtn3KObeNESUmdeQl9NM9hzImmzBExtNDrbntNz0
20CNzSk93yLWI0lQ/N4mFUid09ScK5wuRrvKIRqxBqabDeFe/5MrvjhmHU2/wI08fJ5IVrWe3j2L
7lp71WatZaSf5QPB1ZwaJCwCjnszwEk8C9oTIwz3uYRz+DfbWqPtOpVF12JZ348Oefo7RtV/wlz1
3eF3Q/6PSIblTK8jZhR7Hln45bTKmt4QwYbmlUQIwKBXX5C/nMvH+m5z3Rdoha9d+eINKbKJrTp9
mIebFC1DLuRJNukwtGkrPnjvE0ijKVUww8/Afp/iamgRzM5rgJh2EbsAg92SIAxYOt3Xg89XXGF5
bJ+pAJdDQXCVPi47nlfljHn9rnNiqIQBQ5uBK9HeqooUCG5wACuwtIlpaIa3QUXRg2oQ1IhsCe4y
h4V21Qz1GSaPF6hjzJHTQrxZAFe3VUHm6CV5GPHVzP1JbCCvvDe/ZtE6Y7xvlllYnAsi9RVGX5UH
WGhXFIgpfuqhgh4OgRGmKPGtSb+6qj49kdzttvyPjhTvqkUsEoZkvqJQ8k7fMS8IEWERKRFtTlVE
nO0nVA0oPOOtXUxqNC2SmcoqhIXYKkcbrbNtGwamBH7uqfsbWflNu7KsEZ0bxhcs18NnMOOPHUYv
aPE2UBPRPeX/27DodPdT22upSJ8hi8yL57FCdOrjJ8OsjTbF3l4ygDeuQjoAoAmaXHtFNBxsMS6B
Ppyh5/7NPWN9NfOUiIuct6pLYentnsTumdKj9HGKp6b8IbkVlbszeWCsHkix97rpjvXO9pU0Zgd/
KewpUYWC6McVVJW1FPao2XzOMWcEk7Z9FtuX96U+K3uAejDf48TTGksA7o3bXPoe4bzrFmLFK8qT
iBTlpb3Ze/GF8EzqtBdk5OHRvUWNfroSrHGYIuB/7EKZMb773GMwTfkpHM4Z7t7pC8T5RfdtkXpc
5jV367QlxjX5+ZtRMCd+Vrq1e00sxaw+1oceba+LdMEZJJKsKBKW0rg//xQququZOtLaVbbngK8F
VmqOip3FfrvHp4QEh8pfSrGH5NYjXvae+zROEJ+F1q2FP7KQwQfN7KehF86iOzr5tbIlzDdU7Xzw
euNIzNvpKMM5anf3JchJfkXCp+w7YrjkIZt2hEezcUE7iiXrN1gIlRIYA3i9t1AgZ3zc4rMcau6z
/oaza4gliz8hH6ZXeIWfJ/7YJ76kfYVeTmdN98AOgHDKto5/dsI1FoxxCLbEez6VId1beXQdmfNZ
trT4FOcKSKBxSpQ6dcRwoR1oUelAZKm0EHmedwc0p4dESG/kgG3i4XSbK4XgrYaUSmTByhZO4Ngo
SxZq2sgI8eMgGmVqsD/z8xfMcs+LV4GFut0JrvXZl9jk6HHKi9bqPRuSLd3q6wupoC21tVTe5+vy
Um0cgQc/bad6la9rSprH6LANCTfErjqNk5aXEXnQtltQZZbi+lP5QaKQ3D+xPaqeSrYiIPNiWS+K
OHk7u1Ll5rd6FiqnYE3jmSic5kfAur49cBhkWZpWwGFATeY1yf5fXV7nifZn9oKnMlsKuxvwR9DF
1CJY5b+5z+gIPXX9jj0PiXyu4ugDOEW+i0EMW/HrNPZRZdutv+LcZtLGsv/fj4AngCUhQl/0xbQt
DPNwGaMg5cDi62FKydBpTv3CvRR8x93v3/mxB/0XuxxYKS+KX+fuhakhNU7Sm/Hg5tW0nnHi5Cf8
9WVQDUffYfcMGW9ESZJXb86Ly9UF6xBGbXAJPCAqoqXmPZgoxz8xBHdAw8Ep+jX4giprj/NV4PCt
j9jCVB6sZW06507oUoh2j9MkoNn8rYl4NAHKZnXkFe+b04aHD9f4BVnnV10ydT6mc3emvME5RFpM
v6Beniq3p5NhoP7HAJuSjAEQ88hmrpHtACLqIw9k1F4+FpbCt1551x/h4aasDuTXcz5aCUU+nmHs
D5lSh0TpdCOV3OHa0SjbEQl5qlkEOeswxkceGOZSJpopNTjtwRF+dQMgA8uapJWBo2O5oECrkyQP
jHPEXfqs/S/kN8CKDOb0UrfUxzQSQ4+y0qDyddzgZKo/vHnIp6v+f17ZxRHBSvoGSA/T4LO3BZIi
NfmRiIZlLOu2IsGhGzop9VBzeQLUIuoCkec8nDLiWM8Q/vqnBHFT4AUyFlLMY+D6xUbKvKcvN2CZ
DyNmsDxT0LT4iTS75i9hwgUWD1LsdNg2ZuAfU7Ll1wOOj8rp8q23sVDUH6wALz41/5eDMkm1oD39
BsZrMUpXevwhq3ITQ9L2aWoIVP+UHeIZ0cFlrON2FY/NXtOVGcKvgxYJzT246Ye30i/Q00Q+Ey/r
oxzHwpM6e1dk4nOyf59ZeYVR4P4R7BEtFqMf5MuZJw/zbZaUfFIYIYTtqEWfog/b51f40ttjiC4m
5iWIykhRcEFkmer4ToynqUlFBtqdD273gAVtUc8qoHE94VJQRpFKztZnI7IyZQH80dXRUS+JfTPQ
GZ54kEk9GrnuoyXco4limYEVfhg3vJWxyTAN5MvXLFz2ioDVqAED7ssm5WoI14L8CYoBIgjMzyl5
MAedi26g1aFLFqVDTL0RmLL7wlnL/PbyPvr878MONT673ILddavgl19n/MVO4JJTaEY6qKel0HYe
f8FOi9ddY7XNLQVs+UHVvgx3uKu2Px04zAocfVWw7yUeUq751vQTBbn3wTGKz/JjA8J+TRm4ygns
Asw1dsrAYQ625wDnpFWbTJ5W/uqh+LfkKEeFrpVlxcrgP3fge+BipNb84nZdb7vFZN0wzeQPLx5J
cqD/qFE6VSVOY133gdRcrEzOdi+SplcLcAlqNEEv1tNS+g2O8jTPNxDOurqD7MSGGH5hZWnLZJDn
3OAZcqStNfeuI2Bw2x8wZLtiqVmVP2e7us5eCKVX+dyQhcQIksV77SbYFkttX9JGGoFv8YcXB4zh
1gdETsbmCPsvHz2weJp/XNv629BB4ifUxPKKd+egytSmM3IExDAnA2ULZulrNWj9B6UCwIsqbHI6
Flm82zM3/gbJ0NC24jMquoVri9Q4we1d4gTaxh4GKlbPcPRRx3PftBuOlpmwX/Au5eDdz3Yj6q0T
+JGrCjAD4BDIDNooTjGLvSvUPRfhudHpvcpAry8YzBNfo8qL24YAVexnsBf6yfhlqGErdhZ04jf1
K8QHgwwm8aIphWXS16sWRvrISSK8kWhiWBovSB5idSJ2NNL9OzuJSX3tcVOgDHj+E73D0pOBANob
cBVn/+q/qVQYv07napPaLyx/Wmg234rSaT9oGbQFNl/yLGRC8eAQnIWQxH3IreKbEWODfKsHCzy5
key9SfXbXvQaq7HE5g1YLW4syKJxsPRigyu6qrqKRwxFYixj25KVHm/mx6G/a6pQRAN0DHPeK6cG
QwctRnJJGdhUYLhW5jLq1aIKS552DWU+12Kzo8K6CfL1qhsGIzR/jFVGl1fGMWD1DPdGUJXYBVDK
1QiHeARlAuwwiQpY65cDexbdkeIc+lfLIEMTdfw4qgsd87/C22NTqCJR6Np1gVry3rin1l/fz9Qp
W1HQjqe2oOduHczSxGgfHcomy4SRIW+GIuM27UV29RQXmPQbvOJPjzwkPS6zyaW0DAYVrmRdcUhI
HAuhkaqa4dKs0BqufOchQbkfi2sjgstJrnTTG3R3na29FwMFw4nQKpM7nehWJSVjLFbp2JZ81wMY
1R/dGzq+/OXCHRx1qxg4i7uOxj+ceDx87KHAVg5Z+81HnDdfO/w66i7C5Vm05D/xXZw+SV37STr2
WYfwVcW5Eq3mr9+lBe8Gm10U2JIBUv1yd2KNZNa+UayFhc75nMyoLehhbr0iBs8wzjOYPZL+EstE
Xxof23j4bDHAaBpUSMuKkM6/CSvzagS7de9PZJOFnhjJuCDgmnmB32mHFwa44A1jCKCoBgDmyzxZ
gxx04Mg2CnhfEwe/jFWgiuEuLgWjHn79FG03Vt314IR9lEh321KdGtNuPIFUp1O+obp9TptzbZJX
ZlgDKT/YZrDIUq6HwuScD8a7JgxdXjdeS1QOlZANjGePd/duHda0CLs84euFCjQOgAesVFQop/d/
5pBm9N7yJaM6/1DYN3xWMx8TGpPaBz1KI3Lc5Awlv+uinCIqWQC9Fw7U+pc1eyhnDPEI0hpdjxLZ
Ds1O+Xe6p4Fhb2tDWuaC8G49n5SuGGWlvovepYGCkSrxVIp7PkZ0XEAWLNm8XBJA+Ss4sR29ZH89
QzNzYddnnevkb1UfmF9lDcgpA4+8jfktrr2BdCNwzLEzXgZPSceXzYM0t4eSfBtY9ogvc4tSsov2
jk6oU7zrS9DpbGcGH45R/0NgaDL5ydeanLq6qS/dSVi/pRQ7TqMv32ASoGkQQxRrT/AQOYrRwJht
MjCmW7WwrpSaQsbUIJeF25zAK548khilSTtfa7MjM/4IA39x0/b8grbGpr5j87dcRmJfnzz2Lkw8
8iHeCu0aIXECFObIYRozU0+QUuF8hpX/cgbQ+Z6vuB+a6q6+hH0I4KJQ0H7qk1UtXJq7J5aF4dO5
TUwsTw/GBnZguRb+i0XbgcuIpaI3kgHSokd/SrhSKgEuU9ohKaMn3Pqm+XfOe90D9V2TxM/xHPpQ
JTpB5z+HadxSpLLYFJB2upNCYppAmIB1SuS6Ah8+T8cM3vByI64oT4MI5nKBJZPaE6abRb87noaF
BrHZ8MgJkZPt6qPTylRzfAOUjQRONgSFKpDbt7MizSNdjwblYMNpas1ZwvwolMhx7cogEBJ2Wgjs
xbhjXePfVRKQgQAeQcn4cBGW6ISN+fsIjCIqnHFX0N+nd0g1V+oD19z1YY3K3sWpW8GbhDfN4k0C
cKAmaB8p4g1bbVyF80vy6YaW71EizmbwIyaGUHVcc5OrThYo6nmYcwZI7RHrqxq8uq8egkK6/7oD
vAJ9CMBTx6qMe4miloQcuk/lVfHRk+mHGws18VU7JJoIfWsLxUgKOZ/sdYmbtYwSVfyDqAU2yMB2
QJweufM2Kfp11YYbNjJsgAsf7KMGt4QUp7DjSaJNtF9CpNdygRt/HjLoN10dXOxFZuA87ATsiE9c
oVnP8EHiMxvK7JYOxKbV6glv2eFeMUZIdQZIuvqwjDrxkJvBRM7R59Yvxvgtg0Lm28Q6yp9x8ShI
k3rHQjdEomMueb9/SzU/VyoZgxhCGXCNBBTzywDJ4tApSOYbEmz0LO3t4PvHE8hFS2UTSB//jGWS
DW4ugpQEClOve7cOUqc9QNKGMZ60CWkHffdMC5Mm5j7cxPVfLiPdBaG+B6yPYZaCtsyFAMgyrU5C
fm6oW/hzsJ4yy5DmjrYopqakrFzV8fZtfLzDu2Zcr1trmYc3eIH2QCi8paBap9WROdiA59uCzKzL
UzEqIQZdAekIWiw980ol3F4IEQl/W713i1Ua4GKUlhsqu8b/Rp7n2ooedZ8sfSEZJZ7afqC605Mp
HTx8wo4SMie3z7OtywtFNjsIZVF8X+VQMmlMJBz7WjDurnfahkZALQJ6TAORY6AZH6XUCEEgR1z7
pvOAf6Iflji20cuE614LTxZenkOw05DRJjBcfGo1EQFFPSd6vAKXA7EMFN3Is6UKnoxhGZNH/hlQ
9hgzWpzLQzp0Drzf0fx03c+FrJ5dnerc0xXIT2JPWFQdC1ZUxAU5xTsGVEackfN//SPQSxONbgeg
xSg+QacL8B9CBWRi/5jq13VzRlE+nNGCWagXIsHuoE/eNGc4uEVctG5rpEIXrh/F1OzLGByLZojn
8ari2xVrn9nPRH/bPnXllQU/ywv2b0h6VFpqQV/BxEkSNqQZGe/PfXeWyCHDfwuzorHyxVgqeJur
ACt/+9Pl4PcZpvI8HoOr0KHocjdNy1u4yYNG9Eh6B0iUCmmWQ9RN/BRwU+8eGYTbAe/0qyssPcC2
2YmpyD0dul+ReS/teonKAAZUUqZNOe8CKct6z4agjPFM0Cz+R1R5TGWJy0kCxsqTVfmh1EL0Tnzs
vUjlpuqyUMntCuUI2F8dk0x48JxSzc6655PIvVKq5jRf3zx/xWhqAYYx96TAy2z75TbhdmmX1JhR
evFHJofA/XgkHon1lAEPfJNLA3SxdwFSxBEI3wPPj7RVDrIrEWE1ZyPB5gGgz7GgxoowDyHrcHhd
ozg7yw5kTZoX+zoAmgihIncQD7cNnXExC8YEHzb3D/zvGolBdWM6n70VMPAcN1uerrfa9R2MNWhY
NcEngiXwmftEsQvb1KKL3pnS8qu6NHm1btzbjG3+YlurqGW/XsdfSxWorIgWZo3hUW0FgYwu0ik/
m6aK6Ab2dPK/H71TTrJ6cN1cH7v6B/kr3RMlvH+gaBSZ/UAwHBoOLBDtQ1E2u6kLZm+9/eaZychF
2XAYGSnJAk9fi0zIIhSLxpWjM4L963mdKR8V1O1bOJgBO67E9uKjpynT2+eChqX3YQahQytvzMg7
Q2zGfHg53jJCMcBF/+I0C+us5tTXytMLvtmwUSjXGXIiPRjRnvctDS4/pG8OsvdvLTs45AuHj9pg
SFrUVAXSSxrZ8zGV52U4F9zfr3HRbH9iqUP7Z+cm1RXJrtb2XWfHckRLoqNyHbG1AegFwknHYwq7
89kA3buW+aqivdG6M2z6V09sJBrWhUeNFBvvNlHm1y8HTTF1utNnvHcDs/eaBrxWL+ME7o5Zu+f2
qE+ZNKdKfWhF1ZTLLz99ALMEZZavj0uyeKAFtiKq29aqNiIufUDLDRPp1Xh0ciuSKfK+lwIUGikQ
qu5T0uOb6S1jWiE2y9paFepQeaYJGRodlDxxc9qSpSWg2t3PMxUFAawczYHhSo3ieew4qnSnybZ1
U0xkgCVkFQIkqTpWIvtGm4Z2LKYcWjiycygCJvw9tk0OAaycE5RPyqy39mjfRSJ5hqRNcAGRu8XA
HFmvhv7M5qT1phh5N8P+slvp8H4vnYLu7HXFjDFTBIiU/CVfh1pnXhLfnKIoJe69B7lIKC9a6hLp
GIf+VGkoaTrBh+Z8EYlZrhMqGipcXdqHxuYNywevHsg6cnXcnXdEvCf+RF3YpP5bblqJQ0b+R2eT
GrtUXzVKTfyOytXMK7/mj4kV6haULrjbJusgLyhjCqdvqiA6WdkoN2z8J1nZr+BZvHb3AbNVQDd7
/10qgfDv89yXZl3rmgmqZqDNFSW42h/VcaeQKImnlORRZItSulWfCIsNAn+LX2lVpuLXkPR479Tk
M+Gs5qHf5WEJWVwd6zDuCQd/7gKyIWWvTSFWx4t4t5xGzZveHZQcHyiKc5yeHmesOwgj1MId8oWJ
G7ReM51ZA7JhzjAjml/9JEkxAS3R8mKnRWao/VaNyWRiJ931T5IOf1n3tTnYQAaIJmO9FsZW4qv7
0m0dSWM8gsUxji1wZlUTtW0YOFADMaafnv4QljIEWB8TF7WD/eHjG2Sr2tAAYHU13JSyN5SXM5zd
iiqmy0gWNtxKeTm3CX+m7QawP50Z2iNl/w6Snr951It8UCGEmza5sc+lcd4n2ZddwE/1XI3aFPRV
fTckIRxdbMqG5nzPsYKl/ZsCI6w+5jE6eXqQa5deoMDx6FUYH/oGKIhZdBwtEl3k5AIck505hlQ+
gTd5tpbiWJZreW6454/UBAQ+/MMKmoSke8CxxgtfMV0mPZ72BfheuDOIrzB52IyWlnmXAFYCyIjB
Aq+mgYz3oB1/JGqhDiKT4TlJpsB8fKkc2fu4uswwTFJJfRR36S9JfgjWVTrdR5UYOa1eLFR4OaAq
52e3TLdDJ+Td+8fE2K7SE5CFtPZsXYDDYwC6bBkORVtMHMJJzlkLj9DKQmOHXCd4/S/F/TfjOsjv
XvY6DCckpmGyO+Y9LrJmwXYP6+BKdKb5Vlb0ir9j2PLghjyVjgFyBrU0its6OdgNbWQI8MsLmE0K
WQrphaeZjlD7L/h/SPV5Kyw75N2gZkN9G2732WbMTDEX4hP0FlZ4In6QfwIoX/FlepnWzz6kJggW
5R4j7Fpc2Bgq09YSvZvL3XfUgZBg4DzA/GnraIGTwQ4Zb78RDPjLn6dtKgv9gWcrarAY6LYF8u8Z
yimowS2owFnQmfu+0FPHAYSGZ7Mo0YRtlIVe/GVhCbtSU4eHl0sog5ijqtlFWhe4bygRBmPUltFR
T/bphxhnwFTjO0DGzi/KnhzqhR7FT2tioXbg6aOP76dnZTJ1xTAz5uWhqrdI++Q5nIHvkDfqRCE2
P9lgtM6RrSLRM3DOWdUxzp5XyBOTgCo0PhS2Xzieh0fSi2djZwjJMq8UchTkY6wwW2me7kmXjtCP
aSXZQJIWVIiyV2KswUvOMn9Mcg9nL/9KnAdHG8o0O8mu5X9iNZpBMNAKymMbsnatPwKShm/ex4fC
a3Tk/OPgc7ReQ3KhikegvljQHqT0wyHyTg+MD8VofpsE3fMFLKV9iil48E1o/5OkO0y+DxFwq8jE
5Fg8pAU/smOTbj81zR8aY1V7MMGN7bV+dcFPAnaGJYLtmzlBoPsCqRutlFc3g8DRuOD3SMz/xoBP
iUGRuNnsUYo7uajTSL/XTorj3NHryDrNUMBxNd9fif1fY1pRqiRflY2qzt2azh+rcdflc6uCBBFN
2/cJ3x/+swkGc/bEY5s2WXTBW+zc5XPVYqN99fx7/ThkILYuXLvwGQcwPdjqXXwsDR+3iDJceHvl
DeWclP8fhAQCtUwGxbgLZd8JhjISB87cdSKIJxXMF+LzcOoiC/9TU2bovy52ldI=
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
