--
-- VHDL Architecture ece411.COMP3.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-04.ews.illinois.edu)
--          at - 11:22:34 03/14/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY COMP3 IS
  PORT( 
	A : IN     LC3B_CC;
	B : IN     LC3B_CC;
	F : OUT    STD_LOGIC
);
-- DECLARATIONS
END COMP3 ;

-- HDS INTERFACE_END
ARCHITECTURE UNTITLED OF COMP3 IS
BEGIN
	COMP3: PROCESS (A, B)
	BEGIN 
		IF (A = B) THEN
			F <= '1' AFTER DELAY_COMPARE8;
		ELSE
			F <= '0' AFTER DELAY_COMPARE8;
		END IF;
	END PROCESS COMP3;
END UNTITLED;

