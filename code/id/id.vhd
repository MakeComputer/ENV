library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity id is
	port(
		clock, reset, pause, flush: in std_logic;
		jump, bubble: in std_logic;
		instruction: in std_logic_vector(15 downto 0);
		fromPC: in std_logic_vector(15 downto 0);
		
		write_register: in std_logic;
		writeData: in std_logic_vector(15 downto 0);
		writeAddress: in std_logic_vector(3 downto 0);
	
		memoryRead: out std_logic;
		memoryWrite: out std_logic;
		registerWrite: out std_logic;
		where: out std_logic;
		wb_memory_or_alu_out: out std_logic_vector(1 downto 0);
		branch: out std_logic_vector(2 downto 0);
		
		pc: out std_logic_vector(15 downto 0);
		
		immediate: out std_logic_vector(15 downto 0);
		rx: out std_logic_vector(15 downto 0);
		ry: out std_logic_vector(15 downto 0);
		sp: out std_logic_vector(15 downto 0);
		ra: out std_logic_vector(15 downto 0);
		ih: out std_logic_vector(15 downto 0);
		t: out std_logic_vector(15 downto 0);
		
		exe_alu_op: out std_logic_vector(2 downto 0);
		exe_alu_rx: out std_logic_vector(2 downto 0);
		exe_alu_ry: out std_logic_vector(1 downto 0);
		exe_address: out std_logic_vector(1 downto 0);
		exe_select_goal: out std_logic_vector(2 downto 0);
		r_x: out std_logic_vector(2 downto 0);
		r_y: out std_logic_vector(2 downto 0);
		r_z: out std_logic_vector(2 downto 0)
		
	);
end id;

architecture behavior of id is

component decoder 
	port(
		instruction: in std_logic_vector(15 downto 0);
	
		extension: out std_logic_vector(2 downto 0);                                  
		branch: out std_logic_vector(2 downto 0);
		wb_memory_or_alu_out: out std_logic_vector(1 downto 0);
		exe_select_goal: out std_logic_vector(2 downto 0);
		exe_alu_op: out std_logic_vector(2 downto 0);
		exe_address: out std_logic_vector(1 downto 0);
		exe_alu_rx: out std_logic_vector(2 downto 0);
		exe_alu_ry: out std_logic_vector(1 downto 0);

		memoryWrite: out std_logic;
		where: out std_logic;

		memoryRead: out std_logic;
		registerWrite: out std_logic
	);
end component;

component extend
	port(
		extension: in std_logic_vector(2 downto 0);
		number: in std_logic_vector(15 downto 0);
		immediate: out std_logic_vector(15 downto 0)
	);
end component;

component mux_control
	port(
		jump: in std_logic;
		bubble: in std_logic;
		
		fromMemoryRead: in std_logic;
		fromMemoryWrite: in std_logic;
		fromRegisterWrite: in std_logic;
		fromWhere: in std_logic;
		fromGoal: in std_logic_vector(2 downto 0);
		from_wb_memory_or_aluout: in std_logic_vector(1 downto 0);
		fromBranch: in std_logic_vector(2 downto 0);
		from_alu_op: in std_logic_vector(2 downto 0);
		from_alu_rx: in std_logic_vector(2 downto 0);
		from_alu_ry: in std_logic_vector(1 downto 0);
		from_address: in std_logic_vector(1 downto 0);
		
		MemoryRead: out std_logic;
		MemoryWrite: out std_logic;
		RegisterWrite: out std_logic;
		Where: out std_logic;
		Goal: out std_logic_vector(2 downto 0);
		wb_memory_or_aluout: out std_logic_vector(1 downto 0);
		Branch: out std_logic_vector(2 downto 0);
		alu_op: out std_logic_vector(2 downto 0);
		alu_rx: out std_logic_vector(2 downto 0);
		alu_ry: out std_logic_vector(1 downto 0);
		address: out std_logic_vector(1 downto 0)
	);
end component;

component heap
	port(
		reset, clock: in std_logic;
		writeRegister: in std_logic;
		readAddressA: in std_logic_vector(3 downto 0);
		readAddressB: in std_logic_vector(3 downto 0);
		readDataA: out std_logic_vector(15 downto 0);
		readDataB: out std_logic_vector(15 downto 0);

		writeAddress: in std_logic_vector(3 downto 0);
		writeData: in std_logic_vector(15 downto 0);

		SP: out std_logic_vector(15 downto 0);
		RA: out std_logic_vector(15 downto 0);
		IH: out std_logic_vector(15 downto 0);
		T: out std_logic_vector(15 downto 0) 
	);
end component;

signal s_instruction: std_logic_vector(15 downto 0);
signal s_extension: std_logic_vector(2 downto 0);
signal s_immediate: std_logic_vector(15 downto 0);

signal s_addressA: std_logic_vector(3 downto 0);
signal s_addressB: std_logic_vector(3 downto 0);
signal s_dataA: std_logic_vector(15 downto 0);
signal s_dataB: std_logic_vector(15 downto 0);
signal s_write_register: std_logic;
signal s_write_data: std_logic_vector(15 downto 0);
signal s_write_address: std_logic_vector(3 downto 0);
signal s_sp: std_logic_vector(15 downto 0);
signal s_ra: std_logic_vector(15 downto 0);
signal s_ih: std_logic_vector(15 downto 0);
signal s_t: std_logic_vector(15 downto 0);

