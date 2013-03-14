--
-- VHDL Architecture ece411.workwokry.untitled
--
-- Created:
--          by - hyunyi1.ews (gelib-057-39.ews.illinois.edu)
--          at - 20:20:52 03/13/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY workwokry IS
   PORT( 
      MREAD_L : IN     STD_LOGIC;
      MRESP_H : IN     std_logic;
      A       : OUT    STD_LOGIC
   );

-- Declarations

END workwokry ;

--
ARCHITECTURE untitled OF workwokry IS
BEGIN
  A<= (MRESP_H AND (NOT MREAD_L))after delay_logic4;
END ARCHITECTURE untitled;

