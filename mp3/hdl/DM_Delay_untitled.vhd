--
-- VHDL Architecture ece411.DM_Delay.untitled
--
-- Created:
--          by - hyunyi1.ews (gelib-057-39.ews.illinois.edu)
--          at - 23:29:59 03/13/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY DM_Delay IS
   PORT(
    BITin   : IN  STD_LOGIC;
    BITout  : OUT STD_LOGIC
  );
END ENTITY DM_Delay;

--
ARCHITECTURE untitled OF DM_Delay IS
BEGIN
  BITout<=BITin after 6ns;
END ARCHITECTURE untitled;

