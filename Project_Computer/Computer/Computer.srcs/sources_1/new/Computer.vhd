----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2017/11/27 22:24:22
-- Design Name: 
-- Module Name: Computer - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Computer is
    port (
        clk_in,rst: in std_logic;
        leds: out std_logic_vector(15 downto 0);
        
        -- vga port
--        R: out std_logic_vector(2 downto 0) := "000";
--        G: out std_logic_vector(2 downto 0) := "000";
--        B: out std_logic_vector(1 downto 0) := "00";
        video_color: out std_logic_vector(7 downto 0);
--        leds:  out std_logic_vector(7 downto 0);
        Hs: out std_logic := '0';
        Vs: out std_logic := '0';
        video_clk: out std_logic;
        video_de: out std_logic := '0';
        
            
        MemData1:inout STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000"; 
        MemAddr1:out STD_LOGIC_VECTOR(17 downto 0) := "000000000000000000";     
        oe1,we1:out STD_LOGIC := '1';
        en1:out STD_LOGIC := '1';
        MemData2:inout STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000"; 
        MemAddr2:out STD_LOGIC_VECTOR(17 downto 0) := "000000000000000000"; 
        oe2,we2:out STD_LOGIC := '1';
        en2:out STD_LOGIC := '1';   
        --chuan kou 
        rdn:out STD_LOGIC := '1';
        wrn:out STD_LOGIC := '1'; 
        tsre : in STD_LOGIC;
        tbre : in STD_LOGIC;
        dataready : in std_logic;
        --FLASH
        flash_byte : out STD_LOGIC := '1'; --操作模式,采用字模式
        flash_vpen : out STD_LOGIC := '1'; --写保护，置为1
        flash_ce : out STD_LOGIC := '0' ; --使能信号,该模块只负责flash的读，故ce置为0即可
        flash_oe : out STD_LOGIC := '1'; --读使能
        flash_we : out STD_LOGIC := '1'; --写使能
        flash_rp : out STD_LOGIC := '1'; --工作模式，1为工作
        flash_addr : out STD_LOGIC_VECTOR( 22 downto 1 ) := "0000000000000000000000"; --flash内存地址
        flash_data : inout STD_LOGIC_VECTOR( 15 downto 0 )--flash输出信号
 

  ) ;
end entity ; -- Computer

