--
-- VHDL Architecture ece411.OffsetDecoder.untitled
--
-- Created:
--          by - mccart18.ews (linux7.ews.illinois.edu)
--          at - 03:46:03 03/06/13
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY OffsetDecoder IS
  PORT(
    OFFSET : IN LC3B_C_OFFSET;
    SEL_BYTE : OUT LC3B_BYTE
  );
-- Declarations

END OffsetDecoder ;

--
ARCHITECTURE untitled OF OffsetDecoder IS
BEGIN
  PROCESS (OFFSET, SEL_BYTE)
    variable state : LC3B_BYTE;
    begin
      case OFFSET(3 downto 1) IS
        when "111" =>
          state := "10000000";
        when "110" =>
          state := "01000000";
        when "101" =>
          state := "00100000";
        when "100" =>
          state := "00010000";
        when "011" =>
          state := "00001000";
        when "010" =>
          state := "00000100";
        when "001" =>
          state := "00000010";
        when "000" =>
          state := "00000001";
        when others =>
          state := "00000000";
        end case;
      SEL_BYTE <= state after DELAY_DECODE3;
    END PROCESS;
END ARCHITECTURE untitled;

