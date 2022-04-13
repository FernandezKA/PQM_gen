-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Tue Apr  5 13:00:25 2022
-- Host        : LAPTOP-BMFJ4HEG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/dev/FPGA/PQM_gen/pg_freq_acc_32to40plus/pg_freq_acc_32to40plus_stub.vhdl
-- Design      : pg_freq_acc_32to40plus
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pg_freq_acc_32to40plus is
  Port ( 
    CLK : in STD_LOGIC;
    C : in STD_LOGIC_VECTOR ( 47 downto 0 );
    CONCAT : in STD_LOGIC_VECTOR ( 47 downto 0 );
    P : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CECONCAT5 : in STD_LOGIC;
    CEC5 : in STD_LOGIC;
    CEP : in STD_LOGIC;
    SCLRCONCAT : in STD_LOGIC;
    SCLRC : in STD_LOGIC;
    SCLRP : in STD_LOGIC
  );

end pg_freq_acc_32to40plus;

architecture stub of pg_freq_acc_32to40plus is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,C[47:0],CONCAT[47:0],P[31:0],CECONCAT5,CEC5,CEP,SCLRCONCAT,SCLRC,SCLRP";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dsp_macro_v1_0_2,Vivado 2021.2";
begin
end;
