-- VHDL Entity ece411.L1ICache.symbol
--
-- Created:
--          by - hyunyi1.ews (gelib-057-09.ews.illinois.edu)
--          at - 17:54:48 03/28/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY L1ICache IS
   PORT( 
      Address   : IN     lc3b_word;
      IREAD_L   : IN     std_logic;
      PMDATAIN  : IN     LC3B_OWORD;
      PMRESP_H  : IN     std_logic;
      Reset_L   : IN     std_logic;
      CacheHit  : OUT    STD_LOGIC;
      CacheMiss : OUT    STD_LOGIC;
      IRESP_H   : OUT    std_logic;
      I_DATAIN  : OUT    LC3B_WORD
   );

-- Declarations

END L1ICache ;

--
-- VHDL Architecture ece411.L1ICache.struct
--
-- Created:
--          by - hyunyi1.ews (gelib-057-09.ews.illinois.edu)
--          at - 17:54:48 03/28/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;


ARCHITECTURE struct OF L1ICache IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL CacheData : LC3B_OWORD;
   SIGNAL DataOut   : LC3B_OWORD;
   SIGNAL Hit       : STD_LOGIC;
   SIGNAL Index     : LC3B_C_INDEX;
   SIGNAL Offset    : lc3b_c_offset;
   SIGNAL Tag       : LC3B_C_TAG;
   SIGNAL TagOut    : LC3B_C_TAG;
   SIGNAL TagSynch  : LC3B_C_TAG;
   SIGNAL ValidOut  : std_logic;

   -- Implicit buffer signal declarations
   SIGNAL CacheHit_internal : STD_LOGIC;


   -- Component Declarations
   COMPONENT CacheAddrSplitter
   PORT (
      Address : IN     lc3b_word;
      Index   : OUT    LC3B_C_INDEX;
      Offset  : OUT    lc3b_c_offset;
      Tag     : OUT    LC3B_C_TAG
   );
   END COMPONENT;
   COMPONENT CacheHML1I
   PORT (
      HIT       : IN     STD_LOGIC ;
      MREAD_L   : IN     std_logic ;
      VFlag     : IN     STD_LOGIC ;
      CacheHit  : OUT    STD_LOGIC ;
      CacheMiss : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT DataArrayL1I
   PORT (
      DataIn    : IN     LC3B_OWORD;
      DataWrite : IN     std_logic;
      Index     : IN     LC3B_C_INDEX;
      Reset_L   : IN     std_logic;
      DataOut   : OUT    LC3B_OWORD
   );
   END COMPONENT;
   COMPONENT FlagArrayL1I
   PORT (
      FlagIn    : IN     std_logic;
      FlagWrite : IN     std_logic;
      Index     : IN     LC3B_C_INDEX;
      Reset_L   : IN     std_logic;
      FlagOut   : OUT    std_logic
   );
   END COMPONENT;
   COMPONENT MUX2_128
   PORT (
      A   : IN     LC3B_OWORD;
      B   : IN     LC3B_OWORD;
      SEL : IN     STD_LOGIC;
      F   : OUT    LC3B_OWORD
   );
   END COMPONENT;
   COMPONENT Offset_Sel_L1
   PORT (
      OFFSET  : IN     lc3b_c_offset ;
      OWordIn : IN     lc3b_oword ;
      WordOut : OUT    LC3B_WORD 
   );
   END COMPONENT;
   COMPONENT TagArrayL1I
   PORT (
      Index    : IN     LC3B_C_INDEX;
      Reset_L  : IN     std_logic;
      TagIn    : IN     LC3B_C_TAG;
      TagWrite : IN     std_logic;
      TagOut   : OUT    LC3B_C_TAG
   );
   END COMPONENT;
   COMPONENT TagSycnhL1I
   PORT (
      Tag      : IN     LC3B_C_TAG ;
      TagSynch : OUT    LC3B_C_TAG 
   );
   END COMPONENT;
   COMPONENT Tag_Hit_L1
   PORT (
      Tag1 : IN     lc3b_c_tag ;
      Tag2 : IN     lc3b_c_tag ;
      Hit  : OUT    STD_LOGIC 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : CacheAddrSplitter USE ENTITY ece411.CacheAddrSplitter;
   FOR ALL : CacheHML1I USE ENTITY ece411.CacheHML1I;
   FOR ALL : DataArrayL1I USE ENTITY ece411.DataArrayL1I;
   FOR ALL : FlagArrayL1I USE ENTITY ece411.FlagArrayL1I;
   FOR ALL : MUX2_128 USE ENTITY ece411.MUX2_128;
   FOR ALL : Offset_Sel_L1 USE ENTITY ece411.Offset_Sel_L1;
   FOR ALL : TagArrayL1I USE ENTITY ece411.TagArrayL1I;
   FOR ALL : TagSycnhL1I USE ENTITY ece411.TagSycnhL1I;
   FOR ALL : Tag_Hit_L1 USE ENTITY ece411.Tag_Hit_L1;
   -- pragma synthesis_on


BEGIN
   -- Architecture concurrent statements
   -- HDL Embedded Text Block 1 eb1
   IRESP_H<=CacheHit_internal;


   -- Instance port mappings.
   aCacheAddrSplitter : CacheAddrSplitter
      PORT MAP (
         Address => Address,
         Index   => Index,
         Offset  => Offset,
         Tag     => Tag
      );
   aCacheHM : CacheHML1I
      PORT MAP (
         HIT       => Hit,
         MREAD_L   => IREAD_L,
         VFlag     => ValidOut,
         CacheHit  => CacheHit_internal,
         CacheMiss => CacheMiss
      );
   iData : DataArrayL1I
      PORT MAP (
         Reset_L   => Reset_L,
         DataWrite => PMRESP_H,
         Index     => Index,
         DataIn    => PMDATAIN,
         DataOut   => CacheData
      );
   iValid : FlagArrayL1I
      PORT MAP (
         Reset_L   => Reset_L,
         FlagWrite => PMRESP_H,
         Index     => Index,
         FlagIn    => PMRESP_H,
         FlagOut   => ValidOut
      );
   U_0 : MUX2_128
      PORT MAP (
         A   => CacheData,
         B   => PMDATAIN,
         SEL => CacheHit_internal,
         F   => DataOut
      );
   U_2 : Offset_Sel_L1
      PORT MAP (
         OFFSET  => Offset,
         OWordIn => DataOut,
         WordOut => I_DATAIN
      );
   iTag : TagArrayL1I
      PORT MAP (
         Reset_L  => Reset_L,
         TagWrite => PMRESP_H,
         Index    => Index,
         TagIn    => Tag,
         TagOut   => TagOut
      );
   aTagSynchL1I : TagSycnhL1I
      PORT MAP (
         Tag      => Tag,
         TagSynch => TagSynch
      );
   U_1 : Tag_Hit_L1
      PORT MAP (
         Tag1 => TagOut,
         Tag2 => TagSynch,
         Hit  => Hit
      );

   -- Implicit buffered output assignments
   CacheHit <= CacheHit_internal;

END struct;
