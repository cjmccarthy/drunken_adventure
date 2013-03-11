--
-- VHDL Architecture ece411.BYTE_RIPPER.untitled
--
-- Created:
--          by - mccart18.ews (linux7.ews.illinois.edu)
--          at - 04:47:55 03/06/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY BYTE_RIPPER IS
   PORT( 
      SEL_BYTE : IN     LC3B_BYTE;
      S0       : OUT    std_logic;
      S1       : OUT    std_logic;
      S2       : OUT    std_logic;
      S3       : OUT    std_logic;
      S4       : OUT    std_logic;
      S5       : OUT    std_logic;
      S6       : OUT    std_logic;
      S7       : OUT    std_logic
   );

-- Declarations

END BYTE_RIPPER ;

--
ARCHITECTURE untitled OF BYTE_RIPPER IS
BEGIN
  S0 <= SEL_BYTE(0);
  S1 <= SEL_BYTE(1);
  S2 <= SEL_BYTE(2);
  S3 <= SEL_BYTE(3);
  S4 <= SEL_BYTE(4);
  S5 <= SEL_BYTE(5);
  S6 <= SEL_BYTE(6);
  S7 <= SEL_BYTE(7);
END ARCHITECTURE untitled;

