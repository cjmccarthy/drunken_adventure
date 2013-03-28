--
-- VHDL Architecture ece411.DResp.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-37.ews.illinois.edu)
--          at - 20:12:14 03/25/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY DResp IS
   PORT( 
      IB_out   : IN     STD_LOGIC;
      MResp_H  : IN     STD_LOGIC;
      DPResp_H : OUT    STD_LOGIC
   );

-- Declarations

END DResp ;

--
ARCHITECTURE untitled OF DResp IS
BEGIN
  DPResp_H<=(NOT(MResp_H) NOR IB_out) after delay_logic3;
END ARCHITECTURE untitled;

