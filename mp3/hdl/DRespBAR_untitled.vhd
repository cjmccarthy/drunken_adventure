--
-- VHDL Architecture ece411.DRespBAR.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-37.ews.illinois.edu)
--          at - 20:07:12 03/25/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY DRespBAR IS
   PORT( 
      IB_out  : IN     STD_LOGIC;
      MResp_H : IN     STD_LOGIC;
      F2      : OUT    STD_LOGIC
   );

-- Declarations

END DRespBAR ;

--
ARCHITECTURE untitled OF DRespBAR IS
BEGIN
  F2<=(MResp_H NAND NOT(IB_out)) after CLOCK_PERIOD;--delay_logic3;
END ARCHITECTURE untitled;

