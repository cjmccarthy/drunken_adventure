--
-- VHDL Architecture ece411.REG1_INVERTb.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-16.ews.illinois.edu)
--          at - 22:41:43 03/12/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY REG1_INVERTb IS
PORT( 
	RESET_L : IN     STD_LOGIC;
	A       : IN     STD_LOGIC;
	EN      : IN     STD_LOGIC;
	CLK     : IN     STD_LOGIC;
	F       : OUT    STD_LOGIC
);
-- DECLARATIONS
END REG1_INVERTb ;

-- HDS INTERFACE_END
ARCHITECTURE UNTITLED OF REG1_INVERTb IS
BEGIN
	REG1: PROCESS(CLK,RESET_L,A,EN)
	VARIABLE STATE : STD_LOGIC;
	BEGIN
		IF(RESET_L = '0') THEN
			STATE := '1';  -- DEFAULT VALUE
		ELSIF(CLK = '1' AND CLK'EVENT AND EN = '1') THEN -- HIGH ENABLE
			STATE := A;
		ELSIF(EN /= '0' AND EN /= '1' AND CLK = '1' AND CLK'EVENT) THEN
			STATE := 'X';
		END IF;
		F <= STATE AFTER DELAY_REG;
	END PROCESS REG1;
END UNTITLED;
