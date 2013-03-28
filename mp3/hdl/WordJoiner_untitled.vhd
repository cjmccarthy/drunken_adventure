--
-- VHDL Architecture ece411.WordJoiner.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-10.ews.illinois.edu)
--          at - 20:16:13 03/27/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY WordJoiner IS
  PORT(
    H0Word:IN LC3B_BYTE;
    H1Word:IN LC3B_BYTE;
    WordOut:OUT LC3B_WORD
  );
END ENTITY WordJoiner;

--
ARCHITECTURE untitled OF WordJoiner IS
BEGIN
  PROCESS(H0Word,H1Word)
  variable tempw : LC3b_word;
  BEGIN
  tempw(15 downto 8) := H1word;
  tempw(7 downto 0) := H0word;
  WordOut<=tempw;
END PROCESS;
END ARCHITECTURE untitled;

