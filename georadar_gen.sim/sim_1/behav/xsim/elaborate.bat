@echo off
REM ****************************************************************************
REM Vivado (TM) v2017.4 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Sun May 01 17:33:37 +0300 2022
REM SW Build 2086221 on Fri Dec 15 20:55:39 MST 2017
REM
REM Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
call xelab  -wto 95103953055d4f4cb52ec79fb81001ed --incr --debug typical --relax --mt 2 -L xbip_utils_v3_0_8 -L xbip_pipe_v3_0_4 -L xbip_bram18k_v3_0_4 -L mult_gen_v12_0_13 -L xil_defaultlib -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_macro_v3_0_15 -L axi_utils_v2_0_4 -L xbip_dsp48_addsub_v3_0_4 -L xbip_dsp48_multadd_v3_0_4 -L dds_compiler_v6_0_15 -L xbip_multadd_v3_0_11 -L c_reg_fd_v12_0_4 -L xbip_addsub_v3_0_4 -L c_addsub_v12_0_11 -L xbip_dsp48_acc_v3_0_4 -L xbip_accum_v3_0_4 -L c_accum_v12_0_11 -L secureip -L xpm --snapshot Core_tb_behav xil_defaultlib.Core_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
