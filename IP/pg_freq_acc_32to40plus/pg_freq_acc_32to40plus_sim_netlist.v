// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr 23 16:31:12 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/dev/FPGA/PQM_gen/georadar_gen/IP/pg_freq_acc_32to40plus/pg_freq_acc_32to40plus_sim_netlist.v
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
(* ORIG_REF_NAME = "xbip_dsp48_macro_v3_0_15" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
NzwA4udIMOkHu0kk9F2QkEthxsK8rYcoPXiYGy+3dLo+N9wK2tPunGU9Ky58Po+YvtyYk1Ap7Mpe
85BzV54h/PihZz4/14kZz4SojxJqUoP6AEKL4Ws90lUH+oICvYvpACXp/0O7ZHuM6wqDPmGsTB5z
hA4FMwVPnhnUbZ6cjB3hLUrpSpSeCHmVLXbBiir+Oy3u126rPeeTE7dIkFaULapqd2vgfyJO/Tww
3THnIi/R5qRUQBo8iTMHwBQsmjWMh+KphVwzxpNcbrLqZJ+WC8DJcfM//bxzT84Zyl+JbmAULE+t
wtgNVTDoa9LG4VZw4/XSsQ1iIw/rG7v3FzOgnQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vmNgBztC+T17IM+tylnoTAMk5WLyHDwjA3ZE7/51V3s4DMXGHNvSfqSlwAkubOlCLPvqTlsyvT4N
oxt9XgnfuWSMn3zk2Y5DAkDHpvAyma45y1iutrJDxI93fdms6z17kuziBmMkVMYXKQLv31TJZbaG
NBu7n6QLzocuHdC8Fi2LEo5JprQ2Yr2UXHWpx3It/zT+UZy4wR01M87m4cqimoTJYQ3fWCCq2TjC
sR855x0K01JEoYchfVkwfGcbpcifwU3N8bqXsLMAmWDmkEnRXXc56FcPngqkN2LDWZ2FLo3l0shE
3NyzOX/xzFsRrkcg/aiiB3gbqsFWkmNI8LRr3A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9968)
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
