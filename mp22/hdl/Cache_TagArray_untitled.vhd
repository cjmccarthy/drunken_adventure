LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;
LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Cache_TagArray IS
   PORT( 
      Reset_L   : IN     std_logic;
      TagWrite : IN     std_logic;
      Index     : IN     LC3B_C_INDEX;
      TagIn    : IN     LC3B_C_TAG;
      TagOut   : OUT    LC3B_C_TAG
   );
-- Declarations
END Cache_TagArray ;

--
ARCHITECTURE untitled OF Cache_TagArray IS
	TYPE Cache_TagArray IS array (7 downto 0) of LC3B_C_TAG;
	SIGNAL Data : Cache_TagArray;
	BEGIN
		--------------------------------------------------------------
		ReadFromCache_TagArray : PROCESS (Data, Index)
		--------------------------------------------------------------
    
			VARIABLE TagIndex : integer;
			BEGIN
				TagIndex := to_integer(unsigned(Index));
				TagOut <= Data(TagIndex) after 20 ns;
		
		END PROCESS ReadFromCache_TagArray;
	
		--------------------------------------------------------------
		WriteToCache_TagArray : PROCESS (RESET_L, Index, TagWrite, TagIn)
		-------------------------------------------------------	------	
			VARIABLE TagIndex : integer;
			BEGIN
				TagIndex := to_integer(unsigned(Index));
			IF RESET_L = '0' THEN
				Data(0) <= (OTHERS => 'X');
				Data(1) <= (OTHERS => 'X');
				Data(2) <= (OTHERS => 'X');
				Data(3) <= (OTHERS => 'X');
				Data(4) <= (OTHERS => 'X');
				Data(5) <= (OTHERS => 'X');
				Data(6) <= (OTHERS => 'X');
				Data(7) <= (OTHERS => 'X');
			END IF;

			IF (TagWrite = '1') THEN
				Data(TagIndex) <= TagIn;
			END IF;
		
		END PROCESS WriteToCache_TagArray;
END ARCHITECTURE untitled;
