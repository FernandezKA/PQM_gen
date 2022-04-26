onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+pg_freq_acc_32to40plus -L xil_defaultlib -L xpm -L xbip_dsp48_wrapper_v3_0_4 -L xbip_utils_v3_0_8 -L xbip_pipe_v3_0_4 -L xbip_dsp48_macro_v3_0_15 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.pg_freq_acc_32to40plus xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {pg_freq_acc_32to40plus.udo}

run -all

endsim

quit -force
