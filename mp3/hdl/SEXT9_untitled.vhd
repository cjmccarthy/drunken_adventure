--
-- VHDL Architecture ece411.SEXT9.untitled
--
-- Created:
--          by - mccart18.ews (gelib-057-16.ews.illinois.edu)
--          at - 03:47:37 03/12/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY SEXT9 IS
   PORT( 
      IR9down   : IN     LC3B_OFFSET9;
      offset9_F : OUT    LC3B_WORD
   );

-- Declarations

END SEXT9 ;

--
ARCHITECTURE untitled OF SEXT9 IS
BEGIN
  offset9_F <= IR9down(8) & IR9down(8) & IR9down(8) & IR9down(8) & IR9down(8) & IR9down(8) & IR9down & '0' after DELAY_MUX2;
END ARCHITECTURE untitled;

