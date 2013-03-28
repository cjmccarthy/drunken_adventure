--
-- VHDL Architecture ece411.L1DAddrJoiner.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-10.ews.illinois.edu)
--          at - 19:29:58 03/27/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY L1DAddrJoiner IS
   PORT( 
      OUTADDRESS : OUT    LC3b_word;
      INDEX   : IN     LC3b_c_index;
      OFFSET  : IN     LC3b_c_offset;
      TagIn    : IN     LC3B_C_TAG
   );

-- Declarations

END L1DAddrJoiner ;

--
ARCHITECTURE untitled OF L1DAddrJoiner IS
BEGIN
  OUTADDRESS(3 downto 0)<=OFFSET;
  OUTADDRESS(6 downto 4)<=INDEX;
  OUTADDRESS(15 downto 7)<=TAGIN;
END ARCHITECTURE untitled;
