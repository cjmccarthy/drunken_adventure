--
-- VHDL Architecture ece411.CacheMissL1I.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-10.ews.illinois.edu)
--          at - 20:09:39 03/26/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY CacheMissL1I IS
  PORT(
    VFlag  :IN   STD_LOGIC;
    HIT    :IN   STD_LOGIC;
    MREAD_L :IN   STD_LOGIC;
    CacheMiss:OUT  STD_LOGIC
  );
END ENTITY CacheMissL1I;

--
ARCHITECTURE untitled OF CacheMissL1I IS
BEGIN
  CacheMiss <= (((VFlag NAND HIT))AND(NOT(MREAD_L))) AFTER Delay_logic4;
END ARCHITECTURE untitled;

