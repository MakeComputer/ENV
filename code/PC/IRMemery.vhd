----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:45:45 12/03/2014 
-- Design Name: 
-- Module Name:    IRMemory - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--这个专门用于加载Flash以及取指令

entity IRMemory is
			port( 
			clk:in STD_LOGIC; --脉冲信号,注意这里的时钟信号比较捉鸡
			rst:in STD_LOGIC; --复位信号
			address:in STD_LOGIC_VECTOR(15 downto 0); --要读取的16位内存地址
			--Op:in STD_LOGIC; --操作类型，0表示读，否则什么都不做
			
			MemData1:inout STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000"; --从内存中读取指令进该元件 RAM1存指令
			MemAddr1:out STD_LOGIC_VECTOR(17 downto 0) := "000000000000000000"; --输入到RAM1的内存地址 RAM1存放地址
			
			MemOut:out STD_LOGIC_VECTOR(15 downto 0):="0000100000000000"; --把数据输出给其他元件
			
			oe1,we1:out STD_LOGIC := '1';--RAM1的使能信号.RAM1存指令
			en1:out STD_LOGIC := '1';--初始使能为1
			
			loadfinish:out STD_LOGIC := '0'; --flash加载完成信号
			
			--stateout:out STD_LOGIC_VECTOR(6 downto 0) := "0000000";--测试用输出
			
			rdn:out STD_LOGIC := '1';  --串口使能信号，置为1，关闭串口
			wrn:out STD_LOGIC := '1'; --串口写信号，置为1，关闭串口
			---------------------------------------------------
			--Flash的相关信号
			flash_byte : out STD_LOGIC := '1'; --操作模式,采用字模式
			flash_vpen : out STD_LOGIC := '1'; --写保护，置为1
			flash_ce : out STD_LOGIC := '0' ; --使能信号,该模块只负责flash的读，故ce置为0即可
			flash_oe : out STD_LOGIC := '1'; --读使能
			flash_we : out STD_LOGIC := '1'; --写使能
			flash_rp : out STD_LOGIC := '1'; --工作模式，1为工作
			flash_addr : out STD_LOGIC_VECTOR( 22 downto 1 ) := "0000000000000000000000"; --flash内存地址
			flash_data : inout STD_LOGIC_VECTOR( 15 downto 0 ) --flash输出信号
			);
end IRMemory;

architecture Behavioral of IRMemory is
-------------------------------------
	-- 状态标记
	type state_type is (
		BOOT_START1, --加载监控程序起始状态，尚未加载完成
		BOOT_START2,
		BOOT_START3,
		BOOT_ADDRREADY,--准备Flash读取地址
		BOOT_DATAREAD,--Flash读取
		BOOT_WRAM,--把从Flash中读出的指令写到RAM1
		Mem_START,--监控程序加载完毕，Mem进入起始状态
		Mem_WAIT--启动完毕，等待访存指令
	);
	SHARED VARIABLE state : state_type := BOOT_START1;--起始为加载监控程序状态
	SHARED VARIABLE taddr : STD_LOGIC_VECTOR( 22 downto 1 ) := "0000000000000000000000";
	SHARED VARIABLE tdata : STD_LOGIC_VECTOR( 15 downto 0 ) := "0000000000000000";
	SHARED VARIABLE Mem_State : STD_LOGIC_VECTOR(1 downto 0) := "00"; --CPU控制的内存读写的状态
	
