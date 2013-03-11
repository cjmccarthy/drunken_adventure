--
-- VHDL Architecture ece411.ADDRsplit.untitled
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

ENTITY ADDRsplit IS
   PORT( 
      ADDRESS : IN     LC3b_word;
      clk     : IN     std_logic;
      OFFb   : OUT    std_logic
   );

-- Declarations

END ADDRsplit ;

--
ARCHITECTURE untitled OF ADDRsplit IS
BEGIN
  OFFb <= ADDRESS(0);
END ARCHITECTURE untitled;

