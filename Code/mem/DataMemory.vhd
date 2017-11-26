library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DataMemory is
port( 
            clk:in STD_LOGIC; --脉冲信号
            rst:in STD_LOGIC; --复位信号
            address:in STD_LOGIC_VECTOR(15 downto 0); --要写入/读取的16位内存地址
            data:in STD_LOGIC_VECTOR(15 downto 0); --输入的要写的地址
            MemRead:in STD_LOGIC; --内存读信号
            MemWrite:in STD_LOGIC; --内存写信号
            
            MemAddr1:out STD_LOGIC_VECTOR(17 downto 0) := "000000000000000000"; --输入到RAM1的内存地址
            MemOut:out STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000"; --把数据输出给其他元件
            
            
            oe1,we1:out STD_LOGIC := '1';
            en1:out STD_LOGIC := '1';--初始使能为1
            
            --for port
            wrn : out STD_LOGIC;
            rdn : out STD_LOGIC;
            dataready : in STD_LOGIC;
            tsre : in STD_LOGIC;
            tbre : in STD_LOGIC;
            
            databus : inout STD_LOGIC_VECTOR(15 downto 0)
            
            );
end DataMemory;

architecture Behavioral of DataMemory is
-------------------------------------
    SHARED VARIABLE Mem_StateR : STD_LOGIC_VECTOR(1 downto 0) := "00"; --CPU控制的内存读的状态
    SHARED VARIABLE Mem_StateW : STD_LOGIC_VECTOR(1 downto 0) := "00"; --CPU控制的内存写的状态
    SHARED VARIABLE toe,twe,ten:STD_LOGIC := '1';
    shared VARIABLE bf01:std_logic_vector(15 downto 0):=x"0000";
    shared variable port_w:integer range 0 to 4:=0;
    shared variable port_r:integer range 0 to 4:=0;
    SHARED VARIABLE tmprdn,tmpwrn:STD_LOGIC;
begin
    

    process(clk,rst)
        begin
        bf01(0):=tsre and tbre;
        bf01(1):=dataready;

        if (rst = '0') then--清空所有信号
            toe := '1';
            twe := '1';
            ten := '1';
            Mem_StateR := "00";
            Mem_StateW := "00";
            MemOut <= "0000000000000000";
            tmpwrn :='0';
            port_w:=1;
            port_r:=1;
            tmprdn:='1';
            
        else
            if clk'event and clk='0' then
                if (MemRead = '1' AND MemWrite = '0')then --读内存  
                
                
                case address is
                
                    when x"bf00"=>--if bf00 read chuan kou
                        case port_r is
                            when 0 =>
                                en1 <='1';
                                oe1 <='1';
                                we1 <='1';
                                port_r:=1;
                            when 1 => 
                                databus <="ZZZZZZZZZZZZZZZZ";
                                tmprdn:='1';
                                port_r := 2;
                            when 2 =>
                                if (dataready = '1') then
                                    tmprdn := '0';
                                    port_r := 3;
                                elsif (dataready = '0') then
                                    port_r := 1;
                                end if;
                            when 3 =>
                                MemOut <="00000000"& databus(7 downto 0);
                                port_r :=1;
                            when others=>
                        end case;
                            
                    when x"bf01"=>
                            MemOut<="00000000000000"&BF01(1 downto 0);
                    when others=>
                            case Mem_StateR is
                                when "00"=>--准备地址，数据线设为高阻
                                    MemAddr1 <= "00" & address;
                                    databus <= "ZZZZZZZZZZZZZZZZ";
                                    twe := '1'; 
                                    ten := '0';
                                    toe := '0';
                                    Mem_StateR := "01";
                                when "01"=>--读出数据，拉高读信号
                                    MemOut <= databus;
                                    toe := '1'; --关闭使能
                                    ten := '1';
                                    Mem_StateR := "00";
                                when others=>
                                    Mem_StateR := "00";
                        end case;
                end case;
                    
                elsif (MemRead = '0' AND MemWrite = '1') then--写内存,只可能是写数据内存
                
                
                case address is
                    when x"bf00"=>
                    
                        case port_w is
                        when 0 =>
                            tmpwrn:='1';
                            en1 <='1';
                            oe1 <='1';
                            we1 <='1';
                            port_w:=1;
                        when 1 => 
                            
                            databus <="00000000"&data(7 downto 0);
                            tmpwrn:='0';
                            
                            port_w := 2;
                        when 2 =>
                            tmpwrn:='1';
                            port_w := 3;
                        when 3 =>
                            tmpwrn:='1';
                            if (tbre = '1') then
                                port_w := 4;
                            end if;
                        when 4 =>
                            tmpwrn:='1';
                            if (tsre = '1') then 
                                port_w := 0;
                            end if;
                        when others=>
                    end case;
                
                when others=>
                
                    case Mem_StateW is
                        when "00"=>--准备地址和数据
                            twe := '0'; --开使能
                            toe := '1';
                            ten := '0';
                            databus <= data;
                            MemAddr1 <= "00" & address;
                            Mem_StateW := "01";                         
                        when "01"=>--关使能
                            twe := '1';
                            ten := '1';
                            Mem_StateW := "00";
                        when others=>
                            Mem_StateW := "00";
                    end case;                                               
                end case;
                end if;     
            end if;
            
        end if;
        ---输出控制信号
        oe1 <= toe;
        we1 <= twe;
        en1 <= ten;
        wrn <= tmpwrn;
        rdn <= tmprdn;

        
    end process;
    

end Behavioral;


