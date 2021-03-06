--
-- VHDL Architecture ece411.IMread_Reset.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-16.ews.illinois.edu)
--          at - 21:59:10 03/12/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY IMread_Reset IS
   PORT( 
      MRESP_H : IN     std_logic;
      RESET_L : IN     STD_LOGIC;
      IMReset : OUT    STD_LOGIC
   );

-- Declarations

END IMread_Reset ;

--
ARCHITECTURE untitled OF IMread_Reset IS
BEGIN
  IMReset<=(RESET_L AND NOT(MRESP_H))after DELAY_LOGIC4;
END ARCHITECTURE untitled;

