--
-- VHDL Architecture ece411.OWordJoinerF.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-10.ews.illinois.edu)
--          at - 20:43:01 03/27/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY OWordJoinerF IS
   PORT( 
      OWordIn   : IN     lc3b_oword;
      WordOut5  : IN     LC3B_WORD;
      OWordFOut : OUT    lc3b_oword
   );

-- Declarations

END OWordJoinerF ;

--
ARCHITECTURE untitled OF OWordJoinerF IS
BEGIN
  PROCESS(OWORDIN, WORDOUT5)
  variable TEMPOWORD :lc3b_oword;
  BEGIN
  tempoword:=OWORDIN;
  tempoword(95 downto 80):=wordout5;
  owordFout<=tempoword;
END PROCESS;
END ARCHITECTURE untitled;

