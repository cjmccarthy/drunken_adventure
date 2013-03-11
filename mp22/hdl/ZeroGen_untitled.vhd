--
-- VHDL Architecture ece411.ZeroGen.untitled
--
-- Created:
--          by - mccart18.ews (gelib-057-33.ews.illinois.edu)
--          at - 04:53:24 02/19/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ZeroGen IS
   PORT( 
      clk     : IN     std_logic;
      ZeroSig : OUT    LC3b_word
   );

-- Declarations

END ZeroGen ;

--
ARCHITECTURE untitled OF ZeroGen IS
BEGIN
  ZeroSig <= "0000000000000000";
END ARCHITECTURE untitled;

