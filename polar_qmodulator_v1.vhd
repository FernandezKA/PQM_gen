--------------------------------------------------------------------------------
-- Entity: polar_rotator
-- Date:2014-08-04  
-- Author: SDM     
-- Follower: ASG
--
-- Description: 
-- 
-- 2014-09-16 Добавлен режим с когерентной межимпульсной ЛЧМ.
-- В данном режиме из управляющей программы поступает значение для инкремента частоты, соответствующее периоду ЛЧМ. (в проге добавлено новное поле "Период ЛЧМ")
-- ДДСы сбрасываются по истечениии этого периода, и не сбрасываются по окончанию импульса.
-- 2014-10-31 Надо добавить ЛЧМ  на несущей!!!!
-- 2014-11-05 ЛЧМ на несущей отлажена. Работает только с вентилятором!!! При температуре 56 градусов один из цапов начинает шуметь.
-- С охлаждение температура 48 градусов.
-- 2020.02.30 Делаем квадратурный модулятор для формирования однополосной ЛЧМ ротации.
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
library WORK;
use WORK.main_pkg.all;

entity polar_qmodulator_v1 is
	port  (
		clk_i 					: in std_logic;       
		rst_i 					: in std_logic; 
	 	trig_delay_i        	: in std_logic_vector(4 downto 0);
	 	pulse_delay_i	    	: in std_logic_vector(4 downto 0);
	 	dds_rst_delay_i	    	: in std_logic_vector(4 downto 0);
		mode_i 					: in std_logic_vector(2 downto 0);
		trig_i 					: in std_logic;
		trig_o 					: out std_logic;
		--board_type_i 			: in std_logic;	
		continious_mode_i 		: in std_logic;
		coherent_polar_mode_i 	: in std_logic;
		strob_mode_i			: in std_logic;
	    pulse_en_i 				: in std_logic;
		modulator_mode_i		: in std_logic_vector(3 downto 0); -- modulation 0000 - lfm, 1000 - dac bram, 0001 - usb, 0010 - lsb, 0011 - rotator bam,
		dac_bram_en_i 			: in std_logic;
	    width_i 				: in std_logic_vector(31 downto 0);
	    period_i 				: in std_logic_vector(31 downto 0);
		packet_size_i 			: in std_logic_vector(31 downto 0);
		carrier_freq_i 			: in std_logic_vector(31 downto 0);
	    carrier_freq_inc_i 		: in std_logic_vector(31 downto 0);
		carrier_phase_i 		: in std_logic_vector(15 downto 0);

	    rotator_freq_i 			: in std_logic_vector(31 downto 0);
	    rotator_freq_inc_i 		: in std_logic_vector(31 downto 0);
		rotator_phase_i 		: in std_logic_vector(15 downto 0);

	    --polar_rotation_period_i : in std_logic_vector(31 downto 0);	
	    amp_i 					: in std_logic_vector(15 downto 0);
	    ch_sel_i 				: in std_logic;
		
		dac_bram_adr_o			: out std_logic_vector(31 downto 0);	
		dac_bram_dout_i			: in std_logic_vector(127 downto 0);	
		
		pulse_r_o 				: out std_logic;
		pulse_o	 				: out std_logic;
	    cos_o 					: out Tdac_bus;
	    sin_o 					: out Tdac_bus
		

	);
end polar_qmodulator_v1;

architecture arch of polar_qmodulator_v1 is

signal cos_carrier, sin_carrier  : Tdac_bus:= (others=>(others=>'0'));
signal cos_carrier_amp, sin_carrier_amp : Tdac_bus:= (others=>(others=>'0'));
signal cos_rotator, cos_bam, output_reg_i : Tdac_bus:= (others=>(others=>'0'));
signal sin_rotator, sin_bam, output_reg_q : Tdac_bus:= (others=>(others=>'0')); 
signal usb, lsb : Tdac_bus := (others=>(others=>'0'));
signal mux_out : Tdac_bus := (others=>(others=>'0'));

