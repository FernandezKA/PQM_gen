onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mult_16_14_opt

do {wave.do}

view wave
view structure
view signals

do {mult_16_14.udo}

run -all

quit -force
