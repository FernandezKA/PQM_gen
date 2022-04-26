// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr 23 16:31:11 2022
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
