--
-- VHDL Architecture ece411.AND_GATE3.untitled
--
-- Created:
--          by - mccart18.ews (linux7.ews.illinois.edu)
--          at - 02:54:11 03/06/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY AND_GATE3 IS
   PORT( 
      A : IN     std_logic;
      B : IN     std_logic;
      C : IN     std_logic;
      F : OUT    std_logic
   );

-- Declarations

END AND_GATE3 ;

--
ARCHITECTURE untitled OF AND_GATE3 IS
BEGIN
  F <= A AND B AND C AFTER DELAY_LOGIC3;
END ARCHITECTURE untitled;

