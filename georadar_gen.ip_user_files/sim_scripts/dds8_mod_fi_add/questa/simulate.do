onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dds8_mod_fi_add_opt

do {wave.do}

view wave
view structure
view signals

do {dds8_mod_fi_add.udo}

run -all

quit -force
