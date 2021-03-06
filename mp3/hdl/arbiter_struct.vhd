-- VHDL Entity ece411.arbiter.symbol
--
-- Created:
--          by - hyunyi1.ews (gelib-057-09.ews.illinois.edu)
--          at - 23:51:03 03/28/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY arbiter IS
   PORT( 
      DCacheHit   : IN     std_logic;
      DPMADDR     : IN     LC3B_WORD;
      DPMRead_L   : IN     STD_LOGIC;
      DPMWrite_L  : IN     STD_LOGIC;
      DRead_L     : IN     STD_LOGIC;
      DWriteH_L   : IN     STD_LOGIC;
      DWriteL_L   : IN     STD_LOGIC;
      ICacheHit   : IN     std_logic;
      IPMADDR     : IN     LC3B_WORD;
      IPMRead_L   : IN     STD_LOGIC;
      IRead_L     : IN     STD_LOGIC;
      MResp_H     : IN     STD_LOGIC;
      RESET_L     : IN     std_logic;
      DPResp_H    : OUT    STD_LOGIC;
      IB_out      : OUT    STD_LOGIC;
      IPResp_H    : OUT    STD_LOGIC;
      MADDR       : OUT    LC3B_WORD;
      MREAD_L     : OUT    STD_LOGIC;
      MWrite_L    : OUT    STD_LOGIC;
      M_STALL_L   : OUT    STD_LOGIC;
      M_Stall     : OUT    STD_LOGIC;
      NOT_M_STALL : OUT    STD_LOGIC
   );

-- Declarations

END arbiter ;

--
-- VHDL Architecture ece411.arbiter.struct
--
-- Created:
--          by - hyunyi1.ews (gelib-057-09.ews.illinois.edu)
--          at - 23:51:03 03/28/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

LIBRARY mp3lib;

