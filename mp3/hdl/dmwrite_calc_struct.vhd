-- VHDL Entity ece411.DMWrite_Calc.symbol
--
-- Created:
--          by - hyunyi1.ews (gelib-057-09.ews.illinois.edu)
--          at - 22:31:18 03/28/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY DMWrite_Calc IS
   PORT( 
      CLK         : IN     STD_LOGIC;
      MEM_WRITE_L : IN     STD_LOGIC;
      MRESP_H     : IN     std_logic;
      RESET_L     : IN     STD_LOGIC;
      STALL_L     : IN     STD_LOGIC;
      WRITE_L     : OUT    std_logic
   );

-- Declarations

END DMWrite_Calc ;

--
-- VHDL Architecture ece411.DMWrite_Calc.struct
--
-- Created:
--          by - hyunyi1.ews (gelib-057-09.ews.illinois.edu)
--          at - 22:31:18 03/28/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;


ARCHITECTURE struct OF DMWrite_Calc IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL BITout  : STD_LOGIC;
   SIGNAL DMReset : STD_LOGIC;


   -- Component Declarations
   COMPONENT DM_Delay
   PORT (
      BITin  : IN     STD_LOGIC;
      BITout : OUT    STD_LOGIC
   );
   END COMPONENT;
   COMPONENT DMwrite_Reset
   PORT (
      MRESP_H : IN     std_logic ;
      RESET_L : IN     STD_LOGIC ;
      DMReset : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT REG1_INVERTb
   PORT (
      A       : IN     STD_LOGIC;
      CLK     : IN     STD_LOGIC;
      EN      : IN     STD_LOGIC;
      RESET_L : IN     STD_LOGIC;
      F       : OUT    STD_LOGIC
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : DM_Delay USE ENTITY ece411.DM_Delay;
   FOR ALL : DMwrite_Reset USE ENTITY ece411.DMwrite_Reset;
   FOR ALL : REG1_INVERTb USE ENTITY ece411.REG1_INVERTb;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_3 : DM_Delay
      PORT MAP (
         BITin  => CLK,
         BITout => BITout
      );
   U_2 : DMwrite_Reset
      PORT MAP (
         MRESP_H => MRESP_H,
         RESET_L => RESET_L,
         DMReset => DMReset
      );
   U_0 : REG1_INVERTb
      PORT MAP (
         RESET_L => DMReset,
         A       => MEM_WRITE_L,
         EN      => STALL_L,
         CLK     => BITout,
         F       => WRITE_L
      );

END struct;
