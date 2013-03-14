onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/CLK
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/IR_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/I_ADDR
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/I_DATAIN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/I_MREAD_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/I_MRESP_H
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/PCMUXSel
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/PC_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/RESET_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/STALL_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH_DECODE_LATCH/CLK
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH_DECODE_LATCH/Decode_PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH_DECODE_LATCH/IR_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH_DECODE_LATCH/IR_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH_DECODE_LATCH/I_ADDR
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH_DECODE_LATCH/RESET_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH_DECODE_LATCH/STALL_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE/CINDEX
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE/CLK
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE/CONTROL_WORD
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE/CONTROL_WORD_internal
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE/DR_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE/Decode_PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE/DEC_PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE/IR11down
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE/IR5down
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE/IR6down
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE/IR9down
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE/IR_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE/RESET_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE/SR1MUXSel
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE/SR1_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE/SR2MUXSel
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE/SR2_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE/STALL_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE/offset11_F
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE/offset5_F
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE/offset5_SEXT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE/offset5_SEXT_internal
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE/offset6_F
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE/offset9_F
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE_EXECUTE_LATCH/CLK
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE_EXECUTE_LATCH/CONTROL_WORD
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE_EXECUTE_LATCH/DECODE_PC_PLUS2_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE_EXECUTE_LATCH/DEC_PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE_EXECUTE_LATCH/DR_EXECUTE_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE_EXECUTE_LATCH/DR_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE_EXECUTE_LATCH/EXECUTE_CONTROL_WORD_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE_EXECUTE_LATCH/EXECUTE_PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE_EXECUTE_LATCH/EXECUTE_PC_PLUS2_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE_EXECUTE_LATCH/RESET_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE_EXECUTE_LATCH/SR1
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE_EXECUTE_LATCH/SR1_F
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE_EXECUTE_LATCH/SR2
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE_EXECUTE_LATCH/SR2_F
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE_EXECUTE_LATCH/STALL_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE_EXECUTE_LATCH/offset11
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE_EXECUTE_LATCH/offset11_F
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE_EXECUTE_LATCH/offset5
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE_EXECUTE_LATCH/offset5_F
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE_EXECUTE_LATCH/offset6
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE_EXECUTE_LATCH/offset6_F
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE_EXECUTE_LATCH/offset9
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aDECODE_EXECUTE_LATCH/offset9_F
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE/CLK
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE/ADDR1MUXSel
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE/ADDR1MUX_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE/ADDR2MUXSel
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE/ADDR2MUX_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE/ALUOP
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE/ALU_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE/DR_EXECUTE_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE/DR_EXECUTE_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE/EXECUTE_CONTROL_WORD_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE/EXECUTE_CONTROL_WORD_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE/EXECUTE_PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE/EXECUTE_PC_PLUS2_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE/EXEC_ADDR
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE/EX_PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE/PCMUXSel
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE/RESET_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE/SR1
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE/SR2
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE/STALL_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE/offset11
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE/offset5
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE/offset6
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE/offset9
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE_MEM_LATCH/CLK
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE_MEM_LATCH/ALU_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE_MEM_LATCH/DR_EXECUTE_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE_MEM_LATCH/DR_MEM_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE_MEM_LATCH/EXECUTE_CONTROL_WORD_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE_MEM_LATCH/EXEC_ADDR
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE_MEM_LATCH/EXEC_ADDR_MEM
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE_MEM_LATCH/EX_PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE_MEM_LATCH/MEM_ALU_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE_MEM_LATCH/MEM_CONTROL_WORD_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE_MEM_LATCH/MEM_PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE_MEM_LATCH/RESET_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aEXECUTE_MEM_LATCH/STALL_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/CLK
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/ALU_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/DR_MEM_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/DR_MEM_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/D_MADDR
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/D_MDATAIN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/D_MDATAOUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/D_MREAD_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/D_MRESP_H
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/D_MWRITEH_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/D_MWRITEL_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/EXEC_ADDR_MEM
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/LD_MAR
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/LD_MDR
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/MDRMUXSel
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/MDRMUX_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/MDROUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/MDROUT_internal
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/MEM_ALU_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/MEM_ALU_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/MEM_CONTROL_WORD_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/MEM_CONTROL_WORD_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/MEM_PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/MEM_READ_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/MEM_WRITEH_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/MEM_WRITEL_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/M_PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/RESET_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/STALL_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_WRITEBACK_LATCH/CLK
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_WRITEBACK_LATCH/DR_MEM_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_WRITEBACK_LATCH/DR_WB_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_WRITEBACK_LATCH/MDROUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_WRITEBACK_LATCH/MEM_ALU_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_WRITEBACK_LATCH/MEM_CONTROL_WORD_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_WRITEBACK_LATCH/M_PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_WRITEBACK_LATCH/RESET_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_WRITEBACK_LATCH/STALL_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_WRITEBACK_LATCH/WB_ALU_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_WRITEBACK_LATCH/WB_CONTROL_WORD_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_WRITEBACK_LATCH/WB_MDR_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_WRITEBACK_LATCH/WB_PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aWRITEBACK/CLK
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aWRITEBACK/DR
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aWRITEBACK/DR_WB_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aWRITEBACK/LD_REG
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aWRITEBACK/RESET_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aWRITEBACK/STALL_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aWRITEBACK/WB_ALU_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aWRITEBACK/WB_CONTROL_WORD_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aWRITEBACK/WB_MDR_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aWRITEBACK/WB_PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aWRITEBACK/WDATA
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aWRITEBACK/WDATAMUXSel
add wave -noupdate -radix hexadecimal -childformat {{/mp3_cpu/aDATAPATH/MAIN_REG/RAM(7) -radix hexadecimal} {/mp3_cpu/aDATAPATH/MAIN_REG/RAM(6) -radix hexadecimal} {/mp3_cpu/aDATAPATH/MAIN_REG/RAM(5) -radix hexadecimal} {/mp3_cpu/aDATAPATH/MAIN_REG/RAM(4) -radix hexadecimal} {/mp3_cpu/aDATAPATH/MAIN_REG/RAM(3) -radix hexadecimal} {/mp3_cpu/aDATAPATH/MAIN_REG/RAM(2) -radix hexadecimal} {/mp3_cpu/aDATAPATH/MAIN_REG/RAM(1) -radix hexadecimal} {/mp3_cpu/aDATAPATH/MAIN_REG/RAM(0) -radix hexadecimal}} -expand -subitemconfig {/mp3_cpu/aDATAPATH/MAIN_REG/RAM(7) {-height 16 -radix hexadecimal} /mp3_cpu/aDATAPATH/MAIN_REG/RAM(6) {-height 16 -radix hexadecimal} /mp3_cpu/aDATAPATH/MAIN_REG/RAM(5) {-height 16 -radix hexadecimal} /mp3_cpu/aDATAPATH/MAIN_REG/RAM(4) {-height 16 -radix hexadecimal} /mp3_cpu/aDATAPATH/MAIN_REG/RAM(3) {-height 16 -radix hexadecimal} /mp3_cpu/aDATAPATH/MAIN_REG/RAM(2) {-height 16 -radix hexadecimal} /mp3_cpu/aDATAPATH/MAIN_REG/RAM(1) {-height 16 -radix hexadecimal} /mp3_cpu/aDATAPATH/MAIN_REG/RAM(0) {-height 16 -radix hexadecimal}} /mp3_cpu/aDATAPATH/MAIN_REG/RAM
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {11738 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 471
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
WaveRestoreZoom {0 ns} {768 ns}
