--
-- VHDL Architecture ece411.DMread_Reset.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-16.ews.illinois.edu)
--          at - 22:51:33 03/12/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY DMread_Reset IS
   PORT( 
      MREAD_L : IN     STD_LOGIC;
      MRESP_H : IN     std_logic;
      STALL_L : IN     STD_LOGIC;
      DMReset : OUT    STD_LOGIC
   );

-- Declarations

END DMread_Reset ;

--
ARCHITECTURE untitled OF DMread_Reset IS
BEGIN
  DMReset<=((STALL_L NAND MRESP_H)OR MREAD_L)after DELAY_LOGIC4;
END ARCHITECTURE untitled;

