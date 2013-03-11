--
-- VHDL Architecture ece411.BRadd.untitled
--
-- Created:
--          by - mccart18.ews (gelib-057-17.ews.illinois.edu)
--          at - 02:37:14 01/23/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY BRadd IS
   PORT( 
      ADDRMux1Out : IN     LC3b_word;
      ADDRMux2Out : IN     LC3b_word;
      clk         : IN     std_logic;
      BRaddout    : OUT    LC3b_word
   );

-- Declarations

END BRadd ;

--
ARCHITECTURE untitled OF BRadd IS
BEGIN
  BRaddout <= STD_LOGIC_VECTOR(SIGNED(ADDRMux1Out) + SIGNED(ADDRMux2Out)) AFTER DELAY_ADDER;
END ARCHITECTURE untitled;

