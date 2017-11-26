library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity forward is
	port(
		exe_alu_rx: in std_logic_vector(2 downto 0);
		exe_alu_ry: in std_logic_vector(1 downto 0);
		exe_select_address: in std_logic_vector(1 downto 0);
		
		rx: in std_logic_vector(2 downto 0);
		ry: in std_logic_vector(2 downto 0);
		
		address_memory: in std_logic_vector(3 downto 0);
		mem_registerWrite: in std_logic;
		mem_aluout: in std_logic_vector(15 downto 0);
		
		address_wb: in std_logic_vector(3 downto 0);
		wb_registerWrite: in std_logic;
		wb_toRegister: in std_logic_vector(15 downto 0);
		
		from_forward_datax: out std_logic;
		from_forward_datay: out std_logic;
		from_forward_address: out std_logic;
		
		forward_data: out std_logic_vector(15 downto 0)
		
	);
end forward;

architecture behavior of forward is
begin
	process(exe_alu_rx,exe_alu_ry,exe_select_address)
	begin
		if mem_registerWrite = '1' and 
			((exe_alu_rx = "000" and ("0" & rx) = address_memory) or  
			(exe_alu_rx = "001" and ("0" & ry) = address_memory) or
			(exe_alu_rx = "010" and address_memory = "1000") or
			(exe_alu_rx = "100" and address_memory = "1001") or
			(exe_alu_rx = "101" and address_memory = "1010") or
			(exe_alu_rx = "110" and address_memory = "1011")) then
			from_forward_datax <= '1';
			forward_data <= mem_aluout;
		end if;
		
		if mem_registerWrite = '1' and 
			((exe_alu_ry = "10" and ("0" & rx) = address_memory) or  
			(exe_alu_rx = "01" and ("0" & ry) = address_memory)) then
			from_forward_datay <= '1';
			forward_data <= mem_aluout;
		end if;
		
		if mem_registerWrite = '1' and 
			((exe_select_address = "10" and address_memory = "1001") or 
			(exe_select_address = "01" and ("0" & rx) = address_memory)) then
			from_forward_address <= '1';
			forward_data <= mem_aluout;
		end if;
		
		if wb_registerWrite = '1' and address_memory /= address_wb and
			((exe_alu_rx = "000" and ("0" & rx) = address_wb) or  
			(exe_alu_rx = "001" and ("0" & ry) = address_wb) or
			(exe_alu_rx = "010" and address_wb = "1000") or
			(exe_alu_rx = "100" and address_wb = "1001") or
			(exe_alu_rx = "101" and address_wb = "1010") or
			(exe_alu_rx = "110" and address_wb= "1011")) then
			from_forward_datax <= '1';
			forward_data <= wb_toRegister;
		end if;
		
		if wb_registerWrite = '1' and address_memory /= address_wb and
			((exe_alu_ry = "10" and ("0" & rx) = address_wb) or  
			(exe_alu_rx = "01" and ("0" & ry) = address_wb)) then
			from_forward_datay <= '1';
			forward_data <= wb_toRegister;
		end if;
		
		if wb_registerWrite = '1' and address_memory /= address_wb and
			((exe_select_address = "10" and address_wb = "1001") or 
			(exe_select_address = "01" and ("0" & rx) = address_wb)) then
			from_forward_address <= '1';
			forward_data <= wb_toRegister;
		end if;
		
	end process;
end behavior;
	