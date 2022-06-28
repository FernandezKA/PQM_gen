----------------------------------------------------------------------------------
-- Company: 
-- Engineer: ASG
-- 
-- Create Date: 30.01.2020 17:55:39
-- Design Name: 
-- Module Name: bram_amp_fifo - Behavioral
-- Project Name: Georadar
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

library WORK;
use WORK.mb_pkg.all;

entity bram_amp_fifo is
    Generic (
		mbio_freq : integer := 125000000; 
		amp_gen_freq : integer := 10000 );
		
	Port ( 
		-- memory interface --
        mbio_clk_i              : in  std_logic := '0';
        mbio_rst_i              : in  std_logic := '0';
        mbio_en_i               : in  std_logic := '0';
        mbio_we_i               : in  std_logic_vector(3  downto 0) := (others=>'0');
        mbio_addr_i             : in  std_logic_vector(31 downto 0) := (others=>'0');
        mbio_wdata_i            : in  std_logic_vector(31 downto 0) := (others=>'0');
        mbio_rdata_o            : out std_logic_vector(31 downto 0) := (others=>'0');

        amp_o 					: out STD_LOGIC_VECTOR (15 downto 0);
        pulse_i 				: in STD_LOGIC
		);
end bram_amp_fifo;

architecture Behavioral of bram_amp_fifo is
COMPONENT native_fifo_2Kx16
  PORT (
    clk : IN STD_LOGIC;
    srst : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC
  );
END COMPONENT;

    signal RegOutArray          : TRegArray; -- регистровый файл на запись из процессора
    signal RegInArray           : TRegArray; -- регистровый файл на чтение процессором

    constant BASE_ADDR          : std_logic_vector(REGARRAY_ADDR_SIZE-1 downto 0) := ARM_AXI1_BASEADDR;
    constant HI_ADDR_MASK       : std_logic_vector(REGARRAY_ADDR_SIZE-1 downto 0) := ARM_AXI1_HI_ADDR_MASK;
    constant LO_ADDR_MASK       : std_logic_vector(REGARRAY_ADDR_SIZE-1 downto 0) := ARM_AXI1_LO_ADDR_MASK;
    
	constant rCTRL            	: integer := 0; -- статус и управление
    constant rCOUNT             : integer := 1; -- число элементов в FIFO
	constant rPERIOD			: integer := 2; -- период выдачи данных амплитуды на внешний регистр в дискретах mbio_clk
												-- изменяется только при записи в регистр.
	constant rMEM				: integer := 64; -- начало адресов, с которых всё попадает в fifo

	constant counter_max		: integer := mbio_freq / amp_gen_freq;
	
	constant RegFuncArray       : TRegArray := -- 0 - читаем то, что лежит в RegOutArray, 1 - читаем то, что лежит в RegInArray
    (
        rCTRL                 	=> x"00000001",
        rCOUNT                	=> x"ffffffff",
		rPERIOD					=> x"ffffffff",
		others                  => (others=>'-')
    );
	
	signal clk : std_logic;
	--signal ctrl_en : std_logic := '1'; -- amplitude output enable
	signal ctrl_rst : std_logic := '0'; -- fifo and other chains reset
	
	signal pulse_counter : unsigned(15 downto 0) := (others => '0');
	signal pulse_period : unsigned(15 downto 0) := to_unsigned(counter_max, 16);
	
	signal fifo_full : std_logic := '0'; -- fifo full flag
	signal fifo_wren : std_logic := '0'; -- fifo write enable ctrl
	signal fifo_rden : std_logic := '0'; -- fifo read enable ctrl
	signal fifo_empty : std_logic := '0'; -- fifo empty flag
	--signal fifo_busycount : std_logic_vector(12 downto 0); -- fifo busy counter
	signal fifo_wdata : std_logic_vector (31 downto 0) := (others => '0');
	signal fifo_rdata : std_logic_vector (15 downto 0) := (others => '0');
	
