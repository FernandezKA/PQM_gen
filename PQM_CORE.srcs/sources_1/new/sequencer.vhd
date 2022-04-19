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
		rst_seq : IN STD_LOGIC := '0';
		trig_init : in std_logic := '0';
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

	--TYPE state_type IS (reset, idle, single_pulse, single_wait, pkt_start, pkt_arm, pkt_pulse, pkt_wait, cont_arm, cont_wait);
	--SIGNAL state : state_type := reset;

	TYPE state_type IS (reset, idle, continious, increment);
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
			C => Fc_inc_reg(31) & Fc_inc_reg(31) & Fc_inc_reg(31) & Fc_inc_reg(31) & Fc_inc_reg(31) & Fc_inc_reg(31) & Fc_inc_reg(31) & Fc_inc_reg(31) & Fc_inc_reg & x"00",
			CONCAT => Fc_init_reg & x"0000",
			P => Fc_curr_reg,
			CECONCAT5 => f_ce,
			CEC5 => f_inc_ce,
			CEP => p_ce,
			SCLRCONCAT => f_clr,
			SCLRC => f_inc_clr,
			SCLRP => p_clr
		);

	FSM_carr_accum : PROCESS (clk_seq) BEGIN

		IF rising_edge(clk_seq) THEN
			done_o <= '0';
			dds_rst <= '0';
			IF rst_seq = '1' THEN
				state <= reset;
			ELSE
				CASE (state) IS
					WHEN reset =>
						done_o <= '1';
						dds_rst <= '1';
						Fc_init_reg <= (OTHERS => '0');
						f_inc_clr <= '1';
						if rst_seq = '0' then 
						  state <= idle;
						else 
						  state <= reset;
						end if;
					WHEN idle =>
						done_o <= '1';
						dds_rst <= '1';
						f_ce <= '0';
						f_inc_ce <= '0';
						p_ce <= '0';
						f_clr <= '1';
						f_inc_clr <= '1';
						p_clr <= '1';
						pulse_time_cnt <= (OTHERS => '0');
						IF trig_init = '1' THEN
							IF mode = b"000" THEN --cont. mode
								Fc_init_reg <= Fc;
								Fc_inc_reg <= (OTHERS => '0');
								width_reg <= width;
								period_reg <= period;
								pulse_num_reg <= pulse_num;
								pkt_pulse_cnt <= (OTHERS => '0');
								pulse_time_cnt <= (OTHERS => '0');
								coherent_flag_reg <= coherent_flag;
								strob_flag_reg <= strob_flag;
								state <= continious;
							ELSIF mode = b"001" THEN --increment mode 
								Fc_init_reg <= Fc;
								Fc_inc_reg <= Fc_inc_reg;
								width_reg <= width;
								period_reg <= period;
								pulse_num_reg <= pulse_num;
								pkt_pulse_cnt <= (OTHERS => '0');
								pulse_time_cnt <= (OTHERS => '0');
								coherent_flag_reg <= coherent_flag;
								strob_flag_reg <= strob_flag;
								state <= increment;
							END IF;

						ELSE

						END IF;
					WHEN continious =>
					
					WHEN increment =>

					WHEN OTHERS =>
				END CASE;

			END IF;

		END IF;

	END PROCESS FSM_carr_accum;

END ARCHITECTURE Behavioral;

--TODO: 
--Write testbench for sequencer
--