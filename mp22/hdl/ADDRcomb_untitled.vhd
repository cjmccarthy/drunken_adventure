--
-- VHDL Architecture ece411.ADDRcomb.untitled
--
-- Created:
--          by - mccart18.ews (gelib-057-27.ews.illinois.edu)
--          at - 06:43:34 03/05/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADDRcomb IS
   PORT( 
      INDEX    : IN     LC3B_C_INDEX;
      EvictTag : IN     LC3B_C_TAG;
      WBADDR   : OUT    LC3b_word
   );

-- Declarations

END ADDRcomb ;

--
ARCHITECTURE untitled OF ADDRcomb IS
BEGIN
  WBADDR <= EvictTag & INDEX & "0000";
END ARCHITECTURE untitled;

