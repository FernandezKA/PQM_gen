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

PACKAGE mb_pkg IS

    CONSTANT REGARRAY_NUM_REG : INTEGER := 64;
    CONSTANT REGARRAY_REG_SIZE : INTEGER := 32;
    CONSTANT REGARRAY_ADDR_SIZE : INTEGER := 32;

    TYPE TRegArray IS ARRAY (REGARRAY_NUM_REG - 1 DOWNTO 0) OF STD_LOGIC_VECTOR(REGARRAY_REG_SIZE - 1 DOWNTO 0);

    CONSTANT ARM_AXI0_BASEADDR : STD_LOGIC_VECTOR(REGARRAY_ADDR_SIZE - 1 DOWNTO 0) := x"00000000";
    CONSTANT ARM_AXI1_BASEADDR : STD_LOGIC_VECTOR(REGARRAY_ADDR_SIZE - 1 DOWNTO 0) := x"00000000";
    CONSTANT ARM_AXI2_BASEADDR : STD_LOGIC_VECTOR(REGARRAY_ADDR_SIZE - 1 DOWNTO 0) := x"00000000";

    CONSTANT ARM_AXI0_HI_ADDR_MASK : STD_LOGIC_VECTOR(REGARRAY_ADDR_SIZE - 1 DOWNTO 0) := x"FFFC0000";
    CONSTANT ARM_AXI0_LO_ADDR_MASK : STD_LOGIC_VECTOR(REGARRAY_ADDR_SIZE - 1 DOWNTO 0) := x"0003FFFF";
    CONSTANT ARM_AXI1_HI_ADDR_MASK : STD_LOGIC_VECTOR(REGARRAY_ADDR_SIZE - 1 DOWNTO 0) := x"FFFC0000";
    CONSTANT ARM_AXI1_LO_ADDR_MASK : STD_LOGIC_VECTOR(REGARRAY_ADDR_SIZE - 1 DOWNTO 0) := x"0003FFFF";

    CONSTANT ARM_AXI1_SIZE : INTEGER := 128 * 1024 * 2;
    CONSTANT ARM_AXI2_SIZE : INTEGER := 128 * 1024 * 2;

END PACKAGE;