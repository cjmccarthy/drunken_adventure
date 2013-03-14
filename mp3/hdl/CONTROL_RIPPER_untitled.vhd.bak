--
-- VHDL Architecture ece411.CONTROL_RIPPER.untitled
--
-- Created:
--          by - hyunyi1.ews (evrt-252-16.ews.illinois.edu)
--          at - 22:04:45 03/12/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY CONTROL_RIPPER IS
   PORT( 
      CONTROL_WORD : IN     LC3B_WORD;
      ALUOP        : OUT    LC3B_ALUOP;
      --PCMUXsel     : OUT    STD_LOGIC;
      BRen         : OUT    STD_LOGIC;
      LD_MAR       : OUT    STD_LOGIC;
      LD_MDR       : OUT    STD_LOGIC;
      WDATAMUXSel  : OUT    STD_LOGIC;
      MDRMUXSel    : OUT    STD_LOGIC;
      SR2MUXSel    : OUT    STD_LOGIC;
      SR1MUXSel    : OUT    STD_LOGIC;
      ADDR1MUXSel  : OUT    STD_LOGIC;
      ADDR2MUXSel  : OUT    LC3B_4MUX_SEL;
      LD_REG       : OUT    STD_LOGIC;
      MEM_READ_L   : OUT    STD_LOGIC;
      MEM_WRITEH_L : OUT    STD_LOGIC;
      MEM_WRITEL_L : OUT    STD_LOGIC
   );

-- Declarations

END CONTROL_RIPPER ;

--
--CONTROL WORD STRUCTURE:
--  BITS 15 DOWNTO 13 are ALUOP
--  BIT  12           is  PCMUXSel
--  BIT  11           is  LD_MAR
--  BIT  11           is  LD_MDR
--  BIT  10           is  WDATAMUXSel
--  BIT  9            is  MDRMUXSel
--  BIT  8            is  SR2MUXSel
--  BIT  7            is  SR1MUXSel
--  BIT  6            is  ADDR1MUXSel
--  BITS 5 DOWNTO 4   are ADDR2MuxSel
--  BIT  3            is  LD_REG
--  BIT  2            is  MEM_READ_L
--  BIT  1            is  MEM_WRITEH_L
--  BIT  0            is  MEM_WRITEL_L
ARCHITECTURE untitled OF CONTROL_RIPPER IS
BEGIN
  ALUOP       <=CONTROL_WORD(15 downto 13);
  BRen        <=CONTROL_WORD(12);
  --PCMUXSel    <=CONTROL_WORD(12);
  LD_MAR      <=CONTROL_WORD(11);
  LD_MDR      <=CONTROL_WORD(11);
  WDATAMUXSel <=CONTROL_WORD(10);
  MDRMUXSel   <=CONTROL_WORD(9);
  SR2MUXSel   <=CONTROL_WORD(8);
  SR1MUXSel   <=CONTROL_WORD(7);
  ADDR1MUXSel <=CONTROL_WORD(6);
  ADDR2MUXSel <=CONTROL_WORD(5 downto 4);
  LD_REG      <=CONTROL_WORD(3);
  MEM_READ_L  <=CONTROL_WORD(2);
  MEM_WRITEH_L<=CONTROL_WORD(1);
  MEM_WRITEL_L<=CONTROL_WORD(0);
END ARCHITECTURE untitled;

