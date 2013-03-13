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
      CONTROL_WORD : OUT    LC3B_WORD;
      CINDEX       : IN     LC3B_CWORD
   );

-- Declarations

END CONTROL_ROM ;

--
--CONTROL WORD STRUCTURE:
--  BITS 15 DOWNTO 13 are ALUOP
--  BIT  12           is  PCMUXSel
--  BIT  11           is  LD_MAR
--  BIT  10           is  LD_MDR
--  BIT  9            is  MDRMUXSel
--  BIT  8            is  SR2MUXSel
--  BIT  7            is  SRMUXSel
--  BIT  6            is  ADDR1MUXSel
--  BITS 5 DOWNTO 4   are ADDR2MuxSel
--  BIT  3            is  LD_REG
--  BIT  2            is  MEM_READ_L
--  BIT  1            is  MEM_WRITEH_L
--  BIT  0            is  MEM_WRITEL_L
ARCHITECTURE untitled OF CONTROL_ROM IS
BEGIN
  PROCESS(CINDEX)
  BEGIN
    case CINDEX is
      when "0001000" => -- ADD
        CONTROL_WORD <= "0000000000001000" after DELAY_ROM;
      when "0001100" => -- ADDimm
        CONTROL_WORD <= "0000000100001000" after DELAY_ROM;
        --SR2MUXSel = 1
      when "0101000" => -- AND
        CONTROL_WORD <= "0010000000001000" after DELAY_ROM;
      when "0101100" => -- ANDimm
        CONTROL_WORD <= "0010000100001000" after DELAY_ROM;
        --SR2MUXSel = 1
      when "0000000" => -- BR
        CONTROL_WORD <= "0001000000010000" after DELAY_ROM;
        --PCMUXSel = 1
        --ADDR2MUXSel = 01
      when "0110000" => -- LDR
        CONTROL_WORD <= "0000111001101000" after DELAY_ROM;
        --LD_MAR = 1
        --LD_MDR = 1
        --MDRMUXSel = 1
        --ADDR1MUXSel = 1
        --ADDR2MUXSel = 10
      when "0111000" => -- STR
        CONTROL_WORD <= "0000110011100000" after DELAY_ROM;
        --LD_MAR = 1
        --LD_MDR = 1
        --SRMUXSel = 1
        --ADDR1MUXSel = 1
        --ADDR2MUXSel = 10
      when others =>
    end case;
  END PROCESS;

END ARCHITECTURE untitled;

