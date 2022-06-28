--=============================================================================
-- Project: ����������
-- Copyright: Radiotechnologies
-- Author: IG, GURU
-- Follower: ASG
-- Revision: 0.02
-- Last revised:
-------------------------------------------------------------------------------
-- Description :
--     DDS ���������, ����������� 8 ������� �� ����
--
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- Revision History:
-- 2010.07.29 ��������� �����������, ������� ������ ������
-- 2021.04.05 ��� ����� ����, ������� ������ ��������� ��� ������ :)
--
--=============================================================================

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

LIBRARY UNISIM;
USE UNISIM.vcomponents.ALL;

LIBRARY WORK;
USE WORK.main_pkg.ALL;

ENTITY dds8_mod IS
    GENERIC (
        C_OUT_UNSIGNED : STD_LOGIC := '1'
    );
    PORT (
        clk_i : IN STD_LOGIC := '0';
        rst_i : IN STD_LOGIC := '0';
        a_we_i : IN STD_LOGIC := '1'; -- ����� �������� � ������� =)
        f_we_i : IN STD_LOGIC := '1'; -- ����� �������� � ������� =)
        freq_i : IN STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
        phase_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
        amp_i : IN STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
        cos14_o : OUT tDAC_BUS := (OTHERS => (OTHERS => '0'));
        sin14_o : OUT tDAC_BUS := (OTHERS => (OTHERS => '0'))
    );

    ATTRIBUTE SHREG_EXTRACT : STRING;
    ATTRIBUTE SHREG_EXTRACT OF dds8_mod : ENTITY IS "NO";

END ENTITY;

ARCHITECTURE ku OF dds8_mod IS

    CONSTANT C_DAC_BITS : INTEGER := 14;

    SIGNAL freq_reg : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');

    SIGNAL fi : tDATA32_BUS8 := (OTHERS => (OTHERS => '0'));

    TYPE t_array_LUT_out IS ARRAY (7 DOWNTO 0) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL lut_sin : t_array_LUT_out := (OTHERS => (OTHERS => '0'));
    SIGNAL lut_cos : t_array_LUT_out := (OTHERS => (OTHERS => '0'));

    SIGNAL amp_reg : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
    SIGNAL amp_corr : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');

    TYPE t_array_8x16 IS ARRAY (7 DOWNTO 0) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL amp16_1 : t_array_8x16 := (OTHERS => (OTHERS => '0'));
    SIGNAL amp16_2 : t_array_8x16 := (OTHERS => (OTHERS => '0'));

    TYPE t_array_8x21 IS ARRAY (7 DOWNTO 0) OF STD_LOGIC_VECTOR(20 DOWNTO 0);
    SIGNAL sin20 : t_array_8x21 := (OTHERS => (OTHERS => '0'));
    SIGNAL cos20 : t_array_8x21 := (OTHERS => (OTHERS => '0'));

    TYPE t_array_8x48 IS ARRAY (7 DOWNTO 0) OF STD_LOGIC_VECTOR(47 DOWNTO 0);
    SIGNAL sin48 : t_array_8x48 := (OTHERS => (OTHERS => '0'));
    SIGNAL cos48 : t_array_8x48 := (OTHERS => (OTHERS => '0'));

    --signal rst : std_logic := '0';
    --signal rst_pipe : std_logic_vector(1 downto 0) := "00";
    --signal rst_pipe_n : std_logic_vector(1 downto 0) := "00";

    TYPE tRST_PIPE IS ARRAY (1 DOWNTO 0) OF STD_LOGIC;
    SIGNAL rst_pipe : tRST_PIPE := (OTHERS => '0');

    CONSTANT Vss : STD_LOGIC := '0';
    CONSTANT Vdd : STD_LOGIC := '1';

    COMPONENT dds_lut_25x16
        PORT (
            aclk : IN STD_LOGIC;
            aresetn : IN STD_LOGIC;
            s_axis_phase_tvalid : IN STD_LOGIC;
            s_axis_phase_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            m_axis_data_tvalid : OUT STD_LOGIC;
            m_axis_data_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    END COMPONENT;

BEGIN

    xRST_PIPE : PROCESS (clk_i) BEGIN
        IF rising_edge(clk_i) THEN
            IF rst_i = '1' THEN
                rst_pipe <= (OTHERS => '1');
            ELSE
                rst_pipe <= rst_pipe(rst_pipe'left - 1 DOWNTO 0) & '0';
            END IF;
        END IF;
    END PROCESS;

    xFREQ_REG : PROCESS (clk_i)
    BEGIN
        IF rising_edge(clk_i) THEN
            IF f_we_i = '1' THEN
                freq_reg <= freq_i;
            END IF;
        END IF;
    END PROCESS;

    --    xAMP_REG : process(clk_i)
    --    begin
    --        if rising_edge(clk_i) then
    --            if a_we_i = '1' then
    --                amp_corr <= amp_i;
    --            end if;
    --        end if;
    --    end process;

    xPACC : ENTITY work.dds8_pacc
        PORT MAP(
            clk_i => clk_i,
            rst_i => rst_pipe(0),
            phase_i => phase_i,
            freq_i => freq_reg,
            fi_o => fi
        );

    xGEN_LUT : FOR i IN 0 TO 7 GENERATE
        xSINCOS_LUT : dds_lut_25x16
        PORT MAP(
            aclk => clk_i,
            aresetn => NOT rst_pipe(1),
            s_axis_phase_tvalid => Vdd,
            s_axis_phase_tdata(31 DOWNTO 25) => STD_LOGIC_VECTOR(to_unsigned(0, 7)),
            s_axis_phase_tdata(24 DOWNTO 0) => fi(i)(31 DOWNTO 7),
            m_axis_data_tvalid => OPEN,
            m_axis_data_tdata(31 DOWNTO 16) => lut_sin(i),
            m_axis_data_tdata(15 DOWNTO 0) => lut_cos(i)
        );
    END GENERATE;

    -- -����������, -���������� ���� � +�����.
    xGEN_OUT : FOR i IN 7 DOWNTO 0 GENERATE

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

        -- ����������� �������.
        --        sin14_o(i) <= (sin48(i)(36) xor out_unsigned) & sin48(i)(35 downto 36-c_dac_bits+1) when rising_edge(clk_i);
        --        cos14_o(i) <= (cos48(i)(36) xor out_unsigned) & cos48(i)(35 downto 36-c_dac_bits+1) when rising_edge(clk_i);
        sin14_o(i) <= (lut_sin(i)(C_DSP_WIDTH - 1) XOR C_OUT_UNSIGNED) & lut_sin(i)(C_DSP_WIDTH - 2 DOWNTO C_DSP_WIDTH - c_dac_bits) WHEN rising_edge(clk_i);
        cos14_o(i) <= (lut_cos(i)(C_DSP_WIDTH - 1) XOR C_OUT_UNSIGNED) & lut_cos(i)(C_DSP_WIDTH - 2 DOWNTO C_DSP_WIDTH - c_dac_bits) WHEN rising_edge(clk_i);

    END GENERATE;

END ARCHITECTURE;