-- VHDL Entity ece411.DATAPATH.interface
--
-- Created:
--          by - mccart18.ews (evrt-252-12.ews.illinois.edu)
--          at - 21:46:55 03/14/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY DATAPATH IS
   PORT( 
      CLK         : IN     std_logic;
      D_MDATAIN   : IN     LC3B_WORD;
      D_MRESP_H   : IN     STD_LOGIC;
      I_DATAIN    : IN     LC3B_WORD;
      I_MRESP_H   : IN     STD_LOGIC;
      RESET_L     : IN     STD_LOGIC;
      STALL_L     : IN     std_logic;
      D_MADDR     : OUT    LC3B_WORD;
      D_MDATAOUT  : OUT    lc3b_word;
      D_MREAD_L   : OUT    std_logic;
      D_MWRITEH_L : OUT    std_logic;
      D_MWRITEL_L : OUT    std_logic;
      I_ADDR      : OUT    LC3B_WORD;
      I_MREAD_L   : OUT    std_logic
   );

-- Declarations

END DATAPATH ;

--
-- VHDL Architecture ece411.DATAPATH.struct
--
-- Created:
--          by - mccart18.ews (evrt-252-12.ews.illinois.edu)
--          at - 21:46:55 03/14/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;


ARCHITECTURE struct OF DATAPATH IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL ALU_OUT                  : LC3B_WORD;
   SIGNAL BRsel                    : STD_LOGIC;
   SIGNAL CCout                    : LC3b_cc;
   SIGNAL CONTROL_WORD             : LC3B_DWORD;
   SIGNAL DECODE_PC_PLUS2          : STD_LOGIC_VECTOR(15 DOWNTO 0);
   SIGNAL DECODE_PC_PLUS2_OUT      : LC3B_WORD;
   SIGNAL DEC_PC_OUT               : LC3B_WORD;
   SIGNAL DR                       : lc3b_reg;
   SIGNAL DR_EXECUTE_IN            : STD_LOGIC_VECTOR(2 DOWNTO 0);
   SIGNAL DR_EXECUTE_OUT           : STD_LOGIC_VECTOR(2 DOWNTO 0);
   SIGNAL DR_MEM_IN                : STD_LOGIC_VECTOR(2 DOWNTO 0);
   SIGNAL DR_MEM_OUT               : std_logic_vector(2 DOWNTO 0);
   SIGNAL DR_OUT                   : STD_LOGIC_VECTOR(2 DOWNTO 0);
   SIGNAL DR_WB_IN                 : lc3b_REG;
   SIGNAL Decode_PC_OUT            : STD_LOGIC_VECTOR(15 DOWNTO 0);
   SIGNAL EXECUTE_CONTROL_WORD_IN  : STD_LOGIC_VECTOR(31 DOWNTO 0);
   SIGNAL EXECUTE_CONTROL_WORD_OUT : lc3b_Dword;
   SIGNAL EXECUTE_PC_OUT           : LC3B_WORD;
   SIGNAL EXECUTE_PC_PLUS2_IN      : LC3B_WORD;
   SIGNAL EXEC_ADDR                : LC3B_WORD;
   SIGNAL EXEC_ADDR_MEM            : STD_LOGIC_VECTOR(15 DOWNTO 0);
   SIGNAL EX_PC_OUT                : LC3B_WORD;
   SIGNAL IR_IN                    : STD_LOGIC_VECTOR(15 DOWNTO 0);
   SIGNAL IR_OUT                   : LC3B_WORD;
   SIGNAL LD_REG                   : STD_LOGIC;
   SIGNAL MDROUT                   : LC3B_WORD;
   SIGNAL MEM_ALU_IN               : STD_LOGIC_VECTOR(15 DOWNTO 0);
   SIGNAL MEM_ALU_OUT              : lc3b_word;
   SIGNAL MEM_CC_IN                : STD_LOGIC_VECTOR(2 DOWNTO 0);
   SIGNAL MEM_CONTROL_WORD_IN      : STD_LOGIC_VECTOR(31 DOWNTO 0);
   SIGNAL MEM_CONTROL_WORD_OUT     : lc3b_dword;
   SIGNAL MEM_PC_OUT               : STD_LOGIC_VECTOR(15 DOWNTO 0);
   SIGNAL M_PC_OUT                 : LC3B_WORD;
   SIGNAL PC_PLUS2                 : LC3B_WORD;
   SIGNAL SR1                      : LC3B_WORD;
   SIGNAL SR1MUXSel                : STD_LOGIC;
   SIGNAL SR1MUX_OUT               : LC3B_REG;
   SIGNAL SR1_F                    : LC3B_WORD;
   SIGNAL SR1_OUT                  : LC3B_REG;
   SIGNAL SR2                      : LC3B_WORD;
   SIGNAL SR2MUXSel                : STD_LOGIC;
   SIGNAL SR2MUX_OUT               : LC3B_REG;
   SIGNAL SR2_F                    : LC3B_WORD;
   SIGNAL SR2_OUT                  : LC3B_REG;
   SIGNAL SR2_OUT_MUXSel           : STD_LOGIC;
   SIGNAL SR2_R                    : LC3B_WORD;
   SIGNAL WB_ALU_IN                : LC3B_WORD;
   SIGNAL WB_CONTROL_WORD_IN       : LC3B_DWORD;
   SIGNAL WB_MDR_IN                : LC3B_WORD;
   SIGNAL WB_PC_OUT                : STD_LOGIC_VECTOR(15 DOWNTO 0);
   SIGNAL WDATA                    : LC3B_WORD;
   SIGNAL offset11                 : STD_LOGIC_VECTOR(15 DOWNTO 0);
   SIGNAL offset11_F               : LC3B_WORD;
   SIGNAL offset5                  : STD_LOGIC_VECTOR(15 DOWNTO 0);
   SIGNAL offset5_F                : LC3B_WORD;
   SIGNAL offset5_SEXT             : LC3B_WORD;
   SIGNAL offset6                  : STD_LOGIC_VECTOR(15 DOWNTO 0);
   SIGNAL offset6_F                : LC3B_WORD;
   SIGNAL offset9                  : STD_LOGIC_VECTOR(15 DOWNTO 0);
   SIGNAL offset9_F                : LC3B_WORD;

   -- Implicit buffer signal declarations
   SIGNAL I_ADDR_internal : LC3B_WORD;


   -- Component Declarations
   COMPONENT DECODE
   PORT (
      CLK                 : IN     std_logic ;
      DECODE_PC_PLUS2     : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      Decode_PC_OUT       : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      IR_IN               : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      RESET_L             : IN     STD_LOGIC ;
      STALL_L             : IN     std_logic ;
      CONTROL_WORD        : OUT    LC3B_DWORD ;
      DECODE_PC_PLUS2_OUT : OUT    LC3B_WORD ;
      DEC_PC_OUT          : OUT    LC3B_WORD ;
      DR_OUT              : OUT    STD_LOGIC_VECTOR (2 DOWNTO 0);
      SR1MUXSel           : OUT    STD_LOGIC ;
      SR1_OUT             : OUT    LC3B_REG ;
      SR2MUXSel           : OUT    STD_LOGIC ;
      SR2_OUT             : OUT    LC3B_REG ;
      SR2_OUT_MUXSel      : OUT    STD_LOGIC ;
      offset11_F          : OUT    LC3B_WORD ;
      offset5_F           : OUT    LC3B_WORD ;
      offset5_SEXT        : OUT    LC3B_WORD ;
      offset6_F           : OUT    LC3B_WORD ;
      offset9_F           : OUT    LC3B_WORD 
   );
   END COMPONENT;
   COMPONENT DECODE_EXECUTE_LATCH
   PORT (
      CLK                     : IN     std_logic ;
      CONTROL_WORD            : IN     LC3B_DWORD ;
      DECODE_PC_PLUS2_OUT     : IN     LC3B_WORD ;
      DEC_PC_OUT              : IN     LC3B_WORD ;
      DR_OUT                  : IN     STD_LOGIC_VECTOR (2 DOWNTO 0);
      RESET_L                 : IN     STD_LOGIC ;
      SR1_F                   : IN     LC3B_WORD ;
      SR2_F                   : IN     LC3B_WORD ;
      STALL_L                 : IN     std_logic ;
      offset11_F              : IN     LC3B_WORD ;
      offset5_F               : IN     LC3B_WORD ;
      offset6_F               : IN     LC3B_WORD ;
      offset9_F               : IN     LC3B_WORD ;
      DR_EXECUTE_IN           : OUT    STD_LOGIC_VECTOR (2 DOWNTO 0);
      EXECUTE_CONTROL_WORD_IN : OUT    STD_LOGIC_VECTOR (31 DOWNTO 0);
      EXECUTE_PC_OUT          : OUT    LC3B_WORD ;
      EXECUTE_PC_PLUS2_IN     : OUT    LC3B_WORD ;
      SR1                     : OUT    LC3B_WORD ;
      SR2                     : OUT    LC3B_WORD ;
      offset11                : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0);
      offset5                 : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0);
      offset6                 : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0);
      offset9                 : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT EXECUTE
   PORT (
      CLK                      : IN     std_logic ;
      DR_EXECUTE_IN            : IN     STD_LOGIC_VECTOR (2 DOWNTO 0);
      EXECUTE_CONTROL_WORD_IN  : IN     STD_LOGIC_VECTOR (31 DOWNTO 0);
      EXECUTE_PC_OUT           : IN     LC3B_WORD ;
      EXECUTE_PC_PLUS2_IN      : IN     LC3B_WORD ;
      RESET_L                  : IN     STD_LOGIC ;
      SR1                      : IN     LC3B_WORD ;
      SR2                      : IN     LC3B_WORD ;
      STALL_L                  : IN     std_logic ;
      offset11                 : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      offset5                  : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      offset6                  : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      offset9                  : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      ALU_OUT                  : OUT    LC3B_WORD ;
      CCout                    : OUT    LC3b_cc ;
      DR_EXECUTE_OUT           : OUT    STD_LOGIC_VECTOR (2 DOWNTO 0);
      EXECUTE_CONTROL_WORD_OUT : OUT    lc3b_Dword ;
      EXEC_ADDR                : OUT    LC3B_WORD ;
      EX_PC_OUT                : OUT    LC3B_WORD 
   );
   END COMPONENT;
   COMPONENT EXECUTE_MEM_LATCH
   PORT (
      ALU_OUT                  : IN     LC3B_WORD ;
      CCout                    : IN     LC3b_cc ;
      CLK                      : IN     std_logic ;
      DR_EXECUTE_OUT           : IN     STD_LOGIC_VECTOR (2 DOWNTO 0);
      EXECUTE_CONTROL_WORD_OUT : IN     lc3b_Dword ;
      EXEC_ADDR                : IN     LC3B_WORD ;
      EX_PC_OUT                : IN     LC3B_WORD ;
      RESET_L                  : IN     STD_LOGIC ;
      STALL_L                  : IN     std_logic ;
      DR_MEM_IN                : OUT    STD_LOGIC_VECTOR (2 DOWNTO 0);
      EXEC_ADDR_MEM            : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0);
      MEM_ALU_IN               : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0);
      MEM_CC_IN                : OUT    STD_LOGIC_VECTOR (2 DOWNTO 0);
      MEM_CONTROL_WORD_IN      : OUT    STD_LOGIC_VECTOR (31 DOWNTO 0);
      MEM_PC_OUT               : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT FETCH
   PORT (
      BRsel         : IN     STD_LOGIC ;
      CLK           : IN     std_logic ;
      EXEC_ADDR_MEM : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      I_DATAIN      : IN     LC3B_WORD ;
      I_MRESP_H     : IN     STD_LOGIC ;
      RESET_L       : IN     STD_LOGIC ;
      STALL_L       : IN     std_logic ;
      IR_OUT        : OUT    LC3B_WORD ;
      I_ADDR        : OUT    LC3B_WORD ;
      I_MREAD_L     : OUT    std_logic ;
      PC_PLUS2      : OUT    LC3B_WORD 
   );
   END COMPONENT;
   COMPONENT FETCH_DECODE_LATCH
   PORT (
      CLK             : IN     std_logic ;
      IR_OUT          : IN     LC3B_WORD ;
      I_ADDR          : IN     LC3B_WORD ;
      PC_PLUS2        : IN     LC3B_WORD ;
      RESET_L         : IN     STD_LOGIC ;
      STALL_L         : IN     std_logic ;
      DECODE_PC_PLUS2 : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0);
      Decode_PC_OUT   : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0);
      IR_IN           : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT MEM_ACCESS
   PORT (
      CLK                  : IN     std_logic ;
      DR_MEM_IN            : IN     STD_LOGIC_VECTOR (2 DOWNTO 0);
      D_MDATAIN            : IN     LC3B_WORD ;
      D_MRESP_H            : IN     STD_LOGIC ;
      EXEC_ADDR_MEM        : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      MEM_ALU_IN           : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      MEM_CC_IN            : IN     STD_LOGIC_VECTOR (2 DOWNTO 0);
      MEM_CONTROL_WORD_IN  : IN     STD_LOGIC_VECTOR (31 DOWNTO 0);
      MEM_PC_OUT           : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      RESET_L              : IN     STD_LOGIC ;
      STALL_L              : IN     std_logic ;
      BRsel                : OUT    STD_LOGIC ;
      DR_MEM_OUT           : OUT    std_logic_vector (2 DOWNTO 0);
      D_MADDR              : OUT    LC3B_WORD ;
      D_MDATAOUT           : OUT    lc3b_word ;
      D_MREAD_L            : OUT    std_logic ;
      D_MWRITEH_L          : OUT    std_logic ;
      D_MWRITEL_L          : OUT    std_logic ;
      MDROUT               : OUT    LC3B_WORD ;
      MEM_ALU_OUT          : OUT    lc3b_word ;
      MEM_CONTROL_WORD_OUT : OUT    lc3b_dword ;
      M_PC_OUT             : OUT    LC3B_WORD 
   );
   END COMPONENT;
   COMPONENT MEM_WRITEBACK_LATCH
   PORT (
      CLK                  : IN     std_logic ;
      DR_MEM_OUT           : IN     std_logic_vector (2 DOWNTO 0);
      MDROUT               : IN     LC3B_WORD ;
      MEM_ALU_OUT          : IN     lc3b_word ;
      MEM_CONTROL_WORD_OUT : IN     lc3b_dword ;
      M_PC_OUT             : IN     LC3B_WORD ;
      RESET_L              : IN     STD_LOGIC ;
      STALL_L              : IN     std_logic ;
      DR_WB_IN             : OUT    lc3b_REG ;
      WB_ALU_IN            : OUT    LC3B_WORD ;
      WB_CONTROL_WORD_IN   : OUT    LC3B_DWORD ;
      WB_MDR_IN            : OUT    LC3B_WORD ;
      WB_PC_OUT            : OUT    STD_LOGIC_VECTOR (15 DOWNTO 0)
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
   COMPONENT MUX2_3
   PORT (
      A   : IN     STD_LOGIC_VECTOR (2 DOWNTO 0);
      B   : IN     STD_LOGIC_VECTOR (2 DOWNTO 0);
      SEL : IN     STD_LOGIC;
      F   : OUT    STD_LOGIC_VECTOR (2 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT REGFILE
   PORT (
      CLK      : IN     STD_LOGIC;
      DEST     : IN     LC3B_REG;
      DIN      : IN     LC3B_WORD;
      REGWRITE : IN     STD_LOGIC;
      RESET_L  : IN     STD_LOGIC;
      SRCA     : IN     LC3B_REG;
      SRCB     : IN     LC3B_REG;
      A        : OUT    LC3B_WORD;
      B        : OUT    LC3B_WORD
   );
   END COMPONENT;
   COMPONENT WRITEBACK
   PORT (
      CLK                : IN     std_logic ;
      DR_WB_IN           : IN     lc3b_REG ;
      RESET_L            : IN     STD_LOGIC ;
      STALL_L            : IN     std_logic ;
      WB_ALU_IN          : IN     LC3B_WORD ;
      WB_CONTROL_WORD_IN : IN     LC3B_DWORD ;
      WB_MDR_IN          : IN     LC3B_WORD ;
      WB_PC_OUT          : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      DR                 : OUT    lc3b_reg ;
      LD_REG             : OUT    STD_LOGIC ;
      WDATA              : OUT    LC3B_WORD 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : DECODE USE ENTITY ece411.DECODE;
   FOR ALL : DECODE_EXECUTE_LATCH USE ENTITY ece411.DECODE_EXECUTE_LATCH;
   FOR ALL : EXECUTE USE ENTITY ece411.EXECUTE;
   FOR ALL : EXECUTE_MEM_LATCH USE ENTITY ece411.EXECUTE_MEM_LATCH;
   FOR ALL : FETCH USE ENTITY ece411.FETCH;
   FOR ALL : FETCH_DECODE_LATCH USE ENTITY ece411.FETCH_DECODE_LATCH;
   FOR ALL : MEM_ACCESS USE ENTITY ece411.MEM_ACCESS;
   FOR ALL : MEM_WRITEBACK_LATCH USE ENTITY ece411.MEM_WRITEBACK_LATCH;
   FOR ALL : MUX2_16 USE ENTITY ece411.MUX2_16;
   FOR ALL : MUX2_3 USE ENTITY ece411.MUX2_3;
   FOR ALL : REGFILE USE ENTITY ece411.REGFILE;
   FOR ALL : WRITEBACK USE ENTITY ece411.WRITEBACK;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   aDECODE : DECODE
      PORT MAP (
         CLK                 => CLK,
         DECODE_PC_PLUS2     => DECODE_PC_PLUS2,
         Decode_PC_OUT       => Decode_PC_OUT,
         IR_IN               => IR_IN,
         RESET_L             => RESET_L,
         STALL_L             => STALL_L,
         CONTROL_WORD        => CONTROL_WORD,
         DECODE_PC_PLUS2_OUT => DECODE_PC_PLUS2_OUT,
         DEC_PC_OUT          => DEC_PC_OUT,
         DR_OUT              => DR_OUT,
         SR1MUXSel           => SR1MUXSel,
         SR1_OUT             => SR1_OUT,
         SR2MUXSel           => SR2MUXSel,
         SR2_OUT             => SR2_OUT,
         SR2_OUT_MUXSel      => SR2_OUT_MUXSel,
         offset11_F          => offset11_F,
         offset5_F           => offset5_F,
         offset5_SEXT        => offset5_SEXT,
         offset6_F           => offset6_F,
         offset9_F           => offset9_F
      );
   aDECODE_EXECUTE_LATCH : DECODE_EXECUTE_LATCH
      PORT MAP (
         CLK                     => CLK,
         CONTROL_WORD            => CONTROL_WORD,
         DECODE_PC_PLUS2_OUT     => DECODE_PC_PLUS2_OUT,
         DEC_PC_OUT              => DEC_PC_OUT,
         DR_OUT                  => DR_OUT,
         RESET_L                 => RESET_L,
         SR1_F                   => SR1_F,
         SR2_F                   => SR2_F,
         STALL_L                 => STALL_L,
         offset11_F              => offset11_F,
         offset5_F               => offset5_F,
         offset6_F               => offset6_F,
         offset9_F               => offset9_F,
         DR_EXECUTE_IN           => DR_EXECUTE_IN,
         EXECUTE_CONTROL_WORD_IN => EXECUTE_CONTROL_WORD_IN,
         EXECUTE_PC_OUT          => EXECUTE_PC_OUT,
         EXECUTE_PC_PLUS2_IN     => EXECUTE_PC_PLUS2_IN,
         SR1                     => SR1,
         SR2                     => SR2,
         offset11                => offset11,
         offset5                 => offset5,
         offset6                 => offset6,
         offset9                 => offset9
      );
   aEXECUTE : EXECUTE
      PORT MAP (
         CLK                      => CLK,
         DR_EXECUTE_IN            => DR_EXECUTE_IN,
         EXECUTE_CONTROL_WORD_IN  => EXECUTE_CONTROL_WORD_IN,
         EXECUTE_PC_OUT           => EXECUTE_PC_OUT,
         EXECUTE_PC_PLUS2_IN      => EXECUTE_PC_PLUS2_IN,
         RESET_L                  => RESET_L,
         SR1                      => SR1,
         SR2                      => SR2,
         STALL_L                  => STALL_L,
         offset11                 => offset11,
         offset5                  => offset5,
         offset6                  => offset6,
         offset9                  => offset9,
         ALU_OUT                  => ALU_OUT,
         CCout                    => CCout,
         DR_EXECUTE_OUT           => DR_EXECUTE_OUT,
         EXECUTE_CONTROL_WORD_OUT => EXECUTE_CONTROL_WORD_OUT,
         EXEC_ADDR                => EXEC_ADDR,
         EX_PC_OUT                => EX_PC_OUT
      );
   aEXECUTE_MEM_LATCH : EXECUTE_MEM_LATCH
      PORT MAP (
         ALU_OUT                  => ALU_OUT,
         CCout                    => CCout,
         CLK                      => CLK,
         DR_EXECUTE_OUT           => DR_EXECUTE_OUT,
         EXECUTE_CONTROL_WORD_OUT => EXECUTE_CONTROL_WORD_OUT,
         EXEC_ADDR                => EXEC_ADDR,
         EX_PC_OUT                => EX_PC_OUT,
         RESET_L                  => RESET_L,
         STALL_L                  => STALL_L,
         DR_MEM_IN                => DR_MEM_IN,
         EXEC_ADDR_MEM            => EXEC_ADDR_MEM,
         MEM_ALU_IN               => MEM_ALU_IN,
         MEM_CC_IN                => MEM_CC_IN,
         MEM_CONTROL_WORD_IN      => MEM_CONTROL_WORD_IN,
         MEM_PC_OUT               => MEM_PC_OUT
      );
   aFETCH : FETCH
      PORT MAP (
         BRsel         => BRsel,
         CLK           => CLK,
         EXEC_ADDR_MEM => EXEC_ADDR_MEM,
         I_DATAIN      => I_DATAIN,
         I_MRESP_H     => I_MRESP_H,
         RESET_L       => RESET_L,
         STALL_L       => STALL_L,
         IR_OUT        => IR_OUT,
         I_ADDR        => I_ADDR_internal,
         I_MREAD_L     => I_MREAD_L,
         PC_PLUS2      => PC_PLUS2
      );
   aFETCH_DECODE_LATCH : FETCH_DECODE_LATCH
      PORT MAP (
         CLK             => CLK,
         IR_OUT          => IR_OUT,
         I_ADDR          => I_ADDR_internal,
         PC_PLUS2        => PC_PLUS2,
         RESET_L         => RESET_L,
         STALL_L         => STALL_L,
         DECODE_PC_PLUS2 => DECODE_PC_PLUS2,
         Decode_PC_OUT   => Decode_PC_OUT,
         IR_IN           => IR_IN
      );
   aMEM_ACCESS : MEM_ACCESS
      PORT MAP (
         CLK                  => CLK,
         DR_MEM_IN            => DR_MEM_IN,
         D_MDATAIN            => D_MDATAIN,
         D_MRESP_H            => D_MRESP_H,
         EXEC_ADDR_MEM        => EXEC_ADDR_MEM,
         MEM_ALU_IN           => MEM_ALU_IN,
         MEM_CC_IN            => MEM_CC_IN,
         MEM_CONTROL_WORD_IN  => MEM_CONTROL_WORD_IN,
         MEM_PC_OUT           => MEM_PC_OUT,
         RESET_L              => RESET_L,
         STALL_L              => STALL_L,
         BRsel                => BRsel,
         DR_MEM_OUT           => DR_MEM_OUT,
         D_MADDR              => D_MADDR,
         D_MDATAOUT           => D_MDATAOUT,
         D_MREAD_L            => D_MREAD_L,
         D_MWRITEH_L          => D_MWRITEH_L,
         D_MWRITEL_L          => D_MWRITEL_L,
         MDROUT               => MDROUT,
         MEM_ALU_OUT          => MEM_ALU_OUT,
         MEM_CONTROL_WORD_OUT => MEM_CONTROL_WORD_OUT,
         M_PC_OUT             => M_PC_OUT
      );
   aMEM_WRITEBACK_LATCH : MEM_WRITEBACK_LATCH
      PORT MAP (
         CLK                  => CLK,
         DR_MEM_OUT           => DR_MEM_OUT,
         MDROUT               => MDROUT,
         MEM_ALU_OUT          => MEM_ALU_OUT,
         MEM_CONTROL_WORD_OUT => MEM_CONTROL_WORD_OUT,
         M_PC_OUT             => M_PC_OUT,
         RESET_L              => RESET_L,
         STALL_L              => STALL_L,
         DR_WB_IN             => DR_WB_IN,
         WB_ALU_IN            => WB_ALU_IN,
         WB_CONTROL_WORD_IN   => WB_CONTROL_WORD_IN,
         WB_MDR_IN            => WB_MDR_IN,
         WB_PC_OUT            => WB_PC_OUT
      );
   SR2_OUT_MUX : MUX2_16
      PORT MAP (
         A   => SR2_R,
         B   => offset5_SEXT,
         SEL => SR2_OUT_MUXSel,
         F   => SR2_F
      );
   SR1MUX : MUX2_3
      PORT MAP (
         A   => SR1_OUT,
         B   => DR_OUT,
         SEL => SR1MUXSel,
         F   => SR1MUX_OUT
      );
   SR2MUX : MUX2_3
      PORT MAP (
         A   => SR2_OUT,
         B   => SR1_OUT,
         SEL => SR2MUXSel,
         F   => SR2MUX_OUT
      );
   MAIN_REG : REGFILE
      PORT MAP (
         CLK      => CLK,
         DEST     => DR,
         DIN      => WDATA,
         RESET_L  => RESET_L,
         REGWRITE => LD_REG,
         SRCA     => SR1MUX_OUT,
         SRCB     => SR2MUX_OUT,
         A        => SR1_F,
         B        => SR2_R
      );
   aWRITEBACK : WRITEBACK
      PORT MAP (
         CLK                => CLK,
         DR_WB_IN           => DR_WB_IN,
         RESET_L            => RESET_L,
         STALL_L            => STALL_L,
         WB_ALU_IN          => WB_ALU_IN,
         WB_CONTROL_WORD_IN => WB_CONTROL_WORD_IN,
         WB_MDR_IN          => WB_MDR_IN,
         WB_PC_OUT          => WB_PC_OUT,
         DR                 => DR,
         LD_REG             => LD_REG,
         WDATA              => WDATA
      );

   -- Implicit buffered output assignments
   I_ADDR <= I_ADDR_internal;

END struct;
