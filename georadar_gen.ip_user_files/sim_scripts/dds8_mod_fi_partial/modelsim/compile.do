vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xbip_utils_v3_0_8
vlib modelsim_lib/msim/xbip_pipe_v3_0_4
vlib modelsim_lib/msim/xbip_bram18k_v3_0_4
vlib modelsim_lib/msim/mult_gen_v12_0_13
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib modelsim_lib/msim/xbip_dsp48_addsub_v3_0_4
vlib modelsim_lib/msim/xbip_dsp48_multadd_v3_0_4
vlib modelsim_lib/msim/xbip_multadd_v3_0_11

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap xbip_utils_v3_0_8 modelsim_lib/msim/xbip_utils_v3_0_8
vmap xbip_pipe_v3_0_4 modelsim_lib/msim/xbip_pipe_v3_0_4
vmap xbip_bram18k_v3_0_4 modelsim_lib/msim/xbip_bram18k_v3_0_4
vmap mult_gen_v12_0_13 modelsim_lib/msim/mult_gen_v12_0_13
vmap xbip_dsp48_wrapper_v3_0_4 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_4 modelsim_lib/msim/xbip_dsp48_addsub_v3_0_4
vmap xbip_dsp48_multadd_v3_0_4 modelsim_lib/msim/xbip_dsp48_multadd_v3_0_4
vmap xbip_multadd_v3_0_11 modelsim_lib/msim/xbip_multadd_v3_0_11

vlog -work xil_defaultlib -64 -incr -sv \
"D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_8 -64 -93 \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_4 -64 -93 \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_4 -64 -93 \
"../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_13 -64 -93 \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_4 -64 -93 \
"../../../ipstatic/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_4 -64 -93 \
"../../../ipstatic/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_multadd_v3_0_11 -64 -93 \
"../../../ipstatic/hdl/xbip_multadd_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../georadar_gen.srcs/dds8_mod_fi_partial/ip/dds8_mod_fi_partial/sim/dds8_mod_fi_partial.vhd" \


vlog -work xil_defaultlib \
"glbl.v"

