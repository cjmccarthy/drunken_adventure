--
-- VHDL Architecture ece411.TAGSynchL1D.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-10.ews.illinois.edu)
--          at - 18:49:54 03/27/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY TAGSynchL1D IS
   PORT( 
      Tag        : IN     LC3B_C_TAG;
      TagSynched : OUT    lc3b_c_tag
   );

-- Declarations

END TAGSynchL1D ;

--
ARCHITECTURE untitled OF TAGSynchL1D IS
BEGIN
  TagSynched <= Tag after 20ns;
END ARCHITECTURE untitled;

