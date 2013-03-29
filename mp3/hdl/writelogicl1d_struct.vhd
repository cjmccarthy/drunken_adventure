-- VHDL Entity ece411.WriteLogicL1D.symbol
--
-- Created:
--          by - mccart18.ews (gelib-057-17.ews.illinois.edu)
--          at - 21:26:25 03/28/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY WriteLogicL1D IS
   PORT( 
      DDATAOUT    : IN     LC3B_WORD;
      OFFSET      : IN     lc3b_c_offset;
      OWordIn     : IN     lc3b_oword;
      WH_L        : IN     std_logic;
      WL_L        : IN     std_logic;
      DataWritten : OUT    LC3B_OWORD
   );

-- Declarations

END WriteLogicL1D ;

--
-- VHDL Architecture ece411.WriteLogicL1D.struct
--
-- Created:
--          by - mccart18.ews (gelib-057-17.ews.illinois.edu)
--          at - 21:26:26 03/28/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;


ARCHITECTURE struct OF WriteLogicL1D IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL A         : LC3B_WORD;
   SIGNAL B         : LC3B_WORD;
   SIGNAL BH        : LC3B_BYTE;
   SIGNAL BL        : LC3B_BYTE;
   SIGNAL C         : LC3B_WORD;
   SIGNAL D         : LC3B_WORD;
   SIGNAL E         : LC3B_WORD;
   SIGNAL F         : LC3B_WORD;
   SIGNAL G         : LC3B_WORD;
   SIGNAL H         : LC3B_WORD;
   SIGNAL OWORDDOut : lc3b_oword;
   SIGNAL OWordAOut : lc3b_oword;
   SIGNAL OWordBOut : lc3b_oword;
   SIGNAL OWordCOut : lc3b_oword;
   SIGNAL OWordEOut : lc3b_oword;
   SIGNAL OWordFOut : lc3b_oword;
   SIGNAL OWordGOut : lc3b_oword;
   SIGNAL OWordHOut : lc3b_oword;
   SIGNAL SEL       : STD_LOGIC_VECTOR(2 DOWNTO 0);
   SIGNAL WordOut   : LC3B_WORD;
   SIGNAL WordOut1  : LC3B_WORD;
   SIGNAL WordOut2  : LC3B_WORD;
   SIGNAL WordOut3  : LC3B_WORD;
   SIGNAL WordOut4  : LC3B_WORD;
   SIGNAL WordOut5  : LC3B_WORD;
   SIGNAL WordOut6  : LC3B_WORD;
   SIGNAL WordOut7  : LC3B_WORD;


   -- Component Declarations
   COMPONENT ByteWriter
   PORT (
      BH_in   : IN     LC3B_BYTE ;
      BL_in   : IN     LC3B_BYTE ;
      WH_L    : IN     STD_LOGIC ;
      WL_L    : IN     STD_LOGIC ;
      WordIn  : IN     LC3B_WORD ;
      WordOut : OUT    LC3B_WORD 
   );
   END COMPONENT;
   COMPONENT MUX8_128
   PORT (
      A   : IN     LC3B_OWORD;
      B   : IN     LC3B_OWORD;
      C   : IN     LC3B_OWORD;
      D   : IN     LC3B_OWORD;
      E   : IN     LC3B_OWORD;
      F   : IN     LC3B_OWORD;
      G   : IN     LC3B_OWORD;
      H   : IN     LC3B_OWORD;
      SEL : IN     STD_LOGIC_VECTOR (2 DOWNTO 0);
      I   : OUT    LC3B_OWORD
   );
   END COMPONENT;
   COMPONENT OWordJoinerA
   PORT (
      OWordIn   : IN     lc3b_oword ;
      WordOut   : IN     LC3B_WORD ;
      OWordAOut : OUT    lc3b_oword 
   );
   END COMPONENT;
   COMPONENT OWordJoinerB
   PORT (
      OWordIn   : IN     lc3b_oword ;
      WordOut1  : IN     LC3B_WORD ;
      OWordBOut : OUT    lc3b_oword 
   );
   END COMPONENT;
   COMPONENT OWordJoinerC
   PORT (
      OWordIn   : IN     lc3b_oword ;
      WordOut2  : IN     LC3B_WORD ;
      OWordCOut : OUT    lc3b_oword 
   );
   END COMPONENT;
   COMPONENT OWordJoinerD
   PORT (
      OWordIn   : IN     lc3b_oword ;
      WordOut3  : IN     LC3B_WORD ;
      OWORDDOut : OUT    lc3b_oword 
   );
   END COMPONENT;
   COMPONENT OWordJoinerE
   PORT (
      OWordIn   : IN     lc3b_oword ;
      WordOut4  : IN     LC3B_WORD ;
      OWordEOut : OUT    lc3b_oword 
   );
   END COMPONENT;
   COMPONENT OWordJoinerF
   PORT (
      OWordIn   : IN     lc3b_oword ;
      WordOut5  : IN     LC3B_WORD ;
      OWordFOut : OUT    lc3b_oword 
   );
   END COMPONENT;
   COMPONENT OWordJoinerG
   PORT (
      OWordIn   : IN     lc3b_oword ;
      WordOut6  : IN     LC3B_WORD ;
      OWordGOut : OUT    lc3b_oword 
   );
   END COMPONENT;
   COMPONENT OWordJoinerH
   PORT (
      OWordIn   : IN     lc3b_oword ;
      WordOut7  : IN     LC3B_WORD ;
      OWordHOut : OUT    lc3b_oword 
   );
   END COMPONENT;
   COMPONENT OWordSplit
   PORT (
      OWordIn : IN     lc3b_oword;
      A       : OUT    LC3B_WORD;
      B       : OUT    LC3B_WORD;
      C       : OUT    LC3B_WORD;
      D       : OUT    LC3B_WORD;
      E       : OUT    LC3B_WORD;
      F       : OUT    LC3B_WORD;
      G       : OUT    LC3B_WORD;
      H       : OUT    LC3B_WORD
   );
   END COMPONENT;
   COMPONENT OffsetOffset
   PORT (
      OFFSET : IN     lc3b_c_offset;
      SEL    : OUT    STD_LOGIC_VECTOR (2 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT WordSplit
   PORT (
      WordIn : IN     LC3B_WORD;
      H0Word : OUT    LC3B_BYTE;
      H1Word : OUT    LC3B_BYTE
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : ByteWriter USE ENTITY ece411.ByteWriter;
   FOR ALL : MUX8_128 USE ENTITY ece411.MUX8_128;
   FOR ALL : OWordJoinerA USE ENTITY ece411.OWordJoinerA;
   FOR ALL : OWordJoinerB USE ENTITY ece411.OWordJoinerB;
   FOR ALL : OWordJoinerC USE ENTITY ece411.OWordJoinerC;
   FOR ALL : OWordJoinerD USE ENTITY ece411.OWordJoinerD;
   FOR ALL : OWordJoinerE USE ENTITY ece411.OWordJoinerE;
   FOR ALL : OWordJoinerF USE ENTITY ece411.OWordJoinerF;
   FOR ALL : OWordJoinerG USE ENTITY ece411.OWordJoinerG;
   FOR ALL : OWordJoinerH USE ENTITY ece411.OWordJoinerH;
   FOR ALL : OWordSplit USE ENTITY ece411.OWordSplit;
   FOR ALL : OffsetOffset USE ENTITY ece411.OffsetOffset;
   FOR ALL : WordSplit USE ENTITY ece411.WordSplit;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_2 : ByteWriter
      PORT MAP (
         BH_in   => BH,
         BL_in   => BL,
         WH_L    => WH_L,
         WL_L    => WL_L,
         WordIn  => A,
         WordOut => WordOut
      );
   U_4 : ByteWriter
      PORT MAP (
         BH_in   => BH,
         BL_in   => BL,
         WH_L    => WH_L,
         WL_L    => WL_L,
         WordIn  => B,
         WordOut => WordOut1
      );
   U_6 : ByteWriter
      PORT MAP (
         BH_in   => BH,
         BL_in   => BL,
         WH_L    => WH_L,
         WL_L    => WL_L,
         WordIn  => C,
         WordOut => WordOut2
      );
   U_8 : ByteWriter
      PORT MAP (
         BH_in   => BH,
         BL_in   => BL,
         WH_L    => WH_L,
         WL_L    => WL_L,
         WordIn  => D,
         WordOut => WordOut3
      );
   U_10 : ByteWriter
      PORT MAP (
         BH_in   => BH,
         BL_in   => BL,
         WH_L    => WH_L,
         WL_L    => WL_L,
         WordIn  => E,
         WordOut => WordOut4
      );
   U_12 : ByteWriter
      PORT MAP (
         BH_in   => BH,
         BL_in   => BL,
         WH_L    => WH_L,
         WL_L    => WL_L,
         WordIn  => F,
         WordOut => WordOut5
      );
   U_14 : ByteWriter
      PORT MAP (
         BH_in   => BH,
         BL_in   => BL,
         WH_L    => WH_L,
         WL_L    => WL_L,
         WordIn  => G,
         WordOut => WordOut6
      );
   U_16 : ByteWriter
      PORT MAP (
         BH_in   => BH,
         BL_in   => BL,
         WH_L    => WH_L,
         WL_L    => WL_L,
         WordIn  => H,
         WordOut => WordOut7
      );
   U_18 : MUX8_128
      PORT MAP (
         A   => OWordAOut,
         B   => OWordBOut,
         C   => OWordCOut,
         D   => OWORDDOut,
         E   => OWordEOut,
         F   => OWordFOut,
         G   => OWordGOut,
         H   => OWordHOut,
         SEL => SEL,
         I   => DataWritten
      );
   U_3 : OWordJoinerA
      PORT MAP (
         OWordIn   => OWordIn,
         WordOut   => WordOut,
         OWordAOut => OWordAOut
      );
   U_5 : OWordJoinerB
      PORT MAP (
         OWordIn   => OWordIn,
         WordOut1  => WordOut1,
         OWordBOut => OWordBOut
      );
   U_7 : OWordJoinerC
      PORT MAP (
         OWordIn   => OWordIn,
         WordOut2  => WordOut2,
         OWordCOut => OWordCOut
      );
   U_9 : OWordJoinerD
      PORT MAP (
         OWordIn   => OWordIn,
         WordOut3  => WordOut3,
         OWORDDOut => OWORDDOut
      );
   U_11 : OWordJoinerE
      PORT MAP (
         OWordIn   => OWordIn,
         WordOut4  => WordOut4,
         OWordEOut => OWordEOut
      );
   U_13 : OWordJoinerF
      PORT MAP (
         OWordIn   => OWordIn,
         WordOut5  => WordOut5,
         OWordFOut => OWordFOut
      );
   U_15 : OWordJoinerG
      PORT MAP (
         OWordIn   => OWordIn,
         WordOut6  => WordOut6,
         OWordGOut => OWordGOut
      );
   U_17 : OWordJoinerH
      PORT MAP (
         OWordIn   => OWordIn,
         WordOut7  => WordOut7,
         OWordHOut => OWordHOut
      );
   U_0 : OWordSplit
      PORT MAP (
         OWordIn => OWordIn,
         A       => A,
         B       => B,
         C       => C,
         D       => D,
         E       => E,
         F       => F,
         G       => G,
         H       => H
      );
   U_19 : OffsetOffset
      PORT MAP (
         OFFSET => OFFSET,
         SEL    => SEL
      );
   U_1 : WordSplit
      PORT MAP (
         H0Word => BL,
         H1Word => BH,
         WordIn => DDATAOUT
      );

END struct;
