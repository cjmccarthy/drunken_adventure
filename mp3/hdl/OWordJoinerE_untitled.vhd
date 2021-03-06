--
-- VHDL Architecture ece411.OWordJoinerE.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-10.ews.illinois.edu)
--          at - 20:41:16 03/27/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY OWordJoinerE IS
   PORT( 
      OWordIn   : IN     lc3b_oword;
      WordOut4  : IN     LC3B_WORD;
      OWordEOut : OUT    lc3b_oword
   );

-- Declarations

END OWordJoinerE ;

--
ARCHITECTURE untitled OF OWordJoinerE IS
BEGIN
  PROCESS(OWORDIN, WORDOUT4)
  variable TEMPOWORD :lc3b_oword;
  BEGIN
  tempoword:=OWORDIN;
  tempoword(79 downto 64):=wordout4;
  owordEout<=tempoword;
END PROCESS;
END ARCHITECTURE untitled;

