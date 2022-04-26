// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr 23 16:33:12 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/dev/FPGA/PQM_gen/georadar_gen/IP/dds8_mod_fi_partial/dds8_mod_fi_partial_sim_netlist.v
// Design      : dds8_mod_fi_partial
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dds8_mod_fi_partial,xbip_multadd_v3_0_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_multadd_v3_0_11,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module dds8_mod_fi_partial
   (CLK,
    CE,
    SCLR,
    A,
    B,
    C,
    SUBTRACT,
    P,
    PCOUT);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF pcout_intf:p_intf:subtract_intf:pcin_intf:c_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [31:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [3:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [31:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 subtract_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME subtract_intf, LAYERED_METADATA undef" *) input SUBTRACT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;

  wire [31:0]A;
  wire [3:0]B;
  wire [31:0]C;
  wire CE;
  wire CLK;
  wire [31:0]P;
  wire [47:0]PCOUT;
  wire SCLR;
  wire SUBTRACT;

  (* C_AB_LATENCY = "-1" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_WIDTH = "4" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_C_LATENCY = "-1" *) 
  (* C_C_TYPE = "1" *) 
  (* C_C_WIDTH = "32" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dds8_mod_fi_partial_xbip_multadd_v3_0_11 U0
       (.A(A),
        .B(B),
        .C(C),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
        .SUBTRACT(SUBTRACT));
endmodule

(* C_AB_LATENCY = "-1" *) (* C_A_TYPE = "1" *) (* C_A_WIDTH = "32" *) 
(* C_B_TYPE = "1" *) (* C_B_WIDTH = "4" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_C_LATENCY = "-1" *) (* C_C_TYPE = "1" *) (* C_C_WIDTH = "32" *) 
(* C_OUT_HIGH = "31" *) (* C_OUT_LOW = "0" *) (* C_TEST_CORE = "0" *) 
(* C_USE_PCIN = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* ORIG_REF_NAME = "xbip_multadd_v3_0_11" *) (* downgradeipidentifiedwarnings = "yes" *) 
module dds8_mod_fi_partial_xbip_multadd_v3_0_11
   (CLK,
    CE,
    SCLR,
    A,
    B,
    C,
    PCIN,
    SUBTRACT,
    P,
    PCOUT);
  input CLK;
  input CE;
  input SCLR;
  input [31:0]A;
  input [3:0]B;
  input [31:0]C;
  input [47:0]PCIN;
  input SUBTRACT;
  output [31:0]P;
  output [47:0]PCOUT;

  wire \<const0> ;
  wire [31:0]A;
  wire [3:0]B;
  wire [31:0]C;
  wire CE;
  wire CLK;
  wire [31:0]P;
  wire SCLR;
  wire SUBTRACT;
  wire [47:0]NLW_i_synth_PCOUT_UNCONNECTED;

  assign PCOUT[47] = \<const0> ;
  assign PCOUT[46] = \<const0> ;
  assign PCOUT[45] = \<const0> ;
  assign PCOUT[44] = \<const0> ;
  assign PCOUT[43] = \<const0> ;
  assign PCOUT[42] = \<const0> ;
  assign PCOUT[41] = \<const0> ;
  assign PCOUT[40] = \<const0> ;
  assign PCOUT[39] = \<const0> ;
  assign PCOUT[38] = \<const0> ;
  assign PCOUT[37] = \<const0> ;
  assign PCOUT[36] = \<const0> ;
  assign PCOUT[35] = \<const0> ;
  assign PCOUT[34] = \<const0> ;
  assign PCOUT[33] = \<const0> ;
  assign PCOUT[32] = \<const0> ;
  assign PCOUT[31] = \<const0> ;
  assign PCOUT[30] = \<const0> ;
  assign PCOUT[29] = \<const0> ;
  assign PCOUT[28] = \<const0> ;
  assign PCOUT[27] = \<const0> ;
  assign PCOUT[26] = \<const0> ;
  assign PCOUT[25] = \<const0> ;
  assign PCOUT[24] = \<const0> ;
  assign PCOUT[23] = \<const0> ;
  assign PCOUT[22] = \<const0> ;
  assign PCOUT[21] = \<const0> ;
  assign PCOUT[20] = \<const0> ;
  assign PCOUT[19] = \<const0> ;
  assign PCOUT[18] = \<const0> ;
  assign PCOUT[17] = \<const0> ;
  assign PCOUT[16] = \<const0> ;
  assign PCOUT[15] = \<const0> ;
  assign PCOUT[14] = \<const0> ;
  assign PCOUT[13] = \<const0> ;
  assign PCOUT[12] = \<const0> ;
  assign PCOUT[11] = \<const0> ;
  assign PCOUT[10] = \<const0> ;
  assign PCOUT[9] = \<const0> ;
  assign PCOUT[8] = \<const0> ;
  assign PCOUT[7] = \<const0> ;
  assign PCOUT[6] = \<const0> ;
  assign PCOUT[5] = \<const0> ;
  assign PCOUT[4] = \<const0> ;
  assign PCOUT[3] = \<const0> ;
  assign PCOUT[2] = \<const0> ;
  assign PCOUT[1] = \<const0> ;
  assign PCOUT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AB_LATENCY = "-1" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_WIDTH = "4" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_C_LATENCY = "-1" *) 
  (* C_C_TYPE = "1" *) 
  (* C_C_WIDTH = "32" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dds8_mod_fi_partial_xbip_multadd_v3_0_11_viv i_synth
       (.A(A),
        .B(B),
        .C(C),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_i_synth_PCOUT_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .SUBTRACT(SUBTRACT));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
CvmaYyJzAT4gGJRlCkE1yXt5Lv9gJbr2gC0wBzixkhI3TupXRLTg9s4Z9WVWp43QDkUuM3VRZjAj
RVnqESt3JA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hHyS2uxRkJ6sHR79RwG8dxYfMwySDoNzo0ZpVSoiAp/93R212I5J1LxM+7EujDw/cO/x9djlyxbz
erzC6/tIqQ2nS2hUZANmmER9YkiA1RlXlIqDOWo8pOFHNj1c4jf7Zdq7OJMDPvKF+fLgmk5Lu9Y0
15oIyfQw7L+gXpW1qEU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Cfhh7YIOGyVJiZpd5j8xa2ugbHZdDDpkNcw6vvVCCgnGCfzlen3wlGk0omzzJqyVapnfg0aPFCVf
eH/noQVGu1bQkowx0JKcNE5x1v5DKH//UNI+lq09SNF0WKlMcTAGlNSUzO8kgVv9uNbKUHDXodcD
5iGh6bHMhVPSu1QKpTfJlIMd2CMz0JfDQiVbfTaAGKvrQhaqVte7pYpnqiXM7povPwt/ntWHBH4s
XSF4J4eDVLMuQmQNy3vrqFdEUqmQFtLWgNRpG2fwo19Y2lRzT3ux5SiA0Iv55uR6x7AG21x8BZlD
JC102ufirdrREfWUzlClY8zmr+TUHpTF/SgPMw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UWceDgHVHZAg17Yudaw03bncVn75AJ6y0RYlYeqdZU3kMG9E1W6q5REaQAI7sMZSrC2g0zavsx4w
utskoq80P2avoebtdvBfjr/nBCQqUN3AvM3GSk85froboZgk4fCQ8UtEj2Qk7ob+ox/md7d9P9dw
2YULi+eG04dUc1g45wwF0ZoZdARk7Ml+fXMnm7zxmvqVieAEsVq6ETZN/P0pwvIpAakLTayKriGC
qcrb1S28bOuV+Na/FX9rxN6hM5aK7vSdFqja5GGs32r9UVRIkX6i7uqS9pWQDR0Qa31W3z6wrRrT
+2wzEwNMDKYuWVIM1FQo/Tp0NKa1Y+kyjahSGA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tLsJPLnIUk5FSxPTGLkNhAFldHrP7oFH8h39nfqyEmnC/AmGzR3fePfCEcee3I4TYySABpWhyXIf
m1jGiCuHfIpFkF2EJqjWmBev0bD33cbw1av2xtJRFa5gaQjxChO9URfjedFvCQWWwjlxejc9nD0N
O0V2XUDQxd573YmSBuByzshlxt3bujEd6Xeeb8N8NI8c2ZsfY4693LGdb3k6gtY9ZEoo4XuYVt6n
S2tNFVJTfQjyBEXbuCPqpwGf6bPdy2SKvTE/s4rSIVTO08J6bXDaEOBUGg13XVoJJqrayiJRVuQL
LhoiPzgOqS6ude1uUaMHE/SN9X/vt/6uOsOl2w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jgk19ieS+ZYiySHKvgAHMus0OAx0HPJ59p64LMaYK8CyW0wSM8LIn++sFz9tsOBdLj2gb8IKpSVr
SOX9XXXM2pQFSME7x8q0m+EPg9m1+ghIpW4bU/w4zVq4NBjYydZCI0Hpy+X3op0a3+eENVEw5SoK
4R/zOL7aV/2nZ//wkaw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L/BPRr/PHH5da1O06dKRr5ST8eskM6lzR1UPuTvZQ6RCsFEjTD1HgyqjW7/ypnIq7V5TYDC553+Y
rJnEENzDc6RSpzenrYxw7NrURpUedIWlCc/PEf5Zq9gu1ESkpND7t98rc+uiAz7zsn/pHD/K50NR
q9l/gcWkOCgArmADo1Lw9usrfZ8ECIPKY2kLxeTYbh4fsrCpPQsQUk4NxX3N1Q0h3RRUCdHSFc0O
lvGip/vd24OK8zXDMaQv4fPmgToFQMUvLrJXErEUeRlkpxkcX6g6Zu4RMWwwmkNIfZHpc5K8Q3RL
MMc5rARUSXbNbpf28H3iyAMZ0y+EgI0CrKwooA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jhs1sEwHtPP69veRrpe5GKlcfI80jcRzQbK5nXwjyaQYB/Be9j3I6wC0DL/1M4XNS9tnVqpgS1jd
yfybjmwAB1n5xwAZb0EO7tYPBHNe7Y1eu1zTDARjGBIHCcfN+4DREOXCnsGg4m++4/Oy/TgVAgtT
QbwDHgbnzPL7fVIEU9YZT+4Rzb6nSiB1k9OwCRTfgrHOISvV8Z7CFcy8qtL0zWldhijb+11kGdwd
amQAOnwfCVudxs+ITJ/rBSPVNaREuhfNpPrdLK7yZuSXnaJdtvkH50FVvtXa+wUBwX6GZi4DYXNE
YeXS8IJ5cprmTBNnuu4lLkNN0xw/KhJHSgLFLw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
S9ORRjks6oDbsoPFdQC7mn9kUUMjUA1Cl3czIT5zavPPPg6ASHgC98ZEkcmEkx+gTh/Vuut+53Vx
eKirEzDAuuNuamCwAnUuEfI8SMGCVZXr/zqn34tyQk0WKN20cGaHqEpVD0d0KchpMehFEsMdpqsX
RP49dxRCTJp6UTV3560eFVD1wRyNIQDKBPtg2mbF5cpsc0jYgm88nhZwXERabVvMlG7Hi8jrg5Kx
2v3TDOuih666TeEZNGOtDLcfjJmgxxMWqMQz4mRjJ1bKzHc5rBUGj1kHup9xDRPvoNSBJcl/bGkZ
f+6fMPMEyoozGXvpZFN5vjVtYPTrHRkb/DkinQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25280)
`pragma protect data_block
3CfBAqS8BabkVJK1m6GEyj+5HL1rl2iEsD54Yj4hoeStNz5KteLfI6VxW4N1EhkKdkXbmtmLAY3W
nFAsbr/jLO6oRJWz1fNe2bdrfph7i+1f1oOIHn1uR8PKNtnvJOfj+yZDc5O694FlBRaZhoE/dy8R
lyZ4dXy5VHchAG5esIumcNYf8PisPoj4NQH2/Foq93RKG53q4JnReGVH0Vnx0UDSQnuKqfm9bulc
myEOXOyLMtt4qYmCsjA+WhuAhPVgX7yvaRmJKCyFh7genBSgeaKLWBb5teVi60jklpcpIDeurOHs
xvOebNzbBNRAoBFsK4HSsM8w0MlsBvC5C2f+7FOaUTZCYQIdbuL1ks4tPGJJLycfNJoH+k7C6lpg
Qc+2zpDxFZN/f9FcbxfyioC2QfgvmNcFp4OTY72+ukfJxQdR88DPWGB7sUTPYaVOvxUaJBzK/z3M
OF1it+Zi3hTjT9FYNztPhPaAmbQqsaPOAtK7FxuSY3Jvd0liJU7ctnX529SsfApobqk4PjL81nv4
gz8I4JfnTV64/6+VOfZUkI4PHJ9M/d8f0XgyuxyIPn75zLsqxsRdey1BkaIDB6EEqe2BnP5Nzmgi
RQaYSEqqu6LxROhuY6Yo5ieT6vOjS3+czHVO6YQdC28OAEiSmza+s61aJy4X2YwjKxSzUb0WeWEo
ttL1bEZ4hLv3wiyupXEhh2DE8JkrBn7rm445enr4BwxPpU9pZBaRH7Y0BXOeDVhMJKSlNgcmXmFI
ttJwVL5du1PKMxByU5KTTq8N+O0Df5YPZY5tDha8bgcT6xpgbM+qofwUja1dAJdzHgzVLyUULC7T
tC/W+6ee3PV6kQRWnxSVEX6zD1Th+ko5VAKcfHKs1cyv2PERRCkXE4JH8D3OxJjI4WdiScOeSLvo
zBVpEJTQwi8tySNCwXeN06TT4FnTjQh3Hu+Wks2F98x8IBAC2oNTd64v505wDTxt113UiRWik4v/
jkcGXpzr9HQ6Ga+IbhwtB7LGBY5vZVZXh3JYtcsBr1l6vcGI9fb30hO+G6JRevwHRkjYfTKNTRa3
8KMiP3Ln/wB5ePL9NgD4Hl3wDXaufPrL3prCzBkVw8QU5y1jx/7x2wsCxqGqbfh+mb6oU9jqOtCJ
dpuLwybDUlOwPbS9NDNuDBqs22vzST4WHbqulc5UGhT9W0XxYeo3dcPB/u31PrX9ZJSki+cg+x2r
DmW2Fc6K6g5G/Hif5eKJImaAK02jB8LWzAGiARM9cT1t1U180Sv1IrbCymVBEKq5HEsiEMULlyPu
QbqwR5vvY7mEDzADuZjooeFvp0GYAnh5dNaQQtcBAcsLfFGtWYvW1YdoGFhFq5fImknTXJtKgU7+
BbW03kqC5nkM6MxcV9BpY/A/Gk/rCihA4XTuR9f7fL6AxGEYkTI5eAndK0JH30Rmv0BNjKwjc5bw
Ufj1bE39yjopJM2S/V1k59IZpGQa+lwcxFtzU2ztYif96BikJjL/A5TcJszaRqPEITDI/01DflOS
jyG2FRw7QAPT4DchXQnOiphgNN0aPRJchV1Yz+LdlGsxigkjBpvy7IxclbQos7EzlNJ4DfJzAWb4
B0/8m1kpe94UZRmBu9NQnc4JqCUoW5Kip3hGvenIpJcyyjT5PD+GTd+23Fi9rHctPuPAdrglBQzv
GqXT1VqQ39My+Iuoz/5x8IO85DT09T64ANfzxYrGB9R1h+rnq7SDwyJ6X39INuKqpEwqrzu4wKFg
xjx7JSMmxGeATR4qUn5zYEka8czco7VlcWklouQRzS3mFh/zsD+rweM1zUKleJIfeUa+rcnd+UmH
IP7olHz9kChZzReU4mzwf3ilvQ7lC2kPf1mYuepxvHmeqjUYXvfvgrk5CUVIbgCGonpQ8MQ+Ey3u
wgUWugsTiEXiWVB88DyakYRloloqX5zAgE2urD+c4QQDwzZcHAxTr0ZfXMvEHpyPfCpHTe7a4S2n
BilIIqoKJD7R85eZMDAe4KGrnD6F1Xkwyr1p+lrni1ITEsqwV8ZqZzZUnCaHiQ746DATjmkvpMu5
+krBv4gjtE5UVYPxsUVJ8ZbxjER0pubHgfaUQtdOSObDU0p6x4ChW3J4L4aLB3vGRvOfqH8+2z7p
UVcuTb+WPIFsMMUrjbA4758lsIdzb7u7Y90GKOfQ44/bCgagy+j5NoupcbP+n/BDEggy+AJJ0Jqs
1/yTaNlsKbvXGROjF1qkHesDb7FJ8zyeDiFKeQwK7p3Jt2PdupgodhiEpq5fxTUb28gWd1ehAku/
ZNdYe/9UT61nna17BCj5Hy1RcbRAV6q/olQTBHteSClseI/rKw0oAPOOPk7o1Nar0fPwY7NzOpQ5
z9p3xOJg6t7j2WCgZdMQ6nBg75yvEtDb4kL4VmVFyxi9fJUfmiyVApdztXIXnKPPnqKjbzO1QnA7
bmAEeEn6BkBvi90KbcwoMasKDkhd1O8ldyflG1GWSvvgHvvtYs9ZTUSeS4AbUhfn83QtOMaiMRne
p+pr1h18njl4wUZGgPMKDWqGhZbnB+FHHHYgLLgF5s9oEhswEBugdUH3hONXFfCYlEYlbQ5UgFrA
aCjXo2rU+/ptJLcZkQcUMuFV/Z5riLVPyYUy1kV9ReABtxxm6WhdpIQNbt1CrkXv8OPXXiI96Fmt
v1hbV9aCws6djt9GpSHzF6cTqCsjacKwtCb/Iu5Y7F1FSVfVKhByCNQc6CmJ5Qk0vE6Plgq7/Vxv
YhnIltTHRJ7/UMvhwE+DfbSL5iSxUW10rdkHCSEk/lSK2+ovssVTAe/58L7IeUUV6AQ5zhwbKLdd
fXjawOAR099nyXmpT4kE7RpjAU9k7e1BozH93/o72sPMSPPB1f54ONT3dOeazv8GdXQyc7rdFGtU
iAfrJ0k4IbOKUAbBthy0kvU5pQ0e5LRYuyvIYmyBbGTxZT9ZpTrs7o43VgF7j/RyQ0fpj5Q4aXLA
sw6d/Zi5ACOltLVdBAc99ul2aB/w4S6Id7nwhF6zrgOUbm29ncP2GEJPOI69CElpnNIRX2FPT/fg
sxo2M+kHAGJ5jA9LxYQI7O0SIZyk3BkVzWHwIE+1ggtwFdaSLA/c+tS2GVKrL5K1r5WSbkVKoRqi
E46WN8+mGdM4PL4uvwIj4/DAqtlCucHsE9aRwWKknb/mHHCivPJGzx1uWuqFbqfIW3GXpjGjtIJw
TfV+wshxYSDkozdwpQsabYMetf03msTqtueJeORnNgbBQmtXx8POEiND7wnACVMtCQiikyKVQnES
bF5QOt8NVhYqTbdjfOLgI7vjHQZr9ACw7LavtCqDls6Y4bFBBYRsv12f0X0CDboYYUDc6d8J889f
k5zn513471XS5+PllhC52hpvg0A4ZD5p96JIltVcELnzzZICSFNHqHaJ87sMzeYvGkk8+KxfINvu
HKA85APdzI6spqp6Bk9hBwPbwC7AVFSQtLCU1jiz+PV1C/vhw0XXI/KdF6SZ1YizbW7T4RTA3MPb
CFzGeGEb5e7ZoKjPj+3c8LE9oh9yTzzXR/oVQwVOaaZzPr800S5f72PIZTCGoGI+l7ztCe3g8PIu
fiwEMh5fJhPFUfFVviiOhDlFWjq2DdbNNBTNrzEMzpMtJhCXxCpwJwLkAIBkG3oWRZ/uUh2bDH7r
C4KbqcqKkeS3rs7b6GIKww5kmEZj+wsGIZbHL6BIoIVj+Z28Kz2IvmpCShqFf/cQlisBGsQtqQO6
sG2to+XW1mPByZsGoXJaQKn6nDuGG9q5loruH/pEcz1WEwIHiUsIJa5SOc2sA9Njm+YGa2MKzEoa
oeGqu75p5+19UewLWrm8aqgDQ5DZHma87ZFz0OHlvlYOszfnPmN6P/7cowVhd/t3kLY1SUD912Mt
ECr3zHUujrlDbO4Xar60ARCxpy9+qJRT3osulvp60eOPpZASt88MwBlVvdAjmCWp6RGpYJSr+t54
qmkQUyomfOYKVroNbZYxf2pHnEgHUf0Lv6vszCyb379IYHhSIaYKtlD/VVKJb7OCnNI9NC/wKMNB
zog55AcvuRpd4jWzm87Y/FMcJPZYC4gd3JzlaFskgg26L73eAPZk0WCgZJprDEKUTXzoMSdcPtT2
uzBAsqkzOcjdd5U+5q9nJX7wfm2roPBly2U+/TnEtDfUi665HoNRlW/dQlUd0R2LbcB+5pQRDWWI
KO9ojS8o1jGi+eZyS80p2Tl2ODMESxFb77b0Aht4vZN2GcOlFa3NHiGicifpUH9he5EPUUJpThKB
N/mg0rUjmTA3XGgCdV5+Wx1X4AmFB5iLAL4XybGQaJzqQpV/lGSVo71B/yOXwTsddQ6gSwIgPJOR
UqRRo6WVJvNLuLOjaLrCNf1CxSzSb+n40Ys6ix+c+10OmuPC3IKujWnZ+9SgG8SrYF34pt+l6goD
aT3x+dPhJ9wj0wT+sWMFpoS05TCN+FV0T5Y9OZsh1D6isMiJQ3h/fyPZSZWbz2sVQW4nulCWMiPG
RkHBw+PYVZQy8f2zM/rIeoIWgBX2IokO2fhDl0b4R0p/L7nKjyNNwG4wjQBdrkZdH+oFhzD9NhDF
11m6lwhzN6PnCEccEotkphSIxWOnZpC0mxrM535VefTFym/7HwaE99PucfdTt4nt+7VfB1I9M1sT
hzaATjoyTKFPsqauE24O4UWAH4U715gNBd8CO8FaoyXOhYlkI+PE3uw0+KPsy6HlmrjUs66iEtnk
yiBQbpZu+2CYxewyWFSr+SOqK/W0eMk3fZAUS7GI+zY3c0m6bOv/5anv9eWVxvNVEcxQ3QJr4Gak
biB+qyWJ59xtlZF4zo/zte8KpUn2c6K8cD7xJzFxRHElBo4jYqmfidI3mHNuT/wR3NnWenJvvewX
uGWFYGy0nA+5iV2T6ui6P1EN/lWgK7IBdHNgn9LNHDYojf8naonpVkxU6hrjwPbjWuEiLuknURfc
PvpW2SfVhKsmJuMRY1UP7BM9G8goJoQ1/KsUY74GPceaOYuCoyaxBOKE0GuFwnVn9++DuE6PbK8D
0O3WhOLyyAIc49VQQNDUOswseFrDdCByWUE19BrXBt/ZhkETN801Bz7VelQ2JKlBmzFAl5nVPp4b
713fjKOVzogmJEPXAwQ0mL+rMXtSxH5Pl4clRQT+D2oqFZx8/NNsTWyizMJlDm6rzn21ADEKHdJv
peh7LxO6VoDU18MK73a4sZNYDJMvH7z1kox9YnwFzscUTEaORVJB34qO1HhwAUgzFv7I0z+4UROi
vLrvR7rhxPP6DJ79/mm3Hca4UMFSx5VbgH+A/3FWjukBLYhFhG61ONoxrc00tSNslXyMz4UsAmyG
FLE4zs+EJR/c0hYOszdWZuLnqvIq+jR/aCCwZrl4ewipmucRVEKoSo80AIHNabqI5SlyVxu1dBnQ
hD1Wu9woxBB3W89Fj1hhCOnU7Y4GotoK038Bf/a7cwnDPfLTGf9V2d+XyIN6vUyBTCxiImdB+mYX
m4gU5w5YEisWL2g6BiV27uiIzsKbqmQX5k80Rw98O0iMIWcGAtIridbhC+1NKurtACOi946pfxXe
LEOF3D+k0TMAwSUj5GpSwh8TZLGtNHwAU7L4r92QZ8xYbnrHHtK3qgAfbmMrkZx6tG2YaAmlU0XI
gP104IL1bTigSURkubeS9dQ82henfhZyKehndLkdSCij/ezvQIunoT3O8p71Df0QhkGodukajxab
gVa2qJIr/ArFr8qjhaPskOjvnABqit5zuDZxG+uSfunzD6lhluRW1D9kkl+lbgPMME9fqiPMWPTH
5HygUMgjzYeBh8UHuWd4AM4Op3lADnDZZCqwmWE9z31gbvsFKa2LOJvuXpaBKU0wHIKCM7DrzPZf
Nz/ULXadk70u+V/PaWIBJeY0mq82RYbeWHKcZuGNej/rxxW24Dh+e4RQMPK+absaFLEMvHB7hn7p
ze8bMsyA8+9r2RISqdBtH/X2vZ16QgcPFkdjhqcj/7JKRJj7hJJc4p8ce5OhdSAdtRiOgOtTYSKZ
H5Xzt17N9vKut82CP09xXABRGerSA+85DwZXLrFt8cCVyBZde/gWGieyD8HkKVVfdyShd3F22RJr
Xw9IHaqg0290KvgSA6UOpmm0ulheqwJuVDrGwPlZvcTQ256fvU/q/eIER7PzVAitDKrygP1j3aQA
1sqXhLJNj4I2etdwHnmjMeZ289lL+Xwp9Yl3aS5vucmAY0NKZ4AAOy4JRKJuYox1BKLabKGygmbu
1ct+BKExWz40hqQkr8beRsASz6rq1rA9Nl2xkfJBvnYRalD1d2p2iua1BWo1bW0YFpt0axRDXusm
kCB02W8ZxLvkJN0F1ZCZUqc8E79X3vktUX5PsMDGCIKETkO2H1jH32aRqOP4+MLUkPHmPxoycYlz
c7EBQxKh15UPRCD7I/c3dmFrc4TKEL/HKzXF3K8sMZo+7OtqW3fIt18yFQP5U54iKR5CrhRZIkbc
aXn1z3f26+QpzvdpUyky9DdIKs6CT+XS+zjgJnXAN2blyhwUXeNNkSLwY0N9vm7sH362DlP6RWmG
8q7f4+HI0ZKUIOKadSPaU+BuIKaa2Jbbvk44ZQzOLk1ogY7rtjuT67mmkqG9HIp3Zw0vjtAP6i8Y
TrkBSF1EH3zS7e5TwblnAmuWm27RkG+k7f0qMWCUO7od8xXAuU7dz9ObKYvYtMTZ6qaLETcdKJ/I
vrihqvBDMYiFkm7q7Tc/fxq+YHAJQZ67p9xZMUBF4/kUkznTXo3O8CKkrjvLAhxDx4ddTINacvqS
hJk3qWdZ0lNQkMzAZaTjnzfgkukBQgeR6hLB8zcJEF8Itp2XWIckVeTE1Pl2r3pMTNS9OqcE1/6V
3Z+h18KdJhqU0HM+rDsVm/0k64n86BsQXQ8eKmvte7p2zm4tnPH2OnnIvyUf9WLn9DFlOR4WLHoV
h3/QsYb95aXoEbpXfS1wNiDAIbWN2pDPXKeu8iIyMVF03/dpA99SzHgPRXSXd+V2/z8aVCYyjUub
LHYyh20CabZVFROsA1i7p/vvpKGLE93uAcI2r7lBDyonY32pgDG2/gOLc/hlsIcZu1HimXzmUktC
ZfkhC9zUT3vFbLeVAfO9deIMuTGnf0JNNN4XO3pJDDoWCkt4imE7FfKAs4k2nLr2YdunMf4iuVUB
lrWWfpd/JVt0ojY0aG1AtB1WZIiyzD3gvTWitr4CfUUd/2TwkB+ysogmLigJeNBDqncn/YMYjBvv
CAa+hVA5OyN8cLXG/eK6YxdG6y2ZbtPygnq6PDkYDL+jy1SP9cishxf/ukZHTivs4QAoY+yvZ5r+
mwkmEKEbz8GDeildQmDvGaU33UjIq2U30Hq2x2OkFiIdoR4t3RSl+1jP5+JxXv2Z2qNZTeE1/+zS
n4jXFdb/WYIYF1YnvxVYBos7uFg2u9vidwo2iW7R/QEfsOJLdObh0s3JdMFVYUDyX5T19qtf0jy8
o2khuWGp3c3kXcjHtw7cvDF3UoxjLiBDK+r70TT6FyVKr4VQ/0/Doj7REWp3eruG2kFmZEYSXAqY
BmLJMF8Mc+qS6Op4Om69bS2Qw4Cgz+EriWWzatnSc66C0++VQUbzXxNfGP95MJGtWQcPlJBmaTAg
6MU7Vh634f8dDuQ2CA74zLGgEP+4HOK1uiBreheRmjTYc+vl4hC9smTlTHunusy4BRubkSZwRqtv
UjbM19e+1BGzNGh2m9J52PyKK0NriEFp/0J8tulYoGfqvVDFqwOtQAYNSkFOPfH6+Y4+Ip1YJiqQ
Czm69/fFSA5filAa2NSQsf3Vq1Bwj5C8dnj1HRjkMOJ5wovDOZUv2Gr3h2w3JWSezkoGYDXgy6wn
f2puuBe/PBURyAwCNIUWH40j7PIv5HoGAvmVkm1KkvjZ0OmpTA7j4OMTu8Jg9cvNKZgzqPNuzMEu
aFCuQ1lyD/AixUJHhUuLPH/EYLkgTryBClik1GTJIvn2G3mCxtkoRRbYzvCPnBFDmL+xaVVi2PkS
u0Ovk4/115aGis9rW0ju2V3kpGcMXe6TyXnLADtieNVtERKlNnosb0V1LKoo/9+m4JnP1LADx93n
Dj4/ipGlpWQHZMqTYui6PMRK4n4Hz2jxKR0I5wQpFer6077DIguU5Cz1LBBYtZa/Vv+CJydTxMO7
gbZ5wyFClF6Juq+Tfbl+x65YyuQIKPZIRA9yCYHpPywLvWIlPCkbV03Bj+/EUeSo0vWx5Wx5RkY9
1sZfDdvT9f4st+sqLUOXgzxRAQeidOVcwcKkcUNHB3Nquk47vAVrsB6Nibf9WoEopfuswz2IzU0w
OcSu5lxMjNpL0aVaVFdwtKLpecoXce7rJGCH5vSj5hrRhFkJuMh7NNNfg7Jrj7TLgKcwAyaGefmo
zRfj9LPS9yu7Z/qCuWXZMRUxfYq+ITyz9AK/PFSE8mY+fHnqEIeOiB5TRAdClszqNOZ/LuMnP9jd
4XyRWLrpmcHf5o1mQqgbUryowGntF9/5/YAwgD+tDd4NJzhVu8JJf6+zD/zBYGznBp+4r5lMCBgw
C2GacG1E8+zWtjzshMvhOnTBrdiuROvTijH93xXGvcRdglQYjPZNc04ceacB+MuN/w/b/ciBbrFI
lopYZg5cJS1rDI/ztwaQyKIKjrYT0CmRTx9H0SzuD7jXdY9qUmFBXYAfhme/57zIAL08g7a90XJ1
vphvmc6hNZ7kN/uEcSFQmho1tE+eqiB0fyNbetiuHY1Xh9vYwOWr5Rd/nxzbFigDcD9hpvcNKuJ9
E9tYi0QSc6VEpcxK52yJ3xzw5GoO4X+gdmWIdzpv9kWcZ3PFVLqIVxHAs4XpCFlvyv94Mt3G7Mip
yxM3fs1GIaWU9tPpGttcz/zyX8gqVzDT2jeWu8VOwvcAcMq+rjjmiU1BNlyCRcXBzcshOd3CM6iH
t+hyEBw+SCplv2NZrVavYAVTcnA6LgUAIvjISdPGhgnowYrSzJj9/R3A4IftEX98w7EGTNnFJk/o
yGr67P/lx8shjE3hJTSu1oqjWuWum6wMCPjlDU/axn481I4DRJdLyz1fSxRrbWq2ilXg/SPQjxit
vjOHHTd/wQ+C6gRlQneR0sAVVYcJw9DABJmjMdk5q1bDbD/EyKaTN0arJ0EGmlsXsFhnM0EqBICW
1u8qErZx/WOuyL+Uilojz/9PACK4cqBnMqAa7fRQd/YEbHJX8OsDCpWhSHIGIGKPhSAMIQCrYrSD
p7Jjk9kK29HUBnUeBYZE0MjQyPcHi5Bv8x0975wWqs2soRNKlo/SDsgPnrDZj9u+IlZInXHp452O
KaQSPv55mCZuZESaR30Rga092umjVS6IYK/RtYQ0S5OyLZzuiUjKiNk+OdW3AZMtpG+UXeQNy4CS
DNSERSwyvlnhv8tQ7J7mpmU+frg7wrh4oi/pwWkLTuihFEfQc9MWjUqK7CLdzdFoyAjtKdjOzfJi
/NtXZltSa0ZEO1SHoA4NVrqpU5EHWMuqEW06JZb6G33MV3yySKDZNMtNmtsc8JUoOxFQpdWk/XPZ
i+r7nESQXcOJn5o7MkE9woxF+TauVsJe25Xaq16wmJXyVOtAcuaEKj0GEil72guxiK9CuvyS+OkF
++5dLk7P8/+qUjqTs4/kqv+rLWO4gIpRfxgd6xBziX2PXEaapBa+gBwuF+HnSdAGPQkyQgYwQLP4
oWBr2Q7J7xZywCtr9/gehzO1/zrjUBCPoC6zLfAR9b0vyc8P38xkqUKz2CIDXjpyQ9cZsAw/b8w4
RSJAadOweR7fBSYf0QzpBruHW0wmvpfcP/F5QWICYSARt1gEFyeDI1N72kajXXFKogI1ZqQZDYJQ
ARRh/fvkUZlqmhZNLJQs0xlniNVfUKmKdZZtb0yXQEgfEGbTjf5Q7mU23ahKnseF/pz3Drr3VLzL
E6n+ws/OajM12Re+0mBS989QYtsfrvm4GtcGNl44GdCBP4ibwaZTfYf7U7K7WWJ05BwnhSvFYkfY
9z38zbU7K9Qx/PrGI1gNAstgGSjHHpAI5cny/MQ2pjFCGRqbX7tsUYpL28dCRdWjVCilfGlqsMYo
VcWYuwJug+WD5SfXN7DuTtT4xE3VANfWU++tKLJS4CQkPBO/BIMUD5AECbWikNcbxaTde20Ec+8m
IPTYvS0lRHwTTf4Fple0Oa9PPRlsUGvjS/b+J7B8nAEH2UpPkirXaFZnjdtO7jJg5PeE2AcJ9Y5L
LbRYLn0N/2YhquONYn82twGeKPoMqx+SpmpflZuiPywx2bjtWKM/FflTuUoHYJgG7WmAdSmLb3Ro
zIJxaFajoQdSMlCUZkdHjuLtYMg5t48auDVk/rh4RmcGQSf+gK/FrQ/7WiOa5VZKH0iuRbp1Df5G
HY4rIQyKYbYtkGF7AFWvvfcY6snU/XYsRS32nYh/fLybcoHVElp8fr9HjWUuk3vDI7raHgt5IWj+
hUywZB5arr/GZKGudPZfi/BoUem0dcHudCi9bB+0wfZEEDL/FsnaFfagJnoe1IcXP4ZsG1q66ZHI
YIIZWsF3HddXelRkNTKtSBiclcRudldgNFwDRZVpj1RZij+xxFmwmuTD+H3qvRQbRujw2YHZXdgu
GdDvRpgzmSkl3+3q+tZCMkzgH5Q8rJzt1auPZWH3tKidhPGJB/zpeqTFqWQKuEb8rHbVLK+ki4R/
hTjb45BLSp27sudAkwLCZ1rGpuT57ge1amFdSVb3ICoHVNvSBkAwUwwtGrnc7nzie3m5ktUFzVXg
SImUs46kPY6lUhhdj1v6UxBJWB3EfB7ghhrXQW7Cdn4UNzKFdoXbqnTMSJANFWlY8buvY3ovI9B8
gdzMElN4oEtkaMHtb3Q5TACDtRaKA6JpNC57+egHa4I30g4M953tFxd8qOK0QZWva1LmERXXeiTK
RAx5ygFyBOZo/BJpYwbZXsz/j86k/rvl+MbcA+O2DtNHZKRyT9q2d3uLktq2T8U33Owg0/mzxR2s
uDbsUWchXFU5Z9B2gXAu3+9v6xtRCaBYnNT3t7H/G0hNXxY3iVkH85qajn1SqRqebRrgFQ4WtxTh
J2Krp6zT6jOcPa4jfS2pdM5iG/WuXxOMrR27udpvdwcKWfKaL5HcpRgDBKmC2sgNKnOkm+GeAyJk
LnsVOL/PQg4ZP4KPdQyutwT7l/AeBPDdrEiPlXWdQ1OV62zbjqTJEq7qi312/fow/BOf2T+I9V3r
/uOMMyMC3eJwSNOb++Rzc+coxAn2aCjDEacCCT23bTPeuZfzV9yAddswe7yRfVYd4dCcjt4ITr/5
0p/eq2xGHtPKc6n6VsTvCmsKM8JLmnrwKUD0KnvJjnYPEbG+MLJAX/53Jc5tF1BZGesItp0ZQvY2
xJhrJ8wydLpUdzX4QxvUoU7b9hISyeNSRyjaxDfhzORKgHu9wVx+UHq0Vaikas92DZHgIj7ZOBoG
v2NVnkyGX9Ruk2U6xeNgFLPUfsIZKbu3FKNXuU9A9siloBrsKOZfaXTOmaCyAPEOyi1s/bKGwItc
JLP4a+uztLDCwDKhw7PV/bFcU1aUKsT9u/3PyvQ9UV62Cd1LGMz1PtsrMYjE53SsUI5BFwwktkq5
+Sm5sMMajsgr/15h6R565BfSGy92mK7aEXjf+AHIXF0En+jB66PJBPi8yi/mv8cIHA6Jj5qbYoNq
WR7tx4wgb41rlY8CH8nx3LNy48a5KIVakIxD1z2pohhf432SRjXH1llSKTV6nOlERtDNBbvhAse8
1j3/zM9hKTWNdG8VUpARWKq1wkvU/gpoZCCSdCshmLKXi4itOSfzLU0NL59VzN+XB/zo7CPJthbg
9/cp7kbpp1rUPS1USNvBR+Q5InU1+Su6SwsvVRk0g0dHlHLKBFr2nmJASMvQ795nBTrhPo5z0O6O
Ud/3z5aKJsYaJeyly6sZWFl1mvcGbNCHGlzgOHdC4UGMDg6sM74PnN0hJHPdofjDYkdGjLtjPLRi
8jMHVf+GSuTAnrIIaBlILfpEtxflzMfFZSbjNmzGWWjcReV4L+X0eHcS/pOQ28fE9SrNX6tpiFk/
fxLZq3cM43SsdWtXLRfs+dovrrVwVJrcGk5CA5dw9kQ7M4zHC0JKap6tYx3PlDyqExzh+yB3dkb0
mMTxE7h+askYUVsRriEOSgeBqTJQbfW/8u+NMQjW7CKUANh2f1wA8fUvqwqZ9qaUDNagLlvjjiRS
YyEYHdZ5IptPOnoFKOHIONS7i5TqU8oqYdRhYxqYleH+cOyaLEOfBC/I2nGRkuMaiHvrP6tDz/f0
VD/gslVY1Cmsm4a9I9x9sXz261a05aqSnPe6kP2zxov2pUNFSfBL0ejL0Z236ts2aetGrN640FF/
07PUVQJOUciWzavXaEtVLh7raKe0M8z5ERpRWkx1uoGGRSqpaBMCB8KTfT0ksMvMjFY6IKjodDWB
p7+og53GVbEZtCzerSGqs9QlaVubCsD+N+qiN7q5gdTO/PSZU/eYZuxjL3WUL4E85I90k1JB8cZd
6a92jRk+NggQETbPLTFAj8g3sMKAXXXSRB/XIEbU9LAY4G50O4bcz1LR4Ym2IqB9MqCFjwyIHHa7
XuldhXrGWtGmkB6LY2ZhlwwuJgNDt2MzTQ6vjRBZJADvOdqcDVYwUHLwImb8baMGZ7h34ahQsS0C
YYYnjBrDw7S7fpinybagvJTBMCexagkUbVtAMDXZ7xf+aISiknvsg0S23rbD56pgO+L7bkWckPGW
Rjel6V9J4wZuolxPU84vibde52PgwnFzwQvlIANih4TAj822QJMv1Y6C6F457V/jaAyKJlnFZw1s
lO6vo3r27amtTcOlV1hWrlUaG4wVInBpDAV/VIUL5MAESPr5ug8X/9+yEcn39N4MMIRN4a/XFkZt
nYJPKDcXUCLdMJIOoCYcP4Sd6SclSU6X8x6LShYmCXfog+soKu6Qyp6ai+j0s3NqkPp781Ovz4In
kF/UgOa8d4mEaBitl2k3ZxJB8tl/iH/tpxf4h8kTgqyDBowoxXdvTTUOBcAXxS/d3Wy61wpY5eAu
iOuhjkY7D84hbYbf8qWlISdVBBnZbrl+8E4uxegPdI9j/fDwCAwzj7pN7tj3Z2R1hri77Q6fnDI2
16yVOJTjiJzjPtZ/BUzrIRv70Jvq2BAdRh6gpsEApVw490A2Z0DrRv+q7T8p+wweV0WdzJAyTnl/
60u9A3aUtwa2G7tLOReBjBKQlT+HiUD4u9lneCmgCNt4nEAkxGLwu5oFA8Pia6kefGYOAtsY3Y9w
bfwquUicnHzodCFMKG39QiqTSIscaLqOge2fSdjQYC5K/i5yMwkEySPw3+c0iwNJwOdeZJgm7vIs
qWLiCXpcSt7D+K48ljAV2nh/vXnbrUdUT26/F/DrTuxF+qb0ZJTx72io7zx7wWeaRSFn2OetVZJm
uszQo7A3a6KPpxpBfoKYdhZ8lTezj2iHv9B4lclJv8WIXC1hRFhFnKRiVb7ndpll7t+iKzSpvFdc
bjMYD1QdDmIggpKNDUiuYrVx/DqfKw5ykblsnI8DD+1ryT2mzE9tfkO4RY6bBXw6w9jLOsF/fTyS
7fveMB2vivVe60FUjjHt1yrutJfX7F/I7TWiKRDigyzFhI0qTVRL/eTy+fpBXc+FlpnBMU9sJoXi
ZfKlr8pv/JUQbsIn0/dF/S9527LrrnPqKMDZrA43DO0lQ7ARsC1/WYyKeazLxxkLQTk6Vv5bgT7T
b4o0uzZp5iTHuEzYxxWvt35jQ5lSnMhzE/0BcuRd4a/q/29qzRDY4XNkz6uBceV0F2RxXbTzeCa7
6f9KdTj7DodKC0PEoDqUQi6zPdMvm+LuWWfLO3mXrxBrmfTIcbIzF3KRi3acVF1UyzRVyOnVqtPp
2OzHjfDzEBBxnb0kvrMbNkhVkkrXnmBUncC8uCP8Vj/Oc2h/Sp0045g29dYXAURVWepDj9zanqnH
4TxtiBRAz8CsqmSu59nfmWpcPcxIDqCmMKpE01KKi/EnbvnXtQmefMtuMrXvqauioRF1bYgSrwCm
q1ohxkIZw/3Ibk0mcVJaqwN7wThYUrbXU2vZdmwDCQg9NzXWhxliJ2XyMNQ6CKmdvrgAbAEC+suA
MApRS98wr7l6/kHw5pSBqlcHBnp1G8NakdNz7zmZOtFHaYGlBfXnX9pAe1vmpQkQZPFaQG0J+39+
7g49z19BOltqrtJnq5uCflxPBz58YgfF6LqCq+agJ19VKcuQftuRKDHN5+pu6j6BAm7bI1gHZ80c
IYX5ynQGREGdXNCG6ZGSzYw1mOPBKVtHAyKutoj9innbrOzFWPok2EjeAS5H5J1a9R7AYiUigO0Q
4U7huTkzpyE40Jmw4ksaEmNwmsKe40S8u3sgN/IsMZ0pAAUnbQaxrT01lz754oqDNUi+iHVPfGle
EFZknNIFYbXdjhN2HIYIf0qpmGOv6bJnCEZj3vTYZUcKkPmHzfvf1KN11ofx4bia4Kub1TAVmVup
96ysIj5OR038Aemr1qQsPfRlRFLZgUzle1qiIBMMJa9jc+FAvyvMrSJqJijr2LlnfnEoU7ssMaRA
gM9FK9gOUOH4aOLyL47vEUdI8VEAQOCxDHemHVvVlGIZQSMJBVGDnGAKk5lISikrNZEWxQ2U43no
KnVmcwrB0v7ni0T1MevHPrUw0ZX+Xwc7kHVm+FJ4XLXXWot1WmR8sRvsOt3/1wgiuUNgLaHr5x9X
nWwgYNg9t+8HkbRUdQSHfUaAV8eGBmuGK2Esvgoxej5jTkE/HRq3DCAXtNqWlWsal/E50uTsS2wn
Ooecix2zfSIS9NWWRuLlHIRmRrSpfm3SqxbVk9RGuRHjVU79aAadQTU1oUlxJ/mz5epQtAam99yM
uq5nbDOXBilvSkiL3NGkUT4W9MmXOpEUdwfutoBpo9gD7n1AmdYOlqM/qmL/GQB716c3X8mkqL4o
Bel4WsoaHMgoUiAgoHiHfirDMOdYDi33W7ZKGSx77OpuDbPZd/GP1b/F/kBGX6UPvRGv5Qh3AIjr
a2zHaYe1DFuBApCvGc1a4+8xEvT/GwIK4bI+gjqJcU4kENsDs3TyfAvB4yGJUnyRkjAwUM7cNlqS
c6UZ5Ar1r3cZJDqpfnMK+NA+lop1AnVv0GV4TvxobqfA4V4yEJu9XFD2XOpbZePi1SpSDDK11Uz3
GlP6PkeG0FYPBgFTVTCMjIPimGlyXF1/qQWxhDa3AFFcFtV/c0fpZAcLVh0UPCd9CClKUJpbomjm
v6gHkoSzpaXgNkrpO3ZU9LAlfOXJZ/JzqyTkN/VIthmh2mVk8Nga3Ncf65X8MyBIQiXp2yitKoxM
G6uncLFoxCdQ/1OoKLv6BLw/b+P1buRooFRcXA7Z28cTPqvdbu9TfHZlzXVsACFL8/q/WcaPVsvg
eDNpalWAYLxhAAKGJwMVf+Vd9Ga4grHqXJYQ7gIYoO4/8vsX9j3kug7K1NkWseaXJrHR5rHcM0gA
5zxczUWRiGqCoXySu3+4tfaOZ/hwGUfPIk8Vxon0LTXTa7+fWh5nh/Xags5pGB/tIb5TZr0Audpy
Htk1LofdJLtkaIUwS9qJuDst1rJ6VzWz5woaK7/7R3hPSQBHKWM89RpJdAZ3wxCp0B+4WlU4OfL+
dqeM+WIWAEFXbLIS8xBWofzmZ1Q3isiXF/7ncd3ph+2J9TwGiNU8rkPINEW/sJh1RAUaiT9JSowa
C6nnetgtccZPVmhTjE7FleGPW2UjnkO93Q5E+81ieb0PiOBOUy9jc3zcAByLc2v19Qv9Y8USozC/
gdzpF1zUHxVAJFiEFFkEwhibbhywgRxSuc6FsWYQCbBnvysoLt7m7d2LGjSdxQ1wWxG2OWHdD8Ph
RjQKcmrJEBJe8UdEsbKVFFHrIWCIJqswJm5Lb7LH808LH1fFAzyiLBdzqoITqNwZnXme9SnlZqUz
7gGwooeHFZWKCUWUlFfjnWLzPzKloU6VRC9WySYolyRvpEuuWvZA9x6eubIIyGFo3TCd7WplPJ+T
i24TQbcXfWmF661tEov0HetPEpZ+ETAglE0ZwFpCPL+Io+nZaTYBcX97Gx1liTltIq+XT6fVKtDP
3UclNBeNQY84ubtR9kGQXuNfRZcAahV+C0pXWgM7hG/6Cq2N7QopjsBhUZx2pdFU3o47wXt8rMYD
J6TmcCsY6pjxjQvjNQMVtz88pXBB2LyDcmm6AHqjQQsHr26t639aJIa4wiokkCUZ/ugFRS8tqVGX
agJE8MrSWPHKP3FIv5pNbK7MEzcqMDdqWMo+KhyfwO/SDRej2pHJKvIJgpJU10M2z0xjP/oj2rlF
6zWy/kwhANmClp/rOjj2gDExrspK/MQ86CbTd8pcK09XNAbo+5Xh9pZ0bCLXcHM4aqeFvqcCLf9s
IcQjAJbVDHJYciEqkKRsBPTtEYBm68/BYUqrzri3jRNHs/eNo3uM9LUuGDZyLEwctJN5/Vjk4IEG
0QWk/n0vmFJOiAbig9DqhuFgrGyYBVGdgmlG/Rr/CF55I7zdpiAuo8yxJLVkx7qaCbJPMnNQEwr+
ckRqISsjDH39sadLpUN5+hWyrnB1Tab1xY8khrA//VHOTyHlv+SXMJsaDvl4LL0aRLwy6vpokfxs
f5x8eivlnQanFiNuNsv/E8ZnhrxViphUmRkPgP6KtL5UIHr5QhcVBaQtTWCXYogM3bLPJigwRHMl
sU6/xbk+UiBplmmNCexGLFsefL+l2BHDJQFJi/zh3HA5zu65Qz0QcFkuV2hslXa1+1SSPYz4Qjz2
7EEWTbTqUqu2Fs4UrpBy+sN0dFGFyMl0c2Y99PwkluD9HmkgMCcGiSoOOvJ2y4U5JCrL29alrfsn
kDBoeFcqRp52IZ12mnSSYBYh2a13JMgdx06KRe41/eTiL9Vf7kLx+vhAfCQL7YM9qSzXdQV37ohw
8GEvooSI+6QeY1YuhBb1BNE5R6wgHUCrlgUVimK1mrfUoXcm+GKnegCBUGyyKXwzGju1J3qE1LEU
YPtLEqqz/WUH3pfm0ZqKsXBuOakngIGGTLnhouvWVnwMaxUEeTgG7v0GPlW1VZksxFwqTIYBG3GL
c6UmDjXggCqfJUH33lyR++KOrhtDVW2VMZzOMCWgRueUPRKaXvUDAxzKfl94D/ojdYM9cHvdPNBB
VSPftmye8BWXNoBvfvb5phjFzhZbh5N0Q3s3V3An++d18KTmsCrQ7RPOtchG7YxTuOm30dJZrTzd
xs0dhQNtkjTU2MESb1m2AoobiN+PWmLqhqbw7RsH8ZKKJQrAdpnmrET4tf0YMrauxEtthb6IplLm
jlSczW4NPyR7hxqPSzZkjfZ563FcRBThJcNWHZ27f1j1tKdO39C/6NUw9VhuV+qWoUiOU0oOmtaj
SVzFS8BXJ8GQiuVwuTOJdAV6opqP2DBxoxIeSDn3K/7taitGbBTwDFYgsfjtmc0XpqzsY3uhEkS7
kwhqF05Lvyt4T8ovCp8bLNuezhalAYxs01HmqGb/59RnxhHoYMv9GC5kqXA4wiH0GrvUMP8kZVVs
GVv+pEA5lIwjH6FC+iED9YuATiuUGWGivJccI7BSxqVKdrr6DGLc8xEG9W87OIlB0FHKjEhfxDcG
SKoepJzugaw4XxS4l44c21ZyywDjIH3Z6ymY5a+F2gCvuqg7FU2pHbSrhcl/F5NHK+3J5wOs9hgj
/hohig7yg2IMK92KKB9FMsfIkZA96YvN8eIZZ0F53qM/5MVKCH/EP115jy3b8hhyHNRwSoJ7rviS
Vv60uGWRXB+x+hfyzhmpFF90LPEitUN381W0vokMVHGIrVtFVt72wPQ3Q/5KpkskbsUDXBqq/GHh
zDYpk/f8Rk263h6FmrA/Rmvyz10Cd3xDLRlT8t5TQI/x9mDNvafPhj9jm1/KfiZFnN3FRsMOD3Xf
cgSq4vm1IllUCvFfn1jwaznyuh23LJM8GFSw7WtWVbjld0Uq8vN9pltl4fSIfy5w6Dg3nHcVC8ah
HNI3tz7SaXue2QtWkoVNdUV2c0az6dPMLdSPzq84UspkD7Ci4NmKwGTityxuXeTwj24u4vSM2OiC
p3uDjkcEYTIaamkUefy71D0svYclPfWVHfioIlkoe3JUUjQUJf8WKX96C+/a/fPRVc6H8UhuetQb
Z0EQ3j7h2bjSQlWBuer622SU3Wgmw7DU9ZItuOCptRwmHiHCsYc4ms9RO5ouFJfAqaPVWPDuLZIG
RhjkJ48koizKY3IeWr/8HfyvcEKY4dWlmzbFsM3trpu17ggcFXuW0rBbMgpVspwo643GLgggJkbO
zPAhC/btvHI8dC+dtRdZmey2VsG2cLWxPDeiDvQU4srGwFrz2YxzU1Rw8KjSnjfmNy80Gv17MZOo
nnb4UmegyD9ax3C00Ta0UfEyLULyvS2YWf1TsG5X3+NL3uXBf2qRySxqf+Va1Blkm2r9t7AfRmrz
IRiRTVkBJYixTlJSQTFbNt2yHgkUS6E+fL37nJnRKWpSu6DDe5z6EW92TfuW87AQkiVuNlrOv3aA
Q+GrAzEXkIlvEMpVAm1D4Kfn3mlLwAwI/gKHm4LTDtQaGOTdAQ320Z5/WD34cEcw41IDrrZpNQCI
Nuh2/Skhu7qGto2QCGx/UT5aD+CVE7y3QQoneuR+QTl0Ac2/XJKsXP5QlP8VvZcTOHDho94Q5qbY
1LRnMD63GR2QPLbGeZgwQ26RyL7F2RGLUSYmGcQrYBEid9UoK62jMNZPHrl0D9S0rU7dr/U4Kf4n
rGzUluWaakPVQhlBw4gPuFJqIQ+YoPFbXF7++fPY8mlWrqBP3lawNWXXLgMHWsvYv2MKqRUGWkJa
5gv7EagoCIvqNMEOMmS3w01ao4thfYEJa4g1FHxLauoWYCh13VL3vE+VcPq3SxhbHu+z43IzH8Ac
YVFjfmoI4sFo+64lguIDhv0fmxnJncc7FxlkPCF7MeHo0riYQKFX1aSlF5yZ5T8w2/CLURQ8+7nA
z0BLKvShdVYvuy8SHyYduWxMiuL2dIQOGmc8iMQMtTXhHVCpooSPh0IRaF+GWrWtwFSXatsyneyd
2BfXpzlV/2625RASTCVrQV4yEKN6HL+UUVuy9hhKQ5EAcbbXB73HJgmDd1IHj1vkRz6x0p4N4azy
yXK/8fSNL/hPm8pJaVs7z8pt2GjTZR7MIY/igHhMiaSVG/3zAhXX709nTPNzdXwh51Yc3Ohps6E8
SF6XtyroMP+pFUv+Sva2dWy/iyoNGg6jwDvhyQdC9fEKAslvm1oeixalvNd3A0k9PHy0nU1CJwcx
yt7BWG4jlN2R1AKHHwdcR16jRBLQDNHyQij7+zXmllUdouv0oDaP/8+rAoad2HiPIRBCyEFG5AYB
t0HzuDnpJo3BDQWOhq2xoodp+FIYTyg7bS4iAV3f/zTfjs9dPlnaz0NuM770gB8fdXehFtLc5rjI
hBdh6YYGmDT+/AjYUQbWcZy2iSLk2lVw3xZfM6qZhv9pzQJVtBH52wXtQfU+2/C/dnI1BiwB+5x+
+Y7ndmPqKOPuZp6C0SYOh3/j5ImHpgoDEX6lXaaGdWWIisHUdlgvtURqIaXEz/WB++UL9ej3yRtg
RqeoHQD3Da8kwNiI3InQxlvZpf09oUvfE5fTkD5Iq3wQZSedqYAA7jVgsXQ8yTVFjFSwviRJk50W
T47jrNgyhIrablpXDCxA3anYRI6ZXK7FfZsHBUsFAz0oWyEI55MiSY3UJQLEcMIs6VScyL4AZJNv
o6UBNi1ZcDIOoqsFWdUCOYPIJ15kRBukNEefXXX1kf7Sg2ySEiFv2dXAOIpwUPuIZRp0W2MnVRWY
lSvpyeFHMJFQ4csCnY+aig+YWG+qkpsFyp3Qob5JfMnh+euwkKVlnSbiXhF+cErj40ifxJ2K1pn0
15ggQPAjDNnlmSj0ZcPLPAU6xrdsrS15SvrKzXRQ06AMc+DYycoqRNZlznl6omm8qgqLnLaEXBpj
5R+f/aBcrLeWV2Kd5I09NhszgPhTVJcep3q04N3qCOmr/ksATVaSqTv9XWP9LH3mwnmAdEidIDqf
tqBDTUidOJTBNXpcwmWAPMTAGdtfe/QoaenpMYPucmni6WR66Xwqa4JTEc60kZNkJpbFubMDBVnU
XcGGtZMYqHDSBzyLmMH9fvimP/zedYtHFyaW9lP3nDvt+CSlDZPBdm37xTEDeHevNgBEhv/Wysig
x4+SvDiBJpuoYVq4JXvaeNxsRKp/05ZpGXoT8SEAtdct7gy01L8oVgsZ0xT/1uCaxUbaRNi6A8Ku
2ajnrLZuvhIp4l0AEZJKj1wcdz6RvtQoikRVn3ne2cCImiR7nOpcECyGhPVpVaKS26v4TW0td/kL
eqYUFRnRV7jz3f+QpV/2lQ59LJUp4kCQmHx89aeGQ+FNPOTz4d1xhILH3HMH757Ol3qB5NWFKj8Q
7En1O0a0+Ckg0OPMl2mXPfvkvpO6jFWVa4yWFpyf6rzgenLTwGcdXnrwWJuMrS/Kn8/HnowzXg3E
fBAV1qWLhA18dQFWIgEjfgSAEGSkg72pDxVEOFzxKwMznpEHqS3Brr8KYDf/VtvMT/m60ptjJrBm
o23C9leSF/cO9Ch4RdJfRDOn8rBwdikbJfc9Ku68DFCSCgCGqcaUtvaYvS6WWLnPC6FAW1T9v2Nl
gbl5xS5CT27yNekFzCDblCjxE9jGRMoZdNEL2RVlQoKeH5HbbxhJCAOxFoypi5U3Bvt+JIoTJ6SA
aOVBTEddJc4bKRz1ccjsFeFaHkR7cTmcLLG6Cgtgu/t32yer8mjSggSSfgmLjYPkeYab7hmt7T/X
d5/R2Lx1o5byhNMj3Y4Jw9kTewmqw34m3oPJNd2GeSAqVI2geqQmYJbVZ9C26IbbySihm9Ju1YhD
3ccC2iitGFkhMG1HnFENQPGVeC2miB19W6tHlIOkeZC2CSCbJnYiVW4hcx94ZAnBeU+GBUs3wxLF
09KwyluNvLlCj+8nZuchKtj/E/P/yHoznhgmWy/qkolqrkr7yeXgC8+uzHOGpcDMHWm9TCWpjV8+
2Wheig8l+wnHgN5hHCwf3mngJoDaJrNDcsUY4wF3uFumGm2NSOvApMsHkvGNRStDAbmyQZU3cUDu
yH42ZZBT8ElfBML8db8/7sWze+Op6QcvON5K/uvE61XkEoXc3E5Q7a3Pb2kOLtU1C6x13Xk5y+B3
AdGU3LzGvBix5v0o+qb/qdL82qQq2upd14NEQAGVHG44SOAj9cbr3w4o6KnOmvkqQy3JMgJx2I+5
jg5FSaWnoior0TYlXSHRSd/aBZHbFTBWExRcqpyWAkIY4EmRX5IxPKvu5rdtThb4HVqeJAwXB6k6
evhenMvsDD1cFqToxrMBob7c9WhR3Cu4bRhEXNOV5GAHRtAh3r7T6RqP1Crl+tx4P2YpZynxdRnJ
KYusQQB9vk1sAAN7O8MjKsDepA7lPyIVQYS5dPz1l3ovKrultFSTQP7PNdwyVYkOekOo3bU8dJva
RByMjWirSB80A4oFYbyrHAyFdb3SQRD9ytHaeVUUNHh5D8gASlJUXaJX9zcnQIgEewADFN9SNuGl
k9OskqV+s+wWMFm6Z+thXfL3eHklmkEeJDk/mp6fodyO+Nm+kDyBtl00F9bVww/z/LRmY5mmTHA7
su3Wdq2cBnSiY0sCi4eUYLQEe2sy7awzMnq7JvrUHrBSkf5dFrTJ8FmAf1YJjEYvRLwtghk6oF6d
WyJwRwThNhaaLYAm342xdWEBFPTvDpKblDPSc1JXuutkpnXC7eNdYJW2A0GJ92hwBxHUIPWeu1uY
PTisDPMr0mNaGkwEE6IDfVUwsGJadrlC5lcKzTIRhpVVRxSZ5JvUXBSlQ/bM188j5b3J4GfDAGSn
oxsnxc5iAcCFSDih1pBltaJdRy7sZPMu1LlENpoWV6cthagsnyjKiHPkyIb1Lm0X7s3D/Lp2tJ8I
ReMAeHwohmwuWWfjXQTIQDGP72BSvekialLK8IGrBFB4ukedr+C6bppvSHtbl6lL5DfwwOjHIOOu
/L/xAopD6FRTbXYJeMjP7eKuzoPwIjSLL+IVW7UYHgjcopejvwt2n89SzKqfME/sNbVdvCdcTuD7
aZG/bE9cMqs8i8Kk+lEVYit2VzoIf3J/p7iM+iwGC9oBAAVoWWAUpR5vFqgRq8JivnLmI4W/d/Ll
YOUxCsA4h7B4thgKNj2Pwb1DgjSkVZ8yuz8OjIfVSGwlah5HmYeeZ+K2SLIR2RwRqhVCS9bCxyta
+z/sVlyjPab6bCKiRq+Ci4g0a3vX87GmUgnTNbyZ75yRDdxS0Qnobahfe5mrs4NZQj99qKQIt8w7
G7WDINjr/tC8sM6Oi/N0bTNcYkAv4fo1UD+SeSAAhaN2MmVCMu2iR3yRM9qv54zazWks71Bk4Fp0
H7Fdf0vEXAOgDLrsJTLcOREo+iwA9g/yBvmxJh9EPBgtsP3p+8bWDO5S1jvEO11zO30LXJhb25vZ
3E/y/9xj0IV40H1tfxV+ctdblpgBI5puCxupc+C5jRbAFl5eIKbetVmAWz88MU833U4/N7An5m6j
djPf4TQlUw+FdtP08h/ol/9/D/WojilrpvulY6U3Bt/XfFXaEqA4FNrJEpaz9Mm1KWkPsDxoQ8Cl
82at37qGKyuyiLIGl9bCQJV6ko6MsGITDgt0h9JyYfopDQ14bnHnk4RCicknv7QQ0MrQxMSJ6nbn
AX99HZAQhOOzJR5Osk2Kh4qyRUl25KWbcL+0nGIOorXHeLmesNy12wJ9V1ZjBzMOZFoc/BuHz1ja
J0Ztg5a5yPLU4tbcU/AllCFEUKYYAUvtJm/4U7CycUFRN7c6W6a15/v5sinAoWb6fDwcbXCvya1X
2Xji+9biF5ItIbfRHdd9aTO/jVXkFamsofg5YeIA7TWVfE9MDhwFySkdM+Hj+xQ4D4OHy8uJTgN8
kHObsQGL3TqMhdAP4oRSI5pSn6b3fGjPNBatDbYF/GO5OYsIfaN+Pt+gLmFTWBvY/P0D3KBHhQLJ
xs5+DRfuXZW7MrUs3gTQSk+QfEI73MPA9TYuhHuUNdrzV/+BqycqN6OLfz8voQrXw1LgZCLG8OSA
bQAcFGBNPFlDsGW5kLG0RwSa+hegRwRpdulvsOR8Oc6sNeE0skIzHbu8gvUleUaS86Pyn1UVk8Qv
LY6dFoDQIp3yrOkbfPhV0U8xIYIcVw9eETgbHUgBUPzVdKxRyVvzGmwBxZ8QbrY4LMso8DRstaOY
A0HBDI2NapXsMYSEUKcvh3d0t9dsD08v6WHwQkVfdokOs5gmDv4pPmLfvkOGD00pwjj8Z3oFqkKx
m3HoBNf/IGQyu3QgqBt5ewDzGtqS5nZkHQ21tfVcUE8dDwU5/w61JlJX4hL4p5xdtmRqtgonPnb7
3rrDp1ehVjfNnyuBU6Gj6HRGKvMg/AtCjYH7CvN+KCcUVogPBdmLrqtUcdehd3NxqKgQnO92tU/b
lZAXUYQV15fOdixsk3pLQmCSDirtG/801+hYThTEKhs/CwEAIRBUeo2SFbVr4oM/01NcapoRnxsL
I+FJEId7RVXKZRCJsgUNMNKD4DDNHjCSC9otFEbO8DnRqgKizl8gCWruUqh+hOdZihmpyXCAbqnO
Mg7O1ZZjbOrbOWvfSlEH4FvpTs64K4Sa7xlRikcp1K0z8pBuWVJIg3VBHt2wb0rYiFlKALrleCpx
A4tIV/2XYAVIPMIDZQAJn4x/FOwQX6QoL+T4LZH6DEFd8SjgjXsNao8HWPzZpfmd3CoOsGSR2kaD
rorrdzy2BuAaDp1iZ41znlPoCvvBeJ27uEWW1tJwQTBQi4XSliTQX2K8J4CJFyiKNSn3KDbsXKFq
BUYnF/dFKfmSgnKYLgxlHDEQiOEWxi8PWxOlCvFBl3rxQ42S17fYO1fmLlJqILh1K0u87wUc81C3
N8Dw3PvQ4e/SxxbR83OKoHqIlCbQvGHsJ0+U+ZmNQerjGcqpn30YVIpsm9TK8Iu/oy3R0QXcTpCn
zkm37h4+gL9zatzy6F75P7TeONVi4ofLp+6AazJGln11g7Ff9Yc+2Gjqp3clqBUH2HRdx4ynHgOl
jRox3opUr5ZOqzVECf7bySOvcJ12ohgdBC8CK3BVGv4u3JYjrQP7TubazzcFUxfagA9ZxVIf2drK
qgy//3jtnCYmyhS3rFCITKxR4zVgbTGjXqEYsIx4VRhx4yH2CKsFjxGHOMZnmpv+ihSgyDT/Yaae
tUNP5ZYD6wvxkI3mtAmWtP8ZHYCk+7RpCOaISKZ+1qloxgiVD0q6mXqGBzA9d6ZrsukFYVwitFVS
H2MctGN9rVNRI21CbKS2PNLOA1KYg76xLoa5KIYevMCYv+GHgCCuM7Iau/OG3yp0JKHdxYpL94El
uPfEQnFtqk81eR8JwXCH7aKUtg2yNTJMsmXS5uYBhWwprqqwH1B6o8q18LM+OkUTCvAI6AUP5hU1
XF90Kks91oa/k6D8pU90r+MK3c6nBYb8ancIQmEpUKp8da6mdP/Be4/pyWoyaJgJm1BYxxB/iWDr
i6QI+9m9OjTovSNa6BRqZp9VO+cVdf1jwzkY3+ql5AWl8dCRr7lNZ23sd56GwW/OjaSpLcwsICbZ
r9EVBzNHWBV9Qmk0TwV3jziT6WSPTZFuPNiM/u/TThJxSPlN4AdDmqpOUaNrZLTuWznQQyPc+R5z
/7OsD10vO6yZb+6AdNCmKCrNdRLIsR3CatbW+IHc/7IKTwZsPz8gN1mIRcIzmaU4NgnekRbPSmkE
ADw222SxIga7r8ebADOBRmnwSUgq+K6lerHqM/a/utE3x5ZJ/ziZ8t1iQRc+WjZI2K5U+V+Ztopi
T2jiSkBkTrY6ql4wfjyItV/Vt18oGRtDH11cdg47FO6JQoRbUgLzy5aqcw2KAdVW9FU40khlWxnL
8A+/zpR2U5hFo/0UqvtJ37CPXh2AolP1FDzRUxWvp2UDcGuYQ3qqYn0bas5Zrw5sZYdZN9nYII67
qfGNJekv8jI7QuuUlhXQsCTNfdC4A8q9KZac4x1OE0lFNCR6pGHXeGRfzhDOrAWOeqcGC+ZV6hN0
l8Zquz5N51LYNRvdkcz0Y/1WhTGyVWG9hN8MT/xiSQgFBQbbhz8OSvAxkSCGNqUyWvUV6Yy5biS5
/NREZrqU02/PBx9h7g1D7ccPTkTeg59afoRTq/mk5QhRVMZnK5YuLSfIrMPdFqr5DJkk8qhTOyVT
8KxaBXqcGL4nncTWpdq/9tzTR5mFVOpzSDNKqCIcWjlO91Q9qvPr64AbdrqHwSHOFxCFLp4cffuO
1R1ppDpMwOsz3DnWjqgjdDCEwRWxvhJAFm9Ma3H/c6KgdRuLmUBYzqlW1icK6MoumLTJObZ0seh/
BV2CHYMfq/Ae6F38kh82XoC/rAsuDeKE7E3Jhv5n83Dl6bg6IokHeuF+PwayeGvh2BqmG40cB5bS
wBCN02R2N8nwWmySpG4L0Gp/8HsX4z7AHD4Wrug2bIX9T0U5MccgtMhgHpbVHA6yBTL/Oc8M48bo
mHkfQLL00hgVh+eU1adCkqi9TmVoFF/Ju7mzfIvHkG/q07HWoHxSt0Yo0PWJZijy/tdZB/NuOnwG
JWKwCImhXiLK0SK+WuR2NHQ3Vfaeu4BjxD7eGdrWtlyIL/7jFWXvmUkKqcYK8xwF8mSzs925WAhe
+wtER6nJT5KWMltVR94LvIqrd76ptpxliNlN1ocgj62FrodiaZCvYZPYMfiA9a4dra++7MlbzivD
bWzybnYiXzA7DSFkJ0/albwlKK7venWEdOVlg57LU21nP0dpE5coR1JaWSwxfy2Ob6yLjhkJ3SIt
Khs8UwSFCXeMa0z7zBsy3VFSw60pvYvq/ueuglXM6OZFnd2qeNgljSUQorMvIlwTNhfEt1BX6iac
Y8rSThcGuBZcEEAj6C3jtr3eV0phhTmGi78tGAoXNo8xP7M1TitQWDeULmOIeoxeB+CkgVvIurxr
z0glcS1ra4uduu69Ookld/NjrUv3TOlK4SKUXXTxQdZx8hN6tUcGnXys/kl5CGAipX/gbpifWy6J
eZ6smivlQ44BbwBFm8hRf/xgTWIyBi8+rBON8NHfc5fOclMvQP12Exrc3Bk0j3xaCc7xAxyobb9N
5EGbcEIjMwN8wSxQX/G0m4O0nVIsEVL3xrD47y3nJkD1YwtsIaSPhTXccFoJqiuAwTusqusCcINk
msg4QGNKiTexKO6GopLUbD9LLUSSxDtXtLWo/+yqIRGLgLnCFl5LT/yoKHQS3ihslpySoU2jFRQw
G84LCDGfh/PN5EaqHoUV4qKAkWaaBAwAf3dL6bc8Nv/UT3RnCvAOLzQ7ydms6il9U1E1PG9+1SH3
6D5LE+mE3lVKZ6p898ho0u951lHE4ujTEM3dLWJFKi97dJhsB4BDokxE7oN/EdcNkji+avbQ4MmT
WZA5SU8e7IFiaAk9zjGOBB6FP5QAaMoDH/bW46+t4eUYjZ34YFWheQwJH7i7WhmXIsv2d16CwCUD
fWwN7kgjbLn4RgcLaqPu+d7n9RyxIfK/X6tgUemPgzEHmUguzDdoKjO/rMhbHUakv/7I/J48RnBx
FAnUuoqJ+suxbs7EUx6fORO2J3isZcQfBlktPwBCa9T3A4DfF2uRPUAyMnD9S89uPZ8KgQfeBfAi
M49aDJuiChrmmq1af+2EQz2uhTciP2LKCOcWnfQtRgoD9cWx6cHwhsDrM59YhavvoOCKgyUlQZg8
ya9944Ak6LPhAlQBhIXCj+KkH2MTaGfWRmejfHhICiBb7wJgFyhq4RNHI+X3Zh4CP+4yvYIPvQSZ
NLme+XKFZULQ5Kf4AzkYvIC/R/7DhHUmKzqs+iPjzUFyegjl+mx+wCMicYe+vmFyOl8A/qd0Ianf
L0gtuXWLpmFXgCe0bIH+P4EjorztZ4+v9CjQjMwG0jBpWV2IYmcqHfxNceOiJk5ks0LCinMndJlq
5LFFf4mxTFANd9BMLAtK1P1+G5gowdTxBNGpCAhvzGUB4XhpoixI96SKBMaWoyqeWA8OJu9a3aHI
vtMV2+QjzhHtkheB3CwumrM8RGwF+wnJuXAfpjq/pTJEsCd9RYyLbOzbKzKcQ8fnkCTOsltXyMdS
ZTJm7Y44ReIWDUBoBspETtua8lN6QlpTCUQfATL/EZlUyJSopv2nM2nGhaTvverEerRig80bwY4l
SrFyduIAjZUa6ZDhHIlB0mLpU+jurCDDD0bOJg61uP53b3vWAcY8TA6RZBn0U5RxGAXcIZCJCgBT
/eS8cybC8mXlXfoAK9/GrpN469aTUWf7uIGOJ44yvTzR3n/3CKYVLCVaD4Vhl1BB3ftPjx9+4kbF
8FOYUwEFUwIKALMKNjOdXosuXgc2XREfwWfiEb2tc8YPxYVRE86Fw+r8U5o/BM09Q54s0i0xCxif
x8i72bfniVc2BW0ub+yPmiNQFSnfnjow8MirIjNPd0O5XRetvg0HsEyPiJ1D3oTjVmr9zS29BlCw
qvpow/CCjE1JHP48XuCT0dFxMycUorNGpQPwXGzwNMghHBKxBX6n3FePDu1L2L4TcgrfIOqHirql
B5R/Wh+Shc8K9D2tp3QTR2R8YjcZoCZGouO6TcmzZ8Q6fqo+jIuz3oP2K5b19Ygz7AzynnZ73orS
q7mCmD8ehdpXCcfwBWImXUubg+vSjm03B8GGVJ68iZj2WnpP1QSOa//xvubnXCHzXvigcod9ScxH
nOWFRGZdSIS1VjS5jIuSTG50aT65NoO21bkdRnYv83uPLhixT7LO6E/82xZTEZZG/fnbLlf3W8eB
ZTRnIfUqBbOFy2fJxf8ERB+zW1MIhVJII0fGa9zk8KY+2t8ZZmf/HdPTow4wXnW3cb9pfsmCQJ8L
BhPTZmsWwMpEC9TspKVeqlvOrRpFHb5sEkmsIrP9pLzIiO0xglT7Gka7tGOsEhNISXAsY/ZggZvo
IyuaV0zqa0ShgP2bad9WfjqdA6zLHlo9QhyQ/VWaXoYakC/MFxNpf9EujNyAVEW8ZwPYcyJaqq8E
3lBN9wcX5B2X1G/+I2iGxFfyybVzWJ2OScfAVHfop5NS/gU8lsyDILif8PfVnfpKXXC3TkHmgI1P
gLiMT7ggYHBudv1fZuzcloIFc4HA554tcEJ0OHtj5Y6q2C/cU+gFehVgX8ZtPKGoOyLXw0Or5Bxv
i2qbAzQxxvLFCgwHqCADiBcgsGBEUziN88h3iIigVsI8gG07UfUXwgvraIDq7sp9xX5SFJkDlprU
1sGYNcCeuFTAgOsP2UEtJHtIH9VfMVhJzgAL6t2cPIH+q44mk4u8QR9OtLvnNTczBN+ZOd2YVsXU
gQK/oRozS0s5olmw21FLGZ2GOmhjxDvO/VdHfpHZfSxKS7g0MKYYuOB4OFYZuZ+/nx8rZhGfLpYH
VWLvMhkxsY2ekBCbHmkzO9eBa63kTBj13JyPG5SjnSThEoc2QavI+Ou56pfh45YU/s4gQi5TIram
G2JM+ryeHQ4428exUpsiIBCVYkRrd7JNtUxWG5/uBzPU6TB5j6p3tMY010DCTgAz/PSMpaaFLnhj
y01ebTkQ6Vf9WdNjOicryjK6cUFA8GudzIlcBxkliLgvCi8k1U7Il1/CGnni6iBZp45YtlJTLVGC
42bkfxgCamkv7wp0/ONVH9oIDrjNJQLqjXAEmAZaEadOFsQI3RMmGMGxdToXWOw7/2TywmqEXEY1
D8rvO+Z5zLW9IRrMfgYs24nASZrpASn1OoW97quNDwxlhz8RerLmmr4gmZ4AhXLGV8QhvX73yax2
GFGF8B7wlprmBqRK/lzQvvNol1YhCHsxPPgsH+2vTu2j83CyFNv0dS9aZwyK7a4YjM6Ino3a8ZJO
kBX3WSSUfq9GLzUzo08B4AD0tIN8CXfr+/LZsl2wtu30tHbdsdaxzcegEV8xx3Ddp2wwK+jtsl2K
9huoGVYzUpzsPvXd3Su+09qbvyd3tghgtRsTIFHTE4boijkCUbaqFhN1iuAJZzx+FmDRZgWrCFon
HjSkqNg8ECP995LhPeumg/uwejqK4nywdVf6Keb08dbErn3pM4pqph61ENJJhdCo1852cBJGfnex
uBp39nXc2mouOhBl9ne6mBTWNO7snRt58uflgwzIYaXrItN67/f9voXTi4qLaGiOFyUWagvD1wu1
Yz6fvHamUqavDkUWBOJUYA6+HrUI+HKzhVqC0Ykr6mHkVtp0/M1MUXm2TXWJKt1FFwpmR3AvUe/e
NjOhR2INhytQ/EzlhnuBkze+Z2ive2UxK0BNiMP8XzuCEOz+UD9fDXMsLn1R3D/qBz0thn4SuZO3
+yXB/YchG6WtEZJiPcfAZNQi9oUpaOkAF2AWI1yWlz9XyeEvUr1JkSuKIOJqOactM6ma2RX5szRz
tETvN/Df3GyX+hScWEXni5pksWZHH2nIHJ9wfMrfZR0CXObdwc0tEDLx9UY7UnabKmi5sWekZI2T
chr9JBGG/xFJRnbfmM3mQbCM2lwPIS4Vf51DOTSFNghB+PcbJbXDSiX0zBBoVT1029xCBgQX+Y+e
jzAetiQWT96RKGs0S61mLC3Fr9+WYzvGjmRaHimNXXL6cPqyL4pH4lzXfpHZs03Hy3GiZi/w7xpB
xPf6TxDJGzn+uK+REAU7lJNR+c1HR+dCI8Ewpv4ydNQlq59L7UgLhLHIW5g7DFwTSvDGcNeNhbfO
KkHxpRUo4d4qCXNcS3YxOUESstpGz/YMhkRw4LxHVUPRokDUT0IIZS27O0w7PYzymaAWRCr/fXS2
MQ9UWUBvflble5k3gEx6Jb7ZKNCb2g2r1j9QTFq0eP+CuA7yvHN9fSQdYohFnSNLXE1G2XGgqN+9
65NQjPGaafZlDFvLwgw28PGQ4PKmNDEreCqBI9qVol2CroEi5YdwpV5VK7Dpqfms+n0X2uOQ7T/l
pMpqayFYrPASN5NcCMsg8x7wcoLWgkEPw1jel8L/lQILYLb1YwHEmVos0qZ7V4YfzB0Vfum2PaFq
GE83UXIIy/M/wET5qRY3gW68pshX0jd18f5bzycuiRK2WMCZX/XvKAR2iiP454YsJZDqD0hhhOib
kCE1k16/LEWaHQcKx1twsUeeRLN62y/bpR9Mr320SgauBBK+En6I7vQaJ912vTE5LyZeHTKiLTeh
8GmMP70F8EuwIx4Ch+gePceO8JauJ/4LpcWWnF8gEH4S/ttovCdaoIBIWBKbGwNjTtQYkrn3Q5P7
5fYic6NXvnBl5kX6TFYwDI3VmvnAFz3MwmJSUWHmQlnv8nQOqaVhpgAuoGkEkjQIUYp9mMyQotrY
R1EBWTLjEuS95G42rA83Rn1busideAYOo9GWQEzALPpghqB0O7PJGdjAsQAgVtMcVOYVm/7kuko1
Y79Yb3qc8kTfpgkDalh69AVquHA/eOSaRjp/2zkf93wmy8jj4r0dOj7SkF5cv5X5fXIJpwEQXZhV
KfQeFfaMpqfZfG/5K9/F7ulZ1qgjLh1ozGNdM/NjVyKaruCDWclKc2IqJaDH2w/g99Y8LiJhAi5/
pJeJx3zZryzHpq8RP/CmEw5kya0XMe1T+Ye0m27Aa3LcGC9jW/24dgaC2zbdcuyTErY841MBuvRA
nnaYemxI/Jze3/c5bnjnHpzfF2VyrhTwFRKr9XKG+bEEVcAd6DEpfw9EcCzXLliHbkrynoDHlDIK
gIEmIYEPX1dnhoXL9VHBt6A3yx9u40udCZpAkMhEv3LD7px5pbGI1HEWnnluHgAOJEDlb2z00H60
Y63/gu1hvkzaLA8stYi32bjfzp2t0MhUKcQB2Z3pMZs12GdvCdTTPVooQhLPf3TrlpS9eQNECzYn
9sTykjGt3P/p0CeUSeflGvtYgQ6M2UfmQBtius3yUzg++vsLPQzMyiuET44fyQqpxwNYjiHXvx/U
jQMp84M8Ow2JxzACcc8aM2G/hm2Lf+miiqyTDytv+TItVumD+rKG1FIZkJNQgPMOaYKJ0zYByETb
UP04fcnZA0pC7ZOuM5PafCcAeNW9d8OB1hQz/PWXAyh2xah5+fkaSk1cAhlvIKwLmEkitRtmK/QV
AnZKNAJW9h/O6ua0zVq8yL8Gs7RmT04RGDSsvX4ca0AoWMbgHPcR6IVX0xdB0UgaO99ur0/ogCPK
58pJkJP3LylWhwDwljzkYYLFAQFBpfqNOzcJe4kGJOx09X7zE86NKbLIn/bxIDKEqBWEU5/8TdZ3
Zaa47GprE4mdGXDFw8mPpuJ+I2h4Pyx9aaKVHPxH4DbAxc2ppbooQSubqkV4x6MQwaTl1Shcqc4h
ssQk9mVnVIARu/ix/6WIW8BLXE7ZljTMCkmHSZqNKeFiYE0xGbfSEXgoIpbevyBgSZrYOhxSte64
hMtXBZVWrYTiJDRWwrD6WlTFtERvWLRDNbrwbm6batWAQkf3S6rQJsxTiONM90OrZD0Q8JyJiaX8
E5I8wqkzrWwZeiSThv7kR4GOPSVMz3lg9djBrO+13O04jlFZWy8DGxdyyBr+JbI1517JtgLJJzRY
KZhVQaoDyAL45nYGkRUo1l3IBK5CPo9+MHsb0Cml8GqPztatzCyh6DU0qlxgnwDbpXEDPQ3GUVjA
X1BIF33Ktw84DHBg3bqUiyFLIM4pX06QT4CDbeIyhLu0q9ay8QIBtpybyFivQ9s7SV/n71Dup9wg
TwUJ4BbiBqrihTWtrY/WU/XeqUgH/urkQcNlWQWVYXisddZn1Z39++/BlZvTg565OZj0SclIniBX
z31AN9I3dbdWaHXkYmfqGegEocZ7wKK26FJBWfBYsS7+DHYapTPRokv7wQacL6Avnz0VvAYIre7p
NPQ9dnNxsIc7HcsRu4UaVsO+0llqlVC+QMu7R0MRBbixV3+qpg8uvVkUKSmCMRPL9eA2IkgFDl9T
Yrzbc3d7YUAibUSoiQ0tCJhVLHkU+zc+s2/dKVuUKl7dpj5i8SXNoNuaZNlJyYfJDVOf7xuaL4Lz
V3E/n9gqbSGU1HQmN0w/j1Ra1rLzFflUaL3l4EPWMXPEeRXQm5sf9M5vgc1aIGeW7WxUTf/9suHP
OR3QG/27fEP20HxvxWsTGaePhG0yr8Vh0YHNUHv1kweDgn4JEk30znm5LDPejuDVeyVI5/paeCbG
e+irNcneamYSH0DQF75FRIELErIyEe+EmLdh1idf0RLGHPd0fOxQfuhCri6sEi5g5Go/vs0YHYcw
ZfS4k6efqK+1eT/CZ66bPOBQeCMfmv3+rLvxUtRjK3seaAO7e8YPsmesRzld2Y5iC5z9LYGgIFX7
g5cOL0aWeP/77ACNb516191Hd5zvbNV3hOE0te7znm/dLlFYOOri/0yl0jyb/cncY7IpIRamt2WC
kDDnKJ3OhRJiU0Z2scJD3guzmew4+Ui9GsOy6tCRJufKdCIjFyoo1NlAolyeDbM7W7JavYCDYKPW
y0/K478GpT8sMc9eWy7jXarOeVux7jlwh6+rudpMPiiAGOs0Z+gIKsAMXnxGgaazvu0pZOE1j1Bq
RzU+Xg3UmSniqykjEM2Lj+TEkXthYNT+BEPGJe/OUc2lymlcj54fybJl1HTJ01xeC7uvX8RIFwed
2Oj1vJeDUDHSmlsl+YRA3bXFEn5e/JjDnmLO1sq6g35uFw4CSnd8JfzAxCX1N9S92GGoM/fDxqbW
3SkrU3m4sBQ9WFMY14fPhfuFQKN34zyYRU1OfgJM/M0GtWm5cbF5aYrnBYnJzSi6avcCheU9V7M/
LEo0pybuv1P5Se5H2j5u99/z3p4YeKsagAIyCWaMw0x4sgz5aY65d1cACYyCycAxWhkwjZbEC1We
7Zaaa3nUERunBPQ3hrxEQwgurIvDQQAMXtz2xBU6wBX/ZerVAZ7vwJ46TDyepWnOnpXma0P21i/s
4L3Yw55btE8B6vYwRsc5y2FrWJrP11kmLi++VAkih6EIWUuv0CvPO6iWY+2F9/duW00cWVqEh7MK
KTomZRQr7JR89ivcmE6x70X8Vp9+sYCPGEfS/bBPWhrgQ84OvhSkEz8Y+Pq/Fda6a5cgbjmssZZZ
BhPVujp1rTrI8RCT0B+z1Wgx/KiKv63REEmec/Beokrz44mp0i/OUxUtErb9LuwMzi32NBWKk2Xn
Lt8iK028WYOInWa3bY4LqQGv8WrIcNvtJ6l3pEz6S9fjW0Q/xQRMcF4/K6+5S31X1UDwHKe45Rzv
2jo0l12NWv9JP4EI24qgZX4uqEpU9GrZv3ZwKUZPwTbngzmMDXs43+IMWdjHIUHmhs95RwA3elDM
j+WHPN9NwdL9r9cUr3cIQrGGNxU3cug/8rf2ussHpG7AAzpU5mfcFURGOmkVFlVbId9jff4tmSQI
TaAMgQTSIVYot72jMySPS3HLf/JjDhPZI0TW53sg1Vb9yPYcZXRULxiCDtPhv1J6FYPqvxYpg6O4
U6SY8mdi3CSHuYA4OtrI9tmNn5VZ9R23YRYHPrHLjpYFQtwTN3XvZ93h18tGZeyW0UeT17BsSOx+
3Gha2JVwusZ6go+gPXwGIVdQ/4LiY7VhncwhDwNjIMAKSHJGD9Jyc6Oe7ASAk8qUb22ckgF/TbHo
efmJ18c2+Ya7X4sshidEUfVjMAfuARYc6WOjPp2P1XDsyWzUoDf+3TKWMeKFKOxQ2TSCloPudLgA
zLnsNPhsWYLMoWLLrseWoPrfaQhp9bvVztVJa8H0uUdwL50QEWeWvjoVn2BmU17cxoYmcSVIcdiU
Xhivuubv8rIsox1RlT5rQQjugeEtlNvr++Zhjlo=
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
