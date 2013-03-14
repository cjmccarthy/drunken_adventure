--
-- VHDL Architecture ece411.NOOP_CW.untitled
--
-- Created:
--          by - hyunyi1.ews (gelib-057-39.ews.illinois.edu)
--          at - 22:44:06 03/13/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY NOOP_CW IS
   PORT( 
      NoOp_CWout : OUT    LC3B_WORD
   );

-- Declarations

END NOOP_CW ;

--
ARCHITECTURE untitled OF NOOP_CW IS
BEGIN
  NOOP_CWout <= "0000000000000111";
END ARCHITECTURE untitled;

