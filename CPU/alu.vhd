library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity alu is
	port(
		rx: in std_logic_vector(15 downto 0);
		ry: in std_logic_vector(15 downto 0);
		immediate: in std_logic_vector(15 downto 0);
		sp: in std_logic_vector(15 downto 0);
		pc: in std_logic_vector(15 downto 0);

		numberA: in std_logic_vector(1 downto 0);
		numberB: in std_logic_vector(1 downto 0);
		how: in std_logic_vector(2 downto 0);

		result: out std_logic_vector(15 downto 0)
	);
end alu;

architecture behavior of alu is
signal inputA: std_logic_vector(15 downto 0);
signal inputB: std_logic_vector(15 downto 0);
begin
	process(numberA, numberB)
	begin
		case numberA is
			when "00" =>
				inputA <= rx;
			when "01" =>
				inputA <= ry;
			when "10" =>
				inputA <= sp;
			when "11" =>
				inputA <= pc;
			when others =>
				inputA <= "0000000000000000";
		end case;

		case numberB is
			when "00" =>
				inputB <= immediate;
			when "01" =>
				inputB <= ry;
			when "10" =>
				inputB <= rx;
			when others =>
				inputB <= "0000000000000000";
		end case;
	end process;

	process(inputA, inputB, how)
	begin
		case how is
			when "000" =>
				result <= (inputA + inputB);
			when "001" =>
				result <= (inputA - inputB);
			when "010" =>
				result <= (inputA and inputB);
			when "011" =>
				result <= (inputA or inputB);
			when "100" =>
				if (inputB = X"0000") then
					result <= to_stdlogicvector((to_bitvector(InputA)) sll 8);
				else
					result <= to_stdlogicvector((to_bitvector(InputA)) sll (conv_integer(InputB)));
				end if;
			when "101" =>
				if (inputB = X"0000") then
					result <= to_stdlogicvector((to_bitvector(InputA)) sra 8);
				else
					result <= to_stdlogicvector((to_bitvector(InputA)) sra (conv_integer(InputB)));
				end if;
			when "110" =>
				result <= to_stdlogicvector((to_bitvector(InputA)) sll (conv_integer(InputB)));
			when others =>
				result <= "0000000000000000";
 		end case;
	end process;
end behavior;