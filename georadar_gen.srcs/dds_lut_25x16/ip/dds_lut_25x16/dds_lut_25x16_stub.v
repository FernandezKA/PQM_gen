// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun May  1 16:11:57 2022
// Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/dev/FPGA/PQM_gen/georadar_gen.srcs/dds_lut_25x16/ip/dds_lut_25x16/dds_lut_25x16_stub.v
// Design      : dds_lut_25x16
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dds_compiler_v6_0_15,Vivado 2017.4" *)
module dds_lut_25x16(aclk, aresetn, s_axis_phase_tvalid, 
  s_axis_phase_tdata, m_axis_data_tvalid, m_axis_data_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_phase_tvalid,s_axis_phase_tdata[31:0],m_axis_data_tvalid,m_axis_data_tdata[31:0]" */;
  input aclk;
  input aresetn;
  input s_axis_phase_tvalid;
  input [31:0]s_axis_phase_tdata;
  output m_axis_data_tvalid;
  output [31:0]m_axis_data_tdata;
endmodule
