--
-- VHDL Architecture ece411.OWordMux2.untitled
--
-- Created:
--          by - mccart18.ews (linux7.ews.illinois.edu)
--          at - 20:25:04 03/05/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY OWordMux2 IS
   PORT( 
      A   : IN     LC3B_OWORD;
      B   : IN     LC3B_OWORD;
      Sel : IN     std_logic;
      F   : OUT    LC3B_OWORD
   );

-- Declarations

END OWordMux2 ;

--
ARCHITECTURE untitled OF OWordMux2 IS
BEGIN
PROCESS (A, B, Sel)
  variable state : LC3b_OWORD;
BEGIN
  case Sel is
   when '0' =>
    state := A;
   when '1' =>
    state := B;
   when others =>
    state := (OTHERS => 'X');
  end case;
F <= state after delay_MUX2;
END PROCESS;
END ARCHITECTURE untitled;

