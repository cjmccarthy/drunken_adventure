--
-- VHDL Architecture ece411.OWordJoinerC.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-10.ews.illinois.edu)
--          at - 20:38:06 03/27/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY OWordJoinerC IS
   PORT( 
      OWordIn   : IN     lc3b_oword;
      WordOut2  : IN     LC3B_WORD;
      OWordCOut : OUT    lc3b_oword
   );

-- Declarations

END OWordJoinerC ;

--
ARCHITECTURE untitled OF OWordJoinerC IS
BEGIN
  PROCESS(OWORDIN, WORDOUT2)
  variable TEMPOWORD :lc3b_oword;
  BEGIN
  tempoword:=OWORDIN;
  tempoword(47 downto 32):=wordout2;
  owordCout<=tempoword;
END PROCESS;
END ARCHITECTURE untitled;

