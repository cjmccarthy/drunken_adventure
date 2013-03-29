-- VHDL Entity ece411.FETCH_DECODE_LATCH.interface
--
-- Created:
--          by - mccart18.ews (gelib-057-17.ews.illinois.edu)
--          at - 21:26:23 03/28/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY FETCH_DECODE_LATCH IS
   PORT( 
      CLK             : IN     std_logic;
      IR_OUT          : IN     LC3B_WORD;
      I_ADDR          : IN     LC3B_WORD;
      PC_PLUS2        : IN     LC3B_WORD;
      RESET_L         : IN     STD_LOGIC;
      STALL_L         : IN     std_logic;
      DECODE_PC_PLUS2 : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0);
      Decode_PC_OUT   : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0);
      IR_IN           : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0)
   );

-- Declarations

END FETCH_DECODE_LATCH ;

--
-- VHDL Architecture ece411.FETCH_DECODE_LATCH.struct
--
-- Created:
--          by - mccart18.ews (gelib-057-17.ews.illinois.edu)
--          at - 21:26:23 03/28/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;


ARCHITECTURE struct OF FETCH_DECODE_LATCH IS

   -- Architecture declarations

   -- Internal signal declarations


   -- Component Declarations
   COMPONENT REG16
   PORT (
      A       : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      CLK     : IN     STD_LOGIC;
      EN      : IN     STD_LOGIC;
      RESET_L : IN     STD_LOGIC;
      F       : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0)
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : REG16 USE ENTITY ece411.REG16;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_0 : REG16
      PORT MAP (
         RESET_L => RESET_L,
         A       => IR_OUT,
         EN      => STALL_L,
         CLK     => CLK,
         F       => IR_IN
      );
   U_1 : REG16
      PORT MAP (
         RESET_L => RESET_L,
         A       => PC_PLUS2,
         EN      => STALL_L,
         CLK     => CLK,
         F       => DECODE_PC_PLUS2
      );
   U_2 : REG16
      PORT MAP (
         RESET_L => RESET_L,
         A       => I_ADDR,
         EN      => STALL_L,
         CLK     => CLK,
         F       => Decode_PC_OUT
      );

END struct;
