--
-- VHDL Architecture ece411.AND_GATE4.untitled
--
-- Created:
--          by - mccart18.ews (linux7.ews.illinois.edu)
--          at - 22:21:02 03/05/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY AND_GATE4 IS
   PORT( 
      A : IN     std_logic;
      B : IN     std_logic;
      C : IN     std_logic;
      D : IN     std_logic;
      F : OUT    STD_LOGIC
   );

-- Declarations

END AND_GATE4 ;

--
ARCHITECTURE untitled OF AND_GATE4 IS
BEGIN
  F <= A AND B AND C AND D after DELAY_LOGIC4;
END ARCHITECTURE untitled;

