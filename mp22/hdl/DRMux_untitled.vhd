--
-- VHDL Architecture ece411.DRMux.untitled
--
-- Created:
--          by - mccart18.ews (gelib-057-17.ews.illinois.edu)
--          at - 02:15:03 01/23/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY DRMux IS
   PORT( 
      destIR        : IN     LC3b_reg;
      DRMuxSel      : IN     std_logic;
      clk           : IN     std_logic;
      dest          : OUT    LC3b_reg
   );

-- Declarations

END DRMux ;

--
ARCHITECTURE untitled OF DRMux IS
BEGIN
PROCESS (destIR, DRMuxSel, dest)
  variable state : LC3b_reg;
BEGIN
  case DRMuxSel is
   when '0' =>
    state := destIR;
   when '1' =>
    state := "111";
   when others =>
    state := (OTHERS => 'X');
  end case;
dest <= state after delay_MUX2;
END PROCESS;
END ARCHITECTURE untitled;

