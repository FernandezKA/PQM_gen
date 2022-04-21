-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Thu Apr 21 18:19:13 2022
-- Host        : FERNANDEZKA-NB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub c:/dev/FPGA/PQM_gen/mult_14_14/mult_14_14_stub.vhdl
-- Design      : mult_14_14
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mult_14_14 is
  Port ( 
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 13 downto 0 );
    B : in STD_LOGIC_VECTOR ( 13 downto 0 );
    P : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );

end mult_14_14;

architecture stub of mult_14_14 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,A[13:0],B[13:0],P[13:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mult_gen_v12_0_17,Vivado 2021.2";
begin
end;
