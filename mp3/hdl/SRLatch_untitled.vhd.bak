--
-- VHDL Architecture ece411.SRLatch.untitled
--
-- Created:
--          by - hyunyi1.ews (gelib-057-09.ews.illinois.edu)
--          at - 11:47:11 03/28/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY SRLatch IS
   PORT( 
      S : IN     std_logic;
      R : IN     std_logic;
      Q : OUT    std_logic;
      Qbar: OUT  std_logic
   );

-- Declarations

END SRLatch ;

--
ARCHITECTURE untitled OF SRLatch IS
  signal Qprev : std_logic:='0';
  signal Qbarprev: std_logic:='1';
BEGIN
  Qprev<=R nor Qbarprev;
  Qbarprev<=s nor Qprev;
  Qbar<=Qbarprev after 3ns;
  Q<=Qprev after 3ns;
END ARCHITECTURE untitled;

