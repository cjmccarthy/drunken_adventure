--
-- VHDL Architecture ece411.OR_GATE.untitled
--
-- Created:
--          by - mccart18.ews (gelib-057-27.ews.illinois.edu)
--          at - 06:48:53 03/05/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY OR_GATE IS
   PORT (
      A : IN     std_logic;
      B : IN     std_logic;
      F : OUT    std_logic
   );
END OR_GATE;

--
ARCHITECTURE untitled OF OR_GATE IS
BEGIN
  F <= A OR B after DELAY_LOGIC2;
END ARCHITECTURE untitled;

