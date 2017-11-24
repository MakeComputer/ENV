library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--control signal list
--extension
--7-0(S) 000, 3-0(S) 001, 10-0(S) 010, 4-0(S) 100, 4-2(Z) 101, 7-0(Z) 110;
--(ALU)exe_alu_rx
--R[x] 00, R[y] 01, SP 10, PC 11;
--(ALU)exe_alu_ry
--immediate 00, R[y] 01, R[x] 10;
--exe_select_goal
--R[x] 000, R[y] 001, R[z] 010, SP 011, RA 100, IH 101, T 110;
--(ALU)exe_alu_op
--+ 000, - 001, 010 &, 011 |, 100 <<(logical), 101 >>(arithmetic), 110 <<(logical without judge);
--wb_memmory_or_alu_out
--0000 aluout, 0001 memory, 0010 R[x], 0011 R[y], 0100 IH, 0101 RA, 0110 T, 0111 PC, 1000 RPC, 1001 immediate, 1010 T';
--branch
--000 PC+1, 001 B, 010 BEQZ, 011 BNEZ, 100 BTEQZ, 101 JAJR, 110 JR, 111 JRRA; 
--memoryWrite
--00 nothing, 10 write R[x], 11 write R[y];
--where
-- 0 Rx, 1 Ry;


entity decoder is
	port(
		instruction: in std_logic_vector(15 downto 0);
	
		extension: out std_logic_vector(2 downto 0);                                  
		branch: out std_logic_vector(2 downto 0);
		wb_memmory_or_alu_out: out std_logic;
		exe_select_goal: out std_logic_vector(2 downto 0);
		exe_alu_op: out std_logic_vector(2 downto 0);

		exe_alu_rx: out std_logic_vector(1 downto 0);
		exe_alu_ry: out std_logic_vector(1 downto 0);

		memoryWrite: out std_logic_vector(1 downto 0);
		where: out std_logic;

		memoryRead: out std_logic;
		registerWrite: out std_logic
	);
end decoder;

