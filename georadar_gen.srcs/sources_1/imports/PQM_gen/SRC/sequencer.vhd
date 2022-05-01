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
		trig_init : IN STD_LOGIC := '0';
		Fc : IN STD_LOGIC_VECTOR(freq_widgt - 1 DOWNTO 0);
		Fr : IN STD_LOGIC_VECTOR(freq_widgt - 1 DOWNTO 0);
		Pc : IN STD_LOGIC_VECTOR(phase_widgt - 1 DOWNTO 0);
		Pr : IN STD_LOGIC_VECTOR(phase_widgt - 1 DOWNTO 0);
		Fr_inc : IN STD_LOGIC_VECTOR(inc_widgt - 1 DOWNTO 0);
		Fc_inc : IN STD_LOGIC_VECTOR(inc_widgt - 1 DOWNTO 0);
		Carrier : OUT Tdac_bus := (OTHERS => (OTHERS => '0'));
		Rotator : OUT Tdac_bus := (OTHERS => (OTHERS => '0'));
		done_o : OUT STD_LOGIC := '0'
	);
END ENTITY Sequencer;

ARCHITECTURE Behavioral OF Sequencer IS

	--for freq. accumulator 
	SIGNAL carrier_reg, rotator_reg : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0'); --full frequency value on format 32.16

	--init parameters for signals 
	SIGNAL carrier_freq_init, rotator_freq_init : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
	SIGNAL carrier_inc_reg, rotator_inc_reg : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0'); --value in format s24.8 
	SIGNAL carrier_phase_init, rotator_phase_init : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');

	--flags for rule freq accumulator
	SIGNAL f_ce, f_inc_ce, p_ce : STD_LOGIC := '0'; -- acception for enable sum of frequency 
	SIGNAL f_clr, f_inc_clr, p_clr : STD_LOGIC := '1';

	--for FSM accum 
	TYPE fsm_state IS (reset, idle, load, generation);
	SIGNAL curr_state : fsm_state := idle;

	SIGNAL rst_counter : unsigned(2 DOWNTO 0) := (OTHERS => '0');

	SIGNAL carrier_inc_concat : STD_LOGIC_VECTOR(47 DOWNTO 0) := (OTHERS => '0');
	SIGNAL rotator_inc_concat : STD_LOGIC_VECTOR(47 DOWNTO 0) := (OTHERS => '0');

	SIGNAL carrier_init_concat : STD_LOGIC_VECTOR(47 DOWNTO 0) := (OTHERS => '0');
	SIGNAL rotator_init_concat : STD_LOGIC_VECTOR(47 DOWNTO 0) := (OTHERS => '0');

	COMPONENT pg_freq_acc_32to40plus
		PORT (
			CLK : IN STD_LOGIC;
			C : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
			CONCAT : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
			P : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			CECONCAT5 : IN STD_LOGIC;
			CEC5 : IN STD_LOGIC;
			CEP : IN STD_LOGIC;
			SCLRCONCAT : IN STD_LOGIC;
			SCLRC : IN STD_LOGIC;
			SCLRP : IN STD_LOGIC
		);
	END COMPONENT;

BEGIN

	carrier_inc_concat <= carrier_inc_reg(31) & carrier_inc_reg(31) & carrier_inc_reg(31) & carrier_inc_reg(31) & carrier_inc_reg(31) & carrier_inc_reg(31) & carrier_inc_reg(31) & carrier_inc_reg(31) & carrier_inc_reg & x"00";
	rotator_inc_concat <= rotator_inc_reg(31) & rotator_inc_reg(31) & rotator_inc_reg(31) & rotator_inc_reg(31) & rotator_inc_reg(31) & rotator_inc_reg(31) & rotator_inc_reg(31) & rotator_inc_reg(31) & rotator_inc_reg & x"00";

	carrier_init_concat <= carrier_freq_init & x"0000";
	rotator_init_concat <= rotator_freq_init & x"0000";

	--Instantiations for others modules
	inst_dds8_m_carrier : ENTITY work.dds8_mod PORT MAP(
		clk_i => clk_seq,
		f_we_i => '1',
		rst_i => '0',
		freq_i => carrier_reg,
		phase_i => carrier_phase_init,
		cos14_o => Carrier,
		sin14_o => OPEN
		);

	inst_dds8_m_rotation : ENTITY work.dds8_mod PORT MAP(
		clk_i => clk_seq,
		f_we_i => '1',
		rst_i => '0',
		freq_i => rotator_reg,
		phase_i => rotator_phase_init,
		cos14_o => Rotator,
		sin14_o => OPEN
		);

	CARRIER_ACCUM : pg_freq_acc_32to40plus
	PORT MAP(
		CLK => clk_seq,
		C => carrier_inc_concat,
		CONCAT => carrier_init_concat,
		P => carrier_reg,
		CECONCAT5 => f_ce,
		CEC5 => f_inc_ce,
		CEP => p_ce,
		SCLRCONCAT => f_clr,
		SCLRC => f_inc_clr,
		SCLRP => p_clr
	);

	ROTATOR_ACCUM : pg_freq_acc_32to40plus
	PORT MAP(
		clk => clk_seq,
		c => rotator_inc_concat,
		CONCAT => rotator_init_concat,
		P => rotator_reg,
		CECONCAT5 => f_ce,
		CEC5 => f_inc_ce,
		CEP => p_ce,
		SCLRCONCAT => f_clr,
		SCLRC => f_inc_clr,
		SCLRP => p_clr
	);

	FSM_ACCUM : PROCESS (clk_seq, curr_state) BEGIN
		IF rising_edge(clk_seq) THEN
			IF rst_seq = '1' THEN
				curr_state <= reset;
				rst_counter <= b"011";
			ELSE
				CASE (curr_state) IS
					WHEN reset =>
						IF rst_counter = b"000" THEN
							curr_state <= idle;
						ELSE
							rst_counter <= rst_counter - 1;
							done_o <= '1';
							--carrier_reg <= (OTHERS => '0');
							--rotator_reg <= (OTHERS => '0');
						END IF;
					WHEN idle =>
						IF trig_init = '1' THEN
							carrier_freq_init <= Fc;
							rotator_freq_init <= Fr;
							carrier_inc_reg <= Fc_inc;
							rotator_inc_reg <= Fr_inc;
							--prepare frequency generator: load init freq into registers
							f_ce <= '1';
							f_inc_ce <= '0';
							p_ce <= '0';
							f_clr <= '0';
							f_inc_clr <= '1';
							p_clr <= '1';
							curr_state <= load;
						ELSE
							done_o <= '1';
							-- current frequency generator
							f_ce <= '0';
							f_inc_ce <= '0';
							p_ce <= '0';
							f_clr <= '1';
							f_inc_clr <= '1';
							p_clr <= '1';
						END IF;
					WHEN load =>
						--This we sum init frequency and clear our register, load increment value
						f_ce <= '0';
						f_inc_ce <= '1';
						p_ce <= '1';
						f_clr <= '1';
						f_inc_clr <= '1';
						p_clr <= '0';
						curr_state <= generation;
					WHEN generation =>
						--current frequency generator : added with f_inc
						f_ce <= '0';
						f_inc_ce <= '0';
						p_ce <= '0';
						f_clr <= '1';
						f_inc_clr <= '0';
						p_clr <= '0';
				END CASE;
			END IF;
		END IF;
	END PROCESS FSM_ACCUM;
END ARCHITECTURE Behavioral;