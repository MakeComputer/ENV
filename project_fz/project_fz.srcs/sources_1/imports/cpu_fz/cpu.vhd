----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:10:05 11/19/2015 
-- Design Name: 
-- Module Name:    cpu - Behavioral 
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

entity cpu is
	port(
			touch_btn : in std_logic_vector(5 downto 0);
			dip_sw : in std_logic_vector(31 downto 0);
			--touch_btn(5) : in std_logic; --reset
			--touch_btn(4) : in std_logic; --ʱ��Դ  Ĭ��Ϊ50M  ����ͨ���޸İ󶨹ܽ����ı�
			clk_in : in std_logic;
			--dip_sw(0) : in std_logic;	--ѡ������ʱ�ӣ�Ϊ�ֶ�����50M��
			
			
			--����
			uart_dataready : in std_logic;   
			uart_tbre : in std_logic;
			uart_tsre : in std_logic;
			uart_rdn : inout std_logic;
			uart_wrn : inout std_logic;
			
			--RAM1  �������
			base_ram_ce_n : out std_logic;
			base_ram_we_n : out std_logic;
			base_ram_oe_n : out std_logic;
			base_ram_data : inout std_logic_vector(31 downto 0);
			base_ram_addr : out std_logic_vector(19 downto 0);
			
			--RAM2 ��ų����ָ��
			ext_ram_ce_n : out std_logic;
			ext_ram_we_n : out std_logic;
			ext_ram_oe_n : out std_logic;
			ext_ram_data : inout std_logic_vector(31 downto 0);
			ext_ram_addr : out std_logic_vector(19 downto 0);
			
			--debug  digit1��digit2��ʾPCֵ��led��ʾ��ǰָ��ı���
			leds : out std_logic_vector(31 downto 0);
			
			video_hsync,video_vsync : out std_logic;
			video_pixel : out std_logic_vector(7 downto 0);
			video_de : out std_logic;
			video_clk : out std_logic;
		
			--Flash
			flash_a : out std_logic_vector(22 downto 0);		--flash��ַ��
			flash_data : inout std_logic_vector(15 downto 0);	--flash������
			
			flash_byte_n : out std_logic;	--flash����ģʽ������'1'
			flash_vpen : out std_logic;	--flashд����������'1'
			flash_rp_n : out std_logic;	--'1'��ʾflash����������'1'
			flash_ce_n : out std_logic;	--flashʹ��
			flash_oe_n : out std_logic;	--flash��ʹ�ܣ�'0'��Ч��ÿ�ζ���������'1'
			flash_we_n : out std_logic		--flashдʹ��
	);
			
end cpu;

architecture Behavioral of cpu is
	
	component fontRom
		port (
				clka : in std_logic;
				addra : in std_logic_vector(10 downto 0);
				douta : out std_logic_vector(7 downto 0)
		);
	end component;
	
