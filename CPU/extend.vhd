library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity extend is
	port(
		extension: in std_logic_vector(2 downto 0);
		number: in std_logic_vector(15 downto 0);
		immediarte: out std_logic_vector(15 downto 0)
	);
end extend;

architecture behavior of extend is
begin
	process(extension, number)
		case extension is
			when "000" =>
				if number(7) = '0' then
					immediate <= "00000000" & number(7 downto 0);
				else
					immediate <= "11111111" & number(7 downto 0);
				end if;
			when "001" =>
				if number(3) = '0' then
					immediate <= "000000000000" & number(3 downto 0);
				else
					immediate <= "111111111111" & number(3 downto 0);
				end if;
			when "010" =>
				if number(10) = '0' then
					immediate <= "0000" & number(10 downto 0);
				else
					immediate <= "1111" & number(10 downto 0);
				end if;
			when "110" =>
				immediate <= "00000000" & number(7 downto 0);
			when "100" =>
				if immediate(4) = '0' then
					immediate <= "00000000000" & number(4 downto 0);
				else
					immediate <= "11111111111" & number(4 downto 0);
				end if;
			when "101" =>
				immediate <= "0000000000000" & number(4 downto 2);
			when others =>
				immediate <= "0000000000000000";
		end case;
	end process;
end behavior;