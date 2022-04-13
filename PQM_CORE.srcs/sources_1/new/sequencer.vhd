LIBRARY ieee;

USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY work;
USE work.main_pkg.ALL;

ENTITY Sequencer IS
	GENERIC (
		freq_widgt : INTEGER := 32;
		phase_widgt : INTEGER := 16;
		carrier_widgt : INTEGER := 14;
		rotation_widgt : INTEGER := 14;
		inc_widgt : INTEGER := 32
	);
	PORT (
		clk_seq : IN STD_LOGIC := '0';
		en_seq : IN STD_LOGIC := '1';
		rst_i : IN STD_LOGIC := '0';
		Fc : IN STD_LOGIC_VECTOR(freq_widgt - 1 DOWNTO 0);
		Fr : IN STD_LOGIC_VECTOR(freq_widgt - 1 DOWNTO 0);
		Pc : IN STD_LOGIC_VECTOR(phase_widgt - 1 DOWNTO 0);
		Pr : IN STD_LOGIC_VECTOR(phase_widgt - 1 DOWNTO 0);
		Fr_inc : IN STD_LOGIC_VECTOR(inc_widgt - 1 DOWNTO 0);
		Fc_inc : IN STD_LOGIC_VECTOR(inc_widgt - 1 DOWNTO 0);
		Carrier : OUT STD_LOGIC_VECTOR(carrier_widgt - 1 DOWNTO 0);
		Rotation : OUT STD_LOGIC_VECTOR(rotation_widgt - 1 DOWNTO 0);
		done_o : OUT STD_LOGIC := '0'
	);
END ENTITY Sequencer;