signal s_branch: std_logic_vector(2 downto 0);
signal s_wb_memory_or_aluout: std_logic_vector(1 downto 0);
signal s_select_goal: std_logic_vector(2 downto 0);
signal s_alu_op: std_logic_vector(2 downto 0);
signal s_alu_rx: std_logic_vector(2 downto 0);
signal s_alu_ry: std_logic_vector(1 downto 0);
signal s_address_select: std_logic_vector(1 downto 0);
signal s_where: std_logic;
signal s_memoryRead: std_logic;
signal s_memoryWrite: std_logic;
signal s_registerWrite: std_logic;

signal s_from_pc: std_logic_vector(15 downto 0);
signal s_from_branch: std_logic_vector(2 downto 0);
signal s_from_wb_memory_or_aluout: std_logic_vector(1 downto 0);
signal s_from_select_goal: std_logic_vector(2 downto 0);
signal s_from_alu_op: std_logic_vector(2 downto 0);
signal s_from_alu_rx: std_logic_vector(2 downto 0);
signal s_from_alu_ry: std_logic_vector(1 downto 0);
signal s_from_address_select: std_logic_vector(1 downto 0);
signal s_from_where: std_logic;
signal s_from_memoryRead: std_logic;
signal s_from_memoryWrite: std_logic;
signal s_from_registerWrite: std_logic;

signal s_jump: std_logic;
signal s_bubble: std_logic;

begin
	decoder_instance: decoder port map(
		instruction => s_instruction,
		extension => s_extension,                                  
		branch => s_from_branch,
		wb_memory_or_alu_out => s_from_wb_memory_or_aluout,
		exe_select_goal => s_from_select_goal,
		exe_alu_op => s_from_alu_op,
		exe_address => s_from_address_select,
		exe_alu_rx => s_from_alu_rx,
		exe_alu_ry => s_from_alu_ry,

		memoryWrite => s_from_memoryWrite,
		where => s_from_where,

		memoryRead => s_from_memoryRead,
		registerWrite => s_from_registerWrite
	);
	
	mux_control_instance: mux_control port map(
		jump => s_jump,
		bubble => s_bubble,
		
		fromMemoryRead => s_from_memoryRead,
		fromMemoryWrite => s_from_memoryWrite,
		fromRegisterWrite => s_from_registerWrite,
		fromWhere => s_from_where,
		fromGoal => s_from_select_goal,
		from_wb_memory_or_aluout => s_from_wb_memory_or_aluout,
		fromBranch => s_from_branch,
		from_alu_op => s_from_alu_op,
		from_alu_rx => s_from_alu_rx,
		from_alu_ry => s_from_alu_ry,
		from_address => s_from_address_select,
		
		MemoryRead => s_memoryRead,
		MemoryWrite => s_memoryWrite,
		RegisterWrite => s_registerWrite,
		Where => s_where,
		Goal => s_select_goal,
		wb_memory_or_aluout => s_wb_memory_or_aluout,
		Branch => s_branch,
		alu_op => s_alu_op,
		alu_rx => s_alu_rx,
		alu_ry => s_alu_ry,
		address => s_address_select
	);
	
	heap_instance: heap port map(
		reset => reset,
		clock => clock,
		writeRegister => s_write_register,
		readAddressA => s_instruction(10 downto 8),
		readAddressB => s_instruction(7 downto 5),
		readDataA => s_dataA,
		readDataB => s_dataB,

		writeAddress => s_write_address,
		writeData => s_write_data,

		SP => s_sp,
		RA => s_ra,
		IH => s_ih,
		T => s_t
	);
	
	extend_instance: extend port map(
		extension => s_extension,
		number => s_instruction,
		immediate => s_immediate
	);
	
	s_jump <= jump;
	s_bubble <= bubble;

	s_write_register <= write_register;
	s_write_address <= writeAddress;
	s_write_data <= writeData;
	
	r_x <= s_instruction(10 downto 8);
	r_y <= s_instruction(7 downto 5);
	r_z <= s_instruction(4 downto 2);
	
	pc <= s_from_pc;
	rx <= s_dataA;
	ry <= s_dataB;
	sp <= s_sp;
	ra <= s_ra;
	ih <= s_ih;
	t <= s_t;
	immediate <= s_immediate;
	
	memoryRead <= s_memoryRead;
	memoryWrite <= s_memoryWrite;
	registerWrite <= s_registerWrite;
	where <= s_where;
	wb_memory_or_alu_out <= s_wb_memory_or_aluout;
	branch <= s_branch;
	exe_alu_op <= s_alu_op;
	exe_alu_rx <= s_alu_rx;
	exe_alu_ry <= s_alu_ry;
	exe_address <= s_address_select;
	exe_select_goal <= s_select_goal;
	
	
	process(reset, clock, pause)
	begin
		
		if reset = '1' or flush = '1' then
			s_instruction <= "0000000000000000";
			s_from_pc <= "0000000000000000";
		elsif clock'event and clock = '1' and pause = '0' then
			s_instruction <= instruction;
			s_from_pc <= fromPC+"0000000000000001";
		end if;
	end process;

end behavior;