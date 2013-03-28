--
-- VHDL Architecture ece411.DMwrite_Reset.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-16.ews.illinois.edu)
--          at - 23:05:31 03/12/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY DMwrite_Reset IS
   PORT( 
      MRESP_H : IN     std_logic;
      RESET_L : IN     STD_LOGIC;
      DMReset : OUT    STD_LOGIC
   );

-- Declarations

END DMwrite_Reset ;

--
ARCHITECTURE untitled OF DMwrite_Reset IS
BEGIN
  DMReset<=(RESET_L AND NOT(MRESP_H))after delay_logic4;--((STALL_L NAND MRESP_H) OR WRITE_L)after DELAY_LOGIC4;
END ARCHITECTURE untitled;

