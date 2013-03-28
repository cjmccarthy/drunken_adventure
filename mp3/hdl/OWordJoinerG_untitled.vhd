--
-- VHDL Architecture ece411.OWordJoinerG.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-10.ews.illinois.edu)
--          at - 20:44:30 03/27/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY OWordJoinerG IS
   PORT( 
      OWordIn   : IN     lc3b_oword;
      WordOut6  : IN     LC3B_WORD;
      OWordGOut : OUT    lc3b_oword
   );

-- Declarations

END OWordJoinerG ;

--
ARCHITECTURE untitled OF OWordJoinerG IS
BEGIN
  PROCESS(OWORDIN, WORDOUT6)
  variable TEMPOWORD :lc3b_oword;
  BEGIN
  tempoword:=OWORDIN;
  tempoword(111 downto 96):=wordout6;
  owordGout<=tempoword;
END PROCESS;
END ARCHITECTURE untitled;

