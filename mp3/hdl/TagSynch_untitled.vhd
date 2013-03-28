--
-- VHDL Architecture ece411.TagSynch.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-10.ews.illinois.edu)
--          at - 19:31:33 03/26/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY TagSynch IS
   PORT( 
      Tag        : IN     LC3B_C_TAG;
      TagSynched : OUT    lc3b_c_tag
   );

-- Declarations

END TagSynch ;

--
ARCHITECTURE untitled OF TagSynch IS
BEGIN
  TagSynched<=Tag after 14ns;
END ARCHITECTURE untitled;

