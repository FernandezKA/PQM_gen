library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.main_pkg.all;

entity modulator is 
    generic(
       MODE_widgt : integer := 2;
       signal_widgt : integer := 14
    );
    
    port(
        clk_mod : in std_logic := '0';
        srst_i : in std_logic := '0';
        mode_mod_i : in std_logic_vector(MODE_widgt - 1 downto 0) := B"00";
        CARR_i : in Tdac_bus := (others => (others => '0'));
        ROT_i : in Tdac_bus := (others => (others => '0'));
        RES_o : out Tdac_bus := (others => (others => '0'))    
    );
end entity modulator;

architecture behavioral of modulator is 
    signal carrier_signal : Tdac_bus := (others => (others => '0'));
    signal rotation_signal : Tdac_bus := (others => (others => '0'));
    signal bam_signal : Tdac_bus := (others => (others => '0'));
    
    type mode_state is (reset, carr_out, rot_out, bam_out);
    signal cs_mode : mode_state := reset;
    signal ns_mode : mode_state := reset;
    
    signal last_mode : std_logic_vector(MODE_widgt - 1 downto 0) := (others => '0');
    
begin 

--Умножитель несущей и ротации Qc
    mix_multQC:  for i in 0 to 7 generate
    mix_multQC_14_14_cos : entity work.mult_14_14
    	PORT MAP (
			clk => clk_mod,
			a => CARR_i(i),
			b => ROT_i(i),
			p => bam_signal(i));
	end generate;
	

mode_switcher: process(clk_mod) begin 
    if rising_edge(clk_mod) then 
        cs_mode <= ns_mode;
    end if;
end process mode_switcher;

case_mode: process (clk_mod) begin
    if rising_edge(clk_mod) then 
    
    last_mode <= mode_mod_i;
    
    case cs_mode is 
        when reset => 
            if srst_i = '1' then 
               res_o <= (others => (others => '0'));
               ns_mode <= reset;
            else 
               case mode_mod_i is 
                when b"00" => --reset state
                    ns_mode <= reset;
                when b"01" => --carrier out
                    ns_mode <= carr_out;
                when b"10" => --rotator out
                    ns_mode <= rot_out;
                when b"11" => --bam out
                    ns_mode <= bam_out;
                when others => 
                    ns_mode <= reset;
               end case;
            end if;
        when carr_out => 
            if last_mode = mode_mod_i then 
                RES_o <= CARR_i;
            else
                ns_mode <= reset;
            end if;
        when rot_out => 
            if last_mode = mode_mod_i then 
                RES_o <= ROT_i;
            else
                ns_mode <= reset;
            end if;
        when bam_out => 
            if last_mode = mode_mod_i then 
                RES_o <= bam_signal;
            else
                ns_mode <= reset;
            end if;        
    end case;
    end if;
end process case_mode;


end architecture behavioral;