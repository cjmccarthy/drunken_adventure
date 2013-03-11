echo "--- Executing initialization force file for ../testcode/mp1fact.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../testcode/mp1fact.asm program code."
run 5
change /mp2_cpu/dram/vhdl_memory/mem(0) X"0F"
change /mp2_cpu/dram/vhdl_memory/mem(1) X"62"
change /mp2_cpu/dram/vhdl_memory/mem(2) X"10"
change /mp2_cpu/dram/vhdl_memory/mem(3) X"64"
change /mp2_cpu/dram/vhdl_memory/mem(4) X"3F"
change /mp2_cpu/dram/vhdl_memory/mem(5) X"9C"
change /mp2_cpu/dram/vhdl_memory/mem(6) X"02"
change /mp2_cpu/dram/vhdl_memory/mem(7) X"16"
change /mp2_cpu/dram/vhdl_memory/mem(8) X"C6"
change /mp2_cpu/dram/vhdl_memory/mem(9) X"16"
change /mp2_cpu/dram/vhdl_memory/mem(10) X"03"
change /mp2_cpu/dram/vhdl_memory/mem(11) X"1A"
change /mp2_cpu/dram/vhdl_memory/mem(12) X"02"
change /mp2_cpu/dram/vhdl_memory/mem(13) X"19"
change /mp2_cpu/dram/vhdl_memory/mem(14) X"46"
change /mp2_cpu/dram/vhdl_memory/mem(15) X"1B"
change /mp2_cpu/dram/vhdl_memory/mem(16) X"FD"
change /mp2_cpu/dram/vhdl_memory/mem(17) X"03"
change /mp2_cpu/dram/vhdl_memory/mem(18) X"04"
change /mp2_cpu/dram/vhdl_memory/mem(19) X"14"
change /mp2_cpu/dram/vhdl_memory/mem(20) X"C6"
change /mp2_cpu/dram/vhdl_memory/mem(21) X"16"
change /mp2_cpu/dram/vhdl_memory/mem(22) X"03"
change /mp2_cpu/dram/vhdl_memory/mem(23) X"1A"
change /mp2_cpu/dram/vhdl_memory/mem(24) X"46"
change /mp2_cpu/dram/vhdl_memory/mem(25) X"1B"
change /mp2_cpu/dram/vhdl_memory/mem(26) X"F8"
change /mp2_cpu/dram/vhdl_memory/mem(27) X"03"
change /mp2_cpu/dram/vhdl_memory/mem(28) X"FF"
change /mp2_cpu/dram/vhdl_memory/mem(29) X"0F"
change /mp2_cpu/dram/vhdl_memory/mem(30) X"01"
change /mp2_cpu/dram/vhdl_memory/mem(31) X"00"
change /mp2_cpu/dram/vhdl_memory/mem(32) X"07"
change /mp2_cpu/dram/vhdl_memory/mem(33) X"00"
run 5
echo "Done loading ../testcode/mp1fact.asm program code."