--	component digit
--		port (
--				clka : in std_logic;
--				addra : in std_logic_vector(14 downto 0);
--				douta : out std_logic_vector(23 downto 0)
--			);
--	end component;
	
	component VGA_Controller
		port (
		reset	: in  std_logic;
        CLK_in    : in  std_logic;            --50Mʱ������

    -- data
        r0, r1, r2, r3, r4,r5,r6,r7 : in std_logic_vector(15 downto 0);


        PC : in std_logic_vector(15 downto 0);
        CM : in std_logic_vector(15 downto 0);
        Tdata : in std_logic_vector(15 downto 0);
        SPdata : in std_logic_vector(15 downto 0);
        IHdata : in std_logic_vector(15 downto 0);
        
    -- font rom
        romAddr : out std_logic_vector(10 downto 0);
        romData : in std_logic_vector(7 downto 0);
    --VGA Side
        hs,vs    : out std_logic;        --��ͬ������ͬ���ź�
        color: out std_logic_vector(7 downto 0);
        de: out std_logic := '0';
        v_clk: out std_logic
--        oRed    : out std_logic_vector (2 downto 0);
--        oGreen    : out std_logic_vector (2 downto 0);
--        oBlue    : out std_logic_vector (2 downto 0)
	);	
	end component;
	
	component MemoryUnit
	port(
		--ʱ��
		clk : in std_logic;
		rst : in std_logic;
		
		--����
		data_ready : in std_logic;		--����׼���źţ�='1'��ʾ���ڵ�������׼���ã������ڳɹ�������ʾ������data��
		tbre : in std_logic;				--�������ݱ�־
		tsre : in std_logic;				--���ݷ�����ϱ�־��tsre and uart_tbre = '1'ʱд�������
		wrn : out std_logic;				--д���ڣ���ʼ��Ϊ'1'������Ϊ'0'����RAM1data���ã�����Ϊ'1'д����
		rdn : out std_logic;				--�����ڣ���ʼ��Ϊ'1'����RAM1data��Ϊ"ZZ..Z"��
												--��data_ready='1'�����rdn��Ϊ'0'���ɶ����ڣ�����������RAM1data�ϣ�
		
		--RAM1��DM����RAM2��IM��
		MemRead : in std_logic;			--���ƶ�DM���źţ�='1'������Ҫ��
		MemWrite : in std_logic;		--����дDM���źţ�='1'������Ҫд
		
		dataIn : in std_logic_vector(15 downto 0);		--д�ڴ�ʱ��Ҫд��DM��IM������
		
		ramAddr : in std_logic_vector(15 downto 0);		--��DM/дDM/дIMʱ����ַ����
		PCOut : in std_logic_vector(15 downto 0);			--��IMʱ����ַ����
		PCMuxOut : in std_logic_vector(15 downto 0);	
		PCKeep : in std_logic;
		dataOut : out std_logic_vector(15 downto 0);		--��DMʱ��������������/�����Ĵ���״̬
		insOut : out std_logic_vector(15 downto 0);		--��IMʱ��������ָ��
		
		ram1_addr : out std_logic_vector(17 downto 0); 	--RAM1��ַ����
		ram2_addr : out std_logic_vector(17 downto 0); 	--RAM2��ַ����
		ram1_data : inout std_logic_vector(15 downto 0);--RAM1��������
		ram2_data : inout std_logic_vector(15 downto 0);--RAM2��������
		
		ram2AddrOutput : out std_logic_vector(17 downto 0);
		
		ram1_en : out std_logic;		--RAM1ʹ�ܣ�='1'��ֹ
		ram1_oe : out std_logic;		--RAM1��ʹ�ܣ�='1'��ֹ��
		ram1_we : out std_logic;		--RAM1дʹ�ܣ�='1'��ֹ
		ram2_en : out std_logic;		--RAM2ʹ�ܣ�='1'��ֹ
		ram2_oe : out std_logic;		--RAM2��ʹ�ܣ�='1'��ֹ
		ram2_we : out std_logic;		--RAM2дʹ�ܣ�='1'��ֹ
		
		MemoryState : out std_logic_vector(1 downto 0);
		FlashStateOut : out std_logic_vector(2 downto 0);
		flashFinished : out std_logic;
		
		--Flash
		flash_addr : out std_logic_vector(22 downto 0);		--flash��ַ��
		flash_data : inout std_logic_vector(15 downto 0);	--flash������
		
		flash_byte : out std_logic;	--flash����ģʽ������'1'
		flash_vpen : out std_logic;	--flashд����������'1'
		flash_rp : out std_logic;		--'1'��ʾflash����������'1'
		flash_ce : out std_logic;		--flashʹ��
		flash_oe : out std_logic;		--flash��ʹ�ܣ�'0'��Ч��ÿ�ζ���������'1'
		flash_we : out std_logic		--flashдʹ��
	);
	end component;
	

	--ʱ��
	component Clock
	port ( 
		rst : in STD_LOGIC;
		clk : in  STD_LOGIC;
		
		clkout :out STD_LOGIC;
		clk1 : out  STD_LOGIC;
		clk2 : out STD_LOGIC
	);
	end component;
	
	
	--ALU������
	component ALU
	port(
		Asrc       	 :  in STD_LOGIC_VECTOR(15 downto 0);
		Bsrc       	 :  in STD_LOGIC_VECTOR(15 downto 0);
		ALUop		  	 :  in STD_LOGIC_VECTOR(3 downto 0);
		ALUresult  	 :  out STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000"; -- Ĭ����Ϊȫ0
		BranchJudge  :  out STD_LOGIC
		);
	end component;
	
	--ѡ������ALU�ĵ�һ��������
	component AMux
	port(
		--�����ź�
		ForwardA : in std_logic_vector(1 downto 0);
		--��ѡ������
		ReadData1 : in std_logic_vector(15 downto 0);
		ExMemALUResult : in std_logic_vector(15 downto 0);	--����ָ���ALU���
		MemWbResult : in std_logic_vector(15 downto 0);		--������ָ��Ľ��
		--MemWbMemResult : in std_logic_vector(15 downto 0);	--������ָ��Ķ�DM���
		--ѡ�������
		AsrcOut : out std_logic_vector(15 downto 0)
	);
	end component;
	
	--ѡ������ALU�ĵڶ���������
	component BMux
	port(
		--�����ź�
		ForwardB : in std_logic_vector(1 downto 0);
		ALUSrcB  : in std_logic;
		--��ѡ������
		ReadData2 : in std_logic_vector(15 downto 0);
		imme 	    : in std_logic_vector(15 downto 0);
		ExMemALUResult : in std_logic_vector(15 downto 0);	--����ָ���ALU���
		MemWbResult : in std_logic_vector(15 downto 0);		--������ָ��Ľ��
		--MemWbMemResult : in std_logic_vector(15 downto 0);	--������ָ��Ķ�DM���
		--ѡ�������
		BsrcOut : out std_logic_vector(15 downto 0)
	);	
	end component;
	
	
	--�������п����źŵĿ�����
	component Controller
	port(	
		commandIn : in std_logic_vector(15 downto 0);
		rst : in std_logic;
		controllerOut :  out std_logic_vector(20 downto 0)
		-- RegWrite(1) RegDst(3) ReadReg1(3) ReadReg2(1) immeSelect(3) ALUSrcB(1) 
		-- ALUOp(4) MemRead(1) MemWrite(1) MemToReg(1) jump(1) MFPC(1)
	);
	end component;
	
	--ѡ����PC�ĵ�Ԫ
	component PCMux
	port(
		PCAddOne : in std_logic_vector(15 downto 0);	 --PC+1
		IdEximme : in std_logic_vector(15 downto 0);  --���ڼ���Branch��ת��PCֵ=IdEXEimme+IdExPC
		IdExPC : in std_logic_vector(15 downto 0);	 --���ڼ���Branch��ת��PCֵ=IdEXEimme+IdExPC
		AsrcOut : in std_logic_vector(15 downto 0);	 --����JRָ���ת��ַΪASrcOut
		
		jump : in std_logic;					--jump�����ܿ�����Controller�������ź�
		BranchJudge : in std_logic;		--����ALU�����Ŀ����źţ���ʾB����ת�ɹ�
		PCRollback : in std_logic;			--SW���ݳ�ͻʱ��PC��Ҫ���˵�SW��һ��ָ��ٵĵ�ַ��
													--����ǰ��PC+1�Ǣ۵ĵ�ַ�����Դ�ʱPCOut = PCAddOne - 2;
		
		PCOut : out std_logic_vector(15 downto 0)
	);
	end component;
	
	--��MFPCָ���PC+1��ALUResult��ѡ��һ����Ϊ"������ALUResult"
	component MFPCMux
	port(
		PCAddOne  : in std_logic_vector(15 downto 0);	
		ALUResult : in std_logic_vector(15 downto 0);
		MFPC		 : in std_logic;		--MFPC = '1'��ʱ��ѡ��PC+1��ֵ
		
		MFPCMuxOut : out std_logic_vector(15 downto 0)
	);
	end component;
	
	
	--EX/MEM�׶μĴ���
	component ExMemRegisters
	port(
		clk : in std_logic;
		rst : in std_logic;
		flashFinished : in std_logic;
		--��������
		rdIn : in std_logic_vector(3 downto 0);
		MFPCMuxIn : in std_logic_vector(15 downto 0);
		readData2In : in std_logic_vector(15 downto 0); --��SW���д�ڴ�
		--�ź�����
		regWriteIn : in std_logic;
		memReadIn : in std_logic;
		memWriteIn : in std_logic;
		memToRegIn : in std_logic;

		--�������
		rdOut : out std_logic_vector(3 downto 0);
		ALUResultOut : out std_logic_vector(15 downto 0);
		readData2Out : out std_logic_vector(15 downto 0); --��SW���д�ڴ�
		--�ź����
		regWriteOut : out std_logic;
		memReadOut : out std_logic;
		memWriteOut : out std_logic;
		memToRegOut : out std_logic
	);
	end component;
	
	--ת����Ԫ
	component ForwardController
	port(
		ExMemRd : in std_logic_vector(3 downto 0);   --
		MemWbRd : in std_logic_vector(3 downto 0);   --
		
		--ExMemRegWrite : in std_logic;
		--MemWbRegWrite : in std_logic;    --��"1111"�ж�û��Դ�Ĵ���
		
		IdExALUsrcB : in std_logic;
		IdExMemWrite : in std_logic;
		
		IdExReg1 : in std_logic_vector(3 downto 0);  --����ָ���Դ�Ĵ���1
		IdExReg2 : in std_logic_vector(3 downto 0);  --����ָ���Դ�Ĵ���2
		
		ForwardA : out std_logic_vector(1 downto 0);
		ForwardB : out std_logic_vector(1 downto 0);
		ForwardSW : out std_logic_vector(1 downto 0)

	);
	end component;
	
	--LW���ݳ�ͻ���Ƶ�Ԫ
	component HazardDetectionUnit
	port(
		IdExRd : in std_logic_vector(3 downto 0);
		IdExMemRead : in std_logic;
		
		ReadReg1 : in std_logic_vector(3 downto 0);
		ReadReg2 : in std_logic_vector(3 downto 0);
		
		PCKeep : out std_logic;
		IfIdKeep : out std_logic;
		IdExFlush : out std_logic
		
	);
	end component;
	
	--ID/EX�׶μĴ���
	component IdExRegisters
	port(
		clk : in std_logic;
		rst : in std_logic;
		flashFinished : in std_logic;
		LW_IdExFlush : in std_logic;		--LW���ݳ�ͻ��
		Branch_IdExFlush : in std_logic;	--��תʱ��
		Jump_IdExFlush : in std_logic;	--JR��תʱ��
		SW_IdExFlush : in std_logic;		--SW�ṹ��ͻ��
		
		PCIn : in std_logic_vector(15 downto 0);
		rdIn : in std_logic_vector(3 downto 0);		--Ŀ�ļĴ�����"0xxx"-R0~R7,"1000"-SP,"1001"-IH,"1010"-T,"1110"-û��Ŀ�ļĴ���
		Reg1In : in std_logic_vector(3 downto 0);		--Դ�Ĵ���1��"0xxx"-R0~R7,"1000"-SP,"1001"-IH,"1010"-T,"1111"-û��Դ�Ĵ���1
		Reg2In : in std_logic_vector(3 downto 0);		--Դ�Ĵ���2��"0xxx"-R0~R7,"1111"-û��Դ�Ĵ���2
		ALUSrcBIn : in std_logic;							--�����ź�ALUSrcB��'0'-Reg2,'1'-imme
		ReadData1In : in std_logic_vector(15 downto 0);	--Դ�Ĵ���1��ֵ
		ReadData2In : in std_logic_vector(15 downto 0);	--Դ�Ĵ���2��ֵ
		immeIn : in std_logic_vector(15 downto 0);		--��չ���������
		
		MFPCIn : in std_logic;
		regWriteIn : in std_logic;
		memWriteIn : in std_logic;
		memReadIn : in std_logic;
		memToRegIn : in std_logic;
		jumpIn : in std_logic;
		ALUOpIn : in std_logic_vector(3 downto 0);		--Controller���ɵĿ����ź�
		
	
		PCOut : out std_logic_vector(15 downto 0);
		rdOut : out std_logic_vector(3 downto 0);
		Reg1Out : out std_logic_vector(3 downto 0);
		Reg2Out : out std_logic_vector(3 downto 0);
		ALUSrcBOut : out std_logic;
		ReadData1Out : out std_logic_vector(15 downto 0);
		ReadData2Out : out std_logic_vector(15 downto 0);			
		immeOut : out std_logic_vector(15 downto 0);
		
		MFPCOut : out std_logic;
		regWriteOut : out std_logic;
		memWriteOut : out std_logic;
		memReadOut : out std_logic;
		memToRegOut : out std_logic;
		jumpOut : out std_logic;
		ALUOpOut : out std_logic_vector(3 downto 0)
	);
	end component;
	
	--IF/ID�׶μĴ���
	component IfIdRegisters
	port(
		rst : in std_logic;
		clk : in std_logic;
		flashFinished : in std_logic;
		
		commandIn : in std_logic_vector(15 downto 0);
		PCIn : in std_logic_vector(15 downto 0); 
		IfIdKeep : in std_logic;				--LW���ݳ�ͻ��
		Branch_IfIdFlush : in std_logic;		--��תʱ��
		Jump_IfIdFlush : in std_logic;		--JR��תʱ��
		SW_IfIdFlush : in std_logic;			--SW�ṹ��ͻ��
		
		rx : out std_logic_vector(2 downto 0);		--Command[10:8]
		ry : out std_logic_vector(2 downto 0);		--Command[7:5]
		rz : out std_logic_vector(2 downto 0);		--Command[4:2]
		imme_10_0 : out std_logic_vector(10 downto 0);	--Command[10:0]
		commandOut : out std_logic_vector(15 downto 0);
		PCOut : out std_logic_vector(15 downto 0)  --PC+1����MFPCָ���EXE��
	);
	end component;
	
	--��������չ��Ԫ
	component ImmeExtendUnit
	port(
		 immeIn : in std_logic_vector(10 downto 0);		--ȡָ���[10:0]λ����Ϊ���ܵ�����������
		 immeSelect : in std_logic_vector(2 downto 0);  --���ܿ�����Controller����
		 
		 immeOut : out std_logic_vector(15 downto 0)		--��չ���������
	);
	end component;
	
	--MEM/WB�׶μĴ���
	component MemWbRegisters
		port(
			clk : in std_logic;
			rst : in std_logic;
			flashFinished : in std_logic;
			--����
			readMemDataIn : in std_logic_vector(15 downto 0);	--DataMemory����������
			ALUResultIn : in std_logic_vector(15 downto 0);		--ALU�ļ�����
			rdIn : in std_logic_vector(3 downto 0);				--Ŀ�ļĴ���
			--�����ź�
			regWriteIn : in std_logic;		--�Ƿ�Ҫд��
			memToRegIn : in std_logic;		--д��ʱѡ��readMemDataIn��'1'������ALUResultIn��'0'��
			
			dataToWB : out std_logic_vector(15 downto 0);		--д�ص�����
			rdOut : out std_logic_vector(3 downto 0);				--Ŀ�ļĴ�����"0xxx"-R0~R7,"1000"-SP,"1001"-IH,"1010"-T,"1110"-û��Ŀ�ļĴ���
			regWriteOut : out std_logic								--�Ƿ�Ҫд��
		);
	end component;
	
	--PC�ӷ��� ʵ��PC+1
	component PCAdder
		port( 
			adderIn : in std_logic_vector(15 downto 0);
			adderOut : out std_logic_vector(15 downto 0)
		);
	end component;
	
	--PC�Ĵ���
	component PCRegister
		port(	
			rst,clk : in std_logic;
			flashFinished : in std_logic;
			PCKeep : in std_logic;		--��HazardDetectionUnit�����Ŀ����ź�
			PCIn : in std_logic_vector(15 downto 0);		--ȡPCMux�����ֵ��ѡ������PCֵ��
			PCOut : out std_logic_vector(15 downto 0)		--�͸�IMȥȡָ��PC
		);
	end component;
	
	--Դ�Ĵ���1ѡ����
	component ReadReg1Mux
		port(
			rx : in std_logic_vector(2 downto 0);
			ry : in std_logic_vector(2 downto 0);			--R0~R7�е�һ��
			
			ReadReg1 : in std_logic_vector(2 downto 0);		--���ܿ�����Controller���ɵĿ����ź�
			
			ReadReg1Out : out std_logic_vector(3 downto 0)  --"0XXX"����R0~R7��"1000"=SP,"1001"=IH, "1010"=T, "1111"=û��
		);
	end component;
	
	--Դ�Ĵ���2ѡ����
	component ReadReg2Mux
		port(
			rx : in std_logic_vector(2 downto 0);
			ry : in std_logic_vector(2 downto 0);			--R0~R7�е�һ��
			
			ReadReg2 : in std_logic;					--���ܿ�����Controller���ɵĿ����ź�
			
			ReadReg2Out : out std_logic_vector(3 downto 0)  --"0XXX"����R0~R7, "1111"=û��
		);
	end component;
	
	--Ŀ�ļĴ���ѡ����
	component RdMux
		port(
			rx : in std_logic_vector(2 downto 0);
			ry : in std_logic_vector(2 downto 0);
			rz : in std_logic_vector(2 downto 0);			--R0~R7�е�һ��
			
			RegDst : in std_logic_vector(2 downto 0);		--���ܿ�����Controller���ɵĿ����ź�
			
			rdOut : out std_logic_vector(3 downto 0)		--"0XXX"����R0~R7��"1000"=SP,"1001"=IH, "1010"=T, "1111"=û��
		);
	end component;
	
	--�Ĵ�����
	component Registers
		port(
			clk : in std_logic;
			rst : in std_logic;
			flashFinished : in std_logic;
			
			ReadReg1In : in std_logic_vector(3 downto 0);  --"0XXX"����R0~R7��"1000"=SP,"1001"=IH, "1010"=T
			ReadReg2In : in std_logic_vector(3 downto 0);  --"0XXX"����R0~R7
			
			WriteReg : in std_logic_vector(3 downto 0);	  --��WB�׶δ��أ�Ŀ�ļĴ���
			WriteData : in std_logic_vector(15 downto 0);  --��WB�׶δ��أ�дĿ�ļĴ�����ֵ
			RegWrite : in std_logic;							  --��WB�׶δ��أ�RegWrite��дĿ�ļĴ����������ź�
			
			r0Out, r1Out, r2Out,r3Out,r4Out,r5Out,r6Out,r7Out : out std_logic_vector(15 downto 0);	--8����ͨ�Ĵ���
			
			ReadData1 : out std_logic_vector(15 downto 0); --�����ļĴ���1��ֵ
			ReadData2 : out std_logic_vector(15 downto 0); --�����ļĴ���2��ֵ
			dataT : out std_logic_vector(15 downto 0);
			dataSP : out std_logic_vector(15 downto 0);
			dataIH : out std_logic_vector(15 downto 0);
			
			RegisterState : out std_logic_vector(1 downto 0)
		);
	end component;
	
	--SWдָ���ڴ� �ṹ��ͻ
	component StructConflictUnit
	port(
		IdExMemWrite : in std_logic;
		ALUResultAsAddr : in std_logic_vector(15 downto 0);
		PC : in std_logic_vector(15 downto 0);
		
		IfIdFlush : out std_logic;		--IF/ID�����¸�ʱ�ӵ���ʱ����
		IdExFlush : out std_logic;		--ID/EX�����¸�ʱ�ӵ���ʱ����
		PCRollback : out std_logic		--PCMux��ѡ��PC
	);
	end component;
	
	component WriteDataMux
	port(
		--�����ź�
		ForwardSW : in std_logic_vector(1 downto 0);
		--��ѡ������
		ReadData2 : in std_logic_vector(15 downto 0);
		ExMemALUResult : in std_logic_vector(15 downto 0);	--����ָ���ALU���
		MemWbResult : in std_logic_vector(15 downto 0);	--������ָ��Ľ��
		--ѡ�������
		WriteDataOut : out std_logic_vector(15 downto 0)
	);
	end component;

	component dcm 
		port ( 
		CLKIN_IN   : in    std_logic; 
				 RST_IN     : in    std_logic; 
				 CLKFX_OUT  : out   std_logic; 
				 CLK0_OUT   : out   std_logic; 
				 CLK2X_OUT  : out   std_logic; 
				 LOCKED_OUT : out   std_logic
		);
	end component; 
	
	
	--���µ�signal����"ȫ�ֱ���"����������component��out
	
	--dcm
	signal CLKFX_OUT : std_logic;
	signal CLK0_OUT : std_logic;
	signal CLK2X_OUT : std_logic;
	signal LOCKED_OUT : std_logic;
	
	--clock
	signal clk : std_logic;
	signal clk_3 : std_logic;
	signal clk_registers : std_logic;
	
	--PCRegister
	signal PCOut : std_logic_vector(15 downto 0); 
	
	--PCAdder
	signal PCAddOne : std_logic_vector(15 downto 0);
	
	--IfIdRegisters
	signal rx, ry, rz :std_logic_vector(2 downto 0);
	signal imme_10_0 : std_logic_vector(10 downto 0);
	signal IfIdCommand, IfIdPC : std_logic_vector(15 downto 0);
	
	--RdMux
	signal rdMuxOut : std_logic_vector(3 downto 0);
	
	--controller
	signal controllerOut : std_logic_vector(20 downto 0);
	
	--Registers
	signal ReadData1, ReadData2 : std_logic_vector(15 downto 0);
	signal r0,r1,r2,r3,r4,r5,r6,r7,dataT,dataSP,dataIH : std_logic_vector(15 downto 0);
	signal RegisterState : std_logic_vector(1 downto 0);
	
	--ImmExtend
	signal extendedImme : std_logic_vector(15 downto 0);
	
	--IdExRegisters
	signal IdExPC : std_logic_vector(15 downto 0);
	signal IdExRd : std_logic_vector(3 downto 0);
	signal IdExReg1, IdExReg2 : std_logic_vector(3 downto 0);
	signal IdExALUSrcB : std_logic;
	signal IdExReadData1, IdExReadData2 : std_logic_vector(15 downto 0);
	signal IdExImme : std_logic_vector(15 downto 0);
	signal IdExRegWrite,IdExMemWrite,IdExMemRead,IdExMemToReg,IdExMFPC,IdExJump : std_logic;
	signal IdExALUOp : std_logic_vector(3 downto 0);
	
	--ExMemRegisters
	
	signal ExMemRd : std_logic_vector(3 downto 0);
	signal ExMemReadData2 : std_logic_vector(15 downto 0);
	signal ExMemALUResult : std_logic_vector(15 downto 0);	--����MFPCMuxѡ���Ľ��
	
	signal ExMemRegWrite : std_logic;
	signal ExMemRead, ExMemWrite, ExMemToReg: std_logic;
	
	--ForwardController
	signal ForwardA, ForwardB, ForwardSW : std_logic_vector(1 downto 0);
	
	--MemWbRegisters
	signal rdToWB : std_logic_vector(3 downto 0);
	signal dataToWB : std_logic_vector(15 downto 0);
	signal MemWbRegWrite : std_logic;
	
	--AMux
	signal AMuxOut : std_logic_vector(15 downto 0);
	
	--BMux
	signal BMuxOut : std_logic_vector(15 downto 0);
	
	--ALU
	signal ALUResult : std_logic_vector(15 downto 0);
	signal BranchJudge : std_logic;
	
	--PCMux
	signal PCMuxOut : std_logic_vector(15 downto 0);
	
	
	--HazardDetectionUnit
	signal PCKeep : std_logic;
	signal IfIdKeep : std_logic;
	signal LW_IdExFlush : std_logic;
	
		
	--MemoryUnit ����һ�󲿷ֶ�����cpu��port�����֣�
	signal DMDataOut : std_logic_vector(15 downto 0);
	signal IMInsOut : std_logic_vector(15 downto 0);
	signal MemoryState : std_logic_vector(1 downto 0);
	signal FlashStateOut : std_logic_vector(2 downto 0);
		
	--SWдָ���ڴ棨�ṹ��ͻ��
	signal SW_IfIdflush : std_logic;
	signal SW_IdExFlush : std_logic;
	signal PCRollback : std_logic;
	
	--ReadReg1Mux��2Mux��signal��
	signal ReadReg1MuxOut : std_logic_vector(3 downto 0);
	signal ReadReg2MuxOut : std_logic_vector(3 downto 0);
	
	--MFPCMux 
	signal MFPCMuxOut : std_logic_vector(15 downto 0);
	
	--digit rom
