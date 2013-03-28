--
-- VHDL Architecture ece411.TagArrayL1I.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-31.ews.illinois.edu)
--          at - 11:19:35 03/26/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY TagArrayL1I IS
   PORT( 
      Reset_L   : IN     std_logic;
      TagWrite : IN     std_logic;
      Index     : IN     LC3B_C_INDEX;
      TagIn    : IN     LC3B_C_TAG;
      TagOut   : OUT    LC3B_C_TAG
   );
-- Declarations
END TagArrayL1I ;

--
ARCHITECTURE untitled OF TagArrayL1I IS
	TYPE DataArray IS array (7 downto 0) of LC3B_C_TAG;
	SIGNAL Data : DataArray;
	BEGIN
		--------------------------------------------------------------
		ReadFromDataArray : PROCESS (Data, Index)
		--------------------------------------------------------------
    
			VARIABLE DataIndex : integer;
			BEGIN
				DataIndex := to_integer(unsigned(Index));
				TagOut <= Data(DataIndex) after 14 ns;
		
		END PROCESS ReadFromDataArray;
	
		--------------------------------------------------------------
		WriteToDataArray : PROCESS (RESET_L, Index, TagWrite, TagIn)
		-------------------------------------------------------	------	
			VARIABLE DataIndex : integer;
			BEGIN
				DataIndex := to_integer(unsigned(Index));
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
				Data(DataIndex) <= TagIn;
			END IF;
		
		END PROCESS WriteToDataArray;
END ARCHITECTURE untitled;
