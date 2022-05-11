----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.02.2022 12:39:18
-- Design Name: 
-- Module Name: Core_tb - Behavioral
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
--library UNISIM;
--use UNISIM.VComponents.all;

entity Core_tb is
--  Port ( );
end Core_tb;

architecture Behavioral of Core_tb is
signal        addra_tb : STD_LOGIC_VECTOR (10 DOWNTO 0) := (OTHERS => '0');
signal        dina_tb :  STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
signal        wea_tb : STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
signal        ena_tb : STD_LOGIC := '0';
        --for connecting with other module
signal        clk_core_tb : STD_LOGIC := '0';
signal        rst_core_tb : STD_LOGIC := '1';
signal        trig_core_tb : STD_LOGIC := '0';
signal        en_core_tb : STD_LOGIC := '1';
        --implement gpio  
signal        GPIOA_tb : STD_LOGIC_VECTOR (32 - 1 DOWNTO 0);

signal clk : std_logic := '0';
begin

core_mod: entity work.CORE port map(
addra => addra_tb, 
dina => dina_tb, 
wea_i => wea_tb, 
ena => ena_tb, 
clk_core => clk_core_tb, 
rst_core => rst_core_tb, 
trig_core => trig_core_tb, 
en_core => en_core_tb, 
GPIO_ext_out => GPIOA_tb
);

clk_gen: process begin
    wait for 7 ns;
    clk <= not clk;
    clk_core_tb <= clk;
end process;

tb_proc: process begin
    wait for 1 us;
    rst_core_tb <= '0';
    wait for 1 uS;
    trig_core_tb <= '1';
    wait for 15 ns;
    trig_core_tb <= '0';
    wait for 500 ms;
    
end process tb_proc;

end Behavioral;
