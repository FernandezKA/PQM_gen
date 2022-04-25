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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

library work; 
use work.main_pkg.all;

entity envelope_shaper is
  Port (
  clk_env : in std_logic := '0';
  rst_env : in std_logic := '0';
  env_shape : in std_logic := '0';
  sig_i : in Tdac_bus := (others => (others => '0'));
  sig_o : out Tdac_bus := (others => (others => '0'))
   );
end envelope_shaper;

architecture Behavioral of envelope_shaper is
begin
    env_shape_proc: process(clk_env) begin
        if rising_edge(clk_env) then 
            if rst_env = '1' then 
                sig_o <= (others => (others => '0'));
            else
                if env_shape = '1' then 
                    sig_o <= sig_i;
                else
                    sig_o <= (others => (others => '0'));
                end if;
            end if;
        end if;
    end process env_shape_proc ;

end Behavioral;
