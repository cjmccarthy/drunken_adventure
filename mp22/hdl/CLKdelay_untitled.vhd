--
-- VHDL Architecture ece411.CLKdelay.untitled
--
-- Created:
--          by - mccart18.ews (linux7.ews.illinois.edu)
--          at - 22:09:19 03/05/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY CLKdelay IS
  PORT(
    clk : IN  std_logic;
    clk_delayed  : out std_logic
  );
-- Declarations

END CLKdelay ;

--
ARCHITECTURE untitled OF CLKdelay IS
BEGIN
 
    clk_delayed <= clk'DELAYED(34 ns);
END ARCHITECTURE untitled;

