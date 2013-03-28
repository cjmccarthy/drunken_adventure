--
-- VHDL Architecture ece411.WordSplit.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-10.ews.illinois.edu)
--          at - 20:15:16 03/27/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY WordSplit IS
  PORT(
    H0Word:OUT LC3B_BYTE;
    H1Word:OUT LC3B_BYTE;
    WordIn:IN LC3B_WORD
  );
END ENTITY WordSplit;

--
ARCHITECTURE untitled OF WordSplit IS
BEGIN
  H0Word<=WordIn(7 downto 0);
  H1Word<=WordIn(15 downto 8);
END ARCHITECTURE untitled;
