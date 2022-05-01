// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr 23 16:31:11 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top pg_freq_acc_32to40plus -prefix
//               pg_freq_acc_32to40plus_ pg_freq_acc_32to40plus_sim_netlist.v
// Design      : pg_freq_acc_32to40plus
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pg_freq_acc_32to40plus,xbip_dsp48_macro_v3_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_15,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module pg_freq_acc_32to40plus
   (CLK,
    C,
    CONCAT,
    P,
    CECONCAT5,
    CEC5,
    CEP,
    SCLRCONCAT,
    SCLRC,
    SCLRP);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [47:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 concat_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME concat_intf, LAYERED_METADATA undef" *) input [47:0]CONCAT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ceconcat5_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ceconcat5_intf, POLARITY ACTIVE_LOW" *) input CECONCAT5;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 cec5_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME cec5_intf, POLARITY ACTIVE_LOW" *) input CEC5;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 cep_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME cep_intf, POLARITY ACTIVE_LOW" *) input CEP;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclrconcat_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclrconcat_intf, POLARITY ACTIVE_HIGH" *) input SCLRCONCAT;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclrc_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclrc_intf, POLARITY ACTIVE_HIGH" *) input SCLRC;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclrp_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclrp_intf, POLARITY ACTIVE_HIGH" *) input SCLRP;

  wire [47:0]C;
  wire CEC5;
  wire CECONCAT5;
  wire CEP;
  wire CLK;
  wire [47:0]CONCAT;
  wire [31:0]P;
  wire SCLRC;
  wire SCLRCONCAT;
  wire SCLRP;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "18" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "0" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "0" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "16" *) 
  (* C_HAS_CECONCAT = "16" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "1" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "1" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "2" *) 
  (* C_HAS_INDEP_SCLR = "1" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "1" *) 
  (* C_HAS_SCLRCONCAT = "1" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "1" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000000000010111100000000" *) 
  (* C_P_LSB = "16" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000000000000000010001100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  pg_freq_acc_32to40plus_xbip_dsp48_macro_v3_0_15 U0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C(C),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(1'b1),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(CEC5),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(CECONCAT5),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(CEP),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT(CONCAT),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(SCLRC),
        .SCLRCONCAT(SCLRCONCAT),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(SCLRP),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule

(* C_A_WIDTH = "18" *) (* C_B_WIDTH = "18" *) (* C_CONCAT_WIDTH = "48" *) 
(* C_CONSTANT_1 = "1" *) (* C_C_WIDTH = "48" *) (* C_D_WIDTH = "18" *) 
(* C_HAS_A = "0" *) (* C_HAS_ACIN = "0" *) (* C_HAS_ACOUT = "0" *) 
(* C_HAS_B = "0" *) (* C_HAS_BCIN = "0" *) (* C_HAS_BCOUT = "0" *) 
(* C_HAS_C = "1" *) (* C_HAS_CARRYCASCIN = "0" *) (* C_HAS_CARRYCASCOUT = "0" *) 
(* C_HAS_CARRYIN = "0" *) (* C_HAS_CARRYOUT = "0" *) (* C_HAS_CE = "1" *) 
(* C_HAS_CEA = "0" *) (* C_HAS_CEB = "0" *) (* C_HAS_CEC = "16" *) 
(* C_HAS_CECONCAT = "16" *) (* C_HAS_CED = "0" *) (* C_HAS_CEM = "0" *) 
(* C_HAS_CEP = "1" *) (* C_HAS_CESEL = "0" *) (* C_HAS_CONCAT = "1" *) 
(* C_HAS_D = "0" *) (* C_HAS_INDEP_CE = "2" *) (* C_HAS_INDEP_SCLR = "1" *) 
(* C_HAS_PCIN = "0" *) (* C_HAS_PCOUT = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SCLRA = "0" *) (* C_HAS_SCLRB = "0" *) (* C_HAS_SCLRC = "1" *) 
(* C_HAS_SCLRCONCAT = "1" *) (* C_HAS_SCLRD = "0" *) (* C_HAS_SCLRM = "0" *) 
(* C_HAS_SCLRP = "1" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "128" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000000000010111100000000" *) (* C_P_LSB = "16" *) 
(* C_P_MSB = "47" *) (* C_REG_CONFIG = "00000000000000000000000010001100" *) (* C_SEL_WIDTH = "0" *) 
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module pg_freq_acc_32to40plus_xbip_dsp48_macro_v3_0_15
   (CLK,
    CE,
    SCLR,
    SEL,
    CARRYCASCIN,
    CARRYIN,
    PCIN,
    ACIN,
    BCIN,
    A,
    B,
    C,
    D,
    CONCAT,
    ACOUT,
    BCOUT,
    CARRYOUT,
    CARRYCASCOUT,
    PCOUT,
    P,
    CED,
    CED1,
    CED2,
    CED3,
    CEA,
    CEA1,
    CEA2,
    CEA3,
    CEA4,
    CEB,
    CEB1,
    CEB2,
    CEB3,
    CEB4,
    CECONCAT,
    CECONCAT3,
    CECONCAT4,
    CECONCAT5,
    CEC,
    CEC1,
    CEC2,
    CEC3,
    CEC4,
    CEC5,
    CEM,
    CEP,
    CESEL,
    CESEL1,
    CESEL2,
    CESEL3,
    CESEL4,
    CESEL5,
    SCLRD,
    SCLRA,
    SCLRB,
    SCLRCONCAT,
    SCLRC,
    SCLRM,
    SCLRP,
    SCLRSEL);
  input CLK;
  input CE;
  input SCLR;
  input [0:0]SEL;
  input CARRYCASCIN;
  input CARRYIN;
  input [47:0]PCIN;
  input [29:0]ACIN;
  input [17:0]BCIN;
  input [17:0]A;
  input [17:0]B;
  input [47:0]C;
  input [17:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [31:0]P;
  input CED;
  input CED1;
  input CED2;
  input CED3;
  input CEA;
  input CEA1;
  input CEA2;
  input CEA3;
  input CEA4;
  input CEB;
  input CEB1;
  input CEB2;
  input CEB3;
  input CEB4;
  input CECONCAT;
  input CECONCAT3;
  input CECONCAT4;
  input CECONCAT5;
  input CEC;
  input CEC1;
  input CEC2;
  input CEC3;
  input CEC4;
  input CEC5;
  input CEM;
  input CEP;
  input CESEL;
  input CESEL1;
  input CESEL2;
  input CESEL3;
  input CESEL4;
  input CESEL5;
  input SCLRD;
  input SCLRA;
  input SCLRB;
  input SCLRCONCAT;
  input SCLRC;
  input SCLRM;
  input SCLRP;
  input SCLRSEL;

  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire [47:0]C;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYOUT;
  wire CEC5;
  wire CECONCAT5;
  wire CEP;
  wire CLK;
  wire [47:0]CONCAT;
  wire [31:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;
  wire SCLRC;
  wire SCLRCONCAT;
  wire SCLRP;

  (* C_A_WIDTH = "18" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "0" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "0" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "1" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "16" *) 
  (* C_HAS_CECONCAT = "16" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "1" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "1" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "2" *) 
  (* C_HAS_INDEP_SCLR = "1" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "1" *) 
  (* C_HAS_SCLRCONCAT = "1" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "1" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "128" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000000000010111100000000" *) 
  (* C_P_LSB = "16" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000000000000000010001100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  pg_freq_acc_32to40plus_xbip_dsp48_macro_v3_0_15_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN(ACIN),
        .ACOUT(ACOUT),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN(BCIN),
        .BCOUT(BCOUT),
        .C(C),
        .CARRYCASCIN(CARRYCASCIN),
        .CARRYCASCOUT(CARRYCASCOUT),
        .CARRYIN(1'b0),
        .CARRYOUT(CARRYOUT),
        .CE(1'b0),
        .CEA(1'b0),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEA3(1'b0),
        .CEA4(1'b0),
        .CEB(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEB3(1'b0),
        .CEB4(1'b0),
        .CEC(1'b0),
        .CEC1(1'b0),
        .CEC2(1'b0),
        .CEC3(1'b0),
        .CEC4(1'b0),
        .CEC5(CEC5),
        .CECONCAT(1'b0),
        .CECONCAT3(1'b0),
        .CECONCAT4(1'b0),
        .CECONCAT5(CECONCAT5),
        .CED(1'b0),
        .CED1(1'b0),
        .CED2(1'b0),
        .CED3(1'b0),
        .CEM(1'b0),
        .CEP(CEP),
        .CESEL(1'b0),
        .CESEL1(1'b0),
        .CESEL2(1'b0),
        .CESEL3(1'b0),
        .CESEL4(1'b0),
        .CESEL5(1'b0),
        .CLK(CLK),
        .CONCAT(CONCAT),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN(PCIN),
        .PCOUT(PCOUT),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(SCLRC),
        .SCLRCONCAT(SCLRCONCAT),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(SCLRP),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
nBlnHi3Kp5ztG6vZNdMONLkWpVVpg2r7ZP2rdZEfioM4XUkRew1oDSrAozd60ivTx8PLiOPPRAJo
pOZd0llK5g==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Kcs1MQe5BgqnN7tbrZMcEiZZSCl175bCFWu5jwqWj4RFDG/n9GjuiwAuZ9v2vQZcAxVE3h5w+TBc
Bk1lc9zc7T3tnbm4qpXepckPAqiTqMURQNO28XRRz5BSiTktDkY/dUGVSA0qxTdPGlkYZSpuFpl6
PjievZtLxEtp4cSEwJE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aG1w9h5Ae0N98iRQuCMUHQUwBA2KqP2Fbb/SCJOtosbKahOePVIWiIrkhbLMsr1/omYs/Q6fEj2G
uYHIEBLZLRANmjJt9kQu/jIzWAf0nK3OJkUCAMefyflw5y403PkpWIAHXqlArlaCVW2gWxzVxt9G
js0j3l7Y2dpahAMg2LgLgWyMj2rS0kjr+fbTwgci9As5Ndo6CDyXo7EcixOTvkWvqwxJaYFbtcFF
K1j0WC1jYCLSiEJ2ZB5/ODVnSmn3AWSksydgQ3iYMKpYPNlAwFN7t7HacZ95HxO8MGoNyjnDje35
EzrNZrAA4vUP8Y6En1JgkF6RLt8PJJfLc+wq+g==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BYWKn+AL7Gth8aEXuzL+rpOrNP6Ug8Hc9TpmOLZLrPZ4boPFPd89qpRHOY6mfox3M09mZK4TuSx+
5DykxgtH7Gu2DHCqtg3Tg7eFTAzurR/EqXoPhuHQIzs5Y1T/5WlIb0c4l9CNWdc5TBVfbmKR+x4N
A259tw/6q69OtmAqFiB+p9GY8lyjNDWu07DJlxI2l6wSRYy8YqD7K1OrLRXxY6gaTqDWDXlcO+ia
T5/harPHjTiNAFO8U6YTfRQtNJUrOnNfSAnAtjrlegYGNcEl6u4sqYE/X/Pajk2n+1+KvJ6PR8L9
bdrCByV81f1z88nc1Twl6LUe54VQdfe5W+EOpQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iJnLIMkUEl7Btn7IVUeqK6xbyk9c7fsISctkfj2c6osS1GvgHXWHkJPpNPHTeIth7zUvkUlYB/Jd
M5kNK3leJJj5TaqOLOh+cyWqEGY64EruHImVJasbLaVn3LUh67wEEMFoKhP9/KjqLsL3oFrKnU4i
JzYtVgZoCfaHBaIyRC6wms7z/YKP2Khya0dzmYHMmbdm9k2rL27fVLJcCEMSO1Dsz2D/qXnCFI8T
NHnM3Fv/xF2jOhtDIDqWGakvXk7l+ddg95MJ+5A578jqVX81M0WJwbHlaIJIG5uwIzTI46+pYw0Z
4sgDMkrl/aXSFYB5PU2L4hhVeq7e6c0dqUOVSw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sdiBszQspScY+UIwuaohSbs1PAZL6bemuOZlFLGklUXNsz7r1265PlclnSy9m0ilIWxY0HJkGEtl
Rs/zfRlF9Ag/CEiBQ4lStxiXa4cbOvNwkp9j1BXCYCAbMsw83x+ZvpyoQTXRfcBBvSAbtpFDJ7ar
qlJbO6erRjpDP373GIY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eUV1ae8Aw6l0UtyVDuKmrMQwdVI8vrJTYSKwNJ+/x3fs7qy5B2fVzNE8tFRcie7NykwBpJV9lQNN
iNNcReVBjS/oh7txKer0RVLuw2jQCeQBSixWXwdIra9CsrIF5V2GUuY3dDh9ofaqsgbKSlDNLzzm
0lHhjAw4Nbk9kwoo5NP9xZYaLPCNo4Qqi0A9Px++Zu3V7DcbPDDDQnNEzgQhcN8ilscDyGVOeiHu
/xJbo1lLkpyrDciztvHYqwj9O/kSyF1PikDg8xEaOx1QQVvaz7r51DlXlPCpqCUyFGEeiIrPCMHf
8rf7t9DpvBEVPF3eaofCDfiW9vWmbfgffwtMYg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
e2pEFpsig8ibSBH2RhPdIYRo9ztwB4QoFnv1Fj4HjhqWdhnrolz0AOrWrDAm/uIE4Cgcklo+6z7D
9vf2TTscp8cMxBEv5f7qR3LdhxogSVGm8Zp2npAgClkjg648K9NcNvRD42uQejBRtkkUOAFwW8Tv
q3pc6kZncWPsuzj3U5eW02hCVYml1hjmJ/1x5kDwtWqemsFr49wnPxAIaVwXR2TWtMRYc3Phmczi
8m7WC1Wjxpb1SCEu9fEIQRlP0BmvHYG91KfqSqz+z/aSGjtpXIuJyiOLNhx4s+IstopiMKAur9FP
qlD4VOOXoxrvsNfX3OS8D98tic1Mvz8DwmKSwg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zcfJKbuOhnOx/hJav1OVhUYPy+9XATnbTf2fMFkCAMlfdsJqI2s15ikpuoSVaknQhUCRNaXeIkoS
QrNdMAPluJdgP8TLTgwcHEARn7XURjpixv9KLYryqzBhRIvP8xJryOp/uRulB5RdRR4IWohoQNG/
392BtZV09CY06utUvdWjGd/wxD2t9uu96RVrUbp1x9uiBm7AcVhlzb6sSGFpsa0JlKBBJe10m5Tl
V7kvQEskHHlX4O3iXR9AHj3TtoP32tVSuikcbRJnide49xiqfQXmKWaJVTfX4JrMmIf1YWNC4yPh
pPEw1+QN5tGHO1kquGxJV59rhMngIFnfDMFkRw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9904)
`pragma protect data_block
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
O0J0Sw==
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
