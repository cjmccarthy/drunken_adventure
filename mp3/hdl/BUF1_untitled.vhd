--
-- VHDL Architecture ece411.BUF1.untitled
--
-- Created:
--          by - hyunyi1.ews (gelib-057-37.ews.illinois.edu)
--          at - 14:00:48 03/12/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY BUF1 IS
  PORT(
    BITin   : IN  STD_LOGIC;
    BITout  : OUT STD_LOGIC
  );
END ENTITY BUF1;

--
ARCHITECTURE untitled OF BUF1 IS
BEGIN
  BITout<=BITin;
END ARCHITECTURE untitled;

