--
-- VHDL Architecture ece411.Delayer.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-10.ews.illinois.edu)
--          at - 19:14:59 03/26/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Delayer IS
   PORT( 
      MREAD_L    : IN     std_logic;
      MWRITEH_L  : IN     std_logic;
      MWRITEL_L  : IN     std_logic;
      dMREAD_L   : OUT    STD_LOGIC;
      dMWRITEH_L : OUT    STD_LOGIC;
      dMWRITEL_L : OUT    STD_LOGIC
   );

-- Declarations

END Delayer ;

--
ARCHITECTURE untitled OF Delayer IS
BEGIN
  dMREAD_L<=MREAD_L after 18ns;
  dMWRITEH_L<=MWRITEH_L after 18ns;
  dMWRITEL_L<=MWRITEL_L after 18ns;
END ARCHITECTURE untitled;

