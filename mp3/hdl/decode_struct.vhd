-- VHDL Entity ece411.DECODE.interface
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

ENTITY DECODE IS
   PORT( 
      CLK                 : IN     std_logic;
      DECODE_PC_PLUS2     : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      Decode_PC_OUT       : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      IR_IN               : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      RESET_L             : IN     STD_LOGIC;
      STALL_L             : IN     std_logic;
      CONTROL_WORD        : OUT    LC3B_DWORD;
      DECODE_PC_PLUS2_OUT : OUT    LC3B_WORD;
      DEC_PC_OUT          : OUT    LC3B_WORD;
      DR_OUT              : OUT    STD_LOGIC_VECTOR (2 DOWNTO 0);
      SR1MUXSel           : OUT    STD_LOGIC;
      SR1_OUT             : OUT    LC3B_REG;
      SR2MUXSel           : OUT    STD_LOGIC;
      SR2_OUT             : OUT    LC3B_REG;
      SR2_OUT_MUXSel      : OUT    STD_LOGIC;
      offset11_F          : OUT    LC3B_WORD;
      offset5_F           : OUT    LC3B_WORD;
      offset5_SEXT        : OUT    LC3B_WORD;
      offset6_F           : OUT    LC3B_WORD;
      offset9_F           : OUT    LC3B_WORD
   );

-- Declarations

END DECODE ;

--
-- VHDL Architecture ece411.DECODE.struct
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


ARCHITECTURE struct OF DECODE IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL CINDEX   : LC3B_CWORD;
   SIGNAL IR11down : LC3B_OFFSET11;
   SIGNAL IR5down  : LC3B_IMM5;
   SIGNAL IR6down  : LC3B_INDEX6;
   SIGNAL IR9down  : LC3B_OFFSET9;

   -- Implicit buffer signal declarations
   SIGNAL CONTROL_WORD_internal : LC3B_DWORD;
   SIGNAL offset5_SEXT_internal : LC3B_WORD;


   -- Component Declarations
   COMPONENT BUF16
   PORT (
      WORDin  : IN     lc3b_word;
      WORDout : OUT    lc3b_word
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
   COMPONENT CONTROL_ROM
   PORT (
      CINDEX       : IN     LC3B_CWORD ;
      CONTROL_WORD : OUT    LC3B_DWORD 
   );
   END COMPONENT;
   COMPONENT IRSPLITTER
   PORT (
      IR_IN    : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      CINDEX   : OUT    LC3B_CWORD ;
      IR11down : OUT    LC3B_OFFSET11 ;
      IR9down  : OUT    LC3B_OFFSET9 ;
      IR6down  : OUT    LC3B_INDEX6 ;
      IR5down  : OUT    LC3B_IMM5 ;
      SR1_OUT  : OUT    LC3B_REG ;
      SR2_OUT  : OUT    LC3B_REG ;
      DR_OUT   : OUT    STD_LOGIC_VECTOR (2 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT OFFSET5_SHIFT
   PORT (
      offset5_SEXT : IN     LC3B_WORD ;
      offset5_F    : OUT    LC3B_WORD 
   );
   END COMPONENT;
   COMPONENT SEXT11
   PORT (
      IR11down   : IN     LC3B_OFFSET11 ;
      offset11_F : OUT    LC3B_WORD 
   );
   END COMPONENT;
   COMPONENT SEXT5
   PORT (
      IR5down      : IN     LC3B_IMM5 ;
      offset5_SEXT : OUT    LC3B_WORD 
   );
   END COMPONENT;
   COMPONENT SEXT6
   PORT (
      IR6down   : IN     LC3B_INDEX6 ;
      offset6_F : OUT    LC3B_WORD 
   );
   END COMPONENT;
   COMPONENT SEXT9
   PORT (
      IR9down   : IN     LC3B_OFFSET9 ;
      offset9_F : OUT    LC3B_WORD 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : BUF16 USE ENTITY ece411.BUF16;
   FOR ALL : CONTROL_RIPPER USE ENTITY ece411.CONTROL_RIPPER;
   FOR ALL : CONTROL_ROM USE ENTITY ece411.CONTROL_ROM;
   FOR ALL : IRSPLITTER USE ENTITY ece411.IRSPLITTER;
   FOR ALL : OFFSET5_SHIFT USE ENTITY ece411.OFFSET5_SHIFT;
   FOR ALL : SEXT11 USE ENTITY ece411.SEXT11;
   FOR ALL : SEXT5 USE ENTITY ece411.SEXT5;
   FOR ALL : SEXT6 USE ENTITY ece411.SEXT6;
   FOR ALL : SEXT9 USE ENTITY ece411.SEXT9;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_0 : BUF16
      PORT MAP (
         WORDin  => DECODE_PC_PLUS2,
         WORDout => DECODE_PC_PLUS2_OUT
      );
   U_1 : BUF16
      PORT MAP (
         WORDin  => Decode_PC_OUT,
         WORDout => DEC_PC_OUT
      );
   DECODE_CONTROL_RIPPER : CONTROL_RIPPER
      PORT MAP (
         CONTROL_WORD   => CONTROL_WORD_internal,
         ALUOP          => OPEN,
         BRen           => OPEN,
         WDATAMUXSel    => OPEN,
         MDRMUXSel      => OPEN,
         SR2MUXSel      => SR2MUXSel,
         SR1MUXSel      => SR1MUXSel,
         ADDR1MUXSel    => OPEN,
         ADDR2MUXSel    => OPEN,
         LD_REG         => OPEN,
         LDcc           => OPEN,
         SR2_OUT_MUXSel => SR2_OUT_MUXSel,
         MEM_READ_L     => OPEN,
         MEM_WRITEH_L   => OPEN,
         MEM_WRITEL_L   => OPEN
      );
   aCONTROL_ROM : CONTROL_ROM
      PORT MAP (
         CINDEX       => CINDEX,
         CONTROL_WORD => CONTROL_WORD_internal
      );
   aIRSPLITTER : IRSPLITTER
      PORT MAP (
         IR_IN    => IR_IN,
         CINDEX   => CINDEX,
         IR11down => IR11down,
         IR9down  => IR9down,
         IR6down  => IR6down,
         IR5down  => IR5down,
         SR1_OUT  => SR1_OUT,
         SR2_OUT  => SR2_OUT,
         DR_OUT   => DR_OUT
      );
   aOFFSET5_SHIFT : OFFSET5_SHIFT
      PORT MAP (
         offset5_SEXT => offset5_SEXT_internal,
         offset5_F    => offset5_F
      );
   aSEXT11 : SEXT11
      PORT MAP (
         IR11down   => IR11down,
         offset11_F => offset11_F
      );
   aSEXT5 : SEXT5
      PORT MAP (
         IR5down      => IR5down,
         offset5_SEXT => offset5_SEXT_internal
      );
   aSEXT6 : SEXT6
      PORT MAP (
         IR6down   => IR6down,
         offset6_F => offset6_F
      );
   aSEXT9 : SEXT9
      PORT MAP (
         IR9down   => IR9down,
         offset9_F => offset9_F
      );

   -- Implicit buffered output assignments
   CONTROL_WORD <= CONTROL_WORD_internal;
   offset5_SEXT <= offset5_SEXT_internal;

END struct;