begin	
	    -- REGARRAY WRITE/READ --
    xREGARRAY : entity work.reg_array_v0
    generic map(
        BASE_ADDR       => BASE_ADDR,
        HI_ADDR_MASK    => HI_ADDR_MASK,
        LO_ADDR_MASK    => LO_ADDR_MASK,
        RegFuncArray    => RegFuncArray
    )
    port map(
        clk_i           => mbio_clk_i,
        wdata_i         => mbio_wdata_i,
        rdata_o         => mbio_rdata_o,
        addr_i          => mbio_addr_i,
        we_i            => mbio_we_i(0),
        en_i            => mbio_en_i,
        RegOutArray_o   => RegOutArray,
        RegInArray_i    => RegInArray
    );
	
	-- signal linking
	amp_o <= fifo_rdata;
	-- MEMORY WRITE PROCESS
	fifo_wdata <= mbio_wdata_i;
	
	-- FIFO MAP
	xFIFO : native_fifo_2Kx16
	PORT MAP (
		clk => clk,
		srst => ctrl_rst,
		din => fifo_wdata,
		wr_en => fifo_wren,
		rd_en => fifo_rden,
		dout => fifo_rdata,
		full => fifo_full,
		empty => fifo_empty
	);
	
	-- REGISTERS READ MAP
	--ctrl_en <= RegOutArray(rCTRL)(0); -- module enable
	--ctrl_rst <= RegOutArray(rCTRL)(1); -- reset module
	RegInArray(rCOUNT)(15 downto 0) <= (others => '0');
	RegInArray(rCTRL)(31) <= fifo_full;
	RegInArray(rCTRL)(30) <= fifo_empty;
	RegInArray(rCTRL)(0) <= '0'; -- reset bit return counter to 0 and reset fifo
	
	-- Pulse Generator
	xPULSE_GEN: process(clk) begin
		if rising_edge(clk) then
			fifo_rden <= '0';
			if ctrl_rst = '0' then
				if pulse_counter >= pulse_period then
					pulse_counter <= (others => '0');
					fifo_rden <= '1';
				else
					pulse_counter <= pulse_counter + 1;
				end if;
			else -- reset
				pulse_counter <= (others => '0');
			end if;
		end if;
	end process;
	
	-- ADDITIONAL ACTIVITIES --
    process(clk)
    begin
        if rising_edge(clk) then
			ctrl_rst <= '0';
			fifo_wren <= '0';
            if mbio_en_i = '1' and mbio_we_i(0) = '1' then -- запись
                
                if ((mbio_addr_i and HI_ADDR_MASK) = BASE_ADDR) then
                    if to_integer(unsigned(mbio_addr_i and LO_ADDR_MASK))/4 >= rMEM then -- запись в память fifo
						fifo_wren <= '1'; -- запись с mbio_wdata_i в fifo.
					else -- запись в регистры
						case (to_integer(unsigned(mbio_addr_i and LO_ADDR_MASK))/4) is
							
							when rPERIOD => -- запись периода также сбрасывает fifo
								pulse_period <= unsigned(RegOutArray(rPERIOD)(15 downto 0)); -- pulse period constant
								ctrl_rst <= '1';
							when rCTRL =>
								if mbio_wdata_i(0) = '1' then -- сброс - одиночный ипульс на rst
									ctrl_rst <= '1';
									--RegInArray(rCTRL)(0) <= '0';
								end if;
								
							when others => null;
						end case;
					end if;
				end if;
                
            end if;
            
            if mbio_en_i = '1' and mbio_we_i(0) = '0' then -- чтение
                
                if ((mbio_addr_i and HI_ADDR_MASK) = BASE_ADDR) then
                    case (to_integer(unsigned(mbio_addr_i and LO_ADDR_MASK))/4) is
                        when others => null;
                    end case;
                end if;
                
            end if;
           
        end if;
    end process;




end Behavioral;
