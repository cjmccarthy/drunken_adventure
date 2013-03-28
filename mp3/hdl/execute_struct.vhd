-- VHDL Entity ece411.EXECUTE.interface
--
-- Created:
--          by - hyunyi1.ews (evrt-252-09.ews.illinois.edu)
--          at - 15:30:02 03/15/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY EXECUTE IS
   PORT( 
      CLK                      : IN     std_logic;
      DR_EXECUTE_IN            : IN     STD_LOGIC_VECTOR (2 DOWNTO 0);
      EXECUTE_CONTROL_WORD_IN  : IN     STD_LOGIC_VECTOR (31 DOWNTO 0);
      EXECUTE_PC_OUT           : IN     LC3B_WORD;
      EXECUTE_PC_PLUS2_IN      : IN     LC3B_WORD;
      RESET_L                  : IN     STD_LOGIC;
      SR1                      : IN     LC3B_WORD;
      SR2                      : IN     LC3B_WORD;
      STALL_L                  : IN     std_logic;
      offset11                 : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      offset5                  : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      offset6                  : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      offset9                  : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      ALU_OUT                  : OUT    LC3B_WORD;
      CCout                    : OUT    LC3b_cc;
      DR_EXECUTE_OUT           : OUT    STD_LOGIC_VECTOR (2 DOWNTO 0);
      EXECUTE_CONTROL_WORD_OUT : OUT    lc3b_Dword;
      EXEC_ADDR                : OUT    LC3B_WORD;
      EX_PC_OUT                : OUT    LC3B_WORD
   );

-- Declarations

END EXECUTE ;

--
-- VHDL Architecture ece411.EXECUTE.struct
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


ARCHITECTURE struct OF EXECUTE IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL ADDR1MUXSel  : LC3B_4MUX_SEL;
   SIGNAL ADDR1MUX_OUT : LC3B_WORD;
   SIGNAL ADDR2MUXSel  : LC3B_4MUX_SEL;
   SIGNAL ADDR2MUX_OUT : LC3B_WORD;
   SIGNAL ALUOP        : LC3B_ALUOP;
   SIGNAL LDcc         : STD_LOGIC;

   -- Implicit buffer signal declarations
   SIGNAL ALU_OUT_internal : LC3B_WORD;


   -- Component Declarations
   COMPONENT ADD16
   PORT (
      A : IN     LC3B_WORD;
      B : IN     LC3B_WORD;
      F : OUT    LC3B_WORD
   );
   END COMPONENT;
   COMPONENT ALU
   PORT (
      A     : IN     LC3B_WORD;
      ALUOP : IN     LC3B_ALUOP;
      B     : IN     LC3B_WORD;
      F     : OUT    LC3B_WORD
   );
   END COMPONENT;
   COMPONENT BUF16
   PORT (
      WORDin  : IN     lc3b_word;
      WORDout : OUT    lc3b_word
   );
   END COMPONENT;
   COMPONENT BUF3
   PORT (
      WORDin  : IN     std_logic_vector (2 DOWNTO 0);
      WORDout : OUT    std_logic_vector (2 DOWNTO 0)
   );
   END COMPONENT;
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
   COMPONENT GenCC
   PORT (
      ALU_IN   : IN     LC3b_word;
      GenCCout : OUT    LC3b_cc
   );
   END COMPONENT;
   COMPONENT MUX4_16
   PORT (
      A   : IN     LC3B_WORD;
      B   : IN     LC3B_WORD;
      C   : IN     LC3B_WORD;
      D   : IN     LC3B_WORD;
      SEL : IN     STD_LOGIC_VECTOR (1 DOWNTO 0);
      F   : OUT    LC3B_WORD
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : ADD16 USE ENTITY ece411.ADD16;
   FOR ALL : ALU USE ENTITY ece411.ALU;
   FOR ALL : BUF16 USE ENTITY ece411.BUF16;
   FOR ALL : BUF3 USE ENTITY ece411.BUF3;
   FOR ALL : CONTROL_RIPPER USE ENTITY ece411.CONTROL_RIPPER;
   FOR ALL : GenCC USE ENTITY ece411.GenCC;
   FOR ALL : MUX4_16 USE ENTITY ece411.MUX4_16;
   -- pragma synthesis_on


BEGIN
   -- Architecture concurrent statements
   -- HDL Embedded Text Block 1 eb1
   EXECUTE_CONTROL_WORD_OUT <= EXECUTE_CONTROL_WORD_IN;                                       


   -- Instance port mappings.
   BRadd : ADD16
      PORT MAP (
         A => ADDR2MUX_OUT,
         B => ADDR1MUX_OUT,
         F => EXEC_ADDR
      );
   aALU : ALU
      PORT MAP (
         A     => SR1,
         ALUOP => ALUOP,
         B     => SR2,
         F     => ALU_OUT_internal
      );
   U_3 : BUF16
      PORT MAP (
         WORDin  => EXECUTE_PC_OUT,
         WORDout => EX_PC_OUT
      );
   U_2 : BUF3
      PORT MAP (
         WORDin  => DR_EXECUTE_IN,
         WORDout => DR_EXECUTE_OUT
      );
   U_0 : CONTROL_RIPPER
      PORT MAP (
         CONTROL_WORD   => EXECUTE_CONTROL_WORD_IN,
         ALUOP          => ALUOP,
         BRen           => OPEN,
         WDATAMUXSel    => OPEN,
         MDRMUXSel      => OPEN,
         SR2MUXSel      => OPEN,
         SR1MUXSel      => OPEN,
         ADDR1MUXSel    => ADDR1MUXSel,
         ADDR2MUXSel    => ADDR2MUXSel,
         LD_REG         => OPEN,
         LDcc           => LDcc,
         SR2_OUT_MUXSel => OPEN,
         MEM_READ_L     => OPEN,
         MEM_WRITEH_L   => OPEN,
         MEM_WRITEL_L   => OPEN
      );
   aGenCC : GenCC
      PORT MAP (
         ALU_IN   => ALU_OUT_internal,
         GenCCout => CCout
      );
   ADDR2MUX : MUX4_16
      PORT MAP (
         A   => offset11,
         B   => offset9,
         C   => offset6,
         D   => offset5,
         SEL => ADDR2MUXSel,
         F   => ADDR2MUX_OUT
      );
   U_4 : MUX4_16
      PORT MAP (
         A   => EXECUTE_PC_PLUS2_IN,
         B   => SR1,
         C   => SR2,
         D   => SR2,
         SEL => ADDR1MUXSel,
         F   => ADDR1MUX_OUT
      );

   -- Implicit buffered output assignments
   ALU_OUT <= ALU_OUT_internal;

END struct;
