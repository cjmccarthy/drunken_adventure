--
-- VHDL Architecture ece411.MDRByteMux.untitled
--
-- Created:
--          by - mccart18.ews (gelib-057-33.ews.illinois.edu)
--          at - 08:42:54 02/19/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY MDRByteMux IS
   PORT( 
      MDROUT     : IN     LC3b_word;
      clk        : IN     std_logic;
      MDRBMuxout : OUT    LC3b_byte;
      OFFb       : IN     std_logic
   );

-- Declarations

END MDRByteMux ;

--
ARCHITECTURE untitled OF MDRByteMux IS
BEGIN
PROCESS (MDROUT, OFFb)
variable state : LC3b_byte;
BEGIN
  case OFFb is
   when '0' =>
    state := MDROUT(7 downto 0);
   when '1' =>
    state := MDROUT(15 downto 8);
   when others =>
    state := (OTHERS => 'X');
  end case;
MDRBMuxout <= state after delay_MUX2;
END PROCESS;
END ARCHITECTURE untitled;

