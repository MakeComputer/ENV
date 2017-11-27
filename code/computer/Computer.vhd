library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

use work.utils.all;

entity Computer is
    port (
        clk_in,rst: in std_logic

        -- vga port
        R: out std_logic_vector(2 downto 0) := "000";
        G: out std_logic_vector(2 downto 0) := "000";
        B: out std_logic_vector(2 downto 0) := "000";
        Hs: out std_logic := '0';
        Vs: out std_logic := '0';
            
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
        writeAddress: in std_logic_vector(15 downto 0);
    
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
        clock, reset, pause: in std_logic;
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
        where: out std_logic;
        
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

    component clock is
        port(
            clk_in: in std_logic;
            clk_cpu: out std_logic
            );
    end component clock;

    component RestControler is
    port(

        reset_in: in STD_LOGIC;
        load_finsh: in std_logic;
        reset_out: out STD_LOGIC
        );
    end component RestControler;

-----clock---
signal clk_cpu:std_logic;
signal clk_mem:std_logic;
signal s_pc_mux:std_logic_vector(15 downto 0);
signal s_pc_add_address:std_logic_vector(15 downto 0);
signal s_pc_reg:std_logic_vector(15 downto 0);
signal s_exe_jump: std_logic;
signal s_exe_branch_address: std_logic_vector(15 downto 0);
signal s_hazard_bubble: STD_LOGIC;
signal s_flash_load_finsh: std_logic;
signal s_reset_out: std_logic;




----vga----
signal clk_useless : std_logic;
signal vga_data:std_logic_vector(7 downto 0):="00010001";
signal vga_addr:std_logic_vector(10 downto 0):="00000000100";
signal VGA_write : std_logic_vector(0 downto 0);

begin
    
    --clk_cpu
    local_clock: clock port map(
        clk_in => clk_in,
        clk_cpu => clk_cpu,
        clk_mem => clk_mem
        );

    local_pc_adder: PCAdder port map(
        adderIn => s_pc_reg,
        adderOut => s_pc_add_address
        );

    local_pc_mux: PCMux port map(
   
            branch => s_exe_jump,
            PCNext =>  s_pc_add_address,
            PCJump => s_exe_branch_address,       
            PCOut => s_pc_mux
        );

    local_pc_reg:  PCRegister port map(   
            rst => s_reset_out,
            clk => clk_cpu,
            PCHold => s_hazard_bubble,
            PCIn => s_pc_mux,
            PCOut => s_pc_reg
        );

    local_rrset: RestControler port map(

        reset_in => rst,
        load_finsh => s_flash_load_finsh;
        reset_out => s_reset_out
        );

    vga : VGA_play port map(
        CLK_0 => clk_in,
        clkout=> clk_useless,
        reset=> rst,

        -- vga port
        R=> R,
        G=> G,
        B=> B,
        Hs=> Hs,
        Vs=> Vs,

        -- fifo memory
        wctrl=> vga_write,
        waddr=> vga_addr,
        wdata => vga_data
        );

    local_mem: MemoryController port map(
        address1 => s_pc_reg, --1为指令内存地址和数据
        output1 : out  STD_LOGIC_VECTOR (15 downto 0);
        address2 : in  STD_LOGIC_VECTOR (15 downto 0);--2为数据内存地址和数据，用于访存阶段
        output2 : out  STD_LOGIC_VECTOR (15 downto 0);
        clk: in STD_LOGIC;--一个高频时钟
        cpuclock : out STD_LOGIC;--时钟四分频后输出
        
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

        dataWrite : in  STD_LOGIC_VECTOR (15 downto 0); --要写的数据
        memoryAddr : out STD_LOGIC_VECTOR (17 downto 0);
        MemWrite : in STD_LOGIC; --内存写信号
        MemRead : in STD_LOGIC; --内存读信号

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
    oe1<='1';
    we1<='1';


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