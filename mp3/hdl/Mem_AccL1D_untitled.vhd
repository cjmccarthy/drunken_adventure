--
-- VHDL Architecture ece411.Mem_AccL1D.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-10.ews.illinois.edu)
--          at - 19:25:19 03/27/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Mem_AccL1D IS
   PORT( 
      MRLin      : IN     std_logic;
      MWHLin     : IN     std_logic;
      MWLLin     : IN     std_logic;
      Mem_Access : OUT    STD_LOGIC
   );

-- Declarations

END Mem_AccL1D ;

--
ARCHITECTURE untitled OF Mem_AccL1D IS
BEGIN
	Mem_Access <= (NOT(MRLin) OR (MWHLin NAND MWLLin))AFTER delay_logic4;
  
END ARCHITECTURE untitled;
