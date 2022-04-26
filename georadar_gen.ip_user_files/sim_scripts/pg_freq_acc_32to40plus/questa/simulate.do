onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib pg_freq_acc_32to40plus_opt

do {wave.do}

view wave
view structure
view signals

do {pg_freq_acc_32to40plus.udo}

run -all

quit -force
