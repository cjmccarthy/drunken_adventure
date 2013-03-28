--
-- VHDL Architecture ece411.Latch1.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-10.ews.illinois.edu)
--          at - 21:11:10 03/27/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY Latch1 IS
  PORT(
    BITin : IN  STD_LOGIC;
    LSIG  : IN  STD_LOGIC;
    RESET_L: IN STD_LOGIC;
    BITout: OUT STD_LOGIC
  );
END ENTITY Latch1;

--
ARCHITECTURE untitled OF Latch1 IS
BEGIN
  PROCESS (LSIG,RESET_L)
  	 VARIABLE STATE : STD_LOGIC;
	BEGIN  
	  IF(RESET_L = '0') THEN
			STATE := '0';  -- DEFAULT VALUE
		ELSIF(LSIG = '1') THEN -- HIGH ENABLE
			STATE := BITin;
		END IF;
		BITout<=STATE after 3ns;
	END PROCESS;
END ARCHITECTURE untitled;

