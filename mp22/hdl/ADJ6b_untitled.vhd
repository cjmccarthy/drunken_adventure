--
-- VHDL Architecture ece411.ADJ6b.untitled
--
-- Created:
--          by - mccart18.ews (gelib-057-17.ews.illinois.edu)
--          at - 02:22:07 01/23/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ6b IS
   PORT( 
      clk    : IN     std_logic;
      index6 : IN     LC3b_index6;
      ADJ6bout : out LC3b_word
   );

-- Declarations

END ADJ6b ;

--
ARCHITECTURE UNTITLED OF ADJ6b IS
BEGIN
	ADJ6bOUT <= INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6  AFTER DELAY_MUX2;
END UNTITLED;