architecture Computer_beh of Computer is
    

    ---- IF begin
    --component InstructionFetch is
 --       port (
 --           rst : in STD_LOGIC;
 --           clk : in STD_LOGIC;
 --           PC_in : in  STD_LOGIC_VECTOR (15 downto 0);
 --           Instruction_in : in  STD_LOGIC_VECTOR (15 downto 0);

 --           Instruction_out : out  STD_LOGIC_VECTOR (15 downto 0);
 --           PC_out : out STD_LOGIC_VECTOR (15 downto 0);
 --           PC_out_Add1:out std_logic_vector(15 downto 0)
 --       );
 --   end component InstructionFetch;

    component   PCAdder is    
        port( 
                adderIn : in std_logic_vector(15 downto 0);
                adderOut : out std_logic_vector(15 downto 0)
            );
    end component PCAdder;

    component PCMux is
    port( 
            branch : in std_logic;
            PCNext : in std_logic_vector(15 downto 0);
            PCJump : in std_logic_vector(15 downto 0);          
            PCOut : out std_logic_vector(15 downto 0)
        );
    end component PCMux;

    component PCRegister is
    port(   
            rst,clk : in std_logic;
            PCHold : in std_logic;
            PCIn : in std_logic_vector(15 downto 0);
            PCOut : out std_logic_vector(15 downto 0)
        );
    end component PCRegister;


    --component IRMemory is
    --        port( 
    --        clk:in STD_LOGIC; --脉冲信号,注意这里的时钟信号比较捉鸡
    --        rst:in STD_LOGIC; --复位信号
    --        address:in STD_LOGIC_VECTOR(15 downto 0); --要读取的16位内存地址
            
    --        MemData1:inout STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000"; --从内存中读取指令进该元件 RAM1存指令
    --        MemAddr1:out STD_LOGIC_VECTOR(17 downto 0) := "000000000000000000"; --输入到RAM1的内存地址 RAM1存放地址
            
    --        MemOut:out STD_LOGIC_VECTOR(15 downto 0):="0000100000000000"; --把数据输出给其他元件
            
    --        oe1,we1:out STD_LOGIC := '1';--RAM1的使能信号.RAM1存指令
    --        en1:out STD_LOGIC := '1';--初始使能为1
            
    --        loadfinish:out STD_LOGIC := '0'; --flash加载完成信号
            
    --        --stateout:out STD_LOGIC_VECTOR(6 downto 0) := "0000000";--测试用输出
            
    --        rdn:out STD_LOGIC := '1';  --串口使能信号，置为1，关闭串口
    --        wrn:out STD_LOGIC := '1'; --串口写信号，置为1，关闭串口
    --        ---------------------------------------------------
    --        --Flash的相关信号
    --        flash_byte : out STD_LOGIC := '1'; --操作模式,采用字模式
    --        flash_vpen : out STD_LOGIC := '1'; --写保护，置为1
    --        flash_ce : out STD_LOGIC := '0' ; --使能信号,该模块只负责flash的读，故ce置为0即可
    --        flash_oe : out STD_LOGIC := '1'; --读使能
    --        flash_we : out STD_LOGIC := '1'; --写使能
    --        flash_rp : out STD_LOGIC := '1'; --工作模式，1为工作
    --        flash_addr : out STD_LOGIC_VECTOR( 22 downto 1 ) := "0000000000000000000000"; --flash内存地址
    --        flash_data : inout STD_LOGIC_VECTOR( 15 downto 0 ) --flash输出信号
    --        );
    --end component IRMemory;
   component  VGA_play is
        Port(
            -- common port
            CLK_0: in std_logic; -- must 50M
            clkout: out std_logic; -- used to sync
            reset: in std_logic;
            
            
            -- vga port
            color: out std_logic_vector(7 downto 0);
            color1:out std_logic_vector(7 downto 0);
            Hs: out std_logic := '0';
            Vs: out std_logic := '0';
            v_clk: out std_logic;
            de: out std_logic := '0';
            
            -- fifo memory
            wctrl: in std_logic_vector(0 downto 0); -- 1 is write
            waddr: in std_logic_vector(10 downto 0);
            wdata : in std_logic_vector(7 downto 0)
        );
    end component VGA_play;

    component MemoryController is
    Port(
        address1 : in  STD_LOGIC_VECTOR (15 downto 0); --1为指令内存地址和数据
        output1 : out  STD_LOGIC_VECTOR (15 downto 0);
        address2 : in  STD_LOGIC_VECTOR (15 downto 0);--2为数据内存地址和数据，用于访存阶段
        output2 : out  STD_LOGIC_VECTOR (15 downto 0);
        clk: in STD_LOGIC;--一个高频时钟
        cpuclock : out STD_LOGIC;--时钟四分频后输出
        
        --flash部分的信号，只是接到上层例化用于管脚绑定，在这一层实际上木有用
        flash_byte : out std_logic;
        flash_vpen : out std_logic;
        flash_ce : out std_logic;
        flash_oe : out std_logic;
        flash_we : out std_logic;
        flash_rp : out std_logic;
        flash_addr : out std_logic_vector(22 downto 1);
        flash_data : inout std_logic_vector(15 downto 0);
        
        --内存读写部分的信号
        dataWrite : in  STD_LOGIC_VECTOR (15 downto 0); --要写的数据
        memoryAddr : out STD_LOGIC_VECTOR (17 downto 0);
        MemWrite : in STD_LOGIC; --内存写信号
        MemRead : in STD_LOGIC; --内存读信号
        memoryEN : out STD_LOGIC;
        memoryOE : out STD_LOGIC;
        memoryRW : out STD_LOGIC;
        
        --扩展数据线
        extendDatabus : inout STD_LOGIC_VECTOR(15 downto 0);
        
        --串口和VGA部分的信号
        serial_wrn : out STD_LOGIC;
        serial_rdn : out STD_LOGIC;
        serial_dataready : in STD_LOGIC;
        serial_tsre : in STD_LOGIC;
        serial_tbre : in STD_LOGIC;
        basicdatabus : inout STD_LOGIC_VECTOR(7 downto 0);
        ram1_en : out STD_LOGIC;
        reset : in STD_LOGIC;
        VGA_addr : out std_logic_vector(10 downto 0);
        VGA_write : out std_LOGIC_vector(0 downto 0);
        VGA_char : out std_logic_vector(7 downto 0)
    );
    end component MemoryController;

    --if -- end;

    --component IFID is

    --end  component IFID;

    component id is
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
    end component id;



    component exe is
        port(
        clock: in std_logic;
        reset : in std_logic;
        from_wb_memory_or_alu_out: in std_logic_vector(1 downto 0);
        wb_memory_or_alu_out: out std_logic_vector(1 downto 0);
        exe_select_goal: in std_logic_vector(2 downto 0);
        exe_alu_op: in std_logic_vector(2 downto 0);
        exe_alu_rx: in std_logic_vector(2 downto 0);
        exe_alu_ry: in std_logic_vector(1 downto 0);
        exe_address: in  std_logic_vector(1 downto 0);
        from_memoryWrite: in std_logic;
        memoryWrite: out std_logic;
        from_memoryRead: in std_logic;
        memoryRead: out std_logic;
        from_registerWrite: in std_logic;
        registerWrite: out std_logic;
        fromWhere: in std_logic;
        --where: out std_logic;
        memoryData : out STD_LOGIC_VECTOR(15 downto 0);

        fromBranch: in std_logic_vector(2 downto 0);
        shouldJump: out std_logic;
        jumpAddress: out std_logic_vector(15 downto 0);
        
        rx: in std_logic_vector(15 downto 0);
        ry: in std_logic_vector(15 downto 0);
        sp: in std_logic_vector(15 downto 0);
        pc: in std_logic_vector(15 downto 0);
        ra: in std_logic_vector(15 downto 0);
        ih: in std_logic_vector(15 downto 0);
        t: in std_logic_vector(15 downto 0);
        immediate: in std_logic_vector(15 downto 0);
        
        r_x: in std_logic_vector(2 downto 0);
        r_y: in std_logic_vector(2 downto 0);
        r_z: in std_logic_vector(2 downto 0);
        
        goal: out std_logic_vector(3 downto 0);
        alu_out: out std_logic_vector(15 downto 0);

        from_forwardx: in std_logic;
        from_forwardy: in std_logic;
        from_forward_address: in std_logic;
        
        forward_datax: in std_logic_vector(15 downto 0);
        forward_datay: in std_logic_vector(15 downto 0);
        forward_address: in std_logic_vector(15 downto 0)
    );
    end component exe;


    --component EXEMEM is

    --end  component EXEMEM;


    component exe_mem is
        port(
            clk : in std_logic;
            reset : in std_logic;
            aluout_in : in std_logic_vector(15 downto 0);
            memwrite_in :in std_logic;
            memread_in : in std_logic;
            out_sw_in : in std_logic_vector(15 downto 0);
            regwrite_in : in std_logic;
            memtoreg_in : in std_logic_vector(1 downto 0);
            rd_in : in std_logic_vector(3 downto 0);
            
            memadress_out : out std_logic_vector(15 downto 0);
            memdata_out : out std_logic_vector(15 downto 0);
            memwrite_out : out std_logic;
            memread_out:out std_logic;
            memtoreg_out : out std_logic_vector(1 downto 0);
            regwrite_out :out std_logic;
            aluout_out : out std_logic_vector(15 downto 0);
            rd_out : out std_logic_vector(3 downto 0)
        );
    end component;


    --COMPONENT MemoryBlock
    --port( 
    --        Block_clk:in STD_LOGIC; --脉冲信号,注意这里的时钟信号比较捉鸡
    --        Block_rst:in STD_LOGIC; --复位信号
    --        Block_address:in STD_LOGIC_VECTOR(15 downto 0); --要写入/读取的16位内存地址
    --        Block_data:in STD_LOGIC_VECTOR(15 downto 0); --输入的要写的数据
    --        Block_MemRead:in STD_LOGIC;
    --        Block_MemWrite:in STD_LOGIC;
    --        Block_MemOut:out STD_LOGIC_VECTOR(15 downto 0);
            
    --        tsre : in STD_LOGIC;
    --        tbre : in STD_LOGIC;
    --        wrn : out STD_LOGIC;
    --        rdn : out STD_LOGIC;
    --        dataready : in std_logic;
    --        MemData1:inout STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000"; --从内存中读取数据进该元件RAM2存数据
    --        MemAddr1:out STD_LOGIC_VECTOR(17 downto 0) := "000000000000000000"; --输入到RAM2的内存地址
    --        oe1,we1:out STD_LOGIC := '1';--RAM1和RAM2的使能信号.RAM1存指令，RAM2存数据
    --        en1:out STD_LOGIC := '1'--初始使能为1
    --        );
    --END COMPONENT;

    component mem_wb is
        port(
            clk : in std_logic;
            reset : in std_logic;
            memtoreg_in:in std_logic_vector(1 downto 0);
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

    component forward is
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
    end component forward;

    component hazard is
        port(
        memoryRead: in std_logic;
        goal: in std_logic_vector(3 downto 0);
        instruction: in std_logic_vector(15 downto 0);
        
        pause: out std_logic;
        bubble: out std_logic
    );
    end component  hazard;

  
    component RestControler is
    port(

        reset_in: in STD_LOGIC;
        load_finsh: in std_logic;
        reset_out: out STD_LOGIC
        );
    end component RestControler;

-----clock---

signal cpuclk:std_logic;


signal s_pc_mux:std_logic_vector(15 downto 0);
signal s_pc_add_address:std_logic_vector(15 downto 0);
signal s_pc_reg:std_logic_vector(15 downto 0);
signal s_flash_load_finsh: std_logic;
signal s_reset_out: std_logic;

signal s_id_memoryRead:std_logic;
signal s_id_memoryWrite:std_logic;
signal s_id_registerWrite:std_logic;
signal s_id_where:STD_LOGIC;
signal s_id_wb_memory_or_alu_out:std_logic_vector(1 downto 0);
signal s_id_branch:std_logic_vector(2 downto 0);
signal s_id_pc:std_logic_vector(15 downto 0);
signal s_id_immediate:std_logic_vector(15 downto 0);

signal s_id_rx:std_logic_vector(15 downto 0);
signal s_id_ry:std_logic_vector(15 downto 0);
signal s_id_sp:std_logic_vector(15 downto 0);
signal s_id_ra:std_logic_vector(15 downto 0);
signal s_id_ih:std_logic_vector(15 downto 0);
signal s_id_t:std_logic_vector(15 downto 0);     
signal s_id_exe_alu_op:std_logic_vector(2 downto 0);
signal s_id_exe_alu_rx:std_logic_vector(2 downto 0);
signal s_id_exe_alu_ry:std_logic_vector(1 downto 0);
signal s_id_exe_address:std_logic_vector(1 downto 0);
signal s_id_exe_select_goal:std_logic_vector(2 downto 0);
signal s_id_r_x:std_logic_vector(2 downto 0);
signal s_id_r_y:std_logic_vector(2 downto 0);
signal s_id_r_z:std_logic_vector(2 downto 0);

signal s_exe_regwrite_out:std_logic;
signal s_exe_aluout_out:STD_LOGIC_VECTOR(15 downto 0);

signal s_mem_rd_in:std_logic_vector(3 downto 0);
signal s_mem_rd_id_exe:std_logic_vector(3 downto 0);


signal  s_exe_wb_memory_or_alu_out:std_logic_vector(1 downto 0);
signal  s_exe_memoryWrite:std_logic;
signal  s_exe_memoryRead:std_logic;
signal  s_exe_registerWrite:std_logic;
--signal  s_exe_where:std_logic;
signal  s_exe_memData : std_logic_vector (15 downto 0);
signal  s_exe_shouldJump:std_logic;
signal  s_exe_jumpAddress:std_logic_vector(15 downto 0);
signal  s_exe_goal:std_logic_vector(3 downto 0);
signal  s_exe_alu_out:std_logic_vector(15 downto 0);
signal  s_exe_memadress_out:std_logic_vector(15 downto 0);
signal  s_exe_memdata_out:std_logic_vector(15 downto 0);
signal  s_exe_memwrite_out:std_logic;
signal  s_exe_memread_out:std_logic;
signal  s_exe_memtoreg_out:std_logic_vector(1 downto 0);
signal  s_exe_rd_out:std_logic_vector(3 downto 0);


signal s_memout_mem: std_logic_vector(15 downto 0);
signal s_instruction: std_logic_vector(15 downto 0);
signal s_pause:STD_LOGIC;
signal s_bubble:std_logic;
signal s_wb_write: std_logic;
signal s_wb_writeData:  std_logic_vector(15 downto 0);
signal s_wb_writeAddress:  std_logic_vector(3 downto 0);
----vga----
signal clk_useless : std_logic;
signal vga_data:std_logic_vector(7 downto 0):="00010001";
signal vga_addr:std_logic_vector(10 downto 0):="00000000100";
signal VGA_write : std_logic_vector(0 downto 0);

signal s_from_forward_datax:std_logic;
signal s_from_forward_datay:std_logic;
signal s_from_forward_address:std_logic;
signal s_forward_data:std_logic_vector(15 downto 0);


begin


  

    local_pc_adder: PCAdder port map(
        adderIn => s_pc_reg,
        adderOut => s_pc_add_address
        );

    local_pc_mux: PCMux port map(
   
            branch => s_exe_shouldJump,
            PCNext =>  s_pc_add_address,
            PCJump => s_exe_jumpAddress,       
            PCOut => s_pc_mux
        );

    local_pc_reg:  PCRegister port map(   
            rst => s_reset_out,
            clk => cpuclk,
            PCHold => s_bubble,
            PCIn => s_pc_mux,
            PCOut => s_pc_reg
        );

--    local_rset: RestControler port map(

--        reset_in => rst,
--        load_finsh => s_flash_load_finsh,
--        reset_out => s_reset_out
--        );


    local_id: id port map(
        clock => cpuclk,
        reset => rst,
        pause => s_pause, 
        flush => s_exe_shouldJump,
        jump => s_exe_shouldJump,
        bubble => s_bubble,
        instruction => s_instruction,
        fromPC => s_pc_reg,
        
        write_register =>s_wb_write,
        writeData => s_wb_writeData,
        writeAddress => s_wb_writeAddress,
    
        memoryRead => s_id_memoryRead,
        memoryWrite => s_id_memoryWrite,
        registerWrite => s_id_registerWrite,
        where => s_id_where,

        wb_memory_or_alu_out => s_id_wb_memory_or_alu_out,

        branch => s_id_branch,
        
        pc => s_id_pc,
        
        immediate => s_id_immediate,

        rx => s_id_rx,
        ry => s_id_ry,
        sp => s_id_sp,
        ra =>s_id_ra,
        ih => s_id_ih,
        t => s_id_t,
        
        exe_alu_op => s_id_exe_alu_op,
        exe_alu_rx => s_id_exe_alu_rx,
        exe_alu_ry => s_id_exe_alu_ry,
        exe_address => s_id_exe_address,
        exe_select_goal => s_id_exe_select_goal,
        r_x => s_id_r_x,
        r_y => s_id_r_y,
        r_z => s_id_r_z
        
    );
    
    local_exe: exe port map(
        clock => cpuclk,
        reset => rst,
        --pause: in std_logic;
        from_wb_memory_or_alu_out => s_id_wb_memory_or_alu_out,
        wb_memory_or_alu_out => s_exe_wb_memory_or_alu_out,
        exe_select_goal => s_id_exe_select_goal,
        exe_alu_op => s_id_exe_alu_op,
        exe_alu_rx => s_id_exe_alu_rx,
        exe_alu_ry => s_id_exe_alu_ry,
        exe_address => s_id_exe_address,
        from_memoryWrite => s_id_memoryWrite,
        memoryWrite => s_exe_memoryWrite,
        from_memoryRead => s_id_memoryRead,
        memoryRead => s_exe_memoryRead,
        from_registerWrite => s_id_registerWrite,

        registerWrite => s_exe_registerWrite,
        fromWhere => s_id_where,
        --where => s_exe_where,
        memoryData => s_exe_memData,
        
        fromBranch => s_id_branch,
        shouldJump => s_exe_shouldJump,
        jumpAddress => s_exe_jumpAddress,
        
        rx => s_id_rx,
        ry => s_id_ry,
        sp => s_id_sp,
        pc => s_id_pc,
        ra => s_id_ra,
        ih => s_id_ih,
        t => s_id_t,
        immediate => s_id_immediate,
        
        r_x => s_id_r_x,
        r_y => s_id_r_y,
        r_z => s_id_r_z,
        
        goal => s_exe_goal,
        alu_out => s_exe_alu_out,

        from_forwardx => s_from_forward_datax,
        from_forwardy => s_from_forward_datay,
        from_forward_address => s_from_forward_address,
        
        forward_datax => s_forward_data,
        forward_datay => s_forward_data,
        forward_address => s_forward_data
    );
   
    local_exe_mem: exe_mem port map(
        clk => cpuclk,
        reset => rst,
        aluout_in => s_exe_alu_out,
        memwrite_in => s_exe_memoryWrite,
        memread_in => s_exe_memoryRead,
        out_sw_in => s_exe_memData,
        regwrite_in => s_exe_registerWrite,
        memtoreg_in => s_exe_wb_memory_or_alu_out,
        rd_in => s_mem_rd_id_exe,
        
        memadress_out => s_exe_memadress_out,
        memdata_out => s_exe_memdata_out,
        memwrite_out => s_exe_memwrite_out,
        memread_out => s_exe_memread_out,
        memtoreg_out => s_exe_memtoreg_out,
        regwrite_out => s_exe_regwrite_out,
        aluout_out => s_exe_aluout_out,
        rd_out => s_exe_rd_out
    );
   

   

    vga : VGA_play port map(
        CLK_0 => clk_in,
        clkout=> clk_useless,
        reset=> rst,

        -- vga port
--        R=> R,
--        G=> G,
--        B=> B,
        color => video_color,
--        color1 => leds,
        Hs=> Hs,
        Vs=> Vs,
        v_clk => video_clk,
        de => video_de,

        -- fifo memory
        wctrl=> vga_write,
        waddr=> vga_addr,
        wdata => vga_data
        );

    local_mem: MemoryController port map(
        --1为指令内存地址和数据
        address1 => s_pc_reg, 
        output1 => s_instruction,

        --2为数据内存地址和数据，用于访存阶段
        address2 => s_exe_memadress_out,
        output2 => s_memout_mem,
        clk => clk_in,--一个高频时钟
        cpuclock => cpuclk,--时钟四分频后输出
        
        --flash部分的信号，只是接到上层例化用于管脚绑定，在这一层实际上木有用
        flash_byte => flash_byte,
        flash_vpen => flash_vpen,
        flash_ce =>flash_ce,
        flash_oe => flash_oe,
        flash_we => flash_we,
        flash_rp => flash_rp,
        flash_addr => flash_addr,
        flash_data => flash_data,
        --内存读写部分的信号

        dataWrite =>  s_exe_memdata_out,--要写的数据
        memoryAddr => MemAddr1,
        MemWrite => s_exe_memwrite_out,--内存写信号
        MemRead => s_exe_memread_out, --内存读信号

        memoryEN =>en2,
        memoryOE =>oe2,
        memoryRW =>we2,

        
        --扩展数据线
        extendDatabus =>MemData2,        
        --串口和VGA部分的信号
        serial_wrn =>wrn,
        serial_rdn =>rdn,
        serial_dataready =>dataready,
        serial_tsre =>tsre,
        serial_tbre =>tbre,

        basicdatabus => MemData1(7 downto 0),
        ram1_en =>en1,
        reset =>rst,
        
        VGA_addr =>vga_addr,
        VGA_char =>vga_data,
        vga_write=>VGA_write
        
    );

    local_mem_wb: mem_wb port map(
            clk => cpuclk,
            reset => rst,
            memtoreg_in => s_exe_memtoreg_out,
            regwrite_in => s_exe_regwrite_out,
            aluout_in => s_exe_aluout_out,
            memout_in => s_memout_mem,
            rd_in => s_mem_rd_in,
            
            wbregwrite_out => s_wb_write,
            wbadress_out => s_wb_writeAddress,
            wbregdata_out => s_wb_writeData
        );
    
    local_hazard: hazard port map(
        memoryRead => s_exe_memoryRead,
        goal => s_exe_goal,
        instruction => s_instruction,
        
        pause => s_pause,
        bubble => s_bubble
    );
    local_forward: forward port map(
        exe_alu_rx => s_id_exe_alu_rx,
        exe_alu_ry =>s_id_exe_alu_ry,
        exe_select_address => s_id_exe_address,

        rx => s_id_r_x,
        ry => s_id_r_y,

        address_memory => s_mem_rd_id_exe,
        mem_registerWrite => s_exe_regwrite_out,
        mem_aluout => s_exe_aluout_out,

        address_wb => s_mem_rd_in,
        wb_registerWrite => s_wb_write,
        wb_toRegister => s_wb_writeData,

        from_forward_datax => s_from_forward_datax,
        from_forward_datay => s_from_forward_datay,
        from_forward_address => s_from_forward_address,
        forward_data => s_forward_data

    );
 

    oe1<='1';
    we1<='1';
    leds <= s_instruction;


    --locla_if: IRMemory  port map( 
    --        clk => clk_mem,
    --        rst => rst --复位信号
    --        address => s_pc_reg;
            
    --        --Op:in STD_LOGIC; --操作类型，0表示读，否则什么都不做
            
    --        MemData1:inout STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000"; --从内存中读取指令进该元件 RAM1存指令
    --        MemAddr1:out STD_LOGIC_VECTOR(17 downto 0) := "000000000000000000"; --输入到RAM1的内存地址 RAM1存放地址
            
    --        MemOut:out STD_LOGIC_VECTOR(15 downto 0):="0000100000000000"; --把数据输出给其他元件
            
    --        oe1,we1:out STD_LOGIC := '1';--RAM1的使能信号.RAM1存指令
    --        en1:out STD_LOGIC := '1';--初始使能为1
            
    --        loadfinish:out STD_LOGIC := '0'; --flash加载完成信号
            
    --        --stateout:out STD_LOGIC_VECTOR(6 downto 0) := "0000000";--测试用输出
            
    --        rdn:out STD_LOGIC := '1';  --串口使能信号，置为1，关闭串口
    --        wrn:out STD_LOGIC := '1'; --串口写信号，置为1，关闭串口
    --        ---------------------------------------------------
    --        --Flash的相关信号
    --        flash_byte : out STD_LOGIC := '1'; --操作模式,采用字模式
    --        flash_vpen : out STD_LOGIC := '1'; --写保护，置为1
    --        flash_ce : out STD_LOGIC := '0' ; --使能信号,该模块只负责flash的读，故ce置为0即可
    --        flash_oe : out STD_LOGIC := '1'; --读使能
    --        flash_we : out STD_LOGIC := '1'; --写使能
    --        flash_rp : out STD_LOGIC := '1'; --工作模式，1为工作
    --        flash_addr : out STD_LOGIC_VECTOR( 22 downto 1 ) := "0000000000000000000000"; --flash内存地址
    --        flash_data : inout STD_LOGIC_VECTOR( 15 downto 0 ) --flash输出信号
    --        );


end architecture ; -- Computer_beh
