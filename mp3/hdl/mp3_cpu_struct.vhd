-- VHDL Entity ece411.mp3_cpu.symbol
--
-- Created:
--          by - hyunyi1.ews (gelib-057-09.ews.illinois.edu)
--          at - 12:43:19 03/28/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY mp3_cpu IS
   PORT( 
      RESET_L : IN     STD_LOGIC
   );

-- Declarations

END mp3_cpu ;

--
-- VHDL Architecture ece411.mp3_cpu.struct
--
-- Created:
--          by - hyunyi1.ews (gelib-057-09.ews.illinois.edu)
--          at - 12:43:19 03/28/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;


ARCHITECTURE struct OF mp3_cpu IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL CLK         : std_logic;
   SIGNAL D_MADDR     : LC3B_WORD;
   SIGNAL D_MDATAIN   : LC3B_WORD;
   SIGNAL D_MDATAOUT  : lc3b_word;
   SIGNAL D_MREAD_L   : std_logic;
   SIGNAL D_MRESP_H   : STD_LOGIC;
   SIGNAL D_MWRITEH_L : std_logic;
   SIGNAL D_MWRITEL_L : std_logic;
   SIGNAL I_ADDR      : lc3b_word;
   SIGNAL I_DATAIN    : LC3B_WORD;
   SIGNAL I_MREAD_L   : std_logic;
   SIGNAL I_MRESP_H   : STD_LOGIC;
   SIGNAL M_Stall     : STD_LOGIC;
   SIGNAL STALL_L     : std_logic;


   -- Component Declarations
   COMPONENT CLKgen
   PORT (
      clk : INOUT  std_logic  := '0'
   );
   END COMPONENT;
   COMPONENT DATAPATH
   PORT (
      CLK         : IN     std_logic ;
      D_MDATAIN   : IN     LC3B_WORD ;
      D_MRESP_H   : IN     STD_LOGIC ;
      I_DATAIN    : IN     LC3B_WORD ;
      I_MRESP_H   : IN     STD_LOGIC ;
      RESET_L     : IN     STD_LOGIC ;
      STALL_L     : IN     std_logic ;
      D_MADDR     : OUT    LC3B_WORD ;
      D_MDATAOUT  : OUT    lc3b_word ;
      D_MREAD_L   : OUT    std_logic ;
      D_MWRITEH_L : OUT    std_logic ;
      D_MWRITEL_L : OUT    std_logic ;
      I_ADDR      : OUT    LC3B_WORD ;
      I_MREAD_L   : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT MainMem
   PORT (
      CLK       : IN     std_logic ;
      DDATAOUT  : IN     LC3B_WORD ;
      DRead_L   : IN     std_logic ;
      DWriteH_L : IN     std_logic ;
      DWriteL_L : IN     std_logic ;
      D_ADDR    : IN     lc3b_word ;
      I_ADDR    : IN     lc3b_word ;
      I_MRead_L : IN     std_logic ;
      RESET_L   : IN     std_logic ;
      DDatain   : OUT    LC3B_WORD ;
      DRESP_H   : OUT    STD_LOGIC ;
      I_DATAIN  : OUT    LC3B_WORD ;
      I_RESP_H  : OUT    std_logic ;
      M_STALL_L : OUT    STD_LOGIC ;
      M_Stall   : OUT    STD_LOGIC 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : CLKgen USE ENTITY ece411.CLKgen;
   FOR ALL : DATAPATH USE ENTITY ece411.DATAPATH;
   FOR ALL : MainMem USE ENTITY ece411.MainMem;
   -- pragma synthesis_on


BEGIN
   -- Architecture concurrent statements
   -- HDL Embedded Text Block 1 eb1
   STALL_L <= RESET_L;


   -- Instance port mappings.
   aCLK : CLKgen
      PORT MAP (
         clk => CLK
      );
   aDATAPATH : DATAPATH
      PORT MAP (
         CLK         => CLK,
         D_MDATAIN   => D_MDATAIN,
         D_MRESP_H   => D_MRESP_H,
         I_DATAIN    => I_DATAIN,
         I_MRESP_H   => I_MRESP_H,
         RESET_L     => RESET_L,
         STALL_L     => STALL_L,
         D_MADDR     => D_MADDR,
         D_MDATAOUT  => D_MDATAOUT,
         D_MREAD_L   => D_MREAD_L,
         D_MWRITEH_L => D_MWRITEH_L,
         D_MWRITEL_L => D_MWRITEL_L,
         I_ADDR      => I_ADDR,
         I_MREAD_L   => I_MREAD_L
      );
   aMainMem : MainMem
      PORT MAP (
         CLK       => CLK,
         DDATAOUT  => D_MDATAOUT,
         DRead_L   => D_MREAD_L,
         DWriteH_L => D_MWRITEH_L,
         DWriteL_L => D_MWRITEL_L,
         D_ADDR    => D_MADDR,
         I_ADDR    => I_ADDR,
         I_MRead_L => I_MREAD_L,
         RESET_L   => RESET_L,
         DDatain   => D_MDATAIN,
         DRESP_H   => D_MRESP_H,
         I_DATAIN  => I_DATAIN,
         I_RESP_H  => I_MRESP_H,
         M_STALL_L => STALL_L,
         M_Stall   => M_Stall
      );

END struct;
