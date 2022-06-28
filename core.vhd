----------------------------------------------------------------------------------
-- Company: Home
-- Engineer: FernandezKA
-- 
-- Create Date: 06.02.2022 23:40:47
-- Design Name: PQM_CORE
-- Module Name: core - Behavioral
-- Project Name: PQM_CORE
-- Target Devices: XC7Z045FFG900-1
-- Tool Versions: 
-- Description: 
--It's core for DSP transmit part of GeoRadar project
--Read data from bram, then parsed it on ARG + CMD (32 + 32), after execute it
-- 
-- Dependencies: None
-- 
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

LIBRARY UNISIM;
USE UNISIM.VComponents.ALL;

LIBRARY work;
USE work.main_pkg.ALL;

ENTITY CORE IS
    GENERIC (
        BRAM_widgt : INTEGER := 64;
        CMD_widgt : INTEGER := 32;
        CMD_SHORT_WIDGT : INTEGER := 8;
        ARG_widgt : INTEGER := 32;
        ADDR_widgt : INTEGER := 9;
        ptrMaxVal : unsigned(9 DOWNTO 0) := (OTHERS => '1');

        GPIO_ext_widgt : INTEGER := 32;
        gpio_int_widgt : INTEGER := 8;

        AMP_CTRL_Sig_widgt : INTEGER := 16;
        AMP_CTRL_widgt : INTEGER := 16;

        Fcar_widgt : INTEGER := 32;
        Frot_widgt : INTEGER := 32;
        Finc_widgt : INTEGER := 32;
        Pc_widgt : INTEGER := 16;
        Pr_widgt : INTEGER := 16;
        Car_widgt : INTEGER := 14;
        Rot_widgt : INTEGER := 14;
        TIM1_widgt : INTEGER := 32
    );
    PORT (
        --for BRAM PORTA connect 
        core_addra_clk : IN STD_LOGIC;
        addra : IN STD_LOGIC_VECTOR (9 DOWNTO 0);
        dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        rsta : IN STD_LOGIC := '0';
        wea_i : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        ena : IN STD_LOGIC := '0';
        --for connecting with other module
        clk_core : IN STD_LOGIC;
        rst_core : IN STD_LOGIC;
        trig_core : IN STD_LOGIC;
        --en_core : IN STD_LOGIC;
        --implement gpio  
        gpio_ext_out : STD_LOGIC_VECTOR (gpio_ext_widgt - 1 DOWNTO 0) := (OTHERS => '0');
        sig_out : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
        to_DAC : OUT Tdac_bus := (OTHERS => (OTHERS => '0'))
    );
