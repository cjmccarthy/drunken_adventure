--
-- VHDL Architecture ece411.Memory.untitled
--
-- Created:
--          by - mccart18.ews (gelib-057-17.ews.illinois.edu)
--          at - 02:38:52 01/23/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Memory IS
   PORT( 
      ADDRESS   : IN     LC3b_word;
      DATAOUT   : IN     LC3b_word;
      MREAD_L   : IN     std_logic;
      MWRITEH_L : IN     std_logic;
      MWRITEL_L : IN     std_logic;
      RESET_L   : IN     std_logic;
      clk       : IN     std_logic;
      DATAIN    : OUT    LC3b_word;
      MRESP_H   : OUT    std_logic
   );

-- Declarations

END Memory ;

--
-- VHDL Architecture ece411.Memory.struct
--
-- Created:
--          by - mccart18.ews (linux7.ews.illinois.edu)
--          at - 02:23:43 03/06/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;


ARCHITECTURE struct OF Memory IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL MISS        : std_logic;
   SIGNAL PMADDRESS   : LC3B_WORD;
   SIGNAL PMDATAIN    : LC3B_OWORD;
   SIGNAL PMDATAOUT   : LC3B_OWORD;
   SIGNAL PMREAD_L    : STD_LOGIC;
   SIGNAL PMRESP_H    : STD_LOGIC;
   SIGNAL PMWRITE_L   : STD_LOGIC;
   SIGNAL in_idle_hit : STD_LOGIC;
   SIGNAL in_load     : STD_LOGIC;
   SIGNAL in_wbc      : STD_LOGIC;

   -- Implicit buffer signal declarations
   SIGNAL MRESP_H_internal : std_logic;


   -- Component Declarations
   COMPONENT Cache_Controller
   PORT (
      MISS        : IN     std_logic ;
      MRESP_H     : IN     std_logic ;
      PMRESP_H    : IN     STD_LOGIC ;
      RESET_L     : IN     std_logic ;
      clk         : IN     std_logic ;
      PMREAD_L    : OUT    STD_LOGIC ;
      PMWRITE_L   : OUT    STD_LOGIC ;
      in_idle_hit : OUT    STD_LOGIC ;
      in_load     : OUT    STD_LOGIC ;
      in_wbc      : OUT    STD_LOGIC 
   );
   END COMPONENT;
   COMPONENT Cache_Datapath
   PORT (
      ADDRESS     : IN     LC3b_word ;
      DATAOUT     : IN     LC3b_word ;
      MREAD_L     : IN     std_logic ;
      MWRITEH_L   : IN     std_logic ;
      MWRITEL_L   : IN     std_logic ;
      PMDATAIN    : IN     LC3B_OWORD ;
      RESET_L     : IN     std_logic ;
      clk         : IN     std_logic ;
      in_idle_hit : IN     STD_LOGIC ;
      in_load     : IN     STD_LOGIC ;
      in_wbc      : IN     STD_LOGIC ;
      DATAIN      : OUT    LC3b_word ;
      MISS        : OUT    std_logic ;
      MRESP_H     : OUT    std_logic ;
      PMADDRESS   : OUT    LC3B_WORD ;
      PMDATAOUT   : OUT    LC3B_OWORD 
   );
   END COMPONENT;
   COMPONENT Physical_Memory
   PORT (
      clk       : IN     std_logic ;
      PMADDRESS : IN     LC3B_WORD ;
      PMDATAOUT : IN     LC3B_OWORD ;
      PMREAD_L  : IN     STD_LOGIC ;
      PMWRITE_L : IN     STD_LOGIC ;
      RESET_L   : IN     std_logic ;
      PMRESP_H  : OUT    STD_LOGIC ;
      PMDATAIN  : OUT    LC3B_OWORD 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : Cache_Controller USE ENTITY ece411.Cache_Controller;
   FOR ALL : Cache_Datapath USE ENTITY ece411.Cache_Datapath;
   FOR ALL : Physical_Memory USE ENTITY ece411.Physical_Memory;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   Cache_Cont : Cache_Controller
      PORT MAP (
         MISS        => MISS,
         MRESP_H     => MRESP_H_internal,
         PMRESP_H    => PMRESP_H,
         RESET_L     => RESET_L,
         clk         => clk,
         PMREAD_L    => PMREAD_L,
         PMWRITE_L   => PMWRITE_L,
         in_idle_hit => in_idle_hit,
         in_load     => in_load,
         in_wbc      => in_wbc
      );
   Cache_DP : Cache_Datapath
      PORT MAP (
         ADDRESS     => ADDRESS,
         DATAOUT     => DATAOUT,
         MREAD_L     => MREAD_L,
         MWRITEH_L   => MWRITEH_L,
         MWRITEL_L   => MWRITEL_L,
         PMDATAIN    => PMDATAIN,
         RESET_L     => RESET_L,
         clk         => clk,
         in_idle_hit => in_idle_hit,
         in_load     => in_load,
         in_wbc      => in_wbc,
         DATAIN      => DATAIN,
         MISS        => MISS,
         MRESP_H     => MRESP_H_internal,
         PMADDRESS   => PMADDRESS,
         PMDATAOUT   => PMDATAOUT
      );
   PDRAM : Physical_Memory
      PORT MAP (
         clk       => clk,
         PMADDRESS => PMADDRESS,
         PMDATAOUT => PMDATAOUT,
         PMREAD_L  => PMREAD_L,
         PMWRITE_L => PMWRITE_L,
         RESET_L   => RESET_L,
         PMRESP_H  => PMRESP_H,
         PMDATAIN  => PMDATAIN
      );

   -- Implicit buffered output assignments
   MRESP_H <= MRESP_H_internal;

END struct;
