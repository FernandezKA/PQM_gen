LIBRARY ieee;

USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

library work;
use work.main_pkg.all;

ENTITY Sequencer IS
    GENERIC (
        freq_widgt : INTEGER := 32;
        phase_widgt : INTEGER := 16;
        carrier_widgt : INTEGER := 14;
        rotation_widgt : INTEGER := 14;
        inc_widgt : INTEGER := 32
    );
    PORT (
        clk_seq : STD_LOGIC := '0';
        en_seq : STD_LOGIC := '1';
        Fc : IN STD_LOGIC_VECTOR(freq_widgt - 1 DOWNTO 0);
        Fr : IN STD_LOGIC_VECTOR(freq_widgt - 1 DOWNTO 0);
        Pc : IN STD_LOGIC_VECTOR(phase_widgt - 1 DOWNTO 0);
        Pr : IN STD_LOGIC_VECTOR(phase_widgt - 1 DOWNTO 0);
        Fr_inc : IN STD_LOGIC_VECTOR(inc_widgt - 1 DOWNTO 0);
        Fc_inc :  in std_logic_vector(inc_widgt - 1 downto 0);
        Carrier : OUT STD_LOGIC_VECTOR(carrier_widgt - 1 DOWNTO 0);
        Rotation : OUT STD_LOGIC_VECTOR(rotation_widgt - 1 DOWNTO 0)
    );
END ENTITY Sequencer;

ARCHITECTURE Behavioral OF Sequencer IS

signal Fc_init_reg : std_logic_vector(freq_widgt - 1 downto 0) := (others => '0');
signal Fr_init_reg : std_logic_vector(freq_widgt - 1 downto 0) := (others => '0');

signal Fc_inc_reg : std_logic_vector(inc_widgt - 1 downto 0) := (others => '0');
signal Fr_inc_reg : std_logic_vector(inc_widgt - 1 downto 0) := (others => '0');

signal Fc_curr_reg : std_logic_vector(freq_widgt - 1 downto 0) := (others => '0');
signal Fr_curr_reg : std_logic_vector(freq_widgt - 1 downto 0) := (others => '0');

signal Fc_out : Tdac_bus := (others => (others => '0'));
signal Fr_out : Tdac_bus := (others => (others => '0'));

signal f_inc_ce, p_ce, f_clr, f_inc_clr, p_clr, f_ce : std_logic := '0';


BEGIN
  
  inst_dds8_m_carrier: entity work.dds8_mod port map(
  clk_i => clk_seq, 
  f_we_i => '1', 
  rst_i => '0', 
  freq_i => Fc_curr_reg, 
  phase_i => Pc,
  cos14_o => Fc_out,
  sin14_o => open
  );    
  
  inst_dds8_m_rotation: entity work.dds8_mod port map(
  clk_i => clk_seq, 
  f_we_i => '1', 
  rst_i => '0', 
  freq_i => Fr_curr_reg, 
  phase_i => Pr,
  cos14_o => Fr_out,
  sin14_o => open
  );     
  
  	xCF_ACCUM: entity work.pg_freq_acc_32to40plus
      PORT MAP (
        CLK => clk_seq,
        C => Fc_init_reg(31)&Fc_init_reg(31)&Fc_init_reg(31)&Fc_init_reg(31)&Fc_init_reg(31)&Fc_init_reg(31)&Fc_init_reg(31)&Fc_init_reg(31)&Fc_init_reg & x"00",
        CONCAT => Fc_inc_reg & x"0000",
        P => Fc_curr_reg,
    	
		CECONCAT5 => f_ce,
    	CEC5 => f_inc_ce,
    	CEP => p_ce,
    	SCLRCONCAT => f_clr,
    	SCLRC => f_inc_clr,
    	SCLRP => p_clr
      );
      
      xRF_ACCUM:entity work.pg_freq_acc_32to40plus
      PORT MAP (
        CLK => clk_seq,
        C => Fr_init_reg(31)&Fr_init_reg(31)&Fr_init_reg(31)&Fr_init_reg(31)&Fr_init_reg(31)&Fr_init_reg(31)&Fr_init_reg(31)&Fr_init_reg(31)&Fr_init_reg & x"00",
        CONCAT => Fr_inc_reg & x"0000",
        P => Fr_curr_reg,

		CECONCAT5 => f_ce,
    	CEC5 => f_inc_ce,
    	CEP => p_ce,
    	SCLRCONCAT => f_clr,
    	SCLRC => f_inc_clr,
    	SCLRP => p_clr
      );


        
END ARCHITECTURE Behavioral;