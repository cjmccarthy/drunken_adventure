--
-- VHDL Architecture ece411.L1DWriteSel.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-10.ews.illinois.edu)
--          at - 21:26:14 03/27/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY L1DWriteSel IS
   PORT( 
      WSel_Out : OUT    STD_LOGIC;
      Hit1     : IN     STD_LOGIC;
      CacheHit : IN     STD_LOGIC;
      LRUout   : IN     std_logic
   );

-- Declarations

END L1DWriteSel ;

--
ARCHITECTURE untitled OF L1DWriteSel IS
BEGIN
  PROCESS(CacheHit,LRUout,Hit1)
  variable state : std_logic;
  BEGIN
  case CacheHit is
  when '0' =>
   state := LRUout;
  when '1' =>
    state := Hit1;
  when others =>
    state := '0';
  end case;
  WSel_Out<=state after delay_mux2;
END PROCESS;
END ARCHITECTURE untitled;
