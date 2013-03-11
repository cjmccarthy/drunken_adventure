--
-- VHDL Architecture ece411.StoreMux.untitled
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

ENTITY StoreMux IS
   PORT( 
      SrcA        : IN     LC3b_reg;
      StoreSR     : IN     std_logic;
      clk         : IN     std_logic;
      destIR        : IN     LC3b_reg;
      StoreMuxout : OUT    LC3b_reg
   );

-- Declarations

END StoreMux ;

--
ARCHITECTURE untitled OF StoreMux IS
BEGIN
PROCESS (destIR, SrcA, StoreSR)
  variable state : LC3b_reg;
BEGIN
  case StoreSR is
   when '0' =>
    state := destIR;
   when '1' =>
    state := SrcA;
   when others =>
    state := (OTHERS => 'X');
  end case;
StoreMuxout <= state after delay_MUX2;
END PROCESS;
END ARCHITECTURE untitled;

