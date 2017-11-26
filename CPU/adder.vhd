library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity adder is
	port(
		rx: in std_logic_vector(15 downto 0);
		ra: in std_logic_vector(15 downto 0);
		offset: in std_logic_vector(15 downto 0);
		pc: in std_logic_vector(15 downto 0);

		where: in std_logic_vector(1 downto 0);

		address: out std_logic_vector(15 downto 0)
	);
end adder;

architecture behavior of add is
begin
	process(where)
	begin
		case where is
			when "00" =>
				address <= (offset + pc);
			when "01" =>
				address <= rx;
			when "10" =>
				address <= ra;
			when others =>
				address <= pc;
		end case;
	end process;
end behavior;