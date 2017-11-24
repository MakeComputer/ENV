library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Memory is
   port(
        -- clock
            clk: in std_logic;

        -- IN
            -- Data
            alu_result: in std_logic_vector(15 downto 0);
            write_data: in std_logic_vector(15 downto 0);

            -- Control
            control_in_mem: in type_control_mem;
            control_in_wb: in type_control_wb;

        -- MID
            -- data
            -- data_from_memory: out std_logic_vector(15 downto 0);
            -- data_from_alu_result: out std_logic_vector(15 downto 0);

        -- OUT
            -- data
            data_to_write_back: out std_logic_vector(15 downto 0);
            --
            mem_wb_rd: out std_logic_vector(2 downto 0);
            -- Control
            control_out_wb: out type_control_wb
        );
end entity ; -- Memory

architecture Memery_bhv of Memory is

	signal 

begin

end architecture ; -- Memery_bhv