onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib dds_lut_25x16_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {dds_lut_25x16.udo}

run -all

quit -force
