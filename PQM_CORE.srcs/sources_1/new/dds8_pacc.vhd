--=============================================================================
-- Project:
-- Copyright: IMT LLC.
-- Author: Dmitry Pogrebnoy
-- Revision: 0
-------------------------------------------------------------------------------
-- Description:
--
--
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Revision History:
--
--
--
--=============================================================================

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

LIBRARY WORK;
USE WORK.main_pkg.ALL;

ENTITY dds8_pacc IS

    PORT (
        rst_i : IN STD_LOGIC;
        clk_i : IN STD_LOGIC;
        phase_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
        freq_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        fi_o : OUT tDATA32_BUS8 := (OTHERS => (OTHERS => '0'))
    );

END ENTITY;

ARCHITECTURE ku OF dds8_pacc IS

    SIGNAL fi_group : STD_LOGIC_VECTOR(47 DOWNTO 0) := (OTHERS => '0');
    SIGNAL fi_group_fi0 : STD_LOGIC_VECTOR(31 DOWNTO 0); -- fi_group + phase_i

    TYPE tRST_PIPE IS ARRAY (2 DOWNTO 0) OF STD_LOGIC;
    SIGNAL rst_pipe : tRST_PIPE := (OTHERS => '0');

BEGIN

    xRST_PIPE : PROCESS (clk_i)
    BEGIN
        IF rising_edge(clk_i) THEN
            IF rst_i = '1' THEN
                rst_pipe <= (OTHERS => '1');
            ELSE
                rst_pipe <= rst_pipe(rst_pipe'left - 1 DOWNTO 0) & '0';
            END IF;
        END IF;
    END PROCESS;

    xMACC_GROUP : ENTITY work.dds8_mod_group_accum
        PORT MAP(
            B => freq_i & "000",
            CLK => clk_i,
            SCLR => rst_pipe(0),
            Q => fi_group
        );

    xFI_ADD : ENTITY work.dds8_mod_fi_add
        PORT MAP(
            A => fi_group(31 DOWNTO 0),
            B => phase_i & x"0000",
            CLK => clk_i,
            CE => '1',
            SCLR => rst_pipe(1),
            S => fi_group_fi0
        );

    xGEN_MADD : FOR i IN 0 TO 7 GENERATE
        xMADD_PARTIAL : ENTITY work.dds8_mod_fi_partial
            PORT MAP(
                CLK => clk_i,
                CE => '1',
                SCLR => rst_pipe(2),
                A => freq_i,
                B => STD_LOGIC_VECTOR(to_unsigned(i, 4)),
                C => fi_group_fi0,
                SUBTRACT => '0',
                P => fi_o(i),
                PCOUT => OPEN
            );
    END GENERATE;

END ARCHITECTURE;