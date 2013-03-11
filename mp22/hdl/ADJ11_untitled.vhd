--
-- VHDL Architecture ece411.ADJ9.untitled
--
-- Created:
--          by - mccart18.ews (gelib-057-17.ews.illinois.edu)
--          at - 02:23:08 01/23/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ11 IS
   PORT( 
      clk      : IN     std_logic;
      offset11 : IN     LC3b_offset11;
      ADJ11out : OUT    LC3b_word
   );

-- Declarations

END ADJ11 ;


--ARCHITECTURE UNTITLED OF ADJ6 IS
ARCHITECTURE UNTITLED OF ADJ11 IS
BEGIN
	ADJ11OUT <=  OFFSET11(10) & OFFSET11(10) & OFFSET11(10) & OFFSET11(10)  & OFFSET11 & '0' AFTER DELAY_MUX2;
END UNTITLED;


