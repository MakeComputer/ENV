library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity IDEXE is
	port(
		clock, reset, pause: in std_logic;

		fromSourceA: in std_logic_vector(1 downto 0);
		sourceA: out std_logic_vector(1 downto 0);
		fromSourceB: in std_logic_vector(1 downto 0);
		sourceB: out std_logic_vector(1 downto 0);
		fromOperation: in std_logic_vector(2 downto 0);
		operation: out std_logic_vector(2 downto 0);

		fromBranch: in std_logic_vector(2 downto 0);
		branch: out in std_logic_vector(2 downto 0);
		
		toRegister: in std_logic_vector(3 downto 0);
		registerSource: out std_logic_vector(3 downto 0);
		
		fromWhere: in std_logic_vector(1 downto 0);
		where: out std_logic_vector(1 downto 0);
		
		fromMemoryRead: in std_logic;
		memoryRead: out std_logic;
		
		fromMemoryWrite: in std_logic;
		memoryWrite: out std_logic;
		
		fromRegisterWrite: in std_logic;
		registerWrite: out std_logic;

		numberA: in std_logic_vector(15 downto 0);
		numberB: in std_logic_vector(15 downto 0);
		dataA: out std_logic_vector(15 downto 0);
		dataB: out std_logic_vector(15 downto 0);
		fromImmediate: in std_logic_vector(15 downto 0);
		immediate: out std_logc_vector(15 downto 0);

		r_x: in std_logic_vector(2 downto 0);
		r_y: in std_logic_vector(2 downto 0);
		r_z: in std_logic_vector(2 downto 0);
		rx: out std_logic_vector(2 downto 0);
		ry: out std_logic_vector(2 downto 0);
		rz: out std_logic_vector(2 downto 0);

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
end IDEXE;

architecture behavior of IDEXE is
begin
	process(clock, reset, pause, fromSourceA, fromSourceB, fromOperation, fromBranch, toRegister, fromWhere, fromMemoryRead, fromMemoryWrite, fromRegisterWrite, numberA, numberB, r_x, r_y, r_z, r_t, r_sp, fromPC, r_a, r_ih, fromImmediate)
	begin
		if reset = '1' then
			sourceA <= "00";
			sourceB <= "00";
			operation <= "000";
			branch <= "000";
			registerSource <= "0000";
			where <= "00";
			memoryRead <= '0';
			memoryWrite <= '0';
			registerWrite <= '0';
			dataA <= "0000000000000000";
			dataB <= "0000000000000000";
			immediate <= "0000000000000000";
			rx <= "000";
			ry <= "000";
			rz <= "000";
			rt <= "0000000000000000";
			sp <= "0000000000000000";;
			pc <= "0000000000000000";
			ra <= "0000000000000000";
			ih <= "0000000000000000";
		elsif clock'event and clock = '1' and pause = '0' then
			sourceA <= fromSourceA;
			sourceB <= fromSourceB;
			operation <= fromOperation;
			branch <= fromBranch;
			registerSource <= toRegister;
			where <= fromWhere;
			memoryRead <= fromMemoryRead;
			memoryWrite <= fromMemoryWrite;
			registerWrite <= fromRegisterWrite;
			dataA <= numberA;
			dataB <= numberB;
			immediate <= fromImmediate;
			rx <= r_x;
			ry <= r_y;
			rz <= r_z;
			rt <= r_t;
			sp <= r_sp;
			pc <= fromPC;
			ra <= r_a;
			ih <= r_ih;
		end if;
	end process;
end behavior;