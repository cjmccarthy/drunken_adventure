--
-- VHDL Architecture ece411.BUF32.untitled
--
-- Created:
--          by - hyunyi1.ews (gelib-057-37.ews.illinois.edu)
--          at - 14:03:59 03/12/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
USE ece411.LC3b_types.all;
ENTITY BUF32 IS
  PORT(
    WORDin   : IN  lc3b_dword;
    WORDout  : OUT lc3b_dword
  );
END ENTITY BUF32;

--
ARCHITECTURE untitled OF BUF32 IS
BEGIN
  WORDout<=WORDin;
END ARCHITECTURE untitled;

