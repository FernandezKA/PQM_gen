----------------------------------------------------------------------------------
-- Company: Home
-- Engineer: Fernandez K. A.
-- 
-- Create Date: 06.02.2022 23:40:47
-- Design Name: PQM_CORE
-- Module Name: core - Behavioral
-- Project Name: PQM_CORE
-- Target Devices: Zynq 7010 
-- Tool Versions: 
-- Description: 
--It's core for DSP transmit part of GeoRadar project
--Read data from bram, parsed it at cmd + arg (32 + 32), then execute it
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
        ARG_widgt : INTEGER := 32;
        ADDR_widgt : INTEGER := 10;
        ptrMaxVal : unsigned(9 DOWNTO 0) := (OTHERS => '1');

        GPIO_widgt : INTEGER := 32;

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
        addra : IN STD_LOGIC_VECTOR (10 DOWNTO 0) := (OTHERS => '0');
        dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
        wea : IN STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
        ena : IN STD_LOGIC := '0';
        --for connecting with other module
        clk_core : IN STD_LOGIC;
        rst_core : IN STD_LOGIC;
        trig_core : IN STD_LOGIC;
        en_core : IN STD_LOGIC;
        --implement gpio  
        GPIOA : OUT STD_LOGIC_VECTOR (GPIO_widgt - 1 DOWNTO 0);
        sig_out : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
    );
END CORE;
-------------------------------------------------------------------
-------------------------------------------------------------------
-------------------------------------------------------------------
ARCHITECTURE Behavioral OF CORE IS

    CONSTANT GPIO_WRITE : STD_LOGIC_VECTOR(CMD_widgt - 1 DOWNTO 0) := X"00000001";
    CONSTANT GPIO_SET : STD_LOGIC_VECTOR(CMD_widgt - 1 DOWNTO 0) := X"00000002";
    CONSTANT GPIO_RESET : STD_LOGIC_VECTOR(CMD_widgt - 1 DOWNTO 0) := X"00000003";
    CONSTANT SET_AMP_1 : STD_LOGIC_VECTOR(CMD_widgt - 1 DOWNTO 0) := X"00000004";
    CONSTANT SET_AMP_2 : STD_LOGIC_VECTOR(CMD_widgt - 1 DOWNTO 0) := X"00000005";
    CONSTANT SET_F0_CARR : STD_LOGIC_VECTOR(CMD_widgt - 1 DOWNTO 0) := X"00000006";
    CONSTANT SET_F0_ROT : STD_LOGIC_VECTOR(CMD_widgt - 1 DOWNTO 0) := X"00000007";
    CONSTANT SET_F_CARR_INC : STD_LOGIC_VECTOR(CMD_widgt - 1 DOWNTO 0) := X"00000008";
    CONSTANT SET_F_ROT_INC : STD_LOGIC_VECTOR(CMD_widgt - 1 DOWNTO 0) := X"00000009";
    CONSTANT SET_P_CARR : STD_LOGIC_VECTOR(CMD_widgt - 1 DOWNTO 0) := X"0000000A";
    CONSTANT SET_P_ROT : STD_LOGIC_VECTOR(CMD_widgt - 1 DOWNTO 0) := X"0000000B";
    CONSTANT JMP : STD_LOGIC_VECTOR(CMD_widgt - 1 DOWNTO 0) := X"0000000C";
    CONSTANT NOP : STD_LOGIC_VECTOR(CMD_widgt - 1 DOWNTO 0) := X"0000000D";
    CONSTANT TRIG_SEQUENCER : STD_LOGIC_VECTOR(CMD_widgt - 1 DOWNTO 0) := X"0000000E";

    --For read new data from BRAM
    SIGNAL readed_BRAM : STD_LOGIC_VECTOR (BRAM_widgt - 1 DOWNTO 0) := (OTHERS => '0');
    SIGNAL ptrBRAM : unsigned (ADDR_widgt - 1 DOWNTO 0) := (OTHERS => '0');

    SIGNAL jmp_flag : STD_LOGIC := '0';
    SIGNAL nop_flag : STD_LOGIC := '0';

    --signals for BRAM instntiation     
    SIGNAL enb : STD_LOGIC := '1';

    --signals for GPIO instantioaton  
    SIGNAL gpioa_reg : STD_LOGIC_VECTOR (GPIO_widgt - 1 DOWNTO 0) := (OTHERS => '0');
    SIGNAL gpioa_rst : STD_LOGIC := '0';

    --signals for AMP_CTRL instatiaton  
    SIGNAL en_amp_ctrl : STD_LOGIC := '1';
    SIGNAL AmpCTRL_IN_1 : STD_LOGIC_VECTOR(AMP_CTRL_Sig_widgt - 1 DOWNTO 0);
    SIGNAL AmpCTRL_IN_2 : STD_LOGIC_VECTOR(AMP_CTRL_Sig_widgt - 1 DOWNTO 0);
    SIGNAL Amp_CTRL_Amp_1 : STD_LOGIC_VECTOR(AMP_CTRL_widgt - 1 DOWNTO 0);
    SIGNAL Amp_CTRL_Amp_2 : STD_LOGIC_VECTOR(AMP_CTRL_widgt - 1 DOWNTO 0);
    SIGNAL AmpCTRL_OUT_1 : STD_LOGIC_VECTOR(AMP_CTRL_Sig_widgt - 1 DOWNTO 0);
    SIGNAL AmpCTRL_OUT_2 : STD_LOGIC_VECTOR(AMP_CTRL_Sig_widgt - 1 DOWNTO 0);
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
    SIGNAL cmd_reg : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
    SIGNAL arg_reg : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');

    --For modulator instantiation 
    SIGNAL modulator_mod_reg : STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
    SIGNAL res_modulator : Tdac_bus := (OTHERS => (OTHERS => '0'));

    COMPONENT blk_mem_gen_0
        PORT (
            clka : IN STD_LOGIC;
            ena : IN STD_LOGIC;
            wea : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
            dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            clkb : IN STD_LOGIC;
            enb : IN STD_LOGIC;
            addrb : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
            doutb : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
        );
    END COMPONENT;

