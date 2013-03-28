-- VHDL Entity ece411.DMREAD_Calc.symbol
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

ENTITY DMREAD_Calc IS
   PORT( 
      CLK        : IN     STD_LOGIC;
      MEM_READ_L : IN     STD_LOGIC;
      MRESP_H    : IN     std_logic;
      RESET_L    : IN     STD_LOGIC;
      STALL_L    : IN     STD_LOGIC;
      MREAD_L    : OUT    STD_LOGIC
   );

-- Declarations

END DMREAD_Calc ;

--
-- VHDL Architecture ece411.DMREAD_Calc.struct
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


ARCHITECTURE struct OF DMREAD_Calc IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL BITout  : STD_LOGIC;
   SIGNAL DMReset : STD_LOGIC;
   SIGNAL F       : STD_LOGIC;

   -- Implicit buffer signal declarations
   SIGNAL MREAD_L_internal : STD_LOGIC;


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
   COMPONENT DMread_Reset
   PORT (
      MREAD_L : IN     STD_LOGIC ;
      MRESP_H : IN     std_logic ;
      STALL_L : IN     STD_LOGIC ;
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
   FOR ALL : DMread_Reset USE ENTITY ece411.DMread_Reset;
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
   U_0 : DMread_Reset
      PORT MAP (
         MREAD_L => MREAD_L_internal,
         MRESP_H => MRESP_H,
         STALL_L => STALL_L,
         DMReset => DMReset
      );
   U_2 : REG1_INVERTb
      PORT MAP (
         RESET_L => F,
         A       => MEM_READ_L,
         EN      => STALL_L,
         CLK     => BITout,
         F       => MREAD_L_internal
      );

   -- Implicit buffered output assignments
   MREAD_L <= MREAD_L_internal;

END struct;
