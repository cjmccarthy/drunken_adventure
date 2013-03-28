--
-- VHDL Architecture ece411.MyNotGate.untitled
--
-- Created:
--          by - hyunyi1.ews (gelib-057-09.ews.illinois.edu)
--          at - 12:33:16 03/28/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY MyNotGate IS
   PORT( 
      M_Stall : IN     STD_LOGIC;
      STALL_L : OUT    std_logic;
      CLK     : IN     std_logic
   );

-- Declarations

END MyNotGate ;

--
ARCHITECTURE untitled OF MyNotGate IS
BEGIN
  STALL_L<=NOT(M_STALL) after 1ns;
END ARCHITECTURE untitled;

