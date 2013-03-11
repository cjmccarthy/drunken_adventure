--
-- VHDL Architecture ece411.TagMux.untitled
--
-- Created:
--          by - mccart18.ews (linux7.ews.illinois.edu)
--          at - 23:32:59 01/22/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY TagMux IS
   PORT( 
      A   : IN     LC3B_C_TAG;
      B   : IN     LC3B_C_TAG;
      Sel : IN     std_logic;
      F   : OUT    LC3B_C_TAG
   );

-- Declarations

END TagMux ;

--
ARCHITECTURE untitled OF TagMux IS
BEGIN
PROCESS (A, B, Sel)
  variable state : LC3B_C_TAG;
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

