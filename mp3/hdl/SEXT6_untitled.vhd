--
-- VHDL Architecture ece411.SEXT6.untitled
--
-- Created:
--          by - mccart18.ews (gelib-057-16.ews.illinois.edu)
--          at - 03:40:28 03/12/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY SEXT6 IS
   PORT( 
      IR6down      : IN     LC3B_OFFSET6;
      offset6_F : OUT    LC3B_WORD
   );

-- Declarations

END SEXT6 ;

--
ARCHITECTURE untitled OF SEXT6 IS
BEGIN
  offset6_SEXT <= IR6down(5) & IR6down(5) & IR6down(5) & IR6down(5) & IR6down(5) & IR6down(5) & IR6down(5) & IR6down(5) & IR6down(5) & IR6down & '0' after DELAY_MUX2;
END ARCHITECTURE untitled;

