-- VHDL Entity ece411.L1DWriteBack_Calc.symbol
--
-- Created:
--          by - hyunyi1.ews (gelib-057-09.ews.illinois.edu)
--          at - 22:31:21 03/28/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY L1DWriteBack_Calc IS
   PORT( 
      D0           : IN     STD_LOGIC;
      D1           : IN     STD_LOGIC;
      LRUin        : IN     STD_LOGIC;
      MRLin        : IN     std_logic;
      MWHLin       : IN     std_logic;
      MWLLin       : IN     std_logic;
      WriteBackOut : OUT    STD_LOGIC
   );

-- Declarations

END L1DWriteBack_Calc ;

--
-- VHDL Architecture ece411.L1DWriteBack_Calc.struct
--
-- Created:
--          by - hyunyi1.ews (gelib-057-09.ews.illinois.edu)
--          at - 22:31:21 03/28/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

LIBRARY mp3lib;

ARCHITECTURE struct OF L1DWriteBack_Calc IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL F          : STD_LOGIC;
   SIGNAL Mem_Access : STD_LOGIC;


   -- Component Declarations
   COMPONENT Mem_AccL1D
   PORT (
      MRLin      : IN     std_logic ;
      MWHLin     : IN     std_logic ;
      MWLLin     : IN     std_logic ;
      Mem_Access : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT AND2
   PORT (
      A : IN     STD_LOGIC ;
      B : IN     STD_LOGIC ;
      F : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT MUX2_1
   PORT (
      A   : IN     STD_LOGIC ;
      B   : IN     STD_LOGIC ;
      SEL : IN     STD_LOGIC ;
      F   : OUT    STD_LOGIC 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : AND2 USE ENTITY mp3lib.AND2;
   FOR ALL : MUX2_1 USE ENTITY mp3lib.MUX2_1;
   FOR ALL : Mem_AccL1D USE ENTITY ece411.Mem_AccL1D;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   aMem_Acc : Mem_AccL1D
      PORT MAP (
         MRLin      => MRLin,
         MWHLin     => MWHLin,
         MWLLin     => MWLLin,
         Mem_Access => Mem_Access
      );
   U_0 : AND2
      PORT MAP (
         A => Mem_Access,
         B => F,
         F => WriteBackOut
      );
   U_1 : MUX2_1
      PORT MAP (
         A   => D0,
         B   => D1,
         SEL => LRUin,
         F   => F
      );

END struct;
