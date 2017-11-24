-------------------------------------------------
decoder
control signals:

extension
the extension control signal a-b(S\Z) xxx represents that to do (Sign\Zero) extension to instruction(a downto b);
--7-0(S) 000, 3-0(S) 001, 10-0(S) 010, 4-0(S) 100, 4-2(Z) 101, 7-0(Z) 110;

the sourceA control signal represents the source of the first parameter of the ALU, which could be one of the following registers: R[x],R[y],SP,PC; 
--(ALU)sourceA
--R[x] 00, R[y] 01, SP 10, PC 11;

the sourceB control signal is similar to the sourceA;
--(ALU)sourceB
--immediate 00, R[y] 01, R[x] 10;
--destination
--R[x] 000, R[y] 001, R[z] 010, SP 011, RA 100, IH 101, T 110;

the operation control signal represents what the ALU will do at the execute stage,
note that the logical extension operation should be done after checking whether the immediate parameter is zero,(these operations are for instruction SLL and SRA)
if so, the immediate patameter should be reset to 8,
naturely, the logical extension without judge means that there is no need to check;
--(ALU)operation
--+ 000, - 001, 010 &, 011 |, 100 <<(logical), 101 >>(arithmetic), 110 <<(logical without judge);

the toRegister control signal represents which data will be wrote to the register destination, which could be the result of alu, memory data, or a register.

specially, the T and T' signals mean that the data to write to the T register depands on the result of the alu(see instruction CMP and SLTUI for more details);
--toRegister
--0000 aluout, 0001 memory, 0010 R[x], 0011 R[y], 0100 IH, 0101 RA, 0110 T, 0111 PC, 1000 RPC, 1001 immediate, 1010 T';

the branch control signal represents the different jump instructions;
--branch
--000 PC+1, 001 B, 010 BEQZ, 011 BNEZ, 100 BTEQZ, 101 JAJR, 110 JR, 111 JRRA; 

the memoryWrite control signal tells the data source to write to the memory;
--memoryWrite
--00 nothing, 10 write R[x], 11 write R[y];

the where control signal tells where the program counter should jump;
--where
--00 pc+immediate, 01 R[x], 10 RA;
-------------------------------------------------
