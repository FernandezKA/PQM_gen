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

package main_pkg is
    
    constant C_DSP_WIDTH    : integer := 16; 
    constant C_ADC_WIDTH    : integer := 12;
	constant C_DAC_WIDTH    : integer := 14;
	constant one : std_logic := '1';
	constant gnd : std_logic := '0';

	type Tadc_bus   is array(1 downto 0) of std_logic_vector(C_ADC_WIDTH-1 downto 0);
	type Tdac_bus   is array(7 downto 0) of std_logic_vector(C_DAC_WIDTH-1 downto 0);
	type Tdac_bus_plus is array(7 downto 0) of std_logic_vector(C_DAC_WIDTH downto 0);
	type Tdata_bus  is array(1 downto 0) of std_logic_vector(C_DSP_WIDTH-1 downto 0);
	type Tdata32_bus8  is array(7 downto 0) of std_logic_vector(31 downto 0);
    type Tdata4_bus is array(3 downto 0) of std_logic_vector(C_DSP_WIDTH-1 downto 0);
    type Tdds_bus   is array(1 downto 0) of std_logic_vector(C_DSP_WIDTH-1 downto 0);
    type Tdds4_bus  is array(3 downto 0) of std_logic_vector(C_DSP_WIDTH-1 downto 0);
    type Tdds8_bus  is array(7 downto 0) of std_logic_vector(C_DSP_WIDTH-1 downto 0);
    
    type TStr10 is array (0 to 9) of string(1 to 1);
    constant Str10: TStr10 := ("0","1","2","3","4","5","6","7","8","9");
    
    function itoa( x : integer ) return string;

end package;

package body main_pkg is
    
    function itoa( x : integer ) return string is
        variable n: integer := x; -- needed by some compilers
    begin
        if n < 0 then return "-" & itoa(-n);
        elsif n < 10 then return Str10(n);
        else return itoa(n/10) & Str10(n rem 10);
        end if;
    end function itoa;    
    
end main_pkg; 