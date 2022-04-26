LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY AMP_CTRL IS
    GENERIC (
        AMP_1_widgt : INTEGER := 16;
        AMP_2_widgt : INTEGER := 16;
        A_1_widgt : INTEGER := 16;
        A_2_widgt : INTEGER := 16;
        S_mode_widgt : INTEGER := 4
    );

    PORT (
        clk_amp_ctrl : IN STD_LOGIC;
        en_amp_ctrl : IN STD_LOGIC;

        A_1 : IN STD_LOGIC_VECTOR(A_1_widgt - 1 DOWNTO 0);
        A_2 : IN STD_LOGIC_VECTOR (A_2_widgt - 1 DOWNTO 0);

        Amp_1 : IN STD_LOGIC_VECTOR(A_1_widgt - 1 DOWNTO 0);
        Amp_2 : IN STD_LOGIC_VECTOR(A_2_widgt - 1 DOWNTO 0);

        Out_1 : OUT STD_LOGIC_VECTOR(A_1_widgt - 1 DOWNTO 0);
        Out_2 : OUT STD_LOGIC_VECTOR(A_2_widgt - 1 DOWNTO 0)
    );
END ENTITY AMP_CTRL;

ARCHITECTURE Behavioral OF AMP_CTRL IS

BEGIN
    --While simply get input value to the out
    Out_1 <= A_1;
    Out_2 <= A_2;
END ARCHITECTURE Behavioral;