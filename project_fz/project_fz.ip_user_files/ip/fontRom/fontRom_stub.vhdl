-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
-- Date        : Fri Dec  1 16:07:01 2017
-- Host        : samsung running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub E:/project_fz/project_fz.srcs/sources_1/ip/fontRom/fontRom_stub.vhdl
-- Design      : fontRom
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tlfgg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fontRom is
  Port ( 
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end fontRom;

architecture stub of fontRom is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,addra[10:0],douta[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_3_6,Vivado 2017.1";
begin
end;
