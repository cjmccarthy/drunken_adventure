echo "--- Executing initialization force file for ../testcode/mp1test.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
force /stall_l 1 @0
echo "Initializing the processor."
--force /start_h 0 @0
--force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
--force /start_h 0 @ 100

echo "Done initializing processor, loading ../testcode/mp1test.asm program code."
run 5
change /mp3_cpu/aMagicMem/vhdl_memory/mem(0) X"11"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(1) X"62"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(2) X"12"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(3) X"64"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(4) X"13"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(5) X"66"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(6) X"C2"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(7) X"18"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(8) X"C3"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(9) X"16"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(10) X"BF"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(11) X"9A"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(12) X"41"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(13) X"1B"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(14) X"05"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(15) X"19"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(16) X"FB"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(17) X"07"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(18) X"C4"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(19) X"5E"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(20) X"14"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(21) X"7E"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(22) X"14"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(23) X"62"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(24) X"FF"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(25) X"91"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(26) X"40"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(27) X"50"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(28) X"14"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(29) X"70"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(30) X"15"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(31) X"62"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(32) X"FF"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(33) X"0F"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(34) X"01"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(35) X"00"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(36) X"02"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(37) X"00"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(38) X"08"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(39) X"00"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(40) X"00"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(41) X"00"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(42) X"0D"
change /mp3_cpu/aMagicMem/vhdl_memory/mem(43) X"60"
run 5
echo "Done loading ../testcode/mp1test.asm program code."
