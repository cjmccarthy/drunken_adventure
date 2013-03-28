--
-- VHDL Architecture ece411.MUX8_16.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-31.ews.illinois.edu)
--          at - 11:42:13 03/26/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY MUX8_16 IS
PORT( 
	A   : IN     LC3B_WORD;
	B   : IN     LC3B_WORD;
	C   : IN     LC3B_WORD;
	D   : IN     LC3B_WORD;
	E   : IN     LC3B_WORD;
	F   : IN     LC3B_WORD;
	G   : IN     LC3B_WORD;
	H   : IN     LC3B_WORD;
	SEL : IN     STD_LOGIC_VECTOR (2 DOWNTO 0);
	I   : OUT    LC3B_WORD
);
-- DECLARATIONS
END MUX8_16 ;

-- HDS INTERFACE_END
ARCHITECTURE UNTITLED OF MUX8_16 IS
SIGNAL TEMP : LC3B_WORD;
BEGIN
	MUX8_16: PROCESS(A, B, C, D, E,F,G,H, SEL)
	BEGIN
		CASE SEL IS
		WHEN "000" =>
			TEMP <= A;
		WHEN "001" =>
			TEMP <= B;
		WHEN "010" =>
			TEMP <= C;
		WHEN "011" =>
			TEMP <= D;
		WHEN "100" =>
			TEMP <= E;
		WHEN "101" =>
			TEMP <= F;
		WHEN "110" =>
			TEMP <= G;
		WHEN "111" =>
			TEMP <= H;
		WHEN OTHERS =>
			TEMP <= (OTHERS => 'X');
		END CASE;
	END PROCESS MUX8_16;
	I <= TEMP AFTER DELAY_MUX8;
END UNTITLED;