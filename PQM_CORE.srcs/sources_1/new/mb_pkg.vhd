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
	
library IEEE;
use IEEE.std_logic_1164.all;

package mb_pkg is
    
    constant REGARRAY_NUM_REG    : integer := 64;
    constant REGARRAY_REG_SIZE   : integer := 32;
    constant REGARRAY_ADDR_SIZE  : integer := 32;
    
    type TRegArray is array (REGARRAY_NUM_REG-1 downto 0) of std_logic_vector(REGARRAY_REG_SIZE-1 downto 0);
  
    constant ARM_AXI0_BASEADDR : std_logic_vector(REGARRAY_ADDR_SIZE-1 downto 0) := x"00000000";
    constant ARM_AXI1_BASEADDR : std_logic_vector(REGARRAY_ADDR_SIZE-1 downto 0) := x"00000000";
    constant ARM_AXI2_BASEADDR : std_logic_vector(REGARRAY_ADDR_SIZE-1 downto 0) := x"00000000";
    
    constant ARM_AXI0_HI_ADDR_MASK  : std_logic_vector(REGARRAY_ADDR_SIZE-1 downto 0) := x"FFFC0000";
    constant ARM_AXI0_LO_ADDR_MASK  : std_logic_vector(REGARRAY_ADDR_SIZE-1 downto 0) := x"0003FFFF";
    constant ARM_AXI1_HI_ADDR_MASK  : std_logic_vector(REGARRAY_ADDR_SIZE-1 downto 0) := x"FFFC0000";
    constant ARM_AXI1_LO_ADDR_MASK  : std_logic_vector(REGARRAY_ADDR_SIZE-1 downto 0) := x"0003FFFF";
    
	constant ARM_AXI1_SIZE          : integer := 128*1024*2;
    constant ARM_AXI2_SIZE          : integer := 128*1024*2;

end package;