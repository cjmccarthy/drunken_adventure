--
-- VHDL Architecture ece411.AND_GATE.untitled
--
-- Created:
--          by - mccart18.ews (gelib-057-27.ews.illinois.edu)
--          at - 03:29:10 03/05/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY AND_GATE IS
  PORT(
    A : IN std_logic;
    B : IN std_logic;
    F : out std_logic
  );
-- Declarations

END AND_GATE ;

--
ARCHITECTURE untitled OF AND_GATE IS
BEGIN
  F <= A AND B AFTER DELAY_LOGIC2;
END ARCHITECTURE untitled;

