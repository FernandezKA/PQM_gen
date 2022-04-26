// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr 23 16:31:12 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/dev/FPGA/PQM_gen/georadar_gen/IP/pg_freq_acc_32to40plus/pg_freq_acc_32to40plus_stub.v
// Design      : pg_freq_acc_32to40plus
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xbip_dsp48_macro_v3_0_15,Vivado 2017.4" *)
module pg_freq_acc_32to40plus(CLK, C, CONCAT, P, CECONCAT5, CEC5, CEP, SCLRCONCAT, 
  SCLRC, SCLRP)
/* synthesis syn_black_box black_box_pad_pin="CLK,C[47:0],CONCAT[47:0],P[31:0],CECONCAT5,CEC5,CEP,SCLRCONCAT,SCLRC,SCLRP" */;
  input CLK;
  input [47:0]C;
  input [47:0]CONCAT;
  output [31:0]P;
  input CECONCAT5;
  input CEC5;
  input CEP;
  input SCLRCONCAT;
  input SCLRC;
  input SCLRP;
endmodule
