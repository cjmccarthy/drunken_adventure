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

ENTITY ADJ5 IS
   PORT( 
      clk      : IN     std_logic;
      imm5     : IN     LC3b_imm5;
      imm5SEXT : OUT    LC3b_word
   );

-- Declarations

END ADJ5 ;

--
ARCHITECTURE UNTITLED OF ADJ5 IS
BEGIN
	imm5SEXT <= IMM5(4) & IMM5(4) & IMM5(4) & IMM5(4) & IMM5(4) & IMM5(4) & IMM5(4) & IMM5(4) & IMM5(4) & IMM5(4) & IMM5(4) & IMM5 AFTER DELAY_MUX2;
END UNTITLED;


