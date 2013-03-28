-- VHDL Entity ece411.DMWrite_Calc.symbol
--
-- Created:
--          by - hyunyi1.ews (evrt-252-09.ews.illinois.edu)
--          at - 15:30:04 03/15/13
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
--          by - hyunyi1.ews (evrt-252-09.ews.illinois.edu)
--          at - 15:30:04 03/15/13
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
   SIGNAL F       : STD_LOGIC;

   -- Implicit buffer signal declarations
   SIGNAL WRITE_L_internal : std_logic;


   -- Component Declarations
   COMPONENT AND2
   PORT (
      A : IN     STD_LOGIC;
      B : IN     STD_LOGIC;
      F : OUT    STD_LOGIC
   );
   END COMPONENT;
   COMPONENT DM_Delay
   PORT (
      BITin  : IN     STD_LOGIC;
      BITout : OUT    STD_LOGIC
   );
   END COMPONENT;
   COMPONENT DMwrite_Reset
   PORT (
      MRESP_H : IN     std_logic ;
      STALL_L : IN     STD_LOGIC ;
      WRITE_L : IN     std_logic ;
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
   FOR ALL : AND2 USE ENTITY ece411.AND2;
   FOR ALL : DM_Delay USE ENTITY ece411.DM_Delay;
   FOR ALL : DMwrite_Reset USE ENTITY ece411.DMwrite_Reset;
   FOR ALL : REG1_INVERTb USE ENTITY ece411.REG1_INVERTb;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_1 : AND2
      PORT MAP (
         A => RESET_L,
         B => DMReset,
         F => F
      );
   U_3 : DM_Delay
      PORT MAP (
         BITin  => CLK,
         BITout => BITout
      );
   U_2 : DMwrite_Reset
      PORT MAP (
         MRESP_H => MRESP_H,
         STALL_L => STALL_L,
         WRITE_L => WRITE_L_internal,
         DMReset => DMReset
      );
   U_0 : REG1_INVERTb
      PORT MAP (
         RESET_L => F,
         A       => MEM_WRITE_L,
         EN      => STALL_L,
         CLK     => BITout,
         F       => WRITE_L_internal
      );

   -- Implicit buffered output assignments
   WRITE_L <= WRITE_L_internal;

END struct;