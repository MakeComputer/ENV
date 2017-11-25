library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

use work.utils.all;

entity Computer is
    port (
        clk,rst: in std_logic;

        instruction_memery_data : inout std_logic_vector(15 downto 0);

        instruction_memery_pin: out ram_pin;

        data_memery_data: inout std_logic_vector(15 downto 0);

        data_memery_pin: out ram_pin

  ) ;
end entity ; -- Computer

architecture Computer_beh of Computer is
	
	component InstructionFetch is
        port (
            -- clock
            clk: in std_logic;

            -- pc value in branch instructions
            branch_pc: in std_logic_vector(15 downto 0);

            -- control signals
            pc_select: in std_logic;
            pc_write: in std_logic;
            if_id_write: in std_logic;

            -- stage register outputs
            pc: out std_logic_vector(15 downto 0);
            instruction: out std_logic_vector(15 downto 0);


            -- Device pin
            -- data and address cable of instruction memory
            ram2_data: inout std_logic_vector(15 downto 0);
            ram2_pin: out ram_pin
        );
    end component InstructionFetch;

    --component IFID is

    --end  component IFID;

    component InstructionDecode is
        generic (
            delay: time
        )
        port (
            clk: in std_logic;

        -- IN
            -- From IF stage
            pc: in std_logic_vector(15 downto 0);
            instruction: in std_logic_vector(15 downto 0);

            -- From Hazard control
            bubble_select: in std_logic;

            -- From write back
            register_from_write_back: in std_logic_vector(2 downto 0);
            data_from_write_back: in std_logic_vector(15 downto 0);
            reg_write: in std_logic;

        -- OUT
            -- Register file
            rx, ry, rz: out std_logic_vector(2 downto 0);
            rx_val, ry_val: out std_logic_vector(15 downto 0);
            -- IMM
            immediate: out std_logic_vector(15 downto 0);

            -- Control
            pc_select: out std_logic;
            branch_pc: out std_logic_vector(15 downto 0);

            control_out_ex: out type_control_ex;
            control_out_mem: out type_control_mem;
            control_out_wb: out type_control_wb
        );
    end component InstructionDecode;


    component Execute is
        port (
        -- clock
            clk: in std_logic;

        -- IN
            -- Data (black)
            rx, ry, rz: in std_logic_vector(2 downto 0);
            rx_val, ry_val: in std_logic_vector(15 downto 0);
            immediate: in std_logic_vector(15 downto 0);

            -- Control (blue)
            control_in_ex: in type_control_ex;
            control_in_mem: out type_control_mem;
            control_in_wb: out type_control_wb;

            -- Forwarding data
            forward_data_from_mem: in std_logic_vector(15 downto 0);
            forward_data_from_wb: in std_logic_vector(15 downto 0);
            -- Forwarding control
            forward_control_x: in std_logic_vector(1 downto 0);
            forward_control_y: in std_logic_vector(1 downto 0);

        -- OUT
            -- data
            alu_result: out std_logic_vector(15 downto 0);
            write_data: out std_logic_vector(15 downto 0);
            -- register destination
            id_ex_rd: out std_logic_vector(2 downto 0);
            ex_mem_rd: out std_logic_vector(2 downto 0);

            -- control
            control_out_mem: out type_control_mem;
            control_out_wb: out type_control_wb

        );
    end component Execute;


    --component EXEMEM is

    --end  component EXEMEM;


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

    component mem_wb is
        port(
            clk : in std_logic;
            reset : in std_logic;
            memtoreg_in:in std_logic;
            regwrite_in:in std_logic;
            aluout_in :in std_logic_vector(15 downto 0);
            memout_in :in std_logic_vector(15 downto 0);
            rd_in : in std_logic_vector(3 downto 0);
            
            wbregwrite_out : out std_logic;
            wbadress_out : out std_logic_vector(3 downto 0);
            wbregdata_out : out std_logic_vector(15 downto 0)
        );
    end component;

    --component MEMWB is

    --end  component MEMWB;

    component Forwarding is
        port(
            -- IN
            id_ex_rx: in std_logic_vector(2 downto 0);
            id_ex_ry: in std_logic_vector(2 downto 0);
            ex_mem_rd: in std_logic_vector(2 downto 0);
            mem_wb_rd: in std_logic_vector(2 downto 0);
            control_ex_mem_wb: in type_control_wb;
            control_mem_wb_wb: in type_control_wb;

            -- OUT
            forward_control_x: out std_logic_vector(1 downto 0);
            forward_control_y: out std_logic_vector(1 downto 0)
        );
    end component Forwarding;

    component HazardDetection is
        port(
        -- IN
            if_id_rx: in std_logic_vector(2 downto 0);
            if_id_ry: in std_logic_vector(2 downto 0);
            id_ex_rd: in std_logic_vector(2 downto 0);
            id_ex_control_mem: in type_control_mem;

        -- OUT
            pc_write: out std_logic;
            if_id_write: out std_logic;
            bubble_select: out std_logic
        );
    end component HazardDetection;


begin
    
    --clk_cpu



	
end architecture ; -- Computer_beh