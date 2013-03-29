-- VHDL Entity ece411.L1DCache.symbol
--
-- Created:
--          by - hyunyi1.ews (gelib-057-09.ews.illinois.edu)
--          at - 21:18:51 03/28/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY L1DCache IS
   PORT( 
      Address    : IN     lc3b_word;
      DDATAOUT   : IN     LC3B_WORD;
      DPMDATAIN  : IN     LC3B_OWORD;
      DPMREAD_L  : IN     STD_LOGIC;
      DPMRESP_H  : IN     STD_LOGIC;
      DPMWRITE_L : IN     STD_LOGIC;
      DREAD_L    : IN     std_logic;
      DWRITEH_L  : IN     std_logic;
      DWRITEL_L  : IN     std_logic;
      RESET_L    : IN     std_logic;
      WBSEL      : IN     STD_LOGIC;
      CacheHit   : OUT    STD_LOGIC;
      CacheMiss  : OUT    STD_LOGIC;
      DDatain    : OUT    LC3B_WORD;
      DPMADDRESS : OUT    LC3B_WORD;
      DPMDATAOUT : OUT    LC3B_OWORD;
      DRESP_H    : OUT    STD_LOGIC;
      WriteBack  : OUT    STD_LOGIC
   );

-- Declarations

END L1DCache ;

--
-- VHDL Architecture ece411.L1DCache.struct
--
-- Created:
--          by - hyunyi1.ews (gelib-057-09.ews.illinois.edu)
--          at - 21:18:51 03/28/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

LIBRARY mp3lib;

