library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity goalRegister is
	port(
		instruction: in std_logic_vector(15 downto 0);
		fromDestination: in std_logic_vector(2 downto 0);
		destination: out std_logic_vector(3 downto 0)
	);
end goalRegister;

architecture behavior of goalRegister is
begin
	process(instruction, fromDestination)
	begin
		case fromDestinaiton is
			when "000" =>                                  --R[x]
				destination <= "0" & instruction(10 downto 8);
			when "001" =>                                  --R[y]
				destination <= "0" & instruction(7 downto 5);
			when "010" =>                                  --R[z]
				destination <= "0" & instruction(4 downto 2);
			when "011" =>                                  --SP
				destination <= "1000";
			when "100" =>                                  --RA
				destination <= "1001";
			when "101" =>                                  --IH
				destination <= "1010";
			when "110" =>                                  --T
				destination <= "1011"                      
			when others =>
				destination <= "0000";
		end case;
	end process;
end behavior;