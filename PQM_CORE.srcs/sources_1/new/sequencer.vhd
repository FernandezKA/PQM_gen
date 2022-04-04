LIBRARY ieee;

USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

library work;
use work.main_pkg.all;

ENTITY Sequencer IS
    GENERIC (
        freq_widgt : INTEGER := 32;
        phase_widgt : INTEGER := 32;
        carrier_widgt : INTEGER := 14;
        rotation_widgt : INTEGER := 14;
        int_widgt : INTEGER := 32
    );
    PORT (
        clk_seq : STD_LOGIC := '0';
        en_seq : STD_LOGIC := '1';
        Fc : IN STD_LOGIC_VECTOR(freq_widgt - 1 DOWNTO 0);
        Fr : IN STD_LOGIC_VECTOR(freq_widgt - 1 DOWNTO 0);
        Pc : IN STD_LOGIC_VECTOR(phase_widgt - 1 DOWNTO 0);
        Pr : IN STD_LOGIC_VECTOR(phase_widgt - 1 DOWNTO 0);
        Fr_inc : IN STD_LOGIC_VECTOR(int_widgt - 1 DOWNTO 0);
        Carrier : OUT STD_LOGIC_VECTOR(carrier_widgt - 1 DOWNTO 0);
        Rotation : OUT STD_LOGIC_VECTOR(rotation_widgt - 1 DOWNTO 0)
    );
END ENTITY Sequencer;

ARCHITECTURE Behavioral OF Sequencer IS

type Tdac_bus is array(7 downto 0)  of std_logic_vector(13 downto 0);
    signal cos_carrier : Tdac_bus:= (others=>(others=>'0'));
    signal cos_rotation : Tdac_bus:= (others=>(others=>'0'));
BEGIN
  
  inst_dds8_m_carrier: entity work.dds8_mod port map(
  clk_i => clk_seq, 
  f_we_i => '1', 
  rst_i => '0', 
  freq_i => Fc, 
  phase_i => Pc,
  cos14_o => cos_carrier,
  sin14_o => open
  );      
        
END ARCHITECTURE Behavioral;