--	signal digitRomAddr : std_logic_vector(14 downto 0);
--	signal digitRomData : std_logic_vector(23 downto 0);
	
	--font rom
	signal fontRomAddr : std_logic_vector(10 downto 0);
	signal fontRomData : std_logic_vector(7 downto 0);
	
	--WriteDataMux
	signal WriteDataOut : std_logic_vector(15 downto 0);
	
	signal ram2AddrOutput : std_logic_vector(17 downto 0);
	signal flashFinished : std_logic;
	
	
	signal clkIn_clock : std_logic;	--����clock.vhd������ʱ��
	signal always_zero : std_logic := '0';	--��Ϊ����ź�
	
begin
	u1 : PCRegister
	port map(	
			rst => touch_btn(5),
			clk => clk_3,
			flashFinished => flashFinished,
			PCKeep => PCKeep,
			PCIn => PCMuxOut,
			PCOut => PCOut
	);
		
	u2 : PCAdder
	port map( 
			adderIn => PCOut,
			adderOut => PCAddOne
	);
		
	u3 : 	IfIdRegisters
	port map(
			rst => touch_btn(5),
			clk => clk_3,
			flashFinished => flashFinished,
			commandIn => IMInsOut,
			PCIn => PCAddOne,
			IfIdKeep => IfIdKeep,
			Branch_IfIdFlush => BranchJudge, 
			Jump_IfIdFlush => IdExJump,
			SW_IfIdFlush => SW_IfIdFlush,
			
			rx => rx,
			ry => ry,
			rz => rz,
			imme_10_0 => imme_10_0,
			commandOut => IfIdCommand,
			PCOut => IfIdPC
		);
		
	u4 : RdMux
	port map(
			rx => rx,
			ry => ry,
			rz => rz,
			
			RegDst => controllerOut(19 downto 17),
			rdOut => rdMuxOut
		);
		
	u5 : Controller
	port map(	
			commandIn => IfIdCommand,
			rst => touch_btn(5),
			controllerOut => controllerOut
			-- RegWrite(20) RegDst(19-17) ReadReg1(16-14) ReadReg2(13) 
			-- immeSelect(12-10) ALUSrcB(9) ALUOp(8-5) 
			-- MemRead(4) MemWrite(3) MemToReg(2) jump(1) MFPC(0)
		);
		
	u6 : Registers
	port map(
			clk => clk,
			rst => touch_btn(5),
			
			ReadReg1In => ReadReg1MuxOut,
			ReadReg2In => ReadReg2MuxOut,
			
			--����������MEM/WB�μĴ�������Ϊ������д�ضΣ�
			WriteReg => rdToWB,
			WriteData => dataToWB,
			RegWrite => MemWbRegWrite,
			
			flashFinished => flashFinished,
			
			r0Out => r0,
			r1Out => r1,
			r2Out => r2,
			r3Out => r3,
			r4Out => r4,
			r5Out => r5,
			r6Out => r6,
			r7Out => r7,
			dataT => dataT,
			dataSP => dataSP,
			dataIH => dataIH,
			RegisterState => RegisterState,
			
			ReadData1 => ReadData1,
			ReadData2 => ReadData2
		);
		
	u7 : ImmeExtendUnit
	port map(
			 immeIn => imme_10_0,
			 immeSelect => ControllerOut(12 downto 10),
			 
			 immeOut => extendedImme
		);
		
	u8 : IdExRegisters
	port map(
			clk => clk_3,
			rst => touch_btn(5),
			flashFinished => flashFinished,
			
			LW_IdExFlush => LW_IdExFlush,
			Branch_IdExFlush => BranchJudge,
			Jump_IdExFlush => IdExJump,
			SW_IdExFlush => SW_IdExFlush,
			
			PCIn => IfIdPC,
			rdIn => rdMuxOut,
			Reg1In => ReadReg1MuxOut,
			Reg2In => ReadReg2MuxOut,
			ALUSrcBIn => controllerOut(9),
			ReadData1In => ReadData1,
			ReadData2In => ReadData2,
			immeIn => extendedImme,
			
			MFPCIn => controllerOut(0),
			regWriteIn => controllerOut(20),
			memWriteIn => controllerOut(3),
			memReadIn => controllerOut(4),
			memToRegIn => controllerOut(2),
			jumpIn => controllerOut(1),
			ALUOpIn => controllerOut(8 downto 5),
		
			PCOut => IdExPC,
			rdOut => IdExRd,
			Reg1Out => IdExReg1,
			Reg2Out => IdExReg2,
			ALUSrcBOut => IdExALUSrcB,
			ReadData1Out => IdExReadData1,
			ReadData2Out => IdExReadData2,
			immeOut => IdExImme,
			
			MFPCOut => IdExMFPC,
			regWriteOut => IdExRegWrite,
			memWriteOut => IdExMemWrite,
			memReadOut => IdExMemRead,
			memToRegOut => IdExMemToReg,
			jumpOut => IdExJump,
			ALUOpOut => IdExALUOp
		);
		
	u9 : AMux
		port map(
			ForwardA => ForwardA,
			
			ReadData1 => IdExReadData1,
			ExMemALUResult => ExMemALUResult,
			MemWbResult => dataToWB,
			
			AsrcOut => AMuxOut
		);
		
	u10 : BMux
	port map(
			ForwardB => ForwardB,
			ALUSrcB => IdExALUSrcB,
			
			ReadData2 => IdExReadData2,
			imme => IdExImme,
			ExMemALUResult => ExMemALUResult,
			MemWbResult => dataToWB,
			
			BsrcOut => BMuxOut
		);	
		
	u11 : ForwardController
	port map(
			ExMemRd => ExMemRd,
			MemWbRd => rdToWB,
			
			--ExMemRegWrite => ExMemRegWrite,
			--MemWbRegWrite => WB,
			
			IdExALUsrcB => IdExALUSrcB,
			IdExMemWrite => IdExMemWrite,
			
			IdExReg1 => IdExReg1,
			IdExReg2 => IdExReg2,
			
			ForwardA => ForwardA,
			ForwardB => ForWardB,
			ForwardSW => ForWardSW
			
		);
	
	u12 : ALU
	port map(
			Asrc      	=> AMuxOut,
			Bsrc        => BMuxOut,
			ALUop		  	=> IdExALUOP,
			
			ALUresult  	=> ALUResult,
			branchJudge => BranchJudge
	);
	
	u13 : ExMemRegisters
	port map(
			clk => clk_3,
			rst => touch_btn(5),
			flashFinished => flashFinished,
			
			rdIn => IdExRd,
			MFPCMuxIn => MFPCMuxOut,
			readData2In => WriteDataOut,
			
			regWriteIn => IdExRegWrite,
			memReadIn => IdExMemRead,
			memWriteIn => IdExMemWrite,
			memToRegIn => IdExMemToReg,
						
			rdOut => ExMemRd,
			ALUResultOut => ExMemALUResult,
			readData2Out => ExMemReadData2,
			
			regWriteOut => ExMemRegWrite,
			memReadOut => ExMemRead,
			memWriteOut => ExMemWrite,
			memToRegOut => ExMemToReg
		);
	
	u14 : MemWbRegisters
	port map(
			clk => clk_3,
			rst => touch_btn(5),
			flashFinished => flashFinished,
			
			readMemDataIn => DMDataOut,
			ALUResultIn => ExMemALUResult,
			rdIn => ExMemRd,
			
			regWriteIn => ExMemRegWrite,
			memToRegIn => ExMemToReg,
			
			dataToWB => dataToWB,
			rdOut => rdToWB,
			regWriteOut => MemWbRegWrite
		);
	
	u15 : HazardDetectionUnit
	port map(
			IdExRd => IdExRd,
			IdExMemRead => IdExMemRead,
			
			ReadReg1 => ReadReg1MuxOut,
			ReadReg2 => ReadReg2MuxOut,
			
			PCKeep => PCKeep,
			IfIdKeep => IfIdKeep,
			IdExFlush => LW_IdExFlush
		);
		
	u16 : PCMux
	port map( 
			PCAddOne => PCAddOne,
			IdExPC => IdExPC,
			IdEximme => IdExImme,
			AsrcOut => AMuxOut,
			
			jump => IdExJump,
			BranchJudge => BranchJudge,
			PCRollback => PCRollback,
			
			PCOut => PCMuxOut
		);
	
	u17 : MemoryUnit
		port map( 
			clk => clk,
         rst => touch_btn(5),
			
			data_ready => uart_dataready,
			tbre => uart_tbre,
			tsre => uart_tsre,
         wrn => uart_wrn,
			rdn => uart_rdn,
			  
			MemRead => ExMemRead,
			MemWrite => ExMemWrite,
			
			dataIn => ExMemReadData2,
			
			ramAddr => ExMemALUResult,
			PCOut => PCOut,
			PCMuxOut => PCMuxOut,
			PCKeep => PCKeep,
			dataOut => DMDataOut,
			insOut => IMInsOut,
			
			MemoryState => MemoryState,
			FlashStateOut => FlashStateOut,
			flashFinished => flashFinished,
			
			ram1_addr => base_ram_addr(17 downto 0),
			ram2_addr => ext_ram_addr(17 downto 0),
			ram1_data => base_ram_data(15 downto 0),
			ram2_data => ext_ram_data(15 downto 0),
			
			ram2AddrOutput => ram2AddrOutput,
			
			ram1_en => base_ram_ce_n,
			ram1_oe => base_ram_oe_n,
			ram1_we => base_ram_we_n,
			ram2_en => ext_ram_ce_n,
			ram2_oe => ext_ram_oe_n,
			ram2_we => ext_ram_we_n,
			
			
			flash_addr => flash_a,
			flash_data => flash_data,
			
			flash_byte => flash_byte_n,
			flash_vpen => flash_vpen,
			flash_rp => flash_rp_n,
			flash_ce => flash_ce_n,
			flash_oe => flash_oe_n,
			flash_we => flash_we_n
		);

	u18 : Clock
	port map(
		rst => touch_btn(5),
		clk => clkIn_clock,
		
		clkout => clk,
		clk1 => clk_3,
		clk2 => clk_registers
	);
	
	
	u19 : StructConflictUnit
	port map(
			IdExMemWrite => IdExMemWrite,
			ALUResultAsAddr => ALUResult, ----���Ǹ�MFPCMuxOut����
			PC => PCOut,
			
			IfIdFlush => SW_IfIdflush,
			IdExFlush => SW_IdExFlush,
			PCRollback => PCRollback
	);

	
	
	u20 : MFPCMux
	port map(
			PCAddOne => IdExPC,
			ALUResult => ALUResult,
			MFPC => IdExMFPC,
		
			MFPCMuxOut => MFPCMuxOut
	);
	
	u21 : ReadReg1Mux
	port map(
			rx => rx,
			ry => ry,
			ReadReg1 => controllerOut(16 downto 14),
			
			ReadReg1Out => ReadReg1MuxOut
	);
	
	u22 : ReadReg2Mux
	port map(
			rx => rx,
			ry => ry,
			ReadReg2 => controllerOut(13),
			
			ReadReg2Out => ReadReg2MuxOut

	);
	
	u23 : VGA_Controller
	port map(
	--VGA Side
		hs => video_hsync,
		vs => video_vsync,
		color => video_pixel,
		de => video_de,
		v_clk => video_clk,
	--RAM side
--		R,G,B	: in  std_logic_vector (9 downto 0);
--		addr	: out std_logic_vector (18 downto 0);
	-- data
		r0 => r0,
		r1 => r1,
		r2 => r2,
		r3 => r3,
		r4 => r4,
		r5 => r5,
		r6 => r6,
		r7 => r7,
	--font rom
		romAddr => fontRomAddr,
		romData => fontRomdata,
	--pc
		PC => PCOut,
		CM => IMInsOut,
		Tdata => dataT,
		IHdata => dataIH,
		SPdata => dataSP,
	--Control Signals
		reset	=> touch_btn(5),
		CLK_in => clk_in
	);		
	--r0 <= "0110101010010111";
	--r1 <= "1011100010100110";
