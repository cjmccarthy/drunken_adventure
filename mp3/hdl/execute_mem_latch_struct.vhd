-- VHDL Entity ece411.EXECUTE_MEM_LATCH.interface
--
-- Created:
--          by - hyunyi1.ews (gelib-057-09.ews.illinois.edu)
--          at - 22:31:17 03/28/13
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
      EXECUTE_CONTROL_WORD_OUT : IN     lc3b_Dword;
      EXEC_ADDR                : IN     LC3B_WORD;
      EX_PC_OUT                : IN     LC3B_WORD;
      RESET_L                  : IN     STD_LOGIC;
      STALL_L                  : IN     std_logic;
      DR_MEM_IN                : OUT    STD_LOGIC_VECTOR (2 DOWNTO 0);
      EXEC_ADDR_MEM            : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0);
      MEM_ALU_IN               : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0);
      MEM_CC_IN                : OUT    STD_LOGIC_VECTOR (2 DOWNTO 0);
      MEM_CONTROL_WORD_IN      : OUT    STD_LOGIC_VECTOR (31 DOWNTO 0);
      MEM_PC_OUT               : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0)
   );

-- Declarations

END EXECUTE_MEM_LATCH ;

--
-- VHDL Architecture ece411.EXECUTE_MEM_LATCH.struct
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

LIBRARY mp3lib;

ARCHITECTURE struct OF EXECUTE_MEM_LATCH IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL F    : STD_LOGIC;
   SIGNAL LDcc : STD_LOGIC;


   -- Component Declarations
   COMPONENT CONTROL_RIPPER
   PORT (
      CONTROL_WORD   : IN     LC3B_DWORD ;
      ALUOP          : OUT    LC3B_ALUOP ;
      BRen           : OUT    STD_LOGIC ;
      WDATAMUXSel    : OUT    STD_LOGIC ;
      MDRMUXSel      : OUT    STD_LOGIC ;
      SR2MUXSel      : OUT    STD_LOGIC ;
      SR1MUXSel      : OUT    STD_LOGIC ;
      ADDR1MUXSel    : OUT    LC3B_4MUX_SEL ;
      ADDR2MUXSel    : OUT    LC3B_4MUX_SEL ;
      LD_REG         : OUT    STD_LOGIC ;
      LDcc           : OUT    STD_LOGIC ;
      SR2_OUT_MUXSel : OUT    STD_LOGIC ;
      MEM_READ_L     : OUT    STD_LOGIC ;
      MEM_WRITEH_L   : OUT    STD_LOGIC ;
      MEM_WRITEL_L   : OUT    STD_LOGIC 
   );
   END COMPONENT;
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
   COMPONENT AND2
   PORT (
      A : IN     STD_LOGIC ;
      B : IN     STD_LOGIC ;
      F : OUT    STD_LOGIC 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : AND2 USE ENTITY mp3lib.AND2;
   FOR ALL : CONTROL_RIPPER USE ENTITY ece411.CONTROL_RIPPER;
   FOR ALL : CWORD_REG32 USE ENTITY ece411.CWORD_REG32;
   FOR ALL : REG16 USE ENTITY ece411.REG16;
   FOR ALL : REG3 USE ENTITY ece411.REG3;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_1 : CONTROL_RIPPER
      PORT MAP (
         CONTROL_WORD   => EXECUTE_CONTROL_WORD_OUT,
         ALUOP          => OPEN,
         BRen           => OPEN,
         WDATAMUXSel    => OPEN,
         MDRMUXSel      => OPEN,
         SR2MUXSel      => OPEN,
         SR1MUXSel      => OPEN,
         ADDR1MUXSel    => OPEN,
         ADDR2MUXSel    => OPEN,
         LD_REG         => OPEN,
         LDcc           => LDcc,
         SR2_OUT_MUXSel => OPEN,
         MEM_READ_L     => OPEN,
         MEM_WRITEH_L   => OPEN,
         MEM_WRITEL_L   => OPEN
      );
   U_0 : CWORD_REG32
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
         EN      => F,
         CLK     => CLK,
         F       => MEM_CC_IN
      );
   U_2 : AND2
      PORT MAP (
         A => STALL_L,
         B => LDcc,
         F => F
      );

END struct;
