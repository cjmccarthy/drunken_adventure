--
-- VHDL Architecture ece411.INVERT1.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-16.ews.illinois.edu)
--          at - 20:57:34 03/12/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY INVERT1 IS
  PORT(
    BITin   : IN  STD_LOGIC;
    BITout  : OUT STD_LOGIC
  );
END ENTITY INVERT1;

--
ARCHITECTURE untitled OF INVERT1 IS
BEGIN
  BITout<=NOT(BITin) after DELAY_LOGIC2;
END ARCHITECTURE untitled;

