LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Cache_ValidArray IS
   PORT( 
      Reset_L   : IN     std_logic;
      ValidWrite : IN     std_logic;
      Index     : IN     LC3B_C_INDEX;
      ValidIn    : IN     std_logic;
      ValidOut   : OUT    std_logic
   );
-- Declarations
END Cache_ValidArray ;

--
ARCHITECTURE untitled OF Cache_ValidArray IS
	TYPE Cache_ValidArray IS array (7 downto 0) of std_logic;
	SIGNAL Data : Cache_ValidArray;
	BEGIN
		--------------------------------------------------------------
		ReadFromCache_ValidArray : PROCESS (Data, Index)
		--------------------------------------------------------------
    
			VARIABLE ValidIndex : integer;
			BEGIN
				ValidIndex := to_integer(unsigned(Index));
				ValidOut <= Data(ValidIndex) after 20 ns;
		
		END PROCESS ReadFromCache_ValidArray;
	
		--------------------------------------------------------------
		WriteToCache_ValidArray : PROCESS (RESET_L, Index, ValidWrite, ValidIn)
		-------------------------------------------------------	------	
			VARIABLE ValidIndex : integer;
			BEGIN
				ValidIndex := to_integer(unsigned(Index));
			IF RESET_L = '0' THEN
				Data(0) <= '0';
				Data(1) <= '0';
				Data(2) <= '0';
				Data(3) <= '0';
				Data(4) <= '0';
				Data(5) <= '0';
				Data(6) <= '0';
				Data(7) <= '0';
			END IF;

			IF (ValidWrite = '1') THEN
				Data(ValidIndex) <= ValidIn;
			END IF;
		
		END PROCESS WriteToCache_ValidArray;
END ARCHITECTURE untitled;
