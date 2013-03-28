--
-- VHDL Architecture ece411.IRespBAR.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-37.ews.illinois.edu)
--          at - 20:05:36 03/25/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY IRespBAR IS
   PORT( 
      IB_out  : IN     STD_LOGIC;
      MResp_H : IN     STD_LOGIC;
      F3      : OUT    STD_LOGIC
   );

-- Declarations

END IRespBAR ;

--
ARCHITECTURE untitled OF IRespBAR IS
BEGIN
  F3<=(IB_out NAND MResp_H) after CLOCK_PERIOD;--delay_logic2;
END ARCHITECTURE untitled;