ARCHITECTURE struct OF arbiter IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL DB_out     : STD_LOGIC;
   SIGNAL F          : STD_LOGIC;
   SIGNAL F1         : STD_LOGIC;
   SIGNAL F2         : STD_LOGIC;
   SIGNAL F3         : STD_LOGIC;
   SIGNAL F4         : STD_LOGIC;
   SIGNAL F5         : STD_LOGIC;
   SIGNAL IB_out_DLY : STD_LOGIC;

   -- Implicit buffer signal declarations
   SIGNAL IB_out_internal  : STD_LOGIC;
   SIGNAL M_Stall_internal : STD_LOGIC;


   -- Component Declarations
   COMPONENT DEMUX2_1
   PORT (
      F   : IN     STD_LOGIC;
      SEL : IN     STD_LOGIC;
      A   : OUT    STD_LOGIC;
      B   : OUT    STD_LOGIC
   );
   END COMPONENT;
   COMPONENT DRespBAR
   PORT (
      DCacheHit : IN     std_logic ;
      IB_out    : IN     STD_LOGIC ;
      F2        : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT IRespBAR
   PORT (
      IB_out    : IN     STD_LOGIC ;
      ICacheHit : IN     std_logic ;
      F3        : OUT    STD_LOGIC 
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
   COMPONENT AND2
   PORT (
      A : IN     STD_LOGIC ;
      B : IN     STD_LOGIC ;
      F : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT MUX2_1
   PORT (
      A   : IN     STD_LOGIC ;
      B   : IN     STD_LOGIC ;
      SEL : IN     STD_LOGIC ;
      F   : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT MUX2_16
   PORT (
      A   : IN     LC3B_WORD ;
      B   : IN     LC3B_WORD ;
      SEL : IN     STD_LOGIC ;
      F   : OUT    LC3B_WORD 
   );
   END COMPONENT;
   COMPONENT NAND3
   PORT (
      A : IN     STD_LOGIC ;
      B : IN     STD_LOGIC ;
      C : IN     STD_LOGIC ;
      F : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT NOR2
   PORT (
      A : IN     STD_LOGIC ;
      B : IN     STD_LOGIC ;
      F : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT NOT1
   PORT (
      A : IN     STD_LOGIC ;
      F : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT OR2
   PORT (
      A : IN     STD_LOGIC ;
      B : IN     STD_LOGIC ;
      F : OUT    STD_LOGIC 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : AND2 USE ENTITY mp3lib.AND2;
   FOR ALL : DEMUX2_1 USE ENTITY ece411.DEMUX2_1;
   FOR ALL : DRespBAR USE ENTITY ece411.DRespBAR;
   FOR ALL : IRespBAR USE ENTITY ece411.IRespBAR;
   FOR ALL : MUX2_1 USE ENTITY mp3lib.MUX2_1;
   FOR ALL : MUX2_16 USE ENTITY mp3lib.MUX2_16;
   FOR ALL : NAND3 USE ENTITY mp3lib.NAND3;
   FOR ALL : NOR2 USE ENTITY mp3lib.NOR2;
   FOR ALL : NOT1 USE ENTITY mp3lib.NOT1;
   FOR ALL : OR2 USE ENTITY mp3lib.OR2;
   FOR ALL : REG1 USE ENTITY ece411.REG1;
   -- pragma synthesis_on


BEGIN
   -- Architecture concurrent statements
   -- HDL Embedded Text Block 1 eb1
   IB_out_DLY<=IB_out_internal after 20ns;


   -- Instance port mappings.
   U_7 : DEMUX2_1
      PORT MAP (
         A   => DPResp_H,
         B   => IPResp_H,
         SEL => IB_out_DLY,
         F   => MResp_H
      );
   aDRespBAR : DRespBAR
      PORT MAP (
         DCacheHit => DCacheHit,
         IB_out    => IB_out_internal,
         F2        => F2
      );
   aIRespBAR : IRespBAR
      PORT MAP (
         IB_out    => IB_out_internal,
         ICacheHit => ICacheHit,
         F3        => F3
      );
   DBusy : REG1
      PORT MAP (
         RESET_L => F1,
         A       => F4,
         EN      => RESET_L,
         CLK     => F4,
         F       => DB_out
      );
   IBusy : REG1
      PORT MAP (
         RESET_L => F,
         A       => F5,
         EN      => RESET_L,
         CLK     => F5,
         F       => IB_out_internal
      );
   DB_Reset : AND2
      PORT MAP (
         A => RESET_L,
         B => F2,
         F => F1
      );
   IB_Reset : AND2
      PORT MAP (
         A => RESET_L,
         B => F3,
         F => F
      );
   M_READ_L : MUX2_1
      PORT MAP (
         A   => DPMRead_L,
         B   => IPMRead_L,
         SEL => IB_out_internal,
         F   => MREAD_L
      );
   U_2 : MUX2_16
      PORT MAP (
         A   => DPMADDR,
         B   => IPMADDR,
         SEL => IB_out_internal,
         F   => MADDR
      );
   U_1 : NAND3
      PORT MAP (
         A => DRead_L,
         B => DWriteH_L,
         C => DWriteL_L,
         F => F4
      );
   U_6 : NOR2
      PORT MAP (
         A => IB_out_internal,
         B => DB_out,
         F => M_STALL_L
      );
   U_3 : NOT1
      PORT MAP (
         A => IRead_L,
         F => F5
      );
   U_5 : NOT1
      PORT MAP (
         A => M_Stall_internal,
         F => NOT_M_STALL
      );
   U_0 : OR2
      PORT MAP (
         A => IB_out_internal,
         B => DPMWrite_L,
         F => MWrite_L
      );
   U_4 : OR2
      PORT MAP (
         A => IB_out_internal,
         B => DB_out,
         F => M_Stall_internal
      );

   -- Implicit buffered output assignments
   IB_out  <= IB_out_internal;
   M_Stall <= M_Stall_internal;

END struct;