END CORE;
-------------------------------------------------------------------
-------------------------------------------------------------------
-------------------------------------------------------------------
ARCHITECTURE Behavioral OF CORE IS

    TYPE CORE_STATE IS (RESET, IDLE, WORKED);
    SIGNAL CORE_CS : CORE_STATE := reset;

    CONSTANT GPIO_EXT_WRITE : STD_LOGIC_VECTOR(CMD_SHORT_WIDGT - 1 DOWNTO 0) := X"01";
    CONSTANT GPIO_EXT_SET : STD_LOGIC_VECTOR(CMD_SHORT_WIDGT - 1 DOWNTO 0) := X"02";
    CONSTANT GPIO_EXT_RESET : STD_LOGIC_VECTOR(CMD_SHORT_WIDGT - 1 DOWNTO 0) := X"03";
    CONSTANT GPIO_INT_WRITE : STD_LOGIC_VECTOR(CMD_SHORT_WIDGT - 1 DOWNTO 0) := X"04";
    CONSTANT GPIO_INT_SET : STD_LOGIC_VECTOR(CMD_SHORT_WIDGT - 1 DOWNTO 0) := X"05";
    CONSTANT GPIO_INT_RESET : STD_LOGIC_VECTOR (CMD_SHORT_WIDGT - 1 DOWNTO 0) := X"06";
    CONSTANT SET_AMP : STD_LOGIC_VECTOR(CMD_SHORT_WIDGT - 1 DOWNTO 0) := X"07";
    CONSTANT SET_F0_CARR : STD_LOGIC_VECTOR(CMD_SHORT_WIDGT - 1 DOWNTO 0) := X"08";
    CONSTANT SET_F0_ROT : STD_LOGIC_VECTOR(CMD_SHORT_WIDGT - 1 DOWNTO 0) := X"09";
    CONSTANT SET_F_CARR_INC : STD_LOGIC_VECTOR(CMD_SHORT_WIDGT - 1 DOWNTO 0) := X"0A";
    CONSTANT SET_F_ROT_INC : STD_LOGIC_VECTOR(CMD_SHORT_WIDGT - 1 DOWNTO 0) := X"0B";
    CONSTANT SET_P_CARR : STD_LOGIC_VECTOR(CMD_SHORT_WIDGT - 1 DOWNTO 0) := X"0C";
    CONSTANT SET_P_ROT : STD_LOGIC_VECTOR(CMD_SHORT_WIDGT - 1 DOWNTO 0) := X"0D";
    CONSTANT JMP : STD_LOGIC_VECTOR(CMD_SHORT_WIDGT - 1 DOWNTO 0) := X"0E";
    CONSTANT NOP : STD_LOGIC_VECTOR(CMD_SHORT_WIDGT - 1 DOWNTO 0) := X"0F";
    CONSTANT select_modulation : STD_LOGIC_VECTOR(CMD_SHORT_WIDGT - 1 DOWNTO 0) := X"10";

    --For read new data from BRAM
    SIGNAL readed_BRAM : STD_LOGIC_VECTOR (BRAM_widgt - 1 DOWNTO 0) := (OTHERS => '0');
    SIGNAL ptrBRAM : unsigned (ADDR_widgt - 1 DOWNTO 0) := (OTHERS => '0');

    -- TRIG signal synchronized in module
    SIGNAL trig_s : STD_LOGIC := '0';

    --Strob for previous parser
    SIGNAL jmp_flag : STD_LOGIC := '0';
    SIGNAL jmp_strob : STD_LOGIC := '0';
    SIGNAL nop_flag : STD_LOGIC := '0';
    SIGNAL jmp_delay : unsigned (3 DOWNTO 0) := (OTHERS => '0');
    --signals for BRAM instntiation     
    SIGNAL enb : STD_LOGIC := '1';

    --signals for GPIO instantioaton  
    SIGNAL gpio_ext : STD_LOGIC_VECTOR (GPIO_ext_widgt - 1 DOWNTO 0) := (OTHERS => '0');
    SIGNAL gpio_int : STD_LOGIC_VECTOR (GPIO_INT_widgt - 1 DOWNTO 0) := (OTHERS => '0');

    --signals for AMP_CTRL instatiaton  
    SIGNAL en_amp_ctrl : STD_LOGIC := '1';
    SIGNAL amp_val : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
    SIGNAL after_amp : Tdac_bus := (OTHERS => (OTHERS => '0'));
    --signals for sequencer 
    SIGNAL en_seq : STD_LOGIC := '1';
    SIGNAL trig_seq : STD_LOGIC := '0';
    SIGNAL Fc : STD_LOGIC_VECTOR(Fcar_widgt - 1 DOWNTO 0);
    SIGNAL Fr : STD_LOGIC_VECTOR(Frot_widgt - 1 DOWNTO 0);
    SIGNAL Pc : STD_LOGIC_VECTOR(Pc_widgt - 1 DOWNTO 0);
    SIGNAL Pr : STD_LOGIC_VECTOR (Pr_widgt - 1 DOWNTO 0);
    SIGNAL Fr_inc : STD_LOGIC_VECTOR(Finc_widgt - 1 DOWNTO 0);
    SIGNAL Fc_inc : STD_LOGIC_VECTOR(Finc_widgt - 1 DOWNTO 0);
    SIGNAL Carrier : TDAc_bus := (OTHERS => (OTHERS => '0')); --tDAC bus type 
    SIGNAL Rotator : TDAc_bus := (OTHERS => (OTHERS => '0'));

    --for delay command
    SIGNAL TIM1_CNT : unsigned(TIM1_widgt - 1 DOWNTO 0) := (OTHERS => '0');
    SIGNAL TIM1_ARR : unsigned(TIM1_widgt - 1 DOWNTO 0) := (OTHERS => '0');
    SIGNAL TIM1_CEN : STD_LOGIC := '0';
    SIGNAL TIM1_EN_STR : STD_LOGIC := '0';
    SIGNAL TIM1_DIS_STR : STD_LOGIC := '0';

    TYPE CNT_STATE IS (edge, decrement);
    SIGNAL TIM1_SR : CNT_STATE := edge;
    --This signals for degug, after synthesis they are removed as unused
    SIGNAL shadow_read : STD_LOGIC_VECTOR(63 DOWNTO 0) := (OTHERS => '0');
    SIGNAL arg_reg : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
    SIGNAL cmd_reg : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');

    --For modulator instantiation 
    SIGNAL modulator_mod_reg : STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
    SIGNAL res_modulator : Tdac_bus := (OTHERS => (OTHERS => '0'));

    SIGNAL envelope_shaper_rule : STD_LOGIC := '1';
    SIGNAL envelope_shaper_rst : STD_LOGIC := '0';
    SIGNAL shaper_out : Tdac_bus := (OTHERS => (OTHERS => '0'));

    COMPONENT blk_mem_gen_0
        PORT (
            clka : IN STD_LOGIC;
            ena : IN STD_LOGIC;
            wea : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            addra : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
            dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            clkb : IN STD_LOGIC;
            enb : IN STD_LOGIC;
            addrb : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
            doutb : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
        );
    END COMPONENT;

