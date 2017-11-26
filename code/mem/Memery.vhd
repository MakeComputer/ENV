----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:52:42 11/29/2014 
-- Design Name: 
-- Module Name:    Memery - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--访存阶段的元件例化



component exe_mem is
    port(
        clk_cpu : in std_logic;
        rst : in std_logic;
        aluout_exe : in std_logic_vector(15 downto 0);
        memwrite_id_exe :in std_logic;
        memread_id_exe : in std_logic;
        out_sw_exe : in std_logic_vector(15 downto 0);
        regwrite_id_exe : in std_logic;
        memtoreg_id_exe : in std_logic;
        rd_id_exe : in std_logic_vector(3 downto 0);
        
        memadress_out : out std_logic_vector(15 downto 0);
        memdata_out : out std_logic_vector(15 downto 0);
        memwrite_out : out std_logic;
        memread_out:out std_logic;
        memtoreg_out : out std_logic;
        regwrite_out :out std_logic;
        aluout_out : out std_logic_vector(15 downto 0);
        rd_out : out std_logic_vector(3 downto 0)
    );
end component;

COMPONENT MemoryBlock
    port( 
            Block_clk:in STD_LOGIC; --脉冲信号,注意这里的时钟信号比较捉鸡
            Block_rst:in STD_LOGIC; --复位信号
            Block_address:in STD_LOGIC_VECTOR(15 downto 0); --要写入/读取的16位内存地址
            Block_data:in STD_LOGIC_VECTOR(15 downto 0); --输入的要写的数据
            Block_MemRead:in STD_LOGIC;
            Block_MemWrite:in STD_LOGIC;
            Block_MemOut:out STD_LOGIC_VECTOR(15 downto 0);
            
            tsre : in STD_LOGIC;
            tbre : in STD_LOGIC;
            wrn : out STD_LOGIC;
            rdn : out STD_LOGIC;
            dataready : in std_logic;
            MemData1:inout STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000"; --从内存中读取数据进该元件RAM2存数据
            MemAddr1:out STD_LOGIC_VECTOR(17 downto 0) := "000000000000000000"; --输入到RAM2的内存地址
            oe1,we1:out STD_LOGIC := '1';--RAM1和RAM2的使能信号.RAM1存指令，RAM2存数据
            en1:out STD_LOGIC := '1'--初始使能为1
            );
END COMPONENT;




begin
    ----访存
end Behavioral;

