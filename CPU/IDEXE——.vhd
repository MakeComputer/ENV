library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity IDEXE is
	port(
		clock, reset, pause: in std_logic;

		from_alu_rx: in std_logic_vector(2 downto 0);
		alu_rx: out std_logic_vector(2 downto 0);
		from_alu_ry: in std_logic_vector(1 downto 0);
		alu_ry: out std_logic_vector(1 downto 0);
		from_alu_op: in std_logic_vector(2 downto 0);
		alu_op: out std_logic_vector(2 downto 0);
		from_address: std_logic_vector(1 downto 0);
		address: out std_logic_vector(1 downto 0);
		from_goal: in std_logic_vector(2 downto 0);
		goal: out std_logic_vector(2 downto 0);

		fromBranch: in std_logic_vector(2 downto 0);
		branch: out in std_logic_vector(2 downto 0);
		
		from_wb_memory_or_aluout: in std_logic_vector(1 downto 0);
		wb_memory_or_aluout: out std_logic_vector(1 downto 0);
		
		fromWhere: in std_logic;
		where: out std_logic;
		
		fromMemoryRead: in std_logic;
		memoryRead: out std_logic;
		
		fromMemoryWrite: in std_logic;
		memoryWrite: out std_logic;
		
		fromRegisterWrite: in std_logic;
		registerWrite: out std_logic;

		from_readDataA: in std_logic_vector(15 downto 0);
		from_readDataB: in std_logic_vector(15 downto 0);
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
	process(clock, reset, pause, from_alu_rx, from_alu_ry, from_alu_op, fromBranch, from_wb_memory_or_aluout, fromWhere, fromMemoryRead, fromMemoryWrite, fromRegisterWrite, from_readDataA, from_readDataB, r_x, r_y, r_z, r_t, r_sp, fromPC, r_a, r_ih, fromImmediate)
	begin
		if reset = '1' then
			alu_rx <= "000";
			alu_ry <= "00";
			alu_op <= "000";
			branch <= "000";
			wb_memory_or_aluout <= "00";
			where <= '0';
			memoryRead <= '0';
			memoryWrite <= '0';
			registerWrite <= '0';
			goal <= "000";
			address <= "00";
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
			alu_rx <= from_alu_rx;
			alu_ry <= from_alu_ry;
			alu_op <= from_alu_op;
			address <= from_address;
			goal <= from_goal;
			branch <= fromBranch;
			wb_memory_or_aluout <= from_wb_memory_or_aluout;
			where <= fromWhere;
			memoryRead <= fromMemoryRead;
			memoryWrite <= fromMemoryWrite;
			registerWrite <= fromRegisterWrite;
			dataA <= from_readDataA;
			dataB <= from_readDataB;
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