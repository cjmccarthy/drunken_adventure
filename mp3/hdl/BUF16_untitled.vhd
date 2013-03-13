--
-- VHDL Architecture ece411.BUF16.untitled
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
ENTITY BUF16 IS
  PORT(
    WORDin   : IN  lc3b_word;
    WORDout  : OUT lc3b_word
  );
END ENTITY BUF16;

--
ARCHITECTURE untitled OF BUF16 IS
BEGIN
  WORDout<=WORDin;
END ARCHITECTURE untitled;

