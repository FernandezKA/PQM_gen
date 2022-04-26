// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Apr 23 16:33:17 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top dds8_mod_group_accum -prefix
//               dds8_mod_group_accum_ dds8_mod_group_accum_stub.v
// Design      : dds8_mod_group_accum
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_accum_v12_0_11,Vivado 2017.4" *)
module dds8_mod_group_accum(B, CLK, SCLR, Q)
/* synthesis syn_black_box black_box_pad_pin="B[34:0],CLK,SCLR,Q[47:0]" */;
  input [34:0]B;
  input CLK;
  input SCLR;
  output [47:0]Q;
endmodule
