--
-- VHDL Architecture ece411.L1DWrite_Ctrl.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-10.ews.illinois.edu)
--          at - 19:37:41 03/27/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY L1DWrite_Ctrl IS
   PORT( 
      WRESP     : OUT    STD_LOGIC;
      CacheHit  : IN     STD_LOGIC;
      PWL_Delay : IN     std_logic;
      WriteBack : IN     STD_LOGIC;
      DWRITEH_L : IN     std_logic;
      DWRITEL_L : IN     std_logic;
      DPMRESP_H : IN     STD_LOGIC;
      DPMREAD_L : IN     STD_LOGIC
   );

-- Declarations

END L1DWrite_Ctrl ;

--
ARCHITECTURE untitled OF L1DWrite_Ctrl IS
BEGIN
	WResp <= (((DPMRESP_H AND PWL_Delay)AND NOT DPMREAD_L) OR (CacheHit AND (DWRITEH_L NAND DWRITEL_L)))after 3ns;
	
END ARCHITECTURE untitled;
