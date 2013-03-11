onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mp2_cpu/RESET_L
add wave -noupdate /mp2_cpu/START_H
add wave -noupdate /mp2_cpu/clk
add wave -noupdate /mp2_cpu/theDatapath/PCout
add wave -noupdate /mp2_cpu/theDatapath/ADDRESS
add wave -noupdate /mp2_cpu/MWRITEL_L
add wave -noupdate /mp2_cpu/MWRITEH_L
add wave -noupdate /mp2_cpu/MREAD_L
add wave -noupdate /mp2_cpu/DATAIN
add wave -noupdate /mp2_cpu/DATAOUT
add wave -noupdate -expand /mp2_cpu/theDatapath/aRegFile/RAM
add wave -noupdate /mp2_cpu/theDatapath/PCMuxSel
add wave -noupdate /mp2_cpu/theDatapath/PCMuxOut
add wave -noupdate /mp2_cpu/theDatapath/ADDRMux1Out
add wave -noupdate /mp2_cpu/theDatapath/ADDRMux2Out
add wave -noupdate /mp2_cpu/theDatapath/BRaddout
add wave -noupdate /mp2_cpu/theDatapath/ALUout
add wave -noupdate /mp2_cpu/theDatapath/SrcA
add wave -noupdate /mp2_cpu/theDatapath/SrcB
add wave -noupdate /mp2_cpu/theDatapath/destIR
add wave -noupdate /mp2_cpu/theDatapath/dest
add wave -noupdate /mp2_cpu/theDatapath/StoreMuxout
add wave -noupdate /mp2_cpu/theDatapath/StoreSR
add wave -noupdate /mp2_cpu/theDatapath/RFAout
add wave -noupdate /mp2_cpu/theDatapath/RFBout
add wave -noupdate /mp2_cpu/theDatapath/immout
add wave -noupdate /mp2_cpu/theDatapath/ALUMuxout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {20804 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 279
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
WaveRestoreZoom {20578 ns} {21710 ns}
