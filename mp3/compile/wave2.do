onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/CLK
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/D_MDATAIN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/D_MRESP_H
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/I_DATAIN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/I_MRESP_H
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/RESET_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/STALL_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/D_MADDR
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/D_MDATAOUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/D_MREAD_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/D_MWRITEH_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/D_MWRITEL_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/I_ADDR
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/I_MREAD_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/ALU_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/BRsel
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/CCout
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/CONTROL_WORD
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/DECODE_PC_PLUS2
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/DECODE_PC_PLUS2_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/DEC_PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/DR
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/DR_EXECUTE_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/DR_EXECUTE_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/DR_MEM_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/DR_MEM_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/DR_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/DR_WB_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/Decode_PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/EXECUTE_CONTROL_WORD_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/EXECUTE_CONTROL_WORD_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/EXECUTE_PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/EXECUTE_PC_PLUS2_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/EXEC_ADDR
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/EXEC_ADDR_MEM
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/EX_PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/IR_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/IR_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/LD_REG
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/MDROUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/MEM_ALU_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/MEM_ALU_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/MEM_CC_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/MEM_CONTROL_WORD_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/MEM_CONTROL_WORD_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/MEM_PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/M_PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/PC_PLUS2
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/SR1
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/SR1MUXSel
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/SR1MUX_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/SR1_F
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/SR1_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/SR2
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/SR2MUXSel
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/SR2MUX_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/SR2_F
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/SR2_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/SR2_OUT_MUXSel
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/SR2_R
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/WB_ALU_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/WB_CONTROL_WORD_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/WB_MDR_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/WB_PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/WDATA
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/offset11
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/offset11_F
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/offset5
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/offset5_F
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/offset5_SEXT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/offset6
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/offset6_F
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/offset9
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/offset9_F
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/I_ADDR_internal
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {207 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {1 us}
