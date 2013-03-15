-- VHDL Entity ece411.WRITEBACK.interface
--
-- Created:
--          by - hyunyi1.ews (evrt-252-05.ews.illinois.edu)
--          at - 21:58:54 03/14/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY WRITEBACK IS
   PORT( 
      CLK                : IN     std_logic;
      DR_WB_IN           : IN     lc3b_REG;
      RESET_L            : IN     STD_LOGIC;
      STALL_L            : IN     std_logic;
      WB_ALU_IN          : IN     LC3B_WORD;
      WB_CONTROL_WORD_IN : IN     LC3B_DWORD;
      WB_MDR_IN          : IN     LC3B_WORD;
      WB_PC_OUT          : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      DR                 : OUT    lc3b_reg;
      LD_REG             : OUT    STD_LOGIC;
      WDATA              : OUT    LC3B_WORD
   );

-- Declarations

END WRITEBACK ;

--
-- VHDL Architecture ece411.WRITEBACK.struct
--
-- Created:
--          by - hyunyi1.ews (evrt-252-05.ews.illinois.edu)
--          at - 21:58:54 03/14/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;


ARCHITECTURE struct OF WRITEBACK IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL WDATAMUXSel : STD_LOGIC;


   -- Component Declarations
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
   COMPONENT MUX2_16
   PORT (
      A   : IN     LC3B_WORD;
      B   : IN     LC3B_WORD;
      SEL : IN     STD_LOGIC;
      F   : OUT    LC3B_WORD
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : BUF3 USE ENTITY ece411.BUF3;
   FOR ALL : CONTROL_RIPPER USE ENTITY ece411.CONTROL_RIPPER;
   FOR ALL : MUX2_16 USE ENTITY ece411.MUX2_16;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_0 : BUF3
      PORT MAP (
         WORDin  => DR_WB_IN,
         WORDout => DR
      );
   WRITEBACK_CONTROL_RIPPER : CONTROL_RIPPER
      PORT MAP (
         CONTROL_WORD   => WB_CONTROL_WORD_IN,
         ALUOP          => OPEN,
         BRen           => OPEN,
         WDATAMUXSel    => WDATAMUXSel,
         MDRMUXSel      => OPEN,
         SR2MUXSel      => OPEN,
         SR1MUXSel      => OPEN,
         ADDR1MUXSel    => OPEN,
         ADDR2MUXSel    => OPEN,
         LD_REG         => LD_REG,
         LDcc           => OPEN,
         SR2_OUT_MUXSel => OPEN,
         MEM_READ_L     => OPEN,
         MEM_WRITEH_L   => OPEN,
         MEM_WRITEL_L   => OPEN
      );
   WDATAMUX : MUX2_16
      PORT MAP (
         A   => WB_ALU_IN,
         B   => WB_MDR_IN,
         SEL => WDATAMUXSel,
         F   => WDATA
      );

END struct;
