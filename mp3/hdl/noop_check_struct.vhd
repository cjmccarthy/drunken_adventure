-- VHDL Entity ece411.NoOp_Check.symbol
--
-- Created:
--          by - mccart18.ews (evrt-252-12.ews.illinois.edu)
--          at - 16:22:09 03/14/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY NoOp_Check IS
   PORT( 
      CW_IN  : IN     LC3B_WORD;
      IR     : IN     LC3B_WORD;
      CW_OUT : OUT    LC3B_WORD
   );

-- Declarations

END NoOp_Check ;

--
-- VHDL Architecture ece411.NoOp_Check.struct
--
-- Created:
--          by - mccart18.ews (evrt-252-12.ews.illinois.edu)
--          at - 16:22:09 03/14/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;


ARCHITECTURE struct OF NoOp_Check IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL NoOp_CWout : LC3B_WORD;
   SIGNAL NoOp_IR    : LC3B_WORD;
   SIGNAL NoOp_Match : STD_LOGIC;


   -- Component Declarations
   COMPONENT COMP16
   PORT (
      A : IN     LC3B_WORD;
      B : IN     LC3B_WORD;
      F : OUT    STD_LOGIC
   );
   END COMPONENT;
   COMPONENT MUX2_16
   PORT (
      A   : IN     LC3B_WORD;
      B   : IN     LC3B_WORD;
      SEL : IN     STD_LOGIC;
      F   : OUT    LC3B_WORD
   );
   END COMPONENT;
   COMPONENT NOOP_CONST
   PORT (
      NoOp_IR : OUT    LC3B_WORD 
   );
   END COMPONENT;
   COMPONENT NOOP_CW
   PORT (
      NoOp_CWout : OUT    LC3B_WORD 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : COMP16 USE ENTITY ece411.COMP16;
   FOR ALL : MUX2_16 USE ENTITY ece411.MUX2_16;
   FOR ALL : NOOP_CONST USE ENTITY ece411.NOOP_CONST;
   FOR ALL : NOOP_CW USE ENTITY ece411.NOOP_CW;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_1 : COMP16
      PORT MAP (
         A => NoOp_IR,
         B => IR,
         F => NoOp_Match
      );
   U_0 : MUX2_16
      PORT MAP (
         A   => CW_IN,
         B   => NoOp_CWout,
         SEL => NoOp_Match,
         F   => CW_OUT
      );
   U_2 : NOOP_CONST
      PORT MAP (
         NoOp_IR => NoOp_IR
      );
   U_3 : NOOP_CW
      PORT MAP (
         NoOp_CWout => NoOp_CWout
      );

END struct;
