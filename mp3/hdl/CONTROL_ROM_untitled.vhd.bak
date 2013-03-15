--
-- VHDL Architecture ece411.CONTROL_ROM.untitled
--
-- Created:
--          by - mccart18.ews (gelib-057-16.ews.illinois.edu)
--          at - 02:03:05 03/12/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY CONTROL_ROM IS
   PORT( 
      CINDEX       : IN     LC3B_CWORD;
      CONTROL_WORD : OUT    LC3B_DWORD
   );

-- Declarations

END CONTROL_ROM ;

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
ARCHITECTURE untitled OF CONTROL_ROM IS
BEGIN
  PROCESS(CINDEX)
  BEGIN
    case CINDEX is
      when "0001000" => -- ADD
        CONTROL_WORD <= "00000000000011" & "000000000000000" & "111" after DELAY_ROM;
      when "0001100" => -- ADDimm
        CONTROL_WORD <= "00000010000011" & "000000000000000" & "111" after DELAY_ROM;
        --SR2MUXSel = 1
      when "0101000" => -- AND
        CONTROL_WORD <= "00100000000011" & "000000000000000" & "111" after DELAY_ROM;
      when "0101100" => -- ANDimm
        CONTROL_WORD <= "00100010000011" & "000000000000000" & "111" after DELAY_ROM;
        --SR2MUXSel = 1
      when "0000000" => -- BR
        CONTROL_WORD <= "00010000000100" & "000000000000000" & "111" after DELAY_ROM;
      when "0000100" => -- BR
        CONTROL_WORD <= "00010000000100" & "000000000000000" & "111" after DELAY_ROM;
        --PCMUXSel = 1
        --ADDR2MUXSel = 01
      when "0110000" => -- LDR
        CONTROL_WORD <= "00001000011011" & "000000000000000" & "011" after DELAY_ROM;
        --WDATAMUXSel = 1
        --MDRMUXSel = 0
        --ADDR1MUXSel = 01
        --ADDR2MUXSel = 10
        --MEM_READ_L = 0
      when "0111000" => -- STR
        CONTROL_WORD <= "01100111101000" & "000000000000000" & "100" after DELAY_ROM;
        --ALUOP = 011 (PASS)
        --MDRMUXSel = 1
        --SR1MUXSel = 1
        --ADDR1MUXSel = 10
        --ADDR2MUXSel = 10
        --MEM_WRITEH_L = 0
        --MEM_WRITEL_L = 0
      when others =>
        CONTROL_WORD <= "00000000000000" & "000000000000000" & "111" after DELAY_ROM;
    end case;
  END PROCESS;

END ARCHITECTURE untitled;

