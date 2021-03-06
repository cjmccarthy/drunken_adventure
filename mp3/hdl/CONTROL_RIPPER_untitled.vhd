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
      CONTROL_WORD : IN     LC3B_DWORD;
      ALUOP        : OUT    LC3B_ALUOP;
      BRen         : OUT    STD_LOGIC;
      WDATAMUXSel  : OUT    STD_LOGIC;
      MDRMUXSel    : OUT    STD_LOGIC;
      SR2MUXSel    : OUT    STD_LOGIC;
      SR1MUXSel    : OUT    STD_LOGIC;
      ADDR1MUXSel  : OUT    LC3B_4MUX_SEL;
      ADDR2MUXSel  : OUT    LC3B_4MUX_SEL;
      LD_REG       : OUT    STD_LOGIC;
      LDcc         : OUT    STD_LOGIC;
      SR2_OUT_MUXSel  : OUT STD_LOGIC;
      MEM_READ_L   : OUT    STD_LOGIC;
      MEM_WRITEH_L : OUT    STD_LOGIC;
      MEM_WRITEL_L : OUT    STD_LOGIC
   );

-- Declarations

END CONTROL_RIPPER ;

--
--CONTROL WORD STRUCTURE:
--ACTIVE HIGHS
--  BITS 31 DOWNTO 29 are ALUOP
--  BIT  28           is  BRen
--  BIT  27           is  WDATAMUXSel
--  BIT  26           is  MDRMUXSel
--  BIT  25            is  SR2MUXSel
--  BIT  24            is  SR1MUXSel
--  BIT  23 DOWNTO 22   are ADDR1MUXSel
--  BITS 21 DOWNTO 20   are ADDR2MuxSel
--  BIT  19            is  LD_REG
--  BIT  18            is  LDcc

--  BIT  17            is  SR2_OUT_MUXSel

--  BITS 16-3 are unused

--ACTIVE LOWS
--  BIT  2            is  MEM_READ_L
--  BIT  1            is  MEM_WRITEH_L
--  BIT  0            is  MEM_WRITEL_L
ARCHITECTURE untitled OF CONTROL_RIPPER IS
BEGIN
  ALUOP       <=CONTROL_WORD(31 downto 29);
  BRen        <=CONTROL_WORD(28);
  WDATAMUXSel <=CONTROL_WORD(27);
  MDRMUXSel   <=CONTROL_WORD(26);
  SR2MUXSel   <=CONTROL_WORD(25);
  SR1MUXSel   <=CONTROL_WORD(24);
  ADDR1MUXSel <=CONTROL_WORD(23 downto 22);
  ADDR2MUXSel <=CONTROL_WORD(21 downto 20);
  LD_REG      <=CONTROL_WORD(19);
  LDcc        <=CONTROL_WORD(18);
  
  SR2_OUT_MUXSel  <=  CONTROL_WORD(17);
  
  MEM_READ_L  <=CONTROL_WORD(2);
  MEM_WRITEH_L<=CONTROL_WORD(1);
  MEM_WRITEL_L<=CONTROL_WORD(0);
END ARCHITECTURE untitled;

