--
-- VHDL Architecture ece411.FlagArrayL1D.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-31.ews.illinois.edu)
--          at - 11:16:03 03/26/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
ENTITY FlagArrayL1D IS
   PORT( 
      Reset_L   : IN     std_logic;
      FlagWrite : IN     std_logic;
      Index     : IN     LC3B_C_INDEX;
      FlagIn    : IN     std_logic;--LC3B_OWORD;
      FlagOut   : OUT    std_logic--LC3B_OWORD
   );
-- Declarations
END FlagArrayL1D ;

--
ARCHITECTURE untitled OF FlagArrayL1D IS
	TYPE DataArray IS array (7 downto 0) of STD_LOGIC;--LC3B_OWORD;
	SIGNAL Data : DataArray;
	BEGIN
		--------------------------------------------------------------
		ReadFromDataArray : PROCESS (Data, Index)
		--------------------------------------------------------------
    
			VARIABLE DataIndex : integer;
			BEGIN
				DataIndex := to_integer(unsigned(Index));
				FlagOut <= Data(DataIndex) after 20 ns;
		
		END PROCESS ReadFromDataArray;
	
		--------------------------------------------------------------
		WriteToDataArray : PROCESS (RESET_L, Index, FlagWrite, FlagIn)
		-------------------------------------------------------	------	
			VARIABLE DataIndex : integer;
			BEGIN
				DataIndex := to_integer(unsigned(Index));
			IF RESET_L = '0' THEN
				Data(0) <= '0';--(OTHERS => 'X');
				Data(1) <= '0';--(OTHERS => 'X');
				Data(2) <= '0';--(OTHERS => 'X');
				Data(3) <= '0';--(OTHERS => 'X');
				Data(4) <= '0';--(OTHERS => 'X');
				Data(5) <= '0';--(OTHERS => 'X');
				Data(6) <= '0';--(OTHERS => 'X');
				Data(7) <= '0';--(OTHERS => 'X');
			END IF;

			IF (FlagWrite = '1') THEN
				Data(DataIndex) <= FlagIn;
			END IF;
		
		END PROCESS WriteToDataArray;
END ARCHITECTURE untitled;