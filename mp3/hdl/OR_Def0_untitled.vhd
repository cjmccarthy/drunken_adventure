--
-- VHDL Architecture ece411.OR_Def0.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-10.ews.illinois.edu)
--          at - 15:22:59 03/13/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY OR_Def0 IS
   PORT( 
      PCMUXSel : IN     STD_LOGIC;
      SEL      : OUT    STD_LOGIC
   );

-- Declarations

END OR_Def0 ;

--
ARCHITECTURE untitled OF OR_Def0 IS
BEGIN
  SEL<=(PCMUXSel OR '0')after delay_logic2;
END ARCHITECTURE untitled;

