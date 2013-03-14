-- VHDL Entity ece411.EXECUTE_MEM_LATCH.interface
--
-- Created:
--          by - hyunyi1.ews (evrt-252-04.ews.illinois.edu)
--          at - 13:24:57 03/14/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY EXECUTE_MEM_LATCH IS
   PORT( 
      ALU_OUT                  : IN     LC3B_WORD;
      CCout                    : IN     LC3b_cc;
      CLK                      : IN     std_logic;
      DR_EXECUTE_OUT           : IN     STD_LOGIC_VECTOR (2 DOWNTO 0);
      EXECUTE_CONTROL_WORD_OUT : IN     lc3b_word;
      EXEC_ADDR                : IN     LC3B_WORD;
      EX_PC_OUT                : IN     LC3B_WORD;
      RESET_L                  : IN     STD_LOGIC;
      STALL_L                  : IN     std_logic;
      DR_MEM_IN                : OUT    STD_LOGIC_VECTOR (2 DOWNTO 0);
      EXEC_ADDR_MEM            : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0);
      MEM_ALU_IN               : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0);
      MEM_CC_IN                : OUT    STD_LOGIC_VECTOR (2 DOWNTO 0);
      MEM_CONTROL_WORD_IN      : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0);
      MEM_PC_OUT               : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0)
   );

-- Declarations

END EXECUTE_MEM_LATCH ;

--
-- VHDL Architecture ece411.EXECUTE_MEM_LATCH.struct
--
-- Created:
--          by - hyunyi1.ews (evrt-252-04.ews.illinois.edu)
--          at - 13:24:57 03/14/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;


ARCHITECTURE struct OF EXECUTE_MEM_LATCH IS

   -- Architecture declarations

   -- Internal signal declarations


   -- Component Declarations
   COMPONENT CWORD_REG16
   PORT (
      A       : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      CLK     : IN     STD_LOGIC;
      EN      : IN     STD_LOGIC;
      RESET_L : IN     STD_LOGIC;
      F       : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0)
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
   FOR ALL : CWORD_REG16 USE ENTITY ece411.CWORD_REG16;
   FOR ALL : REG16 USE ENTITY ece411.REG16;
   FOR ALL : REG3 USE ENTITY ece411.REG3;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_0 : CWORD_REG16
      PORT MAP (
         RESET_L => RESET_L,
         A       => EXECUTE_CONTROL_WORD_OUT,
         EN      => STALL_L,
         CLK     => CLK,
         F       => MEM_CONTROL_WORD_IN
      );
   U_5 : REG16
      PORT MAP (
         RESET_L => RESET_L,
         A       => EXEC_ADDR,
         EN      => STALL_L,
         CLK     => CLK,
         F       => EXEC_ADDR_MEM
      );
   U_6 : REG16
      PORT MAP (
         RESET_L => RESET_L,
         A       => ALU_OUT,
         EN      => STALL_L,
         CLK     => CLK,
         F       => MEM_ALU_IN
      );
   U_8 : REG16
      PORT MAP (
         RESET_L => RESET_L,
         A       => EX_PC_OUT,
         EN      => STALL_L,
         CLK     => CLK,
         F       => MEM_PC_OUT
      );
   U_7 : REG3
      PORT MAP (
         RESET_L => RESET_L,
         A       => DR_EXECUTE_OUT,
         EN      => STALL_L,
         CLK     => CLK,
         F       => DR_MEM_IN
      );
   U_9 : REG3
      PORT MAP (
         RESET_L => RESET_L,
         A       => CCout,
         EN      => STALL_L,
         CLK     => CLK,
         F       => MEM_CC_IN
      );

END struct;
