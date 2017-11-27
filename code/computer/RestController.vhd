library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity RestController is
  port (
	reset_in: in STD_LOGIC;
	load_finsh: in STD_LOGIC;
	reset_out: out STD_LOGIC
  ) ;
end entity ; -- RestController

architecture arch of RestController is
begin
	return_reset : process( reset_in,load_finsh )
	begin
		reset_out <= (not(load_finsh) or reset_in);
	end process ; -- return_reset
end architecture ; -- arch