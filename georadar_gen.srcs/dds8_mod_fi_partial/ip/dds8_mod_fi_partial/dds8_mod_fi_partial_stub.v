// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun May  1 16:11:54 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/dev/FPGA/PQM_gen/georadar_gen.srcs/dds8_mod_fi_partial/ip/dds8_mod_fi_partial/dds8_mod_fi_partial_stub.v
// Design      : dds8_mod_fi_partial
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xbip_multadd_v3_0_11,Vivado 2017.4" *)
module dds8_mod_fi_partial(CLK, CE, SCLR, A, B, C, SUBTRACT, P, PCOUT)
/* synthesis syn_black_box black_box_pad_pin="CLK,CE,SCLR,A[31:0],B[3:0],C[31:0],SUBTRACT,P[31:0],PCOUT[47:0]" */;
  input CLK;
  input CE;
  input SCLR;
  input [31:0]A;
  input [3:0]B;
  input [31:0]C;
  input SUBTRACT;
  output [31:0]P;
  output [47:0]PCOUT;
endmodule
