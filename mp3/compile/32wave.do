onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal -childformat {{/mp3_cpu/aDATAPATH/MAIN_REG/RAM(7) -radix hexadecimal} {/mp3_cpu/aDATAPATH/MAIN_REG/RAM(6) -radix hexadecimal} {/mp3_cpu/aDATAPATH/MAIN_REG/RAM(5) -radix hexadecimal} {/mp3_cpu/aDATAPATH/MAIN_REG/RAM(4) -radix hexadecimal} {/mp3_cpu/aDATAPATH/MAIN_REG/RAM(3) -radix hexadecimal} {/mp3_cpu/aDATAPATH/MAIN_REG/RAM(2) -radix hexadecimal} {/mp3_cpu/aDATAPATH/MAIN_REG/RAM(1) -radix hexadecimal} {/mp3_cpu/aDATAPATH/MAIN_REG/RAM(0) -radix hexadecimal}} -expand -subitemconfig {/mp3_cpu/aDATAPATH/MAIN_REG/RAM(7) {-height 16 -radix hexadecimal} /mp3_cpu/aDATAPATH/MAIN_REG/RAM(6) {-height 16 -radix hexadecimal} /mp3_cpu/aDATAPATH/MAIN_REG/RAM(5) {-height 16 -radix hexadecimal} /mp3_cpu/aDATAPATH/MAIN_REG/RAM(4) {-height 16 -radix hexadecimal} /mp3_cpu/aDATAPATH/MAIN_REG/RAM(3) {-height 16 -radix hexadecimal} /mp3_cpu/aDATAPATH/MAIN_REG/RAM(2) {-height 16 -radix hexadecimal} /mp3_cpu/aDATAPATH/MAIN_REG/RAM(1) {-height 16 -radix hexadecimal} /mp3_cpu/aDATAPATH/MAIN_REG/RAM(0) {-height 16 -radix hexadecimal}} /mp3_cpu/aDATAPATH/MAIN_REG/RAM
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/BRsel
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/CLK
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/EXEC_ADDR_MEM
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/I_DATAIN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/I_MRESP_H
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/RESET_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/STALL_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/IR_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/I_ADDR
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/I_MREAD_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/PC_PLUS2
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/B
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/F
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/PC_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aFETCH/PC_PLUS2_internal
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/CLK
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/DR_MEM_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/D_MDATAIN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/D_MRESP_H
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/EXEC_ADDR_MEM
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/MEM_ALU_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/MEM_CC_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/MEM_CONTROL_WORD_IN
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/MEM_PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/RESET_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/STALL_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/BRsel
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/DR_MEM_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/D_MADDR
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/D_MDATAOUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/D_MREAD_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/D_MWRITEH_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/D_MWRITEL_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/MDROUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/MEM_ALU_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/MEM_CONTROL_WORD_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/M_PC_OUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/BRen
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/MDRMUXSel
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/MEM_READ_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/MEM_WRITEH_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/MEM_WRITEL_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aDATAPATH/aMEM_ACCESS/MDROUT_internal
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/Way0/Data
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/Way1/Data
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/Address
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/DDATAOUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/DPMDATAIN
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/DPMREAD_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/DPMRESP_H
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/DPMWRITE_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/DREAD_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/DWRITEH_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/DWRITEL_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/RESET_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/WBSEL
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/CacheHit
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/CacheMiss
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/DDatain
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/DPMADDRESS
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/DPMDATAOUT
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/DRESP_H
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/WriteBack
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/BITin2
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/BITout
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/CacheData
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/D0out
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/D1out
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/DATAWrite
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/DSel
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/DW0
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/DW1
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/Data0
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/Data1
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/DataIn
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/DirtyIn
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/F
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/F1
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/F2
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/F3
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/Hit0
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/Hit1
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/INDEX
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/LRUout
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/OFFSET
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/OUTADDRESS
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/OUTADDRESS1
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/PWL_Delay
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/RetOWord
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/Tag
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/Tag0out
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/Tag1out
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/TagSynched
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/V0Out
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/V1Out
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/WH_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/WL_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/WRESP
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/WRESP_DLY
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/WSel_Out
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/CacheHit_internal
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1DCache/WriteBack_internal
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1ICache/Address
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1ICache/IREAD_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1ICache/PMDATAIN
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1ICache/PMRESP_H
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1ICache/Reset_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1ICache/CacheHit
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1ICache/CacheMiss
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1ICache/IRESP_H
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1ICache/I_DATAIN
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1ICache/iData/Data
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1ICache/CacheData
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1ICache/DataOut
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1ICache/Hit
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1ICache/Index
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1ICache/Offset
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1ICache/Tag
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1ICache/TagOut
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1ICache/TagSynch
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1ICache/ValidOut
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aL1ICache/CacheHit_internal
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/DCacheHit
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/DPMADDR
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/DPMRead_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/DPMWrite_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/DRead_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/DWriteH_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/DWriteL_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/ICacheHit
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/IPMADDR
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/IPMRead_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/IRead_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/MResp_H
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/RESET_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/DPResp_H
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/IB_out
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/IPResp_H
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/MADDR
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/MREAD_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/MWrite_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/M_STALL_L
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/M_Stall
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/NOT_M_STALL
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/DB_out
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/F
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/F1
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/F2
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/F3
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/F4
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/F5
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/IB_out_internal
add wave -noupdate -radix hexadecimal /mp3_cpu/aMainMem/aArbiter/M_Stall_internal
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {602 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 326
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
WaveRestoreZoom {11526 ns} {12399 ns}