architecture behavior of decoder is
begin
	process(instruction)
	begin
		case instruction(15 downto 11) is
			when "01001" =>                                     --addiu
				extension <= "000";
				branch <= "000";
				where <= "00";
				wb_memmory_or_alu_out <= "0000";
				exe_select_goal <= "000";
				exe_alu_op <= "000";
				exe_alu_rx <= "00";
				exe_alu_ry <= "00";
				memoryRead <= '0';
				memoryWrite <= "00";
				RegisterWrite <= '1';
			when "01000" =>                                     --addiu3
				extension <= "001";
				branch <= "000";
				where <= "00";
				wb_memmory_or_alu_out <= "0000";
				exe_select_goal <= "001";
				exe_alu_op <= "000";
				exe_alu_rx <= "00";
				exe_alu_ry <= "00";
				memoryRead <= '0';
				memoryWrite <= "00";
				RegisterWrite <= '1';
			when "11100" =>
				case instruction(1 downto 0) is
					when "01" =>                                 --addu
						extension <= "000";
						branch <= "000";
						where <= "00";
						wb_memmory_or_alu_out <= "0000";
						exe_select_goal <= "010";
						exe_alu_op <= "000";
						exe_alu_rx <= "00";
						exe_alu_ry <= "01";
						memoryRead <= '0';
						memoryWrite <= "00";
						RegisterWrite <= '1';
					when "11" =>                                 --subu
						extension <= "000";
						branch <= "000";
						where <= "00";
						wb_memmory_or_alu_out <= "0000";
						exe_select_goal <= "010";
						exe_alu_op <= "001";
						exe_alu_rx <= "00";
						exe_alu_ry <= "01";
						memoryRead <= '0';
						memoryWrite <= "00";
						RegisterWrite <= '1';
					when others =>
						extension <= "000";
						branch <= "000";
						where <= "00";
						wb_memmory_or_alu_out <= "0000";
						exe_select_goal <= "000";
						exe_alu_op <= "000";
						exe_alu_rx <= "00";
						exe_alu_ry <= "00";
						memoryRead <= '0';
						memoryWrite <= "00";
						RegisterWrite <= '0';
				end case;
			when "01100" =>
				case instruction(10 downto 8) is
					when "011" =>                              --addsp
						extension <= "000";
						branch <= "000";
						where <= "00";
						wb_memmory_or_alu_out <= "0000";
						exe_select_goal <= "011";
						exe_alu_op <= "000";
						exe_alu_rx <= "10";
						exe_alu_ry <= "00";
						memoryRead <= '0';
						memoryWrite <= "00";
						RegisterWrite <= '1';
					when "000" =>                              --bteqz
						extension <= "000";
						branch <= "100";
						where <= "00";
						wb_memmory_or_alu_out <= "0000";
						exe_select_goal <= "000";
						exe_alu_op <= "000";
						exe_alu_rx <= "00";
						exe_alu_ry <= "00";
						memoryRead <= '0';
						memoryWrite <= "00";
						RegisterWrite <= '0';
					when "100" =>                              --mtsp
						extension <= "000";
						branch <= "000";
						where <= "00";
						wb_memmory_or_alu_out <= "0010";
						exe_select_goal <= "011";
						exe_alu_op <= "000";
						exe_alu_rx <= "00";
						exe_alu_ry <= "00";
						memoryRead <= '0';
						memoryWrite <= "00";
						RegisterWrite <= '1';
					when others =>
						extension <= "000";
						branch <= "000";
						where <= "00";
						wb_memmory_or_alu_out <= "0000";
						exe_select_goal <= "000";
						exe_alu_op <= "000";
						exe_alu_rx <= "00";
						exe_alu_ry <= "00";
						memoryRead <= '0';
						memoryWrite <= "00";
						RegisterWrite <= '0';
				end case;
			when "11101" =>                                    
				case instruction(4 downto 0) is
					when "00100" =>                            --sllv
						extension <= "000";
						branch <= "000";
						where <= "00";
						wb_memmory_or_alu_out <= "0000";
						exe_select_goal <= "001";
						exe_alu_op <= "110";
						exe_alu_rx <= "01";
						exe_alu_ry <= "10";
						memoryRead <= '0';
						memoryWrite <= "00";
						RegisterWrite <= '1';
					when "01100" =>                            --and
						extension <= "000";
						branch <= "000";
						where <= "00";
						wb_memmory_or_alu_out <= "0000";
						exe_select_goal <= "000";
						exe_alu_op <= "010";
						exe_alu_rx <= "00";
						exe_alu_ry <= "01";
						memoryRead <= '0';
						memoryWrite <= "00";
						RegisterWrite <= '1';
					when "01101" =>                            --or
						extension <= "000";
						branch <= "000";
						where <= "00";
						wb_memmory_or_alu_out <= "0000";
						exe_select_goal <= "000";
						exe_alu_op <= "011";
						exe_alu_rx <= "00";
						exe_alu_ry <= "01";
						memoryRead <= '0';
						memoryWrite <= "00";
						RegisterWrite <= '1';
					when "01010" =>                            --cmp
						extension <= "000";
						branch <= "000";
						where <= "00";
						wb_memmory_or_alu_out <= "0110";
						exe_select_goal <= "110";
						exe_alu_op <= "001";
						exe_alu_rx <= "00";
						exe_alu_ry <= "01";
						memoryRead <= '0';
						memoryWrite <= "00";
						RegisterWrite <= '1';
					when "00000" =>
						case instruction(7 downto 5) is
							when "110" =>                      --jalr
								extension <= "000";
								branch <= "101";
								where <= "01";
								wb_memmory_or_alu_out <= "1000";
								exe_select_goal <= "100";
								exe_alu_op <= "000";
								exe_alu_rx <= "00";
								exe_alu_ry <= "00";
								memoryRead <= '0';
								memoryWrite <= "00";
								RegisterWrite <= '1';
							when "000" =>                      --jr
								extension <= "000";
								branch <= "110";
								where <= "01";
								wb_memmory_or_alu_out <= "0000";
								exe_select_goal <= "000";
								exe_alu_op <= "000";
								exe_alu_rx <= "00";
								exe_alu_ry <= "00";
								memoryRead <= '0';
								memoryWrite <= "00";
								RegisterWrite <= '0';
							when "001" =>                      --jrra
								extension <= "000";
								branch <= "101";
								where <= "10";
								wb_memmory_or_alu_out <= "0000";
								exe_select_goal <= "000";
								exe_alu_op <= "000";
								exe_alu_rx <= "00";
								exe_alu_ry <= "00";
								memoryRead <= '0';
								memoryWrite <= "00";
								RegisterWrite <= '0';
							when "010" =>                      --mfpc
								extension <= "000";
								branch <= "101";
								where <= "00";
								wb_memmory_or_alu_out <= "0111";
								exe_select_goal <= "000";
								exe_alu_op <= "000";
								exe_alu_rx <= "00";
								exe_alu_ry <= "00";
								memoryRead <= '0';
								memoryWrite <= "00";
								RegisterWrite <= '1';
							when others =>
								extension <= "000";
								branch <= "000";
								where <= "00";
								wb_memmory_or_alu_out <= "0000";
								exe_select_goal <= "000";
								exe_alu_op <= "000";
								exe_alu_rx <= "00";
								exe_alu_ry <= "00";
								memoryRead <= '0';
								memoryWrite <= "00";
								RegisterWrite <= '0';
						end case;
					when others =>
						extension <= "000";
						branch <= "000";
						where <= "00";
						wb_memmory_or_alu_out <= "0000";
						exe_select_goal <= "000";
						exe_alu_op <= "000";
						exe_alu_rx <= "00";
						exe_alu_ry <= "00";
						memoryRead <= '0';
						memoryWrite <= "00";
						RegisterWrite <= '0';
				end case;
				
			when "00010" =>                                    --b
				extension <= "010";
				branch <= "001";
				where <= "00";
				wb_memmory_or_alu_out <= "0000";
				exe_select_goal <= "000";
				exe_alu_op <= "000";
				exe_alu_rx <= "00";
				exe_alu_ry <= "00";
				memoryRead <= '0';
				memoryWrite <= "00";
				RegisterWrite <= '0';
			when "00100" =>                                    --beqz
				extension <= "000";
				branch <= "010";
				where <= "00";
				wb_memmory_or_alu_out <= "0000";
				exe_select_goal <= "000";
				exe_alu_op <= "000";
				exe_alu_rx <= "00";
				exe_alu_ry <= "00";
				memoryRead <= '0';
				memoryWrite <= "00";
				RegisterWrite <= '0';
			when "00101" =>                                    --bnez
				extension <= "000";
				branch <= "011";
				where <= "00";
				wb_memmory_or_alu_out <= "0000";
				exe_select_goal <= "000";
				exe_alu_op <= "000";
				exe_alu_rx <= "00";
				exe_alu_ry <= "00";
				memoryRead <= '0';
				memoryWrite <= "00";
				RegisterWrite <= '0';
			when "01101" =>                                    --li
				extension <= "110";
				branch <= "000";
				where <= "00";
				wb_memmory_or_alu_out <= "1001";
				exe_select_goal <= "000";
				exe_alu_op <= "000";
				exe_alu_rx <= "00";
				exe_alu_ry <= "00";
				memoryRead <= '0';
				memoryWrite <= "00";
				RegisterWrite <= '1';
			when "10011" =>                                    --lw
				extension <= "100";
				branch <= "000";
				where <= "00";
				wb_memmory_or_alu_out <= "0001";
				exe_select_goal <= "001";
				exe_alu_op <= "000";
				exe_alu_rx <= "00";
				exe_alu_ry <= "00";
				memoryRead <= '1';
				memoryWrite <= "00";
				RegisterWrite <= '1';
			when "10010" =>                                    --lw_sp
				extension <= "000";
				branch <= "000";
				where <= "00";
				wb_memmory_or_alu_out <= "0001";
				exe_select_goal <= "000";
				exe_alu_op <= "000";
				exe_alu_rx <= "10";
				exe_alu_ry <= "00";
				memoryRead <= '1';
				memoryWrite <= "00";
				RegisterWrite <= '1';
			when "11110" =>
				case instruction(7 downto 0) is
					when "00000000" =>                         --mfih
						extension <= "000";
						branch <= "000";
						where <= "00";
						wb_memmory_or_alu_out <= "0100";
						exe_select_goal <= "000";
						exe_alu_op <= "010";
						exe_alu_rx <= "00";
						exe_alu_ry <= "00";
						memoryRead <= '0';
						memoryWrite <= "00";
						RegisterWrite <= '1';
					when "00000001" =>                         --mtih
						extension <= "000";
						branch <= "000";
						where <= "00";
						wb_memmory_or_alu_out <= "0010";
						exe_select_goal <= "101";
						exe_alu_op <= "000";
						exe_alu_rx <= "00";
						exe_alu_ry <= "00";
						memoryRead <= '0';
						memoryWrite <= "00";
						RegisterWrite <= '1';
					when others =>
						extension <= "000";
						branch <= "000";
						where <= "00";
						wb_memmory_or_alu_out <= "0000";
						exe_select_goal <= "000";
						exe_alu_op <= "000";
						exe_alu_rx <= "00";
						exe_alu_ry <= "00";
						memoryRead <= '0';
						memoryWrite <= "00";
						RegisterWrite <= '0';
				end case;
			when "01111" =>                                    --move
				extension <= "000";
				branch <= "000";
				where <= "00";
				wb_memmory_or_alu_out <= "0011";
				exe_select_goal <= "000";
				exe_alu_op <= "000";
				exe_alu_rx <= "00";
				exe_alu_ry <= "00";
				memoryRead <= '0';
				memoryWrite <= "00";
				RegisterWrite <= '1';
			when "00001" =>                                    --nop
				extension <= "000";
				branch <= "000";
				where <= "00";
				wb_memmory_or_alu_out <= "0000";
				exe_select_goal <= "000";
				exe_alu_op <= "000";
				exe_alu_rx <= "00";
				exe_alu_ry <= "00";
				memoryRead <= '0';
				memoryWrite <= "00";
				RegisterWrite <= '0';
			when "00110" =>
				case instruction(1 downto 0) is
					when "00" =>                               --sll
						extension <= "101";
						branch <= "000";
						where <= "00";
						wb_memmory_or_alu_out <= "0000";
						exe_select_goal <= "000";
						exe_alu_op <= "100";
						exe_alu_rx <= "01";
						exe_alu_ry <= "00";
						memoryRead <= '0';
						memoryWrite <= "00";
						RegisterWrite <= '1';
					when "11" =>                               --sra
						extension <= "101";
						branch <= "000";
						where <= "00";
						wb_memmory_or_alu_out <= "0000";
						exe_select_goal <= "000";
						exe_alu_op <= "101";
						exe_alu_rx <= "01";
						exe_alu_ry <= "00";
						memoryRead <= '0';
						memoryWrite <= "00";
						RegisterWrite <= '1';
					when others =>                
						extension <= "000";
						branch <= "000";
						where <= "00";
						wb_memmory_or_alu_out <= "0000";
						exe_select_goal <= "000";
						exe_alu_op <= "000";
						exe_alu_rx <= "00";
						exe_alu_ry <= "00";
						memoryRead <= '0';
						memoryWrite <= "00";
						RegisterWrite <= '0';
				end case;
			when "01011" =>                                    --sltui
				extension <= "110";
				branch <= "000";
				where <= "00";
				wb_memmory_or_alu_out <= "1010";
				exe_select_goal <= "110";
				exe_alu_op <= "001";
				exe_alu_rx <= "00";
				exe_alu_ry <= "00";
				memoryRead <= '0';
				memoryWrite <= "00";
				RegisterWrite <= '1';
			when "11011" =>                                    --sw
				extension <= "100";
				branch <= "000";
				where <= "00";
				wb_memmory_or_alu_out <= "0000";
				exe_select_goal <= "000";
				exe_alu_op <= "000";
				exe_alu_rx <= "00";
				exe_alu_ry <= "00";
				memoryRead <= '0';
				memoryWrite <= "11";
				RegisterWrite <= '0';
			when "11010" =>                                    --sw_sp
				extension <= "000";
				branch <= "000";
				where <= "00";
				wb_memmory_or_alu_out <= "0000";
				exe_select_goal <= "000";
				exe_alu_op <= "000";
				exe_alu_rx <= "10";
				exe_alu_ry <= "00";
				memoryRead <= '0';
				memoryWrite <= "10";
				RegisterWrite <= '0';
			when others =>                
				extension <= "000";
				branch <= "000";
				where <= "00";
				wb_memmory_or_alu_out <= "0000";
				exe_select_goal <= "000";
				exe_alu_op <= "000";
				exe_alu_rx <= "00";
				exe_alu_ry <= "00";
				memoryRead <= '0';
				memoryWrite <= "00";
				RegisterWrite <= '0';
		end case;
	end process;
end behavior;