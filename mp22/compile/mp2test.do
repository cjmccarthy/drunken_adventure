echo "--- Executing initialization force file for ../testcode/mp2test.asm ---"

echo "Resetting processor for 5 ns."
force /reset_l 0 @0
force /reset_l 1 @5
echo "Initializing the processor."
force /start_h 0 @0
force /start_h 1 @10

-- Test case: lowering start_h should not impact the function of the processor
force /start_h 0 @ 100

echo "Done initializing processor, loading ../testcode/mp2test.asm program code."
run 5
change /mp2_cpu/dram/vhdl_memory/mem(0) X"20"
change /mp2_cpu/dram/vhdl_memory/mem(1) X"10"
change /mp2_cpu/dram/vhdl_memory/mem(2) X"3F"
change /mp2_cpu/dram/vhdl_memory/mem(3) X"12"
change /mp2_cpu/dram/vhdl_memory/mem(4) X"22"
change /mp2_cpu/dram/vhdl_memory/mem(5) X"1E"
change /mp2_cpu/dram/vhdl_memory/mem(6) X"21"
change /mp2_cpu/dram/vhdl_memory/mem(7) X"52"
change /mp2_cpu/dram/vhdl_memory/mem(8) X"47"
change /mp2_cpu/dram/vhdl_memory/mem(9) X"12"
change /mp2_cpu/dram/vhdl_memory/mem(10) X"FA"
change /mp2_cpu/dram/vhdl_memory/mem(11) X"E3"
change /mp2_cpu/dram/vhdl_memory/mem(12) X"FD"
change /mp2_cpu/dram/vhdl_memory/mem(13) X"E3"
change /mp2_cpu/dram/vhdl_memory/mem(14) X"60"
change /mp2_cpu/dram/vhdl_memory/mem(15) X"52"
change /mp2_cpu/dram/vhdl_memory/mem(16) X"C0"
change /mp2_cpu/dram/vhdl_memory/mem(17) X"C1"
change /mp2_cpu/dram/vhdl_memory/mem(18) X"FA"
change /mp2_cpu/dram/vhdl_memory/mem(19) X"03"
change /mp2_cpu/dram/vhdl_memory/mem(20) X"FF"
change /mp2_cpu/dram/vhdl_memory/mem(21) X"0F"
change /mp2_cpu/dram/vhdl_memory/mem(22) X"01"
change /mp2_cpu/dram/vhdl_memory/mem(23) X"00"
change /mp2_cpu/dram/vhdl_memory/mem(24) X"01"
change /mp2_cpu/dram/vhdl_memory/mem(25) X"00"
run 5
echo "Done loading ../testcode/mp2test.asm program code."
