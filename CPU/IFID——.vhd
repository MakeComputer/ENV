library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity IFID is 
	port(
		clock, reset, pause: in std_logic;
		fromPC: in std_logic_vector(15 downto 0);
		pc: out std_logic_vector(15 downto 0);
		fromIM: in std_logic_vector(15 downto 0);
		instruction: out std_logic_vector(15 downto 0)
	);
end IFID;

architechture bahavior of IFID is
begin
	process(reset, clock, pause, fromPC, fromIM)
	begin
		if reset = '1' then
			pc <= "0000000000000000";
			instruction <= "0000000000000000";
		elsif clock'event and clock = '1' and pause = '0' then
			pc <= fromPC;
			instruction <= fromIM;
		end if;
	end process;
end behavior;

