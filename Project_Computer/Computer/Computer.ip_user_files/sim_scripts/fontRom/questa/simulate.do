onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fontRom_opt

do {wave.do}

view wave
view structure
view signals

do {fontRom.udo}

run -all

quit -force
