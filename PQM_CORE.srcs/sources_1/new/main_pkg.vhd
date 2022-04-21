--=============================================================================
-- Project: 
-- Copyright: Radiotechnologies
-- Author: Dmitry Pogrebnoy
-- Revision: 0.01 
-- Last revised: 
-------------------------------------------------------------------------------
-- Description:
--
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Revision History:
--
--=============================================================================

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

PACKAGE main_pkg IS

    CONSTANT C_DSP_WIDTH : INTEGER := 16;
    CONSTANT C_ADC_WIDTH : INTEGER := 12;
    CONSTANT C_DAC_WIDTH : INTEGER := 14;
    CONSTANT one : STD_LOGIC := '1';
    CONSTANT gnd : STD_LOGIC := '0';

    TYPE Tadc_bus IS ARRAY(1 DOWNTO 0) OF STD_LOGIC_VECTOR(C_ADC_WIDTH - 1 DOWNTO 0);
    TYPE Tdac_bus IS ARRAY(7 DOWNTO 0) OF STD_LOGIC_VECTOR(C_DAC_WIDTH - 1 DOWNTO 0);
    TYPE Tdac_bus_plus IS ARRAY(7 DOWNTO 0) OF STD_LOGIC_VECTOR(C_DAC_WIDTH DOWNTO 0);
    TYPE Tdata_bus IS ARRAY(1 DOWNTO 0) OF STD_LOGIC_VECTOR(C_DSP_WIDTH - 1 DOWNTO 0);
    TYPE Tdata32_bus8 IS ARRAY(7 DOWNTO 0) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
    TYPE Tdata4_bus IS ARRAY(3 DOWNTO 0) OF STD_LOGIC_VECTOR(C_DSP_WIDTH - 1 DOWNTO 0);
    TYPE Tdds_bus IS ARRAY(1 DOWNTO 0) OF STD_LOGIC_VECTOR(C_DSP_WIDTH - 1 DOWNTO 0);
    TYPE Tdds4_bus IS ARRAY(3 DOWNTO 0) OF STD_LOGIC_VECTOR(C_DSP_WIDTH - 1 DOWNTO 0);
    TYPE Tdds8_bus IS ARRAY(7 DOWNTO 0) OF STD_LOGIC_VECTOR(C_DSP_WIDTH - 1 DOWNTO 0);

    TYPE TStr10 IS ARRAY (0 TO 9) OF STRING(1 TO 1);
    CONSTANT Str10 : TStr10 := ("0", "1", "2", "3", "4", "5", "6", "7", "8", "9");

    FUNCTION itoa(x : INTEGER) RETURN STRING;

END PACKAGE;

PACKAGE BODY main_pkg IS

    FUNCTION itoa(x : INTEGER) RETURN STRING IS
        VARIABLE n : INTEGER := x; -- needed by some compilers
    BEGIN
        IF n < 0 THEN
            RETURN "-" & itoa(-n);
        ELSIF n < 10 THEN
            RETURN Str10(n);
        ELSE
            RETURN itoa(n/10) & Str10(n REM 10);
        END IF;
    END FUNCTION itoa;

END main_pkg;