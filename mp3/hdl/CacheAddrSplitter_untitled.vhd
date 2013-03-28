--
-- VHDL Architecture ece411.CacheAddrSplitter.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-31.ews.illinois.edu)
--          at - 12:00:08 03/26/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY CacheAddrSplitter IS
   PORT( 
      Address : IN     lc3b_word;
      Index   : OUT    LC3B_C_INDEX;
      Offset  : OUT    lc3b_c_offset;
      Tag     : OUT    LC3B_C_TAG
   );

-- Declarations

END CacheAddrSplitter ;

--
ARCHITECTURE untitled OF CacheAddrSplitter IS
BEGIN
  Offset<=Address(3 downto 0);
  Index<=Address(2 downto 0);
  Tag<=Address(8 downto 0);
END ARCHITECTURE untitled;

