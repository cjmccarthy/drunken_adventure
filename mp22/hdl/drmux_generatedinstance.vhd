-- VHDL Entity ece411.DRMux.generatedInstance
--
-- Created:
--          by - mccart18.ews (gelib-057-33.ews.illinois.edu)
--          at - 04:50:02 02/19/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY DRMux IS
   PORT( 
      clk      : IN     std_logic;
      dest     : OUT    LC3b_reg;
      destIR   : IN     LC3b_reg;
      DRMuxSel : IN     std_logic
   );

END DRMux ;

-- 
-- Auto generated dummy architecture for leaf level instance.
-- 
ARCHITECTURE generatedInstance OF DRMux IS 
BEGIN


END generatedInstance;