BEGIN
    -------------------------------------------------------------------
    --This part of code for instantiation other modules and IP - cores
    -------------------------------------------------------------------
    --BRAM instantiation
    BRAM_IP : blk_mem_gen_0 PORT MAP(
        addra => addra,
        clka => core_addra_clk,
        dina => dina,
        ena => ena,
        wea => wea_i,
        addrb => STD_LOGIC_VECTOR(ptrBRAM),
        clkb => clk_core,
        doutb => readed_BRAM,
        enb => enb
    );

    --TRIG signal synchronization
    synch : ENTITY WORK.SYNC
        GENERIC MAP(C_w => 1, C_n => 2)
        PORT MAP(ci => clk_core, di(0) => trig_core, do(0) => trig_s);

    --Amp ctrl instantiation 
    Amp_ctrl_mod : ENTITY work.AMP_CTRL_CORE PORT MAP(
        clk_amp_ctrl => clk_core,
        en_amp_ctrl => en_amp_ctrl,
        Amp_val => amp_val,
        amp_in => shaper_out,
        amp_out => to_DAC
        );

    --Sequenser instantiation 
    Seq_mod : ENTITY work.SEQUENCER_CORE PORT MAP(
        clk_seq => clk_core,
        en_seq => en_seq,
        rst_seq => gpio_int(2),
        rst_dds => gpio_int(1),
        Fc => Fc,
        Fr => Fr,
        Pc => Pc,
        Pr => Pr,
        Fr_inc => Fr_inc,
        Fc_inc => Fc_inc,
        Carrier => Carrier,
        Rotator => Rotator
        );

    --modulator instantiation
    modulator_mod : ENTITY work.modulator PORT MAP(
        clk_mod => clk_core,
        srst_i => rst_core,
        mode_mod_i => gpio_int(7 DOWNTO 4),
        CARR_i => Carrier,
        ROT_i => Rotator,
        RES_o => res_modulator
        );

    --envelope shaper instantiation
    env_shaper : ENTITY work.envelope_shaper PORT MAP(
        clk_env => clk_core,
        rst_env => envelope_shaper_rst,
        env_shape => gpio_int(0),
        sig_i => res_modulator,
        sig_o => shaper_out
        );
    --------------------------------------------------------------------------
    --End of instantiation 
    --------------------------------------------------------------------------
    FSM_CORE : PROCESS (clk_core) BEGIN
        IF rising_edge (clk_core) THEN
            CASE CORE_CS IS
                WHEN RESET =>
                    IF rst_core = '1' THEN
                        CORE_CS <= RESET;
                    ELSE
                        CORE_CS <= IDLE;
                    END IF;
                WHEN IDLE =>
                    IF rst_core = '1' THEN
                        CORE_CS <= RESET;
                    ELSE
                        IF trig_s = '1' THEN
                            CORE_CS <= WORKED;
                        ELSE
                            CORE_CS <= IDLE;
                        END IF;
                    END IF;
                WHEN WORKED =>
                    IF rst_core = '1' THEN
                        CORE_CS <= RESET;
                    ELSE
                        CORE_CS <= WORKED;
                    END IF;
                WHEN OTHERS =>
                    core_cs <= reset;
            END CASE;
        END IF;
    END PROCESS FSM_CORE;
    parser_delay : PROCESS (clk_core) BEGIN
        IF rising_edge(clk_core) THEN
            IF CORE_CS = worked THEN
                IF tim1_en_str = '1' or tim1_cen = '1' THEN
                    enb <= '0';
                ELSE
                    enb <= '1';
                END IF;

                IF jmp_flag = '1' THEN
                    IF jmp_delay = "0000" THEN
                        jmp_flag <= '0';
                    ELSE
                        jmp_delay <= jmp_delay - 1;
                    END IF;
                END IF;

                IF jmp_strob = '1' THEN
                    jmp_delay <= (OTHERS => '1');
                    ptrBRAM <= unsigned(arg_reg(addr_widgt - 1 DOWNTO 0));
                    jmp_flag <= '1';
                END IF;

                IF (tim1_en_str = '0' AND tim1_cen = '0' AND jmp_flag = '0' AND jmp_strob = '0') THEN
                    if readed_BRAM(CMD_SHORT_WIDGT - 1 DOWNTO 0) = NOP then 
                        ptrBRAM <= ptrBRAM;
                        enb <= '0';
                    else 
                        ptrBRAM <= ptrBRAM + 1;
                    end if;
                END IF;
            END IF;
        END IF;
    END PROCESS parser_delay;

    encryptor : PROCESS (clk_core) BEGIN
        IF rising_edge(clk_core) THEN
            gpio_int(2 DOWNTO 1) <= "00"; --reset flags for dds reset, sequencer reset
            tim1_en_str <= '0'; --reset tim1 en strob
            jmp_strob <= '0'; --reset jmp strob
            IF CORE_CS = WORKED THEN
                IF tim1_cen = '0' AND tim1_en_str = '0' AND nop_flag = '0' AND jmp_flag = '0' AND jmp_strob = '0' THEN -- lock execute when timer for delay is active 
                    CASE readed_BRAM(CMD_SHORT_WIDGT - 1 DOWNTO 0) IS
                            --GPIO set command
                        WHEN GPIO_EXT_WRITE =>
                            gpio_ext <= readed_BRAM(BRAM_widgt - 1 DOWNTO CMD_widgt);
                            --Set GPIO ext bits
                        WHEN GPIO_EXT_SET =>
                            gpio_ext <= (gpio_ext) OR readed_BRAM(cmd_widgt + gpio_ext_widgt - 1 DOWNTO CMD_widgt);
                            --Reset GPIO bits
                        WHEN GPIO_EXT_RESET =>
                            gpio_ext <= (gpio_ext) AND (NOT readed_BRAM(cmd_widgt + gpio_ext_widgt - 1 DOWNTO CMD_widgt));
                            --Internal gpio part of code
                        WHEN GPIO_INT_WRITE =>
                            gpio_int <= readed_BRAM(CMD_widgt + gpio_int_widgt - 1 DOWNTO CMD_widgt);
                            --Set GPIO bits
                        WHEN GPIO_INT_SET =>
                            gpio_int <= (gpio_int) OR readed_BRAM(CMD_widgt + gpio_int_widgt - 1 DOWNTO CMD_widgt);
                            --Reset GPIO bits
                        WHEN GPIO_INT_RESET =>
                            gpio_int <= (gpio_int) AND (NOT readed_BRAM(CMD_widgt + gpio_int_widgt - 1 DOWNTO CMD_widgt));
                            --Set amplitude Q
                        WHEN SET_AMP =>
                            amp_val <= readed_BRAM(CMD_widgt + AMP_CTRL_widgt - 1 DOWNTO CMD_widgt);
                            --Set F0 carrier
                        WHEN SET_F0_CARR =>
                            Fc <= readed_BRAM(BRAM_widgt - 1 DOWNTO CMD_widgt);
                            --Set F0 rotation 
                        WHEN SET_F0_ROT => -- add f_inc_carr
                            Fr <= readed_BRAM(BRAM_widgt - 1 DOWNTO CMD_widgt);
                            --Set Fr_inc
                        WHEN SET_F_CARR_INC => --carrier frequency increment 
                            Fc_inc <= readed_BRAM(BRAM_widgt - 1 DOWNTO CMD_widgt);
                        WHEN SET_F_ROT_INC =>
                            Fr_inc <= readed_BRAM(BRAM_widgt - 1 DOWNTO CMD_widgt);
                            --Set phase carrier
                        WHEN SET_P_CARR => -- replace p - > ph
                            Pc <= readed_BRAM(CMD_widgt + Pc_widgt - 1 DOWNTO CMD_widgt);
                            --Set phase rotation 
                        WHEN SET_P_ROT =>
                            Pr <= readed_BRAM(CMD_widgt + Pr_widgt - 1 DOWNTO CMD_widgt);
                        WHEN NOP =>
                            tim1_en_str <= '1';
                            TIM1_ARR <= unsigned(readed_BRAM(BRAM_widgt - 1 DOWNTO CMD_widgt));
                        WHEN JMP =>
                            jmp_strob <= '1';
                            arg_reg <= readed_BRAM(BRAM_widgt - 1 DOWNTO CMD_widgt);
                        WHEN OTHERS =>
                    END CASE;
                END IF;
            END IF;
        END IF;
    END PROCESS encryptor;

    --THIS TIMER FOR DELAY ORGANIZATION FOR COMMAND NOP
    tim1 : PROCESS (clk_core) BEGIN
        IF rising_edge(clk_core) THEN
            --Clear strobes
            TIM1_DIS_STR <= '0';

            CASE TIM1_SR IS
                WHEN edge =>
                    --clear strobes    
                    --wait start strob
                    IF tim1_en_str = '1' THEN
                        TIM1_SR <= decrement;
                        TIM1_CNT <= TIM1_ARR;
                        TIM1_CEN <= '1';
                    ELSE
                        --TIM1_SR <= TIM1_SR;
                        TIM1_CEN <= '0';
                    END IF;
                WHEN decrement =>
                    --wait zero into cnt_register
                    IF TIM1_CNT = X"00000000" THEN
                        TIM1_DIS_STR <= '1';
                        TIM1_SR <= edge;
                    ELSE
                        TIM1_CNT <= TIM1_CNT - 1;
                    END IF;
                WHEN OTHERS =>
                    TIM1_CNT <= (OTHERS => '0');
                    TIM1_SR <= EDGE;
            END CASE;
        END IF;
    END PROCESS tim1;

END Behavioral;