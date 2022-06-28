LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY work;
USE work.main_pkg.ALL;

ENTITY modulator IS
    GENERIC (
        MODE_widgt : INTEGER := 4
    );

    PORT (
        clk_mod : IN STD_LOGIC := '0';
        srst_i : IN STD_LOGIC := '0';
        mode_mod_i : IN STD_LOGIC_VECTOR(MODE_widgt - 1 DOWNTO 0) := (OTHERS => '0');
        CARR_i : IN Tdac_bus := (OTHERS => (OTHERS => '0'));
        ROT_i : IN Tdac_bus := (OTHERS => (OTHERS => '0'));
        RES_o : OUT Tdac_bus := (OTHERS => (OTHERS => '0'))
    );
END ENTITY modulator;

ARCHITECTURE behavioral OF modulator IS
    SIGNAL carrier_signal : Tdac_bus := (OTHERS => (OTHERS => '0'));
    SIGNAL rotation_signal : Tdac_bus := (OTHERS => (OTHERS => '0'));
    SIGNAL bam_signal : Tdac_bus := (OTHERS => (OTHERS => '0'));

    COMPONENT mult_14_14
        PORT (
            CLK : IN STD_LOGIC;
            A : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
            B : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
            P : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
        );
    END COMPONENT;

BEGIN
    mix_multQC : FOR i IN 0 TO 7 GENERATE
        mix_multQC_14_14_cos : mult_14_14
        PORT MAP(
            clk => clk_mod,
            a => CARR_i(i),
            b => ROT_i(i),
            p => bam_signal(i));
    END GENERATE;
    
    mux_mod: process (clk_mod) begin 
        if rising_edge(clk_mod) then 
            case mode_mod_i is 
                when b"0001" =>
                    RES_o <= CARR_i;
                when b"0010" =>
                    RES_o <= ROT_i;
                when b"0011" =>
                    RES_o <= bam_signal;
                when others => 
            end case;
        end if;
    end process mux_mod;
END ARCHITECTURE behavioral;