BEGIN
    -------------------------------------------------------------------
    --This part of code for instantiation other modules and IP - cores
    -------------------------------------------------------------------
    --BRAM implementation   
    BRAM_IP : blk_mem_gen_0
    PORT MAP(
        addra => addra,
        clka => clk_core,
        dina => dina,
        ena => ena,
        wea => wea,
        addrb => STD_LOGIC_VECTOR(ptrBRAM),
        clkb => clk_core,
        doutb => readed_BRAM,
        enb => enb
    );

    --GPIO instantiation  
    GPIO_mod : ENTITY work.GPIO PORT MAP(
        clk_gpio => clk_core,
        rst_gpio => gpioa_rst,
        gpio_reg => gpioa_reg,
        GPIOA => GPIOA
        );

    --Amp ctrl instantiation 
    Amp_ctrl_mod : ENTITY work.AMP_CTRL PORT MAP(
        clk_amp_ctrl => clk_core,
        en_amp_ctrl => en_amp_ctrl,
        A_1 => AmpCTRL_IN_1,
        A_2 => AmpCTRL_IN_2,
        Amp_1 => Amp_CTRL_Amp_1,
        Amp_2 => Amp_CTRL_Amp_2,
        Out_1 => AmpCTRL_OUT_1,
        Out_2 => AmpCTRL_OUT_2
        );

    --Sequenser instantiation 
    Seq_mod : ENTITY work.Sequencer PORT MAP(
        clk_seq => clk_core,
        en_seq => en_seq,
        trig_init => trig_seq,
        Fc => Fc,
        Fr => Fr,
        Pc => Pc,
        Pr => Pr,
        Fr_inc => Fr_inc,
        Fc_inc => Fc_inc,
        Carrier => Carrier,
        Rotator => Rotator
        );

    modulator_mod : ENTITY work.modulator PORT MAP(
        clk_mod => clk_core,
        srst_i => rst_core,
        mode_mod_i => modulator_mod_reg,
        CARR_i => Carrier,
        ROT_i => Rotator,
        RES_o => res_modulator
        );
    --------------------------------------------------------------------------
    --End of instantiation 
    --------------------------------------------------------------------------
    -------------------------------------------------------------------
    future_parser : PROCESS (clk_core) BEGIN
        IF rising_edge(clk_core) THEN
            IF jmp_flag = '1' THEN
                jmp_flag <= '0'; --this flag for delay at 1 clock 
                ptrBRAM <= ptrBRAM + 1;
            ELSIF nop_flag = '1' THEN
                TIM1_EN_STR <= '0';
                IF TIM1_CEN = '1' THEN

                ELSE
                    nop_flag <= '0';
                    enb <= '1';
                END IF;
                --nop_flag <= '0';
                --enb <= '1';
            ELSE
                CASE (readed_BRAM(CMD_widgt - 1 DOWNTO 0)) IS
                    WHEN JMP =>
                        ptrBRAM <= unsigned(readed_BRAM(CMD_widgt + ADDR_widgt - 1 DOWNTO CMD_widgt));
                        jmp_flag <= '1';
                    WHEN NOP =>
                        nop_flag <= '1';
                        enb <= '0';
                        TIM1_ARR <= unsigned(readed_BRAM(BRAM_widgt - 1 DOWNTO CMD_widgt));
                        TIM1_EN_STR <= '1';
                    WHEN OTHERS =>
                        ptrBRAM <= ptrBRAM + 1;
                END CASE;

                cmd_reg <= readed_BRAM(BRAM_widgt - 1 DOWNTO CMD_widgt); -- this data delayed at 1 clock
                arg_reg <= readed_BRAM(CMD_widgt - 1 DOWNTO 0);
            END IF;
        END IF;
    END PROCESS future_parser;

    cmd_parser : PROCESS (clk_core) BEGIN
        IF rising_edge(clk_core) THEN
            --reset strobs
            trig_seq <= '0';

            CASE readed_BRAM(CMD_widgt - 1 DOWNTO 0) IS
                    --GPIO set command
                WHEN GPIO_WRITE =>
                    gpioa_reg <= readed_BRAM(BRAM_widgt - 1 DOWNTO CMD_widgt);
                    --Set GPIO bits
                WHEN GPIO_SET =>
                    gpioa_reg <= (gpioa_reg) OR readed_BRAM(BRAM_widgt - 1 DOWNTO CMD_widgt);
                    --Reset GPIO bits
                WHEN GPIO_RESET =>
                    gpioa_reg <= (gpioa_reg) AND readed_BRAM(BRAM_widgt - 1 DOWNTO CMD_widgt);
                    --Set amplitude I
                WHEN SET_AMP_1 =>
                    Amp_CTRL_Amp_1 <= readed_BRAM(CMD_widgt + AMP_CTRL_widgt - 1 DOWNTO CMD_widgt);
                    --Set amplitude Q
                WHEN SET_AMP_2 =>
                    Amp_CTRL_Amp_2 <= readed_BRAM(CMD_widgt + AMP_CTRL_widgt - 1 DOWNTO CMD_widgt);
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

                WHEN JMP =>

                WHEN TRIG_SEQUENCER =>
                    trig_seq <= '1';

                WHEN OTHERS =>
            END CASE;
        END IF;
    END PROCESS cmd_parser;

    --THIS TIMER FOR DELAY ORGANIZATION FOR COMMAND NOP
    tim1 : PROCESS (clk_core) BEGIN
        IF rising_edge(clk_core) THEN
            CASE TIM1_SR IS
                WHEN edge =>
                    --clear strobes    
                    TIM1_DIS_STR <= '0';
                    --wait start strob
                    IF tim1_en_str = '1' THEN
                        TIM1_SR <= decrement;
                        TIM1_CNT <= TIM1_ARR;
                        TIM1_CEN <= '1';
                    ELSE
                        TIM1_SR <= TIM1_SR;
                        TIM1_CEN <= '0';
                    END IF;
                WHEN decrement =>
                    --wait zero into cnt_register
                    IF TIM1_CNT = X"00000000" THEN
                        TIM1_SR <= edge;
                        TIM1_DIS_STR <= '1';
                    ELSE
                        TIM1_CNT <= TIM1_CNT - 1;
                    END IF;
            END CASE;
        END IF;
    END PROCESS tim1;

END Behavioral;