onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /test_cpu/IRmem
add wave -noupdate -radix hexadecimal -childformat {{{/test_cpu/Expectedmem[31]} -radix hexadecimal} {{/test_cpu/Expectedmem[30]} -radix hexadecimal} {{/test_cpu/Expectedmem[29]} -radix hexadecimal} {{/test_cpu/Expectedmem[28]} -radix hexadecimal} {{/test_cpu/Expectedmem[27]} -radix hexadecimal} {{/test_cpu/Expectedmem[26]} -radix hexadecimal} {{/test_cpu/Expectedmem[25]} -radix hexadecimal} {{/test_cpu/Expectedmem[24]} -radix hexadecimal} {{/test_cpu/Expectedmem[23]} -radix hexadecimal} {{/test_cpu/Expectedmem[22]} -radix hexadecimal} {{/test_cpu/Expectedmem[21]} -radix hexadecimal} {{/test_cpu/Expectedmem[20]} -radix hexadecimal} {{/test_cpu/Expectedmem[19]} -radix hexadecimal} {{/test_cpu/Expectedmem[18]} -radix hexadecimal} {{/test_cpu/Expectedmem[17]} -radix hexadecimal} {{/test_cpu/Expectedmem[16]} -radix hexadecimal} {{/test_cpu/Expectedmem[15]} -radix hexadecimal} {{/test_cpu/Expectedmem[14]} -radix hexadecimal} {{/test_cpu/Expectedmem[13]} -radix hexadecimal} {{/test_cpu/Expectedmem[12]} -radix hexadecimal} {{/test_cpu/Expectedmem[11]} -radix hexadecimal} {{/test_cpu/Expectedmem[10]} -radix hexadecimal} {{/test_cpu/Expectedmem[9]} -radix hexadecimal} {{/test_cpu/Expectedmem[8]} -radix hexadecimal} {{/test_cpu/Expectedmem[7]} -radix hexadecimal} {{/test_cpu/Expectedmem[6]} -radix hexadecimal} {{/test_cpu/Expectedmem[5]} -radix hexadecimal} {{/test_cpu/Expectedmem[4]} -radix hexadecimal} {{/test_cpu/Expectedmem[3]} -radix hexadecimal} {{/test_cpu/Expectedmem[2]} -radix binary} {{/test_cpu/Expectedmem[1]} -radix binary} {{/test_cpu/Expectedmem[0]} -radix hexadecimal}} -subitemconfig {{/test_cpu/Expectedmem[31]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[30]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[29]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[28]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[27]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[26]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[25]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[24]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[23]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[22]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[21]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[20]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[19]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[18]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[17]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[16]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[15]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[14]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[13]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[12]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[11]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[10]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[9]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[8]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[7]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[6]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[5]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[4]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[3]} {-height 15 -radix hexadecimal} {/test_cpu/Expectedmem[2]} {-height 15 -radix binary} {/test_cpu/Expectedmem[1]} {-height 15 -radix binary} {/test_cpu/Expectedmem[0]} {-height 15 -radix hexadecimal}} /test_cpu/Expectedmem
add wave -noupdate -radix hexadecimal /test_cpu/clk
add wave -noupdate -radix hexadecimal /test_cpu/rst
add wave -noupdate -radix hexadecimal /test_cpu/inst
add wave -noupdate -radix unsigned /test_cpu/pc
add wave -noupdate -radix decimal /test_cpu/acc
add wave -noupdate -radix decimal /test_cpu/expACC
add wave -noupdate -radix unsigned /test_cpu/dut/controller/current_st
add wave -noupdate -radix unsigned /test_cpu/dut/controller/next_st
add wave -noupdate -radix hexadecimal /test_cpu/dut/controller/LoadAcc
add wave -noupdate -radix hexadecimal /test_cpu/dut/controller/LoadIR
add wave -noupdate -radix hexadecimal /test_cpu/dut/ir/I_out
add wave -noupdate -radix symbolic /test_cpu/dut/controller/Opcode
add wave -noupdate -radix hexadecimal /test_cpu/dut/accu/cin
add wave -noupdate -radix hexadecimal /test_cpu/dut/accu/zin
add wave -noupdate -radix hexadecimal /test_cpu/dut/accu/cout
add wave -noupdate -radix hexadecimal /test_cpu/dut/accu/zout
add wave -noupdate -radix hexadecimal /test_cpu/dut/accu/coutReg
add wave -noupdate -radix hexadecimal /test_cpu/dut/accu/zoutReg
add wave -noupdate -radix hexadecimal /test_cpu/dut/alu/a
add wave -noupdate -radix hexadecimal /test_cpu/dut/alu/b
add wave -noupdate -radix hexadecimal /test_cpu/dut/alu/ALU_sel
add wave -noupdate -radix hexadecimal /test_cpu/dut/alu/load_shift
add wave -noupdate -radix hexadecimal /test_cpu/dut/alu/result
add wave -noupdate -radix hexadecimal /test_cpu/dut/alu/cout
add wave -noupdate -radix hexadecimal /test_cpu/dut/alu/zout
add wave -noupdate -radix hexadecimal /test_cpu/dut/rf/reg_out
add wave -noupdate -radix hexadecimal /test_cpu/dut/rf/reg_in
add wave -noupdate -radix hexadecimal /test_cpu/dut/rf/RegAddr
add wave -noupdate -radix hexadecimal /test_cpu/dut/rf/LoadReg
add wave -noupdate /test_cpu/clk
add wave -noupdate /test_cpu/rst
add wave -noupdate /test_cpu/inst
add wave -noupdate /test_cpu/pc
add wave -noupdate -radix unsigned /test_cpu/acc
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {45668 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 211
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {525 ns}
