--
-- VHDL Architecture ece411.BUF3.untitled
--
-- Created:
--          by - hyunyi1.ews (gelib-057-37.ews.illinois.edu)
--          at - 14:03:59 03/12/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
USE ece411.LC3b_types.all;

ENTITY BUF3 IS
   PORT( 
      WORDin  : IN     std_logic_vector (2 DOWNTO 0);
      WORDout : OUT    std_logic_vector (2 DOWNTO 0)
   );

-- Declarations

END BUF3 ;

--
ARCHITECTURE untitled OF BUF3 IS
BEGIN
  WORDout<=WORDin;
END ARCHITECTURE untitled;

