--
-- VHDL Architecture ece411.TagComparator.untitled
--
-- Created:
--          by - mccart18.ews (gelib-057-27.ews.illinois.edu)
--          at - 03:16:18 03/05/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY TagComparator IS
  PORT(
    A : IN  LC3B_C_TAG;
    B : IN  LC3B_C_TAG;
    F : OUT std_logic
  );
-- Declarations

END TagComparator ;

--
ARCHITECTURE untitled OF TagComparator IS
BEGIN
PROCESS (A, B)
  variable state : std_logic;
BEGIN
  IF (A=B)THEN
    state := '1';
  ELSE
    state := '0';
  END IF;
F <= state after DELAY_COMPARE8;
END PROCESS;
END ARCHITECTURE untitled;

