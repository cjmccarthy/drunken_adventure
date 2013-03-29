-- VHDL Entity ece411.MEM_WRITEBACK_LATCH.interface
--
-- Created:
--          by - hyunyi1.ews (gelib-057-09.ews.illinois.edu)
--          at - 21:04:23 03/28/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY MEM_WRITEBACK_LATCH IS
   PORT( 
      CLK                  : IN     std_logic;
      DR_MEM_OUT           : IN     std_logic_vector (2 DOWNTO 0);
      MDROUT               : IN     LC3B_WORD;
      MEM_ALU_OUT          : IN     lc3b_word;
      MEM_CONTROL_WORD_OUT : IN     lc3b_dword;
      M_PC_OUT             : IN     LC3B_WORD;
      RESET_L              : IN     STD_LOGIC;
      STALL_L              : IN     std_logic;
      DR_WB_IN             : OUT    lc3b_REG;
      WB_ALU_IN            : OUT    LC3B_WORD;
      WB_CONTROL_WORD_IN   : OUT    LC3B_DWORD;
      WB_MDR_IN            : OUT    LC3B_WORD;
      WB_PC_OUT            : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0)
   );

-- Declarations

END MEM_WRITEBACK_LATCH ;

--
-- VHDL Architecture ece411.MEM_WRITEBACK_LATCH.struct
--
-- Created:
--          by - hyunyi1.ews (gelib-057-09.ews.illinois.edu)
--          at - 21:04:23 03/28/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;


ARCHITECTURE struct OF MEM_WRITEBACK_LATCH IS

   -- Architecture declarations

   -- Internal signal declarations


   -- Component Declarations
   COMPONENT CWORD_REG32
   PORT (
      A       : IN     STD_LOGIC_VECTOR (31 DOWNTO 0);
      CLK     : IN     STD_LOGIC;
      EN      : IN     STD_LOGIC;
      RESET_L : IN     STD_LOGIC;
      F       : OUT    STD_LOGIC_VECTOR (31 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT REG16
   PORT (
      A       : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      CLK     : IN     STD_LOGIC;
      EN      : IN     STD_LOGIC;
      RESET_L : IN     STD_LOGIC;
      F       : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT REG3
   PORT (
      A       : IN     STD_LOGIC_VECTOR (2 DOWNTO 0);
      CLK     : IN     STD_LOGIC;
      EN      : IN     STD_LOGIC;
      RESET_L : IN     STD_LOGIC;
      F       : OUT    STD_LOGIC_VECTOR (2 DOWNTO 0)
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : CWORD_REG32 USE ENTITY ece411.CWORD_REG32;
   FOR ALL : REG16 USE ENTITY ece411.REG16;
   FOR ALL : REG3 USE ENTITY ece411.REG3;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_3 : CWORD_REG32
      PORT MAP (
         RESET_L => RESET_L,
         A       => MEM_CONTROL_WORD_OUT,
         EN      => STALL_L,
         CLK     => CLK,
         F       => WB_CONTROL_WORD_IN
      );
   U_0 : REG16
      PORT MAP (
         RESET_L => RESET_L,
         A       => MEM_ALU_OUT,
         EN      => STALL_L,
         CLK     => CLK,
         F       => WB_ALU_IN
      );
   U_2 : REG16
      PORT MAP (
         RESET_L => RESET_L,
         A       => MDROUT,
         EN      => STALL_L,
         CLK     => CLK,
         F       => WB_MDR_IN
      );
   U_4 : REG16
      PORT MAP (
         RESET_L => RESET_L,
         A       => M_PC_OUT,
         EN      => STALL_L,
         CLK     => CLK,
         F       => WB_PC_OUT
      );
   U_1 : REG3
      PORT MAP (
         RESET_L => RESET_L,
         A       => DR_MEM_OUT,
         EN      => STALL_L,
         CLK     => CLK,
         F       => DR_WB_IN
      );

END struct;
