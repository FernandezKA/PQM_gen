onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dds8_mod_group_accum_opt

do {wave.do}

view wave
view structure
view signals

do {dds8_mod_group_accum.udo}

run -all

quit -force
