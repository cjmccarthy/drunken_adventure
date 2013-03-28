--
-- VHDL Architecture ece411.OWordSplit.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-31.ews.illinois.edu)
--          at - 11:49:57 03/26/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY OWordSplit IS
   PORT( 
      OWordIn : IN     lc3b_oword;
      A       : OUT    LC3B_WORD;
      B       : OUT    LC3B_WORD;
      C       : OUT    LC3B_WORD;
      D       : OUT    LC3B_WORD;
      E       : OUT    LC3B_WORD;
      F       : OUT    LC3B_WORD;
      G       : OUT    LC3B_WORD;
      H       : OUT    LC3B_WORD
   );

-- Declarations

END OWordSplit ;

--
ARCHITECTURE untitled OF OWordSplit IS
BEGIN
  A<=OWordIn(15 downto 0);
  B<=OWordIn(31 downto 16);
  C<=OWordIn(47 downto 32);
  D<=OWordIn(63 downto 48);
  E<=OWordIn(79 downto 64);
  F<=OWordIn(95 downto 80);
  G<=OWordIn(111 downto 96);
  H<=OWordIn(127 downto 112);
END ARCHITECTURE untitled;