--	u24 : digit
--	port map(
--			clkA => clk_in,
--			addra => digitRomAddr,
--			douta => digitRomData
--	);
	
	u25 : fontRom
	port map(
		clka => clk_in,
		addra => fontRomAddr,
		douta => fontRomData
		);
	
	u26 : WriteDataMux 
	port map(
			ForwardSW => ForwardSW,
			
			ReadData2 => IdExReadData2,
			ExMemALUResult => ExMemALUResult,
			MemWbResult => dataToWB,
			
			WriteDataOut => WriteDataOut
		);
	
	u27 : dcm
	port map( 
				 CLKIN_IN   => clk_in,
				 RST_IN     => always_zero,
				 CLKFX_OUT  => CLKFX_OUT,
				 CLK0_OUT   => CLK0_OUT,
				 CLK2X_OUT  => CLK2X_OUT,
				 LOCKED_OUT => LOCKED_OUT
		);
	
	
	
	process(flash_data, MemoryState, FlashStateOut, RegisterState)
	--process(dataToWB, ForwardA, ForwardSW, rdToWB)
	--process(dataToWB, rdToWB, MemoryState, RegisterState)
	begin
		--leds(15 downto 14) <= RegisterState;
		--leds(13 downto 12) <= MemoryState;
		--leds(11 downto 9) <= FlashStateOut;
		--leds(15 downto 14) <= ForwardA;
		--leds(13 downto 12) <= ForwardSW;
		--leds(11 downto 8) <= rdToWB;
		--leds(7 downto 0) <= dataToWB(7 downto 0);
		
		--leds(8 downto 0) <= (others => '0');
		--leds <= flash_data;
	end process;
	
	--clk_chooser
	process(CLKFX_OUT, touch_btn(5), touch_btn(4))
	begin
		if dip_sw(0) = '1' then
			if touch_btn(5) = '0' then
				clkIn_clock <= '0';
			else
				clkIn_clock <= touch_btn(4);
			end if;
		else
			if touch_btn(5) = '0' then
				clkIn_clock <= '0';
			else 
				clkIn_clock <= CLKFX_OUT;
			end if;
		end if;
	end process;
	
	
	--jing <= PCOut;
	process(ram2AddrOutput)
	begin
		case ram2AddrOutput(7 downto 4) is
			when "0000" => leds(23 downto 17) <= "0111111";--0
			when "0001" => leds(23 downto 17) <= "0000110";--1
			when "0010" => leds(23 downto 17) <= "1011011";--2
			when "0011" => leds(23 downto 17) <= "1001111";--3
			when "0100" => leds(23 downto 17) <= "1100110";--4
			when "0101" => leds(23 downto 17) <= "1101101";--5
			when "0110" => leds(23 downto 17) <= "1111101";--6
			when "0111" => leds(23 downto 17) <= "0000111";--7
			when "1000" => leds(23 downto 17) <= "1111111";--8
			when "1001" => leds(23 downto 17) <= "1101111";--9
			when "1010" => leds(23 downto 17) <= "1110111";--A
			when "1011" => leds(23 downto 17) <= "1111100";--B
			when "1100" => leds(23 downto 17) <= "0111001";--C
			when "1101" => leds(23 downto 17) <= "1011110";--D
			when "1110" => leds(23 downto 17) <= "1111001";--E
			when "1111" => leds(23 downto 17) <= "1110001";--F
			when others => leds(23 downto 17) <= "0000000";
		end case;
		
		case ram2AddrOutput(3 downto 0) is
			when "0000" => leds(31 downto 25) <= "0111111";--0
			when "0001" => leds(31 downto 25) <= "0000110";--1
			when "0010" => leds(31 downto 25) <= "1011011";--2
			when "0011" => leds(31 downto 25) <= "1001111";--3
			when "0100" => leds(31 downto 25) <= "1100110";--4
			when "0101" => leds(31 downto 25) <= "1101101";--5
			when "0110" => leds(31 downto 25) <= "1111101";--6
			when "0111" => leds(31 downto 25) <= "0000111";--7
			when "1000" => leds(31 downto 25) <= "1111111";--8
			when "1001" => leds(31 downto 25) <= "1101111";--9
			when "1010" => leds(31 downto 25) <= "1110111";--A
			when "1011" => leds(31 downto 25) <= "1111100";--B
			when "1100" => leds(31 downto 25) <= "0111001";--C
			when "1101" => leds(31 downto 25) <= "1011110";--D
			when "1110" => leds(31 downto 25) <= "1111001";--E
			when "1111" => leds(31 downto 25) <= "1110001";--F
			when others => leds(31 downto 25) <= "0000000";
		end case;
	end process;
	
	process (IfIdPC,IMInsOut)
	   begin
	       leds(7 downto 0) <= IfIdPC(7 downto 0);
	       leds(15 downto 8) <= IMInsOut(7 downto 0);
	   end process;
	--base_ram_addr <= (others => '0');
end Behavioral;

