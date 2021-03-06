-- VHDL Entity ece411.L1ICSM.interface
--
-- Created:
--          by - hyunyi1.ews (gelib-057-09.ews.illinois.edu)
--          at - 22:31:22 03/28/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY L1ICSM IS
   PORT( 
      CLK        : IN     std_logic;
      ICacheHit  : IN     STD_LOGIC;
      ICacheMiss : IN     STD_LOGIC;
      IPResp_H   : IN     STD_LOGIC;
      RESET_L    : IN     std_logic;
      IPMRead_L  : OUT    STD_LOGIC
   );

-- Declarations

END L1ICSM ;

--
-- VHDL Architecture ece411.L1ICSM.fsm
--
-- Created:
--          by - hyunyi1.ews (gelib-057-09.ews.illinois.edu)
--          at - 22:31:22 03/28/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
 
ARCHITECTURE fsm OF L1ICSM IS

   TYPE STATE_TYPE IS (
      ICacheHitState,
      IMemAccess
   );
 
   -- Declare current and next state signals
   SIGNAL current_state : STATE_TYPE;
   SIGNAL next_state : STATE_TYPE;

BEGIN

   -----------------------------------------------------------------
   clocked_proc : PROCESS ( 
      clk,
      Reset_L
   )
   -----------------------------------------------------------------
   BEGIN
      IF (Reset_L = '0') THEN
         current_state <= ICacheHitState;
      ELSIF (clk'EVENT AND clk = '1') THEN
         current_state <= next_state;
      END IF;
   END PROCESS clocked_proc;
 
   -----------------------------------------------------------------
   nextstate_proc : PROCESS ( 
      ICacheHit,
      ICacheMiss,
      IPResp_H,
      current_state
   )
   -----------------------------------------------------------------
   BEGIN
      CASE current_state IS
         WHEN ICacheHitState => 
            IF (ICacheHit='1') THEN 
               next_state <= ICacheHitState;
            ELSIF (ICacheMiss='1') THEN 
               next_state <= IMemAccess;
            ELSE
               next_state <= ICacheHitState;
            END IF;
         WHEN IMemAccess => 
            IF (IPRESP_H ='1') THEN 
               next_state <= ICacheHitState;
            ELSE
               next_state <= IMemAccess;
            END IF;
         WHEN OTHERS =>
            next_state <= ICacheHitState;
      END CASE;
   END PROCESS nextstate_proc;
 
   -----------------------------------------------------------------
   output_proc : PROCESS ( 
      current_state
   )
   -----------------------------------------------------------------
   BEGIN
      -- Default Assignment
      IPMRead_L <= '1';

      -- Combined Actions
      CASE current_state IS
         WHEN IMemAccess => 
            IPMRead_L<='0' after 6ns;
         WHEN OTHERS =>
            NULL;
      END CASE;
   END PROCESS output_proc;
 
END fsm;
