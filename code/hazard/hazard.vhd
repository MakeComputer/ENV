library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity hazard is
	port(
		memoryRead: in std_logic;
		goal: in std_logic_vector(3 downto 0);
		instruction: in std_logic_vector(15 downto 0);
		
		pause: out std_logic;
		bubble: out std_logic
	);
end entity;

architecture behavior of hazard is
begin
	process(memoryRead, goal, instruction)
	begin
		if memoryRead = '1' and 
			(goal = ("0" & instruction(10 downto 8)) or (goal = ("0" & instruction(7 downto 5)) )) then
			pause = '1';
			bubble = '1';
		else
			pause = '0';
			bubble = '0';
		end if;
	end process;
end behavior;

