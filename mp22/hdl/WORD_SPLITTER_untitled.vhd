--
-- VHDL Architecture ece411.WORD_SPLITTER.untitled
--
-- Created:
--          by - mccart18.ews (linux7.ews.illinois.edu)
--          at - 05:01:53 03/06/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY WORD_SPLITTER IS
   PORT( 
      IN_WORD : IN     LC3B_WORD;
      BYTE0   : OUT    LC3B_BYTE;
      BYTE1   : OUT    LC3B_BYTE
   );

-- Declarations

END WORD_SPLITTER ;

--
ARCHITECTURE untitled OF WORD_SPLITTER IS
BEGIN
  BYTE0 <= IN_WORD(7 downto 0);
  BYTE1 <= IN_WORD(15 downto 8);
END ARCHITECTURE untitled;

