----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.04.2021 10:22:19
-- Design Name: 
-- Module Name: dds8mod_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.main_pkg.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
LIBRARY UNISIM;
USE UNISIM.VComponents.ALL;

ENTITY dds8mod_tb IS
    --  Port ( );
END dds8mod_tb;

ARCHITECTURE Behavioral OF dds8mod_tb IS
    SIGNAL cos : Tdac_bus;
    SIGNAL sin : Tdac_bus;
    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL rst : STD_LOGIC := '0';
    SIGNAL we : STD_LOGIC := '1';
    SIGNAL cnt : unsigned(15 DOWNTO 0) := x"0000";
    SIGNAL cnt2 : unsigned(15 DOWNTO 0) := x"0000";
    SIGNAL freq : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"00000001";
    SIGNAL phase : STD_LOGIC_VECTOR(15 DOWNTO 0) := x"0000";

    CONSTANT rst_delay : unsigned (15 DOWNTO 0) := x"0000";
    CONSTANT CLK_PERIOD : TIME := 3.2 ns;

BEGIN
    xCLK_GEN : PROCESS BEGIN
        WAIT FOR CLK_PERIOD/2;
        clk <= NOT clk;
    END PROCESS;

    xCNT_GEN : PROCESS (clk) BEGIN
        IF rising_edge(clk) THEN
            cnt <= cnt + 1;
        END IF;
    END PROCESS;

    xRST_GEN : PROCESS (clk) BEGIN
        IF rising_edge(clk) THEN
            rst <= '0';
            IF cnt = rst_delay THEN
                rst <= '1';
                freq <= x"00000001";
            END IF;
        END IF;
    END PROCESS;

    xCNT2_GEN : PROCESS (clk, rst) BEGIN
        IF rising_edge(clk) THEN
            IF rst = '1' THEN
                cnt2 <= x"0001";
            ELSE
                IF cnt2 > x"0000" THEN
                    cnt2 <= cnt2 + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    --    xFRQ_GEN: process(clk) begin
    --        if rising_edge(clk) then
    --            if cnt<x"06" then 
    --                freq <= x"01189374"; 
    --            else
    --                if cnt2>x"0000" and cnt2<x"00d0" then 
    --                    freq <= x"01189374"; 
    --                else 
    --                    freq <= x"01189374";--x"00000000"; 
    --                end if;
    --            end if;
    --        end if;
    --    end process;

    XUUT : ENTITY work.dds8_mod GENERIC MAP(C_OUT_UNSIGNED => '0')
        PORT MAP(
            clk_i => clk,
            rst_i => rst,
            freq_i => freq,
            phase_i => phase, --phase_i => phase,
            cos14_o => cos,
            sin14_o => sin);
END Behavioral;