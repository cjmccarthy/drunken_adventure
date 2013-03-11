--
-- VHDL Architecture ece411.OWordMux8.untitled
--
-- Created:
--          by - mccart18.ews (gelib-057-27.ews.illinois.edu)
--          at - 03:40:13 03/05/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY OWordMux8 IS
   PORT( 
      A   : IN     LC3B_OWORD;
      Sel : IN     LC3B_C_OFFSET;
      F   : OUT    LC3B_WORD
   );

-- Declarations

END OWordMux8 ;

--
ARCHITECTURE untitled OF OWordMux8 IS
BEGIN
PROCESS (A, F, Sel)
  variable state : LC3b_word;
BEGIN
  case Sel(3 downto 1) is
   when "111" =>
    state := A(127 downto 112);
   when "110" =>
    state := A(111 downto 96);
   when "101" =>
    state := A(95 downto 80);
   when "100" =>
    state := A(79 downto 64);
   when "011" =>
    state := A(63 downto 48);
   when "010" =>
    state := A(47 downto 32);
   when "001" =>
    state := A(31 downto 16);
   when "000" =>
    state := A(15 downto 0);
   when others =>
    state := (OTHERS => 'X');
  end case;
F <= state after delay_MUX8;
END PROCESS;
END ARCHITECTURE untitled;

