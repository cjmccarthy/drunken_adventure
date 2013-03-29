-- VHDL Entity ece411.MainMem.symbol
--
-- Created:
--          by - hyunyi1.ews (gelib-057-09.ews.illinois.edu)
--          at - 21:08:11 03/28/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY MainMem IS
   PORT( 
      CLK         : IN     std_logic;
      DDATAOUT    : IN     LC3B_WORD;
      DRead_L     : IN     std_logic;
      DWriteH_L   : IN     std_logic;
      DWriteL_L   : IN     std_logic;
      D_ADDR      : IN     lc3b_word;
      I_ADDR      : IN     lc3b_word;
      I_MRead_L   : IN     std_logic;
      RESET_L     : IN     std_logic;
      DDatain     : OUT    LC3B_WORD;
      DRESP_H     : OUT    STD_LOGIC;
      I_DATAIN    : OUT    LC3B_WORD;
      I_RESP_H    : OUT    std_logic;
      M_STALL_L   : OUT    STD_LOGIC;
      M_Stall     : OUT    STD_LOGIC;
      NOT_M_STALL : OUT    STD_LOGIC
   );

-- Declarations

END MainMem ;

--
-- VHDL Architecture ece411.MainMem.struct
--
-- Created:
--          by - hyunyi1.ews (gelib-057-09.ews.illinois.edu)
--          at - 21:08:11 03/28/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

LIBRARY mp3lib;

