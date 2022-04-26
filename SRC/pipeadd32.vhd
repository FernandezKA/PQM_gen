-------------------------------------------------------------------------------
--
-- Description : 
--
-- ��������-��������� 32-������ �����.
-- �������� ����������� �� 2 �� 16 ���.
-- �������� 4 �����.
--
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;

--library WORK;
--use WORK.pkg.all;

LIBRARY unisim;
USE unisim.VCOMPONENTS.ALL;

ENTITY pipeadd32 IS
	GENERIC (a_minus_b : BOOLEAN := false);
	PORT (
		clk : IN STD_LOGIC;
		a_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
		b_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
		c_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0')
	);
END pipeadd32;

ARCHITECTURE ku OF pipeadd32 IS

	SIGNAL stage0a : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL stage0b : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');

	SIGNAL stage1a : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
	SIGNAL stage1b : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
	SIGNAL stage1c : STD_LOGIC_VECTOR(16 DOWNTO 0) := (OTHERS => '0');

	SIGNAL stage2c0 : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
	SIGNAL stage2c1 : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');

BEGIN-----------------------------------------------

	PROCESS (clk)
	BEGIN
		IF rising_edge(clk) THEN
			stage0a <= a_in;
			stage0b <= b_in;

			stage1a <= stage0a(31 DOWNTO 16);
			stage1b <= stage0b(31 DOWNTO 16);

			stage2c0 <= stage1c(15 DOWNTO 0);

			IF a_minus_b THEN
				stage1c <= ('0' & stage0a(15 DOWNTO 0)) - stage0b(15 DOWNTO 0);
				stage2c1 <= stage1a - stage1b - stage1c(16);
			ELSE
				stage1c <= ('0' & stage0a(15 DOWNTO 0)) + stage0b(15 DOWNTO 0);
				stage2c1 <= stage1a + stage1b + stage1c(16);
			END IF;

			c_out <= stage2c1 & stage2c0;
		END IF;
	END PROCESS;

END ku;