signal output_reg_i_amp : Tdac_bus:= (others=>(others=>'0')); 
signal ch_sel_reg,ch_sel_reg_0 : std_logic:='0';
signal carrier_freq_reg : std_logic_vector(31 downto 0):=(others=>'0');
signal carrier_freq_i_reg : std_logic_vector(31 downto 0):=(others=>'0');
signal carrier_freq_inc_reg : std_logic_vector(31 downto 0):=(others=>'0');
signal rotator_freq_reg: std_logic_vector(31 downto 0):=(others=>'0');
signal rotator_freq_i_reg: std_logic_vector(31 downto 0):=(others=>'0');
signal rotator_freq_inc_reg: std_logic_vector(31 downto 0):=(others=>'0');
signal rotator_phase_reg : std_logic_vector(15 downto 0):=(others=>'0');
signal carrier_phase_reg : std_logic_vector(15 downto 0):=(others=>'0');
signal pulse_width_reg : std_logic_vector(23 downto 0):=(others=>'0');
signal pulse_period_reg : std_logic_vector(23 downto 0):=(others=>'0');
signal pulse_cnt : std_logic_vector(23 downto 0):=(others=>'0');  
signal pulse, pulse_en_reg : std_logic :='0';
signal pulse_d : std_logic_vector(31 downto 0):=(others=>'0');
signal pulse_r : std_logic:='0';
signal dds_rst : std_logic:='0';
signal coherent_polar_mode : std_logic:='0';
signal polar_pulse : std_logic:='0';
signal polar_period_reg : std_logic_vector(23 downto 0):=(others=>'0');
signal polar_cnt : std_logic_vector(23 downto 0):=(others=>'0');
signal dds_polar_rst : std_logic:='0';
signal dds_rst_sum : std_logic:='0';
signal sync, sync_d : std_logic:='0';
signal strob : std_logic:='0'; 
signal amp_reg : std_logic_vector(15 downto 0):=(others=>'0');

signal trig_o_trans : std_logic; 

signal sync_out, sync_rising : std_logic:='0';
--signal sync_in, sync_rising : std_logic_vector(0 downto 0):=(others=>'0');

signal dac_bram_bus : Tdac_bus:= (others=>(others=>'0'));
signal dac_bram_en : std_logic:='0';
signal modulator_mode : std_logic_vector(3 downto 0);

