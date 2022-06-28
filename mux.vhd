LIBRARY ieee;

USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY MUX IS
    GENERIC (
        I_widgt : INTEGER := 16;
        Q_widgt : INTEGER := 16
    );

    PORT (
        clk_mux : STD_LOGIC := '0';
        en_mux : STD_LOGIC := '1';
        S_mode : STD_LOGIC_VECTOR(3 DOWNTO 0);
        Data_in : STD_LOGIC_VECTOR (15 DOWNTO 0);
        Data_out : STD_LOGIC_VECTOR (15 DOWNTO 0)
    );
END ENTITY MUX;

ARCHITECTURE Behavioral OF MUX IS
    SIGNAL I_out : unsigned (I_widgt - 1 DOWNTO 0);
    SIGNAL Q_out : unsigned (Q_widgt - 1 DOWNTO 0);
BEGIN

    mux_proc : PROCESS (clk_mux) BEGIN
        IF rising_edge(clk_mux) THEN
            CASE S_mode IS
                WHEN X"0000" =>

                WHEN X"0001" =>

                WHEN X"0010" =>

                WHEN X"0011" =>

                WHEN X"0100" =>

                WHEN OTHERS =>
            END CASE;
        END IF;
    END PROCESS mux_proc;

END ARCHITECTURE Behavioral;