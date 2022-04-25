----------------------------------------------------------------------------------
-- Company: Home
-- Engineer: FernandezKA
-- 
-- Create Date: 25.04.2022 17:41:08
-- Design Name: 
-- Module Name: envelope_shaper - Behavioral
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
USE ieee.numeric_std.ALL;

LIBRARY work;
USE work.main_pkg.ALL;

ENTITY envelope_shaper IS
    PORT (
        clk_env : IN STD_LOGIC := '0';
        rst_env : IN STD_LOGIC := '0';
        env_shape : IN STD_LOGIC := '0';
        sig_i : IN Tdac_bus := (OTHERS => (OTHERS => '0'));
        sig_o : OUT Tdac_bus := (OTHERS => (OTHERS => '0'))
    );
END envelope_shaper;

ARCHITECTURE Behavioral OF envelope_shaper IS
BEGIN
    env_shape_proc : PROCESS (clk_env) BEGIN
        IF rising_edge(clk_env) THEN
            IF rst_env = '1' THEN
                sig_o <= (OTHERS => (OTHERS => '0'));
            ELSE
                IF env_shape = '1' THEN
                    sig_o <= sig_i;
                ELSE
                    sig_o <= (OTHERS => (OTHERS => '0'));
                END IF;
            END IF;
        END IF;
    END PROCESS env_shape_proc;

END Behavioral;