begin
	process(clk,rst)
		begin
		if (rst = '0') then--清空所有信号
			state := BOOT_START1;
			oe1 <= '1';
			we1 <= '1';
			en1 <= '1';
			rdn <= '1';
			wrn <= '1';
			flash_byte <= '1'; --操作模式,采用字模式
			flash_vpen <= '1'; --写保护，置为1
			flash_ce <= '0' ; --使能信号,该模块只负责flash的读，故ce置为0即可
			flash_rp <= '1'; --工作模式，1为工作
			taddr := "0000000000000000000000";
			tdata := "0000000000000000";
			MemOut <= "0000100000000000"; 
		else
			if clk'event and clk='1' then
				case state is
					when BOOT_START1 => --引导起始状态1,设置flash写使能
						flash_we <= '0';
						state := BOOT_START2;
					when BOOT_START2 =>--引导起始状态2,切换Flash为读模式，设置模式数据
						flash_data <= x"00FF";
						state := BOOT_START3;
					when BOOT_START3 =>--引导起始状态3，写入模式数据
						flash_we <= '1';
						state := BOOT_ADDRREADY;
					when BOOT_ADDRREADY =>--准备Flash读取数据地址
						flash_addr <= taddr; --从0地址开始读取
						flash_oe <= '0'; --开启读使能
						we1 <= '1'; --RAM1写使能置为1
						en1 <= '0'; --RAM1使能开启
						flash_data <= "ZZZZZZZZZZZZZZZZ"; --数据线设为高阻
						state := BOOT_DATAREAD;
					when BOOT_DATAREAD => --读取Flash数据并准备写指令到RAM1的地址和数据
						tdata := flash_data;--变量赋值是立即生效滴！
						flash_oe <= '1';
						MemAddr1 <= taddr(18 downto 1);
						MemData1 <= tdata;
						--Memout <= tdata;
						en1 <= '0';
						state := BOOT_WRAM;
					when BOOT_WRAM => --将flash中读取的指令写到内存中
						we1 <= '0';--拉低写信号
						taddr := taddr + '1';
						if( taddr( 12 downto 1) = x"0012") then --监控程序加载完毕
							state := Mem_START;
						else
							state := BOOT_ADDRREADY;
						end if;
					--------------------------------------监控程序加载完毕
					when Mem_START=> --Mem起始状态，把Flash置为关闭状态，Mem设为为起始状态
							oe1 <= '1';
							we1 <= '1';
							en1 <= '0'; --RAM1使能开启
							rdn <= '1';
							wrn <= '1';
							flash_oe <= '1';--关闭flash读信号
							Mem_State := "00";
							state := Mem_WAIT;
					when Mem_WAIT => --执行CPU发出的访存指令,注这个元件例化只能是从RAM1读取指令
						if op = '0' then --读内存
							case Mem_State is
								when "00"=>--准备地址，数据线设为高阻
									MemAddr1 <= "00" & address;
									MemData1 <= "ZZZZZZZZZZZZZZZZ";
									oe1 <= '0';--拉低读信号
									Mem_State := "01";
								when "01"=>--读出数据，拉高读信号
									MemOut <= MemData1;
									oe1 <= '1';
									Mem_State := "00";
								when others=>
									Mem_State := "00";
							end case;																											
						end if;
												
					when others =>
						state := BOOT_START1;--重启
				end case;			
			end if;
			
		end if;
		--调试输出
		--case state is
		--	when BOOT_START1=> stateout <= "1111110";--0
		--	when BOOT_START2=> stateout <= "0110000";--1
		--	when BOOT_START3=> stateout <= "1101101";--2
		--	when BOOT_ADDRREADY=> stateout <= "1111001";--3
		--	when BOOT_DATAREAD=> stateout <= "0110011";--4
		--	when BOOT_WRAM=> stateout <= "1011011";--5
		--	when Mem_START=> stateout <= "1011111";--6
		--	when Mem_WAIT=>
		--		case Mem_State is
		--			when "00" =>
		--				stateout <= "1111110";--0
		--			when "01" =>
		--				stateout <= "0110000";--1
		--			when others=>
		--				stateout <= "0000000";--8
		--		end case;
		--	when others=> stateout <= "0000000";--8
		--end case;
		if state = Mem_WAIT then
			loadfinish <= '1';
		else
			loadfinish <= '0';
		end if;
			

	end process;
	

end Behavioral;


