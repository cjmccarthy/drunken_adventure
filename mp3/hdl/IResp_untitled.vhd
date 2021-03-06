--
-- VHDL Architecture ece411.IResp.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-37.ews.illinois.edu)
--          at - 20:11:23 03/25/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY IResp IS
   PORT( 
      IB_out   : IN     STD_LOGIC;
      MResp_H  : IN     STD_LOGIC;
      IPResp_H : OUT    STD_LOGIC
   );

-- Declarations

END IResp ;

--
ARCHITECTURE untitled OF IResp IS
BEGIN
  IPResp_H<= (MResp_H AND IB_out) after delay_logic2;
END ARCHITECTURE untitled;

