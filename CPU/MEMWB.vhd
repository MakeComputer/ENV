library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MEMWB is
	port(
		clock, reset, pause: in std_logic;

		numberA: in std_logic_vector(15 downto 0);
		numberB: in std_logic_vector(15 downto 0);
		dataA: out std_logic_vector(15 downto 0);
		dataB: out std_logic_vector(15 downto 0);
		fromImmediate: in std_logic_vector(15 downto 0);
		immediate: out std_logc_vector(15 downto 0);

		fromMemory: in std_logic_vector(15 downto 0);
		memoryData: out std_logic_vector(15 downto 0);
		
		toRegister: in std_logic_vector(3 downto 0);
		registerSource: out std_logic_vector(3 downto 0);
		
		fromRegisterWrite: in std_logic;
		registerWrite: out std_logic;

		result: in std_logic_vector(15 downto 0);
		aluOut: out std_logic_vector(15 downto 0);

		fromDestination: in std_logic_vector(3 downto 0);
		destination: out std_logic_vector(3 downto 0);

		r_t: in std_logic_vector(15 downto 0);
		rt: out std_logic_vector(15 downto 0);
		r_sp: in std_logic_vector(15 downto 0);
		sp: out std_logic_vector(15 downto 0);
		fromPC: in std_logic_vector(15 downto 0);
		pc: out std_logic_vector(15 downto 0);
		r_a: in std_logic_vector(15 downto 0);
		ra: out std_logic_vector(15 downto 0);
		r_ih: in std_logic_vector(15 downto 0);
		ih: out std_logic_vector(15 downto 0)
	);
end MEMWB;

architecture behavior of MEMWB is
begin
	process(clock, reset, pause, toRegister, fromRegisterWrite, result, fromDestination, r_t, r_sp, fromPC, r_a, r_ih, numberA, numberB, fromImmediate)
	begin
		if reset = '1' then
			registerSource <= "0000";
			registerWrite <= '0';
			aluOut <= "0000000000000000";
			destination <= "0000";
			dataA <= "0000000000000000";
			dataB <= "0000000000000000";
			immediate <= "0000000000000000";
			rt <= "0000000000000000";
			sp <= "0000000000000000";;
			pc <= "0000000000000000";
			ra <= "0000000000000000";
			ih <= "0000000000000000";
		elsif clock'event and clock = '1' and pause = '0' then
			registerSource <= toRegister;
			memoryRead <= fromMemoryRead;
			memoryWrite <= fromMemoryWrite;
			registerWrite <= fromRegisterWrite;
			aluOut <= result;
			destination <= fromDestination;
			dataA <= numberA;
			dataB <= numberB;
			immediate <= fromImmediate;
			rt <= r_t;
			sp <= r_sp;
			pc <= fromPC;
			ra <= r_a;
			ih <= r_ih;
		end if;
	end process;
end behavior;