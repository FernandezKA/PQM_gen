LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

library work;
use work.main_pkg.all;

ENTITY AMP_CTRL IS
    GENERIC (
        Amp_widgt : INTEGER := 16
    );

    PORT (
        clk_amp_ctrl : IN STD_LOGIC;
        en_amp_ctrl : IN STD_LOGIC;

        Amp_val : IN STD_LOGIC_VECTOR(Amp_widgt - 1 DOWNTO 0);

        Amp_in : IN tDAC_bus := (others => (others => '0'));
        Amp_out : OUT tDAC_bus := (others => (others => '0'))
    );
END ENTITY AMP_CTRL;

ARCHITECTURE Behavioral OF AMP_CTRL is
    signal xored_in : Tdac_bus := (others => (others => '0'));
    signal result : Tdac_bus := (others => (others => '0'));
    
    COMPONENT mult_16_14
      PORT (
        CLK : IN STD_LOGIC;
        A : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        B : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
        P : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
      );
    END COMPONENT;
    
BEGIN

	ampl_mult_I:  for i in 0 to 7 generate
    ampl_mult_I_16_14 : mult_16_14
    PORT MAP (
        clk => clk_amp_ctrl,
        a => Amp_val,
        b => Amp_in(i),
        p => result(i));
    end generate;
    
amp_proc: process(clk_amp_ctrl) begin 
    if rising_edge(clk_amp_ctrl) then 
        if en_amp_ctrl = '0' then 
            Amp_out <= result;
        else 
            Amp_out <= result;
        end if;
    end if;
end process amp_proc;
END ARCHITECTURE Behavioral;