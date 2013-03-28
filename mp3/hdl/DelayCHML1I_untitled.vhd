--
-- VHDL Architecture ece411.DelayCHML1I.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-10.ews.illinois.edu)
--          at - 20:14:34 03/26/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY DelayCHML1I IS
   PORT( 
      MREAD_L  : IN     std_logic;
      dMREAD_L : OUT    STD_LOGIC
   );

-- Declarations

END DelayCHML1I ;

--
ARCHITECTURE untitled OF DelayCHML1I IS
BEGIN
  dMREAD_L<=MREAD_L after 18ns;
END ARCHITECTURE untitled;

