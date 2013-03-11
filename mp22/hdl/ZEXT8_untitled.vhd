--
-- VHDL Architecture ece411.ZEXT8.untitled
--
-- Created:
--          by - mccart18.ews (gelib-057-33.ews.illinois.edu)
--          at - 08:11:49 02/19/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ZEXT8 IS
   PORT( 
      MDRBMuxout     : IN     LC3b_byte;
      clk        : IN     std_logic;
      MDROUTZEXT : OUT    LC3b_word
   );

-- Declarations

END ZEXT8 ;

--
ARCHITECTURE untitled OF ZEXT8 IS
BEGIN
  MDROUTZEXT <= "00000000" & MDRBMuxout;
END ARCHITECTURE untitled;

