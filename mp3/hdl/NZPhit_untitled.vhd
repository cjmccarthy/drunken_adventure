--
-- VHDL Architecture ece411.NZPhit.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-04.ews.illinois.edu)
--          at - 12:36:06 03/14/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY NZPhit IS
   PORT( 
      CCin  : IN     lc3b_cc;
      NZPin : IN     std_logic_vector(2 downto 0);
      Result: OUT    std_logic
   );

-- Declarations

END NZPhit ;

--
ARCHITECTURE untitled OF NZPhit IS
BEGIN
  Result<=(((CCin(0) AND NZPin(0))OR(CCin(1) AND NZPin (1)))OR(CCin(2) AND NZPin(2)))after 3ns;
END ARCHITECTURE untitled;

