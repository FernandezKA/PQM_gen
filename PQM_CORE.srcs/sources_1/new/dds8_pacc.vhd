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

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library WORK;
use WORK.main_pkg.all;

entity dds8_pacc is

    port (
        rst_i   : in  std_logic;
        clk_i   : in  std_logic;
        phase_i : in  std_logic_vector(15 downto 0) := (others => '0');
        freq_i  : in  std_logic_vector(31 downto 0);
        fi_o    : out tDATA32_BUS8 := (others=>(others=>'0'))
    );

end entity;

architecture ku of dds8_pacc is

    signal fi_group : std_logic_vector(47 downto 0) := (others=>'0'); 
    signal fi_group_fi0 : std_logic_vector(31 downto 0); -- fi_group + phase_i

    type tRST_PIPE is array (2 downto 0) of std_logic;
    signal rst_pipe : tRST_PIPE := (others=>'0');

begin

    xRST_PIPE : process(clk_i)
    begin
        if rising_edge(clk_i) then
            if rst_i = '1' then
                rst_pipe <= (others=>'1');
            else
                rst_pipe <= rst_pipe(rst_pipe'left-1 downto 0) & '0';
            end if;
        end if;
    end process;

    xMACC_GROUP : entity work.dds8_mod_group_accum
    port map (
        B       => freq_i & "000",
        CLK     => clk_i,
        SCLR    => rst_pipe(0),
        Q       => fi_group
    );

    xFI_ADD : entity work.dds8_mod_fi_add
    port map (
        A       => fi_group(31 downto 0),
        B       => phase_i & x"0000",
        CLK     => clk_i,
        CE      => '1',
        SCLR    => rst_pipe(1),
        S       => fi_group_fi0
    );

    xGEN_MADD : for i in 0 to 7 generate
        xMADD_PARTIAL : entity work.dds8_mod_fi_partial
        port map (
            CLK         => clk_i,
            CE          => '1',
            SCLR        => rst_pipe(2),
            A           => freq_i,
            B           => std_logic_vector(to_unsigned(i, 4)),
            C           => fi_group_fi0,
            SUBTRACT    => '0',
            P           => fi_o(i),
            PCOUT       => open
        );
    end generate;

end architecture;