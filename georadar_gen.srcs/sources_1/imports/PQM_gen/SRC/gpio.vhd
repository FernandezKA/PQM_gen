LIBRARY ieee;

USE ieee.std_logic_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY GPIO IS
    GENERIC (
        GPIO_widgt : INTEGER := 32
    );
    PORT (
        clk_gpio : IN STD_LOGIC;
        rst_gpio : IN STD_LOGIC;
        gpio_reg : IN STD_LOGIC_VECTOR (GPIO_widgt - 1 DOWNTO 0);
        GPIOA : OUT STD_LOGIC_VECTOR (GPIO_widgt - 1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE behavioral OF GPIO IS

BEGIN
    upd_GPIO : PROCESS (clk_gpio) BEGIN
        IF rising_edge(clk_gpio) THEN
            IF rst_gpio = '1' THEN
                GPIOA <= (OTHERS => '0');
            ELSE
                GPIOA <= gpio_reg;
            END IF;
        END IF;
    END PROCESS upd_GPIO;
END ARCHITECTURE behavioral;