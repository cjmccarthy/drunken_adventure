--
-- VHDL Architecture ece411.NAND_GATE_3.untitled
--
-- Created:
--          by - mccart18.ews (gelib-057-27.ews.illinois.edu)
--          at - 06:50:09 03/05/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY NAND_GATE_3 IS
   PORT (
      A : IN     std_logic;
      B : IN     std_logic;
      C : IN     std_logic;
      F : OUT    std_logic
   );
END NAND_GATE_3;

--
ARCHITECTURE untitled OF NAND_GATE_3 IS
BEGIN
  F <= NOT( A AND B AND C ) after DELAY_LOGIC3;
END ARCHITECTURE untitled;

