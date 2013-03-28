--
-- VHDL Architecture ece411.OWordJoinerD.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-10.ews.illinois.edu)
--          at - 20:39:53 03/27/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY OWordJoinerD IS
   PORT( 
      OWordIn   : IN     lc3b_oword;
      WordOut3  : IN     LC3B_WORD;
      OWORDDOut : OUT    lc3b_oword
   );

-- Declarations

END OWordJoinerD ;

--
ARCHITECTURE untitled OF OWordJoinerD IS
BEGIN
  PROCESS(OWORDIN, WORDOUT3)
  variable TEMPOWORD :lc3b_oword;
  BEGIN
  tempoword:=OWORDIN;
  tempoword(63 downto 48):=wordout3;
  owordDout<=tempoword;
END PROCESS;
END ARCHITECTURE untitled;

