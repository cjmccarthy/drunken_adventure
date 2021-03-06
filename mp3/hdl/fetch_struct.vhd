-- VHDL Entity ece411.FETCH.interface
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

ENTITY FETCH IS
   PORT( 
      BRsel         : IN     STD_LOGIC;
      CLK           : IN     std_logic;
      EXEC_ADDR_MEM : IN     STD_LOGIC_VECTOR (15 DOWNTO 0);
      I_DATAIN      : IN     LC3B_WORD;
      I_MRESP_H     : IN     STD_LOGIC;
      RESET_L       : IN     STD_LOGIC;
      STALL_L       : IN     std_logic;
      IR_OUT        : OUT    LC3B_WORD;
      I_ADDR        : OUT    LC3B_WORD;
      I_MREAD_L     : OUT    std_logic;
      PC_PLUS2      : OUT    LC3B_WORD
   );

-- Declarations

END FETCH ;

--
-- VHDL Architecture ece411.FETCH.struct
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

ARCHITECTURE struct OF FETCH IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL B      : STD_LOGIC;
   SIGNAL F      : STD_LOGIC;
   SIGNAL PC_IN  : LC3B_WORD;
   SIGNAL PC_OUT : LC3B_WORD;

   -- Implicit buffer signal declarations
   SIGNAL I_MREAD_L_internal : std_logic;
   SIGNAL PC_PLUS2_internal  : LC3B_WORD;


   -- Component Declarations
   COMPONENT BUF16
   PORT (
      WORDin  : IN     lc3b_word;
      WORDout : OUT    lc3b_word
   );
   END COMPONENT;
   COMPONENT IMREAD_Calc
   PORT (
      CLK     : IN     STD_LOGIC ;
      MRESP_H : IN     std_logic ;
      RESET_L : IN     STD_LOGIC ;
      STALL_L : IN     STD_LOGIC ;
      MREAD_L : OUT    STD_LOGIC 
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
   COMPONENT PC_INC
   PORT (
      PC_PLUS2 : OUT    LC3B_WORD ;
      PC_OUT   : IN     LC3B_WORD 
   );
   END COMPONENT;
   COMPONENT REG1
   PORT (
      A       : IN     STD_LOGIC;
      CLK     : IN     STD_LOGIC;
      EN      : IN     STD_LOGIC;
      RESET_L : IN     STD_LOGIC;
      F       : OUT    STD_LOGIC
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
   FOR ALL : BUF16 USE ENTITY ece411.BUF16;
   FOR ALL : IMREAD_Calc USE ENTITY ece411.IMREAD_Calc;
   FOR ALL : MUX2_16 USE ENTITY ece411.MUX2_16;
   FOR ALL : PC_INC USE ENTITY ece411.PC_INC;
   FOR ALL : REG1 USE ENTITY ece411.REG1;
   FOR ALL : REG16 USE ENTITY ece411.REG16;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   PCBuff : BUF16
      PORT MAP (
         WORDin  => PC_OUT,
         WORDout => I_ADDR
      );
   U_0 : IMREAD_Calc
      PORT MAP (
         CLK     => CLK,
         MRESP_H => I_MRESP_H,
         RESET_L => RESET_L,
         STALL_L => STALL_L,
         MREAD_L => I_MREAD_L_internal
      );
   PCMUX : MUX2_16
      PORT MAP (
         A   => PC_PLUS2_internal,
         B   => EXEC_ADDR_MEM,
         SEL => BRsel,
         F   => PC_IN
      );
   aPC_INC : PC_INC
      PORT MAP (
         PC_PLUS2 => PC_PLUS2_internal,
         PC_OUT   => PC_OUT
      );
   U_2 : REG1
      PORT MAP (
         RESET_L => RESET_L,
         A       => RESET_L,
         EN      => RESET_L,
         CLK     => CLK,
         F       => B
      );
   IR : REG16
      PORT MAP (
         RESET_L => RESET_L,
         A       => I_DATAIN,
         EN      => I_MRESP_H,
         CLK     => I_MREAD_L_internal,
         F       => IR_OUT
      );
   PC : REG16
      PORT MAP (
         RESET_L => RESET_L,
         A       => PC_IN,
         EN      => F,
         CLK     => CLK,
         F       => PC_OUT
      );
   U_1 : AND2
      PORT MAP (
         A => STALL_L,
         B => B,
         F => F
      );

   -- Implicit buffered output assignments
   I_MREAD_L <= I_MREAD_L_internal;
   PC_PLUS2  <= PC_PLUS2_internal;

END struct;
