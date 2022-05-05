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

    TYPE mode_state IS (reset, carr_out, rot_out, bam_out);
    SIGNAL cs_mode : mode_state := reset;
    SIGNAL ns_mode : mode_state := reset;

    SIGNAL last_mode : STD_LOGIC_VECTOR(MODE_widgt - 1 DOWNTO 0) := (OTHERS => '0');

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
    mode_switcher : PROCESS (clk_mod) BEGIN
        IF rising_edge(clk_mod) THEN
            cs_mode <= ns_mode;
        END IF;
    END PROCESS mode_switcher;

    case_mode : PROCESS (clk_mod) BEGIN
        IF rising_edge(clk_mod) THEN

            last_mode <= mode_mod_i;

            CASE cs_mode IS
                WHEN reset =>
                    IF srst_i = '1' THEN
                        res_o <= (OTHERS => (OTHERS => '0'));
                        ns_mode <= reset;
                    ELSE
                        CASE mode_mod_i IS
                            WHEN b"0000" => --reset state
                                ns_mode <= reset;
                            WHEN b"0001" => --carrier out
                                ns_mode <= carr_out;
                            WHEN b"0010" => --rotator out
                                ns_mode <= rot_out;
                            WHEN b"0011" => --bam out
                                ns_mode <= bam_out;
                            when others => 
                                ns_mode <= carr_out;
                        END CASE;
                    END IF;
                WHEN carr_out =>
                    IF last_mode = mode_mod_i THEN
                        RES_o <= CARR_i;
                    ELSE
                        ns_mode <= reset;
                    END IF;
                WHEN rot_out =>
                    IF last_mode = mode_mod_i THEN
                        RES_o <= ROT_i;
                    ELSE
                        ns_mode <= reset;
                    END IF;
                WHEN bam_out =>
                    IF last_mode = mode_mod_i THEN
                        RES_o <= bam_signal;
                    ELSE
                        ns_mode <= reset;
                    END IF;
            END CASE;
        END IF;
    END PROCESS case_mode;
END ARCHITECTURE behavioral;