begin
	trig_o <= trig_o_trans;
	
	xSYNC_rotator_phase_i : entity work.sync
    generic map( w => 16, n => 2 ) port map( c => clk_i, di => rotator_phase_i, do => rotator_phase_reg);

	xSYNC_carrier_phase_i : entity work.sync
    generic map( w => 16, n => 2 ) port map( c => clk_i, di => carrier_phase_i, do => carrier_phase_reg);

	xSYNC_pulse_en_i : entity work.sync
    generic map( w => 1, n => 2 ) port map( c => clk_i, di(0) => pulse_en_i, do(0) => pulse_en_reg);
	
	xSYNC_amp_i : entity work.sync
    generic map( w => 16, n => 2 ) port map( c => clk_i, di => amp_i, do => amp_reg);
	
	xSYNC_dac_bram_en_i : entity work.sync
    generic map( w => 1, n => 2 ) port map( c => clk_i, di(0) => dac_bram_en_i, do(0) => dac_bram_en);
	
	xSYNC_modulator_mode_i : entity work.sync
    generic map( w => 4, n => 1 ) port map( c => clk_i, di => modulator_mode_i, do => modulator_mode);
	
	
	xdac_bram : entity work.dac_bram_ctrl
	port map(
		clk_i => clk_i,
		pulse_i	=> pulse,
		dac_bram_adr_o => dac_bram_adr_o,
		dac_bram_data_i => dac_bram_dout_i,
		dac_bus_o => dac_bram_bus
	);
	
	xpulse_generator : entity work.pulse_generator_v1
	port map(
		clk_i => clk_i,
		rst_i => rst_i,	
		strob_mode_i => strob_mode_i,
		pulse_en_i => pulse_en_i,
		trig_delay_i => trig_delay_i,
		pulse_delay_i => pulse_delay_i,
		dds_rst_delay_i => dds_rst_delay_i,
		--board_type_i => board_type_i,
		trig_i => trig_i,
		trig_o => trig_o_trans,
		mode_i => mode_i,
		continious_mode_i => continious_mode_i,
		coherent_mode_i => coherent_polar_mode_i,
		width_i => width_i,
		period_i => period_i,
		packet_size_i => packet_size_i,
		carrier_freq_i => carrier_freq_i,
		carrier_freq_inc_i => carrier_freq_inc_i,
		rotator_freq_i => rotator_freq_i,
		rotator_freq_inc_i => rotator_freq_inc_i,
		pulse_o => pulse,
		strob_o => strob,
		dds_rst_o => dds_rst,
		carrier_freq_o => carrier_freq_reg,
		rotator_freq_o => rotator_freq_reg
	);
	
	--Генератор несущей:
    Inst_dds8_m_carier: entity work.dds8_m_lite  
        generic map(
        out_unsigned => '0'
        )
        PORT MAP(
            clk		=> clk_i,
            we_i	=> '1',
            rst_i	=> dds_rst,
            freq_i	=> carrier_freq_reg,--freq_i,--x"6B851EB8",
            phase_i => carrier_phase_reg,
            cos14_o => cos_carrier,
            sin14_o => sin_carrier);
     


    --Генератор сигналов ротации:
    Inst_dds8_m_rotator: entity work.dds8_m_lite  
        generic map(
        out_unsigned => '0'
        )
        PORT MAP(
            clk		=> clk_i,
            we_i	=> '1',
            rst_i	=> dds_rst,
            freq_i	=> rotator_freq_reg,--freq_i,--x"6B851EB8",
            phase_i => rotator_phase_reg,
            cos14_o => cos_rotator,
            sin14_o => sin_rotator);
   
    --Умножитель несущей и ротации Q
    mix_multQ:  for i in 0 to 7 generate
    mix_multQ_14_14_cos : entity work.mult_14_14
            PORT MAP (
                clk => clk_i,
                a => cos_carrier(i),
                b => cos_rotator(i),
                p => cos_bam(i));
	end generate;
				
     --Умножитель несущей и ротации I
    mix_multI:  for i in 0 to 7 generate
    mix_multI_14_14_sin : entity work.mult_14_14
            PORT MAP (
                clk => clk_i,
                a => sin_carrier(i),
                b => sin_rotator(i),
                p => sin_bam(i));
	end generate;

	-- сумматор получения LSB и USB составляющих
	sum_lsb_gen: for i in 0 to 7 generate
	signal lsb1 : Tdac_bus_plus;
	begin
		-- this gives a 1/2 gain. we should amplify.
		-- lsb1(i) <= std_logic_vector(signed(cos_bam(i)(13)&cos_bam(i)) + signed(sin_bam(i)(13)&sin_bam(i)));
		--sum_lsb_gen_i: lsb(i) <= lsb1(i)(14 downto 1);
		sum_lsb_gen_i: lsb(i) <= std_logic_vector(signed(cos_bam(i)) + signed(sin_bam(i)));
    end generate;

	-- сумматор получения LSB и USB составляющих
	sum_usb_gen: for i in 0 to 7 generate
	signal usb1 : Tdac_bus_plus;
	begin
		--usb1(i) <= std_logic_vector(signed(cos_bam(i)(13)&cos_bam(i)) - signed(sin_bam(i)(13)&sin_bam(i)));
		--sum_usb_gen_i: usb(i) <= usb1(i)(14 downto 1);
		sum_usb_gen_i: usb(i) <= std_logic_vector(signed(cos_bam(i)) - signed(sin_bam(i)));
    end generate;
    
    --Мультиплексор на автомат создания импульса
    xMODULATION_MUX: process(clk_i) begin
		if rising_edge(clk_i) then
			case modulator_mode is
			when b"0000" => 
				mux_out <= cos_carrier;
			when b"0001" =>
				mux_out <= usb;
			when b"0010" =>
				mux_out <= lsb;
			when b"0011" =>
				mux_out <= cos_bam;
			when b"1000" =>
				mux_out <= dac_bram_bus;
			when others =>
				mux_out <= cos_bam;
			end case;
		end if;
	end process;
	
	--Мультиплексор на выходной регистр и автомат создания импульса из pulse
	process(clk_i)
    begin
        if rising_edge(clk_i) then
            if modulator_mode /= b"1000" then
				if pulse_en_reg = '1' then
            	    if pulse = '1' then
            	        output_reg_i <= mux_out;
            	    else
            	        output_reg_i <= (others=>(others=>'0'));
            	    end if;
            	else
            	    output_reg_i <= mux_out;
            	end if;
			else
				if pulse = '1' then
            	        output_reg_i <= dac_bram_bus;
            	else
            	        output_reg_i <= (others=>(others=>'0'));
            	end if;		
			end if;
        end if;
    end process;
	
	
	ampl_mult:  for i in 0 to 7 generate
    ampl_mult_16_14 : entity work.mult_16_14
           PORT MAP (
               clk => clk_i,
               a => amp_reg,
               b => output_reg_i(i),
               p => output_reg_i_amp(i));
    end generate;
	

	pulse_r_o <= strob; 
	pulse_o	<= pulse;
    
    cos_o <= output_reg_i_amp;
    sin_o <= output_reg_q;
     
end arch;

