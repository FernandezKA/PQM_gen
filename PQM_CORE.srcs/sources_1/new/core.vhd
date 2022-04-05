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
        GPIOA : OUT STD_LOGIC_VECTOR (GPIO_widgt - 1 DOWNTO 0)
    );
END CORE;
-------------------------------------------------------------------
-------------------------------------------------------------------
-------------------------------------------------------------------
ARCHITECTURE Behavioral OF CORE IS

    CONSTANT GPIO_WRITE : unsigned(CMD_widgt - 1 DOWNTO 0) := X"00000001";
    CONSTANT GPIO_SET : unsigned(CMD_widgt - 1 DOWNTO 0) := X"00000002";
    CONSTANT GPIO_RESET : unsigned(CMD_widgt - 1 DOWNTO 0) := X"00000003";
    CONSTANT SET_AMP_1 : unsigned(CMD_widgt - 1 DOWNTO 0) := X"00000004";
    CONSTANT SET_AMP_2 : unsigned(CMD_widgt - 1 DOWNTO 0) := X"00000005";
    CONSTANT SET_F0_CARR : unsigned(CMD_widgt - 1 DOWNTO 0) := X"00000006";
    CONSTANT SET_F0_ROT : unsigned(CMD_widgt - 1 DOWNTO 0) := X"00000007";
    CONSTANT SET_F_INC : unsigned(CMD_widgt - 1 DOWNTO 0) := X"00000008";
    CONSTANT SET_P_CARR : unsigned(CMD_widgt - 1 DOWNTO 0) := X"00000009";
    CONSTANT SET_P_ROT : unsigned(CMD_widgt - 1 DOWNTO 0) := X"0000000A";
    CONSTANT JMP : unsigned(CMD_widgt - 1 DOWNTO 0) := X"0000000B";
    CONSTANT NOP : unsigned(CMD_widgt - 1 DOWNTO 0) := X"0000000C";

    --For read new data from BRAM
    SIGNAL readed_BRAM : STD_LOGIC_VECTOR (BRAM_widgt - 1 DOWNTO 0) := (OTHERS => '0');
    SIGNAL ptrBRAM : unsigned (ADDR_widgt - 1 DOWNTO 0) := (OTHERS => '0');

    SIGNAL CMD_reg : unsigned (CMD_widgt - 1 DOWNTO 0);
    SIGNAL ARG_reg : unsigned (ARG_widgt - 1 DOWNTO 0);

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
    SIGNAL Fc : unsigned(Fcar_widgt - 1 DOWNTO 0);
    SIGNAL Fr : unsigned(Frot_widgt - 1 DOWNTO 0);
    SIGNAL Pc : unsigned(Pc_widgt - 1 DOWNTO 0);
    SIGNAL Pr : unsigned (Pr_widgt - 1 DOWNTO 0);
    SIGNAL Fr_inc : unsigned(Finc_widgt - 1 DOWNTO 0);
    signal Fc_inc : unsigned(Finc_widgt - 1 downto 0);
    SIGNAL Carrier : STD_LOGIC_VECTOR(Car_widgt - 1 DOWNTO 0);
    SIGNAL Rotation : STD_LOGIC_VECTOR (Rot_widgt - 1 DOWNTO 0);

    --for delay command
    SIGNAL TIM1_CNT : unsigned(TIM1_widgt - 1 DOWNTO 0) := (OTHERS => '0');
    SIGNAL TIM1_ARR : unsigned(TIM1_widgt - 1 DOWNTO 0) := (OTHERS => '0');
    SIGNAL TIM1_CEN : STD_LOGIC := '0';
    SIGNAL TIM1_EN_STR : STD_LOGIC := '0';
    SIGNAL TIM1_DIS_STR : STD_LOGIC := '0';

    TYPE CNT_STATE IS (edge, decrement);
    SIGNAL TIM1_SR : CNT_STATE := edge;

