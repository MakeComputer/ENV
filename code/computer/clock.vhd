library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity clock is
  port (
	clk_in: in STD_LOGIC;
	clk_cpu: out STD_LOGIC;
	clk_mem: out STD_LOGIC
  ) ;
end entity ; -- clock

architecture arch of clock is

	signal clk_1: STD_LOGIC;
	signal clk_2: STD_LOGIC;

begin
	clk_mem: process( clk_in )
	begin
		clk_mem <= not clk_mem;
	end process ; -- clk_div_2


	mem_div2 : process( clk_mem )
	begin
		if (clk_mem'event and clk_mem = 1) then
			
			clk_2 <= not clk_2
		end if ;
	end process ; -- clk_cpu


	mem_div4 : process( clk_2 )
	begin
		if (clk_2'event and clk_2 = 1) then
		
			clk_cpu <= not clk_cpu
		end if ;
	end process ; -- cpu_div4

end architecture ; -- arch