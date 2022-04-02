LIBRARY ieee;

USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Sequencer IS
    GENERIC (
        freq_widgt : INTEGER := 32;
        phase_widgt : INTEGER := 32;
        carrier_widgt : INTEGER := 32;
        rotation_widgt : INTEGER := 32;
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
    --for instantiate dds_mode_fi_add
    SIGNAL mod_add_A : unsigned (31 DOWNTO 0) := (OTHERS => '0');
    SIGNAL mod_add_B : unsigned (31 DOWNTO 0) := (OTHERS => '0');
    SIGNAL mod_add_en : STD_LOGIC := '0';
    SIGNAL mod_sclr : STD_LOGIC := '0';
    SIGNAL phase_0 : unsigned (15 DOWNTO 0);
    SIGNAL data_0 : unsigned (15 DOWNTO 0);
    SIGNAL phase_inc_0 : unsigned (15 DOWNTO 0);

    --for inst dds_mod_fi_add 
    SIGNAL mod_fi_add_a : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
    SIGNAL mod_fi_add_b : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
    SIGNAL mod_fi_add_ce : STD_LOGIC := '0';
    SIGNAL mod_fi_add_s : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
    SIGNAL mod_fi_add_sclr : STD_LOGIC := '0';

    --for inst dds8_mod_fi_partial 
    SIGNAL mod_fi_partial_ce : STD_LOGIC := '0';
    SIGNAL mod_fi_partial_sclr : STD_LOGIC := '0';
    SIGNAL mod_fi_partial_a : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
    SIGNAL mod_fi_partial_b : STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
    SIGNAL mod_fi_partial_c : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
    SIGNAL mod_fi_partial_subtract : STD_LOGIC := '0';
    SIGNAL mod_fi_partial_p : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
    SIGNAL mod_fi_partial_pcout : STD_LOGIC_VECTOR(47 DOWNTO 0) := (OTHERS => '0');

    --for inst dds8_mod_group_accum 
    SIGNAL mod_group_accum_b : STD_LOGIC_VECTOR(34 DOWNTO 0) := (OTHERS => '0');
    SIGNAL mod_group_accum_sclr : STD_LOGIC := '0';
    SIGNAL mod_group_accum_q : STD_LOGIC_VECTOR (47 DOWNTO 0) := (OTHERS => '0');
BEGIN

    mod_fi_add : ENTITY work.dds8_mod_fi_add PORT MAP(
        A => mod_fi_add_a,
        B => mod_fi_add_b,
        CLK => clk_seq,
        CE => mod_fi_add_ce,
        SCLR => mod_fi_add_sclr,
        S => mod_fi_add_s
        );

    mod_fi_partial : ENTITY work.dds8_mod_fi_partial PORT MAP(
        CLK => clk_seq,
        CE => mod_fi_partial_ce,
        SCLR => mod_fi_partial_sclr,
        A => mod_fi_partial_a,
        B => mod_fi_partial_b,
        C => mod_fi_partial_c,
        SUBTRACT => mod_fi_partial_subtract,
        P => mod_fi_partial_p,
        PCOUT => mod_fi_partial_pcout
        );

    mod_group_accum : ENTITY work.dds8_mod_group_accum PORT MAP(
        B => mod_group_accum_b,
        CLK => clk_seq,
        SCLR => mod_group_accum_sclr,
        Q => mod_group_accum_q
        );
END ARCHITECTURE Behavioral;