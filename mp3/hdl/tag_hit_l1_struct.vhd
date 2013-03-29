-- VHDL Entity ece411.Tag_Hit_L1.symbol
--
-- Created:
--          by - hyunyi1.ews (gelib-057-09.ews.illinois.edu)
--          at - 22:31:20 03/28/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Tag_Hit_L1 IS
   PORT( 
      Tag1 : IN     lc3b_c_tag;
      Tag2 : IN     lc3b_c_tag;
      Hit  : OUT    STD_LOGIC
   );

-- Declarations

END Tag_Hit_L1 ;

--
-- VHDL Architecture ece411.Tag_Hit_L1.struct
--
-- Created:
--          by - hyunyi1.ews (gelib-057-09.ews.illinois.edu)
--          at - 22:31:20 03/28/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;


ARCHITECTURE struct OF Tag_Hit_L1 IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL B  : LC3B_WORD;
   SIGNAL B1 : LC3B_WORD;


   -- Component Declarations
   COMPONENT COMP16
   PORT (
      A : IN     LC3B_WORD;
      B : IN     LC3B_WORD;
      F : OUT    STD_LOGIC
   );
   END COMPONENT;
   COMPONENT Zext7
   PORT (
      A : IN     lc3b_c_tag;
      B : OUT    LC3B_WORD
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : COMP16 USE ENTITY ece411.COMP16;
   FOR ALL : Zext7 USE ENTITY ece411.Zext7;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_0 : COMP16
      PORT MAP (
         A => B,
         B => B1,
         F => Hit
      );
   U_1 : Zext7
      PORT MAP (
         A => Tag1,
         B => B
      );
   U_2 : Zext7
      PORT MAP (
         A => Tag2,
         B => B1
      );

END struct;
