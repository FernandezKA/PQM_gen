-------------------------------------------------------------------------------
--
-- Description : 
--
-- Сумматор-вычитатор 32-битных чисел.
-- Операция разбивается на 2 по 16 бит.
-- Задержка 4 такта.
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_unsigned.all;

--library WORK;
--use WORK.pkg.all;

library unisim;
use unisim.VCOMPONENTS.all;

entity pipeadd32 is
	generic(a_minus_b:boolean := false);
	port(
		clk : in STD_LOGIC;
		a_in : in STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
		b_in : in STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
		c_out : out STD_LOGIC_VECTOR(31 downto 0) := (others => '0')
	    );
end pipeadd32;

architecture ku of pipeadd32 is

signal stage0a: std_logic_vector(31 downto 0) := (others => '0');
signal stage0b: std_logic_vector(31 downto 0) := (others => '0');

signal stage1a: std_logic_vector(15 downto 0) := (others => '0');
signal stage1b: std_logic_vector(15 downto 0) := (others => '0');
signal stage1c: std_logic_vector(16 downto 0) := (others => '0');

signal stage2c0: std_logic_vector(15 downto 0) := (others => '0');
signal stage2c1: std_logic_vector(15 downto 0) := (others => '0');

begin-----------------------------------------------

process (clk)
begin
	if rising_edge(clk) then
		stage0a <= a_in;
		stage0b <= b_in;
		
		stage1a <= stage0a(31 downto 16);
		stage1b <= stage0b(31 downto 16);
		
		stage2c0 <= stage1c(15 downto 0);

		if a_minus_b then
			stage1c <= ('0' & stage0a(15 downto 0)) - stage0b(15 downto 0);
			stage2c1 <= stage1a - stage1b - stage1c(16);
		else
			stage1c <= ('0' & stage0a(15 downto 0)) + stage0b(15 downto 0);
			stage2c1 <= stage1a + stage1b + stage1c(16);
		end if;
		
		c_out <= stage2c1 & stage2c0;
	end if;
end process;

end ku;