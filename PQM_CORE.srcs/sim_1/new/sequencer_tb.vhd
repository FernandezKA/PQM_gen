library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity seq_tb is 
-- port();
end seq_tb;

architecture behav of seq_tb is

signal clk_seq_tb : std_logic := '0';
signal en_seq_tb : std_logic := '0';
signal rst_seq_tb : std_logic := '0';
signal trig_init : std_logic := '0';
signal f_car_tb: std_logic_vector(31 downto 0) := x"0000000A";
signal f_rot_tb : std_logic_vector(31 downto 0) := (others => '0');
signal f_car_inc_tb : std_logic_vector (31 downto 0) := (others => '0');
signal f_rot_inc_tb : std_logic_vector (31 downto 0) := (others => '0');
signal p_c_tb : std_logic_vector(15 downto 0) := (others => '0');
signal p_r_tb : std_logic_vector(15 downto 0) := (others => '0');
signal carrier_tb : std_logic_vector (13 downto 0) := (others => '0');
signal rotation_tb : std_logic_vector (13 downto 0) := (others => '0');
signal done_o_tb : std_logic := '0';
begin

--Instantiate sequencer module into binary_read
inst_seq_tb: entity work.Sequencer port map(
    clk_seq => clk_seq_tb, 
    en_seq => en_seq_tb, 
    rst_seq => rst_seq_tb, 
    trig_init => trig_init,
    Fr => f_rot_tb, 
    Fc => f_car_tb, 
    Fc_inc => f_car_inc_tb, 
    Fr_inc => f_rot_inc_tb,
    Pc => p_c_tb, 
    Pr => p_r_tb,
    carrier => carrier_tb, 
    rotation => rotation_tb,
    done_o => done_o_tb 
);


clk_proc: process begin 
    wait for 20 ns;  
    clk_seq_tb <= not clk_seq_tb; 
end process clk_proc;

main_log: process begin 
    wait for 100 ns;
    trig_init <= '1';
    wait for 40 ns; 
    trig_init <= '0';
    wait for 1 ms;
end process main_log;



end behav;