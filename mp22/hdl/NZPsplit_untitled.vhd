--
-- VHDL Architecture ece411.NZPsplit.untitled
--
-- Created:
--          by - mccart18.ews (gelib-057-17.ews.illinois.edu)
--          at - 02:11:44 01/23/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY NZPsplit IS
   PORT( 
      clk    : IN     std_logic;
      dest   : IN     LC3b_reg;
      CheckN : OUT    std_logic;
      CheckP : OUT    std_logic;
      CheckZ : OUT    std_logic
   );

-- Declarations

END NZPsplit ;

--
ARCHITECTURE UNTITLED OF NZPSPLIT IS
BEGIN
	CHECKN <= DEST(2);
	CHECKZ <= DEST(1);
	CHECKP <= DEST(0);
END UNTITLED;
