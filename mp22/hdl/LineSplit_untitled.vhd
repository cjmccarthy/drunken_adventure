--
-- VHDL Architecture ece411.LineSplit.untitled
--
-- Created:
--          by - mccart18.ews (linux7.ews.illinois.edu)
--          at - 04:52:25 03/06/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY LineSplit IS
   PORT( 
      OldLine : IN     std_logic;
      sig0    : OUT    std_logic;
      sig1    : OUT    std_logic;
      sig2    : OUT    std_logic;
      sig3    : OUT    std_logic;
      sig4    : OUT    std_logic;
      sig5    : OUT    std_logic;
      sig6    : OUT    std_logic;
      sig7    : OUT    std_logic
   );

-- Declarations

END LineSplit ;

--
ARCHITECTURE untitled OF LineSplit IS
BEGIN
END ARCHITECTURE untitled;

