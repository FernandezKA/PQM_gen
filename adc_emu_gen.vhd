----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.03.2022 16:24:14
-- Design Name: 
-- Module Name: adc_emu_gen - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

library main_pkg;
use work.main_pkg.all;

entity adc_emu_mux is
    Port ( adc_clk_i 	: in STD_LOGIC;
		   en_i 		: std_logic := '0';
		   adc_bus_x4_i : in std_logic_vector(C_ADC_WIDTH*4-1 downto 0);
           adc_bus_x4_o : out std_logic_vector(C_ADC_WIDTH*4-1 downto 0)
		   );
end adc_emu_mux;

architecture Behavioral of adc_emu_mux is
signal cnt		: unsigned(C_ADC_WIDTH-1-2 downto 0):= (others => '0');
signal scnt 	: std_logic_vector(C_ADC_WIDTH-1-2 downto 0);
constant zero	: std_logic_vector(1 downto 0) := b"00";
constant one	: std_logic_vector(1 downto 0) := b"01";
constant two	: std_logic_vector(1 downto 0) := b"10";
constant three	: std_logic_vector(1 downto 0) := b"11";


signal rst : std_logic;
begin
	rst <= not en_i;
	xCNT : process(adc_clk_i) begin
	if rising_edge(adc_clk_i) then
		cnt <= cnt + 1;
	end if;
	
	end process;
	
	scnt <= std_logic_vector(cnt);
	
	xADC_INOUT : process(adc_clk_i) begin
		if rising_edge(adc_clk_i) then
			if (en_i='1') then
				adc_bus_x4_o <= scnt&zero&scnt&one&scnt&two&scnt&three;
			else
				adc_bus_x4_o <= adc_bus_x4_i;
			end if;
		end if;
	end process;

end Behavioral;