ARCHITECTURE Behavioral OF Sequencer IS

	SIGNAL Fc_init_reg : STD_LOGIC_VECTOR(freq_widgt - 1 DOWNTO 0) := (OTHERS => '1');
	SIGNAL Fr_init_reg : STD_LOGIC_VECTOR(freq_widgt - 1 DOWNTO 0) := (OTHERS => '1');

	SIGNAL Fc_inc_reg : STD_LOGIC_VECTOR(inc_widgt - 1 DOWNTO 0) := (OTHERS => '0');
	SIGNAL Fr_inc_reg : STD_LOGIC_VECTOR(inc_widgt - 1 DOWNTO 0) := (OTHERS => '0');

	SIGNAL Fc_curr_reg : STD_LOGIC_VECTOR(freq_widgt - 1 DOWNTO 0) := (OTHERS => '1');
	SIGNAL Fr_curr_reg : STD_LOGIC_VECTOR(freq_widgt - 1 DOWNTO 0) := (OTHERS => '1');

	SIGNAL Fc_out : Tdac_bus := (OTHERS => (OTHERS => '0'));
	SIGNAL Fr_out : Tdac_bus := (OTHERS => (OTHERS => '0'));

	SIGNAL f_inc_ce, p_ce, f_clr, f_inc_clr, p_clr, f_ce : STD_LOGIC := '0';

	TYPE state_type IS (reset, idle, single_pulse, single_wait, pkt_start, pkt_arm, pkt_pulse, pkt_wait, cont_arm, cont_wait);
	SIGNAL state : state_type := reset;

	SIGNAL rst_cnt : unsigned(2 DOWNTO 0) := (OTHERS => '0');
	SIGNAL pulse_time_cnt : unsigned(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL pkt_pulse_cnt : unsigned(15 DOWNTO 0) := (OTHERS => '0');
	SIGNAL pulse_done, wait_done : STD_LOGIC := '0';
	SIGNAL total_pulse_num : unsigned(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL cf_cnt, rf_cnt : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0'); -- ������ ������� ��� ������� � ������� 32.16

	SIGNAL width, period, pulse_num : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL width_reg, period_reg, pulse_num_reg : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');

	SIGNAL mode : STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
	SIGNAL coherent_flag, coherent_flag_reg : STD_LOGIC := '0';
	SIGNAL strob_flag, strob_flag_reg : STD_LOGIC := '0';

	SIGNAL trig : STD_LOGIC := '0';
	-- signal trig_delay, -- TODELETE?
	SIGNAL pulse_delay, dds_rst_delay : STD_LOGIC_VECTOR(4 DOWNTO 0) := (OTHERS => '0');

	SIGNAL dds_rst, dds_rst_d : STD_LOGIC := '0';
	SIGNAL pulse, pulse_d : STD_LOGIC := '0';
	SIGNAL strob : STD_LOGIC := '0';

BEGIN

	inst_dds8_m_carrier : ENTITY work.dds8_mod PORT MAP(
		clk_i => clk_seq,
		f_we_i => '1',
		rst_i => '0',
		freq_i => Fc_curr_reg,
		phase_i => Pc,
		cos14_o => Fc_out,
		sin14_o => OPEN
		);

	inst_dds8_m_rotation : ENTITY work.dds8_mod PORT MAP(
		clk_i => clk_seq,
		f_we_i => '1',
		rst_i => '0',
		freq_i => Fr_curr_reg,
		phase_i => Pr,
		cos14_o => Fr_out,
		sin14_o => OPEN
		);

	xCF_ACCUM : ENTITY work.pg_freq_acc_32to40plus
		PORT MAP(
			CLK => clk_seq,
			C => Fc_init_reg(31) & Fc_init_reg(31) & Fc_init_reg(31) & Fc_init_reg(31) & Fc_init_reg(31) & Fc_init_reg(31) & Fc_init_reg(31) & Fc_init_reg(31) & Fc_init_reg & x"00",
			CONCAT => Fc_inc_reg & x"0000",
			P => Fc_curr_reg,

			CECONCAT5 => f_ce,
			CEC5 => f_inc_ce,
			CEP => p_ce,
			SCLRCONCAT => f_clr,
			SCLRC => f_inc_clr,
			SCLRP => p_clr
		);

	xRF_ACCUM : ENTITY work.pg_freq_acc_32to40plus
		PORT MAP(
			CLK => clk_seq,
			C => Fr_init_reg(31) & Fr_init_reg(31) & Fr_init_reg(31) & Fr_init_reg(31) & Fr_init_reg(31) & Fr_init_reg(31) & Fr_init_reg(31) & Fr_init_reg(31) & Fr_init_reg & x"00",
			CONCAT => Fr_inc_reg & x"0000",
			P => Fr_curr_reg,

			CECONCAT5 => f_ce,
			CEC5 => f_inc_ce,
			CEP => p_ce,
			SCLRCONCAT => f_clr,
			SCLRC => f_inc_clr,
			SCLRP => p_clr
		);

	xFSM : PROCESS (clk_seq) BEGIN
		IF rising_edge(clk_seq) THEN
			-- ��, ��� ������ ��� ������ ������ ���� ����� ������
			done_o <= '0';
			pulse <= '0';

			IF (rst_i = '1') THEN -- RST_I
				done_o <= '1';
				dds_rst <= '1';
				pulse <= '0';

				pkt_pulse_cnt <= (OTHERS => '0');
				total_pulse_num <= (OTHERS => '0');
				pulse_time_cnt <= (OTHERS => '0');

				Fc_curr_reg <= (OTHERS => '0');
				Fr_curr_reg <= (OTHERS => '0');

				f_inc_clr <= '1';

				state <= reset;
				rst_cnt <= "011";
			ELSE -- no reset
				CASE (state) IS
					WHEN reset => -- reset
						done_o <= '1';
						dds_rst <= '1';
						pkt_pulse_cnt <= (OTHERS => '0');
						total_pulse_num <= (OTHERS => '0');
						pulse_time_cnt <= (OTHERS => '0');
						Fc_curr_reg <= (OTHERS => '0');
						Fr_curr_reg <= (OTHERS => '0');

						f_inc_clr <= '1';

						IF rst_cnt > 0 THEN
							rst_cnt <= rst_cnt - 1;
						ELSE
							state <= idle;
						END IF;

					WHEN idle => -- idle
						done_o <= '1';
						dds_rst <= '1';
						-- ��������� ������������ �������:
						f_ce <= '0';
						f_inc_ce <= '0';
						p_ce <= '0';
						f_clr <= '1';
						f_inc_clr <= '1';
						p_clr <= '1';
						-- 
						pulse_time_cnt <= (OTHERS => '0');
						IF (trig = '1') THEN -- ����� ���������
							Fc_curr_reg <= Fc; -- arm latches for all modes. we can change cf_i, rf_i and others, when not in IDLE.
							Fr_curr_reg <= Fr;
							Fc_inc_reg <= Fc_inc; -- arm latches for all modes. we can change cf_i, rf_i and others, when not in IDLE.
							Fr_inc_reg <= Fr_inc;
							width_reg <= width;
							period_reg <= period;
							pulse_num_reg <= pulse_num;
							pkt_pulse_cnt <= (OTHERS => '0');
							pulse_time_cnt <= (OTHERS => '0');
							coherent_flag_reg <= coherent_flag;
							strob_flag_reg <= strob_flag;

							-- ������� ��������� �������: �������� ��������� ������� � ��������
							f_ce <= '1';
							f_inc_ce <= '0';
							p_ce <= '0';
							f_clr <= '0';
							f_inc_clr <= '1';
							p_clr <= '1';
							----

							CASE (mode) IS
								WHEN b"000" => -- single is a kind of a pkt with pulse_num_reg == 1
									pulse_num_reg <= x"00000001";
									state <= pkt_arm;
								WHEN b"001" => -- packet
									state <= pkt_arm;
								WHEN b"010" => -- continious
									strob <= '1';
									Fc_inc_reg <= (OTHERS => '0');
									Fr_inc_reg <= (OTHERS => '0');

									state <= cont_arm;
								WHEN OTHERS => -- undefined
									state <= idle;
							END CASE;

						END IF;

						--when pkt_start => 							-- packet
					WHEN pkt_arm =>
						IF pkt_pulse_cnt < unsigned(pulse_num_reg) OR unsigned(pulse_num_reg) = 0 THEN
							dds_rst <= '0';
							-- strob generate according to stro_flag_reg
							IF strob_flag_reg = '1' THEN
								strob <= '1';
							ELSE
								IF (pkt_pulse_cnt = 0) THEN
									strob <= '1';
								END IF;
							END IF;

							pulse_time_cnt <= (OTHERS => '0');

							-- ��������� ������������ �������: ������������ ��������� ������� ����� � ������� � �������� ����������
							f_ce <= '0';
							f_inc_ce <= '1';
							p_ce <= '1';
							f_clr <= '1';
							f_inc_clr <= '0';
							p_clr <= '0';
							-- 
							state <= pkt_pulse;
						ELSE
							-- ��������� ������������ �������: �����
							f_ce <= '0';
							f_inc_ce <= '0';
							p_ce <= '0';
							f_clr <= '1';
							f_inc_clr <= '1';
							p_clr <= '1';
							-- 
							state <= idle;
						END IF;

					WHEN pkt_pulse =>
						-- ��������� ������������ �������: ������������ f_inc
						f_ce <= '0';
						f_inc_ce <= '0';
						p_ce <= '1';
						f_clr <= '1';
						f_inc_clr <= '0';
						p_clr <= '0';
						-- 

						pulse_time_cnt <= pulse_time_cnt + 1;
						pulse <= '1';
						f_inc_ce <= '1'; -- arm f_inc adding to accum
						IF pulse_time_cnt > 2 THEN
							strob <= '0';
						END IF;
						IF pulse_time_cnt < unsigned(width_reg) THEN
						ELSE
							pulse <= '0';
							state <= pkt_wait;
						END IF;

					WHEN pkt_wait =>
						pulse_time_cnt <= pulse_time_cnt + 1;

						IF pulse_time_cnt >= unsigned(width_reg) + 8 THEN -- dirty hack, rewrite!!!
							IF coherent_flag_reg = '0' THEN
								dds_rst <= '1';
								-- ��������� ������������ �������: � ������������� ������ - ����� �������.
								f_ce <= '0';
								f_inc_ce <= '0';
								p_ce <= '0';
								f_clr <= '1';
								f_inc_clr <= '1';
								p_clr <= '1';
								--
							ELSE
								-- � ����������� ������ ��������� ������ ������� ������� �������������, ��� ����� ��� �� �������� � ���������� �������. 
								-- ������� ��������� �������, �� �� ���������� � �������. ������� �����, ����� ����� ��������� � pkt_arm
								f_ce <= '0';
								f_inc_ce <= '0';
								p_ce <= '0';
								f_clr <= '1';
								f_inc_clr <= '1';
								p_clr <= '0';
								--						
							END IF;
						END IF;

						IF pulse_time_cnt >= unsigned(period_reg) - 2 THEN
							f_clr <= '1'; -- reset freq counter
							IF unsigned(pulse_num_reg) > 0 THEN
								pkt_pulse_cnt <= pkt_pulse_cnt + 1;
							END IF; -- ��������� ������ ���� ����� �������� ����� ���������.
							total_pulse_num <= total_pulse_num + 1;

							-- ��������� ������������ �������: � ������������� ������ - ����� �������.
							f_ce <= '1';
							f_inc_ce <= '0';
							p_ce <= '0';
							f_clr <= '0';
							f_inc_clr <= '1';
							p_clr <= '1';
							--
							state <= pkt_arm;
						END IF;
					WHEN cont_arm => -- continious
						pulse <= '1';
						strob <= '1';
						-- ��������� ������������ �������: ������������ ��������� ������� ����� � ������� � �������� ����������
						f_ce <= '0';
						f_inc_ce <= '1';
						p_ce <= '1';
						f_clr <= '1';
						f_inc_clr <= '1';
						p_clr <= '0';
						-- 
						dds_rst <= '0';

						pulse_time_cnt <= (OTHERS => '0');
						state <= cont_wait;

					WHEN cont_wait => -- ����� ���������� ������ ���� �����������.
						pulse_time_cnt <= pulse_time_cnt + 1;
						IF pulse_time_cnt > 2 THEN
							strob <= '0';
						END IF;
						pulse <= '1';
						dds_rst <= '0';
						-- ��������� ������������ �������: ������������ f_inc
						f_ce <= '0';
						f_inc_ce <= '0';
						p_ce <= '0';
						f_clr <= '1';
						f_inc_clr <= '0';
						p_clr <= '0';
						-- 

					WHEN OTHERS => -- error state
						state <= reset;
						rst_cnt <= "011";
				END CASE;

			END IF; -- rst

		END IF; -- rising		
	END PROCESS;
END ARCHITECTURE Behavioral;

--TODO: 
--Write testbench for sequencer
--