ARCHITECTURE struct OF L1DCache IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL BITin2      : STD_LOGIC;
   SIGNAL BITout      : STD_LOGIC;
   SIGNAL CacheData   : LC3B_OWORD;
   SIGNAL D0out       : std_logic;
   SIGNAL D1out       : std_logic;
   SIGNAL DATAWrite   : LC3B_OWORD;
   SIGNAL DSel        : STD_LOGIC;
   SIGNAL DW0         : STD_LOGIC;
   SIGNAL DW1         : STD_LOGIC;
   SIGNAL Data0       : LC3B_OWORD;
   SIGNAL Data1       : LC3B_OWORD;
   SIGNAL DataIn      : LC3B_OWORD;
   SIGNAL DirtyIn     : STD_LOGIC;
   SIGNAL F           : STD_LOGIC;
   SIGNAL F1          : LC3B_WORD;
   SIGNAL F2          : STD_LOGIC;
   SIGNAL F3          : LC3B_OWORD;
   SIGNAL Hit0        : STD_LOGIC;
   SIGNAL Hit1        : STD_LOGIC;
   SIGNAL INDEX       : LC3B_C_INDEX;
   SIGNAL LRUout      : std_logic;
   SIGNAL OFFSET      : lc3b_c_offset;
   SIGNAL OUTADDRESS  : LC3b_word;
   SIGNAL OUTADDRESS1 : LC3b_word;
   SIGNAL PWL_Delay   : std_logic;
   SIGNAL RetOWord    : LC3B_OWORD;
   SIGNAL Tag         : LC3B_C_TAG;
   SIGNAL Tag0out     : LC3B_C_TAG;
   SIGNAL Tag1out     : LC3B_C_TAG;
   SIGNAL TagSynched  : lc3b_c_tag;
   SIGNAL V0Out       : std_logic;
   SIGNAL V1Out       : std_logic;
   SIGNAL WH_L        : STD_LOGIC;
   SIGNAL WL_L        : STD_LOGIC;
   SIGNAL WRESP       : STD_LOGIC;
   SIGNAL WRESP_DLY   : STD_LOGIC;
   SIGNAL WSel_Out    : STD_LOGIC;

   -- Implicit buffer signal declarations
   SIGNAL CacheHit_internal  : STD_LOGIC;
   SIGNAL WriteBack_internal : STD_LOGIC;


   -- Component Declarations
   COMPONENT CacheAddrSplitter
   PORT (
      Address : IN     lc3b_word;
      Index   : OUT    LC3B_C_INDEX;
      Offset  : OUT    lc3b_c_offset;
      Tag     : OUT    LC3B_C_TAG
   );
   END COMPONENT;
   COMPONENT CacheHM
   PORT (
      HIT0         : IN     STD_LOGIC ;
      HIT1         : IN     STD_LOGIC ;
      MREAD_L      : IN     std_logic ;
      MWRITEH_L    : IN     std_logic ;
      MWRITEL_L    : IN     std_logic ;
      V0Flag       : IN     STD_LOGIC ;
      V1Flag       : IN     STD_LOGIC ;
      CacheHitOut  : OUT    STD_LOGIC ;
      CacheMissOut : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT DEMUX2_1
   PORT (
      F   : IN     STD_LOGIC;
      SEL : IN     STD_LOGIC;
      A   : OUT    STD_LOGIC;
      B   : OUT    STD_LOGIC
   );
   END COMPONENT;
   COMPONENT DataArrayL1D
   PORT (
      DataIn    : IN     LC3B_OWORD;
      DataWrite : IN     std_logic;
      Index     : IN     LC3B_C_INDEX;
      Reset_L   : IN     std_logic;
      DataOut   : OUT    LC3B_OWORD
   );
   END COMPONENT;
   COMPONENT FlagArrayL1D
   PORT (
      FlagIn    : IN     std_logic;
      FlagWrite : IN     std_logic;
      Index     : IN     LC3B_C_INDEX;
      Reset_L   : IN     std_logic;
      FlagOut   : OUT    std_logic
   );
   END COMPONENT;
   COMPONENT L1DAddrJoiner
   PORT (
      INDEX      : IN     LC3b_c_index;
      OFFSET     : IN     LC3b_c_offset;
      TagIn      : IN     LC3B_C_TAG;
      OUTADDRESS : OUT    LC3b_word
   );
   END COMPONENT;
   COMPONENT L1DDirtyMux
   PORT (
      BITin2 : OUT    STD_LOGIC ;
      DSel   : IN     STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT L1DDirtySel
   PORT (
      DWRITEH_L : IN     std_logic ;
      DWRITEL_L : IN     std_logic ;
      DSel      : OUT    STD_LOGIC ;
      CacheHit  : IN     STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT L1DWriteBack_Calc
   PORT (
      D0           : IN     STD_LOGIC ;
      D1           : IN     STD_LOGIC ;
      LRUin        : IN     STD_LOGIC ;
      MRLin        : IN     std_logic ;
      MWHLin       : IN     std_logic ;
      MWLLin       : IN     std_logic ;
      WriteBackOut : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT L1DWriteSel
   PORT (
      Hit1     : IN     STD_LOGIC ;
      CacheHit : IN     STD_LOGIC ;
      LRUout   : IN     std_logic ;
      WSel_Out : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT L1DWrite_Ctrl
   PORT (
      WRESP     : OUT    STD_LOGIC ;
      CacheHit  : IN     STD_LOGIC ;
      PWL_Delay : IN     std_logic ;
      WriteBack : IN     STD_LOGIC ;
      DWRITEH_L : IN     std_logic ;
      DWRITEL_L : IN     std_logic ;
      DPMRESP_H : IN     STD_LOGIC ;
      DPMREAD_L : IN     STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT Latch1
   PORT (
      BITin   : IN     STD_LOGIC;
      LSIG    : IN     STD_LOGIC;
      RESET_L : IN     STD_LOGIC;
      BITout  : OUT    STD_LOGIC
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
   COMPONENT MUX2_16
   PORT (
      A   : IN     LC3B_WORD;
      B   : IN     LC3B_WORD;
      SEL : IN     STD_LOGIC;
      F   : OUT    LC3B_WORD
   );
   END COMPONENT;
   COMPONENT Offset_Sel_L1
   PORT (
      OFFSET  : IN     lc3b_c_offset ;
      OWordIn : IN     lc3b_oword ;
      WordOut : OUT    LC3B_WORD 
   );
   END COMPONENT;
   COMPONENT TAGSynchL1D
   PORT (
      Tag        : IN     LC3B_C_TAG ;
      TagSynched : OUT    lc3b_c_tag 
   );
   END COMPONENT;
   COMPONENT TagArrayL1D
   PORT (
      Index    : IN     LC3B_C_INDEX;
      Reset_L  : IN     std_logic;
      TagIn    : IN     LC3B_C_TAG;
      TagWrite : IN     std_logic;
      TagOut   : OUT    LC3B_C_TAG
   );
   END COMPONENT;
   COMPONENT Tag_Hit_L1
   PORT (
      Tag1 : IN     lc3b_c_tag ;
      Tag2 : IN     lc3b_c_tag ;
      Hit  : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT WriteLogicL1D
   PORT (
      DDATAOUT    : IN     LC3B_WORD ;
      OFFSET      : IN     lc3b_c_offset ;
      OWordIn     : IN     lc3b_oword ;
      WH_L        : IN     std_logic ;
      WL_L        : IN     std_logic ;
      DataWritten : OUT    LC3B_OWORD 
   );
   END COMPONENT;
   COMPONENT AND2
   PORT (
      A : IN     STD_LOGIC ;
      B : IN     STD_LOGIC ;
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
   FOR ALL : CacheAddrSplitter USE ENTITY ece411.CacheAddrSplitter;
   FOR ALL : CacheHM USE ENTITY ece411.CacheHM;
   FOR ALL : DEMUX2_1 USE ENTITY ece411.DEMUX2_1;
   FOR ALL : DataArrayL1D USE ENTITY ece411.DataArrayL1D;
   FOR ALL : FlagArrayL1D USE ENTITY ece411.FlagArrayL1D;
   FOR ALL : L1DAddrJoiner USE ENTITY ece411.L1DAddrJoiner;
   FOR ALL : L1DDirtyMux USE ENTITY ece411.L1DDirtyMux;
   FOR ALL : L1DDirtySel USE ENTITY ece411.L1DDirtySel;
   FOR ALL : L1DWriteBack_Calc USE ENTITY ece411.L1DWriteBack_Calc;
   FOR ALL : L1DWriteSel USE ENTITY ece411.L1DWriteSel;
   FOR ALL : L1DWrite_Ctrl USE ENTITY ece411.L1DWrite_Ctrl;
   FOR ALL : Latch1 USE ENTITY ece411.Latch1;
   FOR ALL : MUX2_128 USE ENTITY ece411.MUX2_128;
   FOR ALL : MUX2_16 USE ENTITY ece411.MUX2_16;
   FOR ALL : OR2 USE ENTITY mp3lib.OR2;
   FOR ALL : Offset_Sel_L1 USE ENTITY ece411.Offset_Sel_L1;
   FOR ALL : TAGSynchL1D USE ENTITY ece411.TAGSynchL1D;
   FOR ALL : TagArrayL1D USE ENTITY ece411.TagArrayL1D;
   FOR ALL : Tag_Hit_L1 USE ENTITY ece411.Tag_Hit_L1;
   FOR ALL : WriteLogicL1D USE ENTITY ece411.WriteLogicL1D;
   -- pragma synthesis_on


BEGIN
   -- Architecture concurrent statements
   -- HDL Embedded Text Block 1 eb1
   PWL_Delay<=DPMWRITE_L after 21ns;
   WH_L<=DWRITEH_L after 3ns;
   WL_L<=DWRITEL_L after 3ns;
   WRESP_DLY<=WRESP after 2ns;


   -- Instance port mappings.
   aCacheAddrSplitter : CacheAddrSplitter
      PORT MAP (
         Address => Address,
         Index   => INDEX,
         Offset  => OFFSET,
         Tag     => Tag
      );
   U_1 : CacheHM
      PORT MAP (
         HIT0         => Hit0,
         HIT1         => Hit1,
         MREAD_L      => DREAD_L,
         MWRITEH_L    => DWRITEH_L,
         MWRITEL_L    => DWRITEL_L,
         V0Flag       => V0Out,
         V1Flag       => V1Out,
         CacheHitOut  => CacheHit_internal,
         CacheMissOut => CacheMiss
      );
   U_7 : DEMUX2_1
      PORT MAP (
         A   => DW0,
         B   => DW1,
         SEL => BITout,
         F   => WRESP_DLY
      );
   Way0 : DataArrayL1D
      PORT MAP (
         Reset_L   => RESET_L,
         DataWrite => DW0,
         Index     => INDEX,
         DataIn    => DataIn,
         DataOut   => Data0
      );
   Way1 : DataArrayL1D
      PORT MAP (
         Reset_L   => RESET_L,
         DataWrite => DW1,
         Index     => INDEX,
         DataIn    => DataIn,
         DataOut   => Data1
      );
   Dirty0 : FlagArrayL1D
      PORT MAP (
         Reset_L   => RESET_L,
         FlagWrite => DW0,
         Index     => INDEX,
         FlagIn    => DirtyIn,
         FlagOut   => D0out
      );
   Dirty1 : FlagArrayL1D
      PORT MAP (
         Reset_L   => RESET_L,
         FlagWrite => DW1,
         Index     => INDEX,
         FlagIn    => DirtyIn,
         FlagOut   => D1out
      );
   LRUSTACK : FlagArrayL1D
      PORT MAP (
         Reset_L   => RESET_L,
         FlagWrite => CacheHit_internal,
         Index     => INDEX,
         FlagIn    => Hit0,
         FlagOut   => LRUout
      );
   Valid0 : FlagArrayL1D
      PORT MAP (
         Reset_L   => RESET_L,
         FlagWrite => DW0,
         Index     => INDEX,
         FlagIn    => DW0,
         FlagOut   => V0Out
      );
   Valid1 : FlagArrayL1D
      PORT MAP (
         Reset_L   => RESET_L,
         FlagWrite => DW1,
         Index     => INDEX,
         FlagIn    => DW1,
         FlagOut   => V1Out
      );
   D0WBAddr : L1DAddrJoiner
      PORT MAP (
         OUTADDRESS => OUTADDRESS1,
         INDEX      => INDEX,
         OFFSET     => OFFSET,
         TagIn      => Tag0out
      );
   D1WBAddr : L1DAddrJoiner
      PORT MAP (
         OUTADDRESS => OUTADDRESS,
         INDEX      => INDEX,
         OFFSET     => OFFSET,
         TagIn      => Tag1out
      );
   aL1DDirtyMux : L1DDirtyMux
      PORT MAP (
         BITin2 => BITin2,
         DSel   => DSel
      );
   aL1DDirtySel : L1DDirtySel
      PORT MAP (
         DWRITEH_L => DWRITEH_L,
         DWRITEL_L => DWRITEL_L,
         DSel      => DSel,
         CacheHit  => CacheHit_internal
      );
   U_4 : L1DWriteBack_Calc
      PORT MAP (
         D0           => D0out,
         D1           => D1out,
         LRUin        => LRUout,
         MRLin        => DREAD_L,
         MWHLin       => DWRITEH_L,
         MWLLin       => DWRITEL_L,
         WriteBackOut => WriteBack_internal
      );
   aL1DWriteSel : L1DWriteSel
      PORT MAP (
         Hit1     => Hit1,
         CacheHit => CacheHit_internal,
         LRUout   => LRUout,
         WSel_Out => WSel_Out
      );
   U_5 : L1DWrite_Ctrl
      PORT MAP (
         WRESP     => WRESP,
         CacheHit  => CacheHit_internal,
         PWL_Delay => PWL_Delay,
         WriteBack => WriteBack_internal,
         DWRITEH_L => DWRITEH_L,
         DWRITEL_L => DWRITEL_L,
         DPMRESP_H => DPMRESP_H,
         DPMREAD_L => DPMREAD_L
      );
   U_10 : Latch1
      PORT MAP (
         BITin   => BITin2,
         LSIG    => WRESP,
         RESET_L => RESET_L,
         BITout  => DirtyIn
      );
   U_12 : Latch1
      PORT MAP (
         BITin   => WSel_Out,
         LSIG    => WRESP,
         RESET_L => RESET_L,
         BITout  => BITout
      );
   DIN_Sel : MUX2_128
      PORT MAP (
         A   => DATAWrite,
         B   => DPMDATAIN,
         SEL => F,
         F   => DataIn
      );
   DIN_Sel1 : MUX2_128
      PORT MAP (
         A   => Data0,
         B   => Data1,
         SEL => LRUout,
         F   => DPMDATAOUT
      );
   WR_SRC_Sel : MUX2_128
      PORT MAP (
         A   => DPMDATAIN,
         B   => RetOWord,
         SEL => DPMREAD_L,
         F   => F3
      );
   aCacheMem_Sel : MUX2_128
      PORT MAP (
         A   => DPMDATAIN,
         B   => CacheData,
         SEL => CacheHit_internal,
         F   => RetOWord
      );
   aWay_Sel : MUX2_128
      PORT MAP (
         A   => Data0,
         B   => Data1,
         SEL => Hit1,
         F   => CacheData
      );
   DataAddrSel : MUX2_16
      PORT MAP (
         A   => OUTADDRESS1,
         B   => OUTADDRESS,
         SEL => F2,
         F   => F1
      );
   PMAddrSel : MUX2_16
      PORT MAP (
         A   => Address,
         B   => F1,
         SEL => WBSEL,
         F   => DPMADDRESS
      );
   U_0 : Offset_Sel_L1
      PORT MAP (
         OFFSET  => OFFSET,
         OWordIn => RetOWord,
         WordOut => DDatain
      );
   aL1DTagSynch : TAGSynchL1D
      PORT MAP (
         Tag        => Tag,
         TagSynched => TagSynched
      );
   Tag0 : TagArrayL1D
      PORT MAP (
         Reset_L  => RESET_L,
         TagWrite => DW0,
         Index    => INDEX,
         TagIn    => Tag,
         TagOut   => Tag0out
      );
   Tag1 : TagArrayL1D
      PORT MAP (
         Reset_L  => RESET_L,
         TagWrite => DW1,
         Index    => INDEX,
         TagIn    => Tag,
         TagOut   => Tag1out
      );
   aTagHit0 : Tag_Hit_L1
      PORT MAP (
         Tag1 => Tag0out,
         Tag2 => TagSynched,
         Hit  => Hit0
      );
   aTagHit1 : Tag_Hit_L1
      PORT MAP (
         Tag1 => Tag1out,
         Tag2 => TagSynched,
         Hit  => Hit1
      );
   U_6 : WriteLogicL1D
      PORT MAP (
         DDATAOUT    => DDATAOUT,
         OFFSET      => OFFSET,
         OWordIn     => F3,
         WH_L        => WH_L,
         WL_L        => WL_L,
         DataWritten => DATAWrite
      );
   U_3 : AND2
      PORT MAP (
         A => LRUout,
         B => WriteBack_internal,
         F => F2
      );
   U_2 : OR2
      PORT MAP (
         A => WL_L,
         B => WH_L,
         F => F
      );
   U_11 : OR2
      PORT MAP (
         A => CacheHit_internal,
         B => CacheHit_internal,
         F => DRESP_H
      );

   -- Implicit buffered output assignments
   CacheHit  <= CacheHit_internal;
   WriteBack <= WriteBack_internal;

END struct;
