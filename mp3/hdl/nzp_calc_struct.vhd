-- VHDL Entity ece411.NZP_Calc.symbol
--
-- Created:
--          by - hyunyi1.ews (evrt-252-09.ews.illinois.edu)
--          at - 15:30:03 03/15/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY NZP_Calc IS
   PORT( 
      BR    : IN     STD_LOGIC;
      CCin  : IN     lc3b_cc;
      NZPin : IN     std_logic_vector (2 DOWNTO 0);
      BRSel : OUT    STD_LOGIC
   );

-- Declarations

END NZP_Calc ;

--
-- VHDL Architecture ece411.NZP_Calc.struct
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


ARCHITECTURE struct OF NZP_Calc IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL Result : std_logic;


   -- Component Declarations
   COMPONENT AND2
   PORT (
      A : IN     STD_LOGIC;
      B : IN     STD_LOGIC;
      F : OUT    STD_LOGIC
   );
   END COMPONENT;
   COMPONENT NZPhit
   PORT (
      CCin   : IN     lc3b_cc ;
      NZPin  : IN     std_logic_vector (2 DOWNTO 0);
      Result : OUT    std_logic 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : AND2 USE ENTITY ece411.AND2;
   FOR ALL : NZPhit USE ENTITY ece411.NZPhit;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_2 : AND2
      PORT MAP (
         A => Result,
         B => BR,
         F => BRSel
      );
   U_0 : NZPhit
      PORT MAP (
         CCin   => CCin,
         NZPin  => NZPin,
         Result => Result
      );

END struct;