--
-- VHDL Architecture ece411.NZP_latch.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-04.ews.illinois.edu)
--          at - 12:50:30 03/14/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY NZP_latch IS
   PORT( 
      BR      : IN     STD_LOGIC;
      RESET_L : IN     STD_LOGIC;
      Result  : IN     std_logic;
      CLK     : IN     std_logic
   );

-- Declarations

END NZP_latch ;

--
ARCHITECTURE untitled OF NZP_latch IS
BEGIN
  NZP_LATCH: PROCESS(CLK,RESET_L,Result)
	VARIABLE STATE : STD_LOGIC;
	BEGIN
		IF(RESET_L = '0') THEN
			STATE := '0';  -- DEFAULT VALUE
		ELSIF(CLK = '1' AND CLK'EVENT AND EN = '1') THEN -- HIGH ENABLE
			STATE := '0';
		ELSIF(EN /= '0' AND EN /= '1' AND CLK = '1' AND CLK'EVENT) THEN
			STATE := 'X';
		END IF;
		F <= STATE AFTER DELAY_REG;
	END PROCESS NZP_LATCH;
END ARCHITECTURE untitled;

