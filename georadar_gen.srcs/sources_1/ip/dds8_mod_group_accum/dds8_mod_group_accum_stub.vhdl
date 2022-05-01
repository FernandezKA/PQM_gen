-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sun May  1 16:11:45 2022
-- Host        : FERNANDEZKA-DT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/dev/FPGA/PQM_gen/georadar_gen.srcs/sources_1/ip/dds8_mod_group_accum/dds8_mod_group_accum_stub.vhdl
-- Design      : dds8_mod_group_accum
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dds8_mod_group_accum is
  Port ( 
    B : in STD_LOGIC_VECTOR ( 34 downto 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );

end dds8_mod_group_accum;

architecture stub of dds8_mod_group_accum is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "B[34:0],CLK,SCLR,Q[47:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_accum_v12_0_11,Vivado 2017.4";
begin
end;
