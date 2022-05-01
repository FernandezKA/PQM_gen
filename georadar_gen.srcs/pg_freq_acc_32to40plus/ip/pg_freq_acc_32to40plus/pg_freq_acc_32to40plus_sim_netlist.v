// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun May  1 16:11:49 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/dev/FPGA/PQM_gen/georadar_gen.srcs/pg_freq_acc_32to40plus/ip/pg_freq_acc_32to40plus/pg_freq_acc_32to40plus_sim_netlist.v
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
XxJWpbEpVC4YsdkVh3KCXf1Li11dLq1fyr+WV8oIhmTP6sW9ZmiJ5ml/4fq75WNB8dHCJUNstcAo
oMMrqK2pbZ4+PCNZk1zJ2hbk6T5yfdBuZa6APhZk/gJGsR6AM1EHm5rs8BMn0felxwdU6Wow056q
YdNAGFAeMtmdVsynXHUm4aVEl633Lf9gXchbDyeaPxTgbOE3Cv3Akxysq51FVIu25fpOg+BZS+Fo
YKyqMt/gnGNTj3FzHRyG0Fn765M+p43mphq6ozYPpl9a9QcnhghZhBffnz0nkBg0J8hnBGyZdHVk
otfxcLdcOnk0OMgBg2nOd2+ecqdpjj/8DJK39A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vC7MKivaVF8JvcEDXxZD3qIr1WOmHQ6ElY8SLX9m3rEkk+u5rmkDdwz/MwgUwe/Lua9YoMLjypZO
kh23vn2Xb/+YasoJmgfOH4ao+UOmDCoBWXIZIc8hwCM0irG3OmPLyRrtV0oVGz/ZIoQmtXNlNEL0
LIhBWAd4keDOyhtXlZh3hnMsX1/rUD7c+UYV7IkH7S2cSOvYT6sVRkt0fo611ZvIDhQiPd91ocgG
ekXW95cy5bY8UIM0MYaUy27k7pbGSNMvjGmLtOyvkN8c/GS6pnw6Bj6YGVChgK2S+QjJbpmDjHjY
r9suqju79/nlxU2Wa2wIn+r2/7nGtoCYJ1JTUA==

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
