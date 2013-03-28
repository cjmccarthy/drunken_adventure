--
-- VHDL Architecture ece411.CacheMiss.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-10.ews.illinois.edu)
--          at - 19:08:45 03/26/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY CacheMiss IS
  PORT(
    V0Flag  :IN   STD_LOGIC;
    V1Flag  :IN   STD_LOGIC;
    HIT0    :IN   STD_LOGIC;
    HIT1    :IN   STD_LOGIC;
    MREAD_L :IN   STD_LOGIC;
    MWRITEH_L:IN  STD_LOGIC;
    MWRITEL_L:IN  STD_LOGIC;
    CacheMiss:OUT  STD_LOGIC
  );
END ENTITY CacheMiss;

--
ARCHITECTURE untitled OF CacheMiss IS
BEGIN
  CacheMiss <= (((V0Flag AND HIT0) NOR (V1Flag AND Hit1))AND (NOT(MREAD_L) OR (MWRITEH_L NAND MWRITEL_L))) AFTER 3ns;
END ARCHITECTURE untitled;