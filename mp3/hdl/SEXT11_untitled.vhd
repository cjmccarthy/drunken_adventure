--
-- VHDL Architecture ece411.SEXT11.untitled
--
-- Created:
--          by - mccart18.ews (gelib-057-16.ews.illinois.edu)
--          at - 03:49:22 03/12/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY SEXT11 IS
   PORT( 
      IR11down   : IN     LC3B_OFFSET11;
      offset11_F : OUT    LC3B_WORD
   );

-- Declarations

END SEXT11 ;

--
ARCHITECTURE untitled OF SEXT11 IS
BEGIN
  offset11_F <= IR11down(10) & IR11down(10) & IR11down(10) & IR11down(10) & IR11down & '0' after DELAY_MUX2;
END ARCHITECTURE untitled;