ARCHITECTURE struct OF MainMem IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL DATAIN     : LC3B_OWORD;
   SIGNAL DCacheHit  : STD_LOGIC;
   SIGNAL DCacheMIss : STD_LOGIC;
   SIGNAL DPMADDR    : LC3B_WORD;
   SIGNAL DPMDATAOUT : LC3B_OWORD;
   SIGNAL DPMRead_L  : STD_LOGIC;
   SIGNAL DPMWrite_L : STD_LOGIC;
   SIGNAL DPResp_H   : STD_LOGIC;
   SIGNAL IB_out     : STD_LOGIC;
   SIGNAL ICacheHit  : STD_LOGIC;
   SIGNAL ICacheMiss : STD_LOGIC;
   SIGNAL IPMRead_L  : STD_LOGIC;
   SIGNAL IPResp_H   : STD_LOGIC;
   SIGNAL MADDR      : LC3B_WORD;
   SIGNAL MREAD_L    : STD_LOGIC;
   SIGNAL MRESP_H    : STD_LOGIC;
   SIGNAL MWrite_L   : STD_LOGIC;
   SIGNAL WBSEL      : STD_LOGIC;
   SIGNAL WriteBack  : STD_LOGIC;


   -- Component Declarations
   COMPONENT L1DCSM
   PORT (
      CLK        : IN     std_logic ;
      DCacheHit  : IN     STD_LOGIC ;
      DCacheMIss : IN     STD_LOGIC ;
      DPResp_H   : IN     STD_LOGIC ;
      RESET_L    : IN     std_logic ;
      WriteBack  : IN     STD_LOGIC ;
      DPMRead_L  : OUT    STD_LOGIC ;
      DPMWrite_L : OUT    STD_LOGIC ;
      WBSEL      : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT L1DCache
   PORT (
      Address    : IN     lc3b_word ;
      DDATAOUT   : IN     LC3B_WORD ;
      DPMDATAIN  : IN     LC3B_OWORD ;
      DPMREAD_L  : IN     STD_LOGIC ;
      DPMRESP_H  : IN     STD_LOGIC ;
      DPMWRITE_L : IN     STD_LOGIC ;
      DREAD_L    : IN     std_logic ;
      DWRITEH_L  : IN     std_logic ;
      DWRITEL_L  : IN     std_logic ;
      RESET_L    : IN     std_logic ;
      WBSEL      : IN     STD_LOGIC ;
      CacheHit   : OUT    STD_LOGIC ;
      CacheMiss  : OUT    STD_LOGIC ;
      DDatain    : OUT    LC3B_WORD ;
      DPMADDRESS : OUT    LC3B_WORD ;
      DPMDATAOUT : OUT    LC3B_OWORD ;
      DRESP_H    : OUT    STD_LOGIC ;
      WriteBack  : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT L1ICSM
   PORT (
      CLK        : IN     std_logic ;
      ICacheHit  : IN     STD_LOGIC ;
      ICacheMiss : IN     STD_LOGIC ;
      IPResp_H   : IN     STD_LOGIC ;
      RESET_L    : IN     std_logic ;
      IPMRead_L  : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT L1ICache
   PORT (
      Address   : IN     lc3b_word ;
      IREAD_L   : IN     std_logic ;
      PMDATAIN  : IN     LC3B_OWORD ;
      PMRESP_H  : IN     std_logic ;
      Reset_L   : IN     std_logic ;
      CacheHit  : OUT    STD_LOGIC ;
      CacheMiss : OUT    STD_LOGIC ;
      IRESP_H   : OUT    std_logic ;
      I_DATAIN  : OUT    LC3B_WORD 
   );
   END COMPONENT;
   COMPONENT arbiter
   PORT (
      DCacheHit   : IN     std_logic ;
      DPMADDR     : IN     LC3B_WORD ;
      DPMRead_L   : IN     STD_LOGIC ;
      DPMWrite_L  : IN     STD_LOGIC ;
      DRead_L     : IN     STD_LOGIC ;
      DWriteH_L   : IN     STD_LOGIC ;
      DWriteL_L   : IN     STD_LOGIC ;
      ICacheHit   : IN     std_logic ;
      IPMADDR     : IN     LC3B_WORD ;
      IPMRead_L   : IN     STD_LOGIC ;
      IRead_L     : IN     STD_LOGIC ;
      MResp_H     : IN     STD_LOGIC ;
      RESET_L     : IN     std_logic ;
      DPResp_H    : OUT    STD_LOGIC ;
      IB_out      : OUT    STD_LOGIC ;
      IPResp_H    : OUT    STD_LOGIC ;
      MADDR       : OUT    LC3B_WORD ;
      MREAD_L     : OUT    STD_LOGIC ;
      MWrite_L    : OUT    STD_LOGIC ;
      M_STALL_L   : OUT    STD_LOGIC ;
      M_Stall     : OUT    STD_LOGIC ;
      NOT_M_STALL : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT DRAM128
   PORT (
      ADDRESS  : IN     LC3B_WORD ;
      DATAOUT  : IN     LC3B_OWORD ;
      MREAD_L  : IN     STD_LOGIC ;
      MWRITE_L : IN     STD_LOGIC ;
      RESET_L  : IN     STD_LOGIC ;
      DATAIN   : OUT    LC3B_OWORD ;
      MRESP_H  : OUT    STD_LOGIC 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : DRAM128 USE ENTITY mp3lib.DRAM128;
   FOR ALL : L1DCSM USE ENTITY ece411.L1DCSM;
   FOR ALL : L1DCache USE ENTITY ece411.L1DCache;
   FOR ALL : L1ICSM USE ENTITY ece411.L1ICSM;
   FOR ALL : L1ICache USE ENTITY ece411.L1ICache;
   FOR ALL : arbiter USE ENTITY ece411.arbiter;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   aL1DCSM : L1DCSM
      PORT MAP (
         CLK        => CLK,
         DCacheHit  => DCacheHit,
         DCacheMIss => DCacheMIss,
         DPResp_H   => DPResp_H,
         RESET_L    => RESET_L,
         WriteBack  => WriteBack,
         DPMRead_L  => DPMRead_L,
         DPMWrite_L => DPMWrite_L,
         WBSEL      => WBSEL
      );
   aL1DCache : L1DCache
      PORT MAP (
         Address    => D_ADDR,
         DDATAOUT   => DDATAOUT,
         DPMDATAIN  => DATAIN,
         DPMREAD_L  => DPMRead_L,
         DPMRESP_H  => DPResp_H,
         DPMWRITE_L => DPMWrite_L,
         DREAD_L    => DRead_L,
         DWRITEH_L  => DWriteH_L,
         DWRITEL_L  => DWriteL_L,
         RESET_L    => RESET_L,
         WBSEL      => WBSEL,
         CacheHit   => DCacheHit,
         CacheMiss  => DCacheMIss,
         DDatain    => DDatain,
         DPMADDRESS => DPMADDR,
         DPMDATAOUT => DPMDATAOUT,
         DRESP_H    => DRESP_H,
         WriteBack  => WriteBack
      );
   aL1ICSM : L1ICSM
      PORT MAP (
         CLK        => CLK,
         ICacheHit  => ICacheHit,
         ICacheMiss => ICacheMiss,
         IPResp_H   => IPResp_H,
         RESET_L    => RESET_L,
         IPMRead_L  => IPMRead_L
      );
   aL1ICache : L1ICache
      PORT MAP (
         Address   => I_ADDR,
         IREAD_L   => I_MRead_L,
         PMDATAIN  => DATAIN,
         PMRESP_H  => IPResp_H,
         Reset_L   => RESET_L,
         CacheHit  => ICacheHit,
         CacheMiss => ICacheMiss,
         IRESP_H   => I_RESP_H,
         I_DATAIN  => I_DATAIN
      );
   aArbiter : arbiter
      PORT MAP (
         DCacheHit   => DCacheHit,
         DPMADDR     => DPMADDR,
         DPMRead_L   => DPMRead_L,
         DPMWrite_L  => DPMWrite_L,
         DRead_L     => DRead_L,
         DWriteH_L   => DWriteH_L,
         DWriteL_L   => DWriteL_L,
         ICacheHit   => ICacheHit,
         IPMADDR     => I_ADDR,
         IPMRead_L   => IPMRead_L,
         IRead_L     => I_MRead_L,
         MResp_H     => MRESP_H,
         RESET_L     => RESET_L,
         DPResp_H    => DPResp_H,
         IB_out      => IB_out,
         IPResp_H    => IPResp_H,
         MADDR       => MADDR,
         MREAD_L     => MREAD_L,
         MWrite_L    => MWrite_L,
         M_STALL_L   => M_STALL_L,
         M_Stall     => M_Stall,
         NOT_M_STALL => NOT_M_STALL
      );
   PRAM : DRAM128
      PORT MAP (
         ADDRESS  => MADDR,
         DATAOUT  => DPMDATAOUT,
         MREAD_L  => MREAD_L,
         MWRITE_L => MWrite_L,
         RESET_L  => RESET_L,
         DATAIN   => DATAIN,
         MRESP_H  => MRESP_H
      );

END struct;
