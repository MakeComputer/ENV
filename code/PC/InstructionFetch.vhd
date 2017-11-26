library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity InstructionFetch is
    Port( 
			rst : in STD_LOGIC;
			clk : in STD_LOGIC;
			PC_in : in  STD_LOGIC_VECTOR (15 downto 0);
			Instruction_in : in  STD_LOGIC_VECTOR (15 downto 0);

			Instruction_out : out  STD_LOGIC_VECTOR (15 downto 0);
			PC_out : out STD_LOGIC_VECTOR (15 downto 0);
			PC_out_Add1:out std_logic_vector(15 downto 0)
		);
end InstructionFetch;

architecture Behavioral of InstructionFetch is
		signal Instruction_temp : STD_LOGIC_VECTOR (15 downto 0);
		signal PC_temp : std_logic_vector (15 downto 0);
		signal PC_Add1_temp : std_logic_vector (15 downto 0);

begin
	process(clk, rst)
	begin
		if (rst = '0') then
			PC_temp <= (Others => '0');
			PC_Add1_temp <= (Others => '0');
			Instruction_temp <= (Others => '0');
		elsif(clk'event and clk='1') then
			PC_temp<=PC_in;
			PC_Add1_temp<=PC_in + 1;
			Instruction_temp<=Instruction_in;
		end if;
	end process;
	PC_out<=PC_temp;
	PC_out_Add1<=PC_Add1_temp;
	Instruction_out<=Instruction_temp;

end Behavioral;

