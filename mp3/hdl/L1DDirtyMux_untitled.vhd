--
-- VHDL Architecture ece411.L1DDirtyMux.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-10.ews.illinois.edu)
--          at - 21:30:11 03/27/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY L1DDirtyMux IS
   PORT( 
      BITin2 : OUT    STD_LOGIC;
      DSel   : IN     STD_LOGIC
   );

-- Declarations

END L1DDirtyMux ;

--
--
ARCHITECTURE untitled OF L1DDIRTYMUX IS
BEGIN
PROCESS (DSEL)
variable state : std_logic;
BEGIN
case (DSEL) is
  when '0' =>
   state := '0';
  when '1' =>
   state := '1';
  when others =>
   state := '0';
end case;
BITin2 <= state after delay_MUX2;
END PROCESS;
END ARCHITECTURE untitled;
