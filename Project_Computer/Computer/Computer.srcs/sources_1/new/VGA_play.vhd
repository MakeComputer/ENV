----------------------------------------------------------------------------------
-- Company: 
-- Engineer: HuangJie.
-- 
-- Create Date:    17:12:10 11/26/2014
-- Design Name: 
-- Module Name:    VGA_play - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following 
--library declaration if instantiating;
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity VGA_play is
	Port(
		-- common port
		CLK_0: in std_logic; -- must 50M
		clkout: out std_logic; -- used to sync
		reset: in std_logic;
		
		-- vga port
--		R: out std_logic_vector(2 downto 0) := "000";
--		G: out std_logic_vector(2 downto 0) := "000";
--		B: out std_logic_vector(2 downto 0) := "000";
        color: out std_logic_vector(7 downto 0);
        color1: out std_logic_vector(7 downto 0);
		Hs: out std_logic := '0';
		Vs: out std_logic := '0';
		de: out std_logic := '0';
		v_clk: out std_logic;
		
		-- fifo memory
		wctrl: in std_logic_vector(0 downto 0); -- 1 is write
		waddr: in std_logic_vector(10 downto 0);
		wdata : in std_logic_vector(7 downto 0)
	);
end VGA_play;

architecture Behavioral of VGA_play is
	signal clk: std_logic; -- div 50M to 25M
	signal vector_x : std_logic_vector(9 downto 0);		--X 10b 640
	signal vector_y : std_logic_vector(8 downto 0);		--Y 9b 480
	signal r0 : std_logic_vector(2 downto 0);
	signal g0 : std_logic_vector(2 downto 0);
	signal b0 : std_logic_vector(1 downto 0);
	signal hs1 : std_logic;
	signal vs1 : std_logic;
	
	component char_mem
		PORT (
			clka : IN STD_LOGIC;
			addra : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
			douta : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
		);
	end component;
	
	component fifo_mem
		PORT (
			-- a for write
			clka : IN STD_LOGIC;

			-- enable, 1 is write signal
			wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
			addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
			dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);

			-- b for read
			clkb : IN STD_LOGIC;
			addrb : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
			doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	end component;
	
	signal char: std_logic_vector(7 downto 0) := "00000000";
	signal pr: STD_LOGIC_VECTOR(0 DOWNTO 0);
	signal char_addr: std_logic_vector(14 downto 0);
	signal caddr: std_logic_vector(10 downto 0);
	
begin

	-- waddr <= "0000000" & KEY16_INPUT(11 downto 8);
	-- wdata <= KEY16_INPUT(7 downto 0);
	
	-- debug code
	-- LED_output <= "0000" & KEY16_INPUT(11 downto 8) & KEY16_INPUT(7 downto 0);
	-- mout <= wctrl(0 downto 0);
	
	-- process(hclk)
	-- begin
		-- if(hclk'event and hclk = '1') then
			-- wctrl(0 downto 0) <= not wctrl(0 downto 0);
		-- end if;
	-- end process;

	-- store char
	ram: char_mem port map(clka => clk, addra => char_addr, douta => pr);
	
	-- display cache
	cache: fifo_mem port map(
		-- a for write
		clka => clk,
		-- enable, 1 is write signal
		
		wea => wctrl,
		addra => waddr,
		dina => wdata,
		-- b for read
		clkb => clk,
		addrb => caddr,
		doutb => char
	);
	
	-- cache addr 5 + 6 = 11
	caddr <= vector_y(8 downto 4) & vector_x(9 downto 4);
	
	-- char acess addr 7 + 4 + 4 = 15
	-- last 2 control the display(x, y)
	-- first char control which char
	char_addr <=  char(6 downto 0) & vector_y(3 downto 0) & vector_x(3 downto 0);

-- -- this is only for debug
-- process(reset, hclk)
-- begin
	-- if reset = '0' then
		-- char <= (others => '0');
	-- elsif hclk'event and hclk = '1' then
		-- char <= char + 1;
	-- end if;
-- end process;

-- 25 MHz Sync

-- 50 MHz -> 25 MHz
process(CLK_0)
begin
	if(CLK_0'event and CLK_0 = '1') then
		clk <= not clk;
		v_clk <= clk;
	end if;
end process;

process(clk, reset)	-- ������������ (800)
begin
	if reset = '1' then
		vector_x <= (others => '0');
	elsif clk'event and clk = '1' then
		if vector_x = 799 then
			vector_x <= (others => '0');
		else
			vector_x <= vector_x + 1;
		end if;
	end if;
end process;

process(clk, reset)	-- ���������� (525)
begin
	if reset = '1' then
		vector_y <= (others => '0');
	elsif clk'event and clk = '1' then
		if vector_x = 799 then
			if vector_y = 524 then
				vector_y <= (others => '0');
			else
				vector_y <= vector_y + 1;
			end if;
		end if;
	end if;
end process;

process(clk, reset) -- ��ͬ���źţ�640+��������16��+96��+48�գ�
begin
	if reset='1' then
		hs1 <= '1';
	elsif clk'event and clk='1' then
		if vector_x >= 656 and vector_x < 752 then
			hs1 <= '0';
		else
			hs1 <= '1';
		end if;
	end if;
end process;

process(clk, reset) -- ��ͬ���źţ�480+��������10��+2��+33�գ�
begin
	if reset = '1' then
		vs1 <= '1';
	elsif clk'event and clk = '1' then
		if vector_y >= 490 and vector_y < 492 then
			vs1 <= '0';
		else
			vs1 <= '1';
		end if;
	end if;
end process;

process(clk, reset)
begin
	if reset = '1' then
		hs <= '0';
		vs <= '0';
	elsif clk'event and clk = '1' then
		hs <= hs1;
		vs <= vs1;
	end if;
end process;

process(reset, clk, vector_x, vector_y) -- X, Y �������
begin
    
	if reset = '1' then
		r0 <= "000";
		g0 <= "000";
		b0 <= "00";
		de <= '0';
		
	elsif clk'event and clk = '1' then
		if vector_x > 639 or vector_y > 479 then
			r0 <= "000";
			g0 <= "000";
			b0 <= "00";
			de <= '0';
		else
		    de <= '1';
			-- play-ground		
			-- play-ground
			
			if pr (0) = '1' then
				r0 <= "111";
				g0 <= "111";
				b0 <= "11";
			else
				r0 <= "000";
				g0 <= "001";
				b0 <= "01";
			end if;
			
			-- play-ground
			-- play-ground
		end if;
	end if;
end process;

process(hs1, vs1, r0, g0, b0) -- ��͵�ɫ�����
begin
	if hs1 = '1' and vs1 = '1' then
	color(7 downto 5) <= r0;
	color(4 downto 2) <= g0;
	color(1 downto 0) <= b0; 
     
        color1 <= "00000010";
	else
		color(7 downto 5) <= "000";
        color(4 downto 2) <= "000";
        color(1 downto 0) <= "00"; 
        color1 <= "00000001";
	end if;
	
	
end process;

end Behavioral;

