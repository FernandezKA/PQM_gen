onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dds_lut_25x16_opt

do {wave.do}

view wave
view structure
view signals

do {dds_lut_25x16.udo}

run -all

quit -force
