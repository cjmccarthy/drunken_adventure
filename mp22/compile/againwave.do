onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand /mp2_cpu/theDatapath/aRegFile/RAM
add wave -noupdate /mp2_cpu/theDatapath/clk
add wave -noupdate /mp2_cpu/theDatapath/PCout
add wave -noupdate /mp2_cpu/theDatapath/imm5
add wave -noupdate /mp2_cpu/theDatapath/imm5SEXT
add wave -noupdate /mp2_cpu/theDatapath/immout
add wave -noupdate /mp2_cpu/theDatapath/immMuxSel
add wave -noupdate /mp2_cpu/theDatapath/ALUMuxSel
add wave -noupdate /mp2_cpu/theDatapath/ALUMuxout
add wave -noupdate /mp2_cpu/theDatapath/RFAout
add wave -noupdate /mp2_cpu/theDatapath/RFMuxout
add wave -noupdate /mp2_cpu/theDatapath/RFMuxSel
add wave -noupdate /mp2_cpu/RegWrite
add wave -noupdate /mp2_cpu/theDatapath/ALUout
add wave -noupdate /mp2_cpu/theDatapath/StoreSR
add wave -noupdate /mp2_cpu/theDatapath/StoreMuxout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1490 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 268
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
WaveRestoreZoom {1432 ns} {1578 ns}
