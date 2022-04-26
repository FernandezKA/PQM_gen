onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mult_14_14_opt

do {wave.do}

view wave
view structure
view signals

do {mult_14_14.udo}

run -all

quit -force
