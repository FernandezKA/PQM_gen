// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun May  1 16:11:48 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pg_freq_acc_32to40plus_sim_netlist.v
// Design      : pg_freq_acc_32to40plus
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pg_freq_acc_32to40plus,xbip_dsp48_macro_v3_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_15,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_dsp48_macro_v3_0_15 U0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_dsp48_macro_v3_0_15
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_dsp48_macro_v3_0_15_viv i_synth
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
jmxixojprJ8g8QcB+9eFZATyOhR9cLzJ1W/J8grr01mjTpVL+qPA2aKv1MglVaMiGg7xp1cYPcBf
EjeYK4qOxNYYNwZwSHO6OjLLaABZO72Cjdqpm2Y1zqRL5hjBr7P46LNVcAgAZJbKLZ6vMR6UhRVz
LTk4pQD92hgcUS4E2PgXokk6iS3/P+HRYqk6tlo2PwGId2aTXKhqmax5ivfCiz4EsKr8aqRgmcL1
rr9yNdaBlsUadVBksEdtwq4zDpaf0Jx7ddYZVF5Q7iO+6x9e2T7myip+Pd28PlQ2PTzYxeq5wNnh
BrKTHLcqvlPDvFV8uGuaUibkPd9il7Z7rIAuGQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lST8sc5Se20m0Zecew5mxfaLyuBiaCKq/UmZBs+62MMyg7do9ObvuqN458JR+smEabC9g7chsHLo
43Uf8deN7tuZYh9fuJ2OBtQKKtRIumStH1SYOgZXHSnZegIgCWP67t3BjnzmTsaXVtrkBNTfV5GG
UCIPmhPbGL943VG7bFVk/I+Kpe/tM+eqJUvxlTpLA5dbw3JoamBkD1dMAUceU6fHyCuFYmiUUip7
hJ+rf4GAc1vHsD6zXH5UIHSffnoEkkb7OG2QZGfEWLI5DKVtN2/6IkDq9770oV120vmQqMCcr1TA
1UjTyhEuiEfbo1NtO2QxOSVjLhhEUhvGbGo3DQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9904)
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
