--
-- VHDL Architecture ece411.DEMUX2_1.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-10.ews.illinois.edu)
--          at - 21:03:04 03/27/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY DEMUX2_1 IS
PORT( 
	A   : OUT     STD_LOGIC;
	B   : OUT     STD_LOGIC;
	SEL : IN     STD_LOGIC;
	F   : IN    STD_LOGIC
);
-- DECLARATIONS
END DEMUX2_1 ;

-- HDS INTERFACE_END
ARCHITECTURE UNTITLED OF DEMUX2_1 IS
BEGIN
	PROCESS (F, SEL)
	BEGIN  
		IF SEL = '0' THEN
			A <= F AFTER DELAY_MUX2;
			B <= '0' after delay_mux2;
		ELSIF SEL = '1' THEN
			B <= F AFTER DELAY_MUX2;
			A <= '0' after delay_mux2;
		ELSE
			A <= 'X' AFTER DELAY_MUX2;
			B <= 'X' AFTER DELAY_MUX2;
		END IF;
	END PROCESS;
END UNTITLED;