BEGIN
    -------------------------------------------------------------------
    --This part of code for instantiation other modules and IP - cores
    -------------------------------------------------------------------
    --BRAM implementation   
    BRAM_IP : ENTITY work.blk_mem_gen_0 PORT MAP(
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
        Fc => STD_LOGIC_VECTOR(Fc),
        Fr => STD_LOGIC_VECTOR(Fr),
        Pc => STD_LOGIC_VECTOR(Pc),
        Pr => STD_LOGIC_VECTOR(Pr),
        Fr_inc => STD_LOGIC_VECTOR(Fr_inc),
        Fc_inc => std_logic_vector(Fc_inc),
        Carrier => Carrier,
        Rotation => Rotation
        );
    --------------------------------------------------------------------------
    --End of instantiation 
    --------------------------------------------------------------------------
    -------------------------------------------------------------------

    next_cmd : PROCESS (clk_core) BEGIN
        IF rising_edge(clk_core) THEN
            CASE unsigned(readed_BRAM(ARG_widgt - 1 DOWNTO 0)) IS
                WHEN JMP =>
                    ptrBRAM <= ARG_reg(ADDR_widgt - 1 DOWNTO 0);
                WHEN NOP =>
                    IF TIM1_DIS_STR = '1' THEN 
                        ptrBRAM <= ptrBRAM + 1;
                    ELSE 
                        TIM1_EN_STR <= '1';
                        TIM1_ARR <= unsigned(readed_BRAM(BRAM_widgt - 1 downto ARG_widgt));                    
                    END IF;

                WHEN OTHERS =>
                    ARG_reg <= unsigned(readed_BRAM(BRAM_widgt - 1 DOWNTO ARG_widgt));
                    CMD_reg <= unsigned(readed_BRAM(ARG_widgt - 1 DOWNTO 0));
                
                    IF TIM1_CEN = '0' THEN
                        ptrBRAM <= ptrBRAM + 1;
                    ELSE
                        ptrBRAM <= ptrBRAM;
                    END IF;
                    
                    TIM1_EN_STR <= '0';
            END CASE;
        END IF;
    END PROCESS next_cmd;
    -------------------------------------------------------------------
    curr_cmd : PROCESS (clk_core) BEGIN
        IF rising_edge(clk_core) THEN
            CASE CMD_reg IS
                    --GPIO set command
                WHEN GPIO_WRITE =>
                    gpioa_reg <= STD_LOGIC_VECTOR(ARG_reg);
                    --Set GPIO bits
                WHEN GPIO_SET =>
                    gpioa_reg <= STD_LOGIC_VECTOR(unsigned(gpioa_reg) OR unsigned(ARG_reg));
                    --Reset GPIO bits
                WHEN GPIO_RESET =>
                    gpioa_reg <= STD_LOGIC_VECTOR(unsigned(gpioa_reg) AND unsigned(ARG_reg));
                    --Set amplitude I
                WHEN SET_AMP_1 =>
                    Amp_CTRL_Amp_1 <= STD_LOGIC_VECTOR(ARG_reg(15 DOWNTO 0));
                    --Set amplitude Q
                WHEN SET_AMP_2 =>
                    Amp_CTRL_Amp_2 <= STD_LOGIC_VECTOR(ARG_reg(15 DOWNTO 0));
                    --Set F0 carrier
                WHEN SET_F0_CARR =>
                    Fc <= ARG_reg;
                    --Set F0 rotation 
                WHEN SET_F0_ROT => -- add f_inc_carr
                    Fr <= ARG_reg;
                    --Set Fr_inc
                WHEN SET_F_INC => --rotation 
                    Fr_inc <= ARG_reg;
                    --Set phase carrier
                WHEN SET_P_CARR => -- replace p - > ph
                    Pc <= ARG_reg(Pc_widgt - 1 downto 0);
                    --Set phase rotation 
                WHEN SET_P_ROT =>
                    Pr <= ARG_reg(Pr_widgt - 1 downto 0);
                when NOP => 
                    
                
                WHEN OTHERS =>

            END CASE;
        END IF;
    END PROCESS curr_cmd;
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