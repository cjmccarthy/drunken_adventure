--
-- VHDL Architecture ece411.ADJ6.untitled
--
-- Created:
--          by - mccart18.ews (gelib-057-17.ews.illinois.edu)
--          at - 02:22:07 01/23/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ4 IS
   PORT( 
      clk      : IN     std_logic;
      imm4     : IN     LC3b_nibble;
      imm4SEXT : OUT    LC3b_word
   );

-- Declarations

END ADJ4 ;

--
ARCHITECTURE UNTITLED OF ADJ4 IS
BEGIN
--	IMM4SEXT <= IMM4(3) &IMM4(3) & IMM4(3) & IMM4(3) & IMM4(3) & IMM4(3) & IMM4(3) & IMM4(3) & IMM4(3) & IMM4(3) & IMM4(3) & IMM4(3) & IMM4 AFTER DELAY_MUX2;
  IMM4SEXT <= "000000000000" & imm4 AFTER DELAY_MUX2;
END UNTITLED;


