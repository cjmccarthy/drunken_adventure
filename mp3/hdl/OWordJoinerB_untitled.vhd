--
-- VHDL Architecture ece411.OWordJoinerB.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-10.ews.illinois.edu)
--          at - 20:36:14 03/27/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY OWordJoinerB IS
   PORT( 
      OWordIn   : IN     lc3b_oword;
      WordOut1  : IN     LC3B_WORD;
      OWordBOut : OUT    lc3b_oword
   );

-- Declarations

END OWordJoinerB ;

--
ARCHITECTURE untitled OF OWordJoinerB IS
BEGIN
  PROCESS(OWORDIN, WORDOUT1)
  variable TEMPOWORD :lc3b_oword;
  BEGIN
  tempoword:=OWORDIN;
  tempoword(31 downto 16):=wordout1;
  owordBout<=tempoword;
END PROCESS;
END ARCHITECTURE untitled;

