--
-- VHDL Architecture ece411.ADDRripper.untitled
--
-- Created:
--          by - mccart18.ews (gelib-057-33.ews.illinois.edu)
--          at - 10:13:43 02/19/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADDRripper IS
   PORT( 
      ADDRESS : IN     LC3b_word;
      TAG     : OUT    LC3B_C_TAG;
      INDEX   : OUT    LC3B_C_INDEX;
      OFFSET  : OUT    LC3B_C_OFFSET 
   );

-- Declarations

END ADDRripper ;

--
ARCHITECTURE untitled OF ADDRripper IS
BEGIN
  OFFSET <= ADDRESS(3 downto 0);
  INDEX  <= ADDRESS(6 downto 4);
  TAG    <= ADDRESS(15 downto 7);
END ARCHITECTURE untitled;

