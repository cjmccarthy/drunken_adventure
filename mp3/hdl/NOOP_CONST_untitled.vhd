--
-- VHDL Architecture ece411.NOOP_CONST.untitled
--
-- Created:
--          by - hyunyi1.ews (gelib-057-39.ews.illinois.edu)
--          at - 22:38:22 03/13/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY NOOP_CONST IS
   PORT( 
      NoOp_IR : OUT    LC3B_WORD
   );

-- Declarations

END NOOP_CONST ;

--
ARCHITECTURE untitled OF NOOP_CONST IS
BEGIN
  NoOp_IR<="0000000000000000";
END ARCHITECTURE untitled;

