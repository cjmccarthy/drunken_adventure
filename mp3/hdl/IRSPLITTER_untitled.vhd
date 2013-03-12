--
-- VHDL Architecture ece411.IRSPLITTER.untitled
--
-- Created:
--          by - mccart18.ews (gelib-057-16.ews.illinois.edu)
--          at - 02:08:33 03/12/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY IRSPLITTER IS
   PORT(
      IR_IN    : IN    LC3B_WORD; 
      CINDEX     : OUT   LC3B_CWORD;
      IR11down  : OUT   LC3B_OFFSET11;
      IR9down   : OUT   LC3B_OFFSET9;
      IR6down   : OUT   LC3B_OFFSET6;
      IR5down   : OUT   LC3B_OFFSET5;
      SR1_OUT   : OUT   LC3B_REG;
      SR2_OUT   : OUT   LC3B_REG;
      DR_OUT    : OUT   LC3B_REG
   );

-- Declarations

END IRSPLITTER ;

--
ARCHITECTURE untitled OF IRSPLITTER IS
BEGIN
  CWORD <= IR_IN(15 DOWNTO 12) & IR_IN(5) & "00" ;
  IR11down <= IR_IN(10 DOWNTO 0);
  IR9down <=  IR_IN(8 DOWNTO 0);
  IR6down <=  IR_IN(5 DOWNTO 0);
  IR5down <=  IR_IN(4 DOWNTO 0);
  SR1_OUT <=  IR_IN(8 DOWNTO 6);
  SR2_OUT <=  IR_IN(2 DOWNTO 0);
  DR_OUT  <=  IR_IN(11 DOWNTO 9);
END ARCHITECTURE untitled;

