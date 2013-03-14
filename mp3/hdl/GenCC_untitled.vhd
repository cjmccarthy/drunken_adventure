--
-- VHDL Architecture ece411.GenCC.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-04.ews.illinois.edu)
--          at - 11:12:22 03/14/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY GenCC IS
   PORT( 
      ALU_IN   : IN     LC3b_word;
      --clk      : IN     std_logic;
      GenCCout : OUT    LC3b_cc
   );

-- Declarations

END GenCC ;

--
ARCHITECTURE UNTITLED OF GENCC IS
BEGIN
	VHDL_GENCC : PROCESS (ALU_IN)
	BEGIN    
		IF (ALU_IN = "0000000000000000") THEN
			GENCCOUT <= "010" AFTER DELAY_GENCC;
		ELSIF (ALU_IN(15) = '1') THEN
			GENCCOUT <= "100" AFTER DELAY_GENCC;
		ELSE
			GENCCOUT <= "001" AFTER DELAY_GENCC;
		END IF;
	END PROCESS VHDL_GENCC;
END UNTITLED;
