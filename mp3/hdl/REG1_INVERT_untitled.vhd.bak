--
-- VHDL Architecture ece411.REG1_INVERT.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-16.ews.illinois.edu)
--          at - 21:47:26 03/12/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY REG1_INVERT IS
PORT( 
	RESET_L : IN     STD_LOGIC;
	SET_L   : IN     STD_LOGIC;
	EN      : IN     STD_LOGIC;
	CLK     : IN     STD_LOGIC;
	F       : OUT    STD_LOGIC
);
-- DECLARATIONS
END REG1_INVERT ;

-- HDS INTERFACE_END
ARCHITECTURE UNTITLED OF REG1_INVERT IS
BEGIN
	REG1_INVERT: PROCESS(CLK,RESET_L,EN)
	VARIABLE STATE : STD_LOGIC;
	BEGIN
		IF(RESET_L = '0') THEN
			STATE := '1';  -- DEFAULT VALUE
		ELSIF(SET_L ='0') THEN
		  STATE := '1';
		ELSIF(CLK = '1' AND CLK'EVENT AND EN = '1') THEN -- HIGH ENABLE
			STATE := '0';
		ELSIF(EN /= '0' AND EN /= '1' AND CLK = '1' AND CLK'EVENT) THEN
			STATE := 'X';
		END IF;
		F <= STATE AFTER DELAY_REG;
	END PROCESS REG1_INVERT;
END UNTITLED;


