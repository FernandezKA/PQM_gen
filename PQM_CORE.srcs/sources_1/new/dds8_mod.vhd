--=============================================================================
-- Project: Каракатица
-- Copyright: Radiotechnologies
-- Author: IG, GURU
-- Follower: ASG
-- Revision: 0.02
-- Last revised:
-------------------------------------------------------------------------------
-- Description :
--     DDS генератор, формирующий 8 выборок за такт
--
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Revision History:
-- 2010.07.29 добавлены комментарии, удалены лишние выходы
-- 2021.04.05 нет такой вещи, которую нельзя испортить ещё больше :)
--
--=============================================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library UNISIM;
use UNISIM.vcomponents.all;

library WORK;
use WORK.main_pkg.all;

entity dds8_mod is
    generic (
        C_OUT_UNSIGNED : std_logic := '1'
    );
    port(
        clk_i       : in  std_logic := '0';
        rst_i       : in  std_logic := '0';
        a_we_i      : in  std_logic := '1'; -- можно повесить в воздухе =)
        f_we_i      : in  std_logic := '1'; -- можно повесить в воздухе =)
        freq_i      : in  std_logic_vector(31 downto 0) := (others=>'0');
        phase_i     : in  std_logic_vector(15 downto 0) := (others => '0');
        amp_i       : in  std_logic_vector(15 downto 0) := (others=>'0');
        cos14_o     : out tDAC_BUS := (others=>(others=>'0'));
        sin14_o     : out tDAC_BUS := (others=>(others=>'0'))
    );

    attribute SHREG_EXTRACT: string;
    attribute SHREG_EXTRACT of dds8_mod: entity is "NO";

end entity;

architecture ku of dds8_mod is

    constant C_DAC_BITS : integer := 14;

    signal freq_reg : std_logic_vector(31 downto 0) := (others=>'0');

    signal fi : tDATA32_BUS8 := (others=>(others=>'0'));

    type t_array_LUT_out is array (7 downto 0) of std_logic_vector(15 downto 0);
    signal lut_sin  : t_array_LUT_out := (others=>(others=> '0'));
    signal lut_cos  : t_array_LUT_out := (others=>(others=> '0'));

    signal amp_reg  : std_logic_vector(15 downto 0) := (others =>'0');
    signal amp_corr : std_logic_vector(15 downto 0) := (others =>'0');

    type t_array_8x16 is array (7 downto 0) of std_logic_vector(15 downto 0);
    signal amp16_1  : t_array_8x16 := (others => (others => '0'));
    signal amp16_2  : t_array_8x16 := (others => (others => '0'));

    type t_array_8x21 is array (7 downto 0) of std_logic_vector(20 downto 0);
    signal sin20    : t_array_8x21 := (others => (others => '0'));
    signal cos20    : t_array_8x21 := (others => (others => '0'));

    type t_array_8x48 is array (7 downto 0) of std_logic_vector(47 downto 0);
    signal sin48    : t_array_8x48 := (others => (others => '0'));
    signal cos48    : t_array_8x48 := (others => (others => '0'));

    --signal rst : std_logic := '0';
    --signal rst_pipe : std_logic_vector(1 downto 0) := "00";
    --signal rst_pipe_n : std_logic_vector(1 downto 0) := "00";

    type tRST_PIPE is array (1 downto 0) of std_logic;
    signal rst_pipe : tRST_PIPE := (others=>'0');

begin

    xRST_PIPE : process(clk_i) begin
        if rising_edge(clk_i) then
            if rst_i = '1' then
                rst_pipe <= (others=>'1');
            else
                rst_pipe <= rst_pipe(rst_pipe'left-1 downto 0) & '0';
            end if;
        end if;
    end process;

    xFREQ_REG : process (clk_i)
    begin
        if rising_edge(clk_i) then
            if f_we_i = '1' then
                freq_reg <= freq_i;
            end if;
        end if;
    end process;

--    xAMP_REG : process(clk_i)
--    begin
--        if rising_edge(clk_i) then
--            if a_we_i = '1' then
--                amp_corr <= amp_i;
--            end if;
--        end if;
--    end process;

    xPACC : entity work.dds8_pacc
    port map (
        clk_i   => clk_i,
        rst_i   => rst_pipe(0),
        phase_i => phase_i,
        freq_i  => freq_reg,
        fi_o    => fi
    );

    xGEN_LUT: for i in 0 to 7 generate
        xSINCOS_LUT : entity work.dds_lut_25x16
        port map (
            aclk                                => clk_i,
            aresetn                             => not rst_pipe(1),
            s_axis_phase_tvalid                 => '1',
            s_axis_phase_tdata(31 downto 25)    => (others => '0'),
            s_axis_phase_tdata(24 downto 0)     => fi(i)(31 downto 7),
            m_axis_data_tvalid => open,
            m_axis_data_tdata(31 downto 16)     => lut_sin(i),
            m_axis_data_tdata(15 downto 0)      => lut_cos(i)
        );
    end generate;

    -- -Умножитель, -добавление шума и +выход.
    xGEN_OUT: for i in 7 downto 0 generate

--        sin20(i)    <= lut_sin(i) when rising_edge(clk_i);
--        cos20(i)    <= lut_cos(i) when rising_edge(clk_i);
--        amp16_1(i)  <= amp_corr when rising_edge(clk_i);
--        amp16_2(i)  <= amp_corr when rising_edge(clk_i);

--        xSIN_AMP_MULT : entity work.dds8_amp_mult
--        port map(
--            clk         => clk_i,
--            ce          => '1',
--            sclr        => '0',
--            a           => sin20(i),
--            b           => amp16_1(i),
--            c           => (others=>'0'),
--            subtract    => '0',
--            p           => sin48(i),
--            pcout       => open
--        );

--        xCOS_AMP_MULT : entity work.dds12_amp_mult
--        port map(
--            clk         => clk_i,
--            ce          => '1',
--            sclr        => '0',
--            a           => cos20(i),
--            b           => amp16_2(i),
--            c           => (others=>'0'),
--            subtract    => '0',
--            p           => cos48(i),
--            pcout       => open
--        );

        -- Подключение выходов.
--        sin14_o(i) <= (sin48(i)(36) xor out_unsigned) & sin48(i)(35 downto 36-c_dac_bits+1) when rising_edge(clk_i);
--        cos14_o(i) <= (cos48(i)(36) xor out_unsigned) & cos48(i)(35 downto 36-c_dac_bits+1) when rising_edge(clk_i);
        sin14_o(i) <= (lut_sin(i)(C_DSP_WIDTH-1) xor C_OUT_UNSIGNED) & lut_sin(i)(C_DSP_WIDTH-2 downto C_DSP_WIDTH-c_dac_bits) when rising_edge(clk_i);
        cos14_o(i) <= (lut_cos(i)(C_DSP_WIDTH-1) xor C_OUT_UNSIGNED) & lut_cos(i)(C_DSP_WIDTH-2 downto C_DSP_WIDTH-c_dac_bits) when rising_edge(clk_i);

    end generate;

end architecture;
