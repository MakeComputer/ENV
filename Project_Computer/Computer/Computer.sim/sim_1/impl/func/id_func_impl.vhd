-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
-- Date        : Tue Nov 28 16:44:02 2017
-- Host        : samsung running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               E:/GitHub/Computer/Computer.sim/sim_1/impl/func/id_func_impl.vhd
-- Design      : Computer
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Flash is
  port (
    flash_oe_OBUF : out STD_LOGIC;
    flash_we_OBUF : out STD_LOGIC;
    \flash_data_IOBUF[15]_inst_i_1\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 16 downto 0 );
    \tflash_data_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_in_BUFG : in STD_LOGIC;
    rst : in STD_LOGIC;
    flash_read_reg : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC;
    \flash_data_IOBUF[15]_inst_i_1_0\ : in STD_LOGIC;
    \flash_addr_input_reg[17]\ : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \flash_data_IOBUF[15]_inst_i_1_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end Flash;

architecture STRUCTURE of Flash is
  signal \FSM_onehot_state[5]_i_1_n_1\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_1_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_1_[0]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_1_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_1_[1]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_1_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_1_[2]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_1_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_1_[3]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_1_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_1_[4]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_1_[5]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_1_[5]\ : signal is "yes";
  signal \dataout[15]_i_1_n_1\ : STD_LOGIC;
  signal flash_addr0 : STD_LOGIC;
  signal flash_oe2_out : STD_LOGIC;
  signal flash_we1_out : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[3]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[4]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[5]\ : label is "yes";
begin
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => flash_read_reg,
      O => \FSM_onehot_state[5]_i_1_n_1\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => \FSM_onehot_state[5]_i_1_n_1\,
      D => \FSM_onehot_state_reg_n_1_[5]\,
      PRE => rst,
      Q => \FSM_onehot_state_reg_n_1_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => \FSM_onehot_state[5]_i_1_n_1\,
      CLR => rst,
      D => \FSM_onehot_state_reg_n_1_[0]\,
      Q => \FSM_onehot_state_reg_n_1_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => \FSM_onehot_state[5]_i_1_n_1\,
      CLR => rst,
      D => \FSM_onehot_state_reg_n_1_[1]\,
      Q => \FSM_onehot_state_reg_n_1_[2]\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => \FSM_onehot_state[5]_i_1_n_1\,
      CLR => rst,
      D => \FSM_onehot_state_reg_n_1_[2]\,
      Q => \FSM_onehot_state_reg_n_1_[3]\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => \FSM_onehot_state[5]_i_1_n_1\,
      CLR => rst,
      D => \FSM_onehot_state_reg_n_1_[3]\,
      Q => \FSM_onehot_state_reg_n_1_[4]\
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => \FSM_onehot_state[5]_i_1_n_1\,
      CLR => rst,
      D => \FSM_onehot_state_reg_n_1_[4]\,
      Q => \FSM_onehot_state_reg_n_1_[5]\
    );
\dataout[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_1_[4]\,
      I1 => flash_read_reg,
      O => \dataout[15]_i_1_n_1\
    );
\dataout_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => \dataout[15]_i_1_n_1\,
      CLR => rst,
      D => \flash_data_IOBUF[15]_inst_i_1_1\(0),
      Q => \tflash_data_reg[15]\(0)
    );
\dataout_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => \dataout[15]_i_1_n_1\,
      CLR => rst,
      D => \flash_data_IOBUF[15]_inst_i_1_1\(10),
      Q => \tflash_data_reg[15]\(10)
    );
\dataout_reg[11]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => \dataout[15]_i_1_n_1\,
      D => \flash_data_IOBUF[15]_inst_i_1_1\(11),
      PRE => rst,
      Q => \tflash_data_reg[15]\(11)
    );
\dataout_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => \dataout[15]_i_1_n_1\,
      CLR => rst,
      D => \flash_data_IOBUF[15]_inst_i_1_1\(12),
      Q => \tflash_data_reg[15]\(12)
    );
\dataout_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => \dataout[15]_i_1_n_1\,
      CLR => rst,
      D => \flash_data_IOBUF[15]_inst_i_1_1\(13),
      Q => \tflash_data_reg[15]\(13)
    );
\dataout_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => \dataout[15]_i_1_n_1\,
      CLR => rst,
      D => \flash_data_IOBUF[15]_inst_i_1_1\(14),
      Q => \tflash_data_reg[15]\(14)
    );
\dataout_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => \dataout[15]_i_1_n_1\,
      CLR => rst,
      D => \flash_data_IOBUF[15]_inst_i_1_1\(15),
      Q => \tflash_data_reg[15]\(15)
    );
\dataout_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => \dataout[15]_i_1_n_1\,
      CLR => rst,
      D => \flash_data_IOBUF[15]_inst_i_1_1\(1),
      Q => \tflash_data_reg[15]\(1)
    );
\dataout_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => \dataout[15]_i_1_n_1\,
      CLR => rst,
      D => \flash_data_IOBUF[15]_inst_i_1_1\(2),
      Q => \tflash_data_reg[15]\(2)
    );
\dataout_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => \dataout[15]_i_1_n_1\,
      CLR => rst,
      D => \flash_data_IOBUF[15]_inst_i_1_1\(3),
      Q => \tflash_data_reg[15]\(3)
    );
\dataout_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => \dataout[15]_i_1_n_1\,
      CLR => rst,
      D => \flash_data_IOBUF[15]_inst_i_1_1\(4),
      Q => \tflash_data_reg[15]\(4)
    );
\dataout_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => \dataout[15]_i_1_n_1\,
      CLR => rst,
      D => \flash_data_IOBUF[15]_inst_i_1_1\(5),
      Q => \tflash_data_reg[15]\(5)
    );
\dataout_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => \dataout[15]_i_1_n_1\,
      CLR => rst,
      D => \flash_data_IOBUF[15]_inst_i_1_1\(6),
      Q => \tflash_data_reg[15]\(6)
    );
\dataout_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => \dataout[15]_i_1_n_1\,
      CLR => rst,
      D => \flash_data_IOBUF[15]_inst_i_1_1\(7),
      Q => \tflash_data_reg[15]\(7)
    );
\dataout_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => \dataout[15]_i_1_n_1\,
      CLR => rst,
      D => \flash_data_IOBUF[15]_inst_i_1_1\(8),
      Q => \tflash_data_reg[15]\(8)
    );
\dataout_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => \dataout[15]_i_1_n_1\,
      CLR => rst,
      D => \flash_data_IOBUF[15]_inst_i_1_1\(9),
      Q => \tflash_data_reg[15]\(9)
    );
\flash_addr[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_1_[3]\,
      I1 => rst_IBUF,
      I2 => flash_read_reg,
      O => flash_addr0
    );
\flash_addr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr0,
      D => \flash_addr_input_reg[17]\(9),
      Q => Q(9),
      R => '0'
    );
\flash_addr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr0,
      D => \flash_addr_input_reg[17]\(10),
      Q => Q(10),
      R => '0'
    );
\flash_addr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr0,
      D => \flash_addr_input_reg[17]\(11),
      Q => Q(11),
      R => '0'
    );
\flash_addr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr0,
      D => \flash_addr_input_reg[17]\(12),
      Q => Q(12),
      R => '0'
    );
\flash_addr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr0,
      D => \flash_addr_input_reg[17]\(13),
      Q => Q(13),
      R => '0'
    );
\flash_addr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr0,
      D => \flash_addr_input_reg[17]\(14),
      Q => Q(14),
      R => '0'
    );
\flash_addr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr0,
      D => \flash_addr_input_reg[17]\(15),
      Q => Q(15),
      R => '0'
    );
\flash_addr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr0,
      D => \flash_addr_input_reg[17]\(16),
      Q => Q(16),
      R => '0'
    );
\flash_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr0,
      D => \flash_addr_input_reg[17]\(0),
      Q => Q(0),
      R => '0'
    );
\flash_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr0,
      D => \flash_addr_input_reg[17]\(1),
      Q => Q(1),
      R => '0'
    );
\flash_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr0,
      D => \flash_addr_input_reg[17]\(2),
      Q => Q(2),
      R => '0'
    );
\flash_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr0,
      D => \flash_addr_input_reg[17]\(3),
      Q => Q(3),
      R => '0'
    );
\flash_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr0,
      D => \flash_addr_input_reg[17]\(4),
      Q => Q(4),
      R => '0'
    );
\flash_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr0,
      D => \flash_addr_input_reg[17]\(5),
      Q => Q(5),
      R => '0'
    );
\flash_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr0,
      D => \flash_addr_input_reg[17]\(6),
      Q => Q(6),
      R => '0'
    );
\flash_addr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr0,
      D => \flash_addr_input_reg[17]\(7),
      Q => Q(7),
      R => '0'
    );
\flash_addr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr0,
      D => \flash_addr_input_reg[17]\(8),
      Q => Q(8),
      R => '0'
    );
\flash_data_IOBUF[15]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F302"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_1_[3]\,
      I1 => \FSM_onehot_state_reg_n_1_[1]\,
      I2 => flash_read_reg,
      I3 => \flash_data_IOBUF[15]_inst_i_1_0\,
      O => \flash_data_IOBUF[15]_inst_i_1\
    );
flash_oe_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_1_[4]\,
      I1 => \FSM_onehot_state_reg_n_1_[3]\,
      I2 => flash_read_reg,
      O => flash_oe2_out
    );
flash_oe_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_oe2_out,
      D => \FSM_onehot_state_reg_n_1_[4]\,
      PRE => rst,
      Q => flash_oe_OBUF
    );
flash_we_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_1_[2]\,
      I1 => \FSM_onehot_state_reg_n_1_[0]\,
      I2 => flash_read_reg,
      O => flash_we1_out
    );
flash_we_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_we1_out,
      D => \FSM_onehot_state_reg_n_1_[2]\,
      PRE => rst,
      Q => flash_we_OBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity alu is
  port (
    aluout_in : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \s_forward_datay_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_from_forwardy_reg : in STD_LOGIC;
    \s_alu_op_reg[0]\ : in STD_LOGIC;
    \s_alu_op_reg[1]\ : in STD_LOGIC;
    \s_alu_op_reg[1]_0\ : in STD_LOGIC;
    s_from_forwardy_reg_0 : in STD_LOGIC;
    \s_alu_op_reg[1]_1\ : in STD_LOGIC;
    \s_alu_mux_ry_reg[1]\ : in STD_LOGIC;
    \s_alu_mux_ry_reg[1]_0\ : in STD_LOGIC;
    s_from_forwardy_reg_1 : in STD_LOGIC;
    \s_alu_op_reg[0]_0\ : in STD_LOGIC;
    \s_rx_reg[8]\ : in STD_LOGIC;
    \s_alu_op_reg[0]_1\ : in STD_LOGIC;
    s_from_forwardy_reg_2 : in STD_LOGIC;
    \s_alu_op_reg[1]_2\ : in STD_LOGIC;
    s_from_forwardy_reg_3 : in STD_LOGIC;
    \s_forward_datay_reg[0]_0\ : in STD_LOGIC;
    \s_alu_op_reg[0]_2\ : in STD_LOGIC;
    \s_ry_reg[11]\ : in STD_LOGIC;
    \s_alu_op_reg[2]\ : in STD_LOGIC;
    \s_rx_reg[7]\ : in STD_LOGIC;
    \s_alu_op_reg[1]_3\ : in STD_LOGIC;
    \s_alu_op_reg[1]_4\ : in STD_LOGIC;
    \s_rx_reg[6]\ : in STD_LOGIC;
    \s_alu_op_reg[2]_0\ : in STD_LOGIC;
    \s_alu_op_reg[1]_5\ : in STD_LOGIC;
    \s_alu_op_reg[1]_6\ : in STD_LOGIC;
    \s_rx_reg[6]_0\ : in STD_LOGIC;
    \s_alu_op_reg[0]_3\ : in STD_LOGIC;
    s_from_forwardy_reg_4 : in STD_LOGIC;
    \s_rx_reg[5]\ : in STD_LOGIC;
    \s_ry_reg[15]\ : in STD_LOGIC;
    \s_ry_reg[15]_0\ : in STD_LOGIC;
    \s_alu_op_reg[1]_7\ : in STD_LOGIC;
    s_from_forwardy_reg_5 : in STD_LOGIC;
    \s_rx_reg[4]\ : in STD_LOGIC;
    s_from_forwardy_reg_6 : in STD_LOGIC;
    \s_alu_op_reg[1]_8\ : in STD_LOGIC;
    s_from_forwardy_reg_7 : in STD_LOGIC;
    \s_rx_reg[3]\ : in STD_LOGIC;
    \s_ry_reg[10]\ : in STD_LOGIC;
    \s_alu_op_reg[0]_4\ : in STD_LOGIC;
    \s_rx_reg[2]\ : in STD_LOGIC;
    \s_rx_reg[9]\ : in STD_LOGIC;
    \s_alu_op_reg[0]_5\ : in STD_LOGIC;
    \s_rx_reg[1]\ : in STD_LOGIC;
    \s_rx_reg[3]_0\ : in STD_LOGIC;
    s_from_forwardy_reg_8 : in STD_LOGIC;
    \s_alu_op_reg[1]_9\ : in STD_LOGIC;
    s_from_forwardy_reg_9 : in STD_LOGIC;
    \s_rx_reg[2]_0\ : in STD_LOGIC;
    \s_rx_reg[2]_1\ : in STD_LOGIC;
    \s_alu_mux_ry_reg[1]_1\ : in STD_LOGIC;
    \s_rx_reg[9]_0\ : in STD_LOGIC;
    \s_ry_reg[10]_0\ : in STD_LOGIC;
    \s_alu_op_reg[2]_1\ : in STD_LOGIC;
    s_from_forwardy_reg_10 : in STD_LOGIC;
    s_from_forwardy_reg_11 : in STD_LOGIC;
    \s_rx_reg[2]_2\ : in STD_LOGIC;
    \s_ry_reg[12]\ : in STD_LOGIC;
    \s_alu_op_reg[1]_10\ : in STD_LOGIC;
    \s_rx_reg[2]_3\ : in STD_LOGIC;
    \s_ry_reg[13]\ : in STD_LOGIC;
    \s_alu_op_reg[0]_6\ : in STD_LOGIC;
    \s_ry_reg[14]\ : in STD_LOGIC;
    s_from_forwardy_reg_12 : in STD_LOGIC;
    \s_rx_reg[7]_0\ : in STD_LOGIC;
    \s_alu_op_reg[2]_2\ : in STD_LOGIC;
    \s_rx_reg[7]_1\ : in STD_LOGIC;
    \s_ry_reg[15]_1\ : in STD_LOGIC;
    \s_alu_op_reg[0]_7\ : in STD_LOGIC;
    \s_alu_op_reg[1]_11\ : in STD_LOGIC;
    s_from_forwardy_reg_13 : in STD_LOGIC;
    s_from_forwardy_reg_14 : in STD_LOGIC;
    s_from_forwardy_reg_15 : in STD_LOGIC;
    s_from_forwardy_reg_16 : in STD_LOGIC;
    s_from_forwardy_reg_17 : in STD_LOGIC;
    s_from_forwardy_reg_18 : in STD_LOGIC;
    s_from_forwardy_reg_19 : in STD_LOGIC;
    s_from_forwardy_reg_20 : in STD_LOGIC;
    s_from_forwardy_reg_21 : in STD_LOGIC;
    \s_rx_reg[15]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_alu_mux_ry_reg[0]\ : in STD_LOGIC;
    s_from_forwardy_reg_22 : in STD_LOGIC;
    \s_ry_reg[15]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_alu_mux_ry_reg[1]_2\ : in STD_LOGIC;
    \s_immediate_reg[13]\ : in STD_LOGIC;
    \s_ry_reg[10]_1\ : in STD_LOGIC;
    \s_ry_reg[11]_0\ : in STD_LOGIC;
    \s_ry_reg[12]_0\ : in STD_LOGIC;
    \s_ry_reg[13]_0\ : in STD_LOGIC;
    \s_rx_reg[14]\ : in STD_LOGIC
  );
end alu;

architecture STRUCTURE of alu is
  signal \_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \i__carry__0_i_5_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_1\ : STD_LOGIC;
  signal \i__carry__2_i_12_n_1\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_1\ : STD_LOGIC;
  signal \i__carry__2_i_5_n_1\ : STD_LOGIC;
  signal \i__carry__2_i_6_n_1\ : STD_LOGIC;
  signal \i__carry__2_i_7_n_1\ : STD_LOGIC;
  signal \i__carry_i_5_n_1\ : STD_LOGIC;
  signal \i__carry_i_6_n_1\ : STD_LOGIC;
  signal \i__carry_i_7_n_1\ : STD_LOGIC;
  signal \i__carry_i_8_n_1\ : STD_LOGIC;
  signal s_alu_rx : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \t_aluout_out[0]_i_5_n_1\ : STD_LOGIC;
  signal \t_aluout_out[0]_i_8_n_1\ : STD_LOGIC;
  signal \t_aluout_out[10]_i_3_n_1\ : STD_LOGIC;
  signal \t_aluout_out[10]_i_7_n_1\ : STD_LOGIC;
  signal \t_aluout_out[11]_i_4_n_1\ : STD_LOGIC;
  signal \t_aluout_out[11]_i_7_n_1\ : STD_LOGIC;
  signal \t_aluout_out[12]_i_10_n_1\ : STD_LOGIC;
  signal \t_aluout_out[12]_i_4_n_1\ : STD_LOGIC;
  signal \t_aluout_out[13]_i_2_n_1\ : STD_LOGIC;
  signal \t_aluout_out[13]_i_5_n_1\ : STD_LOGIC;
  signal \t_aluout_out[14]_i_2_n_1\ : STD_LOGIC;
  signal \t_aluout_out[14]_i_8_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_20_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_8_n_1\ : STD_LOGIC;
  signal \t_aluout_out[1]_i_3_n_1\ : STD_LOGIC;
  signal \t_aluout_out[1]_i_6_n_1\ : STD_LOGIC;
  signal \t_aluout_out[2]_i_3_n_1\ : STD_LOGIC;
  signal \t_aluout_out[2]_i_6_n_1\ : STD_LOGIC;
  signal \t_aluout_out[3]_i_2_n_1\ : STD_LOGIC;
  signal \t_aluout_out[3]_i_6_n_1\ : STD_LOGIC;
  signal \t_aluout_out[4]_i_3_n_1\ : STD_LOGIC;
  signal \t_aluout_out[4]_i_8_n_1\ : STD_LOGIC;
  signal \t_aluout_out[5]_i_4_n_1\ : STD_LOGIC;
  signal \t_aluout_out[5]_i_9_n_1\ : STD_LOGIC;
  signal \t_aluout_out[6]_i_2_n_1\ : STD_LOGIC;
  signal \t_aluout_out[6]_i_5_n_1\ : STD_LOGIC;
  signal \t_aluout_out[7]_i_2_n_1\ : STD_LOGIC;
  signal \t_aluout_out[7]_i_4_n_1\ : STD_LOGIC;
  signal \t_aluout_out[8]_i_4_n_1\ : STD_LOGIC;
  signal \t_aluout_out[8]_i_9_n_1\ : STD_LOGIC;
  signal \t_aluout_out[9]_i_3_n_1\ : STD_LOGIC;
  signal \t_aluout_out[9]_i_6_n_1\ : STD_LOGIC;
  signal \NLW__inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW__inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW__inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW__inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__0/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__0/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__0/i__carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \_inferred__0/i__carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  \i__carry_i_8_n_1\ <= \s_alu_mux_ry_reg[1]\;
  s_alu_rx(14) <= \s_ry_reg[14]\;
  s_alu_rx(13) <= \s_ry_reg[13]\;
  s_alu_rx(12) <= \s_ry_reg[12]\;
  s_alu_rx(11) <= \s_ry_reg[11]\;
  s_alu_rx(10) <= \s_ry_reg[10]_0\;
  s_alu_rx(9) <= \s_rx_reg[9]_0\;
  s_alu_rx(8) <= \s_rx_reg[8]\;
  s_alu_rx(7) <= \s_rx_reg[7]_1\;
  s_alu_rx(6) <= \s_rx_reg[6]_0\;
  s_alu_rx(5) <= \s_rx_reg[5]\;
  s_alu_rx(4) <= \s_rx_reg[4]\;
  s_alu_rx(3) <= \s_rx_reg[3]\;
  s_alu_rx(2) <= \s_rx_reg[2]\;
  s_alu_rx(1) <= \s_rx_reg[1]\;
\_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__0/i__carry_n_1\,
      CO(2 downto 0) => \NLW__inferred__0/i__carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \s_forward_datay_reg[0]\(0),
      DI(3 downto 1) => s_alu_rx(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 0) => data0(3 downto 0),
      S(3) => \i__carry_i_5_n_1\,
      S(2) => \i__carry_i_6_n_1\,
      S(1) => \i__carry_i_7_n_1\,
      S(0) => \i__carry_i_8_n_1\
    );
\_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry_n_1\,
      CO(3) => \_inferred__0/i__carry__0_n_1\,
      CO(2 downto 0) => \NLW__inferred__0/i__carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => s_alu_rx(7 downto 4),
      O(3 downto 0) => data0(7 downto 4),
      S(3) => \i__carry__0_i_5_n_1\,
      S(2) => \i__carry__0_i_6_n_1\,
      S(1) => \i__carry__0_i_7_n_1\,
      S(0) => \i__carry__0_i_8_n_1\
    );
\_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__0_n_1\,
      CO(3) => \_inferred__0/i__carry__1_n_1\,
      CO(2 downto 0) => \NLW__inferred__0/i__carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => s_alu_rx(11 downto 8),
      O(3 downto 0) => data0(11 downto 8),
      S(3) => \i__carry__1_i_5_n_1\,
      S(2) => \i__carry__1_i_6_n_1\,
      S(1) => \i__carry__1_i_7_n_1\,
      S(0) => \i__carry__1_i_8_n_1\
    );
\_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__1_n_1\,
      CO(3 downto 0) => \NLW__inferred__0/i__carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => s_alu_rx(14 downto 12),
      O(3 downto 0) => data0(15 downto 12),
      S(3) => \i__carry__2_i_4_n_1\,
      S(2) => \i__carry__2_i_5_n_1\,
      S(1) => \i__carry__2_i_6_n_1\,
      S(0) => \i__carry__2_i_7_n_1\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => s_from_forwardy_reg_19,
      I1 => Q(0),
      I2 => s_alu_rx(7),
      O => \i__carry__0_i_5_n_1\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => s_from_forwardy_reg_18,
      I1 => Q(0),
      I2 => s_alu_rx(6),
      O => \i__carry__0_i_6_n_1\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => s_from_forwardy_reg_17,
      I1 => Q(0),
      I2 => s_alu_rx(5),
      O => \i__carry__0_i_7_n_1\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => s_from_forwardy_reg_16,
      I1 => Q(0),
      I2 => s_alu_rx(4),
      O => \i__carry__0_i_8_n_1\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \s_ry_reg[11]_0\,
      I1 => Q(0),
      I2 => s_alu_rx(11),
      O => \i__carry__1_i_5_n_1\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \s_ry_reg[10]_1\,
      I1 => Q(0),
      I2 => s_alu_rx(10),
      O => \i__carry__1_i_6_n_1\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => s_from_forwardy_reg_21,
      I1 => Q(0),
      I2 => s_alu_rx(9),
      O => \i__carry__1_i_7_n_1\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => s_from_forwardy_reg_20,
      I1 => Q(0),
      I2 => s_alu_rx(8),
      O => \i__carry__1_i_8_n_1\
    );
\i__carry__2_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000D0D000D"
    )
        port map (
      I0 => \s_rx_reg[15]\(0),
      I1 => \s_alu_mux_ry_reg[0]\,
      I2 => s_from_forwardy_reg_22,
      I3 => \s_ry_reg[15]_2\(0),
      I4 => \s_alu_mux_ry_reg[1]_2\,
      I5 => \s_immediate_reg[13]\,
      O => \i__carry__2_i_12_n_1\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \s_ry_reg[15]_1\,
      I1 => \i__carry__2_i_12_n_1\,
      I2 => Q(0),
      O => \i__carry__2_i_4_n_1\
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \s_rx_reg[14]\,
      I1 => Q(0),
      I2 => s_alu_rx(14),
      O => \i__carry__2_i_5_n_1\
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \s_ry_reg[13]_0\,
      I1 => Q(0),
      I2 => s_alu_rx(13),
      O => \i__carry__2_i_6_n_1\
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \s_ry_reg[12]_0\,
      I1 => Q(0),
      I2 => s_alu_rx(12),
      O => \i__carry__2_i_7_n_1\
    );
\i__carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => s_from_forwardy_reg_15,
      I1 => Q(0),
      I2 => s_alu_rx(3),
      O => \i__carry_i_5_n_1\
    );
\i__carry_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => s_from_forwardy_reg_14,
      I1 => Q(0),
      I2 => s_alu_rx(2),
      O => \i__carry_i_6_n_1\
    );
\i__carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => s_from_forwardy_reg_13,
      I1 => Q(0),
      I2 => s_alu_rx(1),
      O => \i__carry_i_7_n_1\
    );
\t_aluout_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000015"
    )
        port map (
      I0 => \s_alu_op_reg[1]_1\,
      I1 => s_from_forwardy_reg_0,
      I2 => \i__carry_i_8_n_1\,
      I3 => \s_alu_mux_ry_reg[1]_0\,
      I4 => s_from_forwardy_reg_1,
      I5 => \t_aluout_out[0]_i_5_n_1\,
      O => aluout_in(0)
    );
\t_aluout_out[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \s_alu_op_reg[0]_0\,
      I1 => \s_forward_datay_reg[0]\(0),
      I2 => \t_aluout_out[0]_i_8_n_1\,
      I3 => s_alu_rx(8),
      I4 => \s_alu_op_reg[0]_1\,
      O => \t_aluout_out[0]_i_5_n_1\
    );
\t_aluout_out[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CA00CA00CA000A"
    )
        port map (
      I0 => data0(0),
      I1 => \i__carry_i_8_n_1\,
      I2 => Q(1),
      I3 => Q(2),
      I4 => \s_forward_datay_reg[0]\(0),
      I5 => Q(0),
      O => \t_aluout_out[0]_i_8_n_1\
    );
\t_aluout_out[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF22F2"
    )
        port map (
      I0 => \s_alu_op_reg[1]_0\,
      I1 => \s_ry_reg[10]\,
      I2 => \s_alu_op_reg[0]\,
      I3 => s_from_forwardy_reg_6,
      I4 => \t_aluout_out[10]_i_3_n_1\,
      I5 => \s_alu_op_reg[0]_4\,
      O => aluout_in(10)
    );
\t_aluout_out[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFEFFFFEEFEEEFE"
    )
        port map (
      I0 => \s_alu_op_reg[1]_5\,
      I1 => \t_aluout_out[10]_i_7_n_1\,
      I2 => s_alu_rx(2),
      I3 => \s_alu_op_reg[1]_6\,
      I4 => s_from_forwardy_reg_7,
      I5 => \s_alu_op_reg[1]_4\,
      O => \t_aluout_out[10]_i_3_n_1\
    );
\t_aluout_out[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000C000F773C440"
    )
        port map (
      I0 => \s_ry_reg[10]_1\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => s_alu_rx(10),
      I4 => data0(10),
      I5 => Q(2),
      O => \t_aluout_out[10]_i_7_n_1\
    );
\t_aluout_out[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF22F2"
    )
        port map (
      I0 => \s_alu_op_reg[1]_0\,
      I1 => s_from_forwardy_reg_6,
      I2 => \s_alu_op_reg[0]\,
      I3 => \s_ry_reg[15]\,
      I4 => \s_alu_op_reg[1]_8\,
      I5 => \t_aluout_out[11]_i_4_n_1\,
      O => aluout_in(11)
    );
\t_aluout_out[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFFFFFF4"
    )
        port map (
      I0 => s_from_forwardy_reg_7,
      I1 => \s_alu_op_reg[0]_2\,
      I2 => \s_alu_op_reg[1]_5\,
      I3 => \t_aluout_out[11]_i_7_n_1\,
      I4 => s_alu_rx(3),
      I5 => \s_alu_op_reg[1]_6\,
      O => \t_aluout_out[11]_i_4_n_1\
    );
\t_aluout_out[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000C000F773C440"
    )
        port map (
      I0 => \s_ry_reg[11]_0\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => s_alu_rx(11),
      I4 => data0(11),
      I5 => Q(2),
      O => \t_aluout_out[11]_i_7_n_1\
    );
\t_aluout_out[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF4FFF4F4"
    )
        port map (
      I0 => \s_ry_reg[15]\,
      I1 => \s_alu_op_reg[1]_0\,
      I2 => \t_aluout_out[12]_i_4_n_1\,
      I3 => \s_ry_reg[15]_0\,
      I4 => \s_alu_op_reg[0]\,
      I5 => \s_alu_op_reg[1]_7\,
      O => aluout_in(12)
    );
\t_aluout_out[12]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000CA0AC000FACA"
    )
        port map (
      I0 => data0(12),
      I1 => s_alu_rx(12),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => \s_ry_reg[12]_0\,
      O => \t_aluout_out[12]_i_10_n_1\
    );
\t_aluout_out[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF44F4"
    )
        port map (
      I0 => s_from_forwardy_reg_5,
      I1 => \s_alu_op_reg[0]_2\,
      I2 => s_alu_rx(4),
      I3 => \s_alu_op_reg[1]_6\,
      I4 => \s_alu_op_reg[1]_5\,
      I5 => \t_aluout_out[12]_i_10_n_1\,
      O => \t_aluout_out[12]_i_4_n_1\
    );
\t_aluout_out[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => \t_aluout_out[13]_i_2_n_1\,
      I1 => \s_alu_op_reg[1]_3\,
      I2 => \s_alu_op_reg[1]_4\,
      I3 => \s_rx_reg[7]\,
      I4 => \s_alu_op_reg[0]_3\,
      O => aluout_in(13)
    );
\t_aluout_out[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFFFFFF4"
    )
        port map (
      I0 => s_from_forwardy_reg_4,
      I1 => \s_alu_op_reg[0]_2\,
      I2 => \s_alu_op_reg[1]_5\,
      I3 => \t_aluout_out[13]_i_5_n_1\,
      I4 => s_alu_rx(5),
      I5 => \s_alu_op_reg[1]_6\,
      O => \t_aluout_out[13]_i_2_n_1\
    );
\t_aluout_out[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000C000F773C440"
    )
        port map (
      I0 => \s_ry_reg[13]_0\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => s_alu_rx(13),
      I4 => data0(13),
      I5 => Q(2),
      O => \t_aluout_out[13]_i_5_n_1\
    );
\t_aluout_out[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAFFEAFFFFFFEA"
    )
        port map (
      I0 => \t_aluout_out[14]_i_2_n_1\,
      I1 => \s_rx_reg[7]\,
      I2 => \s_alu_op_reg[0]_2\,
      I3 => \s_alu_op_reg[1]_3\,
      I4 => \s_alu_op_reg[1]_4\,
      I5 => \s_rx_reg[6]\,
      O => aluout_in(14)
    );
\t_aluout_out[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFEFE"
    )
        port map (
      I0 => \s_alu_op_reg[2]_0\,
      I1 => \t_aluout_out[14]_i_8_n_1\,
      I2 => \s_alu_op_reg[1]_5\,
      I3 => \s_alu_op_reg[1]_6\,
      I4 => s_alu_rx(6),
      O => \t_aluout_out[14]_i_2_n_1\
    );
\t_aluout_out[14]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF444F444F444"
    )
        port map (
      I0 => \s_ry_reg[15]_1\,
      I1 => \s_alu_op_reg[0]\,
      I2 => \s_alu_op_reg[0]_7\,
      I3 => s_alu_rx(14),
      I4 => data0(14),
      I5 => \s_alu_op_reg[1]_11\,
      O => \t_aluout_out[14]_i_8_n_1\
    );
\t_aluout_out[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000FF1D"
    )
        port map (
      I0 => s_from_forwardy_reg_12,
      I1 => \i__carry_i_8_n_1\,
      I2 => \s_rx_reg[6]\,
      I3 => \s_rx_reg[7]_0\,
      I4 => \s_alu_op_reg[2]_2\,
      I5 => \t_aluout_out[15]_i_8_n_1\,
      O => aluout_in(15)
    );
\t_aluout_out[15]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003A000AFFFA003A"
    )
        port map (
      I0 => data0(15),
      I1 => \i__carry__2_i_12_n_1\,
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(0),
      I5 => \s_ry_reg[15]_1\,
      O => \t_aluout_out[15]_i_20_n_1\
    );
\t_aluout_out[15]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \s_alu_op_reg[1]_6\,
      I1 => s_alu_rx(7),
      I2 => \t_aluout_out[15]_i_20_n_1\,
      O => \t_aluout_out[15]_i_8_n_1\
    );
\t_aluout_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFFFFFF4"
    )
        port map (
      I0 => s_from_forwardy_reg,
      I1 => \s_alu_op_reg[0]\,
      I2 => \s_alu_op_reg[1]\,
      I3 => \t_aluout_out[1]_i_3_n_1\,
      I4 => \s_alu_op_reg[1]_0\,
      I5 => s_from_forwardy_reg_0,
      O => aluout_in(1)
    );
\t_aluout_out[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80FF80FFFFFF80"
    )
        port map (
      I0 => \s_forward_datay_reg[0]\(0),
      I1 => \s_alu_mux_ry_reg[1]_1\,
      I2 => \s_alu_op_reg[0]_2\,
      I3 => \t_aluout_out[1]_i_6_n_1\,
      I4 => s_alu_rx(9),
      I5 => \s_alu_op_reg[0]_1\,
      O => \t_aluout_out[1]_i_3_n_1\
    );
\t_aluout_out[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002F0020"
    )
        port map (
      I0 => Q(0),
      I1 => s_from_forwardy_reg_13,
      I2 => Q(1),
      I3 => Q(2),
      I4 => data0(1),
      O => \t_aluout_out[1]_i_6_n_1\
    );
\t_aluout_out[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => s_from_forwardy_reg,
      I1 => \s_alu_op_reg[1]_0\,
      I2 => \t_aluout_out[2]_i_3_n_1\,
      I3 => \s_alu_op_reg[0]\,
      I4 => s_from_forwardy_reg_3,
      O => aluout_in(2)
    );
\t_aluout_out[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF4F4FFF4"
    )
        port map (
      I0 => \s_alu_op_reg[0]_1\,
      I1 => s_alu_rx(10),
      I2 => \t_aluout_out[2]_i_6_n_1\,
      I3 => \s_alu_op_reg[1]_4\,
      I4 => \s_forward_datay_reg[0]_0\,
      I5 => \s_alu_op_reg[2]_1\,
      O => \t_aluout_out[2]_i_3_n_1\
    );
\t_aluout_out[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA0CAF0C000C0A0C"
    )
        port map (
      I0 => s_alu_rx(2),
      I1 => data0(2),
      I2 => Q(2),
      I3 => Q(1),
      I4 => s_from_forwardy_reg_14,
      I5 => Q(0),
      O => \t_aluout_out[2]_i_6_n_1\
    );
\t_aluout_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFFFFFF4"
    )
        port map (
      I0 => s_from_forwardy_reg_2,
      I1 => \s_alu_op_reg[0]\,
      I2 => \t_aluout_out[3]_i_2_n_1\,
      I3 => \s_alu_op_reg[1]_2\,
      I4 => \s_alu_op_reg[1]_0\,
      I5 => s_from_forwardy_reg_3,
      O => aluout_in(3)
    );
\t_aluout_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4F44"
    )
        port map (
      I0 => \s_forward_datay_reg[0]_0\,
      I1 => \s_alu_op_reg[0]_2\,
      I2 => \s_alu_op_reg[0]_1\,
      I3 => s_alu_rx(11),
      I4 => \t_aluout_out[3]_i_6_n_1\,
      I5 => \s_alu_op_reg[2]\,
      O => \t_aluout_out[3]_i_2_n_1\
    );
\t_aluout_out[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000EFF00000E00"
    )
        port map (
      I0 => s_alu_rx(3),
      I1 => Q(0),
      I2 => s_from_forwardy_reg_15,
      I3 => Q(1),
      I4 => Q(2),
      I5 => data0(3),
      O => \t_aluout_out[3]_i_6_n_1\
    );
\t_aluout_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFFFFFF4"
    )
        port map (
      I0 => s_from_forwardy_reg_2,
      I1 => \s_alu_op_reg[1]_0\,
      I2 => \t_aluout_out[4]_i_3_n_1\,
      I3 => s_from_forwardy_reg_10,
      I4 => \s_alu_op_reg[0]\,
      I5 => s_from_forwardy_reg_11,
      O => aluout_in(4)
    );
\t_aluout_out[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \s_rx_reg[2]_2\,
      I1 => \s_alu_op_reg[1]_4\,
      I2 => \t_aluout_out[4]_i_8_n_1\,
      I3 => s_alu_rx(12),
      I4 => \s_alu_op_reg[0]_1\,
      O => \t_aluout_out[4]_i_3_n_1\
    );
\t_aluout_out[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000C000F773C440"
    )
        port map (
      I0 => s_from_forwardy_reg_16,
      I1 => Q(1),
      I2 => Q(0),
      I3 => s_alu_rx(4),
      I4 => data0(4),
      I5 => Q(2),
      O => \t_aluout_out[4]_i_8_n_1\
    );
\t_aluout_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFFFFFF4"
    )
        port map (
      I0 => s_from_forwardy_reg_11,
      I1 => \s_alu_op_reg[1]_0\,
      I2 => \s_alu_op_reg[1]_10\,
      I3 => \t_aluout_out[5]_i_4_n_1\,
      I4 => \s_alu_op_reg[0]\,
      I5 => \s_rx_reg[2]_3\,
      O => aluout_in(5)
    );
\t_aluout_out[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \s_rx_reg[2]_2\,
      I1 => \s_alu_op_reg[0]_2\,
      I2 => \t_aluout_out[5]_i_9_n_1\,
      I3 => s_alu_rx(13),
      I4 => \s_alu_op_reg[0]_1\,
      O => \t_aluout_out[5]_i_4_n_1\
    );
\t_aluout_out[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000C000F773C440"
    )
        port map (
      I0 => s_from_forwardy_reg_17,
      I1 => Q(1),
      I2 => Q(0),
      I3 => s_alu_rx(5),
      I4 => data0(5),
      I5 => Q(2),
      O => \t_aluout_out[5]_i_9_n_1\
    );
\t_aluout_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFEEEFEFFFFEEFE"
    )
        port map (
      I0 => \t_aluout_out[6]_i_2_n_1\,
      I1 => \s_alu_op_reg[0]_6\,
      I2 => \s_alu_op_reg[1]_0\,
      I3 => \s_rx_reg[2]_3\,
      I4 => \s_alu_op_reg[0]\,
      I5 => \s_rx_reg[2]_0\,
      O => aluout_in(6)
    );
\t_aluout_out[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \s_rx_reg[2]_1\,
      I1 => \s_alu_op_reg[1]_4\,
      I2 => \t_aluout_out[6]_i_5_n_1\,
      I3 => s_alu_rx(14),
      I4 => \s_alu_op_reg[0]_1\,
      O => \t_aluout_out[6]_i_2_n_1\
    );
\t_aluout_out[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000C000F773C440"
    )
        port map (
      I0 => s_from_forwardy_reg_18,
      I1 => Q(1),
      I2 => Q(0),
      I3 => s_alu_rx(6),
      I4 => data0(6),
      I5 => Q(2),
      O => \t_aluout_out[6]_i_5_n_1\
    );
\t_aluout_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAEFFAE"
    )
        port map (
      I0 => \t_aluout_out[7]_i_2_n_1\,
      I1 => \s_alu_op_reg[0]\,
      I2 => s_from_forwardy_reg_8,
      I3 => \s_alu_op_reg[1]_0\,
      I4 => \s_rx_reg[2]_0\,
      O => aluout_in(7)
    );
\t_aluout_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFEFFFFEEFEEEFE"
    )
        port map (
      I0 => \s_alu_op_reg[1]_5\,
      I1 => \t_aluout_out[7]_i_4_n_1\,
      I2 => \s_alu_op_reg[1]_4\,
      I3 => s_from_forwardy_reg_9,
      I4 => \s_rx_reg[2]_1\,
      I5 => \s_alu_op_reg[0]_2\,
      O => \t_aluout_out[7]_i_2_n_1\
    );
\t_aluout_out[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000C000F773C440"
    )
        port map (
      I0 => s_from_forwardy_reg_19,
      I1 => Q(1),
      I2 => Q(0),
      I3 => s_alu_rx(7),
      I4 => data0(7),
      I5 => Q(2),
      O => \t_aluout_out[7]_i_4_n_1\
    );
\t_aluout_out[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFFFFFF4"
    )
        port map (
      I0 => s_from_forwardy_reg_8,
      I1 => \s_alu_op_reg[1]_0\,
      I2 => \s_alu_op_reg[1]_9\,
      I3 => \t_aluout_out[8]_i_4_n_1\,
      I4 => \s_alu_op_reg[0]\,
      I5 => \s_rx_reg[9]\,
      O => aluout_in(8)
    );
\t_aluout_out[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFFFFFF4"
    )
        port map (
      I0 => s_from_forwardy_reg_9,
      I1 => \s_alu_op_reg[0]_2\,
      I2 => \s_alu_op_reg[1]_5\,
      I3 => \t_aluout_out[8]_i_9_n_1\,
      I4 => \s_forward_datay_reg[0]\(0),
      I5 => \s_alu_op_reg[1]_6\,
      O => \t_aluout_out[8]_i_4_n_1\
    );
\t_aluout_out[8]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000C000F773C440"
    )
        port map (
      I0 => s_from_forwardy_reg_20,
      I1 => Q(1),
      I2 => Q(0),
      I3 => s_alu_rx(8),
      I4 => data0(8),
      I5 => Q(2),
      O => \t_aluout_out[8]_i_9_n_1\
    );
\t_aluout_out[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF22F2"
    )
        port map (
      I0 => \s_alu_op_reg[1]_0\,
      I1 => \s_rx_reg[9]\,
      I2 => \s_alu_op_reg[0]\,
      I3 => \s_ry_reg[10]\,
      I4 => \t_aluout_out[9]_i_3_n_1\,
      I5 => \s_alu_op_reg[0]_5\,
      O => aluout_in(9)
    );
\t_aluout_out[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFEFFFFEEFEEEFE"
    )
        port map (
      I0 => \s_alu_op_reg[1]_5\,
      I1 => \t_aluout_out[9]_i_6_n_1\,
      I2 => s_alu_rx(1),
      I3 => \s_alu_op_reg[1]_6\,
      I4 => \s_rx_reg[3]_0\,
      I5 => \s_alu_op_reg[1]_4\,
      O => \t_aluout_out[9]_i_3_n_1\
    );
\t_aluout_out[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000C000F773C440"
    )
        port map (
      I0 => s_from_forwardy_reg_21,
      I1 => Q(1),
      I2 => Q(0),
      I3 => s_alu_rx(9),
      I4 => data0(9),
      I5 => Q(2),
      O => \t_aluout_out[9]_i_6_n_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity exe_mem is
  port (
    wea : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    memwrite_out : out STD_LOGIC;
    \t_memtoreg_out_reg[1]_0\ : out STD_LOGIC;
    \toutput2_reg[7]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    memread_out : out STD_LOGIC;
    \toutput2_reg[7]_0\ : out STD_LOGIC;
    \toutput2_reg[7]_1\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DataBuf_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regwrite_out : out STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC;
    s_memout_mem : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tsre_IBUF : in STD_LOGIC;
    tbre_IBUF : in STD_LOGIC;
    MemData2_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    MemData1_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dataready_IBUF : in STD_LOGIC;
    \s_alu_mux_ry_reg[1]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    n_0_589_BUFG : in STD_LOGIC;
    \s_ry_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    memwrite_in : in STD_LOGIC;
    memread_in : in STD_LOGIC;
    memtoreg_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    regwrite_in : in STD_LOGIC
  );
end exe_mem;

architecture STRUCTURE of exe_mem is
  signal \^q\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^memread_out\ : STD_LOGIC;
  signal \^memwrite_out\ : STD_LOGIC;
  signal s_exe_memtoreg_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^t_memtoreg_out_reg[1]_0\ : STD_LOGIC;
  signal \t_wbregdata_out[0]_i_2_n_1\ : STD_LOGIC;
  signal \t_wbregdata_out[0]_i_3_n_1\ : STD_LOGIC;
  signal \t_wbregdata_out[0]_i_4_n_1\ : STD_LOGIC;
  signal \t_wbregdata_out[0]_i_5_n_1\ : STD_LOGIC;
  signal \toutput2[0]_i_2_n_1\ : STD_LOGIC;
  signal \toutput2[7]_i_4_n_1\ : STD_LOGIC;
  signal \^toutput2_reg[7]\ : STD_LOGIC;
  signal \^toutput2_reg[7]_0\ : STD_LOGIC;
  signal we2_OBUF_inst_i_3_n_1 : STD_LOGIC;
begin
  Q(15 downto 0) <= \^q\(15 downto 0);
  memread_out <= \^memread_out\;
  memwrite_out <= \^memwrite_out\;
  \t_memtoreg_out_reg[1]_0\ <= \^t_memtoreg_out_reg[1]_0\;
  \toutput2_reg[7]\ <= \^toutput2_reg[7]\;
  \toutput2_reg[7]_0\ <= \^toutput2_reg[7]_0\;
cache_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(15),
      I1 => \^q\(13),
      I2 => \^q\(12),
      I3 => \^memwrite_out\,
      I4 => \FSM_sequential_state_reg[2]\,
      I5 => \^q\(14),
      O => wea(0)
    );
\t_aluout_out[15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_IBUF,
      O => \^t_memtoreg_out_reg[1]_0\
    );
\t_aluout_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_alu_mux_ry_reg[1]\(0),
      Q => \^q\(0)
    );
\t_aluout_out_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_alu_mux_ry_reg[1]\(10),
      Q => \^q\(10)
    );
\t_aluout_out_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_alu_mux_ry_reg[1]\(11),
      Q => \^q\(11)
    );
\t_aluout_out_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_alu_mux_ry_reg[1]\(12),
      Q => \^q\(12)
    );
\t_aluout_out_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_alu_mux_ry_reg[1]\(13),
      Q => \^q\(13)
    );
\t_aluout_out_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_alu_mux_ry_reg[1]\(14),
      Q => \^q\(14)
    );
\t_aluout_out_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_alu_mux_ry_reg[1]\(15),
      Q => \^q\(15)
    );
\t_aluout_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_alu_mux_ry_reg[1]\(1),
      Q => \^q\(1)
    );
\t_aluout_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_alu_mux_ry_reg[1]\(2),
      Q => \^q\(2)
    );
\t_aluout_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_alu_mux_ry_reg[1]\(3),
      Q => \^q\(3)
    );
\t_aluout_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_alu_mux_ry_reg[1]\(4),
      Q => \^q\(4)
    );
\t_aluout_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_alu_mux_ry_reg[1]\(5),
      Q => \^q\(5)
    );
\t_aluout_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_alu_mux_ry_reg[1]\(6),
      Q => \^q\(6)
    );
\t_aluout_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_alu_mux_ry_reg[1]\(7),
      Q => \^q\(7)
    );
\t_aluout_out_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_alu_mux_ry_reg[1]\(8),
      Q => \^q\(8)
    );
\t_aluout_out_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_alu_mux_ry_reg[1]\(9),
      Q => \^q\(9)
    );
\t_memdata_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_ry_reg[15]\(0),
      Q => \DataBuf_reg[15]\(0)
    );
\t_memdata_out_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_ry_reg[15]\(10),
      Q => \DataBuf_reg[15]\(10)
    );
\t_memdata_out_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_ry_reg[15]\(11),
      Q => \DataBuf_reg[15]\(11)
    );
\t_memdata_out_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_ry_reg[15]\(12),
      Q => \DataBuf_reg[15]\(12)
    );
\t_memdata_out_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_ry_reg[15]\(13),
      Q => \DataBuf_reg[15]\(13)
    );
\t_memdata_out_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_ry_reg[15]\(14),
      Q => \DataBuf_reg[15]\(14)
    );
\t_memdata_out_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_ry_reg[15]\(15),
      Q => \DataBuf_reg[15]\(15)
    );
\t_memdata_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_ry_reg[15]\(1),
      Q => \DataBuf_reg[15]\(1)
    );
\t_memdata_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_ry_reg[15]\(2),
      Q => \DataBuf_reg[15]\(2)
    );
\t_memdata_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_ry_reg[15]\(3),
      Q => \DataBuf_reg[15]\(3)
    );
\t_memdata_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_ry_reg[15]\(4),
      Q => \DataBuf_reg[15]\(4)
    );
\t_memdata_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_ry_reg[15]\(5),
      Q => \DataBuf_reg[15]\(5)
    );
\t_memdata_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_ry_reg[15]\(6),
      Q => \DataBuf_reg[15]\(6)
    );
\t_memdata_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_ry_reg[15]\(7),
      Q => \DataBuf_reg[15]\(7)
    );
\t_memdata_out_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_ry_reg[15]\(8),
      Q => \DataBuf_reg[15]\(8)
    );
\t_memdata_out_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => \s_ry_reg[15]\(9),
      Q => \DataBuf_reg[15]\(9)
    );
t_memread_out_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => memread_in,
      Q => \^memread_out\
    );
\t_memtoreg_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => memtoreg_in(0),
      Q => s_exe_memtoreg_out(1)
    );
t_memwrite_out_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => memwrite_in,
      Q => \^memwrite_out\
    );
t_regwrite_out_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => \^t_memtoreg_out_reg[1]_0\,
      D => regwrite_in,
      Q => regwrite_out
    );
\t_wbregdata_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF0D0000"
    )
        port map (
      I0 => \t_wbregdata_out[0]_i_2_n_1\,
      I1 => \t_wbregdata_out[0]_i_3_n_1\,
      I2 => \^memread_out\,
      I3 => \^q\(15),
      I4 => s_exe_memtoreg_out(1),
      I5 => \t_wbregdata_out[0]_i_4_n_1\,
      O => D(0)
    );
\t_wbregdata_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^q\(0),
      I1 => \t_wbregdata_out[0]_i_5_n_1\,
      I2 => \^q\(1),
      I3 => \^q\(6),
      I4 => \^q\(2),
      I5 => \^q\(7),
      O => \t_wbregdata_out[0]_i_2_n_1\
    );
\t_wbregdata_out[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      I2 => \^q\(13),
      I3 => \^q\(12),
      I4 => \^q\(11),
      I5 => \^q\(10),
      O => \t_wbregdata_out[0]_i_3_n_1\
    );
\t_wbregdata_out[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B08"
    )
        port map (
      I0 => s_memout_mem(0),
      I1 => \^memread_out\,
      I2 => s_exe_memtoreg_out(1),
      I3 => \^q\(0),
      O => \t_wbregdata_out[0]_i_4_n_1\
    );
\t_wbregdata_out[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(14),
      I2 => \^q\(3),
      I3 => \^q\(4),
      O => \t_wbregdata_out[0]_i_5_n_1\
    );
\t_wbregdata_out[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \^q\(10),
      I1 => s_exe_memtoreg_out(1),
      I2 => \^memread_out\,
      I3 => s_memout_mem(10),
      O => D(10)
    );
\t_wbregdata_out[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \^q\(11),
      I1 => s_exe_memtoreg_out(1),
      I2 => \^memread_out\,
      I3 => s_memout_mem(11),
      O => D(11)
    );
\t_wbregdata_out[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \^q\(12),
      I1 => s_exe_memtoreg_out(1),
      I2 => \^memread_out\,
      I3 => s_memout_mem(12),
      O => D(12)
    );
\t_wbregdata_out[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \^q\(13),
      I1 => s_exe_memtoreg_out(1),
      I2 => \^memread_out\,
      I3 => s_memout_mem(13),
      O => D(13)
    );
\t_wbregdata_out[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \^q\(14),
      I1 => s_exe_memtoreg_out(1),
      I2 => \^memread_out\,
      I3 => s_memout_mem(14),
      O => D(14)
    );
\t_wbregdata_out[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \^q\(15),
      I1 => s_exe_memtoreg_out(1),
      I2 => \^memread_out\,
      I3 => s_memout_mem(15),
      O => D(15)
    );
\t_wbregdata_out[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \^q\(1),
      I1 => s_exe_memtoreg_out(1),
      I2 => \^memread_out\,
      I3 => s_memout_mem(1),
      O => D(1)
    );
\t_wbregdata_out[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \^q\(2),
      I1 => s_exe_memtoreg_out(1),
      I2 => \^memread_out\,
      I3 => s_memout_mem(2),
      O => D(2)
    );
\t_wbregdata_out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \^q\(3),
      I1 => s_exe_memtoreg_out(1),
      I2 => \^memread_out\,
      I3 => s_memout_mem(3),
      O => D(3)
    );
\t_wbregdata_out[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \^q\(4),
      I1 => s_exe_memtoreg_out(1),
      I2 => \^memread_out\,
      I3 => s_memout_mem(4),
      O => D(4)
    );
\t_wbregdata_out[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \^q\(5),
      I1 => s_exe_memtoreg_out(1),
      I2 => \^memread_out\,
      I3 => s_memout_mem(5),
      O => D(5)
    );
\t_wbregdata_out[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \^q\(6),
      I1 => s_exe_memtoreg_out(1),
      I2 => \^memread_out\,
      I3 => s_memout_mem(6),
      O => D(6)
    );
\t_wbregdata_out[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \^q\(7),
      I1 => s_exe_memtoreg_out(1),
      I2 => \^memread_out\,
      I3 => s_memout_mem(7),
      O => D(7)
    );
\t_wbregdata_out[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \^q\(8),
      I1 => s_exe_memtoreg_out(1),
      I2 => \^memread_out\,
      I3 => s_memout_mem(8),
      O => D(8)
    );
\t_wbregdata_out[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => \^q\(9),
      I1 => s_exe_memtoreg_out(1),
      I2 => \^memread_out\,
      I3 => s_memout_mem(9),
      O => D(9)
    );
\toutput2[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => MemData1_IBUF(0),
      I1 => \^toutput2_reg[7]_0\,
      I2 => \toutput2[0]_i_2_n_1\,
      O => \toutput2_reg[7]_1\(0)
    );
\toutput2[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => \^q\(0),
      I1 => tsre_IBUF,
      I2 => tbre_IBUF,
      I3 => \^toutput2_reg[7]\,
      I4 => MemData2_IBUF(0),
      O => \toutput2[0]_i_2_n_1\
    );
\toutput2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F80FFFF8F80"
    )
        port map (
      I0 => \^q\(0),
      I1 => dataready_IBUF,
      I2 => \^toutput2_reg[7]\,
      I3 => MemData2_IBUF(1),
      I4 => MemData1_IBUF(1),
      I5 => \^toutput2_reg[7]_0\,
      O => \toutput2_reg[7]_1\(1)
    );
\toutput2[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22F2"
    )
        port map (
      I0 => MemData2_IBUF(2),
      I1 => \^toutput2_reg[7]\,
      I2 => MemData1_IBUF(2),
      I3 => \^toutput2_reg[7]_0\,
      O => \toutput2_reg[7]_1\(2)
    );
\toutput2[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22F2"
    )
        port map (
      I0 => MemData2_IBUF(3),
      I1 => \^toutput2_reg[7]\,
      I2 => MemData1_IBUF(3),
      I3 => \^toutput2_reg[7]_0\,
      O => \toutput2_reg[7]_1\(3)
    );
\toutput2[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22F2"
    )
        port map (
      I0 => MemData2_IBUF(4),
      I1 => \^toutput2_reg[7]\,
      I2 => MemData1_IBUF(4),
      I3 => \^toutput2_reg[7]_0\,
      O => \toutput2_reg[7]_1\(4)
    );
\toutput2[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22F2"
    )
        port map (
      I0 => MemData2_IBUF(5),
      I1 => \^toutput2_reg[7]\,
      I2 => MemData1_IBUF(5),
      I3 => \^toutput2_reg[7]_0\,
      O => \toutput2_reg[7]_1\(5)
    );
\toutput2[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22F2"
    )
        port map (
      I0 => MemData2_IBUF(6),
      I1 => \^toutput2_reg[7]\,
      I2 => MemData1_IBUF(6),
      I3 => \^toutput2_reg[7]_0\,
      O => \toutput2_reg[7]_1\(6)
    );
\toutput2[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22F2"
    )
        port map (
      I0 => MemData2_IBUF(7),
      I1 => \^toutput2_reg[7]\,
      I2 => MemData1_IBUF(7),
      I3 => \^toutput2_reg[7]_0\,
      O => \toutput2_reg[7]_1\(7)
    );
\toutput2[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(11),
      I2 => \^q\(8),
      I3 => \^q\(9),
      I4 => we2_OBUF_inst_i_3_n_1,
      I5 => \toutput2[7]_i_4_n_1\,
      O => \^toutput2_reg[7]\
    );
\toutput2[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(2),
      I2 => \^q\(6),
      I3 => \^q\(1),
      I4 => \t_wbregdata_out[0]_i_5_n_1\,
      O => \toutput2[7]_i_4_n_1\
    );
we2_OBUF_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(11),
      I2 => \^q\(8),
      I3 => \^q\(9),
      I4 => we2_OBUF_inst_i_3_n_1,
      I5 => \t_wbregdata_out[0]_i_2_n_1\,
      O => \^toutput2_reg[7]_0\
    );
we2_OBUF_inst_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(13),
      I2 => \^q\(15),
      O => we2_OBUF_inst_i_3_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity forward is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end forward;

architecture STRUCTURE of forward is
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \forward_data_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \forward_data_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \forward_data_reg[11]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \forward_data_reg[12]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \forward_data_reg[13]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \forward_data_reg[14]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \forward_data_reg[15]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \forward_data_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \forward_data_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \forward_data_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \forward_data_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \forward_data_reg[5]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \forward_data_reg[6]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \forward_data_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \forward_data_reg[8]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \forward_data_reg[9]\ : label is "LD";
begin
\forward_data_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => E(0),
      GE => '1',
      Q => Q(0)
    );
\forward_data_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(10),
      G => E(0),
      GE => '1',
      Q => Q(10)
    );
\forward_data_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(11),
      G => E(0),
      GE => '1',
      Q => Q(11)
    );
\forward_data_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(12),
      G => E(0),
      GE => '1',
      Q => Q(12)
    );
\forward_data_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(13),
      G => E(0),
      GE => '1',
      Q => Q(13)
    );
\forward_data_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(14),
      G => E(0),
      GE => '1',
      Q => Q(14)
    );
\forward_data_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(15),
      G => E(0),
      GE => '1',
      Q => Q(15)
    );
\forward_data_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(1),
      G => E(0),
      GE => '1',
      Q => Q(1)
    );
\forward_data_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(2),
      G => E(0),
      GE => '1',
      Q => Q(2)
    );
\forward_data_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(3),
      G => E(0),
      GE => '1',
      Q => Q(3)
    );
\forward_data_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(4),
      G => E(0),
      GE => '1',
      Q => Q(4)
    );
\forward_data_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(5),
      G => E(0),
      GE => '1',
      Q => Q(5)
    );
\forward_data_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(6),
      G => E(0),
      GE => '1',
      Q => Q(6)
    );
\forward_data_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(7),
      G => E(0),
      GE => '1',
      Q => Q(7)
    );
\forward_data_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(8),
      G => E(0),
      GE => '1',
      Q => Q(8)
    );
\forward_data_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(9),
      G => E(0),
      GE => '1',
      Q => Q(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity heap is
  port (
    \s_ry_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \s_rx_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    t_wbregwrite_out_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \t_wbregdata_out_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    n_0_589_BUFG : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
end heap;

architecture STRUCTURE of heap is
  signal s0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_rx[0]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \s_rx[10]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \s_rx[11]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \s_rx[12]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \s_rx[13]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \s_rx[14]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \s_rx[15]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \s_rx[1]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \s_rx[2]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \s_rx[3]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \s_rx[4]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \s_rx[5]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \s_rx[6]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \s_rx[7]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \s_rx[8]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \s_rx[9]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \s_ry[0]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \s_ry[10]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \s_ry[11]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \s_ry[12]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \s_ry[13]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \s_ry[14]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \s_ry[15]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \s_ry[1]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \s_ry[2]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \s_ry[3]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \s_ry[4]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \s_ry[5]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \s_ry[6]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \s_ry[7]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \s_ry[8]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \s_ry[9]_i_1\ : label is "soft_lutpair52";
begin
\s0_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => n_0_589_BUFG,
      CE => t_wbregwrite_out_reg(0),
      CLR => rst_IBUF,
      D => \t_wbregdata_out_reg[15]\(0),
      Q => s0(0)
    );
\s0_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => n_0_589_BUFG,
      CE => t_wbregwrite_out_reg(0),
      CLR => rst_IBUF,
      D => \t_wbregdata_out_reg[15]\(10),
      Q => s0(10)
    );
\s0_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => n_0_589_BUFG,
      CE => t_wbregwrite_out_reg(0),
      CLR => rst_IBUF,
      D => \t_wbregdata_out_reg[15]\(11),
      Q => s0(11)
    );
\s0_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => n_0_589_BUFG,
      CE => t_wbregwrite_out_reg(0),
      CLR => rst_IBUF,
      D => \t_wbregdata_out_reg[15]\(12),
      Q => s0(12)
    );
\s0_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => n_0_589_BUFG,
      CE => t_wbregwrite_out_reg(0),
      CLR => rst_IBUF,
      D => \t_wbregdata_out_reg[15]\(13),
      Q => s0(13)
    );
\s0_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => n_0_589_BUFG,
      CE => t_wbregwrite_out_reg(0),
      CLR => rst_IBUF,
      D => \t_wbregdata_out_reg[15]\(14),
      Q => s0(14)
    );
\s0_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => n_0_589_BUFG,
      CE => t_wbregwrite_out_reg(0),
      CLR => rst_IBUF,
      D => \t_wbregdata_out_reg[15]\(15),
      Q => s0(15)
    );
\s0_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => n_0_589_BUFG,
      CE => t_wbregwrite_out_reg(0),
      CLR => rst_IBUF,
      D => \t_wbregdata_out_reg[15]\(1),
      Q => s0(1)
    );
\s0_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => n_0_589_BUFG,
      CE => t_wbregwrite_out_reg(0),
      CLR => rst_IBUF,
      D => \t_wbregdata_out_reg[15]\(2),
      Q => s0(2)
    );
\s0_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => n_0_589_BUFG,
      CE => t_wbregwrite_out_reg(0),
      CLR => rst_IBUF,
      D => \t_wbregdata_out_reg[15]\(3),
      Q => s0(3)
    );
\s0_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => n_0_589_BUFG,
      CE => t_wbregwrite_out_reg(0),
      CLR => rst_IBUF,
      D => \t_wbregdata_out_reg[15]\(4),
      Q => s0(4)
    );
\s0_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => n_0_589_BUFG,
      CE => t_wbregwrite_out_reg(0),
      CLR => rst_IBUF,
      D => \t_wbregdata_out_reg[15]\(5),
      Q => s0(5)
    );
\s0_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => n_0_589_BUFG,
      CE => t_wbregwrite_out_reg(0),
      CLR => rst_IBUF,
      D => \t_wbregdata_out_reg[15]\(6),
      Q => s0(6)
    );
\s0_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => n_0_589_BUFG,
      CE => t_wbregwrite_out_reg(0),
      CLR => rst_IBUF,
      D => \t_wbregdata_out_reg[15]\(7),
      Q => s0(7)
    );
\s0_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => n_0_589_BUFG,
      CE => t_wbregwrite_out_reg(0),
      CLR => rst_IBUF,
      D => \t_wbregdata_out_reg[15]\(8),
      Q => s0(8)
    );
\s0_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => n_0_589_BUFG,
      CE => t_wbregwrite_out_reg(0),
      CLR => rst_IBUF,
      D => \t_wbregdata_out_reg[15]\(9),
      Q => s0(9)
    );
\s_rx[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(0),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(5),
      O => \s_rx_reg[15]\(0)
    );
\s_rx[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(10),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(5),
      O => \s_rx_reg[15]\(10)
    );
\s_rx[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(11),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(5),
      O => \s_rx_reg[15]\(11)
    );
\s_rx[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(12),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(5),
      O => \s_rx_reg[15]\(12)
    );
\s_rx[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(13),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(5),
      O => \s_rx_reg[15]\(13)
    );
\s_rx[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(14),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(5),
      O => \s_rx_reg[15]\(14)
    );
\s_rx[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(15),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(5),
      O => \s_rx_reg[15]\(15)
    );
\s_rx[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(1),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(5),
      O => \s_rx_reg[15]\(1)
    );
\s_rx[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(2),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(5),
      O => \s_rx_reg[15]\(2)
    );
\s_rx[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(3),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(5),
      O => \s_rx_reg[15]\(3)
    );
\s_rx[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(4),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(5),
      O => \s_rx_reg[15]\(4)
    );
\s_rx[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(5),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(5),
      O => \s_rx_reg[15]\(5)
    );
\s_rx[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(6),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(5),
      O => \s_rx_reg[15]\(6)
    );
\s_rx[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(7),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(5),
      O => \s_rx_reg[15]\(7)
    );
\s_rx[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(8),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(5),
      O => \s_rx_reg[15]\(8)
    );
\s_rx[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(9),
      I1 => Q(4),
      I2 => Q(3),
      I3 => Q(5),
      O => \s_rx_reg[15]\(9)
    );
\s_ry[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(0),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => \s_ry_reg[15]\(0)
    );
\s_ry[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(10),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => \s_ry_reg[15]\(10)
    );
\s_ry[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(11),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => \s_ry_reg[15]\(11)
    );
\s_ry[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(12),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => \s_ry_reg[15]\(12)
    );
\s_ry[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(13),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => \s_ry_reg[15]\(13)
    );
\s_ry[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(14),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => \s_ry_reg[15]\(14)
    );
\s_ry[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(15),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => \s_ry_reg[15]\(15)
    );
\s_ry[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(1),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => \s_ry_reg[15]\(1)
    );
\s_ry[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(2),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => \s_ry_reg[15]\(2)
    );
\s_ry[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => \s_ry_reg[15]\(3)
    );
\s_ry[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(4),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => \s_ry_reg[15]\(4)
    );
\s_ry[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(5),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => \s_ry_reg[15]\(5)
    );
\s_ry[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(6),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => \s_ry_reg[15]\(6)
    );
\s_ry[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(7),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => \s_ry_reg[15]\(7)
    );
\s_ry[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(8),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => \s_ry_reg[15]\(8)
    );
\s_ry[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s0(9),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => \s_ry_reg[15]\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mem_wb is
  port (
    \s0_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regwrite_out : in STD_LOGIC;
    n_0_589_BUFG : in STD_LOGIC;
    rst : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end mem_wb;

architecture STRUCTURE of mem_wb is
begin
\t_wbregdata_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst,
      D => D(0),
      Q => Q(0)
    );
\t_wbregdata_out_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst,
      D => D(10),
      Q => Q(10)
    );
\t_wbregdata_out_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst,
      D => D(11),
      Q => Q(11)
    );
\t_wbregdata_out_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst,
      D => D(12),
      Q => Q(12)
    );
\t_wbregdata_out_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst,
      D => D(13),
      Q => Q(13)
    );
\t_wbregdata_out_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst,
      D => D(14),
      Q => Q(14)
    );
\t_wbregdata_out_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst,
      D => D(15),
      Q => Q(15)
    );
\t_wbregdata_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst,
      D => D(1),
      Q => Q(1)
    );
\t_wbregdata_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst,
      D => D(2),
      Q => Q(2)
    );
\t_wbregdata_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst,
      D => D(3),
      Q => Q(3)
    );
\t_wbregdata_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst,
      D => D(4),
      Q => Q(4)
    );
\t_wbregdata_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst,
      D => D(5),
      Q => Q(5)
    );
\t_wbregdata_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst,
      D => D(6),
      Q => Q(6)
    );
\t_wbregdata_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst,
      D => D(7),
      Q => Q(7)
    );
\t_wbregdata_out_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst,
      D => D(8),
      Q => Q(8)
    );
\t_wbregdata_out_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst,
      D => D(9),
      Q => Q(9)
    );
t_wbregwrite_out_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst,
      D => regwrite_out,
      Q => \s0_reg[0]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity char_mem_blk_mem_gen_prim_wrapper is
  port (
    douta : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of char_mem_blk_mem_gen_prim_wrapper : entity is "blk_mem_gen_prim_wrapper";
end char_mem_blk_mem_gen_prim_wrapper;

architecture STRUCTURE of char_mem_blk_mem_gen_prim_wrapper is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 0) => addra(14 downto 0),
      ADDRBWRADDR(15 downto 0) => B"0000000000000000",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 0) => B"00000000000000000000000000000000",
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 1),
      DOADO(0) => douta(0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => '1',
      ENBWREN => '0',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '1',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_mem_blk_mem_gen_prim_wrapper is
  port (
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_mem_blk_mem_gen_prim_wrapper : entity is "blk_mem_gen_prim_wrapper";
end fifo_mem_blk_mem_gen_prim_wrapper;

architecture STRUCTURE of fifo_mem_blk_mem_gen_prim_wrapper is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram\ : label is "PRIMITIVE";
begin
  doutb(7) <= 'Z';
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "NO_CHANGE",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(13 downto 3) => addra(10 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(13 downto 3) => addrb(10 downto 0),
      ADDRBWRADDR(2 downto 0) => B"000",
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(15 downto 0) => B"0000000000000000",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED\(15 downto 0),
      DOBDO(15 downto 7) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED\(15 downto 7),
      DOBDO(6 downto 0) => doutb(6 downto 0),
      DOPADOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED\(1 downto 0),
      DOPBDOP(1 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED\(1 downto 0),
      ENARDEN => wea(0),
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"11",
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MemoryController is
  port (
    flash_oe_OBUF : out STD_LOGIC;
    flash_we_OBUF : out STD_LOGIC;
    \MemData2_TRI[0]\ : out STD_LOGIC;
    wrn_OBUF : out STD_LOGIC;
    we2_OBUF : out STD_LOGIC;
    rdn_OBUF : out STD_LOGIC;
    \s_from_pc_reg[0]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    memoryWrite_reg : out STD_LOGIC;
    \r0_reg[2]\ : out STD_LOGIC;
    n_0_589_BUFG_inst_n_1 : out STD_LOGIC;
    \MemData1_TRI[0]\ : out STD_LOGIC;
    \flash_data_IOBUF[15]_inst_i_1\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_memout_mem : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \MemAddr1[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \toutput2_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    oe2_OBUF : out STD_LOGIC;
    rst_IBUF : in STD_LOGIC;
    clk_in_BUFG : in STD_LOGIC;
    rst : in STD_LOGIC;
    MemData2_IBUF : in STD_LOGIC_VECTOR ( 15 downto 0 );
    memwrite_out : in STD_LOGIC;
    \t_aluout_out_reg[10]\ : in STD_LOGIC;
    memread_out : in STD_LOGIC;
    \s_r_x_reg[0]\ : in STD_LOGIC;
    \s_r_y_reg[1]\ : in STD_LOGIC;
    \s_r_y_reg[2]\ : in STD_LOGIC;
    \flash_data_IOBUF[15]_inst_i_1_0\ : in STD_LOGIC;
    \flash_data_IOBUF[15]_inst_i_1_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \DataBuf_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \t_aluout_out_reg[10]_0\ : in STD_LOGIC;
    \t_memdata_out_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \t_aluout_out_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end MemoryController;

architecture STRUCTURE of MemoryController is
  signal \^d\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal DataBuf : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \FSM_sequential_state[0]_i_1_n_1\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_1\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_1\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_1\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_1\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_1\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_1\ : STD_LOGIC;
  signal WillWrite_inv_i_1_n_1 : STD_LOGIC;
  signal addressTemp : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dataout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal flash_addr_input : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal flash_addr_input0 : STD_LOGIC;
  signal \flash_addr_input[17]_i_3_n_1\ : STD_LOGIC;
  signal \flash_addr_input[1]_i_1_n_1\ : STD_LOGIC;
  signal \flash_addr_input_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \flash_addr_input_reg[13]_i_1_n_5\ : STD_LOGIC;
  signal \flash_addr_input_reg[13]_i_1_n_6\ : STD_LOGIC;
  signal \flash_addr_input_reg[13]_i_1_n_7\ : STD_LOGIC;
  signal \flash_addr_input_reg[13]_i_1_n_8\ : STD_LOGIC;
  signal \flash_addr_input_reg[17]_i_2_n_1\ : STD_LOGIC;
  signal \flash_addr_input_reg[17]_i_2_n_6\ : STD_LOGIC;
  signal \flash_addr_input_reg[17]_i_2_n_7\ : STD_LOGIC;
  signal \flash_addr_input_reg[17]_i_2_n_8\ : STD_LOGIC;
  signal \flash_addr_input_reg[5]_i_1_n_1\ : STD_LOGIC;
  signal \flash_addr_input_reg[5]_i_1_n_5\ : STD_LOGIC;
  signal \flash_addr_input_reg[5]_i_1_n_6\ : STD_LOGIC;
  signal \flash_addr_input_reg[5]_i_1_n_7\ : STD_LOGIC;
  signal \flash_addr_input_reg[5]_i_1_n_8\ : STD_LOGIC;
  signal \flash_addr_input_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \flash_addr_input_reg[9]_i_1_n_5\ : STD_LOGIC;
  signal \flash_addr_input_reg[9]_i_1_n_6\ : STD_LOGIC;
  signal \flash_addr_input_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal \flash_addr_input_reg[9]_i_1_n_8\ : STD_LOGIC;
  signal \flash_pc_addr[0]_i_5_n_1\ : STD_LOGIC;
  signal flash_pc_addr_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \flash_pc_addr_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \flash_pc_addr_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \flash_pc_addr_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \flash_pc_addr_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \flash_pc_addr_reg[0]_i_1_n_8\ : STD_LOGIC;
  signal \flash_pc_addr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \flash_pc_addr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \flash_pc_addr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \flash_pc_addr_reg[12]_i_1_n_8\ : STD_LOGIC;
  signal \flash_pc_addr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \flash_pc_addr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \flash_pc_addr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \flash_pc_addr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \flash_pc_addr_reg[4]_i_1_n_8\ : STD_LOGIC;
  signal \flash_pc_addr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \flash_pc_addr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \flash_pc_addr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \flash_pc_addr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \flash_pc_addr_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal flash_read : STD_LOGIC;
  signal flash_read_reg_n_1 : STD_LOGIC;
  signal \flash_state_num[0]_i_1_n_1\ : STD_LOGIC;
  signal \flash_state_num[1]_i_1_n_1\ : STD_LOGIC;
  signal \flash_state_num[2]_i_1_n_1\ : STD_LOGIC;
  signal \flash_state_num_reg_n_1_[0]\ : STD_LOGIC;
  signal \flash_state_num_reg_n_1_[1]\ : STD_LOGIC;
  signal \flash_state_num_reg_n_1_[2]\ : STD_LOGIC;
  signal ltOp : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of state : signal is "yes";
  signal tflash_data0 : STD_LOGIC;
  signal \tflash_data_reg_n_1_[0]\ : STD_LOGIC;
  signal \tflash_data_reg_n_1_[10]\ : STD_LOGIC;
  signal \tflash_data_reg_n_1_[11]\ : STD_LOGIC;
  signal \tflash_data_reg_n_1_[12]\ : STD_LOGIC;
  signal \tflash_data_reg_n_1_[13]\ : STD_LOGIC;
  signal \tflash_data_reg_n_1_[14]\ : STD_LOGIC;
  signal \tflash_data_reg_n_1_[15]\ : STD_LOGIC;
  signal \tflash_data_reg_n_1_[1]\ : STD_LOGIC;
  signal \tflash_data_reg_n_1_[2]\ : STD_LOGIC;
  signal \tflash_data_reg_n_1_[3]\ : STD_LOGIC;
  signal \tflash_data_reg_n_1_[4]\ : STD_LOGIC;
  signal \tflash_data_reg_n_1_[5]\ : STD_LOGIC;
  signal \tflash_data_reg_n_1_[6]\ : STD_LOGIC;
  signal \tflash_data_reg_n_1_[7]\ : STD_LOGIC;
  signal \tflash_data_reg_n_1_[8]\ : STD_LOGIC;
  signal \tflash_data_reg_n_1_[9]\ : STD_LOGIC;
  signal \toutput1__0_n_1\ : STD_LOGIC;
  signal \toutput1__10_n_1\ : STD_LOGIC;
  signal \toutput1__11_n_1\ : STD_LOGIC;
  signal \toutput1__12_n_1\ : STD_LOGIC;
  signal \toutput1__13_n_1\ : STD_LOGIC;
  signal \toutput1__14_n_1\ : STD_LOGIC;
  signal \toutput1__15_n_1\ : STD_LOGIC;
  signal \toutput1__16\ : STD_LOGIC;
  signal \toutput1__1_n_1\ : STD_LOGIC;
  signal \toutput1__2_n_1\ : STD_LOGIC;
  signal \toutput1__3_n_1\ : STD_LOGIC;
  signal \toutput1__4_n_1\ : STD_LOGIC;
  signal \toutput1__5_n_1\ : STD_LOGIC;
  signal \toutput1__6_n_1\ : STD_LOGIC;
  signal \toutput1__7_n_1\ : STD_LOGIC;
  signal \toutput1__8_n_1\ : STD_LOGIC;
  signal \toutput1__9_n_1\ : STD_LOGIC;
  signal \toutput1_reg[0]_C_n_1\ : STD_LOGIC;
  signal \toutput1_reg[0]_LDC_i_1_n_1\ : STD_LOGIC;
  signal \toutput1_reg[0]_LDC_i_2_n_1\ : STD_LOGIC;
  signal \toutput1_reg[0]_LDC_n_1\ : STD_LOGIC;
  signal \toutput1_reg[0]_P_n_1\ : STD_LOGIC;
  signal \toutput1_reg[10]_C_n_1\ : STD_LOGIC;
  signal \toutput1_reg[10]_LDC_i_1_n_1\ : STD_LOGIC;
  signal \toutput1_reg[10]_LDC_i_2_n_1\ : STD_LOGIC;
  signal \toutput1_reg[10]_LDC_n_1\ : STD_LOGIC;
  signal \toutput1_reg[10]_P_n_1\ : STD_LOGIC;
  signal \toutput1_reg[11]_C_n_1\ : STD_LOGIC;
  signal \toutput1_reg[11]_LDC_i_1_n_1\ : STD_LOGIC;
  signal \toutput1_reg[11]_LDC_i_2_n_1\ : STD_LOGIC;
  signal \toutput1_reg[11]_LDC_n_1\ : STD_LOGIC;
  signal \toutput1_reg[11]_P_n_1\ : STD_LOGIC;
  signal \toutput1_reg[12]_C_n_1\ : STD_LOGIC;
  signal \toutput1_reg[12]_LDC_i_1_n_1\ : STD_LOGIC;
  signal \toutput1_reg[12]_LDC_i_2_n_1\ : STD_LOGIC;
  signal \toutput1_reg[12]_LDC_n_1\ : STD_LOGIC;
  signal \toutput1_reg[12]_P_n_1\ : STD_LOGIC;
  signal \toutput1_reg[13]_C_n_1\ : STD_LOGIC;
  signal \toutput1_reg[13]_LDC_i_1_n_1\ : STD_LOGIC;
  signal \toutput1_reg[13]_LDC_i_2_n_1\ : STD_LOGIC;
  signal \toutput1_reg[13]_LDC_n_1\ : STD_LOGIC;
  signal \toutput1_reg[13]_P_n_1\ : STD_LOGIC;
  signal \toutput1_reg[14]_C_n_1\ : STD_LOGIC;
  signal \toutput1_reg[14]_LDC_i_1_n_1\ : STD_LOGIC;
  signal \toutput1_reg[14]_LDC_i_2_n_1\ : STD_LOGIC;
  signal \toutput1_reg[14]_LDC_n_1\ : STD_LOGIC;
  signal \toutput1_reg[14]_P_n_1\ : STD_LOGIC;
  signal \toutput1_reg[15]_C_n_1\ : STD_LOGIC;
  signal \toutput1_reg[15]_LDC_i_1_n_1\ : STD_LOGIC;
  signal \toutput1_reg[15]_LDC_i_2_n_1\ : STD_LOGIC;
  signal \toutput1_reg[15]_LDC_n_1\ : STD_LOGIC;
  signal \toutput1_reg[15]_P_n_1\ : STD_LOGIC;
  signal \toutput1_reg[1]_C_n_1\ : STD_LOGIC;
  signal \toutput1_reg[1]_LDC_i_1_n_1\ : STD_LOGIC;
  signal \toutput1_reg[1]_LDC_i_2_n_1\ : STD_LOGIC;
  signal \toutput1_reg[1]_LDC_n_1\ : STD_LOGIC;
  signal \toutput1_reg[1]_P_n_1\ : STD_LOGIC;
  signal \toutput1_reg[2]_C_n_1\ : STD_LOGIC;
  signal \toutput1_reg[2]_LDC_i_1_n_1\ : STD_LOGIC;
  signal \toutput1_reg[2]_LDC_i_2_n_1\ : STD_LOGIC;
  signal \toutput1_reg[2]_LDC_n_1\ : STD_LOGIC;
  signal \toutput1_reg[2]_P_n_1\ : STD_LOGIC;
  signal \toutput1_reg[3]_C_n_1\ : STD_LOGIC;
  signal \toutput1_reg[3]_LDC_i_1_n_1\ : STD_LOGIC;
  signal \toutput1_reg[3]_LDC_i_2_n_1\ : STD_LOGIC;
  signal \toutput1_reg[3]_LDC_n_1\ : STD_LOGIC;
  signal \toutput1_reg[3]_P_n_1\ : STD_LOGIC;
  signal \toutput1_reg[4]_C_n_1\ : STD_LOGIC;
  signal \toutput1_reg[4]_LDC_i_1_n_1\ : STD_LOGIC;
  signal \toutput1_reg[4]_LDC_i_2_n_1\ : STD_LOGIC;
  signal \toutput1_reg[4]_LDC_n_1\ : STD_LOGIC;
  signal \toutput1_reg[4]_P_n_1\ : STD_LOGIC;
  signal \toutput1_reg[5]_C_n_1\ : STD_LOGIC;
  signal \toutput1_reg[5]_LDC_i_1_n_1\ : STD_LOGIC;
  signal \toutput1_reg[5]_LDC_i_2_n_1\ : STD_LOGIC;
  signal \toutput1_reg[5]_LDC_n_1\ : STD_LOGIC;
  signal \toutput1_reg[5]_P_n_1\ : STD_LOGIC;
  signal \toutput1_reg[6]_C_n_1\ : STD_LOGIC;
  signal \toutput1_reg[6]_LDC_i_1_n_1\ : STD_LOGIC;
  signal \toutput1_reg[6]_LDC_i_2_n_1\ : STD_LOGIC;
  signal \toutput1_reg[6]_LDC_n_1\ : STD_LOGIC;
  signal \toutput1_reg[6]_P_n_1\ : STD_LOGIC;
  signal \toutput1_reg[7]_C_n_1\ : STD_LOGIC;
  signal \toutput1_reg[7]_LDC_i_1_n_1\ : STD_LOGIC;
  signal \toutput1_reg[7]_LDC_i_2_n_1\ : STD_LOGIC;
  signal \toutput1_reg[7]_LDC_n_1\ : STD_LOGIC;
  signal \toutput1_reg[7]_P_n_1\ : STD_LOGIC;
  signal \toutput1_reg[8]_C_n_1\ : STD_LOGIC;
  signal \toutput1_reg[8]_LDC_i_1_n_1\ : STD_LOGIC;
  signal \toutput1_reg[8]_LDC_i_2_n_1\ : STD_LOGIC;
  signal \toutput1_reg[8]_LDC_n_1\ : STD_LOGIC;
  signal \toutput1_reg[8]_P_n_1\ : STD_LOGIC;
  signal \toutput1_reg[9]_C_n_1\ : STD_LOGIC;
  signal \toutput1_reg[9]_LDC_i_1_n_1\ : STD_LOGIC;
  signal \toutput1_reg[9]_LDC_i_2_n_1\ : STD_LOGIC;
  signal \toutput1_reg[9]_LDC_n_1\ : STD_LOGIC;
  signal \toutput1_reg[9]_P_n_1\ : STD_LOGIC;
  signal toutput20 : STD_LOGIC;
  signal \toutput2[15]_i_1_n_1\ : STD_LOGIC;
  signal \NLW_flash_addr_input_reg[13]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_flash_addr_input_reg[17]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_flash_addr_input_reg[17]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_flash_addr_input_reg[5]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_flash_addr_input_reg[9]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_flash_pc_addr_reg[0]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_flash_pc_addr_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_flash_pc_addr_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_flash_pc_addr_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[2]\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \flash_addr_input_reg[13]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \flash_addr_input_reg[17]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \flash_addr_input_reg[5]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \flash_addr_input_reg[9]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \flash_pc_addr_reg[0]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \flash_pc_addr_reg[12]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \flash_pc_addr_reg[4]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \flash_pc_addr_reg[8]_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \toutput1_reg[0]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \toutput1_reg[10]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \toutput1_reg[11]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \toutput1_reg[12]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \toutput1_reg[13]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \toutput1_reg[14]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \toutput1_reg[15]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \toutput1_reg[1]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \toutput1_reg[2]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \toutput1_reg[3]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \toutput1_reg[4]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \toutput1_reg[5]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \toutput1_reg[6]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \toutput1_reg[7]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \toutput1_reg[8]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \toutput1_reg[9]_LDC\ : label is "LDC";
begin
  D(15 downto 0) <= \^d\(15 downto 0);
\DataBuf[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFB0208"
    )
        port map (
      I0 => \tflash_data_reg_n_1_[0]\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \t_memdata_out_reg[15]\(0),
      O => DataBuf(0)
    );
\DataBuf[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFB0208"
    )
        port map (
      I0 => \tflash_data_reg_n_1_[10]\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \t_memdata_out_reg[15]\(10),
      O => DataBuf(10)
    );
\DataBuf[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFB0208"
    )
        port map (
      I0 => \tflash_data_reg_n_1_[11]\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \t_memdata_out_reg[15]\(11),
      O => DataBuf(11)
    );
\DataBuf[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFB0208"
    )
        port map (
      I0 => \tflash_data_reg_n_1_[12]\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \t_memdata_out_reg[15]\(12),
      O => DataBuf(12)
    );
\DataBuf[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFB0208"
    )
        port map (
      I0 => \tflash_data_reg_n_1_[13]\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \t_memdata_out_reg[15]\(13),
      O => DataBuf(13)
    );
\DataBuf[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFB0208"
    )
        port map (
      I0 => \tflash_data_reg_n_1_[14]\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \t_memdata_out_reg[15]\(14),
      O => DataBuf(14)
    );
\DataBuf[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFB0208"
    )
        port map (
      I0 => \tflash_data_reg_n_1_[15]\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \t_memdata_out_reg[15]\(15),
      O => DataBuf(15)
    );
\DataBuf[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFB0208"
    )
        port map (
      I0 => \tflash_data_reg_n_1_[1]\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \t_memdata_out_reg[15]\(1),
      O => DataBuf(1)
    );
\DataBuf[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFB0208"
    )
        port map (
      I0 => \tflash_data_reg_n_1_[2]\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \t_memdata_out_reg[15]\(2),
      O => DataBuf(2)
    );
\DataBuf[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFB0208"
    )
        port map (
      I0 => \tflash_data_reg_n_1_[3]\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \t_memdata_out_reg[15]\(3),
      O => DataBuf(3)
    );
\DataBuf[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFB0208"
    )
        port map (
      I0 => \tflash_data_reg_n_1_[4]\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \t_memdata_out_reg[15]\(4),
      O => DataBuf(4)
    );
\DataBuf[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFB0208"
    )
        port map (
      I0 => \tflash_data_reg_n_1_[5]\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \t_memdata_out_reg[15]\(5),
      O => DataBuf(5)
    );
\DataBuf[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFB0208"
    )
        port map (
      I0 => \tflash_data_reg_n_1_[6]\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \t_memdata_out_reg[15]\(6),
      O => DataBuf(6)
    );
\DataBuf[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFB0208"
    )
        port map (
      I0 => \tflash_data_reg_n_1_[7]\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \t_memdata_out_reg[15]\(7),
      O => DataBuf(7)
    );
\DataBuf[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFB0208"
    )
        port map (
      I0 => \tflash_data_reg_n_1_[8]\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \t_memdata_out_reg[15]\(8),
      O => DataBuf(8)
    );
\DataBuf[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFB0208"
    )
        port map (
      I0 => \tflash_data_reg_n_1_[9]\,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => \t_memdata_out_reg[15]\(9),
      O => DataBuf(9)
    );
\DataBuf_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => DataBuf(0),
      Q => \toutput2_reg[15]_0\(0),
      R => '0'
    );
\DataBuf_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => DataBuf(10),
      Q => \toutput2_reg[15]_0\(10),
      R => '0'
    );
\DataBuf_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => DataBuf(11),
      Q => \toutput2_reg[15]_0\(11),
      R => '0'
    );
\DataBuf_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => DataBuf(12),
      Q => \toutput2_reg[15]_0\(12),
      R => '0'
    );
\DataBuf_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => DataBuf(13),
      Q => \toutput2_reg[15]_0\(13),
      R => '0'
    );
\DataBuf_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => DataBuf(14),
      Q => \toutput2_reg[15]_0\(14),
      R => '0'
    );
\DataBuf_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => DataBuf(15),
      Q => \toutput2_reg[15]_0\(15),
      R => '0'
    );
\DataBuf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => DataBuf(1),
      Q => \toutput2_reg[15]_0\(1),
      R => '0'
    );
\DataBuf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => DataBuf(2),
      Q => \toutput2_reg[15]_0\(2),
      R => '0'
    );
\DataBuf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => DataBuf(3),
      Q => \toutput2_reg[15]_0\(3),
      R => '0'
    );
\DataBuf_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => DataBuf(4),
      Q => \toutput2_reg[15]_0\(4),
      R => '0'
    );
\DataBuf_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => DataBuf(5),
      Q => \toutput2_reg[15]_0\(5),
      R => '0'
    );
\DataBuf_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => DataBuf(6),
      Q => \toutput2_reg[15]_0\(6),
      R => '0'
    );
\DataBuf_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => DataBuf(7),
      Q => \toutput2_reg[15]_0\(7),
      R => '0'
    );
\DataBuf_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => DataBuf(8),
      Q => \toutput2_reg[15]_0\(8),
      R => '0'
    );
\DataBuf_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => DataBuf(9),
      Q => \toutput2_reg[15]_0\(9),
      R => '0'
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5557"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => \FSM_sequential_state[2]_i_2_n_1\,
      I3 => state(1),
      O => \FSM_sequential_state[0]_i_1_n_1\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3131CCC0"
    )
        port map (
      I0 => ltOp,
      I1 => state(0),
      I2 => state(2),
      I3 => \FSM_sequential_state[2]_i_2_n_1\,
      I4 => state(1),
      O => \FSM_sequential_state[1]_i_1_n_1\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => flash_pc_addr_reg(13),
      I1 => flash_pc_addr_reg(12),
      I2 => flash_pc_addr_reg(14),
      I3 => flash_pc_addr_reg(15),
      I4 => \FSM_sequential_state[1]_i_3_n_1\,
      O => ltOp
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => flash_pc_addr_reg(10),
      I1 => flash_pc_addr_reg(9),
      I2 => flash_pc_addr_reg(5),
      I3 => flash_pc_addr_reg(2),
      I4 => \FSM_sequential_state[1]_i_4_n_1\,
      I5 => \FSM_sequential_state[1]_i_5_n_1\,
      O => \FSM_sequential_state[1]_i_3_n_1\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => flash_pc_addr_reg(3),
      I1 => flash_pc_addr_reg(8),
      I2 => flash_pc_addr_reg(11),
      I3 => flash_pc_addr_reg(6),
      O => \FSM_sequential_state[1]_i_4_n_1\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => flash_pc_addr_reg(4),
      I1 => flash_pc_addr_reg(7),
      I2 => flash_pc_addr_reg(1),
      I3 => flash_pc_addr_reg(0),
      O => \FSM_sequential_state[1]_i_5_n_1\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      O => \FSM_sequential_state[2]_i_1_n_1\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \flash_state_num_reg_n_1_[0]\,
      I1 => \flash_state_num_reg_n_1_[2]\,
      I2 => \flash_state_num_reg_n_1_[1]\,
      O => \FSM_sequential_state[2]_i_2_n_1\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => '1',
      CLR => rst,
      D => \FSM_sequential_state[0]_i_1_n_1\,
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => '1',
      CLR => rst,
      D => \FSM_sequential_state[1]_i_1_n_1\,
      Q => state(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => '1',
      CLR => rst,
      D => \FSM_sequential_state[2]_i_1_n_1\,
      Q => state(2)
    );
\MemData1_IOBUF[7]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"57FF"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => memwrite_out,
      O => \MemData1_TRI[0]\
    );
WillWrite: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9BFB"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => memwrite_out,
      O => WillWrite_inv_i_1_n_1
    );
WillWrite_reg_inv: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => WillWrite_inv_i_1_n_1,
      Q => \MemData2_TRI[0]\,
      R => '0'
    );
\addressTemp[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83B08080"
    )
        port map (
      I0 => \t_aluout_out_reg[15]\(0),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => flash_pc_addr_reg(0),
      O => addressTemp(0)
    );
\addressTemp[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83B08080"
    )
        port map (
      I0 => \t_aluout_out_reg[15]\(10),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => flash_pc_addr_reg(10),
      O => addressTemp(10)
    );
\addressTemp[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83B08080"
    )
        port map (
      I0 => \t_aluout_out_reg[15]\(11),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => flash_pc_addr_reg(11),
      O => addressTemp(11)
    );
\addressTemp[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83B08080"
    )
        port map (
      I0 => \t_aluout_out_reg[15]\(12),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => flash_pc_addr_reg(12),
      O => addressTemp(12)
    );
\addressTemp[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83B08080"
    )
        port map (
      I0 => \t_aluout_out_reg[15]\(13),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => flash_pc_addr_reg(13),
      O => addressTemp(13)
    );
\addressTemp[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83B08080"
    )
        port map (
      I0 => \t_aluout_out_reg[15]\(14),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => flash_pc_addr_reg(14),
      O => addressTemp(14)
    );
\addressTemp[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83B08080"
    )
        port map (
      I0 => \t_aluout_out_reg[15]\(15),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => flash_pc_addr_reg(15),
      O => addressTemp(15)
    );
\addressTemp[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83B08080"
    )
        port map (
      I0 => \t_aluout_out_reg[15]\(1),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => flash_pc_addr_reg(1),
      O => addressTemp(1)
    );
\addressTemp[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83B08080"
    )
        port map (
      I0 => \t_aluout_out_reg[15]\(2),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => flash_pc_addr_reg(2),
      O => addressTemp(2)
    );
\addressTemp[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83B08080"
    )
        port map (
      I0 => \t_aluout_out_reg[15]\(3),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => flash_pc_addr_reg(3),
      O => addressTemp(3)
    );
\addressTemp[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83B08080"
    )
        port map (
      I0 => \t_aluout_out_reg[15]\(4),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => flash_pc_addr_reg(4),
      O => addressTemp(4)
    );
\addressTemp[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83B08080"
    )
        port map (
      I0 => \t_aluout_out_reg[15]\(5),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => flash_pc_addr_reg(5),
      O => addressTemp(5)
    );
\addressTemp[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83B08080"
    )
        port map (
      I0 => \t_aluout_out_reg[15]\(6),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => flash_pc_addr_reg(6),
      O => addressTemp(6)
    );
\addressTemp[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83B08080"
    )
        port map (
      I0 => \t_aluout_out_reg[15]\(7),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => flash_pc_addr_reg(7),
      O => addressTemp(7)
    );
\addressTemp[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83B08080"
    )
        port map (
      I0 => \t_aluout_out_reg[15]\(8),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => flash_pc_addr_reg(8),
      O => addressTemp(8)
    );
\addressTemp[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"83B08080"
    )
        port map (
      I0 => \t_aluout_out_reg[15]\(9),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => flash_pc_addr_reg(9),
      O => addressTemp(9)
    );
\addressTemp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => addressTemp(0),
      Q => \MemAddr1[15]\(0),
      R => '0'
    );
\addressTemp_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => addressTemp(10),
      Q => \MemAddr1[15]\(10),
      R => '0'
    );
\addressTemp_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => addressTemp(11),
      Q => \MemAddr1[15]\(11),
      R => '0'
    );
\addressTemp_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => addressTemp(12),
      Q => \MemAddr1[15]\(12),
      R => '0'
    );
\addressTemp_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => addressTemp(13),
      Q => \MemAddr1[15]\(13),
      R => '0'
    );
\addressTemp_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => addressTemp(14),
      Q => \MemAddr1[15]\(14),
      R => '0'
    );
\addressTemp_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => addressTemp(15),
      Q => \MemAddr1[15]\(15),
      R => '0'
    );
\addressTemp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => addressTemp(1),
      Q => \MemAddr1[15]\(1),
      R => '0'
    );
\addressTemp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => addressTemp(2),
      Q => \MemAddr1[15]\(2),
      R => '0'
    );
\addressTemp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => addressTemp(3),
      Q => \MemAddr1[15]\(3),
      R => '0'
    );
\addressTemp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => addressTemp(4),
      Q => \MemAddr1[15]\(4),
      R => '0'
    );
\addressTemp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => addressTemp(5),
      Q => \MemAddr1[15]\(5),
      R => '0'
    );
\addressTemp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => addressTemp(6),
      Q => \MemAddr1[15]\(6),
      R => '0'
    );
\addressTemp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => addressTemp(7),
      Q => \MemAddr1[15]\(7),
      R => '0'
    );
\addressTemp_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => addressTemp(8),
      Q => \MemAddr1[15]\(8),
      R => '0'
    );
\addressTemp_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => addressTemp(9),
      Q => \MemAddr1[15]\(9),
      R => '0'
    );
cache_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      O => \r0_reg[2]\
    );
\flash_addr_input[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => rst_IBUF,
      I1 => \flash_state_num_reg_n_1_[2]\,
      I2 => \flash_state_num_reg_n_1_[0]\,
      I3 => \flash_state_num_reg_n_1_[1]\,
      I4 => state(0),
      I5 => \flash_addr_input[17]_i_3_n_1\,
      O => flash_addr_input0
    );
\flash_addr_input[17]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => \flash_addr_input[17]_i_3_n_1\
    );
\flash_addr_input[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => flash_pc_addr_reg(0),
      O => \flash_addr_input[1]_i_1_n_1\
    );
\flash_addr_input_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_addr_input_reg[13]_i_1_n_8\,
      Q => flash_addr_input(9),
      R => '0'
    );
\flash_addr_input_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_addr_input_reg[13]_i_1_n_7\,
      Q => flash_addr_input(10),
      R => '0'
    );
\flash_addr_input_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_addr_input_reg[13]_i_1_n_6\,
      Q => flash_addr_input(11),
      R => '0'
    );
\flash_addr_input_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_addr_input_reg[13]_i_1_n_5\,
      Q => flash_addr_input(12),
      R => '0'
    );
\flash_addr_input_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \flash_addr_input_reg[9]_i_1_n_1\,
      CO(3) => \flash_addr_input_reg[13]_i_1_n_1\,
      CO(2 downto 0) => \NLW_flash_addr_input_reg[13]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \flash_addr_input_reg[13]_i_1_n_5\,
      O(2) => \flash_addr_input_reg[13]_i_1_n_6\,
      O(1) => \flash_addr_input_reg[13]_i_1_n_7\,
      O(0) => \flash_addr_input_reg[13]_i_1_n_8\,
      S(3 downto 0) => flash_pc_addr_reg(12 downto 9)
    );
\flash_addr_input_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_addr_input_reg[17]_i_2_n_8\,
      Q => flash_addr_input(13),
      R => '0'
    );
\flash_addr_input_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_addr_input_reg[17]_i_2_n_7\,
      Q => flash_addr_input(14),
      R => '0'
    );
\flash_addr_input_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_addr_input_reg[17]_i_2_n_6\,
      Q => flash_addr_input(15),
      R => '0'
    );
\flash_addr_input_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_addr_input_reg[17]_i_2_n_1\,
      Q => flash_addr_input(16),
      R => '0'
    );
\flash_addr_input_reg[17]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \flash_addr_input_reg[13]_i_1_n_1\,
      CO(3) => \flash_addr_input_reg[17]_i_2_n_1\,
      CO(2 downto 0) => \NLW_flash_addr_input_reg[17]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_flash_addr_input_reg[17]_i_2_O_UNCONNECTED\(3),
      O(2) => \flash_addr_input_reg[17]_i_2_n_6\,
      O(1) => \flash_addr_input_reg[17]_i_2_n_7\,
      O(0) => \flash_addr_input_reg[17]_i_2_n_8\,
      S(3) => '1',
      S(2 downto 0) => flash_pc_addr_reg(15 downto 13)
    );
\flash_addr_input_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_addr_input[1]_i_1_n_1\,
      Q => flash_addr_input(0),
      R => '0'
    );
\flash_addr_input_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_addr_input_reg[5]_i_1_n_8\,
      Q => flash_addr_input(1),
      R => '0'
    );
\flash_addr_input_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_addr_input_reg[5]_i_1_n_7\,
      Q => flash_addr_input(2),
      R => '0'
    );
\flash_addr_input_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_addr_input_reg[5]_i_1_n_6\,
      Q => flash_addr_input(3),
      R => '0'
    );
\flash_addr_input_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_addr_input_reg[5]_i_1_n_5\,
      Q => flash_addr_input(4),
      R => '0'
    );
\flash_addr_input_reg[5]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \flash_addr_input_reg[5]_i_1_n_1\,
      CO(2 downto 0) => \NLW_flash_addr_input_reg[5]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => flash_pc_addr_reg(0),
      DI(3 downto 0) => B"0000",
      O(3) => \flash_addr_input_reg[5]_i_1_n_5\,
      O(2) => \flash_addr_input_reg[5]_i_1_n_6\,
      O(1) => \flash_addr_input_reg[5]_i_1_n_7\,
      O(0) => \flash_addr_input_reg[5]_i_1_n_8\,
      S(3 downto 0) => flash_pc_addr_reg(4 downto 1)
    );
\flash_addr_input_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_addr_input_reg[9]_i_1_n_8\,
      Q => flash_addr_input(5),
      R => '0'
    );
\flash_addr_input_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_addr_input_reg[9]_i_1_n_7\,
      Q => flash_addr_input(6),
      R => '0'
    );
\flash_addr_input_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_addr_input_reg[9]_i_1_n_6\,
      Q => flash_addr_input(7),
      R => '0'
    );
\flash_addr_input_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_addr_input_reg[9]_i_1_n_5\,
      Q => flash_addr_input(8),
      R => '0'
    );
\flash_addr_input_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \flash_addr_input_reg[5]_i_1_n_1\,
      CO(3) => \flash_addr_input_reg[9]_i_1_n_1\,
      CO(2 downto 0) => \NLW_flash_addr_input_reg[9]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \flash_addr_input_reg[9]_i_1_n_5\,
      O(2) => \flash_addr_input_reg[9]_i_1_n_6\,
      O(1) => \flash_addr_input_reg[9]_i_1_n_7\,
      O(0) => \flash_addr_input_reg[9]_i_1_n_8\,
      S(3 downto 0) => flash_pc_addr_reg(8 downto 5)
    );
flash_local: entity work.Flash
     port map (
      Q(16 downto 0) => Q(16 downto 0),
      clk_in_BUFG => clk_in_BUFG,
      \flash_addr_input_reg[17]\(16 downto 0) => flash_addr_input(16 downto 0),
      \flash_data_IOBUF[15]_inst_i_1\ => \flash_data_IOBUF[15]_inst_i_1\,
      \flash_data_IOBUF[15]_inst_i_1_0\ => \flash_data_IOBUF[15]_inst_i_1_0\,
      \flash_data_IOBUF[15]_inst_i_1_1\(15 downto 0) => \flash_data_IOBUF[15]_inst_i_1_1\(15 downto 0),
      flash_oe_OBUF => flash_oe_OBUF,
      flash_read_reg => flash_read_reg_n_1,
      flash_we_OBUF => flash_we_OBUF,
      rst => rst,
      rst_IBUF => rst_IBUF,
      \tflash_data_reg[15]\(15 downto 0) => dataout(15 downto 0)
    );
\flash_pc_addr[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => flash_pc_addr_reg(0),
      O => \flash_pc_addr[0]_i_5_n_1\
    );
\flash_pc_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_pc_addr_reg[0]_i_1_n_8\,
      Q => flash_pc_addr_reg(0),
      R => '0'
    );
\flash_pc_addr_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \flash_pc_addr_reg[0]_i_1_n_1\,
      CO(2 downto 0) => \NLW_flash_pc_addr_reg[0]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \flash_pc_addr_reg[0]_i_1_n_5\,
      O(2) => \flash_pc_addr_reg[0]_i_1_n_6\,
      O(1) => \flash_pc_addr_reg[0]_i_1_n_7\,
      O(0) => \flash_pc_addr_reg[0]_i_1_n_8\,
      S(3 downto 1) => flash_pc_addr_reg(3 downto 1),
      S(0) => \flash_pc_addr[0]_i_5_n_1\
    );
\flash_pc_addr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_pc_addr_reg[8]_i_1_n_6\,
      Q => flash_pc_addr_reg(10),
      R => '0'
    );
\flash_pc_addr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_pc_addr_reg[8]_i_1_n_5\,
      Q => flash_pc_addr_reg(11),
      R => '0'
    );
\flash_pc_addr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_pc_addr_reg[12]_i_1_n_8\,
      Q => flash_pc_addr_reg(12),
      R => '0'
    );
\flash_pc_addr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \flash_pc_addr_reg[8]_i_1_n_1\,
      CO(3 downto 0) => \NLW_flash_pc_addr_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \flash_pc_addr_reg[12]_i_1_n_5\,
      O(2) => \flash_pc_addr_reg[12]_i_1_n_6\,
      O(1) => \flash_pc_addr_reg[12]_i_1_n_7\,
      O(0) => \flash_pc_addr_reg[12]_i_1_n_8\,
      S(3 downto 0) => flash_pc_addr_reg(15 downto 12)
    );
\flash_pc_addr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_pc_addr_reg[12]_i_1_n_7\,
      Q => flash_pc_addr_reg(13),
      R => '0'
    );
\flash_pc_addr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_pc_addr_reg[12]_i_1_n_6\,
      Q => flash_pc_addr_reg(14),
      R => '0'
    );
\flash_pc_addr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_pc_addr_reg[12]_i_1_n_5\,
      Q => flash_pc_addr_reg(15),
      R => '0'
    );
\flash_pc_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_pc_addr_reg[0]_i_1_n_7\,
      Q => flash_pc_addr_reg(1),
      R => '0'
    );
\flash_pc_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_pc_addr_reg[0]_i_1_n_6\,
      Q => flash_pc_addr_reg(2),
      R => '0'
    );
\flash_pc_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_pc_addr_reg[0]_i_1_n_5\,
      Q => flash_pc_addr_reg(3),
      R => '0'
    );
\flash_pc_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_pc_addr_reg[4]_i_1_n_8\,
      Q => flash_pc_addr_reg(4),
      R => '0'
    );
\flash_pc_addr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \flash_pc_addr_reg[0]_i_1_n_1\,
      CO(3) => \flash_pc_addr_reg[4]_i_1_n_1\,
      CO(2 downto 0) => \NLW_flash_pc_addr_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \flash_pc_addr_reg[4]_i_1_n_5\,
      O(2) => \flash_pc_addr_reg[4]_i_1_n_6\,
      O(1) => \flash_pc_addr_reg[4]_i_1_n_7\,
      O(0) => \flash_pc_addr_reg[4]_i_1_n_8\,
      S(3 downto 0) => flash_pc_addr_reg(7 downto 4)
    );
\flash_pc_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_pc_addr_reg[4]_i_1_n_7\,
      Q => flash_pc_addr_reg(5),
      R => '0'
    );
\flash_pc_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_pc_addr_reg[4]_i_1_n_6\,
      Q => flash_pc_addr_reg(6),
      R => '0'
    );
\flash_pc_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_pc_addr_reg[4]_i_1_n_5\,
      Q => flash_pc_addr_reg(7),
      R => '0'
    );
\flash_pc_addr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_pc_addr_reg[8]_i_1_n_8\,
      Q => flash_pc_addr_reg(8),
      R => '0'
    );
\flash_pc_addr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \flash_pc_addr_reg[4]_i_1_n_1\,
      CO(3) => \flash_pc_addr_reg[8]_i_1_n_1\,
      CO(2 downto 0) => \NLW_flash_pc_addr_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \flash_pc_addr_reg[8]_i_1_n_5\,
      O(2) => \flash_pc_addr_reg[8]_i_1_n_6\,
      O(1) => \flash_pc_addr_reg[8]_i_1_n_7\,
      O(0) => \flash_pc_addr_reg[8]_i_1_n_8\,
      S(3 downto 0) => flash_pc_addr_reg(11 downto 8)
    );
\flash_pc_addr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => flash_addr_input0,
      D => \flash_pc_addr_reg[8]_i_1_n_7\,
      Q => flash_pc_addr_reg(9),
      R => '0'
    );
flash_read_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      O => flash_read
    );
flash_read_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => rst_IBUF,
      D => flash_read,
      Q => flash_read_reg_n_1,
      R => '0'
    );
\flash_state_num[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF2A000000"
    )
        port map (
      I0 => state(0),
      I1 => \flash_state_num_reg_n_1_[2]\,
      I2 => \flash_state_num_reg_n_1_[1]\,
      I3 => rst_IBUF,
      I4 => \flash_addr_input[17]_i_3_n_1\,
      I5 => \flash_state_num_reg_n_1_[0]\,
      O => \flash_state_num[0]_i_1_n_1\
    );
\flash_state_num[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02FFFFFF88000000"
    )
        port map (
      I0 => state(0),
      I1 => \flash_state_num_reg_n_1_[0]\,
      I2 => \flash_state_num_reg_n_1_[2]\,
      I3 => rst_IBUF,
      I4 => \flash_addr_input[17]_i_3_n_1\,
      I5 => \flash_state_num_reg_n_1_[1]\,
      O => \flash_state_num[1]_i_1_n_1\
    );
\flash_state_num[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AFFFFFF80000000"
    )
        port map (
      I0 => state(0),
      I1 => \flash_state_num_reg_n_1_[0]\,
      I2 => \flash_state_num_reg_n_1_[1]\,
      I3 => rst_IBUF,
      I4 => \flash_addr_input[17]_i_3_n_1\,
      I5 => \flash_state_num_reg_n_1_[2]\,
      O => \flash_state_num[2]_i_1_n_1\
    );
\flash_state_num_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => '1',
      D => \flash_state_num[0]_i_1_n_1\,
      Q => \flash_state_num_reg_n_1_[0]\,
      R => '0'
    );
\flash_state_num_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => '1',
      D => \flash_state_num[1]_i_1_n_1\,
      Q => \flash_state_num_reg_n_1_[1]\,
      R => '0'
    );
\flash_state_num_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => '1',
      D => \flash_state_num[2]_i_1_n_1\,
      Q => \flash_state_num_reg_n_1_[2]\,
      R => '0'
    );
memoryOE: unisim.vcomponents.LUT4
    generic map(
      INIT => X"043C"
    )
        port map (
      I0 => memread_out,
      I1 => state(1),
      I2 => state(0),
      I3 => state(2),
      O => oe2_OBUF
    );
memoryWrite_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000656A656A0000"
    )
        port map (
      I0 => \s_r_y_reg[1]\,
      I1 => \toutput1_reg[6]_P_n_1\,
      I2 => \toutput1_reg[6]_LDC_n_1\,
      I3 => \toutput1_reg[6]_C_n_1\,
      I4 => \s_r_y_reg[2]\,
      I5 => \^d\(7),
      O => memoryWrite_reg
    );
n_0_589_BUFG_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      O => n_0_589_BUFG_inst_n_1
    );
rdn_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBFFFFF"
    )
        port map (
      I0 => \t_aluout_out_reg[10]\,
      I1 => memread_out,
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      O => rdn_OBUF
    );
\s_instruction[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \toutput1_reg[0]_P_n_1\,
      I1 => \toutput1_reg[0]_LDC_n_1\,
      I2 => \toutput1_reg[0]_C_n_1\,
      O => \^d\(0)
    );
\s_instruction[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \toutput1_reg[10]_P_n_1\,
      I1 => \toutput1_reg[10]_LDC_n_1\,
      I2 => \toutput1_reg[10]_C_n_1\,
      O => \^d\(10)
    );
\s_instruction[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \toutput1_reg[11]_P_n_1\,
      I1 => \toutput1_reg[11]_LDC_n_1\,
      I2 => \toutput1_reg[11]_C_n_1\,
      O => \^d\(11)
    );
\s_instruction[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \toutput1_reg[12]_P_n_1\,
      I1 => \toutput1_reg[12]_LDC_n_1\,
      I2 => \toutput1_reg[12]_C_n_1\,
      O => \^d\(12)
    );
\s_instruction[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \toutput1_reg[13]_P_n_1\,
      I1 => \toutput1_reg[13]_LDC_n_1\,
      I2 => \toutput1_reg[13]_C_n_1\,
      O => \^d\(13)
    );
\s_instruction[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \toutput1_reg[14]_P_n_1\,
      I1 => \toutput1_reg[14]_LDC_n_1\,
      I2 => \toutput1_reg[14]_C_n_1\,
      O => \^d\(14)
    );
\s_instruction[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \toutput1_reg[15]_P_n_1\,
      I1 => \toutput1_reg[15]_LDC_n_1\,
      I2 => \toutput1_reg[15]_C_n_1\,
      O => \^d\(15)
    );
\s_instruction[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => \^d\(8),
      I1 => \s_r_x_reg[0]\,
      I2 => \^d\(9),
      I3 => \s_r_y_reg[1]\,
      I4 => \s_r_y_reg[2]\,
      I5 => \^d\(10),
      O => \s_from_pc_reg[0]\
    );
\s_instruction[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \toutput1_reg[1]_P_n_1\,
      I1 => \toutput1_reg[1]_LDC_n_1\,
      I2 => \toutput1_reg[1]_C_n_1\,
      O => \^d\(1)
    );
\s_instruction[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \toutput1_reg[2]_P_n_1\,
      I1 => \toutput1_reg[2]_LDC_n_1\,
      I2 => \toutput1_reg[2]_C_n_1\,
      O => \^d\(2)
    );
\s_instruction[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \toutput1_reg[3]_P_n_1\,
      I1 => \toutput1_reg[3]_LDC_n_1\,
      I2 => \toutput1_reg[3]_C_n_1\,
      O => \^d\(3)
    );
\s_instruction[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \toutput1_reg[4]_P_n_1\,
      I1 => \toutput1_reg[4]_LDC_n_1\,
      I2 => \toutput1_reg[4]_C_n_1\,
      O => \^d\(4)
    );
\s_instruction[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \toutput1_reg[5]_P_n_1\,
      I1 => \toutput1_reg[5]_LDC_n_1\,
      I2 => \toutput1_reg[5]_C_n_1\,
      O => \^d\(5)
    );
\s_instruction[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \toutput1_reg[6]_P_n_1\,
      I1 => \toutput1_reg[6]_LDC_n_1\,
      I2 => \toutput1_reg[6]_C_n_1\,
      O => \^d\(6)
    );
\s_instruction[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \toutput1_reg[7]_P_n_1\,
      I1 => \toutput1_reg[7]_LDC_n_1\,
      I2 => \toutput1_reg[7]_C_n_1\,
      O => \^d\(7)
    );
\s_instruction[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \toutput1_reg[8]_P_n_1\,
      I1 => \toutput1_reg[8]_LDC_n_1\,
      I2 => \toutput1_reg[8]_C_n_1\,
      O => \^d\(8)
    );
\s_instruction[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \toutput1_reg[9]_P_n_1\,
      I1 => \toutput1_reg[9]_LDC_n_1\,
      I2 => \toutput1_reg[9]_C_n_1\,
      O => \^d\(9)
    );
\tflash_data[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => rst_IBUF,
      I1 => \FSM_sequential_state[2]_i_2_n_1\,
      I2 => state(0),
      I3 => state(2),
      I4 => state(1),
      O => tflash_data0
    );
\tflash_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => tflash_data0,
      D => dataout(0),
      Q => \tflash_data_reg_n_1_[0]\,
      R => '0'
    );
\tflash_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => tflash_data0,
      D => dataout(10),
      Q => \tflash_data_reg_n_1_[10]\,
      R => '0'
    );
\tflash_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => tflash_data0,
      D => dataout(11),
      Q => \tflash_data_reg_n_1_[11]\,
      R => '0'
    );
\tflash_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => tflash_data0,
      D => dataout(12),
      Q => \tflash_data_reg_n_1_[12]\,
      R => '0'
    );
\tflash_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => tflash_data0,
      D => dataout(13),
      Q => \tflash_data_reg_n_1_[13]\,
      R => '0'
    );
\tflash_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => tflash_data0,
      D => dataout(14),
      Q => \tflash_data_reg_n_1_[14]\,
      R => '0'
    );
\tflash_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => tflash_data0,
      D => dataout(15),
      Q => \tflash_data_reg_n_1_[15]\,
      R => '0'
    );
\tflash_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => tflash_data0,
      D => dataout(1),
      Q => \tflash_data_reg_n_1_[1]\,
      R => '0'
    );
\tflash_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => tflash_data0,
      D => dataout(2),
      Q => \tflash_data_reg_n_1_[2]\,
      R => '0'
    );
\tflash_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => tflash_data0,
      D => dataout(3),
      Q => \tflash_data_reg_n_1_[3]\,
      R => '0'
    );
\tflash_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => tflash_data0,
      D => dataout(4),
      Q => \tflash_data_reg_n_1_[4]\,
      R => '0'
    );
\tflash_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => tflash_data0,
      D => dataout(5),
      Q => \tflash_data_reg_n_1_[5]\,
      R => '0'
    );
\tflash_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => tflash_data0,
      D => dataout(6),
      Q => \tflash_data_reg_n_1_[6]\,
      R => '0'
    );
\tflash_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => tflash_data0,
      D => dataout(7),
      Q => \tflash_data_reg_n_1_[7]\,
      R => '0'
    );
\tflash_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => tflash_data0,
      D => dataout(8),
      Q => \tflash_data_reg_n_1_[8]\,
      R => '0'
    );
\tflash_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => tflash_data0,
      D => dataout(9),
      Q => \tflash_data_reg_n_1_[9]\,
      R => '0'
    );
toutput1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      O => \toutput1__16\
    );
\toutput1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF02FD00"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => \toutput1_reg[0]_C_n_1\,
      I4 => MemData2_IBUF(0),
      O => \toutput1__0_n_1\
    );
\toutput1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF02FD00"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => \toutput1_reg[1]_C_n_1\,
      I4 => MemData2_IBUF(1),
      O => \toutput1__1_n_1\
    );
\toutput1__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF02FD00"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => \toutput1_reg[10]_C_n_1\,
      I4 => MemData2_IBUF(10),
      O => \toutput1__10_n_1\
    );
\toutput1__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF02FD00"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => \toutput1_reg[11]_C_n_1\,
      I4 => MemData2_IBUF(11),
      O => \toutput1__11_n_1\
    );
\toutput1__12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF02FD00"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => \toutput1_reg[12]_C_n_1\,
      I4 => MemData2_IBUF(12),
      O => \toutput1__12_n_1\
    );
\toutput1__13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF02FD00"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => \toutput1_reg[13]_C_n_1\,
      I4 => MemData2_IBUF(13),
      O => \toutput1__13_n_1\
    );
\toutput1__14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF02FD00"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => \toutput1_reg[14]_C_n_1\,
      I4 => MemData2_IBUF(14),
      O => \toutput1__14_n_1\
    );
\toutput1__15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF02FD00"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => \toutput1_reg[15]_C_n_1\,
      I4 => MemData2_IBUF(15),
      O => \toutput1__15_n_1\
    );
\toutput1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF02FD00"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => \toutput1_reg[2]_C_n_1\,
      I4 => MemData2_IBUF(2),
      O => \toutput1__2_n_1\
    );
\toutput1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF02FD00"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => \toutput1_reg[3]_C_n_1\,
      I4 => MemData2_IBUF(3),
      O => \toutput1__3_n_1\
    );
\toutput1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF02FD00"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => \toutput1_reg[4]_C_n_1\,
      I4 => MemData2_IBUF(4),
      O => \toutput1__4_n_1\
    );
\toutput1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF02FD00"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => \toutput1_reg[5]_C_n_1\,
      I4 => MemData2_IBUF(5),
      O => \toutput1__5_n_1\
    );
\toutput1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF02FD00"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => \toutput1_reg[6]_C_n_1\,
      I4 => MemData2_IBUF(6),
      O => \toutput1__6_n_1\
    );
\toutput1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF02FD00"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => \toutput1_reg[7]_C_n_1\,
      I4 => MemData2_IBUF(7),
      O => \toutput1__7_n_1\
    );
\toutput1__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF02FD00"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => \toutput1_reg[8]_C_n_1\,
      I4 => MemData2_IBUF(8),
      O => \toutput1__8_n_1\
    );
\toutput1__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF02FD00"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => \toutput1_reg[9]_C_n_1\,
      I4 => MemData2_IBUF(9),
      O => \toutput1__9_n_1\
    );
\toutput1_reg[0]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => '1',
      CLR => \toutput1_reg[0]_LDC_i_2_n_1\,
      D => \toutput1__0_n_1\,
      Q => \toutput1_reg[0]_C_n_1\
    );
\toutput1_reg[0]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \toutput1_reg[0]_LDC_i_2_n_1\,
      D => '1',
      G => \toutput1_reg[0]_LDC_i_1_n_1\,
      GE => '1',
      Q => \toutput1_reg[0]_LDC_n_1\
    );
\toutput1_reg[0]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(0),
      O => \toutput1_reg[0]_LDC_i_1_n_1\
    );
\toutput1_reg[0]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(0),
      O => \toutput1_reg[0]_LDC_i_2_n_1\
    );
\toutput1_reg[0]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => \toutput1__16\,
      D => MemData2_IBUF(0),
      PRE => \toutput1_reg[0]_LDC_i_1_n_1\,
      Q => \toutput1_reg[0]_P_n_1\
    );
\toutput1_reg[10]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => '1',
      CLR => \toutput1_reg[10]_LDC_i_2_n_1\,
      D => \toutput1__10_n_1\,
      Q => \toutput1_reg[10]_C_n_1\
    );
\toutput1_reg[10]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \toutput1_reg[10]_LDC_i_2_n_1\,
      D => '1',
      G => \toutput1_reg[10]_LDC_i_1_n_1\,
      GE => '1',
      Q => \toutput1_reg[10]_LDC_n_1\
    );
\toutput1_reg[10]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(10),
      O => \toutput1_reg[10]_LDC_i_1_n_1\
    );
\toutput1_reg[10]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(10),
      O => \toutput1_reg[10]_LDC_i_2_n_1\
    );
\toutput1_reg[10]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => \toutput1__16\,
      D => MemData2_IBUF(10),
      PRE => \toutput1_reg[10]_LDC_i_1_n_1\,
      Q => \toutput1_reg[10]_P_n_1\
    );
\toutput1_reg[11]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => '1',
      CLR => \toutput1_reg[11]_LDC_i_2_n_1\,
      D => \toutput1__11_n_1\,
      Q => \toutput1_reg[11]_C_n_1\
    );
\toutput1_reg[11]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \toutput1_reg[11]_LDC_i_2_n_1\,
      D => '1',
      G => \toutput1_reg[11]_LDC_i_1_n_1\,
      GE => '1',
      Q => \toutput1_reg[11]_LDC_n_1\
    );
\toutput1_reg[11]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(11),
      O => \toutput1_reg[11]_LDC_i_1_n_1\
    );
\toutput1_reg[11]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(11),
      O => \toutput1_reg[11]_LDC_i_2_n_1\
    );
\toutput1_reg[11]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => \toutput1__16\,
      D => MemData2_IBUF(11),
      PRE => \toutput1_reg[11]_LDC_i_1_n_1\,
      Q => \toutput1_reg[11]_P_n_1\
    );
\toutput1_reg[12]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => '1',
      CLR => \toutput1_reg[12]_LDC_i_2_n_1\,
      D => \toutput1__12_n_1\,
      Q => \toutput1_reg[12]_C_n_1\
    );
\toutput1_reg[12]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \toutput1_reg[12]_LDC_i_2_n_1\,
      D => '1',
      G => \toutput1_reg[12]_LDC_i_1_n_1\,
      GE => '1',
      Q => \toutput1_reg[12]_LDC_n_1\
    );
\toutput1_reg[12]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(12),
      O => \toutput1_reg[12]_LDC_i_1_n_1\
    );
\toutput1_reg[12]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(12),
      O => \toutput1_reg[12]_LDC_i_2_n_1\
    );
\toutput1_reg[12]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => \toutput1__16\,
      D => MemData2_IBUF(12),
      PRE => \toutput1_reg[12]_LDC_i_1_n_1\,
      Q => \toutput1_reg[12]_P_n_1\
    );
\toutput1_reg[13]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => '1',
      CLR => \toutput1_reg[13]_LDC_i_2_n_1\,
      D => \toutput1__13_n_1\,
      Q => \toutput1_reg[13]_C_n_1\
    );
\toutput1_reg[13]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \toutput1_reg[13]_LDC_i_2_n_1\,
      D => '1',
      G => \toutput1_reg[13]_LDC_i_1_n_1\,
      GE => '1',
      Q => \toutput1_reg[13]_LDC_n_1\
    );
\toutput1_reg[13]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(13),
      O => \toutput1_reg[13]_LDC_i_1_n_1\
    );
\toutput1_reg[13]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(13),
      O => \toutput1_reg[13]_LDC_i_2_n_1\
    );
\toutput1_reg[13]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => \toutput1__16\,
      D => MemData2_IBUF(13),
      PRE => \toutput1_reg[13]_LDC_i_1_n_1\,
      Q => \toutput1_reg[13]_P_n_1\
    );
\toutput1_reg[14]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => '1',
      CLR => \toutput1_reg[14]_LDC_i_2_n_1\,
      D => \toutput1__14_n_1\,
      Q => \toutput1_reg[14]_C_n_1\
    );
\toutput1_reg[14]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \toutput1_reg[14]_LDC_i_2_n_1\,
      D => '1',
      G => \toutput1_reg[14]_LDC_i_1_n_1\,
      GE => '1',
      Q => \toutput1_reg[14]_LDC_n_1\
    );
\toutput1_reg[14]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(14),
      O => \toutput1_reg[14]_LDC_i_1_n_1\
    );
\toutput1_reg[14]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(14),
      O => \toutput1_reg[14]_LDC_i_2_n_1\
    );
\toutput1_reg[14]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => \toutput1__16\,
      D => MemData2_IBUF(14),
      PRE => \toutput1_reg[14]_LDC_i_1_n_1\,
      Q => \toutput1_reg[14]_P_n_1\
    );
\toutput1_reg[15]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => '1',
      CLR => \toutput1_reg[15]_LDC_i_2_n_1\,
      D => \toutput1__15_n_1\,
      Q => \toutput1_reg[15]_C_n_1\
    );
\toutput1_reg[15]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \toutput1_reg[15]_LDC_i_2_n_1\,
      D => '1',
      G => \toutput1_reg[15]_LDC_i_1_n_1\,
      GE => '1',
      Q => \toutput1_reg[15]_LDC_n_1\
    );
\toutput1_reg[15]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(15),
      O => \toutput1_reg[15]_LDC_i_1_n_1\
    );
\toutput1_reg[15]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(15),
      O => \toutput1_reg[15]_LDC_i_2_n_1\
    );
\toutput1_reg[15]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => \toutput1__16\,
      D => MemData2_IBUF(15),
      PRE => \toutput1_reg[15]_LDC_i_1_n_1\,
      Q => \toutput1_reg[15]_P_n_1\
    );
\toutput1_reg[1]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => '1',
      CLR => \toutput1_reg[1]_LDC_i_2_n_1\,
      D => \toutput1__1_n_1\,
      Q => \toutput1_reg[1]_C_n_1\
    );
\toutput1_reg[1]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \toutput1_reg[1]_LDC_i_2_n_1\,
      D => '1',
      G => \toutput1_reg[1]_LDC_i_1_n_1\,
      GE => '1',
      Q => \toutput1_reg[1]_LDC_n_1\
    );
\toutput1_reg[1]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(1),
      O => \toutput1_reg[1]_LDC_i_1_n_1\
    );
\toutput1_reg[1]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(1),
      O => \toutput1_reg[1]_LDC_i_2_n_1\
    );
\toutput1_reg[1]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => \toutput1__16\,
      D => MemData2_IBUF(1),
      PRE => \toutput1_reg[1]_LDC_i_1_n_1\,
      Q => \toutput1_reg[1]_P_n_1\
    );
\toutput1_reg[2]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => '1',
      CLR => \toutput1_reg[2]_LDC_i_2_n_1\,
      D => \toutput1__2_n_1\,
      Q => \toutput1_reg[2]_C_n_1\
    );
\toutput1_reg[2]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \toutput1_reg[2]_LDC_i_2_n_1\,
      D => '1',
      G => \toutput1_reg[2]_LDC_i_1_n_1\,
      GE => '1',
      Q => \toutput1_reg[2]_LDC_n_1\
    );
\toutput1_reg[2]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(2),
      O => \toutput1_reg[2]_LDC_i_1_n_1\
    );
\toutput1_reg[2]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(2),
      O => \toutput1_reg[2]_LDC_i_2_n_1\
    );
\toutput1_reg[2]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => \toutput1__16\,
      D => MemData2_IBUF(2),
      PRE => \toutput1_reg[2]_LDC_i_1_n_1\,
      Q => \toutput1_reg[2]_P_n_1\
    );
\toutput1_reg[3]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => '1',
      CLR => \toutput1_reg[3]_LDC_i_2_n_1\,
      D => \toutput1__3_n_1\,
      Q => \toutput1_reg[3]_C_n_1\
    );
\toutput1_reg[3]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \toutput1_reg[3]_LDC_i_2_n_1\,
      D => '1',
      G => \toutput1_reg[3]_LDC_i_1_n_1\,
      GE => '1',
      Q => \toutput1_reg[3]_LDC_n_1\
    );
\toutput1_reg[3]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(3),
      O => \toutput1_reg[3]_LDC_i_1_n_1\
    );
\toutput1_reg[3]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(3),
      O => \toutput1_reg[3]_LDC_i_2_n_1\
    );
\toutput1_reg[3]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => \toutput1__16\,
      D => MemData2_IBUF(3),
      PRE => \toutput1_reg[3]_LDC_i_1_n_1\,
      Q => \toutput1_reg[3]_P_n_1\
    );
\toutput1_reg[4]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => '1',
      CLR => \toutput1_reg[4]_LDC_i_2_n_1\,
      D => \toutput1__4_n_1\,
      Q => \toutput1_reg[4]_C_n_1\
    );
\toutput1_reg[4]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \toutput1_reg[4]_LDC_i_2_n_1\,
      D => '1',
      G => \toutput1_reg[4]_LDC_i_1_n_1\,
      GE => '1',
      Q => \toutput1_reg[4]_LDC_n_1\
    );
\toutput1_reg[4]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(4),
      O => \toutput1_reg[4]_LDC_i_1_n_1\
    );
\toutput1_reg[4]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(4),
      O => \toutput1_reg[4]_LDC_i_2_n_1\
    );
\toutput1_reg[4]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => \toutput1__16\,
      D => MemData2_IBUF(4),
      PRE => \toutput1_reg[4]_LDC_i_1_n_1\,
      Q => \toutput1_reg[4]_P_n_1\
    );
\toutput1_reg[5]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => '1',
      CLR => \toutput1_reg[5]_LDC_i_2_n_1\,
      D => \toutput1__5_n_1\,
      Q => \toutput1_reg[5]_C_n_1\
    );
\toutput1_reg[5]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \toutput1_reg[5]_LDC_i_2_n_1\,
      D => '1',
      G => \toutput1_reg[5]_LDC_i_1_n_1\,
      GE => '1',
      Q => \toutput1_reg[5]_LDC_n_1\
    );
\toutput1_reg[5]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(5),
      O => \toutput1_reg[5]_LDC_i_1_n_1\
    );
\toutput1_reg[5]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(5),
      O => \toutput1_reg[5]_LDC_i_2_n_1\
    );
\toutput1_reg[5]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => \toutput1__16\,
      D => MemData2_IBUF(5),
      PRE => \toutput1_reg[5]_LDC_i_1_n_1\,
      Q => \toutput1_reg[5]_P_n_1\
    );
\toutput1_reg[6]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => '1',
      CLR => \toutput1_reg[6]_LDC_i_2_n_1\,
      D => \toutput1__6_n_1\,
      Q => \toutput1_reg[6]_C_n_1\
    );
\toutput1_reg[6]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \toutput1_reg[6]_LDC_i_2_n_1\,
      D => '1',
      G => \toutput1_reg[6]_LDC_i_1_n_1\,
      GE => '1',
      Q => \toutput1_reg[6]_LDC_n_1\
    );
\toutput1_reg[6]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(6),
      O => \toutput1_reg[6]_LDC_i_1_n_1\
    );
\toutput1_reg[6]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(6),
      O => \toutput1_reg[6]_LDC_i_2_n_1\
    );
\toutput1_reg[6]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => \toutput1__16\,
      D => MemData2_IBUF(6),
      PRE => \toutput1_reg[6]_LDC_i_1_n_1\,
      Q => \toutput1_reg[6]_P_n_1\
    );
\toutput1_reg[7]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => '1',
      CLR => \toutput1_reg[7]_LDC_i_2_n_1\,
      D => \toutput1__7_n_1\,
      Q => \toutput1_reg[7]_C_n_1\
    );
\toutput1_reg[7]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \toutput1_reg[7]_LDC_i_2_n_1\,
      D => '1',
      G => \toutput1_reg[7]_LDC_i_1_n_1\,
      GE => '1',
      Q => \toutput1_reg[7]_LDC_n_1\
    );
\toutput1_reg[7]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(7),
      O => \toutput1_reg[7]_LDC_i_1_n_1\
    );
\toutput1_reg[7]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(7),
      O => \toutput1_reg[7]_LDC_i_2_n_1\
    );
\toutput1_reg[7]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => \toutput1__16\,
      D => MemData2_IBUF(7),
      PRE => \toutput1_reg[7]_LDC_i_1_n_1\,
      Q => \toutput1_reg[7]_P_n_1\
    );
\toutput1_reg[8]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => '1',
      CLR => \toutput1_reg[8]_LDC_i_2_n_1\,
      D => \toutput1__8_n_1\,
      Q => \toutput1_reg[8]_C_n_1\
    );
\toutput1_reg[8]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \toutput1_reg[8]_LDC_i_2_n_1\,
      D => '1',
      G => \toutput1_reg[8]_LDC_i_1_n_1\,
      GE => '1',
      Q => \toutput1_reg[8]_LDC_n_1\
    );
\toutput1_reg[8]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(8),
      O => \toutput1_reg[8]_LDC_i_1_n_1\
    );
\toutput1_reg[8]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(8),
      O => \toutput1_reg[8]_LDC_i_2_n_1\
    );
\toutput1_reg[8]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => \toutput1__16\,
      D => MemData2_IBUF(8),
      PRE => \toutput1_reg[8]_LDC_i_1_n_1\,
      Q => \toutput1_reg[8]_P_n_1\
    );
\toutput1_reg[9]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => '1',
      CLR => \toutput1_reg[9]_LDC_i_2_n_1\,
      D => \toutput1__9_n_1\,
      Q => \toutput1_reg[9]_C_n_1\
    );
\toutput1_reg[9]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \toutput1_reg[9]_LDC_i_2_n_1\,
      D => '1',
      G => \toutput1_reg[9]_LDC_i_1_n_1\,
      GE => '1',
      Q => \toutput1_reg[9]_LDC_n_1\
    );
\toutput1_reg[9]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(9),
      O => \toutput1_reg[9]_LDC_i_1_n_1\
    );
\toutput1_reg[9]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_IBUF,
      I1 => MemData2_IBUF(9),
      O => \toutput1_reg[9]_LDC_i_2_n_1\
    );
\toutput1_reg[9]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_in_BUFG,
      CE => \toutput1__16\,
      D => MemData2_IBUF(9),
      PRE => \toutput1_reg[9]_LDC_i_1_n_1\,
      Q => \toutput1_reg[9]_P_n_1\
    );
\toutput2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \t_aluout_out_reg[10]_0\,
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => rst_IBUF,
      O => \toutput2[15]_i_1_n_1\
    );
\toutput2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => rst_IBUF,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      O => toutput20
    );
\toutput2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => toutput20,
      D => \DataBuf_reg[7]_0\(0),
      Q => s_memout_mem(0),
      R => '0'
    );
\toutput2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => toutput20,
      D => MemData2_IBUF(10),
      Q => s_memout_mem(10),
      R => \toutput2[15]_i_1_n_1\
    );
\toutput2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => toutput20,
      D => MemData2_IBUF(11),
      Q => s_memout_mem(11),
      R => \toutput2[15]_i_1_n_1\
    );
\toutput2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => toutput20,
      D => MemData2_IBUF(12),
      Q => s_memout_mem(12),
      R => \toutput2[15]_i_1_n_1\
    );
\toutput2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => toutput20,
      D => MemData2_IBUF(13),
      Q => s_memout_mem(13),
      R => \toutput2[15]_i_1_n_1\
    );
\toutput2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => toutput20,
      D => MemData2_IBUF(14),
      Q => s_memout_mem(14),
      R => \toutput2[15]_i_1_n_1\
    );
\toutput2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => toutput20,
      D => MemData2_IBUF(15),
      Q => s_memout_mem(15),
      R => \toutput2[15]_i_1_n_1\
    );
\toutput2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => toutput20,
      D => \DataBuf_reg[7]_0\(1),
      Q => s_memout_mem(1),
      R => '0'
    );
\toutput2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => toutput20,
      D => \DataBuf_reg[7]_0\(2),
      Q => s_memout_mem(2),
      R => '0'
    );
\toutput2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => toutput20,
      D => \DataBuf_reg[7]_0\(3),
      Q => s_memout_mem(3),
      R => '0'
    );
\toutput2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => toutput20,
      D => \DataBuf_reg[7]_0\(4),
      Q => s_memout_mem(4),
      R => '0'
    );
\toutput2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => toutput20,
      D => \DataBuf_reg[7]_0\(5),
      Q => s_memout_mem(5),
      R => '0'
    );
\toutput2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => toutput20,
      D => \DataBuf_reg[7]_0\(6),
      Q => s_memout_mem(6),
      R => '0'
    );
\toutput2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => toutput20,
      D => \DataBuf_reg[7]_0\(7),
      Q => s_memout_mem(7),
      R => '0'
    );
\toutput2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => toutput20,
      D => MemData2_IBUF(8),
      Q => s_memout_mem(8),
      R => \toutput2[15]_i_1_n_1\
    );
\toutput2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => toutput20,
      D => MemData2_IBUF(9),
      Q => s_memout_mem(9),
      R => \toutput2[15]_i_1_n_1\
    );
we2_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF70FF"
    )
        port map (
      I0 => memwrite_out,
      I1 => \t_aluout_out_reg[10]\,
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
      O => we2_OBUF
    );
wrn_OBUF_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDFFF"
    )
        port map (
      I0 => memwrite_out,
      I1 => \t_aluout_out_reg[10]\,
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
      O => wrn_OBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity exe is
  port (
    memtoreg_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_exe_memoryWrite : out STD_LOGIC;
    memread_in : out STD_LOGIC;
    regwrite_in : out STD_LOGIC;
    \s_alu_op_reg[2]_0\ : out STD_LOGIC;
    memoryWrite_reg_0 : out STD_LOGIC;
    memoryWrite_reg_1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_from_pc_reg[0]\ : out STD_LOGIC;
    \s_from_pc_reg[0]_0\ : out STD_LOGIC;
    aluout_in : out STD_LOGIC_VECTOR ( 15 downto 0 );
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_sw_in : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \s_alu_mux_ry_reg[1]_0\ : out STD_LOGIC;
    n_0_589_BUFG : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC;
    s_id_pc : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_id_wb_memory_or_alu_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_id_memoryWrite : in STD_LOGIC;
    s_id_memoryRead : in STD_LOGIC;
    s_id_registerWrite : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \s_instruction_reg[1]\ : in STD_LOGIC;
    \toutput1_reg[6]_P\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \toutput1_reg[8]_P\ : in STD_LOGIC;
    \s_instruction_reg[14]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \s_instruction_reg[4]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \s0_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \s0_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \s_instruction_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \s_instruction_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_instruction_reg[5]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_instruction_reg[7]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_instruction_reg[13]\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end exe;

architecture STRUCTURE of exe is
  signal alu_mux_rx : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal alu_mux_ry : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal alu_op : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \i__carry__0_i_10_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_11_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_12_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_13_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_14_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_15_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_16_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_17_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_18_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_19_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_20_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_21_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_22_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_23_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_24_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_9_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_10_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_11_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_12_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_13_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_14_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_15_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_16_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_17_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_18_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_19_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_20_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_21_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_22_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_23_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_24_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_25_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_26_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_9_n_1\ : STD_LOGIC;
  signal \i__carry__2_i_10_n_1\ : STD_LOGIC;
  signal \i__carry__2_i_11_n_1\ : STD_LOGIC;
  signal \i__carry__2_i_13_n_1\ : STD_LOGIC;
  signal \i__carry__2_i_14_n_1\ : STD_LOGIC;
  signal \i__carry__2_i_15_n_1\ : STD_LOGIC;
  signal \i__carry__2_i_16_n_1\ : STD_LOGIC;
  signal \i__carry__2_i_17_n_1\ : STD_LOGIC;
  signal \i__carry__2_i_18_n_1\ : STD_LOGIC;
  signal \i__carry__2_i_19_n_1\ : STD_LOGIC;
  signal \i__carry__2_i_8_n_1\ : STD_LOGIC;
  signal \i__carry__2_i_9_n_1\ : STD_LOGIC;
  signal \i__carry_i_10_n_1\ : STD_LOGIC;
  signal \i__carry_i_11_n_1\ : STD_LOGIC;
  signal \i__carry_i_12_n_1\ : STD_LOGIC;
  signal \i__carry_i_13_n_1\ : STD_LOGIC;
  signal \i__carry_i_14_n_1\ : STD_LOGIC;
  signal \i__carry_i_15_n_1\ : STD_LOGIC;
  signal \i__carry_i_16_n_1\ : STD_LOGIC;
  signal \i__carry_i_17_n_1\ : STD_LOGIC;
  signal \i__carry_i_18_n_1\ : STD_LOGIC;
  signal \i__carry_i_19_n_1\ : STD_LOGIC;
  signal \i__carry_i_20_n_1\ : STD_LOGIC;
  signal \i__carry_i_21_n_1\ : STD_LOGIC;
  signal \i__carry_i_22_n_1\ : STD_LOGIC;
  signal \i__carry_i_23_n_1\ : STD_LOGIC;
  signal \i__carry_i_24_n_1\ : STD_LOGIC;
  signal \i__carry_i_25_n_1\ : STD_LOGIC;
  signal \i__carry_i_9_n_1\ : STD_LOGIC;
  signal \^memorywrite_reg_0\ : STD_LOGIC;
  signal \^memorywrite_reg_1\ : STD_LOGIC;
  signal \^memread_in\ : STD_LOGIC;
  signal \s_alu_mux_ry[1]_i_5_n_1\ : STD_LOGIC;
  signal s_alu_rx : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_branch : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_exe_memorywrite\ : STD_LOGIC;
  signal \s_forward_datax_reg_n_1_[10]\ : STD_LOGIC;
  signal \s_forward_datax_reg_n_1_[11]\ : STD_LOGIC;
  signal \s_forward_datax_reg_n_1_[12]\ : STD_LOGIC;
  signal \s_forward_datax_reg_n_1_[1]\ : STD_LOGIC;
  signal \s_forward_datax_reg_n_1_[2]\ : STD_LOGIC;
  signal \s_forward_datax_reg_n_1_[3]\ : STD_LOGIC;
  signal \s_forward_datax_reg_n_1_[4]\ : STD_LOGIC;
  signal \s_forward_datax_reg_n_1_[5]\ : STD_LOGIC;
  signal \s_forward_datax_reg_n_1_[6]\ : STD_LOGIC;
  signal \s_forward_datax_reg_n_1_[7]\ : STD_LOGIC;
  signal \s_forward_datax_reg_n_1_[8]\ : STD_LOGIC;
  signal \s_forward_datax_reg_n_1_[9]\ : STD_LOGIC;
  signal \s_forward_datay_reg_n_1_[0]\ : STD_LOGIC;
  signal \s_forward_datay_reg_n_1_[13]\ : STD_LOGIC;
  signal \s_forward_datay_reg_n_1_[14]\ : STD_LOGIC;
  signal \s_forward_datay_reg_n_1_[15]\ : STD_LOGIC;
  signal s_from_forwardy_reg_n_1 : STD_LOGIC;
  signal \^s_from_pc_reg[0]\ : STD_LOGIC;
  signal \^s_from_pc_reg[0]_0\ : STD_LOGIC;
  signal \s_immediate_reg_n_1_[0]\ : STD_LOGIC;
  signal \s_immediate_reg_n_1_[13]\ : STD_LOGIC;
  signal \s_immediate_reg_n_1_[1]\ : STD_LOGIC;
  signal \s_immediate_reg_n_1_[2]\ : STD_LOGIC;
  signal \s_immediate_reg_n_1_[3]\ : STD_LOGIC;
  signal \s_immediate_reg_n_1_[4]\ : STD_LOGIC;
  signal \s_immediate_reg_n_1_[5]\ : STD_LOGIC;
  signal \s_immediate_reg_n_1_[6]\ : STD_LOGIC;
  signal \s_immediate_reg_n_1_[7]\ : STD_LOGIC;
  signal \s_immediate_reg_n_1_[8]\ : STD_LOGIC;
  signal \s_immediate_reg_n_1_[9]\ : STD_LOGIC;
  signal \s_instruction[15]_i_10_n_1\ : STD_LOGIC;
  signal \s_instruction[15]_i_11_n_1\ : STD_LOGIC;
  signal \s_instruction[15]_i_12_n_1\ : STD_LOGIC;
  signal \s_instruction[15]_i_13_n_1\ : STD_LOGIC;
  signal \s_instruction[15]_i_5_n_1\ : STD_LOGIC;
  signal \s_instruction[15]_i_6_n_1\ : STD_LOGIC;
  signal \s_pc_reg_n_1_[0]\ : STD_LOGIC;
  signal s_r_x : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_r_y : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_r_z : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_rx : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \s_ry_reg_n_1_[0]\ : STD_LOGIC;
  signal \s_ry_reg_n_1_[10]\ : STD_LOGIC;
  signal \s_ry_reg_n_1_[11]\ : STD_LOGIC;
  signal \s_ry_reg_n_1_[12]\ : STD_LOGIC;
  signal \s_ry_reg_n_1_[13]\ : STD_LOGIC;
  signal \s_ry_reg_n_1_[14]\ : STD_LOGIC;
  signal \s_ry_reg_n_1_[15]\ : STD_LOGIC;
  signal \s_ry_reg_n_1_[1]\ : STD_LOGIC;
  signal \s_ry_reg_n_1_[2]\ : STD_LOGIC;
  signal \s_ry_reg_n_1_[3]\ : STD_LOGIC;
  signal \s_ry_reg_n_1_[4]\ : STD_LOGIC;
  signal \s_ry_reg_n_1_[5]\ : STD_LOGIC;
  signal \s_ry_reg_n_1_[6]\ : STD_LOGIC;
  signal \s_ry_reg_n_1_[7]\ : STD_LOGIC;
  signal \s_ry_reg_n_1_[8]\ : STD_LOGIC;
  signal \s_ry_reg_n_1_[9]\ : STD_LOGIC;
  signal s_select_goal : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \t_aluout_out[0]_i_2_n_1\ : STD_LOGIC;
  signal \t_aluout_out[0]_i_3_n_1\ : STD_LOGIC;
  signal \t_aluout_out[0]_i_4_n_1\ : STD_LOGIC;
  signal \t_aluout_out[0]_i_6_n_1\ : STD_LOGIC;
  signal \t_aluout_out[0]_i_7_n_1\ : STD_LOGIC;
  signal \t_aluout_out[10]_i_2_n_1\ : STD_LOGIC;
  signal \t_aluout_out[10]_i_4_n_1\ : STD_LOGIC;
  signal \t_aluout_out[10]_i_5_n_1\ : STD_LOGIC;
  signal \t_aluout_out[10]_i_6_n_1\ : STD_LOGIC;
  signal \t_aluout_out[10]_i_8_n_1\ : STD_LOGIC;
  signal \t_aluout_out[10]_i_9_n_1\ : STD_LOGIC;
  signal \t_aluout_out[11]_i_2_n_1\ : STD_LOGIC;
  signal \t_aluout_out[11]_i_3_n_1\ : STD_LOGIC;
  signal \t_aluout_out[11]_i_5_n_1\ : STD_LOGIC;
  signal \t_aluout_out[11]_i_6_n_1\ : STD_LOGIC;
  signal \t_aluout_out[11]_i_8_n_1\ : STD_LOGIC;
  signal \t_aluout_out[12]_i_11_n_1\ : STD_LOGIC;
  signal \t_aluout_out[12]_i_12_n_1\ : STD_LOGIC;
  signal \t_aluout_out[12]_i_2_n_1\ : STD_LOGIC;
  signal \t_aluout_out[12]_i_3_n_1\ : STD_LOGIC;
  signal \t_aluout_out[12]_i_5_n_1\ : STD_LOGIC;
  signal \t_aluout_out[12]_i_6_n_1\ : STD_LOGIC;
  signal \t_aluout_out[12]_i_7_n_1\ : STD_LOGIC;
  signal \t_aluout_out[12]_i_8_n_1\ : STD_LOGIC;
  signal \t_aluout_out[12]_i_9_n_1\ : STD_LOGIC;
  signal \t_aluout_out[13]_i_3_n_1\ : STD_LOGIC;
  signal \t_aluout_out[13]_i_4_n_1\ : STD_LOGIC;
  signal \t_aluout_out[13]_i_6_n_1\ : STD_LOGIC;
  signal \t_aluout_out[13]_i_7_n_1\ : STD_LOGIC;
  signal \t_aluout_out[14]_i_10_n_1\ : STD_LOGIC;
  signal \t_aluout_out[14]_i_11_n_1\ : STD_LOGIC;
  signal \t_aluout_out[14]_i_12_n_1\ : STD_LOGIC;
  signal \t_aluout_out[14]_i_13_n_1\ : STD_LOGIC;
  signal \t_aluout_out[14]_i_14_n_1\ : STD_LOGIC;
  signal \t_aluout_out[14]_i_15_n_1\ : STD_LOGIC;
  signal \t_aluout_out[14]_i_16_n_1\ : STD_LOGIC;
  signal \t_aluout_out[14]_i_17_n_1\ : STD_LOGIC;
  signal \t_aluout_out[14]_i_18_n_1\ : STD_LOGIC;
  signal \t_aluout_out[14]_i_19_n_1\ : STD_LOGIC;
  signal \t_aluout_out[14]_i_20_n_1\ : STD_LOGIC;
  signal \t_aluout_out[14]_i_3_n_1\ : STD_LOGIC;
  signal \t_aluout_out[14]_i_4_n_1\ : STD_LOGIC;
  signal \t_aluout_out[14]_i_5_n_1\ : STD_LOGIC;
  signal \t_aluout_out[14]_i_6_n_1\ : STD_LOGIC;
  signal \t_aluout_out[14]_i_7_n_1\ : STD_LOGIC;
  signal \t_aluout_out[14]_i_9_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_10_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_11_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_12_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_13_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_14_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_15_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_16_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_17_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_18_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_19_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_21_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_22_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_23_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_24_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_25_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_26_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_27_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_28_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_29_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_30_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_31_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_32_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_33_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_34_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_35_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_36_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_37_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_38_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_39_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_3_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_40_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_4_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_5_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_6_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_7_n_1\ : STD_LOGIC;
  signal \t_aluout_out[15]_i_9_n_1\ : STD_LOGIC;
  signal \t_aluout_out[1]_i_10_n_1\ : STD_LOGIC;
  signal \t_aluout_out[1]_i_11_n_1\ : STD_LOGIC;
  signal \t_aluout_out[1]_i_12_n_1\ : STD_LOGIC;
  signal \t_aluout_out[1]_i_2_n_1\ : STD_LOGIC;
  signal \t_aluout_out[1]_i_4_n_1\ : STD_LOGIC;
  signal \t_aluout_out[1]_i_5_n_1\ : STD_LOGIC;
  signal \t_aluout_out[1]_i_7_n_1\ : STD_LOGIC;
  signal \t_aluout_out[1]_i_8_n_1\ : STD_LOGIC;
  signal \t_aluout_out[1]_i_9_n_1\ : STD_LOGIC;
  signal \t_aluout_out[2]_i_2_n_1\ : STD_LOGIC;
  signal \t_aluout_out[2]_i_4_n_1\ : STD_LOGIC;
  signal \t_aluout_out[2]_i_5_n_1\ : STD_LOGIC;
  signal \t_aluout_out[2]_i_7_n_1\ : STD_LOGIC;
  signal \t_aluout_out[3]_i_3_n_1\ : STD_LOGIC;
  signal \t_aluout_out[3]_i_4_n_1\ : STD_LOGIC;
  signal \t_aluout_out[3]_i_5_n_1\ : STD_LOGIC;
  signal \t_aluout_out[3]_i_7_n_1\ : STD_LOGIC;
  signal \t_aluout_out[3]_i_8_n_1\ : STD_LOGIC;
  signal \t_aluout_out[3]_i_9_n_1\ : STD_LOGIC;
  signal \t_aluout_out[4]_i_2_n_1\ : STD_LOGIC;
  signal \t_aluout_out[4]_i_4_n_1\ : STD_LOGIC;
  signal \t_aluout_out[4]_i_5_n_1\ : STD_LOGIC;
  signal \t_aluout_out[4]_i_6_n_1\ : STD_LOGIC;
  signal \t_aluout_out[4]_i_7_n_1\ : STD_LOGIC;
  signal \t_aluout_out[5]_i_2_n_1\ : STD_LOGIC;
  signal \t_aluout_out[5]_i_3_n_1\ : STD_LOGIC;
  signal \t_aluout_out[5]_i_5_n_1\ : STD_LOGIC;
  signal \t_aluout_out[5]_i_6_n_1\ : STD_LOGIC;
  signal \t_aluout_out[5]_i_7_n_1\ : STD_LOGIC;
  signal \t_aluout_out[5]_i_8_n_1\ : STD_LOGIC;
  signal \t_aluout_out[6]_i_3_n_1\ : STD_LOGIC;
  signal \t_aluout_out[6]_i_4_n_1\ : STD_LOGIC;
  signal \t_aluout_out[6]_i_6_n_1\ : STD_LOGIC;
  signal \t_aluout_out[6]_i_7_n_1\ : STD_LOGIC;
  signal \t_aluout_out[6]_i_8_n_1\ : STD_LOGIC;
  signal \t_aluout_out[6]_i_9_n_1\ : STD_LOGIC;
  signal \t_aluout_out[7]_i_10_n_1\ : STD_LOGIC;
  signal \t_aluout_out[7]_i_3_n_1\ : STD_LOGIC;
  signal \t_aluout_out[7]_i_5_n_1\ : STD_LOGIC;
  signal \t_aluout_out[7]_i_6_n_1\ : STD_LOGIC;
  signal \t_aluout_out[7]_i_7_n_1\ : STD_LOGIC;
  signal \t_aluout_out[7]_i_8_n_1\ : STD_LOGIC;
  signal \t_aluout_out[7]_i_9_n_1\ : STD_LOGIC;
  signal \t_aluout_out[8]_i_2_n_1\ : STD_LOGIC;
  signal \t_aluout_out[8]_i_3_n_1\ : STD_LOGIC;
  signal \t_aluout_out[8]_i_5_n_1\ : STD_LOGIC;
  signal \t_aluout_out[8]_i_6_n_1\ : STD_LOGIC;
  signal \t_aluout_out[8]_i_7_n_1\ : STD_LOGIC;
  signal \t_aluout_out[8]_i_8_n_1\ : STD_LOGIC;
  signal \t_aluout_out[9]_i_2_n_1\ : STD_LOGIC;
  signal \t_aluout_out[9]_i_4_n_1\ : STD_LOGIC;
  signal \t_aluout_out[9]_i_5_n_1\ : STD_LOGIC;
  signal \t_aluout_out[9]_i_7_n_1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \t_memdata_out[10]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \t_memdata_out[11]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \t_memdata_out[12]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \t_memdata_out[13]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \t_memdata_out[14]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \t_memdata_out[15]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \t_memdata_out[1]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \t_memdata_out[2]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \t_memdata_out[3]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \t_memdata_out[5]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \t_memdata_out[6]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \t_memdata_out[7]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \t_memdata_out[8]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \t_memdata_out[9]_i_1\ : label is "soft_lutpair36";
begin
  memoryWrite_reg_0 <= \^memorywrite_reg_0\;
  memoryWrite_reg_1 <= \^memorywrite_reg_1\;
  memread_in <= \^memread_in\;
  s_exe_memoryWrite <= \^s_exe_memorywrite\;
  \s_from_pc_reg[0]\ <= \^s_from_pc_reg[0]\;
  \s_from_pc_reg[0]_0\ <= \^s_from_pc_reg[0]_0\;
alu_instance: entity work.alu
     port map (
      Q(2 downto 0) => alu_op(2 downto 0),
      aluout_in(15 downto 0) => aluout_in(15 downto 0),
      \s_alu_mux_ry_reg[0]\ => \i__carry__1_i_23_n_1\,
      \s_alu_mux_ry_reg[1]\ => \t_aluout_out[15]_i_4_n_1\,
      \s_alu_mux_ry_reg[1]_0\ => \t_aluout_out[0]_i_3_n_1\,
      \s_alu_mux_ry_reg[1]_1\ => \t_aluout_out[14]_i_14_n_1\,
      \s_alu_mux_ry_reg[1]_2\ => \i__carry__1_i_22_n_1\,
      \s_alu_op_reg[0]\ => \t_aluout_out[12]_i_6_n_1\,
      \s_alu_op_reg[0]_0\ => \t_aluout_out[0]_i_7_n_1\,
      \s_alu_op_reg[0]_1\ => \t_aluout_out[6]_i_6_n_1\,
      \s_alu_op_reg[0]_2\ => \t_aluout_out[14]_i_4_n_1\,
      \s_alu_op_reg[0]_3\ => \t_aluout_out[13]_i_3_n_1\,
      \s_alu_op_reg[0]_4\ => \t_aluout_out[10]_i_4_n_1\,
      \s_alu_op_reg[0]_5\ => \t_aluout_out[9]_i_4_n_1\,
      \s_alu_op_reg[0]_6\ => \t_aluout_out[6]_i_3_n_1\,
      \s_alu_op_reg[0]_7\ => \t_aluout_out[14]_i_16_n_1\,
      \s_alu_op_reg[1]\ => \t_aluout_out[1]_i_2_n_1\,
      \s_alu_op_reg[1]_0\ => \t_aluout_out[12]_i_3_n_1\,
      \s_alu_op_reg[1]_1\ => \t_aluout_out[0]_i_2_n_1\,
      \s_alu_op_reg[1]_10\ => \t_aluout_out[5]_i_3_n_1\,
      \s_alu_op_reg[1]_11\ => \t_aluout_out[14]_i_17_n_1\,
      \s_alu_op_reg[1]_2\ => \t_aluout_out[3]_i_3_n_1\,
      \s_alu_op_reg[1]_3\ => \t_aluout_out[14]_i_5_n_1\,
      \s_alu_op_reg[1]_4\ => \t_aluout_out[14]_i_6_n_1\,
      \s_alu_op_reg[1]_5\ => \t_aluout_out[14]_i_9_n_1\,
      \s_alu_op_reg[1]_6\ => \t_aluout_out[15]_i_19_n_1\,
      \s_alu_op_reg[1]_7\ => \t_aluout_out[12]_i_7_n_1\,
      \s_alu_op_reg[1]_8\ => \t_aluout_out[11]_i_3_n_1\,
      \s_alu_op_reg[1]_9\ => \t_aluout_out[8]_i_3_n_1\,
      \s_alu_op_reg[2]\ => \t_aluout_out[3]_i_7_n_1\,
      \s_alu_op_reg[2]_0\ => \t_aluout_out[14]_i_7_n_1\,
      \s_alu_op_reg[2]_1\ => \t_aluout_out[2]_i_7_n_1\,
      \s_alu_op_reg[2]_2\ => \t_aluout_out[15]_i_7_n_1\,
      \s_forward_datay_reg[0]\(0) => s_alu_rx(0),
      \s_forward_datay_reg[0]_0\ => \t_aluout_out[3]_i_5_n_1\,
      s_from_forwardy_reg => \t_aluout_out[2]_i_2_n_1\,
      s_from_forwardy_reg_0 => \t_aluout_out[1]_i_4_n_1\,
      s_from_forwardy_reg_1 => \t_aluout_out[0]_i_4_n_1\,
      s_from_forwardy_reg_10 => \t_aluout_out[4]_i_4_n_1\,
      s_from_forwardy_reg_11 => \t_aluout_out[5]_i_2_n_1\,
      s_from_forwardy_reg_12 => \t_aluout_out[15]_i_3_n_1\,
      s_from_forwardy_reg_13 => \i__carry_i_17_n_1\,
      s_from_forwardy_reg_14 => \i__carry_i_16_n_1\,
      s_from_forwardy_reg_15 => \i__carry_i_15_n_1\,
      s_from_forwardy_reg_16 => \i__carry__0_i_16_n_1\,
      s_from_forwardy_reg_17 => \i__carry__0_i_15_n_1\,
      s_from_forwardy_reg_18 => \i__carry__0_i_14_n_1\,
      s_from_forwardy_reg_19 => \i__carry__0_i_13_n_1\,
      s_from_forwardy_reg_2 => \t_aluout_out[4]_i_2_n_1\,
      s_from_forwardy_reg_20 => \i__carry__1_i_16_n_1\,
      s_from_forwardy_reg_21 => \i__carry__1_i_15_n_1\,
      s_from_forwardy_reg_22 => \i__carry__2_i_19_n_1\,
      s_from_forwardy_reg_3 => \t_aluout_out[3]_i_4_n_1\,
      s_from_forwardy_reg_4 => \t_aluout_out[13]_i_4_n_1\,
      s_from_forwardy_reg_5 => \t_aluout_out[12]_i_9_n_1\,
      s_from_forwardy_reg_6 => \t_aluout_out[11]_i_2_n_1\,
      s_from_forwardy_reg_7 => \t_aluout_out[11]_i_6_n_1\,
      s_from_forwardy_reg_8 => \t_aluout_out[8]_i_2_n_1\,
      s_from_forwardy_reg_9 => \t_aluout_out[8]_i_8_n_1\,
      \s_immediate_reg[13]\ => \i__carry__1_i_24_n_1\,
      \s_rx_reg[14]\ => \i__carry__2_i_13_n_1\,
      \s_rx_reg[15]\(0) => s_rx(15),
      \s_rx_reg[1]\ => \i__carry_i_14_n_1\,
      \s_rx_reg[2]\ => \i__carry_i_13_n_1\,
      \s_rx_reg[2]_0\ => \t_aluout_out[7]_i_3_n_1\,
      \s_rx_reg[2]_1\ => \t_aluout_out[7]_i_5_n_1\,
      \s_rx_reg[2]_2\ => \t_aluout_out[5]_i_8_n_1\,
      \s_rx_reg[2]_3\ => \t_aluout_out[6]_i_4_n_1\,
      \s_rx_reg[3]\ => \i__carry_i_12_n_1\,
      \s_rx_reg[3]_0\ => \t_aluout_out[10]_i_8_n_1\,
      \s_rx_reg[4]\ => \i__carry__0_i_12_n_1\,
      \s_rx_reg[5]\ => \i__carry__0_i_11_n_1\,
      \s_rx_reg[6]\ => \t_aluout_out[15]_i_5_n_1\,
      \s_rx_reg[6]_0\ => \i__carry__0_i_10_n_1\,
      \s_rx_reg[7]\ => \t_aluout_out[14]_i_3_n_1\,
      \s_rx_reg[7]_0\ => \t_aluout_out[15]_i_6_n_1\,
      \s_rx_reg[7]_1\ => \i__carry__0_i_9_n_1\,
      \s_rx_reg[8]\ => \i__carry__1_i_12_n_1\,
      \s_rx_reg[9]\ => \t_aluout_out[9]_i_2_n_1\,
      \s_rx_reg[9]_0\ => \i__carry__1_i_11_n_1\,
      \s_ry_reg[10]\ => \t_aluout_out[10]_i_2_n_1\,
      \s_ry_reg[10]_0\ => \i__carry__1_i_10_n_1\,
      \s_ry_reg[10]_1\ => \i__carry__1_i_14_n_1\,
      \s_ry_reg[11]\ => \i__carry__1_i_9_n_1\,
      \s_ry_reg[11]_0\ => \i__carry__1_i_13_n_1\,
      \s_ry_reg[12]\ => \i__carry__2_i_10_n_1\,
      \s_ry_reg[12]_0\ => \i__carry__2_i_15_n_1\,
      \s_ry_reg[13]\ => \i__carry__2_i_9_n_1\,
      \s_ry_reg[13]_0\ => \i__carry__2_i_14_n_1\,
      \s_ry_reg[14]\ => \i__carry__2_i_8_n_1\,
      \s_ry_reg[15]\ => \t_aluout_out[12]_i_2_n_1\,
      \s_ry_reg[15]_0\ => \t_aluout_out[12]_i_5_n_1\,
      \s_ry_reg[15]_1\ => \i__carry__2_i_11_n_1\,
      \s_ry_reg[15]_2\(0) => \s_ry_reg_n_1_[15]\
    );
\i__carry__0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \i__carry_i_18_n_1\,
      I1 => s_rx(6),
      I2 => \i__carry__0_i_18_n_1\,
      I3 => \s_ry_reg_n_1_[6]\,
      I4 => \i__carry_i_20_n_1\,
      O => \i__carry__0_i_10_n_1\
    );
\i__carry__0_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \i__carry_i_18_n_1\,
      I1 => s_rx(5),
      I2 => \i__carry__0_i_19_n_1\,
      I3 => \s_ry_reg_n_1_[5]\,
      I4 => \i__carry_i_20_n_1\,
      O => \i__carry__0_i_11_n_1\
    );
\i__carry__0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \i__carry_i_18_n_1\,
      I1 => s_rx(4),
      I2 => \i__carry__0_i_20_n_1\,
      I3 => \s_ry_reg_n_1_[4]\,
      I4 => \i__carry_i_20_n_1\,
      O => \i__carry__0_i_12_n_1\
    );
\i__carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077772777"
    )
        port map (
      I0 => s_from_forwardy_reg_n_1,
      I1 => \s_forward_datax_reg_n_1_[7]\,
      I2 => s_rx(7),
      I3 => alu_mux_ry(1),
      I4 => alu_mux_ry(0),
      I5 => \i__carry__0_i_21_n_1\,
      O => \i__carry__0_i_13_n_1\
    );
\i__carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077772777"
    )
        port map (
      I0 => s_from_forwardy_reg_n_1,
      I1 => \s_forward_datax_reg_n_1_[6]\,
      I2 => \s_ry_reg_n_1_[6]\,
      I3 => alu_mux_ry(0),
      I4 => alu_mux_ry(1),
      I5 => \i__carry__0_i_22_n_1\,
      O => \i__carry__0_i_14_n_1\
    );
\i__carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077772777"
    )
        port map (
      I0 => s_from_forwardy_reg_n_1,
      I1 => \s_forward_datax_reg_n_1_[5]\,
      I2 => \s_ry_reg_n_1_[5]\,
      I3 => alu_mux_ry(0),
      I4 => alu_mux_ry(1),
      I5 => \i__carry__0_i_23_n_1\,
      O => \i__carry__0_i_15_n_1\
    );
\i__carry__0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077772777"
    )
        port map (
      I0 => s_from_forwardy_reg_n_1,
      I1 => \s_forward_datax_reg_n_1_[4]\,
      I2 => \s_ry_reg_n_1_[4]\,
      I3 => alu_mux_ry(0),
      I4 => alu_mux_ry(1),
      I5 => \i__carry__0_i_24_n_1\,
      O => \i__carry__0_i_16_n_1\
    );
\i__carry__0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAC000AAAA0000"
    )
        port map (
      I0 => \s_forward_datax_reg_n_1_[7]\,
      I1 => alu_mux_rx(1),
      I2 => alu_mux_rx(0),
      I3 => alu_mux_rx(2),
      I4 => s_from_forwardy_reg_n_1,
      I5 => \s_immediate_reg_n_1_[7]\,
      O => \i__carry__0_i_17_n_1\
    );
\i__carry__0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAC000AAAA0000"
    )
        port map (
      I0 => \s_forward_datax_reg_n_1_[6]\,
      I1 => alu_mux_rx(1),
      I2 => alu_mux_rx(0),
      I3 => alu_mux_rx(2),
      I4 => s_from_forwardy_reg_n_1,
      I5 => \s_immediate_reg_n_1_[6]\,
      O => \i__carry__0_i_18_n_1\
    );
\i__carry__0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAC000AAAA0000"
    )
        port map (
      I0 => \s_forward_datax_reg_n_1_[5]\,
      I1 => alu_mux_rx(1),
      I2 => alu_mux_rx(0),
      I3 => alu_mux_rx(2),
      I4 => s_from_forwardy_reg_n_1,
      I5 => \s_immediate_reg_n_1_[5]\,
      O => \i__carry__0_i_19_n_1\
    );
\i__carry__0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAC000AAAA0000"
    )
        port map (
      I0 => \s_forward_datax_reg_n_1_[4]\,
      I1 => alu_mux_rx(1),
      I2 => alu_mux_rx(0),
      I3 => alu_mux_rx(2),
      I4 => s_from_forwardy_reg_n_1,
      I5 => \s_immediate_reg_n_1_[4]\,
      O => \i__carry__0_i_20_n_1\
    );
\i__carry__0_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02030200"
    )
        port map (
      I0 => \s_ry_reg_n_1_[7]\,
      I1 => alu_mux_ry(1),
      I2 => s_from_forwardy_reg_n_1,
      I3 => alu_mux_ry(0),
      I4 => \s_immediate_reg_n_1_[7]\,
      O => \i__carry__0_i_21_n_1\
    );
\i__carry__0_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0008"
    )
        port map (
      I0 => s_rx(6),
      I1 => alu_mux_ry(1),
      I2 => s_from_forwardy_reg_n_1,
      I3 => alu_mux_ry(0),
      I4 => \s_immediate_reg_n_1_[6]\,
      O => \i__carry__0_i_22_n_1\
    );
\i__carry__0_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0008"
    )
        port map (
      I0 => s_rx(5),
      I1 => alu_mux_ry(1),
      I2 => s_from_forwardy_reg_n_1,
      I3 => alu_mux_ry(0),
      I4 => \s_immediate_reg_n_1_[5]\,
      O => \i__carry__0_i_23_n_1\
    );
\i__carry__0_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0008"
    )
        port map (
      I0 => s_rx(4),
      I1 => alu_mux_ry(1),
      I2 => s_from_forwardy_reg_n_1,
      I3 => alu_mux_ry(0),
      I4 => \s_immediate_reg_n_1_[4]\,
      O => \i__carry__0_i_24_n_1\
    );
\i__carry__0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \i__carry_i_18_n_1\,
      I1 => s_rx(7),
      I2 => \i__carry__0_i_17_n_1\,
      I3 => \s_ry_reg_n_1_[7]\,
      I4 => \i__carry_i_20_n_1\,
      O => \i__carry__0_i_9_n_1\
    );
\i__carry__1_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFFFFFF4"
    )
        port map (
      I0 => \i__carry_i_20_n_1\,
      I1 => \s_ry_reg_n_1_[10]\,
      I2 => \i__carry__1_i_19_n_1\,
      I3 => \i__carry__1_i_18_n_1\,
      I4 => s_rx(10),
      I5 => \i__carry_i_18_n_1\,
      O => \i__carry__1_i_10_n_1\
    );
\i__carry__1_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \i__carry_i_18_n_1\,
      I1 => s_rx(9),
      I2 => \i__carry__1_i_20_n_1\,
      I3 => \s_ry_reg_n_1_[9]\,
      I4 => \i__carry_i_20_n_1\,
      O => \i__carry__1_i_11_n_1\
    );
\i__carry__1_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \i__carry_i_18_n_1\,
      I1 => s_rx(8),
      I2 => \i__carry__1_i_21_n_1\,
      I3 => \s_ry_reg_n_1_[8]\,
      I4 => \i__carry_i_20_n_1\,
      O => \i__carry__1_i_12_n_1\
    );
\i__carry__1_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000051510051"
    )
        port map (
      I0 => \i__carry__1_i_17_n_1\,
      I1 => \s_ry_reg_n_1_[11]\,
      I2 => \i__carry__1_i_22_n_1\,
      I3 => s_rx(11),
      I4 => \i__carry__1_i_23_n_1\,
      I5 => \i__carry__1_i_24_n_1\,
      O => \i__carry__1_i_13_n_1\
    );
\i__carry__1_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000051510051"
    )
        port map (
      I0 => \i__carry__1_i_19_n_1\,
      I1 => \s_ry_reg_n_1_[10]\,
      I2 => \i__carry__1_i_22_n_1\,
      I3 => s_rx(10),
      I4 => \i__carry__1_i_23_n_1\,
      I5 => \i__carry__1_i_24_n_1\,
      O => \i__carry__1_i_14_n_1\
    );
\i__carry__1_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077772777"
    )
        port map (
      I0 => s_from_forwardy_reg_n_1,
      I1 => \s_forward_datax_reg_n_1_[9]\,
      I2 => \s_ry_reg_n_1_[9]\,
      I3 => alu_mux_ry(0),
      I4 => alu_mux_ry(1),
      I5 => \i__carry__1_i_25_n_1\,
      O => \i__carry__1_i_15_n_1\
    );
\i__carry__1_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077772777"
    )
        port map (
      I0 => s_from_forwardy_reg_n_1,
      I1 => \s_forward_datax_reg_n_1_[8]\,
      I2 => \s_ry_reg_n_1_[8]\,
      I3 => alu_mux_ry(0),
      I4 => alu_mux_ry(1),
      I5 => \i__carry__1_i_26_n_1\,
      O => \i__carry__1_i_16_n_1\
    );
\i__carry__1_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_from_forwardy_reg_n_1,
      I1 => \s_forward_datax_reg_n_1_[11]\,
      O => \i__carry__1_i_17_n_1\
    );
\i__carry__1_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \s_immediate_reg_n_1_[13]\,
      I1 => s_from_forwardy_reg_n_1,
      I2 => alu_mux_rx(2),
      I3 => alu_mux_rx(0),
      I4 => alu_mux_rx(1),
      O => \i__carry__1_i_18_n_1\
    );
\i__carry__1_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_from_forwardy_reg_n_1,
      I1 => \s_forward_datax_reg_n_1_[10]\,
      O => \i__carry__1_i_19_n_1\
    );
\i__carry__1_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAC000AAAA0000"
    )
        port map (
      I0 => \s_forward_datax_reg_n_1_[9]\,
      I1 => alu_mux_rx(1),
      I2 => alu_mux_rx(0),
      I3 => alu_mux_rx(2),
      I4 => s_from_forwardy_reg_n_1,
      I5 => \s_immediate_reg_n_1_[9]\,
      O => \i__carry__1_i_20_n_1\
    );
\i__carry__1_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAC000AAAA0000"
    )
        port map (
      I0 => \s_forward_datax_reg_n_1_[8]\,
      I1 => alu_mux_rx(1),
      I2 => alu_mux_rx(0),
      I3 => alu_mux_rx(2),
      I4 => s_from_forwardy_reg_n_1,
      I5 => \s_immediate_reg_n_1_[8]\,
      O => \i__carry__1_i_21_n_1\
    );
\i__carry__1_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => alu_mux_ry(1),
      I1 => alu_mux_ry(0),
      I2 => s_from_forwardy_reg_n_1,
      O => \i__carry__1_i_22_n_1\
    );
\i__carry__1_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => alu_mux_ry(0),
      I1 => s_from_forwardy_reg_n_1,
      I2 => alu_mux_ry(1),
      O => \i__carry__1_i_23_n_1\
    );
\i__carry__1_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \s_immediate_reg_n_1_[13]\,
      I1 => alu_mux_ry(0),
      I2 => s_from_forwardy_reg_n_1,
      I3 => alu_mux_ry(1),
      O => \i__carry__1_i_24_n_1\
    );
\i__carry__1_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0008"
    )
        port map (
      I0 => s_rx(9),
      I1 => alu_mux_ry(1),
      I2 => s_from_forwardy_reg_n_1,
      I3 => alu_mux_ry(0),
      I4 => \s_immediate_reg_n_1_[9]\,
      O => \i__carry__1_i_25_n_1\
    );
\i__carry__1_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0008"
    )
        port map (
      I0 => s_rx(8),
      I1 => alu_mux_ry(1),
      I2 => s_from_forwardy_reg_n_1,
      I3 => alu_mux_ry(0),
      I4 => \s_immediate_reg_n_1_[8]\,
      O => \i__carry__1_i_26_n_1\
    );
\i__carry__1_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFFFFFF4"
    )
        port map (
      I0 => \i__carry_i_20_n_1\,
      I1 => \s_ry_reg_n_1_[11]\,
      I2 => \i__carry__1_i_17_n_1\,
      I3 => \i__carry__1_i_18_n_1\,
      I4 => s_rx(11),
      I5 => \i__carry_i_18_n_1\,
      O => \i__carry__1_i_9_n_1\
    );
\i__carry__2_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFFFFFF4"
    )
        port map (
      I0 => \i__carry_i_20_n_1\,
      I1 => \s_ry_reg_n_1_[12]\,
      I2 => \i__carry__2_i_18_n_1\,
      I3 => \i__carry__1_i_18_n_1\,
      I4 => s_rx(12),
      I5 => \i__carry_i_18_n_1\,
      O => \i__carry__2_i_10_n_1\
    );
\i__carry__2_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000BB0B"
    )
        port map (
      I0 => \i__carry_i_20_n_1\,
      I1 => \s_ry_reg_n_1_[15]\,
      I2 => s_rx(15),
      I3 => \i__carry_i_18_n_1\,
      I4 => \i__carry__1_i_18_n_1\,
      I5 => \i__carry__2_i_19_n_1\,
      O => \i__carry__2_i_11_n_1\
    );
\i__carry__2_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0051005100000051"
    )
        port map (
      I0 => \i__carry__2_i_16_n_1\,
      I1 => s_rx(14),
      I2 => \i__carry__1_i_23_n_1\,
      I3 => \i__carry__1_i_24_n_1\,
      I4 => \s_ry_reg_n_1_[14]\,
      I5 => \i__carry__1_i_22_n_1\,
      O => \i__carry__2_i_13_n_1\
    );
\i__carry__2_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000051510051"
    )
        port map (
      I0 => \i__carry__2_i_17_n_1\,
      I1 => \s_ry_reg_n_1_[13]\,
      I2 => \i__carry__1_i_22_n_1\,
      I3 => s_rx(13),
      I4 => \i__carry__1_i_23_n_1\,
      I5 => \i__carry__1_i_24_n_1\,
      O => \i__carry__2_i_14_n_1\
    );
\i__carry__2_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000051510051"
    )
        port map (
      I0 => \i__carry__2_i_18_n_1\,
      I1 => \s_ry_reg_n_1_[12]\,
      I2 => \i__carry__1_i_22_n_1\,
      I3 => s_rx(12),
      I4 => \i__carry__1_i_23_n_1\,
      I5 => \i__carry__1_i_24_n_1\,
      O => \i__carry__2_i_15_n_1\
    );
\i__carry__2_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_from_forwardy_reg_n_1,
      I1 => \s_forward_datay_reg_n_1_[14]\,
      O => \i__carry__2_i_16_n_1\
    );
\i__carry__2_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_from_forwardy_reg_n_1,
      I1 => \s_forward_datay_reg_n_1_[13]\,
      O => \i__carry__2_i_17_n_1\
    );
\i__carry__2_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_from_forwardy_reg_n_1,
      I1 => \s_forward_datax_reg_n_1_[12]\,
      O => \i__carry__2_i_18_n_1\
    );
\i__carry__2_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_from_forwardy_reg_n_1,
      I1 => \s_forward_datay_reg_n_1_[15]\,
      O => \i__carry__2_i_19_n_1\
    );
\i__carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFFFFFF4"
    )
        port map (
      I0 => \i__carry_i_20_n_1\,
      I1 => \s_ry_reg_n_1_[14]\,
      I2 => \i__carry__2_i_16_n_1\,
      I3 => \i__carry__1_i_18_n_1\,
      I4 => s_rx(14),
      I5 => \i__carry_i_18_n_1\,
      O => \i__carry__2_i_8_n_1\
    );
\i__carry__2_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4FFF4FFFFFFF4"
    )
        port map (
      I0 => \i__carry_i_20_n_1\,
      I1 => \s_ry_reg_n_1_[13]\,
      I2 => \i__carry__2_i_17_n_1\,
      I3 => \i__carry__1_i_18_n_1\,
      I4 => s_rx(13),
      I5 => \i__carry_i_18_n_1\,
      O => \i__carry__2_i_9_n_1\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF8F88"
    )
        port map (
      I0 => \s_forward_datay_reg_n_1_[0]\,
      I1 => s_from_forwardy_reg_n_1,
      I2 => \i__carry_i_9_n_1\,
      I3 => \s_immediate_reg_n_1_[0]\,
      I4 => \i__carry_i_10_n_1\,
      I5 => \i__carry_i_11_n_1\,
      O => s_alu_rx(0)
    );
\i__carry_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => alu_mux_rx(1),
      I1 => alu_mux_rx(0),
      I2 => \s_pc_reg_n_1_[0]\,
      I3 => s_from_forwardy_reg_n_1,
      I4 => alu_mux_rx(2),
      O => \i__carry_i_10_n_1\
    );
\i__carry_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003000200000002"
    )
        port map (
      I0 => s_rx(0),
      I1 => s_from_forwardy_reg_n_1,
      I2 => alu_mux_rx(2),
      I3 => alu_mux_rx(1),
      I4 => alu_mux_rx(0),
      I5 => \s_ry_reg_n_1_[0]\,
      O => \i__carry_i_11_n_1\
    );
\i__carry_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \i__carry_i_18_n_1\,
      I1 => s_rx(3),
      I2 => \i__carry_i_19_n_1\,
      I3 => \s_ry_reg_n_1_[3]\,
      I4 => \i__carry_i_20_n_1\,
      O => \i__carry_i_12_n_1\
    );
\i__carry_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \i__carry_i_18_n_1\,
      I1 => s_rx(2),
      I2 => \i__carry_i_21_n_1\,
      I3 => \s_ry_reg_n_1_[2]\,
      I4 => \i__carry_i_20_n_1\,
      O => \i__carry_i_13_n_1\
    );
\i__carry_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF4"
    )
        port map (
      I0 => \i__carry_i_18_n_1\,
      I1 => s_rx(1),
      I2 => \i__carry_i_22_n_1\,
      I3 => \s_ry_reg_n_1_[1]\,
      I4 => \i__carry_i_20_n_1\,
      O => \i__carry_i_14_n_1\
    );
\i__carry_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077772777"
    )
        port map (
      I0 => s_from_forwardy_reg_n_1,
      I1 => \s_forward_datax_reg_n_1_[3]\,
      I2 => \s_ry_reg_n_1_[3]\,
      I3 => alu_mux_ry(0),
      I4 => alu_mux_ry(1),
      I5 => \i__carry_i_23_n_1\,
      O => \i__carry_i_15_n_1\
    );
\i__carry_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077772777"
    )
        port map (
      I0 => s_from_forwardy_reg_n_1,
      I1 => \s_forward_datax_reg_n_1_[2]\,
      I2 => s_rx(2),
      I3 => alu_mux_ry(1),
      I4 => alu_mux_ry(0),
      I5 => \i__carry_i_24_n_1\,
      O => \i__carry_i_16_n_1\
    );
\i__carry_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077772777"
    )
        port map (
      I0 => s_from_forwardy_reg_n_1,
      I1 => \s_forward_datax_reg_n_1_[1]\,
      I2 => \s_ry_reg_n_1_[1]\,
      I3 => alu_mux_ry(0),
      I4 => alu_mux_ry(1),
      I5 => \i__carry_i_25_n_1\,
      O => \i__carry_i_17_n_1\
    );
\i__carry_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => alu_mux_rx(0),
      I1 => s_from_forwardy_reg_n_1,
      I2 => alu_mux_rx(2),
      I3 => alu_mux_rx(1),
      O => \i__carry_i_18_n_1\
    );
\i__carry_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAC000AAAA0000"
    )
        port map (
      I0 => \s_forward_datax_reg_n_1_[3]\,
      I1 => alu_mux_rx(1),
      I2 => alu_mux_rx(0),
      I3 => alu_mux_rx(2),
      I4 => s_from_forwardy_reg_n_1,
      I5 => \s_immediate_reg_n_1_[3]\,
      O => \i__carry_i_19_n_1\
    );
\i__carry_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => s_from_forwardy_reg_n_1,
      I1 => alu_mux_rx(2),
      I2 => alu_mux_rx(1),
      I3 => alu_mux_rx(0),
      O => \i__carry_i_20_n_1\
    );
\i__carry_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAC000AAAA0000"
    )
        port map (
      I0 => \s_forward_datax_reg_n_1_[2]\,
      I1 => alu_mux_rx(1),
      I2 => alu_mux_rx(0),
      I3 => alu_mux_rx(2),
      I4 => s_from_forwardy_reg_n_1,
      I5 => \s_immediate_reg_n_1_[2]\,
      O => \i__carry_i_21_n_1\
    );
\i__carry_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAC000AAAA0000"
    )
        port map (
      I0 => \s_forward_datax_reg_n_1_[1]\,
      I1 => alu_mux_rx(1),
      I2 => alu_mux_rx(0),
      I3 => alu_mux_rx(2),
      I4 => s_from_forwardy_reg_n_1,
      I5 => \s_immediate_reg_n_1_[1]\,
      O => \i__carry_i_22_n_1\
    );
\i__carry_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0008"
    )
        port map (
      I0 => s_rx(3),
      I1 => alu_mux_ry(1),
      I2 => s_from_forwardy_reg_n_1,
      I3 => alu_mux_ry(0),
      I4 => \s_immediate_reg_n_1_[3]\,
      O => \i__carry_i_23_n_1\
    );
\i__carry_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02030200"
    )
        port map (
      I0 => \s_ry_reg_n_1_[2]\,
      I1 => alu_mux_ry(1),
      I2 => s_from_forwardy_reg_n_1,
      I3 => alu_mux_ry(0),
      I4 => \s_immediate_reg_n_1_[2]\,
      O => \i__carry_i_24_n_1\
    );
\i__carry_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000B0008"
    )
        port map (
      I0 => s_rx(1),
      I1 => alu_mux_ry(1),
      I2 => s_from_forwardy_reg_n_1,
      I3 => alu_mux_ry(0),
      I4 => \s_immediate_reg_n_1_[1]\,
      O => \i__carry_i_25_n_1\
    );
\i__carry_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => alu_mux_rx(1),
      I1 => alu_mux_rx(0),
      I2 => alu_mux_rx(2),
      I3 => s_from_forwardy_reg_n_1,
      O => \i__carry_i_9_n_1\
    );
memoryRead_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => s_id_memoryRead,
      Q => \^memread_in\
    );
memoryWrite_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAFBBF"
    )
        port map (
      I0 => \s_alu_mux_ry[1]_i_5_n_1\,
      I1 => \toutput1_reg[6]_P\,
      I2 => D(0),
      I3 => \^memorywrite_reg_1\,
      I4 => \toutput1_reg[8]_P\,
      I5 => \s_instruction[15]_i_6_n_1\,
      O => \^memorywrite_reg_0\
    );
memoryWrite_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => s_id_memoryWrite,
      Q => \^s_exe_memorywrite\
    );
registerWrite_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => s_id_registerWrite,
      Q => regwrite_in
    );
\s_alu_mux_rx_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[2]\(0),
      Q => alu_mux_rx(0)
    );
\s_alu_mux_rx_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[2]\(1),
      Q => alu_mux_rx(1)
    );
\s_alu_mux_rx_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[2]\(2),
      Q => alu_mux_rx(2)
    );
\s_alu_mux_ry[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF51FFFFFFFFFFFF"
    )
        port map (
      I0 => \s_alu_mux_ry[1]_i_5_n_1\,
      I1 => \s_instruction[15]_i_5_n_1\,
      I2 => \toutput1_reg[8]_P\,
      I3 => \s_instruction[15]_i_6_n_1\,
      I4 => \s_instruction_reg[14]\(10),
      I5 => \s_instruction_reg[14]\(9),
      O => \s_alu_mux_ry_reg[1]_0\
    );
\s_alu_mux_ry[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FD5"
    )
        port map (
      I0 => \^memread_in\,
      I1 => s_select_goal(1),
      I2 => s_select_goal(0),
      I3 => s_select_goal(2),
      O => \s_alu_mux_ry[1]_i_5_n_1\
    );
\s_alu_mux_ry_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[4]\(0),
      Q => alu_mux_ry(0)
    );
\s_alu_mux_ry_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[4]\(1),
      Q => alu_mux_ry(1)
    );
\s_alu_op[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^memorywrite_reg_0\,
      I1 => \s_instruction_reg[1]\,
      O => \s_alu_op_reg[2]_0\
    );
\s_alu_op_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[5]\(0),
      Q => alu_op(0)
    );
\s_alu_op_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[5]\(1),
      Q => alu_op(1)
    );
\s_alu_op_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[5]\(2),
      Q => alu_op(2)
    );
\s_branch_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[7]\(0),
      Q => s_branch(0)
    );
\s_branch_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[7]\(1),
      Q => s_branch(1)
    );
\s_branch_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[7]\(2),
      Q => s_branch(2)
    );
\s_forward_datax_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => Q(10),
      Q => \s_forward_datax_reg_n_1_[10]\
    );
\s_forward_datax_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => Q(11),
      Q => \s_forward_datax_reg_n_1_[11]\
    );
\s_forward_datax_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => Q(12),
      Q => \s_forward_datax_reg_n_1_[12]\
    );
\s_forward_datax_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => Q(1),
      Q => \s_forward_datax_reg_n_1_[1]\
    );
\s_forward_datax_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => Q(2),
      Q => \s_forward_datax_reg_n_1_[2]\
    );
\s_forward_datax_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => Q(3),
      Q => \s_forward_datax_reg_n_1_[3]\
    );
\s_forward_datax_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => Q(4),
      Q => \s_forward_datax_reg_n_1_[4]\
    );
\s_forward_datax_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => Q(5),
      Q => \s_forward_datax_reg_n_1_[5]\
    );
\s_forward_datax_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => Q(6),
      Q => \s_forward_datax_reg_n_1_[6]\
    );
\s_forward_datax_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => Q(7),
      Q => \s_forward_datax_reg_n_1_[7]\
    );
\s_forward_datax_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => Q(8),
      Q => \s_forward_datax_reg_n_1_[8]\
    );
\s_forward_datax_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => Q(9),
      Q => \s_forward_datax_reg_n_1_[9]\
    );
\s_forward_datay_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => Q(0),
      Q => \s_forward_datay_reg_n_1_[0]\
    );
\s_forward_datay_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => Q(13),
      Q => \s_forward_datay_reg_n_1_[13]\
    );
\s_forward_datay_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => Q(14),
      Q => \s_forward_datay_reg_n_1_[14]\
    );
\s_forward_datay_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => Q(15),
      Q => \s_forward_datay_reg_n_1_[15]\
    );
s_from_forwardy_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => '1',
      Q => s_from_forwardy_reg_n_1
    );
\s_immediate_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[10]\(0),
      Q => \s_immediate_reg_n_1_[0]\
    );
\s_immediate_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[10]\(10),
      Q => \s_immediate_reg_n_1_[13]\
    );
\s_immediate_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[10]\(1),
      Q => \s_immediate_reg_n_1_[1]\
    );
\s_immediate_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[10]\(2),
      Q => \s_immediate_reg_n_1_[2]\
    );
\s_immediate_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[10]\(3),
      Q => \s_immediate_reg_n_1_[3]\
    );
\s_immediate_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[10]\(4),
      Q => \s_immediate_reg_n_1_[4]\
    );
\s_immediate_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[10]\(5),
      Q => \s_immediate_reg_n_1_[5]\
    );
\s_immediate_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[10]\(6),
      Q => \s_immediate_reg_n_1_[6]\
    );
\s_immediate_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[10]\(7),
      Q => \s_immediate_reg_n_1_[7]\
    );
\s_immediate_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[10]\(8),
      Q => \s_immediate_reg_n_1_[8]\
    );
\s_immediate_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[10]\(9),
      Q => \s_immediate_reg_n_1_[9]\
    );
\s_instruction[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF4F4F4FFFFFFFF"
    )
        port map (
      I0 => \toutput1_reg[8]_P\,
      I1 => \s_instruction[15]_i_5_n_1\,
      I2 => s_select_goal(2),
      I3 => s_select_goal(0),
      I4 => s_select_goal(1),
      I5 => \^memread_in\,
      O => E(0)
    );
\s_instruction[15]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => s_rx(15),
      I1 => s_branch(1),
      I2 => s_rx(12),
      I3 => s_rx(11),
      I4 => s_rx(14),
      I5 => s_rx(13),
      O => \s_instruction[15]_i_10_n_1\
    );
\s_instruction[15]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_rx(9),
      I1 => s_rx(10),
      I2 => s_rx(7),
      I3 => s_rx(8),
      O => \s_instruction[15]_i_11_n_1\
    );
\s_instruction[15]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_rx(5),
      I1 => s_rx(6),
      I2 => s_rx(3),
      I3 => s_rx(4),
      O => \s_instruction[15]_i_12_n_1\
    );
\s_instruction[15]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_rx(0),
      I1 => s_rx(1),
      I2 => s_rx(2),
      O => \s_instruction[15]_i_13_n_1\
    );
\s_instruction[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst_IBUF,
      I1 => \s_instruction[15]_i_6_n_1\,
      O => AR(0)
    );
\s_instruction[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF99FF99FFFFF"
    )
        port map (
      I0 => \^memorywrite_reg_1\,
      I1 => D(0),
      I2 => D(2),
      I3 => \^s_from_pc_reg[0]\,
      I4 => D(1),
      I5 => \^s_from_pc_reg[0]_0\,
      O => \s_instruction[15]_i_5_n_1\
    );
\s_instruction[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFBAAAAAAAE"
    )
        port map (
      I0 => s_branch(2),
      I1 => \s_instruction[15]_i_10_n_1\,
      I2 => \s_instruction[15]_i_11_n_1\,
      I3 => \s_instruction[15]_i_12_n_1\,
      I4 => \s_instruction[15]_i_13_n_1\,
      I5 => s_branch(0),
      O => \s_instruction[15]_i_6_n_1\
    );
\s_instruction[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F305F0F0F3F5"
    )
        port map (
      I0 => s_r_x(0),
      I1 => s_r_z(0),
      I2 => s_select_goal(0),
      I3 => s_select_goal(1),
      I4 => s_select_goal(2),
      I5 => s_r_y(0),
      O => \^memorywrite_reg_1\
    );
\s_instruction[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1F10C0FF1F13C3F"
    )
        port map (
      I0 => s_r_y(1),
      I1 => s_select_goal(2),
      I2 => s_select_goal(1),
      I3 => s_r_x(1),
      I4 => s_select_goal(0),
      I5 => s_r_z(1),
      O => \^s_from_pc_reg[0]_0\
    );
\s_instruction[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF5F5F0FFF3F3"
    )
        port map (
      I0 => s_r_y(2),
      I1 => s_r_x(2),
      I2 => s_select_goal(2),
      I3 => s_r_z(2),
      I4 => s_select_goal(1),
      I5 => s_select_goal(0),
      O => \^s_from_pc_reg[0]\
    );
\s_pc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => s_id_pc(0),
      Q => \s_pc_reg_n_1_[0]\
    );
\s_r_x_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[14]\(6),
      Q => s_r_x(0)
    );
\s_r_x_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[14]\(7),
      Q => s_r_x(1)
    );
\s_r_x_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[14]\(8),
      Q => s_r_x(2)
    );
\s_r_y_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[14]\(3),
      Q => s_r_y(0)
    );
\s_r_y_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[14]\(4),
      Q => s_r_y(1)
    );
\s_r_y_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[14]\(5),
      Q => s_r_y(2)
    );
\s_r_z_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[14]\(0),
      Q => s_r_z(0)
    );
\s_r_z_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[14]\(1),
      Q => s_r_z(1)
    );
\s_r_z_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[14]\(2),
      Q => s_r_z(2)
    );
\s_rx_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]\(0),
      Q => s_rx(0)
    );
\s_rx_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]\(10),
      Q => s_rx(10)
    );
\s_rx_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]\(11),
      Q => s_rx(11)
    );
\s_rx_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]\(12),
      Q => s_rx(12)
    );
\s_rx_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]\(13),
      Q => s_rx(13)
    );
\s_rx_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]\(14),
      Q => s_rx(14)
    );
\s_rx_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]\(15),
      Q => s_rx(15)
    );
\s_rx_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]\(1),
      Q => s_rx(1)
    );
\s_rx_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]\(2),
      Q => s_rx(2)
    );
\s_rx_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]\(3),
      Q => s_rx(3)
    );
\s_rx_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]\(4),
      Q => s_rx(4)
    );
\s_rx_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]\(5),
      Q => s_rx(5)
    );
\s_rx_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]\(6),
      Q => s_rx(6)
    );
\s_rx_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]\(7),
      Q => s_rx(7)
    );
\s_rx_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]\(8),
      Q => s_rx(8)
    );
\s_rx_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]\(9),
      Q => s_rx(9)
    );
\s_ry_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]_0\(0),
      Q => \s_ry_reg_n_1_[0]\
    );
\s_ry_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]_0\(10),
      Q => \s_ry_reg_n_1_[10]\
    );
\s_ry_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]_0\(11),
      Q => \s_ry_reg_n_1_[11]\
    );
\s_ry_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]_0\(12),
      Q => \s_ry_reg_n_1_[12]\
    );
\s_ry_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]_0\(13),
      Q => \s_ry_reg_n_1_[13]\
    );
\s_ry_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]_0\(14),
      Q => \s_ry_reg_n_1_[14]\
    );
\s_ry_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]_0\(15),
      Q => \s_ry_reg_n_1_[15]\
    );
\s_ry_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]_0\(1),
      Q => \s_ry_reg_n_1_[1]\
    );
\s_ry_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]_0\(2),
      Q => \s_ry_reg_n_1_[2]\
    );
\s_ry_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]_0\(3),
      Q => \s_ry_reg_n_1_[3]\
    );
\s_ry_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]_0\(4),
      Q => \s_ry_reg_n_1_[4]\
    );
\s_ry_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]_0\(5),
      Q => \s_ry_reg_n_1_[5]\
    );
\s_ry_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]_0\(6),
      Q => \s_ry_reg_n_1_[6]\
    );
\s_ry_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]_0\(7),
      Q => \s_ry_reg_n_1_[7]\
    );
\s_ry_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]_0\(8),
      Q => \s_ry_reg_n_1_[8]\
    );
\s_ry_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s0_reg[15]_0\(9),
      Q => \s_ry_reg_n_1_[9]\
    );
\s_select_goal_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[13]\(0),
      Q => s_select_goal(0)
    );
\s_select_goal_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[13]\(1),
      Q => s_select_goal(1)
    );
\s_select_goal_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => \s_instruction_reg[13]\(2),
      Q => s_select_goal(2)
    );
\t_aluout_out[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => alu_op(0),
      O => \t_aluout_out[0]_i_2_n_1\
    );
\t_aluout_out[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1000"
    )
        port map (
      I0 => \t_aluout_out[15]_i_4_n_1\,
      I1 => \i__carry_i_16_n_1\,
      I2 => \i__carry_i_17_n_1\,
      I3 => \t_aluout_out[4]_i_7_n_1\,
      I4 => \t_aluout_out[0]_i_6_n_1\,
      O => \t_aluout_out[0]_i_3_n_1\
    );
\t_aluout_out[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000054"
    )
        port map (
      I0 => \t_aluout_out[2]_i_4_n_1\,
      I1 => \i__carry_i_16_n_1\,
      I2 => \t_aluout_out[6]_i_8_n_1\,
      I3 => \t_aluout_out[15]_i_4_n_1\,
      I4 => \i__carry_i_17_n_1\,
      O => \t_aluout_out[0]_i_4_n_1\
    );
\t_aluout_out[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFF044C0"
    )
        port map (
      I0 => \i__carry__1_i_12_n_1\,
      I1 => \t_aluout_out[1]_i_11_n_1\,
      I2 => \i__carry__2_i_11_n_1\,
      I3 => \t_aluout_out[15]_i_17_n_1\,
      I4 => \t_aluout_out[14]_i_14_n_1\,
      I5 => \t_aluout_out[15]_i_4_n_1\,
      O => \t_aluout_out[0]_i_6_n_1\
    );
\t_aluout_out[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"37777777"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      I2 => alu_op(2),
      I3 => \t_aluout_out[15]_i_17_n_1\,
      I4 => \t_aluout_out[15]_i_18_n_1\,
      O => \t_aluout_out[0]_i_7_n_1\
    );
\t_aluout_out[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2A200A2"
    )
        port map (
      I0 => \t_aluout_out[10]_i_5_n_1\,
      I1 => \t_aluout_out[10]_i_6_n_1\,
      I2 => \t_aluout_out[12]_i_8_n_1\,
      I3 => \t_aluout_out[14]_i_13_n_1\,
      I4 => \t_aluout_out[13]_i_6_n_1\,
      O => \t_aluout_out[10]_i_2_n_1\
    );
\t_aluout_out[10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \t_aluout_out[14]_i_4_n_1\,
      I1 => \t_aluout_out[10]_i_8_n_1\,
      O => \t_aluout_out[10]_i_4_n_1\
    );
\t_aluout_out[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74FFFFF0F0F0F0F0"
    )
        port map (
      I0 => \i__carry__1_i_10_n_1\,
      I1 => \t_aluout_out[15]_i_17_n_1\,
      I2 => \i__carry__2_i_11_n_1\,
      I3 => \i__carry_i_17_n_1\,
      I4 => \i__carry_i_16_n_1\,
      I5 => \i__carry_i_15_n_1\,
      O => \t_aluout_out[10]_i_5_n_1\
    );
\t_aluout_out[10]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \i__carry_i_17_n_1\,
      I1 => \i__carry_i_16_n_1\,
      I2 => \i__carry_i_15_n_1\,
      O => \t_aluout_out[10]_i_6_n_1\
    );
\t_aluout_out[10]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000777"
    )
        port map (
      I0 => \t_aluout_out[14]_i_12_n_1\,
      I1 => \i__carry_i_12_n_1\,
      I2 => \i__carry__0_i_11_n_1\,
      I3 => \t_aluout_out[14]_i_13_n_1\,
      I4 => \t_aluout_out[10]_i_9_n_1\,
      O => \t_aluout_out[10]_i_8_n_1\
    );
\t_aluout_out[10]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0C0B00080C08000"
    )
        port map (
      I0 => \i__carry__1_i_11_n_1\,
      I1 => \i__carry_i_15_n_1\,
      I2 => \i__carry_i_16_n_1\,
      I3 => \i__carry_i_17_n_1\,
      I4 => \i__carry__0_i_9_n_1\,
      I5 => \i__carry_i_14_n_1\,
      O => \t_aluout_out[10]_i_9_n_1\
    );
\t_aluout_out[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBF3FBFC0800080"
    )
        port map (
      I0 => \t_aluout_out[14]_i_15_n_1\,
      I1 => \i__carry_i_15_n_1\,
      I2 => \i__carry_i_16_n_1\,
      I3 => \i__carry_i_17_n_1\,
      I4 => \t_aluout_out[11]_i_5_n_1\,
      I5 => \i__carry__2_i_11_n_1\,
      O => \t_aluout_out[11]_i_2_n_1\
    );
\t_aluout_out[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \t_aluout_out[14]_i_6_n_1\,
      I1 => \t_aluout_out[12]_i_9_n_1\,
      O => \t_aluout_out[11]_i_3_n_1\
    );
\t_aluout_out[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \i__carry__1_i_9_n_1\,
      I1 => \t_aluout_out[15]_i_17_n_1\,
      I2 => \i__carry__2_i_11_n_1\,
      O => \t_aluout_out[11]_i_5_n_1\
    );
\t_aluout_out[11]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \t_aluout_out[13]_i_7_n_1\,
      I1 => \i__carry_i_17_n_1\,
      I2 => \t_aluout_out[11]_i_8_n_1\,
      O => \t_aluout_out[11]_i_6_n_1\
    );
\t_aluout_out[11]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"053FF53F"
    )
        port map (
      I0 => s_alu_rx(0),
      I1 => \i__carry__0_i_12_n_1\,
      I2 => \i__carry_i_15_n_1\,
      I3 => \i__carry_i_16_n_1\,
      I4 => \i__carry__1_i_12_n_1\,
      O => \t_aluout_out[11]_i_8_n_1\
    );
\t_aluout_out[12]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AC000000"
    )
        port map (
      I0 => \i__carry__1_i_9_n_1\,
      I1 => \i__carry__1_i_11_n_1\,
      I2 => \i__carry_i_17_n_1\,
      I3 => \i__carry_i_16_n_1\,
      I4 => \i__carry_i_15_n_1\,
      O => \t_aluout_out[12]_i_11_n_1\
    );
\t_aluout_out[12]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CA00"
    )
        port map (
      I0 => \i__carry__0_i_11_n_1\,
      I1 => \i__carry__0_i_9_n_1\,
      I2 => \i__carry_i_17_n_1\,
      I3 => \i__carry_i_15_n_1\,
      I4 => \i__carry_i_16_n_1\,
      O => \t_aluout_out[12]_i_12_n_1\
    );
\t_aluout_out[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCCCACCC0CCCACCC"
    )
        port map (
      I0 => \t_aluout_out[13]_i_6_n_1\,
      I1 => \i__carry__2_i_11_n_1\,
      I2 => \i__carry_i_16_n_1\,
      I3 => \i__carry_i_15_n_1\,
      I4 => \i__carry_i_17_n_1\,
      I5 => \t_aluout_out[12]_i_8_n_1\,
      O => \t_aluout_out[12]_i_2_n_1\
    );
\t_aluout_out[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000004040"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      I2 => alu_op(0),
      I3 => \t_aluout_out[15]_i_17_n_1\,
      I4 => \t_aluout_out[15]_i_4_n_1\,
      I5 => \t_aluout_out[14]_i_14_n_1\,
      O => \t_aluout_out[12]_i_3_n_1\
    );
\t_aluout_out[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \t_aluout_out[14]_i_15_n_1\,
      I1 => \t_aluout_out[14]_i_14_n_1\,
      I2 => \i__carry__2_i_11_n_1\,
      O => \t_aluout_out[12]_i_5_n_1\
    );
\t_aluout_out[12]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \t_aluout_out[15]_i_4_n_1\,
      I1 => alu_op(0),
      I2 => alu_op(2),
      I3 => alu_op(1),
      O => \t_aluout_out[12]_i_6_n_1\
    );
\t_aluout_out[12]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \t_aluout_out[14]_i_6_n_1\,
      I1 => \t_aluout_out[13]_i_4_n_1\,
      O => \t_aluout_out[12]_i_7_n_1\
    );
\t_aluout_out[12]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \i__carry__2_i_10_n_1\,
      I1 => \t_aluout_out[15]_i_17_n_1\,
      I2 => \i__carry__2_i_11_n_1\,
      O => \t_aluout_out[12]_i_8_n_1\
    );
\t_aluout_out[12]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000D"
    )
        port map (
      I0 => \t_aluout_out[15]_i_14_n_1\,
      I1 => \t_aluout_out[15]_i_9_n_1\,
      I2 => \t_aluout_out[12]_i_11_n_1\,
      I3 => \t_aluout_out[12]_i_12_n_1\,
      O => \t_aluout_out[12]_i_9_n_1\
    );
\t_aluout_out[13]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \t_aluout_out[12]_i_6_n_1\,
      I1 => \i__carry__2_i_11_n_1\,
      I2 => \t_aluout_out[14]_i_14_n_1\,
      I3 => \t_aluout_out[13]_i_6_n_1\,
      O => \t_aluout_out[13]_i_3_n_1\
    );
\t_aluout_out[13]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \t_aluout_out[15]_i_13_n_1\,
      I1 => \i__carry_i_17_n_1\,
      I2 => \t_aluout_out[13]_i_7_n_1\,
      O => \t_aluout_out[13]_i_4_n_1\
    );
\t_aluout_out[13]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \i__carry__2_i_8_n_1\,
      I1 => \t_aluout_out[15]_i_17_n_1\,
      I2 => \i__carry__2_i_11_n_1\,
      O => \t_aluout_out[13]_i_6_n_1\
    );
\t_aluout_out[13]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"053FF53F"
    )
        port map (
      I0 => \i__carry_i_13_n_1\,
      I1 => \i__carry__0_i_10_n_1\,
      I2 => \i__carry_i_15_n_1\,
      I3 => \i__carry_i_16_n_1\,
      I4 => \i__carry__1_i_10_n_1\,
      O => \t_aluout_out[13]_i_7_n_1\
    );
\t_aluout_out[14]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0B000B0C0800080"
    )
        port map (
      I0 => \i__carry__1_i_9_n_1\,
      I1 => \i__carry_i_15_n_1\,
      I2 => \i__carry_i_16_n_1\,
      I3 => \i__carry_i_17_n_1\,
      I4 => \i__carry__2_i_9_n_1\,
      I5 => \i__carry_i_12_n_1\,
      O => \t_aluout_out[14]_i_10_n_1\
    );
\t_aluout_out[14]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B000800"
    )
        port map (
      I0 => \i__carry__0_i_11_n_1\,
      I1 => \i__carry_i_16_n_1\,
      I2 => \i__carry_i_15_n_1\,
      I3 => \i__carry_i_17_n_1\,
      I4 => \i__carry_i_14_n_1\,
      O => \t_aluout_out[14]_i_11_n_1\
    );
\t_aluout_out[14]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \i__carry_i_17_n_1\,
      I1 => \i__carry_i_15_n_1\,
      I2 => \i__carry_i_16_n_1\,
      O => \t_aluout_out[14]_i_12_n_1\
    );
\t_aluout_out[14]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \i__carry_i_17_n_1\,
      I1 => \i__carry_i_15_n_1\,
      I2 => \i__carry_i_16_n_1\,
      O => \t_aluout_out[14]_i_13_n_1\
    );
\t_aluout_out[14]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \t_aluout_out[14]_i_18_n_1\,
      I1 => \i__carry_i_25_n_1\,
      I2 => \t_aluout_out[14]_i_19_n_1\,
      I3 => \i__carry_i_24_n_1\,
      I4 => \i__carry_i_23_n_1\,
      I5 => \t_aluout_out[14]_i_20_n_1\,
      O => \t_aluout_out[14]_i_14_n_1\
    );
\t_aluout_out[14]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \i__carry__2_i_9_n_1\,
      I1 => \t_aluout_out[15]_i_17_n_1\,
      I2 => \i__carry__2_i_11_n_1\,
      O => \t_aluout_out[14]_i_15_n_1\
    );
\t_aluout_out[14]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(1),
      O => \t_aluout_out[14]_i_16_n_1\
    );
\t_aluout_out[14]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => alu_op(1),
      I1 => alu_op(2),
      O => \t_aluout_out[14]_i_17_n_1\
    );
\t_aluout_out[14]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFBFBF"
    )
        port map (
      I0 => alu_mux_ry(1),
      I1 => alu_mux_ry(0),
      I2 => \s_ry_reg_n_1_[1]\,
      I3 => \s_forward_datax_reg_n_1_[1]\,
      I4 => s_from_forwardy_reg_n_1,
      O => \t_aluout_out[14]_i_18_n_1\
    );
\t_aluout_out[14]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFBFBF"
    )
        port map (
      I0 => alu_mux_ry(0),
      I1 => alu_mux_ry(1),
      I2 => s_rx(2),
      I3 => \s_forward_datax_reg_n_1_[2]\,
      I4 => s_from_forwardy_reg_n_1,
      O => \t_aluout_out[14]_i_19_n_1\
    );
\t_aluout_out[14]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFBFBF"
    )
        port map (
      I0 => alu_mux_ry(1),
      I1 => alu_mux_ry(0),
      I2 => \s_ry_reg_n_1_[3]\,
      I3 => \s_forward_datax_reg_n_1_[3]\,
      I4 => s_from_forwardy_reg_n_1,
      O => \t_aluout_out[14]_i_20_n_1\
    );
\t_aluout_out[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \t_aluout_out[14]_i_10_n_1\,
      I1 => \t_aluout_out[14]_i_11_n_1\,
      I2 => \i__carry__0_i_9_n_1\,
      I3 => \t_aluout_out[14]_i_12_n_1\,
      I4 => \i__carry__1_i_11_n_1\,
      I5 => \t_aluout_out[14]_i_13_n_1\,
      O => \t_aluout_out[14]_i_3_n_1\
    );
\t_aluout_out[14]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \t_aluout_out[15]_i_4_n_1\,
      I1 => \t_aluout_out[15]_i_17_n_1\,
      I2 => alu_op(0),
      I3 => alu_op(2),
      O => \t_aluout_out[14]_i_4_n_1\
    );
\t_aluout_out[14]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \t_aluout_out[12]_i_3_n_1\,
      I1 => \i__carry__2_i_11_n_1\,
      I2 => \t_aluout_out[14]_i_14_n_1\,
      I3 => \t_aluout_out[14]_i_15_n_1\,
      O => \t_aluout_out[14]_i_5_n_1\
    );
\t_aluout_out[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000B0000000000"
    )
        port map (
      I0 => alu_op(1),
      I1 => \t_aluout_out[14]_i_14_n_1\,
      I2 => \t_aluout_out[15]_i_4_n_1\,
      I3 => \t_aluout_out[15]_i_17_n_1\,
      I4 => alu_op(0),
      I5 => alu_op(2),
      O => \t_aluout_out[14]_i_6_n_1\
    );
\t_aluout_out[14]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04040400"
    )
        port map (
      I0 => alu_op(2),
      I1 => alu_op(1),
      I2 => \i__carry__2_i_13_n_1\,
      I3 => alu_op(0),
      I4 => \i__carry__2_i_8_n_1\,
      O => \t_aluout_out[14]_i_7_n_1\
    );
\t_aluout_out[14]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => \i__carry__2_i_11_n_1\,
      I1 => \t_aluout_out[15]_i_17_n_1\,
      I2 => \t_aluout_out[15]_i_18_n_1\,
      I3 => alu_op(1),
      I4 => alu_op(2),
      I5 => alu_op(0),
      O => \t_aluout_out[14]_i_9_n_1\
    );
\t_aluout_out[15]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \i__carry__1_i_9_n_1\,
      I1 => \t_aluout_out[14]_i_13_n_1\,
      I2 => \i__carry__1_i_11_n_1\,
      I3 => \t_aluout_out[14]_i_12_n_1\,
      O => \t_aluout_out[15]_i_10_n_1\
    );
\t_aluout_out[15]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22002020"
    )
        port map (
      I0 => \i__carry_i_16_n_1\,
      I1 => \i__carry_i_17_n_1\,
      I2 => \i__carry__0_i_11_n_1\,
      I3 => \i__carry__2_i_9_n_1\,
      I4 => \i__carry_i_15_n_1\,
      O => \t_aluout_out[15]_i_11_n_1\
    );
\t_aluout_out[15]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFC880000FC88"
    )
        port map (
      I0 => s_rx(0),
      I1 => alu_mux_ry(1),
      I2 => \s_ry_reg_n_1_[0]\,
      I3 => alu_mux_ry(0),
      I4 => s_from_forwardy_reg_n_1,
      I5 => \s_forward_datay_reg_n_1_[0]\,
      O => \t_aluout_out[15]_i_12_n_1\
    );
\t_aluout_out[15]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5533000F5533FF0F"
    )
        port map (
      I0 => \i__carry__2_i_10_n_1\,
      I1 => \i__carry__1_i_12_n_1\,
      I2 => s_alu_rx(0),
      I3 => \i__carry_i_16_n_1\,
      I4 => \i__carry_i_15_n_1\,
      I5 => \i__carry__0_i_12_n_1\,
      O => \t_aluout_out[15]_i_13_n_1\
    );
\t_aluout_out[15]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i__carry_i_16_n_1\,
      I1 => \i__carry_i_15_n_1\,
      O => \t_aluout_out[15]_i_14_n_1\
    );
\t_aluout_out[15]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_aluout_out[14]_i_13_n_1\,
      I1 => \i__carry__1_i_10_n_1\,
      O => \t_aluout_out[15]_i_15_n_1\
    );
\t_aluout_out[15]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C00000A0"
    )
        port map (
      I0 => \i__carry_i_13_n_1\,
      I1 => \i__carry__2_i_8_n_1\,
      I2 => \i__carry_i_17_n_1\,
      I3 => \i__carry_i_16_n_1\,
      I4 => \i__carry_i_15_n_1\,
      O => \t_aluout_out[15]_i_16_n_1\
    );
\t_aluout_out[15]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \t_aluout_out[15]_i_21_n_1\,
      I1 => \t_aluout_out[15]_i_22_n_1\,
      I2 => \t_aluout_out[15]_i_23_n_1\,
      I3 => \t_aluout_out[15]_i_24_n_1\,
      I4 => \t_aluout_out[15]_i_25_n_1\,
      I5 => \t_aluout_out[15]_i_26_n_1\,
      O => \t_aluout_out[15]_i_17_n_1\
    );
\t_aluout_out[15]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \t_aluout_out[14]_i_14_n_1\,
      I1 => \t_aluout_out[15]_i_4_n_1\,
      O => \t_aluout_out[15]_i_18_n_1\
    );
\t_aluout_out[15]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF7FFFF"
    )
        port map (
      I0 => \t_aluout_out[15]_i_17_n_1\,
      I1 => \t_aluout_out[15]_i_18_n_1\,
      I2 => alu_op(1),
      I3 => alu_op(0),
      I4 => alu_op(2),
      O => \t_aluout_out[15]_i_19_n_1\
    );
\t_aluout_out[15]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBAFFFFFFFF"
    )
        port map (
      I0 => \i__carry__0_i_21_n_1\,
      I1 => \i__carry__1_i_23_n_1\,
      I2 => s_rx(7),
      I3 => \t_aluout_out[15]_i_27_n_1\,
      I4 => \i__carry__0_i_24_n_1\,
      I5 => \t_aluout_out[15]_i_28_n_1\,
      O => \t_aluout_out[15]_i_21_n_1\
    );
\t_aluout_out[15]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004500000000"
    )
        port map (
      I0 => \i__carry__0_i_22_n_1\,
      I1 => \i__carry__1_i_22_n_1\,
      I2 => \s_ry_reg_n_1_[6]\,
      I3 => \t_aluout_out[15]_i_29_n_1\,
      I4 => \i__carry__0_i_23_n_1\,
      I5 => \t_aluout_out[15]_i_30_n_1\,
      O => \t_aluout_out[15]_i_22_n_1\
    );
\t_aluout_out[15]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FFF3FBFFFFFFFF"
    )
        port map (
      I0 => s_rx(12),
      I1 => \t_aluout_out[15]_i_31_n_1\,
      I2 => \i__carry__1_i_24_n_1\,
      I3 => \i__carry__1_i_23_n_1\,
      I4 => s_rx(11),
      I5 => \t_aluout_out[15]_i_32_n_1\,
      O => \t_aluout_out[15]_i_23_n_1\
    );
\t_aluout_out[15]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4FFFFFFFFFF"
    )
        port map (
      I0 => \i__carry__1_i_22_n_1\,
      I1 => \s_ry_reg_n_1_[14]\,
      I2 => \i__carry__1_i_24_n_1\,
      I3 => \t_aluout_out[15]_i_33_n_1\,
      I4 => \t_aluout_out[15]_i_34_n_1\,
      I5 => \t_aluout_out[15]_i_35_n_1\,
      O => \t_aluout_out[15]_i_24_n_1\
    );
\t_aluout_out[15]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBAFFFFFFFF"
    )
        port map (
      I0 => \i__carry__1_i_25_n_1\,
      I1 => \i__carry__1_i_22_n_1\,
      I2 => \s_ry_reg_n_1_[9]\,
      I3 => \t_aluout_out[15]_i_36_n_1\,
      I4 => \i__carry__1_i_26_n_1\,
      I5 => \t_aluout_out[15]_i_37_n_1\,
      O => \t_aluout_out[15]_i_25_n_1\
    );
\t_aluout_out[15]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBAFFFFFFFFFF"
    )
        port map (
      I0 => \i__carry__1_i_24_n_1\,
      I1 => \i__carry__1_i_23_n_1\,
      I2 => s_rx(10),
      I3 => \t_aluout_out[15]_i_38_n_1\,
      I4 => \t_aluout_out[15]_i_39_n_1\,
      I5 => \t_aluout_out[15]_i_40_n_1\,
      O => \t_aluout_out[15]_i_26_n_1\
    );
\t_aluout_out[15]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_from_forwardy_reg_n_1,
      I1 => \s_forward_datax_reg_n_1_[7]\,
      O => \t_aluout_out[15]_i_27_n_1\
    );
\t_aluout_out[15]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFBFBF"
    )
        port map (
      I0 => alu_mux_ry(1),
      I1 => alu_mux_ry(0),
      I2 => \s_ry_reg_n_1_[4]\,
      I3 => \s_forward_datax_reg_n_1_[4]\,
      I4 => s_from_forwardy_reg_n_1,
      O => \t_aluout_out[15]_i_28_n_1\
    );
\t_aluout_out[15]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_from_forwardy_reg_n_1,
      I1 => \s_forward_datax_reg_n_1_[6]\,
      O => \t_aluout_out[15]_i_29_n_1\
    );
\t_aluout_out[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000FE"
    )
        port map (
      I0 => \i__carry_i_15_n_1\,
      I1 => \i__carry_i_16_n_1\,
      I2 => \t_aluout_out[15]_i_9_n_1\,
      I3 => \t_aluout_out[15]_i_10_n_1\,
      I4 => \t_aluout_out[15]_i_11_n_1\,
      O => \t_aluout_out[15]_i_3_n_1\
    );
\t_aluout_out[15]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFBFBF"
    )
        port map (
      I0 => alu_mux_ry(1),
      I1 => alu_mux_ry(0),
      I2 => \s_ry_reg_n_1_[5]\,
      I3 => \s_forward_datax_reg_n_1_[5]\,
      I4 => s_from_forwardy_reg_n_1,
      O => \t_aluout_out[15]_i_30_n_1\
    );
\t_aluout_out[15]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFBFBF"
    )
        port map (
      I0 => alu_mux_ry(1),
      I1 => alu_mux_ry(0),
      I2 => \s_ry_reg_n_1_[12]\,
      I3 => \s_forward_datax_reg_n_1_[12]\,
      I4 => s_from_forwardy_reg_n_1,
      O => \t_aluout_out[15]_i_31_n_1\
    );
\t_aluout_out[15]_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFBFBF"
    )
        port map (
      I0 => alu_mux_ry(1),
      I1 => alu_mux_ry(0),
      I2 => \s_ry_reg_n_1_[11]\,
      I3 => \s_forward_datax_reg_n_1_[11]\,
      I4 => s_from_forwardy_reg_n_1,
      O => \t_aluout_out[15]_i_32_n_1\
    );
\t_aluout_out[15]_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFBFBF"
    )
        port map (
      I0 => alu_mux_ry(0),
      I1 => alu_mux_ry(1),
      I2 => s_rx(14),
      I3 => \s_forward_datay_reg_n_1_[14]\,
      I4 => s_from_forwardy_reg_n_1,
      O => \t_aluout_out[15]_i_33_n_1\
    );
\t_aluout_out[15]_i_34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03020002"
    )
        port map (
      I0 => \s_immediate_reg_n_1_[13]\,
      I1 => alu_mux_ry(0),
      I2 => s_from_forwardy_reg_n_1,
      I3 => alu_mux_ry(1),
      I4 => s_rx(13),
      O => \t_aluout_out[15]_i_34_n_1\
    );
\t_aluout_out[15]_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFBFBF"
    )
        port map (
      I0 => alu_mux_ry(1),
      I1 => alu_mux_ry(0),
      I2 => \s_ry_reg_n_1_[13]\,
      I3 => \s_forward_datay_reg_n_1_[13]\,
      I4 => s_from_forwardy_reg_n_1,
      O => \t_aluout_out[15]_i_35_n_1\
    );
\t_aluout_out[15]_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_from_forwardy_reg_n_1,
      I1 => \s_forward_datax_reg_n_1_[9]\,
      O => \t_aluout_out[15]_i_36_n_1\
    );
\t_aluout_out[15]_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFBFBF"
    )
        port map (
      I0 => alu_mux_ry(1),
      I1 => alu_mux_ry(0),
      I2 => \s_ry_reg_n_1_[8]\,
      I3 => \s_forward_datax_reg_n_1_[8]\,
      I4 => s_from_forwardy_reg_n_1,
      O => \t_aluout_out[15]_i_37_n_1\
    );
\t_aluout_out[15]_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFBFBF"
    )
        port map (
      I0 => alu_mux_ry(1),
      I1 => alu_mux_ry(0),
      I2 => \s_ry_reg_n_1_[10]\,
      I3 => \s_forward_datax_reg_n_1_[10]\,
      I4 => s_from_forwardy_reg_n_1,
      O => \t_aluout_out[15]_i_38_n_1\
    );
\t_aluout_out[15]_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00320002"
    )
        port map (
      I0 => \s_immediate_reg_n_1_[13]\,
      I1 => alu_mux_ry(1),
      I2 => alu_mux_ry(0),
      I3 => s_from_forwardy_reg_n_1,
      I4 => \s_ry_reg_n_1_[15]\,
      O => \t_aluout_out[15]_i_39_n_1\
    );
\t_aluout_out[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => alu_mux_ry(1),
      I1 => s_from_forwardy_reg_n_1,
      I2 => alu_mux_ry(0),
      I3 => \s_immediate_reg_n_1_[0]\,
      I4 => \t_aluout_out[15]_i_12_n_1\,
      O => \t_aluout_out[15]_i_4_n_1\
    );
\t_aluout_out[15]_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5C5F5F5F"
    )
        port map (
      I0 => \s_forward_datay_reg_n_1_[15]\,
      I1 => alu_mux_ry(0),
      I2 => s_from_forwardy_reg_n_1,
      I3 => alu_mux_ry(1),
      I4 => s_rx(15),
      O => \t_aluout_out[15]_i_40_n_1\
    );
\t_aluout_out[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000003FAA"
    )
        port map (
      I0 => \t_aluout_out[15]_i_13_n_1\,
      I1 => \i__carry__0_i_10_n_1\,
      I2 => \t_aluout_out[15]_i_14_n_1\,
      I3 => \i__carry_i_17_n_1\,
      I4 => \t_aluout_out[15]_i_15_n_1\,
      I5 => \t_aluout_out[15]_i_16_n_1\,
      O => \t_aluout_out[15]_i_5_n_1\
    );
\t_aluout_out[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003A000000"
    )
        port map (
      I0 => \i__carry__0_i_9_n_1\,
      I1 => \i__carry__2_i_11_n_1\,
      I2 => \i__carry_i_15_n_1\,
      I3 => \i__carry_i_16_n_1\,
      I4 => \i__carry_i_17_n_1\,
      I5 => \t_aluout_out[15]_i_4_n_1\,
      O => \t_aluout_out[15]_i_6_n_1\
    );
\t_aluout_out[15]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFDFFFDF"
    )
        port map (
      I0 => alu_op(2),
      I1 => alu_op(0),
      I2 => \t_aluout_out[15]_i_17_n_1\,
      I3 => \t_aluout_out[15]_i_18_n_1\,
      I4 => alu_op(1),
      O => \t_aluout_out[15]_i_7_n_1\
    );
\t_aluout_out[15]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \i__carry_i_12_n_1\,
      I1 => \i__carry_i_17_n_1\,
      I2 => \i__carry_i_14_n_1\,
      O => \t_aluout_out[15]_i_9_n_1\
    );
\t_aluout_out[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA0222200A02222"
    )
        port map (
      I0 => \t_aluout_out[1]_i_12_n_1\,
      I1 => \i__carry__2_i_11_n_1\,
      I2 => \i__carry__2_i_9_n_1\,
      I3 => \i__carry_i_15_n_1\,
      I4 => \t_aluout_out[15]_i_17_n_1\,
      I5 => \i__carry__0_i_11_n_1\,
      O => \t_aluout_out[1]_i_10_n_1\
    );
\t_aluout_out[1]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \i__carry_i_15_n_1\,
      I1 => \i__carry_i_16_n_1\,
      I2 => \i__carry_i_17_n_1\,
      O => \t_aluout_out[1]_i_11_n_1\
    );
\t_aluout_out[1]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i__carry_i_17_n_1\,
      I1 => \i__carry_i_16_n_1\,
      O => \t_aluout_out[1]_i_12_n_1\
    );
\t_aluout_out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A020A0A00020"
    )
        port map (
      I0 => \i__carry_i_14_n_1\,
      I1 => \i__carry_i_17_n_1\,
      I2 => alu_op(1),
      I3 => alu_op(2),
      I4 => alu_op(0),
      I5 => \t_aluout_out[1]_i_5_n_1\,
      O => \t_aluout_out[1]_i_2_n_1\
    );
\t_aluout_out[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000002F2"
    )
        port map (
      I0 => \t_aluout_out[1]_i_7_n_1\,
      I1 => \t_aluout_out[3]_i_8_n_1\,
      I2 => \i__carry_i_17_n_1\,
      I3 => \t_aluout_out[1]_i_8_n_1\,
      I4 => \t_aluout_out[1]_i_9_n_1\,
      I5 => \t_aluout_out[1]_i_10_n_1\,
      O => \t_aluout_out[1]_i_4_n_1\
    );
\t_aluout_out[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \t_aluout_out[15]_i_17_n_1\,
      I1 => \t_aluout_out[15]_i_18_n_1\,
      O => \t_aluout_out[1]_i_5_n_1\
    );
\t_aluout_out[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEEEFEEE"
    )
        port map (
      I0 => \i__carry_i_16_n_1\,
      I1 => \i__carry__2_i_11_n_1\,
      I2 => \i__carry_i_15_n_1\,
      I3 => \t_aluout_out[15]_i_17_n_1\,
      I4 => \i__carry__0_i_9_n_1\,
      O => \t_aluout_out[1]_i_7_n_1\
    );
\t_aluout_out[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \i__carry_i_15_n_1\,
      I1 => \i__carry_i_16_n_1\,
      I2 => \t_aluout_out[15]_i_17_n_1\,
      I3 => \i__carry__2_i_11_n_1\,
      O => \t_aluout_out[1]_i_8_n_1\
    );
\t_aluout_out[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA0A0A030303030"
    )
        port map (
      I0 => \i__carry__1_i_11_n_1\,
      I1 => \i__carry__2_i_11_n_1\,
      I2 => \t_aluout_out[1]_i_11_n_1\,
      I3 => \i__carry_i_14_n_1\,
      I4 => \t_aluout_out[14]_i_14_n_1\,
      I5 => \t_aluout_out[15]_i_17_n_1\,
      O => \t_aluout_out[1]_i_9_n_1\
    );
\t_aluout_out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003F2F302F"
    )
        port map (
      I0 => \t_aluout_out[6]_i_8_n_1\,
      I1 => \t_aluout_out[2]_i_4_n_1\,
      I2 => \i__carry_i_17_n_1\,
      I3 => \i__carry_i_16_n_1\,
      I4 => \t_aluout_out[4]_i_7_n_1\,
      I5 => \t_aluout_out[2]_i_5_n_1\,
      O => \t_aluout_out[2]_i_2_n_1\
    );
\t_aluout_out[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8000800FB003B00"
    )
        port map (
      I0 => \i__carry__1_i_10_n_1\,
      I1 => \t_aluout_out[15]_i_17_n_1\,
      I2 => \i__carry_i_15_n_1\,
      I3 => \i__carry_i_16_n_1\,
      I4 => \i__carry_i_13_n_1\,
      I5 => \i__carry__2_i_11_n_1\,
      O => \t_aluout_out[2]_i_4_n_1\
    );
\t_aluout_out[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000008B000F"
    )
        port map (
      I0 => \i__carry__1_i_12_n_1\,
      I1 => \t_aluout_out[15]_i_17_n_1\,
      I2 => \i__carry__2_i_11_n_1\,
      I3 => \i__carry_i_17_n_1\,
      I4 => \i__carry_i_15_n_1\,
      I5 => \i__carry_i_16_n_1\,
      O => \t_aluout_out[2]_i_5_n_1\
    );
\t_aluout_out[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => alu_op(2),
      I1 => alu_op(0),
      I2 => \t_aluout_out[15]_i_17_n_1\,
      I3 => \t_aluout_out[15]_i_4_n_1\,
      I4 => \t_aluout_out[14]_i_14_n_1\,
      I5 => \i__carry_i_14_n_1\,
      O => \t_aluout_out[2]_i_7_n_1\
    );
\t_aluout_out[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \t_aluout_out[14]_i_6_n_1\,
      I1 => \t_aluout_out[10]_i_6_n_1\,
      I2 => \i__carry_i_14_n_1\,
      O => \t_aluout_out[3]_i_3_n_1\
    );
\t_aluout_out[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"030F020F0300020F"
    )
        port map (
      I0 => \t_aluout_out[7]_i_6_n_1\,
      I1 => \t_aluout_out[3]_i_8_n_1\,
      I2 => \t_aluout_out[3]_i_9_n_1\,
      I3 => \i__carry_i_17_n_1\,
      I4 => \i__carry_i_16_n_1\,
      I5 => \t_aluout_out[5]_i_7_n_1\,
      O => \t_aluout_out[3]_i_4_n_1\
    );
\t_aluout_out[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"35FFFFFF"
    )
        port map (
      I0 => s_alu_rx(0),
      I1 => \i__carry_i_13_n_1\,
      I2 => \i__carry_i_17_n_1\,
      I3 => \i__carry_i_16_n_1\,
      I4 => \i__carry_i_15_n_1\,
      O => \t_aluout_out[3]_i_5_n_1\
    );
\t_aluout_out[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA000080000000"
    )
        port map (
      I0 => \i__carry_i_12_n_1\,
      I1 => \t_aluout_out[15]_i_18_n_1\,
      I2 => \t_aluout_out[15]_i_17_n_1\,
      I3 => alu_op(2),
      I4 => alu_op(1),
      I5 => alu_op(0),
      O => \t_aluout_out[3]_i_7_n_1\
    );
\t_aluout_out[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C8000800FB003B00"
    )
        port map (
      I0 => \i__carry__1_i_9_n_1\,
      I1 => \t_aluout_out[15]_i_17_n_1\,
      I2 => \i__carry_i_15_n_1\,
      I3 => \i__carry_i_16_n_1\,
      I4 => \i__carry_i_12_n_1\,
      I5 => \i__carry__2_i_11_n_1\,
      O => \t_aluout_out[3]_i_8_n_1\
    );
\t_aluout_out[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000008B000F"
    )
        port map (
      I0 => \i__carry__1_i_11_n_1\,
      I1 => \t_aluout_out[15]_i_17_n_1\,
      I2 => \i__carry__2_i_11_n_1\,
      I3 => \i__carry_i_17_n_1\,
      I4 => \i__carry_i_15_n_1\,
      I5 => \i__carry_i_16_n_1\,
      O => \t_aluout_out[3]_i_9_n_1\
    );
\t_aluout_out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444044440440044"
    )
        port map (
      I0 => \t_aluout_out[4]_i_5_n_1\,
      I1 => \t_aluout_out[4]_i_6_n_1\,
      I2 => \i__carry_i_17_n_1\,
      I3 => \i__carry_i_16_n_1\,
      I4 => \t_aluout_out[4]_i_7_n_1\,
      I5 => \t_aluout_out[6]_i_8_n_1\,
      O => \t_aluout_out[4]_i_2_n_1\
    );
\t_aluout_out[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \i__carry_i_15_n_1\,
      I1 => \i__carry_i_16_n_1\,
      I2 => \t_aluout_out[14]_i_4_n_1\,
      I3 => \t_aluout_out[15]_i_9_n_1\,
      O => \t_aluout_out[4]_i_4_n_1\
    );
\t_aluout_out[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008B000F0F"
    )
        port map (
      I0 => \i__carry__1_i_12_n_1\,
      I1 => \t_aluout_out[15]_i_17_n_1\,
      I2 => \i__carry__2_i_11_n_1\,
      I3 => \i__carry_i_17_n_1\,
      I4 => \i__carry_i_15_n_1\,
      I5 => \i__carry_i_16_n_1\,
      O => \t_aluout_out[4]_i_5_n_1\
    );
\t_aluout_out[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2EFF"
    )
        port map (
      I0 => \i__carry__2_i_11_n_1\,
      I1 => \t_aluout_out[15]_i_17_n_1\,
      I2 => \i__carry__1_i_10_n_1\,
      I3 => \t_aluout_out[14]_i_12_n_1\,
      O => \t_aluout_out[4]_i_6_n_1\
    );
\t_aluout_out[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"737F404C"
    )
        port map (
      I0 => \i__carry__0_i_12_n_1\,
      I1 => \t_aluout_out[15]_i_17_n_1\,
      I2 => \i__carry_i_15_n_1\,
      I3 => \i__carry__2_i_10_n_1\,
      I4 => \i__carry__2_i_11_n_1\,
      O => \t_aluout_out[4]_i_7_n_1\
    );
\t_aluout_out[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444404404440044"
    )
        port map (
      I0 => \t_aluout_out[5]_i_5_n_1\,
      I1 => \t_aluout_out[5]_i_6_n_1\,
      I2 => \i__carry_i_17_n_1\,
      I3 => \i__carry_i_16_n_1\,
      I4 => \t_aluout_out[7]_i_6_n_1\,
      I5 => \t_aluout_out[5]_i_7_n_1\,
      O => \t_aluout_out[5]_i_2_n_1\
    );
\t_aluout_out[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \t_aluout_out[14]_i_6_n_1\,
      I1 => \t_aluout_out[6]_i_7_n_1\,
      O => \t_aluout_out[5]_i_3_n_1\
    );
\t_aluout_out[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000080000000B0FF"
    )
        port map (
      I0 => \i__carry__1_i_11_n_1\,
      I1 => \t_aluout_out[15]_i_17_n_1\,
      I2 => \i__carry_i_17_n_1\,
      I3 => \i__carry_i_15_n_1\,
      I4 => \i__carry_i_16_n_1\,
      I5 => \i__carry__2_i_11_n_1\,
      O => \t_aluout_out[5]_i_5_n_1\
    );
\t_aluout_out[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2EFF"
    )
        port map (
      I0 => \i__carry__2_i_11_n_1\,
      I1 => \t_aluout_out[15]_i_17_n_1\,
      I2 => \i__carry__1_i_9_n_1\,
      I3 => \t_aluout_out[14]_i_12_n_1\,
      O => \t_aluout_out[5]_i_6_n_1\
    );
\t_aluout_out[5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"737F404C"
    )
        port map (
      I0 => \i__carry__0_i_11_n_1\,
      I1 => \t_aluout_out[15]_i_17_n_1\,
      I2 => \i__carry_i_15_n_1\,
      I3 => \i__carry__2_i_9_n_1\,
      I4 => \i__carry__2_i_11_n_1\,
      O => \t_aluout_out[5]_i_7_n_1\
    );
\t_aluout_out[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"337FF37F3F7FFF7F"
    )
        port map (
      I0 => \i__carry_i_13_n_1\,
      I1 => \i__carry_i_15_n_1\,
      I2 => \i__carry_i_16_n_1\,
      I3 => \i__carry_i_17_n_1\,
      I4 => \i__carry__0_i_12_n_1\,
      I5 => s_alu_rx(0),
      O => \t_aluout_out[5]_i_8_n_1\
    );
\t_aluout_out[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \t_aluout_out[14]_i_4_n_1\,
      I1 => \t_aluout_out[6]_i_7_n_1\,
      O => \t_aluout_out[6]_i_3_n_1\
    );
\t_aluout_out[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2230000022302230"
    )
        port map (
      I0 => \t_aluout_out[6]_i_8_n_1\,
      I1 => \t_aluout_out[6]_i_9_n_1\,
      I2 => \t_aluout_out[8]_i_6_n_1\,
      I3 => \t_aluout_out[7]_i_8_n_1\,
      I4 => \t_aluout_out[12]_i_8_n_1\,
      I5 => \t_aluout_out[14]_i_12_n_1\,
      O => \t_aluout_out[6]_i_4_n_1\
    );
\t_aluout_out[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => alu_op(0),
      I1 => alu_op(2),
      I2 => alu_op(1),
      I3 => \t_aluout_out[15]_i_18_n_1\,
      I4 => \t_aluout_out[15]_i_17_n_1\,
      O => \t_aluout_out[6]_i_6_n_1\
    );
\t_aluout_out[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"733F73FF7F3F7FFF"
    )
        port map (
      I0 => \i__carry__0_i_11_n_1\,
      I1 => \i__carry_i_15_n_1\,
      I2 => \i__carry_i_16_n_1\,
      I3 => \i__carry_i_17_n_1\,
      I4 => \i__carry_i_12_n_1\,
      I5 => \i__carry_i_14_n_1\,
      O => \t_aluout_out[6]_i_7_n_1\
    );
\t_aluout_out[6]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"737F404C"
    )
        port map (
      I0 => \i__carry__0_i_10_n_1\,
      I1 => \t_aluout_out[15]_i_17_n_1\,
      I2 => \i__carry_i_15_n_1\,
      I3 => \i__carry__2_i_8_n_1\,
      I4 => \i__carry__2_i_11_n_1\,
      O => \t_aluout_out[6]_i_8_n_1\
    );
\t_aluout_out[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800F8FF880088CC"
    )
        port map (
      I0 => \i__carry__1_i_12_n_1\,
      I1 => \t_aluout_out[10]_i_6_n_1\,
      I2 => \i__carry__1_i_10_n_1\,
      I3 => \t_aluout_out[15]_i_17_n_1\,
      I4 => \i__carry__2_i_11_n_1\,
      I5 => \t_aluout_out[14]_i_13_n_1\,
      O => \t_aluout_out[6]_i_9_n_1\
    );
\t_aluout_out[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_from_forwardy_reg_n_1,
      I1 => \s_forward_datax_reg_n_1_[2]\,
      O => \t_aluout_out[7]_i_10_n_1\
    );
\t_aluout_out[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2022202230330000"
    )
        port map (
      I0 => \t_aluout_out[7]_i_6_n_1\,
      I1 => \t_aluout_out[7]_i_7_n_1\,
      I2 => \t_aluout_out[11]_i_5_n_1\,
      I3 => \t_aluout_out[14]_i_13_n_1\,
      I4 => \t_aluout_out[8]_i_6_n_1\,
      I5 => \t_aluout_out[7]_i_8_n_1\,
      O => \t_aluout_out[7]_i_3_n_1\
    );
\t_aluout_out[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000777"
    )
        port map (
      I0 => \t_aluout_out[14]_i_13_n_1\,
      I1 => \i__carry_i_13_n_1\,
      I2 => \i__carry__0_i_12_n_1\,
      I3 => \t_aluout_out[10]_i_6_n_1\,
      I4 => \t_aluout_out[7]_i_9_n_1\,
      O => \t_aluout_out[7]_i_5_n_1\
    );
\t_aluout_out[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F40"
    )
        port map (
      I0 => \i__carry__0_i_9_n_1\,
      I1 => \t_aluout_out[15]_i_17_n_1\,
      I2 => \i__carry_i_15_n_1\,
      I3 => \i__carry__2_i_11_n_1\,
      O => \t_aluout_out[7]_i_6_n_1\
    );
\t_aluout_out[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800F8FF880088CC"
    )
        port map (
      I0 => \i__carry__1_i_11_n_1\,
      I1 => \t_aluout_out[10]_i_6_n_1\,
      I2 => \i__carry__2_i_9_n_1\,
      I3 => \t_aluout_out[15]_i_17_n_1\,
      I4 => \i__carry__2_i_11_n_1\,
      I5 => \t_aluout_out[14]_i_12_n_1\,
      O => \t_aluout_out[7]_i_7_n_1\
    );
\t_aluout_out[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004500000000"
    )
        port map (
      I0 => \i__carry_i_24_n_1\,
      I1 => \i__carry__1_i_23_n_1\,
      I2 => s_rx(2),
      I3 => \t_aluout_out[7]_i_10_n_1\,
      I4 => \i__carry_i_25_n_1\,
      I5 => \t_aluout_out[14]_i_18_n_1\,
      O => \t_aluout_out[7]_i_8_n_1\
    );
\t_aluout_out[7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80308000"
    )
        port map (
      I0 => \i__carry__0_i_10_n_1\,
      I1 => \i__carry_i_17_n_1\,
      I2 => \i__carry_i_15_n_1\,
      I3 => \i__carry_i_16_n_1\,
      I4 => s_alu_rx(0),
      O => \t_aluout_out[7]_i_9_n_1\
    );
\t_aluout_out[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00D000D0000000D0"
    )
        port map (
      I0 => \t_aluout_out[10]_i_6_n_1\,
      I1 => \t_aluout_out[8]_i_5_n_1\,
      I2 => \t_aluout_out[8]_i_6_n_1\,
      I3 => \t_aluout_out[8]_i_7_n_1\,
      I4 => \t_aluout_out[14]_i_13_n_1\,
      I5 => \t_aluout_out[12]_i_8_n_1\,
      O => \t_aluout_out[8]_i_2_n_1\
    );
\t_aluout_out[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \t_aluout_out[14]_i_6_n_1\,
      I1 => \t_aluout_out[9]_i_7_n_1\,
      O => \t_aluout_out[8]_i_3_n_1\
    );
\t_aluout_out[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \i__carry__1_i_10_n_1\,
      I1 => \t_aluout_out[15]_i_17_n_1\,
      I2 => \i__carry__2_i_11_n_1\,
      O => \t_aluout_out[8]_i_5_n_1\
    );
\t_aluout_out[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \i__carry_i_15_n_1\,
      I1 => \i__carry__2_i_11_n_1\,
      O => \t_aluout_out[8]_i_6_n_1\
    );
\t_aluout_out[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800F8FF880088CC"
    )
        port map (
      I0 => \i__carry__1_i_12_n_1\,
      I1 => \t_aluout_out[14]_i_14_n_1\,
      I2 => \i__carry__2_i_8_n_1\,
      I3 => \t_aluout_out[15]_i_17_n_1\,
      I4 => \i__carry__2_i_11_n_1\,
      I5 => \t_aluout_out[14]_i_12_n_1\,
      O => \t_aluout_out[8]_i_7_n_1\
    );
\t_aluout_out[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B3BFB3B3BFBFBFB"
    )
        port map (
      I0 => \t_aluout_out[15]_i_9_n_1\,
      I1 => \i__carry_i_15_n_1\,
      I2 => \i__carry_i_16_n_1\,
      I3 => \i__carry_i_17_n_1\,
      I4 => \i__carry__0_i_9_n_1\,
      I5 => \i__carry__0_i_11_n_1\,
      O => \t_aluout_out[8]_i_8_n_1\
    );
\t_aluout_out[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2A200A2"
    )
        port map (
      I0 => \t_aluout_out[9]_i_5_n_1\,
      I1 => \t_aluout_out[10]_i_6_n_1\,
      I2 => \t_aluout_out[11]_i_5_n_1\,
      I3 => \t_aluout_out[14]_i_13_n_1\,
      I4 => \t_aluout_out[14]_i_15_n_1\,
      O => \t_aluout_out[9]_i_2_n_1\
    );
\t_aluout_out[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \t_aluout_out[14]_i_4_n_1\,
      I1 => \t_aluout_out[9]_i_7_n_1\,
      O => \t_aluout_out[9]_i_4_n_1\
    );
\t_aluout_out[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"74FFFFF0F0F0F0F0"
    )
        port map (
      I0 => \i__carry__1_i_11_n_1\,
      I1 => \t_aluout_out[15]_i_17_n_1\,
      I2 => \i__carry__2_i_11_n_1\,
      I3 => \i__carry_i_17_n_1\,
      I4 => \i__carry_i_16_n_1\,
      I5 => \i__carry_i_15_n_1\,
      O => \t_aluout_out[9]_i_5_n_1\
    );
\t_aluout_out[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000DDD0DDD0DDD"
    )
        port map (
      I0 => \i__carry_i_17_n_1\,
      I1 => \t_aluout_out[11]_i_8_n_1\,
      I2 => \t_aluout_out[14]_i_12_n_1\,
      I3 => \i__carry_i_13_n_1\,
      I4 => \t_aluout_out[10]_i_6_n_1\,
      I5 => \i__carry__0_i_10_n_1\,
      O => \t_aluout_out[9]_i_7_n_1\
    );
\t_memdata_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ry_reg_n_1_[0]\,
      I1 => \^s_exe_memorywrite\,
      I2 => s_rx(0),
      O => out_sw_in(0)
    );
\t_memdata_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ry_reg_n_1_[10]\,
      I1 => \^s_exe_memorywrite\,
      I2 => s_rx(10),
      O => out_sw_in(10)
    );
\t_memdata_out[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ry_reg_n_1_[11]\,
      I1 => \^s_exe_memorywrite\,
      I2 => s_rx(11),
      O => out_sw_in(11)
    );
\t_memdata_out[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ry_reg_n_1_[12]\,
      I1 => \^s_exe_memorywrite\,
      I2 => s_rx(12),
      O => out_sw_in(12)
    );
\t_memdata_out[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ry_reg_n_1_[13]\,
      I1 => \^s_exe_memorywrite\,
      I2 => s_rx(13),
      O => out_sw_in(13)
    );
\t_memdata_out[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ry_reg_n_1_[14]\,
      I1 => \^s_exe_memorywrite\,
      I2 => s_rx(14),
      O => out_sw_in(14)
    );
\t_memdata_out[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ry_reg_n_1_[15]\,
      I1 => \^s_exe_memorywrite\,
      I2 => s_rx(15),
      O => out_sw_in(15)
    );
\t_memdata_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ry_reg_n_1_[1]\,
      I1 => \^s_exe_memorywrite\,
      I2 => s_rx(1),
      O => out_sw_in(1)
    );
\t_memdata_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ry_reg_n_1_[2]\,
      I1 => \^s_exe_memorywrite\,
      I2 => s_rx(2),
      O => out_sw_in(2)
    );
\t_memdata_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ry_reg_n_1_[3]\,
      I1 => \^s_exe_memorywrite\,
      I2 => s_rx(3),
      O => out_sw_in(3)
    );
\t_memdata_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ry_reg_n_1_[4]\,
      I1 => \^s_exe_memorywrite\,
      I2 => s_rx(4),
      O => out_sw_in(4)
    );
\t_memdata_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ry_reg_n_1_[5]\,
      I1 => \^s_exe_memorywrite\,
      I2 => s_rx(5),
      O => out_sw_in(5)
    );
\t_memdata_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ry_reg_n_1_[6]\,
      I1 => \^s_exe_memorywrite\,
      I2 => s_rx(6),
      O => out_sw_in(6)
    );
\t_memdata_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ry_reg_n_1_[7]\,
      I1 => \^s_exe_memorywrite\,
      I2 => s_rx(7),
      O => out_sw_in(7)
    );
\t_memdata_out[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ry_reg_n_1_[8]\,
      I1 => \^s_exe_memorywrite\,
      I2 => s_rx(8),
      O => out_sw_in(8)
    );
\t_memdata_out[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_ry_reg_n_1_[9]\,
      I1 => \^s_exe_memorywrite\,
      I2 => s_rx(9),
      O => out_sw_in(9)
    );
\wb_memory_or_alu_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => '1',
      CLR => rst_IBUF,
      D => s_id_wb_memory_or_alu_out(0),
      Q => memtoreg_in(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity id is
  port (
    s_id_pc : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_forward_datay_reg[15]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_alu_mux_rx_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \s_alu_op_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_branch_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_select_goal_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_id_memoryRead : out STD_LOGIC;
    \s_immediate_reg[0]\ : out STD_LOGIC;
    s_id_registerWrite : out STD_LOGIC;
    s_id_wb_memory_or_alu_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_alu_mux_ry_reg[1]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_id_memoryWrite : out STD_LOGIC;
    \s_immediate_reg[13]\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \s_ry_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \s_rx_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    n_0_589_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    memoryRead_reg : in STD_LOGIC;
    \s_instruction_reg[14]_0\ : in STD_LOGIC;
    \s_instruction_reg[1]_0\ : in STD_LOGIC;
    regwrite_out : in STD_LOGIC;
    t_wbregwrite_out_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \t_wbregdata_out_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rst_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end id;

architecture STRUCTURE of id is
  signal \^q\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \forward_data_reg[15]_i_10_n_1\ : STD_LOGIC;
  signal \forward_data_reg[15]_i_11_n_1\ : STD_LOGIC;
  signal \forward_data_reg[15]_i_12_n_1\ : STD_LOGIC;
  signal \forward_data_reg[15]_i_13_n_1\ : STD_LOGIC;
  signal \forward_data_reg[15]_i_14_n_1\ : STD_LOGIC;
  signal \forward_data_reg[15]_i_15_n_1\ : STD_LOGIC;
  signal \forward_data_reg[15]_i_16_n_1\ : STD_LOGIC;
  signal \forward_data_reg[15]_i_17_n_1\ : STD_LOGIC;
  signal \forward_data_reg[15]_i_18_n_1\ : STD_LOGIC;
  signal \forward_data_reg[15]_i_19_n_1\ : STD_LOGIC;
  signal \forward_data_reg[15]_i_20_n_1\ : STD_LOGIC;
  signal \forward_data_reg[15]_i_21_n_1\ : STD_LOGIC;
  signal \forward_data_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \forward_data_reg[15]_i_3_n_1\ : STD_LOGIC;
  signal \forward_data_reg[15]_i_4_n_1\ : STD_LOGIC;
  signal \forward_data_reg[15]_i_5_n_1\ : STD_LOGIC;
  signal \forward_data_reg[15]_i_6_n_1\ : STD_LOGIC;
  signal \forward_data_reg[15]_i_7_n_1\ : STD_LOGIC;
  signal \forward_data_reg[15]_i_8_n_1\ : STD_LOGIC;
  signal \forward_data_reg[15]_i_9_n_1\ : STD_LOGIC;
  signal registerWrite_i_2_n_1 : STD_LOGIC;
  signal registerWrite_i_3_n_1 : STD_LOGIC;
  signal registerWrite_i_4_n_1 : STD_LOGIC;
  signal \s_alu_mux_rx[0]_i_2_n_1\ : STD_LOGIC;
  signal \s_alu_mux_rx[0]_i_3_n_1\ : STD_LOGIC;
  signal \s_alu_mux_rx[0]_i_4_n_1\ : STD_LOGIC;
  signal \s_alu_mux_rx[0]_i_5_n_1\ : STD_LOGIC;
  signal \s_alu_mux_rx[1]_i_2_n_1\ : STD_LOGIC;
  signal \s_alu_mux_rx[1]_i_3_n_1\ : STD_LOGIC;
  signal \s_alu_mux_rx[1]_i_4_n_1\ : STD_LOGIC;
  signal \s_alu_mux_rx[1]_i_5_n_1\ : STD_LOGIC;
  signal \s_alu_mux_rx[2]_i_2_n_1\ : STD_LOGIC;
  signal \s_alu_mux_rx[2]_i_3_n_1\ : STD_LOGIC;
  signal \s_alu_mux_rx[2]_i_4_n_1\ : STD_LOGIC;
  signal \s_alu_mux_rx[2]_i_5_n_1\ : STD_LOGIC;
  signal \s_alu_mux_rx[2]_i_6_n_1\ : STD_LOGIC;
  signal \^s_alu_mux_rx_reg[2]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \s_alu_mux_ry[0]_i_2_n_1\ : STD_LOGIC;
  signal \s_alu_mux_ry[0]_i_3_n_1\ : STD_LOGIC;
  signal \s_alu_mux_ry[0]_i_4_n_1\ : STD_LOGIC;
  signal \s_alu_mux_ry[0]_i_5_n_1\ : STD_LOGIC;
  signal \s_alu_mux_ry[0]_i_6_n_1\ : STD_LOGIC;
  signal \s_alu_mux_ry[1]_i_2_n_1\ : STD_LOGIC;
  signal \s_alu_mux_ry[1]_i_4_n_1\ : STD_LOGIC;
  signal \s_alu_op[0]_i_2_n_1\ : STD_LOGIC;
  signal \s_alu_op[0]_i_3_n_1\ : STD_LOGIC;
  signal \s_alu_op[0]_i_4_n_1\ : STD_LOGIC;
  signal \s_alu_op[0]_i_5_n_1\ : STD_LOGIC;
  signal \s_alu_op[0]_i_6_n_1\ : STD_LOGIC;
  signal \s_alu_op[1]_i_2_n_1\ : STD_LOGIC;
  signal \s_alu_op[1]_i_3_n_1\ : STD_LOGIC;
  signal \s_alu_op[1]_i_4_n_1\ : STD_LOGIC;
  signal \s_alu_op[1]_i_5_n_1\ : STD_LOGIC;
  signal \s_alu_op[2]_i_2_n_1\ : STD_LOGIC;
  signal \s_alu_op[2]_i_3_n_1\ : STD_LOGIC;
  signal \s_alu_op[2]_i_4_n_1\ : STD_LOGIC;
  signal \s_alu_op[2]_i_5_n_1\ : STD_LOGIC;
  signal \s_alu_op[2]_i_7_n_1\ : STD_LOGIC;
  signal \s_alu_op[2]_i_8_n_1\ : STD_LOGIC;
  signal \s_branch[0]_i_2_n_1\ : STD_LOGIC;
  signal \s_branch[1]_i_2_n_1\ : STD_LOGIC;
  signal \s_branch[2]_i_2_n_1\ : STD_LOGIC;
  signal \s_branch[2]_i_3_n_1\ : STD_LOGIC;
  signal \s_branch[2]_i_4_n_1\ : STD_LOGIC;
  signal \s_branch[2]_i_5_n_1\ : STD_LOGIC;
  signal \s_branch[2]_i_6_n_1\ : STD_LOGIC;
  signal \^s_id_memoryread\ : STD_LOGIC;
  signal \^s_id_wb_memory_or_alu_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \s_immediate[13]_i_2_n_1\ : STD_LOGIC;
  signal \s_immediate[13]_i_3_n_1\ : STD_LOGIC;
  signal \s_immediate[13]_i_4_n_1\ : STD_LOGIC;
  signal \s_immediate[3]_i_3_n_1\ : STD_LOGIC;
  signal \s_immediate[7]_i_2_n_1\ : STD_LOGIC;
  signal \s_immediate[7]_i_3_n_1\ : STD_LOGIC;
  signal \s_immediate[7]_i_4_n_1\ : STD_LOGIC;
  signal \^s_immediate_reg[0]\ : STD_LOGIC;
  signal \s_instruction_reg_n_1_[0]\ : STD_LOGIC;
  signal \s_instruction_reg_n_1_[11]\ : STD_LOGIC;
  signal \s_instruction_reg_n_1_[12]\ : STD_LOGIC;
  signal \s_instruction_reg_n_1_[15]\ : STD_LOGIC;
  signal \s_instruction_reg_n_1_[1]\ : STD_LOGIC;
  signal \s_select_goal[0]_i_2_n_1\ : STD_LOGIC;
  signal \s_select_goal[0]_i_3_n_1\ : STD_LOGIC;
  signal \s_select_goal[0]_i_4_n_1\ : STD_LOGIC;
  signal \s_select_goal[1]_i_2_n_1\ : STD_LOGIC;
  signal \s_select_goal[1]_i_3_n_1\ : STD_LOGIC;
  signal \s_select_goal[2]_i_2_n_1\ : STD_LOGIC;
  signal \s_select_goal[2]_i_3_n_1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_immediate[0]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \s_immediate[13]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \s_immediate[2]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \s_immediate[3]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \s_immediate[4]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \s_immediate[8]_i_1\ : label is "soft_lutpair84";
begin
  Q(10 downto 0) <= \^q\(10 downto 0);
  \s_alu_mux_rx_reg[2]\(2 downto 0) <= \^s_alu_mux_rx_reg[2]\(2 downto 0);
  s_id_memoryRead <= \^s_id_memoryread\;
  s_id_wb_memory_or_alu_out(0) <= \^s_id_wb_memory_or_alu_out\(0);
  \s_immediate_reg[0]\ <= \^s_immediate_reg[0]\;
\forward_data_reg[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55545554545454"
    )
        port map (
      I0 => \forward_data_reg[15]_i_2_n_1\,
      I1 => \forward_data_reg[15]_i_3_n_1\,
      I2 => \forward_data_reg[15]_i_4_n_1\,
      I3 => \^s_alu_mux_rx_reg[2]\(0),
      I4 => \forward_data_reg[15]_i_5_n_1\,
      I5 => \forward_data_reg[15]_i_6_n_1\,
      O => \s_forward_datay_reg[15]\(0)
    );
\forward_data_reg[15]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000550040004000"
    )
        port map (
      I0 => \s_alu_mux_ry[0]_i_5_n_1\,
      I1 => \^q\(1),
      I2 => \s_instruction_reg_n_1_[1]\,
      I3 => \s_branch[2]_i_2_n_1\,
      I4 => \s_alu_mux_rx[1]_i_4_n_1\,
      I5 => \^q\(5),
      O => \forward_data_reg[15]_i_10_n_1\
    );
\forward_data_reg[15]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \s_alu_mux_rx[1]_i_4_n_1\,
      I1 => \s_instruction_reg_n_1_[11]\,
      I2 => \s_instruction_reg_n_1_[0]\,
      I3 => \s_instruction_reg_n_1_[12]\,
      I4 => \s_instruction_reg[14]_0\,
      I5 => \^q\(2),
      O => \forward_data_reg[15]_i_11_n_1\
    );
\forward_data_reg[15]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4444F4444444"
    )
        port map (
      I0 => \s_instruction_reg[14]_0\,
      I1 => \forward_data_reg[15]_i_17_n_1\,
      I2 => \s_instruction_reg_n_1_[15]\,
      I3 => \forward_data_reg[15]_i_18_n_1\,
      I4 => memoryRead_reg,
      I5 => \forward_data_reg[15]_i_19_n_1\,
      O => \forward_data_reg[15]_i_12_n_1\
    );
\forward_data_reg[15]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000300430"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[0]\,
      I1 => \s_instruction_reg_n_1_[15]\,
      I2 => \s_instruction_reg_n_1_[11]\,
      I3 => \s_instruction_reg_n_1_[12]\,
      I4 => \forward_data_reg[15]_i_20_n_1\,
      I5 => \s_instruction_reg[14]_0\,
      O => \forward_data_reg[15]_i_13_n_1\
    );
\forward_data_reg[15]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \forward_data_reg[15]_i_21_n_1\,
      I1 => \s_instruction_reg_n_1_[11]\,
      I2 => \s_instruction_reg_n_1_[0]\,
      I3 => \s_instruction_reg_n_1_[12]\,
      I4 => \s_instruction_reg[14]_0\,
      I5 => \^q\(2),
      O => \forward_data_reg[15]_i_14_n_1\
    );
\forward_data_reg[15]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(5),
      I3 => \^q\(4),
      O => \forward_data_reg[15]_i_15_n_1\
    );
\forward_data_reg[15]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(10),
      I1 => \s_instruction_reg_n_1_[12]\,
      O => \forward_data_reg[15]_i_16_n_1\
    );
\forward_data_reg[15]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[15]\,
      I1 => \s_instruction_reg_n_1_[12]\,
      I2 => \^q\(7),
      I3 => \^q\(8),
      I4 => \^q\(6),
      O => \forward_data_reg[15]_i_17_n_1\
    );
\forward_data_reg[15]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[11]\,
      I1 => \s_instruction_reg_n_1_[12]\,
      I2 => \^q\(9),
      O => \forward_data_reg[15]_i_18_n_1\
    );
\forward_data_reg[15]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[12]\,
      I1 => \^q\(10),
      I2 => \^q\(9),
      I3 => \s_instruction_reg_n_1_[15]\,
      I4 => \s_instruction_reg_n_1_[11]\,
      O => \forward_data_reg[15]_i_19_n_1\
    );
\forward_data_reg[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \^q\(8),
      I3 => regwrite_out,
      O => \forward_data_reg[15]_i_2_n_1\
    );
\forward_data_reg[15]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => \s_alu_mux_rx[2]_i_6_n_1\,
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \s_instruction_reg_n_1_[1]\,
      I4 => \^q\(1),
      O => \forward_data_reg[15]_i_20_n_1\
    );
\forward_data_reg[15]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[1]\,
      I1 => \^q\(1),
      O => \forward_data_reg[15]_i_21_n_1\
    );
\forward_data_reg[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000082"
    )
        port map (
      I0 => memoryRead_reg,
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \forward_data_reg[15]_i_7_n_1\,
      I4 => \forward_data_reg[15]_i_8_n_1\,
      O => \forward_data_reg[15]_i_3_n_1\
    );
\forward_data_reg[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002022"
    )
        port map (
      I0 => \s_alu_mux_ry[1]_i_2_n_1\,
      I1 => \s_alu_mux_ry[0]_i_6_n_1\,
      I2 => \forward_data_reg[15]_i_9_n_1\,
      I3 => \s_alu_mux_ry[0]_i_4_n_1\,
      I4 => \forward_data_reg[15]_i_10_n_1\,
      I5 => \s_alu_mux_ry[0]_i_2_n_1\,
      O => \forward_data_reg[15]_i_4_n_1\
    );
\forward_data_reg[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(5),
      I3 => regwrite_out,
      O => \forward_data_reg[15]_i_5_n_1\
    );
\forward_data_reg[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000E000E0000000E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \forward_data_reg[15]_i_11_n_1\,
      I2 => \forward_data_reg[15]_i_12_n_1\,
      I3 => \forward_data_reg[15]_i_13_n_1\,
      I4 => \forward_data_reg[15]_i_14_n_1\,
      I5 => \forward_data_reg[15]_i_15_n_1\,
      O => \forward_data_reg[15]_i_6_n_1\
    );
\forward_data_reg[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[0]\,
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(9),
      I4 => \s_instruction_reg_n_1_[11]\,
      I5 => \forward_data_reg[15]_i_16_n_1\,
      O => \forward_data_reg[15]_i_7_n_1\
    );
\forward_data_reg[15]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \^q\(2),
      I1 => \s_instruction_reg_n_1_[15]\,
      I2 => \s_instruction_reg_n_1_[1]\,
      I3 => \^q\(1),
      O => \forward_data_reg[15]_i_8_n_1\
    );
\forward_data_reg[15]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[11]\,
      I1 => \s_instruction_reg_n_1_[12]\,
      I2 => \^q\(9),
      I3 => \s_instruction_reg_n_1_[15]\,
      O => \forward_data_reg[15]_i_9_n_1\
    );
heap_instance: entity work.heap
     port map (
      Q(5 downto 0) => \^q\(8 downto 3),
      n_0_589_BUFG => n_0_589_BUFG,
      rst_IBUF => rst_IBUF,
      \s_rx_reg[15]\(15 downto 0) => \s_rx_reg[15]\(15 downto 0),
      \s_ry_reg[15]\(15 downto 0) => \s_ry_reg[15]\(15 downto 0),
      \t_wbregdata_out_reg[15]\(15 downto 0) => \t_wbregdata_out_reg[15]\(15 downto 0),
      t_wbregwrite_out_reg(0) => t_wbregwrite_out_reg(0)
    );
memoryRead_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => memoryRead_reg,
      I1 => \s_instruction_reg_n_1_[12]\,
      I2 => \s_instruction_reg_n_1_[15]\,
      I3 => \^q\(10),
      I4 => \^q\(9),
      O => \^s_id_memoryread\
    );
memoryWrite_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[15]\,
      I1 => \s_instruction_reg_n_1_[11]\,
      I2 => \s_instruction_reg_n_1_[12]\,
      I3 => \^q\(9),
      I4 => memoryRead_reg,
      I5 => \^q\(10),
      O => s_id_memoryWrite
    );
registerWrite_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFD0FFFFFF"
    )
        port map (
      I0 => \s_alu_mux_ry[0]_i_2_n_1\,
      I1 => \s_alu_mux_ry[0]_i_4_n_1\,
      I2 => registerWrite_i_2_n_1,
      I3 => registerWrite_i_3_n_1,
      I4 => \s_alu_mux_rx[2]_i_3_n_1\,
      I5 => \s_alu_mux_ry[0]_i_6_n_1\,
      O => s_id_registerWrite
    );
registerWrite_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A800A800A820A80"
    )
        port map (
      I0 => registerWrite_i_4_n_1,
      I1 => \^q\(1),
      I2 => \s_instruction_reg_n_1_[1]\,
      I3 => \^q\(0),
      I4 => \^q\(4),
      I5 => \^q\(3),
      O => registerWrite_i_2_n_1
    );
registerWrite_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000FFBFFF"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[15]\,
      I1 => \^q\(10),
      I2 => registerWrite_i_4_n_1,
      I3 => memoryRead_reg,
      I4 => \^s_immediate_reg[0]\,
      I5 => \^s_id_memoryread\,
      O => registerWrite_i_3_n_1
    );
registerWrite_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCDDCCDF"
    )
        port map (
      I0 => \^q\(9),
      I1 => \s_instruction_reg_n_1_[11]\,
      I2 => \s_select_goal[1]_i_3_n_1\,
      I3 => \s_instruction_reg_n_1_[12]\,
      I4 => \s_instruction_reg_n_1_[15]\,
      O => registerWrite_i_4_n_1
    );
\s_alu_mux_rx[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF0F0F4FF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \s_alu_mux_rx[0]_i_2_n_1\,
      I2 => \s_alu_mux_rx[0]_i_3_n_1\,
      I3 => \s_alu_mux_rx[1]_i_4_n_1\,
      I4 => \s_alu_mux_rx[0]_i_4_n_1\,
      I5 => \s_alu_mux_rx[0]_i_5_n_1\,
      O => \^s_alu_mux_rx_reg[2]\(0)
    );
\s_alu_mux_rx[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \s_instruction_reg_n_1_[1]\,
      O => \s_alu_mux_rx[0]_i_2_n_1\
    );
\s_alu_mux_rx[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA00AA00AA00AA00"
    )
        port map (
      I0 => \^s_immediate_reg[0]\,
      I1 => \s_instruction_reg_n_1_[15]\,
      I2 => \s_instruction_reg_n_1_[11]\,
      I3 => memoryRead_reg,
      I4 => \^q\(10),
      I5 => \^q\(9),
      O => \s_alu_mux_rx[0]_i_3_n_1\
    );
\s_alu_mux_rx[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \s_instruction_reg[14]_0\,
      I2 => \s_instruction_reg_n_1_[12]\,
      I3 => \s_instruction_reg_n_1_[0]\,
      I4 => \s_instruction_reg_n_1_[11]\,
      O => \s_alu_mux_rx[0]_i_4_n_1\
    );
\s_alu_mux_rx[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[0]\,
      I1 => \s_alu_mux_rx[2]_i_5_n_1\,
      I2 => memoryRead_reg,
      I3 => \^q\(10),
      I4 => \^q\(9),
      O => \s_alu_mux_rx[0]_i_5_n_1\
    );
\s_alu_mux_rx[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEFEE"
    )
        port map (
      I0 => \s_alu_mux_rx[1]_i_2_n_1\,
      I1 => \s_alu_mux_rx[1]_i_3_n_1\,
      I2 => \s_alu_mux_rx[1]_i_4_n_1\,
      I3 => \s_instruction_reg_n_1_[11]\,
      I4 => \s_alu_mux_ry[0]_i_2_n_1\,
      I5 => \^q\(0),
      O => \^s_alu_mux_rx_reg[2]\(1)
    );
\s_alu_mux_rx[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000C0000800000"
    )
        port map (
      I0 => \^q\(10),
      I1 => memoryRead_reg,
      I2 => \^q\(9),
      I3 => \s_instruction_reg_n_1_[12]\,
      I4 => \s_instruction_reg_n_1_[11]\,
      I5 => \s_instruction_reg_n_1_[15]\,
      O => \s_alu_mux_rx[1]_i_2_n_1\
    );
\s_alu_mux_rx[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \s_alu_mux_rx[1]_i_5_n_1\,
      I1 => \s_instruction_reg_n_1_[12]\,
      I2 => \s_instruction_reg_n_1_[15]\,
      I3 => \^q\(9),
      I4 => \^q\(10),
      I5 => memoryRead_reg,
      O => \s_alu_mux_rx[1]_i_3_n_1\
    );
\s_alu_mux_rx[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \s_instruction_reg_n_1_[1]\,
      I2 => \^q\(4),
      I3 => \^q\(3),
      O => \s_alu_mux_rx[1]_i_4_n_1\
    );
\s_alu_mux_rx[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(8),
      I2 => \^q\(7),
      O => \s_alu_mux_rx[1]_i_5_n_1\
    );
\s_alu_mux_rx[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF404040FF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(3),
      I2 => \s_alu_mux_rx[2]_i_2_n_1\,
      I3 => \s_instruction_reg_n_1_[0]\,
      I4 => \s_alu_mux_rx[2]_i_3_n_1\,
      I5 => \s_alu_mux_rx[2]_i_4_n_1\,
      O => \^s_alu_mux_rx_reg[2]\(2)
    );
\s_alu_mux_rx[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \s_alu_mux_ry[0]_i_2_n_1\,
      I3 => \s_instruction_reg_n_1_[11]\,
      I4 => \s_instruction_reg_n_1_[1]\,
      I5 => \^q\(1),
      O => \s_alu_mux_rx[2]_i_2_n_1\
    );
\s_alu_mux_rx[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(10),
      I2 => memoryRead_reg,
      I3 => \s_alu_mux_rx[2]_i_5_n_1\,
      O => \s_alu_mux_rx[2]_i_3_n_1\
    );
\s_alu_mux_rx[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => memoryRead_reg,
      I1 => \s_instruction_reg_n_1_[11]\,
      I2 => \s_instruction_reg_n_1_[15]\,
      I3 => \^q\(9),
      I4 => \^q\(10),
      I5 => \s_instruction_reg_n_1_[12]\,
      O => \s_alu_mux_rx[2]_i_4_n_1\
    );
\s_alu_mux_rx[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFFFFF"
    )
        port map (
      I0 => \forward_data_reg[15]_i_8_n_1\,
      I1 => \s_instruction_reg_n_1_[11]\,
      I2 => \s_instruction_reg_n_1_[12]\,
      I3 => \^q\(0),
      I4 => \s_alu_mux_rx[2]_i_6_n_1\,
      O => \s_alu_mux_rx[2]_i_5_n_1\
    );
\s_alu_mux_rx[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(3),
      O => \s_alu_mux_rx[2]_i_6_n_1\
    );
\s_alu_mux_ry[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000F111"
    )
        port map (
      I0 => \s_alu_mux_ry[0]_i_2_n_1\,
      I1 => \s_alu_mux_ry[0]_i_3_n_1\,
      I2 => \s_alu_mux_ry[0]_i_4_n_1\,
      I3 => \s_instruction_reg_n_1_[15]\,
      I4 => \s_alu_mux_ry[0]_i_5_n_1\,
      I5 => \s_alu_mux_ry[0]_i_6_n_1\,
      O => \s_alu_mux_ry_reg[1]\(0)
    );
\s_alu_mux_ry[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFFFFF"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[0]\,
      I1 => \s_instruction_reg_n_1_[12]\,
      I2 => \^q\(9),
      I3 => \^q\(10),
      I4 => memoryRead_reg,
      I5 => \^q\(2),
      O => \s_alu_mux_ry[0]_i_2_n_1\
    );
\s_alu_mux_ry[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFFFFFFF7FF"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \s_branch[2]_i_2_n_1\,
      I4 => \s_instruction_reg_n_1_[1]\,
      I5 => \^q\(1),
      O => \s_alu_mux_ry[0]_i_3_n_1\
    );
\s_alu_mux_ry[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \s_instruction_reg_n_1_[1]\,
      I3 => \s_instruction_reg_n_1_[12]\,
      I4 => \s_instruction_reg[14]_0\,
      I5 => \^q\(2),
      O => \s_alu_mux_ry[0]_i_4_n_1\
    );
\s_alu_mux_ry[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^q\(9),
      I1 => \s_instruction_reg_n_1_[12]\,
      I2 => \s_instruction_reg_n_1_[11]\,
      O => \s_alu_mux_ry[0]_i_5_n_1\
    );
\s_alu_mux_ry[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[11]\,
      I1 => \s_instruction_reg_n_1_[15]\,
      I2 => \s_instruction_reg_n_1_[0]\,
      I3 => \s_instruction_reg_n_1_[12]\,
      I4 => \s_instruction_reg[14]_0\,
      O => \s_alu_mux_ry[0]_i_6_n_1\
    );
\s_alu_mux_ry[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \s_alu_mux_ry[1]_i_2_n_1\,
      I1 => \^q\(2),
      I2 => \s_instruction_reg[14]_0\,
      I3 => \s_instruction_reg_n_1_[12]\,
      I4 => \s_instruction_reg_n_1_[0]\,
      O => \s_alu_mux_ry_reg[1]\(1)
    );
\s_alu_mux_ry[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FF08"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \s_alu_mux_ry[0]_i_5_n_1\,
      I5 => \s_alu_mux_ry[1]_i_4_n_1\,
      O => \s_alu_mux_ry[1]_i_2_n_1\
    );
\s_alu_mux_ry[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \s_instruction_reg_n_1_[1]\,
      I2 => \s_instruction_reg_n_1_[15]\,
      O => \s_alu_mux_ry[1]_i_4_n_1\
    );
\s_alu_op[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEAAA"
    )
        port map (
      I0 => \s_alu_op[0]_i_2_n_1\,
      I1 => \s_alu_mux_ry[0]_i_4_n_1\,
      I2 => \s_instruction_reg_n_1_[0]\,
      I3 => \s_instruction_reg_n_1_[11]\,
      I4 => \s_alu_op[0]_i_3_n_1\,
      O => \s_alu_op_reg[2]\(0)
    );
\s_alu_op[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040004004"
    )
        port map (
      I0 => \s_alu_mux_ry[0]_i_2_n_1\,
      I1 => \s_instruction_reg_n_1_[11]\,
      I2 => \s_instruction_reg_n_1_[1]\,
      I3 => \^q\(1),
      I4 => \^q\(5),
      I5 => \s_alu_op[0]_i_4_n_1\,
      O => \s_alu_op[0]_i_2_n_1\
    );
\s_alu_op[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \s_alu_mux_ry[0]_i_6_n_1\,
      I1 => \s_instruction_reg_n_1_[1]\,
      I2 => \s_alu_op[0]_i_5_n_1\,
      I3 => \s_alu_op[1]_i_3_n_1\,
      O => \s_alu_op[0]_i_3_n_1\
    );
\s_alu_op[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAAAAA"
    )
        port map (
      I0 => \^q\(0),
      I1 => \s_instruction_reg_n_1_[0]\,
      I2 => \s_instruction_reg_n_1_[1]\,
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \s_alu_op[0]_i_4_n_1\
    );
\s_alu_op[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF00000000"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[15]\,
      I1 => \^q\(10),
      I2 => \s_instruction_reg_n_1_[12]\,
      I3 => \s_instruction_reg_n_1_[11]\,
      I4 => \s_alu_op[0]_i_6_n_1\,
      I5 => memoryRead_reg,
      O => \s_alu_op[0]_i_5_n_1\
    );
\s_alu_op[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[1]\,
      I1 => \s_instruction_reg_n_1_[0]\,
      I2 => \s_immediate[3]_i_3_n_1\,
      I3 => \^q\(9),
      I4 => \s_instruction_reg_n_1_[15]\,
      I5 => \^q\(10),
      O => \s_alu_op[0]_i_6_n_1\
    );
\s_alu_op[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF3222FFFFFFFF"
    )
        port map (
      I0 => \s_alu_op[2]_i_4_n_1\,
      I1 => \s_alu_op[1]_i_2_n_1\,
      I2 => \s_instruction_reg_n_1_[11]\,
      I3 => \s_alu_mux_ry[0]_i_4_n_1\,
      I4 => \s_alu_op[1]_i_3_n_1\,
      I5 => \s_alu_op[1]_i_4_n_1\,
      O => \s_alu_op_reg[2]\(1)
    );
\s_alu_op[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \s_instruction_reg_n_1_[0]\,
      O => \s_alu_op[1]_i_2_n_1\
    );
\s_alu_op[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F00000000000000"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[15]\,
      I1 => \s_instruction_reg_n_1_[11]\,
      I2 => \s_alu_op[1]_i_5_n_1\,
      I3 => memoryRead_reg,
      I4 => \^q\(10),
      I5 => \^q\(9),
      O => \s_alu_op[1]_i_3_n_1\
    );
\s_alu_op[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[11]\,
      I1 => \s_instruction_reg_n_1_[0]\,
      I2 => \s_branch[2]_i_5_n_1\,
      I3 => \^q\(2),
      I4 => \s_instruction_reg_n_1_[1]\,
      I5 => \^q\(0),
      O => \s_alu_op[1]_i_4_n_1\
    );
\s_alu_op[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \s_instruction_reg_n_1_[12]\,
      I4 => \s_instruction_reg_n_1_[15]\,
      I5 => \s_alu_mux_rx[2]_i_5_n_1\,
      O => \s_alu_op[1]_i_5_n_1\
    );
\s_alu_op[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFFFE"
    )
        port map (
      I0 => \s_alu_op[2]_i_2_n_1\,
      I1 => \s_alu_mux_rx[2]_i_2_n_1\,
      I2 => \s_alu_op[2]_i_3_n_1\,
      I3 => \s_alu_op[2]_i_4_n_1\,
      I4 => \^q\(3),
      O => \s_alu_op_reg[2]\(2)
    );
\s_alu_op[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEFEEEE"
    )
        port map (
      I0 => \s_alu_op[2]_i_5_n_1\,
      I1 => \s_instruction_reg[1]_0\,
      I2 => \s_alu_mux_rx[0]_i_4_n_1\,
      I3 => \s_instruction_reg_n_1_[1]\,
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \s_alu_op[2]_i_2_n_1\
    );
\s_alu_op[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080008000800080"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(10),
      I2 => memoryRead_reg,
      I3 => \s_alu_mux_rx[2]_i_5_n_1\,
      I4 => \s_alu_op[2]_i_7_n_1\,
      I5 => \s_alu_op[2]_i_8_n_1\,
      O => \s_alu_op[2]_i_3_n_1\
    );
\s_alu_op[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \s_alu_mux_ry[0]_i_2_n_1\,
      I1 => \s_instruction_reg_n_1_[11]\,
      I2 => \s_instruction_reg_n_1_[1]\,
      I3 => \^q\(1),
      I4 => \^q\(5),
      O => \s_alu_op[2]_i_4_n_1\
    );
\s_alu_op[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(10),
      I2 => memoryRead_reg,
      I3 => \s_instruction_reg_n_1_[11]\,
      I4 => \s_instruction_reg_n_1_[15]\,
      O => \s_alu_op[2]_i_5_n_1\
    );
\s_alu_op[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[12]\,
      I1 => \s_instruction_reg_n_1_[15]\,
      O => \s_alu_op[2]_i_7_n_1\
    );
\s_alu_op[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(6),
      I2 => \^q\(7),
      O => \s_alu_op[2]_i_8_n_1\
    );
\s_branch[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0080"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[15]\,
      I1 => \s_alu_mux_rx[2]_i_2_n_1\,
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \s_branch[0]_i_2_n_1\,
      I5 => \s_branch[2]_i_6_n_1\,
      O => \s_branch_reg[2]\(0)
    );
\s_branch[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000080"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[11]\,
      I1 => memoryRead_reg,
      I2 => \^q\(9),
      I3 => \s_instruction_reg_n_1_[15]\,
      I4 => \^q\(10),
      I5 => \s_instruction_reg_n_1_[12]\,
      O => \s_branch[0]_i_2_n_1\
    );
\s_branch[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAAAAA"
    )
        port map (
      I0 => \s_branch[1]_i_2_n_1\,
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \s_instruction_reg_n_1_[15]\,
      I4 => \s_alu_mux_rx[2]_i_2_n_1\,
      O => \s_branch_reg[2]\(1)
    );
\s_branch[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => memoryRead_reg,
      I1 => \^q\(9),
      I2 => \s_instruction_reg_n_1_[15]\,
      I3 => \^q\(10),
      I4 => \s_instruction_reg_n_1_[12]\,
      O => \s_branch[1]_i_2_n_1\
    );
\s_branch[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8888888F"
    )
        port map (
      I0 => \s_alu_mux_rx[2]_i_2_n_1\,
      I1 => \s_branch[2]_i_2_n_1\,
      I2 => \s_branch[2]_i_3_n_1\,
      I3 => \s_branch[2]_i_4_n_1\,
      I4 => \s_branch[2]_i_5_n_1\,
      I5 => \s_branch[2]_i_6_n_1\,
      O => \s_branch_reg[2]\(2)
    );
\s_branch[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[15]\,
      I1 => \^q\(0),
      O => \s_branch[2]_i_2_n_1\
    );
\s_branch[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(6),
      I2 => \^q\(7),
      O => \s_branch[2]_i_3_n_1\
    );
\s_branch[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[15]\,
      I1 => \s_instruction_reg_n_1_[11]\,
      O => \s_branch[2]_i_4_n_1\
    );
\s_branch[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[12]\,
      I1 => \^q\(9),
      I2 => \^q\(10),
      I3 => memoryRead_reg,
      O => \s_branch[2]_i_5_n_1\
    );
\s_branch[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \s_instruction_reg_n_1_[15]\,
      I2 => \^q\(0),
      I3 => \s_alu_mux_ry[0]_i_2_n_1\,
      I4 => \s_instruction_reg_n_1_[11]\,
      I5 => \s_alu_mux_rx[1]_i_4_n_1\,
      O => \s_branch[2]_i_6_n_1\
    );
\s_from_pc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => '1',
      Q => s_id_pc(0)
    );
\s_immediate[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^s_immediate_reg[0]\,
      I2 => \s_instruction_reg_n_1_[0]\,
      O => \s_immediate_reg[13]\(0)
    );
\s_immediate[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \s_immediate[13]_i_2_n_1\,
      I1 => \s_immediate[13]_i_3_n_1\,
      I2 => \^q\(8),
      O => \s_immediate_reg[13]\(10)
    );
\s_immediate[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAF000CC"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(5),
      I3 => \s_immediate[7]_i_3_n_1\,
      I4 => \s_immediate[7]_i_4_n_1\,
      I5 => \s_immediate[13]_i_4_n_1\,
      O => \s_immediate[13]_i_2_n_1\
    );
\s_immediate[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[15]\,
      I1 => \^q\(10),
      I2 => \s_instruction_reg_n_1_[11]\,
      I3 => \^q\(9),
      I4 => \s_instruction_reg_n_1_[12]\,
      O => \s_immediate[13]_i_3_n_1\
    );
\s_immediate[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006002"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[12]\,
      I1 => \^q\(9),
      I2 => \s_instruction_reg_n_1_[11]\,
      I3 => \^q\(10),
      I4 => \s_instruction_reg_n_1_[15]\,
      O => \s_immediate[13]_i_4_n_1\
    );
\s_immediate[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^s_immediate_reg[0]\,
      I2 => \s_instruction_reg_n_1_[1]\,
      O => \s_immediate_reg[13]\(1)
    );
\s_immediate[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^s_immediate_reg[0]\,
      I2 => \^q\(0),
      O => \s_immediate_reg[13]\(2)
    );
\s_immediate[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^s_immediate_reg[0]\,
      O => \s_immediate_reg[13]\(3)
    );
\s_immediate[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009000"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[1]\,
      I1 => \s_instruction_reg_n_1_[0]\,
      I2 => \s_immediate[3]_i_3_n_1\,
      I3 => \^q\(9),
      I4 => \s_instruction_reg_n_1_[15]\,
      I5 => \^q\(10),
      O => \^s_immediate_reg[0]\
    );
\s_immediate[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[12]\,
      I1 => \s_instruction_reg_n_1_[11]\,
      O => \s_immediate[3]_i_3_n_1\
    );
\s_immediate[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \s_immediate[7]_i_4_n_1\,
      I2 => \^q\(1),
      I3 => \s_immediate[7]_i_3_n_1\,
      O => \s_immediate_reg[13]\(4)
    );
\s_immediate[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF5D5D5DAA080808"
    )
        port map (
      I0 => \s_immediate[7]_i_2_n_1\,
      I1 => \^q\(1),
      I2 => \s_immediate[7]_i_3_n_1\,
      I3 => \^q\(2),
      I4 => \s_immediate[7]_i_4_n_1\,
      I5 => \^q\(3),
      O => \s_immediate_reg[13]\(5)
    );
\s_immediate[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF5D5D5DAA080808"
    )
        port map (
      I0 => \s_immediate[7]_i_2_n_1\,
      I1 => \^q\(1),
      I2 => \s_immediate[7]_i_3_n_1\,
      I3 => \^q\(2),
      I4 => \s_immediate[7]_i_4_n_1\,
      I5 => \^q\(4),
      O => \s_immediate_reg[13]\(6)
    );
\s_immediate[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF5D5D5DAA080808"
    )
        port map (
      I0 => \s_immediate[7]_i_2_n_1\,
      I1 => \^q\(1),
      I2 => \s_immediate[7]_i_3_n_1\,
      I3 => \^q\(2),
      I4 => \s_immediate[7]_i_4_n_1\,
      I5 => \^q\(5),
      O => \s_immediate_reg[13]\(7)
    );
\s_immediate[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAA82ABBAAAAA8A"
    )
        port map (
      I0 => \^s_immediate_reg[0]\,
      I1 => \^q\(9),
      I2 => \s_instruction_reg_n_1_[12]\,
      I3 => \s_instruction_reg_n_1_[11]\,
      I4 => \s_instruction_reg_n_1_[15]\,
      I5 => \^q\(10),
      O => \s_immediate[7]_i_2_n_1\
    );
\s_immediate[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAABEAABAAAAAAA"
    )
        port map (
      I0 => \^s_immediate_reg[0]\,
      I1 => \^q\(9),
      I2 => \s_instruction_reg_n_1_[12]\,
      I3 => \s_instruction_reg_n_1_[11]\,
      I4 => \s_instruction_reg_n_1_[15]\,
      I5 => \^q\(10),
      O => \s_immediate[7]_i_3_n_1\
    );
\s_immediate[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555545555"
    )
        port map (
      I0 => \^s_immediate_reg[0]\,
      I1 => \s_instruction_reg_n_1_[11]\,
      I2 => \s_instruction_reg_n_1_[15]\,
      I3 => \s_instruction_reg_n_1_[12]\,
      I4 => \^q\(10),
      I5 => \^q\(9),
      O => \s_immediate[7]_i_4_n_1\
    );
\s_immediate[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \s_immediate[13]_i_2_n_1\,
      I1 => \s_immediate[13]_i_3_n_1\,
      I2 => \^q\(6),
      O => \s_immediate_reg[13]\(8)
    );
\s_immediate[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \s_immediate[13]_i_2_n_1\,
      I1 => \s_immediate[13]_i_3_n_1\,
      I2 => \^q\(7),
      O => \s_immediate_reg[13]\(9)
    );
\s_instruction_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => D(0),
      Q => \s_instruction_reg_n_1_[0]\
    );
\s_instruction_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => D(10),
      Q => \^q\(8)
    );
\s_instruction_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => D(11),
      Q => \s_instruction_reg_n_1_[11]\
    );
\s_instruction_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => D(12),
      Q => \s_instruction_reg_n_1_[12]\
    );
\s_instruction_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => D(13),
      Q => \^q\(9)
    );
\s_instruction_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => D(14),
      Q => \^q\(10)
    );
\s_instruction_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => D(15),
      Q => \s_instruction_reg_n_1_[15]\
    );
\s_instruction_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => D(1),
      Q => \s_instruction_reg_n_1_[1]\
    );
\s_instruction_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => D(2),
      Q => \^q\(0)
    );
\s_instruction_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => D(3),
      Q => \^q\(1)
    );
\s_instruction_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => D(4),
      Q => \^q\(2)
    );
\s_instruction_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => D(5),
      Q => \^q\(3)
    );
\s_instruction_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => D(6),
      Q => \^q\(4)
    );
\s_instruction_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => D(7),
      Q => \^q\(5)
    );
\s_instruction_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => D(8),
      Q => \^q\(6)
    );
\s_instruction_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => n_0_589_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => D(9),
      Q => \^q\(7)
    );
\s_select_goal[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF4F4F4"
    )
        port map (
      I0 => \s_select_goal[0]_i_2_n_1\,
      I1 => \s_instruction_reg_n_1_[15]\,
      I2 => \s_select_goal[0]_i_3_n_1\,
      I3 => \s_instruction_reg_n_1_[11]\,
      I4 => \^s_id_memoryread\,
      I5 => \s_select_goal[2]_i_2_n_1\,
      O => \s_select_goal_reg[2]\(0)
    );
\s_select_goal[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBFFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \s_instruction_reg_n_1_[1]\,
      I3 => \s_alu_mux_ry[0]_i_2_n_1\,
      I4 => \s_instruction_reg_n_1_[11]\,
      O => \s_select_goal[0]_i_2_n_1\
    );
\s_select_goal[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000020080000AAAA"
    )
        port map (
      I0 => memoryRead_reg,
      I1 => \^q\(8),
      I2 => \^q\(6),
      I3 => \^q\(7),
      I4 => \s_select_goal[0]_i_4_n_1\,
      I5 => \^q\(9),
      O => \s_select_goal[0]_i_3_n_1\
    );
\s_select_goal[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[11]\,
      I1 => \s_instruction_reg_n_1_[15]\,
      I2 => \s_instruction_reg_n_1_[12]\,
      I3 => \^q\(10),
      O => \s_select_goal[0]_i_4_n_1\
    );
\s_select_goal[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF2"
    )
        port map (
      I0 => \s_select_goal[2]_i_3_n_1\,
      I1 => \^q\(9),
      I2 => \^s_id_wb_memory_or_alu_out\(0),
      I3 => \s_select_goal[1]_i_2_n_1\,
      O => \s_select_goal_reg[2]\(1)
    );
\s_select_goal[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00220003"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[0]\,
      I1 => \s_branch[2]_i_5_n_1\,
      I2 => \s_select_goal[1]_i_3_n_1\,
      I3 => \s_instruction_reg_n_1_[11]\,
      I4 => \s_instruction_reg_n_1_[15]\,
      O => \s_select_goal[1]_i_2_n_1\
    );
\s_select_goal[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \^q\(8),
      O => \s_select_goal[1]_i_3_n_1\
    );
\s_select_goal[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFEE"
    )
        port map (
      I0 => \s_select_goal[2]_i_2_n_1\,
      I1 => \^s_id_wb_memory_or_alu_out\(0),
      I2 => \^q\(9),
      I3 => \s_select_goal[2]_i_3_n_1\,
      I4 => \s_branch[2]_i_6_n_1\,
      O => \s_select_goal_reg[2]\(2)
    );
\s_select_goal[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[0]\,
      I1 => \s_alu_mux_rx[2]_i_3_n_1\,
      O => \s_select_goal[2]_i_2_n_1\
    );
\s_select_goal[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[11]\,
      I1 => \s_instruction_reg_n_1_[12]\,
      I2 => \^q\(10),
      I3 => memoryRead_reg,
      I4 => \s_instruction_reg_n_1_[15]\,
      O => \s_select_goal[2]_i_3_n_1\
    );
\wb_memory_or_alu_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => \s_instruction_reg_n_1_[15]\,
      I1 => \^q\(0),
      I2 => \s_instruction_reg_n_1_[1]\,
      I3 => \^q\(1),
      I4 => \s_instruction_reg_n_1_[11]\,
      I5 => \s_alu_mux_ry[0]_i_2_n_1\,
      O => \^s_id_wb_memory_or_alu_out\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity char_mem_blk_mem_gen_prim_width is
  port (
    douta : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of char_mem_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end char_mem_blk_mem_gen_prim_width;

architecture STRUCTURE of char_mem_blk_mem_gen_prim_width is
begin
\prim_noinit.ram\: entity work.char_mem_blk_mem_gen_prim_wrapper
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      clka => clka,
      douta(0) => douta(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_mem_blk_mem_gen_prim_width is
  port (
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_mem_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end fifo_mem_blk_mem_gen_prim_width;

architecture STRUCTURE of fifo_mem_blk_mem_gen_prim_width is
  signal \NLW_prim_noinit.ram_doutb_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
begin
  doutb(7) <= 'Z';
\prim_noinit.ram\: entity work.fifo_mem_blk_mem_gen_prim_wrapper
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      addrb(10 downto 0) => addrb(10 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      doutb(7) => \NLW_prim_noinit.ram_doutb_UNCONNECTED\(7),
      doutb(6 downto 0) => doutb(6 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity char_mem_blk_mem_gen_generic_cstr is
  port (
    douta : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of char_mem_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end char_mem_blk_mem_gen_generic_cstr;

architecture STRUCTURE of char_mem_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.char_mem_blk_mem_gen_prim_width
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      clka => clka,
      douta(0) => douta(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_mem_blk_mem_gen_generic_cstr is
  port (
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_mem_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end fifo_mem_blk_mem_gen_generic_cstr;

architecture STRUCTURE of fifo_mem_blk_mem_gen_generic_cstr is
  signal \NLW_ramloop[0].ram.r_doutb_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
begin
  doutb(7) <= 'Z';
\ramloop[0].ram.r\: entity work.fifo_mem_blk_mem_gen_prim_width
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      addrb(10 downto 0) => addrb(10 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      doutb(7) => \NLW_ramloop[0].ram.r_doutb_UNCONNECTED\(7),
      doutb(6 downto 0) => doutb(6 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity char_mem_blk_mem_gen_top is
  port (
    douta : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of char_mem_blk_mem_gen_top : entity is "blk_mem_gen_top";
end char_mem_blk_mem_gen_top;

architecture STRUCTURE of char_mem_blk_mem_gen_top is
begin
\valid.cstr\: entity work.char_mem_blk_mem_gen_generic_cstr
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      clka => clka,
      douta(0) => douta(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_mem_blk_mem_gen_top is
  port (
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_mem_blk_mem_gen_top : entity is "blk_mem_gen_top";
end fifo_mem_blk_mem_gen_top;

architecture STRUCTURE of fifo_mem_blk_mem_gen_top is
  signal \NLW_valid.cstr_doutb_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
begin
  doutb(7) <= 'Z';
\valid.cstr\: entity work.fifo_mem_blk_mem_gen_generic_cstr
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      addrb(10 downto 0) => addrb(10 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      doutb(7) => \NLW_valid.cstr_doutb_UNCONNECTED\(7),
      doutb(6 downto 0) => doutb(6 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity char_mem_blk_mem_gen_v8_3_6_synth is
  port (
    douta : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of char_mem_blk_mem_gen_v8_3_6_synth : entity is "blk_mem_gen_v8_3_6_synth";
end char_mem_blk_mem_gen_v8_3_6_synth;

architecture STRUCTURE of char_mem_blk_mem_gen_v8_3_6_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.char_mem_blk_mem_gen_top
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      clka => clka,
      douta(0) => douta(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_mem_blk_mem_gen_v8_3_6_synth is
  port (
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_mem_blk_mem_gen_v8_3_6_synth : entity is "blk_mem_gen_v8_3_6_synth";
end fifo_mem_blk_mem_gen_v8_3_6_synth;

architecture STRUCTURE of fifo_mem_blk_mem_gen_v8_3_6_synth is
  signal \NLW_gnbram.gnativebmg.native_blk_mem_gen_doutb_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
begin
  doutb(7) <= 'Z';
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.fifo_mem_blk_mem_gen_top
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      addrb(10 downto 0) => addrb(10 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      doutb(7) => \NLW_gnbram.gnativebmg.native_blk_mem_gen_doutb_UNCONNECTED\(7),
      doutb(6 downto 0) => doutb(6 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity char_mem_blk_mem_gen_v8_3_6 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 0 to 0 );
    douta : out STD_LOGIC_VECTOR ( 0 to 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 0 to 0 );
    doutb : out STD_LOGIC_VECTOR ( 0 to 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 14 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of char_mem_blk_mem_gen_v8_3_6 : entity is 15;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of char_mem_blk_mem_gen_v8_3_6 : entity is 15;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of char_mem_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of char_mem_blk_mem_gen_v8_3_6 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of char_mem_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of char_mem_blk_mem_gen_v8_3_6 : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of char_mem_blk_mem_gen_v8_3_6 : entity is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of char_mem_blk_mem_gen_v8_3_6 : entity is "1";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of char_mem_blk_mem_gen_v8_3_6 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of char_mem_blk_mem_gen_v8_3_6 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of char_mem_blk_mem_gen_v8_3_6 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of char_mem_blk_mem_gen_v8_3_6 : entity is "Estimated Power for IP     :     2.21455 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of char_mem_blk_mem_gen_v8_3_6 : entity is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of char_mem_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of char_mem_blk_mem_gen_v8_3_6 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of char_mem_blk_mem_gen_v8_3_6 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of char_mem_blk_mem_gen_v8_3_6 : entity is "char_mem.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of char_mem_blk_mem_gen_v8_3_6 : entity is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of char_mem_blk_mem_gen_v8_3_6 : entity is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of char_mem_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of char_mem_blk_mem_gen_v8_3_6 : entity is 32768;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of char_mem_blk_mem_gen_v8_3_6 : entity is 32768;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of char_mem_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of char_mem_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of char_mem_blk_mem_gen_v8_3_6 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of char_mem_blk_mem_gen_v8_3_6 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of char_mem_blk_mem_gen_v8_3_6 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of char_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of char_mem_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of char_mem_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of char_mem_blk_mem_gen_v8_3_6 : entity is 32768;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of char_mem_blk_mem_gen_v8_3_6 : entity is 32768;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of char_mem_blk_mem_gen_v8_3_6 : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of char_mem_blk_mem_gen_v8_3_6 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of char_mem_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of char_mem_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of char_mem_blk_mem_gen_v8_3_6 : entity is "artix7";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of char_mem_blk_mem_gen_v8_3_6 : entity is "blk_mem_gen_v8_3_6";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of char_mem_blk_mem_gen_v8_3_6 : entity is "yes";
end char_mem_blk_mem_gen_v8_3_6;

architecture STRUCTURE of char_mem_blk_mem_gen_v8_3_6 is
begin
  dbiterr <= 'Z';
  rsta_busy <= 'Z';
  rstb_busy <= 'Z';
  s_axi_arready <= 'Z';
  s_axi_awready <= 'Z';
  s_axi_bvalid <= 'Z';
  s_axi_dbiterr <= 'Z';
  s_axi_rlast <= 'Z';
  s_axi_rvalid <= 'Z';
  s_axi_sbiterr <= 'Z';
  s_axi_wready <= 'Z';
  sbiterr <= 'Z';
  doutb(0) <= 'Z';
  rdaddrecc(0) <= 'Z';
  rdaddrecc(1) <= 'Z';
  rdaddrecc(2) <= 'Z';
  rdaddrecc(3) <= 'Z';
  rdaddrecc(4) <= 'Z';
  rdaddrecc(5) <= 'Z';
  rdaddrecc(6) <= 'Z';
  rdaddrecc(7) <= 'Z';
  rdaddrecc(8) <= 'Z';
  rdaddrecc(9) <= 'Z';
  rdaddrecc(10) <= 'Z';
  rdaddrecc(11) <= 'Z';
  rdaddrecc(12) <= 'Z';
  rdaddrecc(13) <= 'Z';
  rdaddrecc(14) <= 'Z';
  s_axi_bid(0) <= 'Z';
  s_axi_bid(1) <= 'Z';
  s_axi_bid(2) <= 'Z';
  s_axi_bid(3) <= 'Z';
  s_axi_bresp(0) <= 'Z';
  s_axi_bresp(1) <= 'Z';
  s_axi_rdaddrecc(0) <= 'Z';
  s_axi_rdaddrecc(1) <= 'Z';
  s_axi_rdaddrecc(2) <= 'Z';
  s_axi_rdaddrecc(3) <= 'Z';
  s_axi_rdaddrecc(4) <= 'Z';
  s_axi_rdaddrecc(5) <= 'Z';
  s_axi_rdaddrecc(6) <= 'Z';
  s_axi_rdaddrecc(7) <= 'Z';
  s_axi_rdaddrecc(8) <= 'Z';
  s_axi_rdaddrecc(9) <= 'Z';
  s_axi_rdaddrecc(10) <= 'Z';
  s_axi_rdaddrecc(11) <= 'Z';
  s_axi_rdaddrecc(12) <= 'Z';
  s_axi_rdaddrecc(13) <= 'Z';
  s_axi_rdaddrecc(14) <= 'Z';
  s_axi_rdata(0) <= 'Z';
  s_axi_rid(0) <= 'Z';
  s_axi_rid(1) <= 'Z';
  s_axi_rid(2) <= 'Z';
  s_axi_rid(3) <= 'Z';
  s_axi_rresp(0) <= 'Z';
  s_axi_rresp(1) <= 'Z';
inst_blk_mem_gen: entity work.char_mem_blk_mem_gen_v8_3_6_synth
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      clka => clka,
      douta(0) => douta(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_mem_blk_mem_gen_v8_3_6 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 10 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of fifo_mem_blk_mem_gen_v8_3_6 : entity is 11;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of fifo_mem_blk_mem_gen_v8_3_6 : entity is 11;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of fifo_mem_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of fifo_mem_blk_mem_gen_v8_3_6 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of fifo_mem_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of fifo_mem_blk_mem_gen_v8_3_6 : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of fifo_mem_blk_mem_gen_v8_3_6 : entity is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of fifo_mem_blk_mem_gen_v8_3_6 : entity is "0";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of fifo_mem_blk_mem_gen_v8_3_6 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of fifo_mem_blk_mem_gen_v8_3_6 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of fifo_mem_blk_mem_gen_v8_3_6 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of fifo_mem_blk_mem_gen_v8_3_6 : entity is "Estimated Power for IP     :     2.4257 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of fifo_mem_blk_mem_gen_v8_3_6 : entity is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of fifo_mem_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of fifo_mem_blk_mem_gen_v8_3_6 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of fifo_mem_blk_mem_gen_v8_3_6 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of fifo_mem_blk_mem_gen_v8_3_6 : entity is "fifo_mem.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of fifo_mem_blk_mem_gen_v8_3_6 : entity is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of fifo_mem_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of fifo_mem_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of fifo_mem_blk_mem_gen_v8_3_6 : entity is 2048;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of fifo_mem_blk_mem_gen_v8_3_6 : entity is 2048;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of fifo_mem_blk_mem_gen_v8_3_6 : entity is 8;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of fifo_mem_blk_mem_gen_v8_3_6 : entity is 8;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of fifo_mem_blk_mem_gen_v8_3_6 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of fifo_mem_blk_mem_gen_v8_3_6 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of fifo_mem_blk_mem_gen_v8_3_6 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of fifo_mem_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of fifo_mem_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of fifo_mem_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of fifo_mem_blk_mem_gen_v8_3_6 : entity is 2048;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of fifo_mem_blk_mem_gen_v8_3_6 : entity is 2048;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of fifo_mem_blk_mem_gen_v8_3_6 : entity is "NO_CHANGE";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of fifo_mem_blk_mem_gen_v8_3_6 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of fifo_mem_blk_mem_gen_v8_3_6 : entity is 8;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of fifo_mem_blk_mem_gen_v8_3_6 : entity is 8;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of fifo_mem_blk_mem_gen_v8_3_6 : entity is "artix7";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fifo_mem_blk_mem_gen_v8_3_6 : entity is "blk_mem_gen_v8_3_6";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fifo_mem_blk_mem_gen_v8_3_6 : entity is "yes";
end fifo_mem_blk_mem_gen_v8_3_6;

architecture STRUCTURE of fifo_mem_blk_mem_gen_v8_3_6 is
  signal NLW_inst_blk_mem_gen_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
begin
  dbiterr <= 'Z';
  rsta_busy <= 'Z';
  rstb_busy <= 'Z';
  s_axi_arready <= 'Z';
  s_axi_awready <= 'Z';
  s_axi_bvalid <= 'Z';
  s_axi_dbiterr <= 'Z';
  s_axi_rlast <= 'Z';
  s_axi_rvalid <= 'Z';
  s_axi_sbiterr <= 'Z';
  s_axi_wready <= 'Z';
  sbiterr <= 'Z';
  douta(0) <= 'Z';
  douta(1) <= 'Z';
  douta(2) <= 'Z';
  douta(3) <= 'Z';
  douta(4) <= 'Z';
  douta(5) <= 'Z';
  douta(6) <= 'Z';
  douta(7) <= 'Z';
  doutb(7) <= 'Z';
  rdaddrecc(0) <= 'Z';
  rdaddrecc(1) <= 'Z';
  rdaddrecc(2) <= 'Z';
  rdaddrecc(3) <= 'Z';
  rdaddrecc(4) <= 'Z';
  rdaddrecc(5) <= 'Z';
  rdaddrecc(6) <= 'Z';
  rdaddrecc(7) <= 'Z';
  rdaddrecc(8) <= 'Z';
  rdaddrecc(9) <= 'Z';
  rdaddrecc(10) <= 'Z';
  s_axi_bid(0) <= 'Z';
  s_axi_bid(1) <= 'Z';
  s_axi_bid(2) <= 'Z';
  s_axi_bid(3) <= 'Z';
  s_axi_bresp(0) <= 'Z';
  s_axi_bresp(1) <= 'Z';
  s_axi_rdaddrecc(0) <= 'Z';
  s_axi_rdaddrecc(1) <= 'Z';
  s_axi_rdaddrecc(2) <= 'Z';
  s_axi_rdaddrecc(3) <= 'Z';
  s_axi_rdaddrecc(4) <= 'Z';
  s_axi_rdaddrecc(5) <= 'Z';
  s_axi_rdaddrecc(6) <= 'Z';
  s_axi_rdaddrecc(7) <= 'Z';
  s_axi_rdaddrecc(8) <= 'Z';
  s_axi_rdaddrecc(9) <= 'Z';
  s_axi_rdaddrecc(10) <= 'Z';
  s_axi_rdata(0) <= 'Z';
  s_axi_rdata(1) <= 'Z';
  s_axi_rdata(2) <= 'Z';
  s_axi_rdata(3) <= 'Z';
  s_axi_rdata(4) <= 'Z';
  s_axi_rdata(5) <= 'Z';
  s_axi_rdata(6) <= 'Z';
  s_axi_rdata(7) <= 'Z';
  s_axi_rid(0) <= 'Z';
  s_axi_rid(1) <= 'Z';
  s_axi_rid(2) <= 'Z';
  s_axi_rid(3) <= 'Z';
  s_axi_rresp(0) <= 'Z';
  s_axi_rresp(1) <= 'Z';
inst_blk_mem_gen: entity work.fifo_mem_blk_mem_gen_v8_3_6_synth
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      addrb(10 downto 0) => addrb(10 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      doutb(7) => NLW_inst_blk_mem_gen_doutb_UNCONNECTED(7),
      doutb(6 downto 0) => doutb(6 downto 0),
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity char_mem is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of char_mem : entity is "char_mem,blk_mem_gen_v8_3_6,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of char_mem : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of char_mem : entity is "blk_mem_gen_v8_3_6,Vivado 2017.1";
end char_mem;

architecture STRUCTURE of char_mem is
  signal NLW_U0_clkb_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_deepsleep_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_eccpipece_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ena_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_enb_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_regcea_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_regceb_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_aclk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_aresetn_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_shutdown_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sleep_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_addrb_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal NLW_U0_dina_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_dinb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal NLW_U0_s_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_s_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_wea_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_web_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 15;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 15;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "1";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     2.21455 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 1;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "char_mem.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 3;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 32768;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 32768;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 1;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 1;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 32768;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 32768;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 1;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 1;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "artix7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.char_mem_blk_mem_gen_v8_3_6
     port map (
      addra(14 downto 0) => addra(14 downto 0),
      addrb(14 downto 0) => NLW_U0_addrb_UNCONNECTED(14 downto 0),
      clka => clka,
      clkb => NLW_U0_clkb_UNCONNECTED,
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => NLW_U0_deepsleep_UNCONNECTED,
      dina(0) => NLW_U0_dina_UNCONNECTED(0),
      dinb(0) => NLW_U0_dinb_UNCONNECTED(0),
      douta(0) => douta(0),
      doutb(0) => NLW_U0_doutb_UNCONNECTED(0),
      eccpipece => NLW_U0_eccpipece_UNCONNECTED,
      ena => NLW_U0_ena_UNCONNECTED,
      enb => NLW_U0_enb_UNCONNECTED,
      injectdbiterr => NLW_U0_injectdbiterr_UNCONNECTED,
      injectsbiterr => NLW_U0_injectsbiterr_UNCONNECTED,
      rdaddrecc(14 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(14 downto 0),
      regcea => NLW_U0_regcea_UNCONNECTED,
      regceb => NLW_U0_regceb_UNCONNECTED,
      rsta => NLW_U0_rsta_UNCONNECTED,
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => NLW_U0_rstb_UNCONNECTED,
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => NLW_U0_s_aclk_UNCONNECTED,
      s_aresetn => NLW_U0_s_aresetn_UNCONNECTED,
      s_axi_araddr(31 downto 0) => NLW_U0_s_axi_araddr_UNCONNECTED(31 downto 0),
      s_axi_arburst(1 downto 0) => NLW_U0_s_axi_arburst_UNCONNECTED(1 downto 0),
      s_axi_arid(3 downto 0) => NLW_U0_s_axi_arid_UNCONNECTED(3 downto 0),
      s_axi_arlen(7 downto 0) => NLW_U0_s_axi_arlen_UNCONNECTED(7 downto 0),
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => NLW_U0_s_axi_arsize_UNCONNECTED(2 downto 0),
      s_axi_arvalid => NLW_U0_s_axi_arvalid_UNCONNECTED,
      s_axi_awaddr(31 downto 0) => NLW_U0_s_axi_awaddr_UNCONNECTED(31 downto 0),
      s_axi_awburst(1 downto 0) => NLW_U0_s_axi_awburst_UNCONNECTED(1 downto 0),
      s_axi_awid(3 downto 0) => NLW_U0_s_axi_awid_UNCONNECTED(3 downto 0),
      s_axi_awlen(7 downto 0) => NLW_U0_s_axi_awlen_UNCONNECTED(7 downto 0),
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => NLW_U0_s_axi_awsize_UNCONNECTED(2 downto 0),
      s_axi_awvalid => NLW_U0_s_axi_awvalid_UNCONNECTED,
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => NLW_U0_s_axi_bready_UNCONNECTED,
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => NLW_U0_s_axi_injectdbiterr_UNCONNECTED,
      s_axi_injectsbiterr => NLW_U0_s_axi_injectsbiterr_UNCONNECTED,
      s_axi_rdaddrecc(14 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(14 downto 0),
      s_axi_rdata(0) => NLW_U0_s_axi_rdata_UNCONNECTED(0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => NLW_U0_s_axi_rready_UNCONNECTED,
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(0) => NLW_U0_s_axi_wdata_UNCONNECTED(0),
      s_axi_wlast => NLW_U0_s_axi_wlast_UNCONNECTED,
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => NLW_U0_s_axi_wstrb_UNCONNECTED(0),
      s_axi_wvalid => NLW_U0_s_axi_wvalid_UNCONNECTED,
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => NLW_U0_shutdown_UNCONNECTED,
      sleep => NLW_U0_sleep_UNCONNECTED,
      wea(0) => NLW_U0_wea_UNCONNECTED(0),
      web(0) => NLW_U0_web_UNCONNECTED(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo_mem is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clkb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fifo_mem : entity is "fifo_mem,blk_mem_gen_v8_3_6,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fifo_mem : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fifo_mem : entity is "blk_mem_gen_v8_3_6,Vivado 2017.1";
end fifo_mem;

architecture STRUCTURE of fifo_mem is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_deepsleep_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_eccpipece_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ena_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_enb_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_regcea_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_regceb_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_aclk_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_aresetn_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_injectdbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_injectsbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_shutdown_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sleep_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dinb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_douta_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_s_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_s_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_web_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 11;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 11;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "1";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "0";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     2.4257 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 1;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "fifo_mem.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 1;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 2048;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 2048;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 8;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 8;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 2048;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 2048;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "NO_CHANGE";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 8;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 8;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "artix7";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
  doutb(7) <= 'Z';
U0: entity work.fifo_mem_blk_mem_gen_v8_3_6
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      addrb(10 downto 0) => addrb(10 downto 0),
      clka => clka,
      clkb => clkb,
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => NLW_U0_deepsleep_UNCONNECTED,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => NLW_U0_dinb_UNCONNECTED(7 downto 0),
      douta(7 downto 0) => NLW_U0_douta_UNCONNECTED(7 downto 0),
      doutb(7) => NLW_U0_doutb_UNCONNECTED(7),
      doutb(6 downto 0) => doutb(6 downto 0),
      eccpipece => NLW_U0_eccpipece_UNCONNECTED,
      ena => NLW_U0_ena_UNCONNECTED,
      enb => NLW_U0_enb_UNCONNECTED,
      injectdbiterr => NLW_U0_injectdbiterr_UNCONNECTED,
      injectsbiterr => NLW_U0_injectsbiterr_UNCONNECTED,
      rdaddrecc(10 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(10 downto 0),
      regcea => NLW_U0_regcea_UNCONNECTED,
      regceb => NLW_U0_regceb_UNCONNECTED,
      rsta => NLW_U0_rsta_UNCONNECTED,
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => NLW_U0_rstb_UNCONNECTED,
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => NLW_U0_s_aclk_UNCONNECTED,
      s_aresetn => NLW_U0_s_aresetn_UNCONNECTED,
      s_axi_araddr(31 downto 0) => NLW_U0_s_axi_araddr_UNCONNECTED(31 downto 0),
      s_axi_arburst(1 downto 0) => NLW_U0_s_axi_arburst_UNCONNECTED(1 downto 0),
      s_axi_arid(3 downto 0) => NLW_U0_s_axi_arid_UNCONNECTED(3 downto 0),
      s_axi_arlen(7 downto 0) => NLW_U0_s_axi_arlen_UNCONNECTED(7 downto 0),
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => NLW_U0_s_axi_arsize_UNCONNECTED(2 downto 0),
      s_axi_arvalid => NLW_U0_s_axi_arvalid_UNCONNECTED,
      s_axi_awaddr(31 downto 0) => NLW_U0_s_axi_awaddr_UNCONNECTED(31 downto 0),
      s_axi_awburst(1 downto 0) => NLW_U0_s_axi_awburst_UNCONNECTED(1 downto 0),
      s_axi_awid(3 downto 0) => NLW_U0_s_axi_awid_UNCONNECTED(3 downto 0),
      s_axi_awlen(7 downto 0) => NLW_U0_s_axi_awlen_UNCONNECTED(7 downto 0),
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => NLW_U0_s_axi_awsize_UNCONNECTED(2 downto 0),
      s_axi_awvalid => NLW_U0_s_axi_awvalid_UNCONNECTED,
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => NLW_U0_s_axi_bready_UNCONNECTED,
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => NLW_U0_s_axi_injectdbiterr_UNCONNECTED,
      s_axi_injectsbiterr => NLW_U0_s_axi_injectsbiterr_UNCONNECTED,
      s_axi_rdaddrecc(10 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(10 downto 0),
      s_axi_rdata(7 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(7 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => NLW_U0_s_axi_rready_UNCONNECTED,
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(7 downto 0) => NLW_U0_s_axi_wdata_UNCONNECTED(7 downto 0),
      s_axi_wlast => NLW_U0_s_axi_wlast_UNCONNECTED,
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => NLW_U0_s_axi_wstrb_UNCONNECTED(0),
      s_axi_wvalid => NLW_U0_s_axi_wvalid_UNCONNECTED,
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => NLW_U0_shutdown_UNCONNECTED,
      sleep => NLW_U0_sleep_UNCONNECTED,
      wea(0) => wea(0),
      web(0) => NLW_U0_web_UNCONNECTED(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity VGA_play is
  port (
    video_clk_OBUF : out STD_LOGIC;
    Hs_OBUF : out STD_LOGIC;
    Vs_OBUF : out STD_LOGIC;
    video_de_OBUF : out STD_LOGIC;
    video_color_OBUF : out STD_LOGIC_VECTOR ( 1 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \t_memdata_out_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_in_BUFG : in STD_LOGIC;
    rst : in STD_LOGIC;
    rst_IBUF : in STD_LOGIC
  );
end VGA_play;

architecture STRUCTURE of VGA_play is
  signal addra : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal addrb : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal clk_i_1_n_1 : STD_LOGIC;
  signal de0 : STD_LOGIC;
  signal doutb : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal g0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \g0[0]_i_1_n_1\ : STD_LOGIC;
  signal hs1 : STD_LOGIC;
  signal hs1_i_1_n_1 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal pr : STD_LOGIC;
  signal r0 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \r0[2]_i_1_n_1\ : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal \vector_x[7]_i_2_n_1\ : STD_LOGIC;
  signal \vector_x[9]_i_2_n_1\ : STD_LOGIC;
  signal vector_y : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \vector_y[8]_i_3_n_1\ : STD_LOGIC;
  signal \vector_y[8]_i_4_n_1\ : STD_LOGIC;
  signal \^video_clk_obuf\ : STD_LOGIC;
  signal video_clk_OBUF_BUFG : STD_LOGIC;
  signal vs1 : STD_LOGIC;
  signal vs1_i_1_n_1 : STD_LOGIC;
  signal vs1_i_2_n_1 : STD_LOGIC;
  signal NLW_cache_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute syn_black_box : string;
  attribute syn_black_box of cache : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of cache : label is "blk_mem_gen_v8_3_6,Vivado 2017.1";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \g0[0]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \r0[2]_i_1\ : label is "soft_lutpair90";
  attribute syn_black_box of ram : label is "TRUE";
  attribute x_core_info of ram : label is "blk_mem_gen_v8_3_6,Vivado 2017.1";
  attribute SOFT_HLUTNM of \vector_x[0]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \vector_x[1]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \vector_x[3]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \vector_x[4]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \vector_x[5]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \vector_x[6]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \vector_y[0]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \vector_y[1]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \vector_y[2]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \vector_y[3]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \vector_y[7]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \vector_y[8]_i_2\ : label is "soft_lutpair89";
  attribute TOOL_INSERTED_CLOCKBUFG : boolean;
  attribute TOOL_INSERTED_CLOCKBUFG of video_clk_OBUF_BUFG_inst : label is std.standard.true;
begin
  video_clk_OBUF <= video_clk_OBUF_BUFG;
Hs_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => '1',
      CLR => rst,
      D => hs1,
      Q => Hs_OBUF
    );
Vs_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => '1',
      CLR => rst,
      D => vs1,
      Q => Vs_OBUF
    );
cache: entity work.fifo_mem
     port map (
      addra(10 downto 0) => Q(10 downto 0),
      addrb(10 downto 0) => addrb(10 downto 0),
      clka => video_clk_OBUF_BUFG,
      clkb => video_clk_OBUF_BUFG,
      dina(7 downto 0) => \t_memdata_out_reg[7]\(7 downto 0),
      doutb(7) => NLW_cache_doutb_UNCONNECTED(7),
      doutb(6 downto 0) => doutb(6 downto 0),
      wea(0) => wea(0)
    );
clk_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => video_clk_OBUF_BUFG,
      O => clk_i_1_n_1
    );
clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => '1',
      D => clk_i_1_n_1,
      Q => \^video_clk_obuf\,
      R => '0'
    );
de_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8880"
    )
        port map (
      I0 => rst_IBUF,
      I1 => addrb(5),
      I2 => addrb(4),
      I3 => addrb(3),
      I4 => vs1_i_2_n_1,
      O => de0
    );
de_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => rst_IBUF,
      D => rst_IBUF,
      Q => video_de_OBUF,
      R => de0
    );
\g0[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0155"
    )
        port map (
      I0 => vs1_i_2_n_1,
      I1 => addrb(3),
      I2 => addrb(4),
      I3 => addrb(5),
      O => \g0[0]_i_1_n_1\
    );
\g0_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => '1',
      CLR => rst,
      D => \g0[0]_i_1_n_1\,
      Q => g0(0)
    );
hs1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFBFBFBFBFBFFF"
    )
        port map (
      I0 => addrb(4),
      I1 => addrb(3),
      I2 => addrb(5),
      I3 => addrb(1),
      I4 => addrb(2),
      I5 => addrb(0),
      O => hs1_i_1_n_1
    );
hs1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => '1',
      D => hs1_i_1_n_1,
      PRE => rst,
      Q => hs1
    );
\r0[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000222A"
    )
        port map (
      I0 => pr,
      I1 => addrb(5),
      I2 => addrb(4),
      I3 => addrb(3),
      I4 => vs1_i_2_n_1,
      O => \r0[2]_i_1_n_1\
    );
\r0_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => '1',
      CLR => rst,
      D => \r0[2]_i_1_n_1\,
      Q => r0(2)
    );
ram: entity work.char_mem
     port map (
      addra(14 downto 8) => doutb(6 downto 0),
      addra(7 downto 0) => addra(7 downto 0),
      clka => video_clk_OBUF_BUFG,
      douta(0) => pr
    );
\vector_x[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addra(0),
      O => \p_0_in__0\(0)
    );
\vector_x[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addra(1),
      I1 => addra(0),
      O => \p_0_in__0\(1)
    );
\vector_x[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => addra(2),
      I1 => addra(0),
      I2 => addra(1),
      O => \p_0_in__0\(2)
    );
\vector_x[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => addra(3),
      I1 => addra(1),
      I2 => addra(0),
      I3 => addra(2),
      O => \p_0_in__0\(3)
    );
\vector_x[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => addrb(0),
      I1 => addra(2),
      I2 => addra(0),
      I3 => addra(1),
      I4 => addra(3),
      O => \p_0_in__0\(4)
    );
\vector_x[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7078"
    )
        port map (
      I0 => addrb(0),
      I1 => \vector_x[7]_i_2_n_1\,
      I2 => addrb(1),
      I3 => sel,
      O => \p_0_in__0\(5)
    );
\vector_x[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F007F80"
    )
        port map (
      I0 => \vector_x[7]_i_2_n_1\,
      I1 => addrb(0),
      I2 => addrb(1),
      I3 => addrb(2),
      I4 => sel,
      O => \p_0_in__0\(6)
    );
\vector_x[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF00007FFF8000"
    )
        port map (
      I0 => addrb(1),
      I1 => addrb(0),
      I2 => \vector_x[7]_i_2_n_1\,
      I3 => addrb(2),
      I4 => addrb(3),
      I5 => sel,
      O => \p_0_in__0\(7)
    );
\vector_x[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addra(3),
      I1 => addra(1),
      I2 => addra(0),
      I3 => addra(2),
      O => \vector_x[7]_i_2_n_1\
    );
\vector_x[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0008F708"
    )
        port map (
      I0 => addrb(3),
      I1 => addrb(2),
      I2 => \vector_x[9]_i_2_n_1\,
      I3 => addrb(4),
      I4 => sel,
      O => \p_0_in__0\(8)
    );
\vector_x[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2522222222222222"
    )
        port map (
      I0 => addrb(5),
      I1 => sel,
      I2 => \vector_x[9]_i_2_n_1\,
      I3 => addrb(2),
      I4 => addrb(3),
      I5 => addrb(4),
      O => \p_0_in__0\(9)
    );
\vector_x[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => addra(3),
      I1 => addra(1),
      I2 => addra(0),
      I3 => addra(2),
      I4 => addrb(0),
      I5 => addrb(1),
      O => \vector_x[9]_i_2_n_1\
    );
\vector_x_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => '1',
      CLR => rst,
      D => \p_0_in__0\(0),
      Q => addra(0)
    );
\vector_x_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => '1',
      CLR => rst,
      D => \p_0_in__0\(1),
      Q => addra(1)
    );
\vector_x_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => '1',
      CLR => rst,
      D => \p_0_in__0\(2),
      Q => addra(2)
    );
\vector_x_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => '1',
      CLR => rst,
      D => \p_0_in__0\(3),
      Q => addra(3)
    );
\vector_x_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => '1',
      CLR => rst,
      D => \p_0_in__0\(4),
      Q => addrb(0)
    );
\vector_x_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => '1',
      CLR => rst,
      D => \p_0_in__0\(5),
      Q => addrb(1)
    );
\vector_x_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => '1',
      CLR => rst,
      D => \p_0_in__0\(6),
      Q => addrb(2)
    );
\vector_x_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => '1',
      CLR => rst,
      D => \p_0_in__0\(7),
      Q => addrb(3)
    );
\vector_x_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => '1',
      CLR => rst,
      D => \p_0_in__0\(8),
      Q => addrb(4)
    );
\vector_x_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => '1',
      CLR => rst,
      D => \p_0_in__0\(9),
      Q => addrb(5)
    );
\vector_y[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addra(4),
      O => vector_y(0)
    );
\vector_y[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addra(5),
      I1 => addra(4),
      O => vector_y(1)
    );
\vector_y[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => addra(6),
      I1 => addra(4),
      I2 => addra(5),
      O => vector_y(2)
    );
\vector_y[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => addra(7),
      I1 => addra(5),
      I2 => addra(4),
      I3 => addra(6),
      O => vector_y(3)
    );
\vector_y[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => addrb(6),
      I1 => addra(6),
      I2 => addra(4),
      I3 => addra(5),
      I4 => addra(7),
      O => vector_y(4)
    );
\vector_y[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => addrb(7),
      I1 => addra(7),
      I2 => addra(5),
      I3 => addra(4),
      I4 => addra(6),
      I5 => addrb(6),
      O => vector_y(5)
    );
\vector_y[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => addrb(8),
      I1 => \vector_y[8]_i_4_n_1\,
      I2 => addrb(7),
      O => vector_y(6)
    );
\vector_y[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => addrb(9),
      I1 => \vector_y[8]_i_4_n_1\,
      I2 => addrb(7),
      I3 => addrb(8),
      O => vector_y(7)
    );
\vector_y[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \vector_x[7]_i_2_n_1\,
      I1 => addrb(5),
      I2 => addrb(4),
      I3 => addrb(0),
      I4 => addrb(3),
      I5 => \vector_y[8]_i_3_n_1\,
      O => sel
    );
\vector_y[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => addrb(10),
      I1 => \vector_y[8]_i_4_n_1\,
      I2 => addrb(9),
      I3 => addrb(8),
      I4 => addrb(7),
      O => vector_y(8)
    );
\vector_y[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => addrb(2),
      I1 => addrb(1),
      O => \vector_y[8]_i_3_n_1\
    );
\vector_y[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => addrb(6),
      I1 => addra(6),
      I2 => addra(4),
      I3 => addra(5),
      I4 => addra(7),
      O => \vector_y[8]_i_4_n_1\
    );
\vector_y_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => sel,
      CLR => rst,
      D => vector_y(0),
      Q => addra(4)
    );
\vector_y_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => sel,
      CLR => rst,
      D => vector_y(1),
      Q => addra(5)
    );
\vector_y_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => sel,
      CLR => rst,
      D => vector_y(2),
      Q => addra(6)
    );
\vector_y_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => sel,
      CLR => rst,
      D => vector_y(3),
      Q => addra(7)
    );
\vector_y_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => sel,
      CLR => rst,
      D => vector_y(4),
      Q => addrb(6)
    );
\vector_y_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => sel,
      CLR => rst,
      D => vector_y(5),
      Q => addrb(7)
    );
\vector_y_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => sel,
      CLR => rst,
      D => vector_y(6),
      Q => addrb(8)
    );
\vector_y_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => sel,
      CLR => rst,
      D => vector_y(7),
      Q => addrb(9)
    );
\vector_y_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => sel,
      CLR => rst,
      D => vector_y(8),
      Q => addrb(10)
    );
video_clk_OBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => \^video_clk_obuf\,
      O => video_clk_OBUF_BUFG
    );
\video_color_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => vs1,
      I1 => hs1,
      I2 => g0(0),
      O => video_color_OBUF(0)
    );
\video_color_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => vs1,
      I1 => hs1,
      I2 => r0(2),
      O => video_color_OBUF(1)
    );
vs1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDFFFFF"
    )
        port map (
      I0 => vs1_i_2_n_1,
      I1 => addra(6),
      I2 => addra(5),
      I3 => addrb(6),
      I4 => addra(7),
      O => vs1_i_1_n_1
    );
vs1_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => addrb(10),
      I1 => addrb(7),
      I2 => addrb(8),
      I3 => addrb(9),
      O => vs1_i_2_n_1
    );
vs1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => video_clk_OBUF_BUFG,
      CE => '1',
      D => vs1_i_1_n_1,
      PRE => rst,
      Q => vs1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Computer is
  port (
    clk_in1 : in STD_LOGIC;
    rst : in STD_LOGIC;
    video_color : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Hs : out STD_LOGIC;
    Vs : out STD_LOGIC;
    video_clk : out STD_LOGIC;
    video_de : out STD_LOGIC;
    MemData1 : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    MemAddr1 : out STD_LOGIC_VECTOR ( 17 downto 0 );
    oe1 : out STD_LOGIC;
    we1 : out STD_LOGIC;
    en1 : out STD_LOGIC;
    MemData2 : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    MemAddr2 : out STD_LOGIC_VECTOR ( 17 downto 0 );
    oe2 : out STD_LOGIC;
    we2 : out STD_LOGIC;
    en2 : out STD_LOGIC;
    rdn : out STD_LOGIC;
    wrn : out STD_LOGIC;
    tsre : in STD_LOGIC;
    tbre : in STD_LOGIC;
    dataready : in STD_LOGIC;
    flash_byte : out STD_LOGIC;
    flash_vpen : out STD_LOGIC;
    flash_ce : out STD_LOGIC;
    flash_oe : out STD_LOGIC;
    flash_we : out STD_LOGIC;
    flash_rp : out STD_LOGIC;
    flash_addr : out STD_LOGIC_VECTOR ( 22 downto 1 );
    flash_data : inout STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Computer : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of Computer : entity is "b35c6920";
  attribute POWER_OPT_BRAM_CDC : integer;
  attribute POWER_OPT_BRAM_CDC of Computer : entity is 1;
  attribute POWER_OPT_BRAM_SR_ADDR : integer;
  attribute POWER_OPT_BRAM_SR_ADDR of Computer : entity is 2;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE : integer;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE of Computer : entity is 0;
end Computer;

architecture STRUCTURE of Computer is
  signal Hs_OBUF : STD_LOGIC;
  signal MemAddr1_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal MemData1_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MemData1_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \MemData1_TRI[0]\ : STD_LOGIC;
  signal MemData2_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal MemData2_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \MemData2_TRI[0]\ : STD_LOGIC;
  signal Vs_OBUF : STD_LOGIC;
  signal clk_in : STD_LOGIC;
  signal clk_in1_IBUF : STD_LOGIC;
  signal clk_in1_IBUF_BUFG : STD_LOGIC;
  signal clk_in_BUFG : STD_LOGIC;
  signal clk_in_i_1_n_1 : STD_LOGIC;
  signal dataready_IBUF : STD_LOGIC;
  signal flash_addr_OBUF : STD_LOGIC_VECTOR ( 17 downto 1 );
  signal flash_data_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \flash_data_TRI[0]\ : STD_LOGIC;
  signal flash_oe_OBUF : STD_LOGIC;
  signal flash_we_OBUF : STD_LOGIC;
  signal local_exe_mem_n_19 : STD_LOGIC;
  signal local_exe_mem_n_20 : STD_LOGIC;
  signal local_exe_mem_n_38 : STD_LOGIC;
  signal local_exe_mem_n_39 : STD_LOGIC;
  signal local_exe_mem_n_40 : STD_LOGIC;
  signal local_exe_mem_n_41 : STD_LOGIC;
  signal local_exe_mem_n_42 : STD_LOGIC;
  signal local_exe_mem_n_43 : STD_LOGIC;
  signal local_exe_mem_n_44 : STD_LOGIC;
  signal local_exe_mem_n_45 : STD_LOGIC;
  signal local_exe_mem_n_46 : STD_LOGIC;
  signal local_exe_n_10 : STD_LOGIC;
  signal local_exe_n_27 : STD_LOGIC;
  signal local_exe_n_44 : STD_LOGIC;
  signal local_exe_n_5 : STD_LOGIC;
  signal local_exe_n_6 : STD_LOGIC;
  signal local_exe_n_7 : STD_LOGIC;
  signal local_exe_n_9 : STD_LOGIC;
  signal local_id_n_2 : STD_LOGIC;
  signal local_id_n_27 : STD_LOGIC;
  signal local_id_n_6 : STD_LOGIC;
  signal local_id_n_7 : STD_LOGIC;
  signal local_mem_n_24 : STD_LOGIC;
  signal local_mem_n_25 : STD_LOGIC;
  signal local_mem_n_28 : STD_LOGIC;
  signal local_mem_n_7 : STD_LOGIC;
  signal n_0_589_BUFG : STD_LOGIC;
  signal n_0_589_BUFG_inst_n_1 : STD_LOGIC;
  signal oe2_OBUF : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rdn_OBUF : STD_LOGIC;
  signal rst_IBUF : STD_LOGIC;
  signal s_exe_alu_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_exe_aluout_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_exe_memData : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_exe_memdata_out : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal s_exe_memoryRead : STD_LOGIC;
  signal s_exe_memoryWrite : STD_LOGIC;
  signal s_exe_memread_out : STD_LOGIC;
  signal s_exe_memwrite_out : STD_LOGIC;
  signal s_exe_registerWrite : STD_LOGIC;
  signal s_exe_regwrite_out : STD_LOGIC;
  signal s_exe_wb_memory_or_alu_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s_forward_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_id_branch : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_id_exe_alu_op : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_id_exe_alu_rx : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_id_exe_alu_ry : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_id_exe_select_goal : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_id_immediate : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal s_id_memoryRead : STD_LOGIC;
  signal s_id_memoryWrite : STD_LOGIC;
  signal s_id_pc : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_id_r_x : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_id_r_y : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_id_r_z : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s_id_registerWrite : STD_LOGIC;
  signal s_id_rx : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_id_ry : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_id_wb_memory_or_alu_out : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s_instruction : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_memout_mem : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_wb_write : STD_LOGIC;
  signal s_wb_writeData : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tbre_IBUF : STD_LOGIC;
  signal tsre_IBUF : STD_LOGIC;
  signal video_clk_OBUF : STD_LOGIC;
  signal video_color_OBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal video_de_OBUF : STD_LOGIC;
  signal wctrl : STD_LOGIC;
  signal we2_OBUF : STD_LOGIC;
  signal wrn_OBUF : STD_LOGIC;
begin
Hs_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Hs_OBUF,
      O => Hs
    );
\MemAddr1_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MemAddr1_OBUF(0),
      O => MemAddr1(0)
    );
\MemAddr1_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MemAddr1_OBUF(10),
      O => MemAddr1(10)
    );
\MemAddr1_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MemAddr1_OBUF(11),
      O => MemAddr1(11)
    );
\MemAddr1_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MemAddr1_OBUF(12),
      O => MemAddr1(12)
    );
\MemAddr1_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MemAddr1_OBUF(13),
      O => MemAddr1(13)
    );
\MemAddr1_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MemAddr1_OBUF(14),
      O => MemAddr1(14)
    );
\MemAddr1_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MemAddr1_OBUF(15),
      O => MemAddr1(15)
    );
\MemAddr1_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => MemAddr1(16)
    );
\MemAddr1_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => MemAddr1(17)
    );
\MemAddr1_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MemAddr1_OBUF(1),
      O => MemAddr1(1)
    );
\MemAddr1_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MemAddr1_OBUF(2),
      O => MemAddr1(2)
    );
\MemAddr1_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MemAddr1_OBUF(3),
      O => MemAddr1(3)
    );
\MemAddr1_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MemAddr1_OBUF(4),
      O => MemAddr1(4)
    );
\MemAddr1_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MemAddr1_OBUF(5),
      O => MemAddr1(5)
    );
\MemAddr1_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MemAddr1_OBUF(6),
      O => MemAddr1(6)
    );
\MemAddr1_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MemAddr1_OBUF(7),
      O => MemAddr1(7)
    );
\MemAddr1_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MemAddr1_OBUF(8),
      O => MemAddr1(8)
    );
\MemAddr1_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => MemAddr1_OBUF(9),
      O => MemAddr1(9)
    );
\MemAddr2_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => MemAddr2(0)
    );
\MemAddr2_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => MemAddr2(10)
    );
\MemAddr2_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => MemAddr2(11)
    );
\MemAddr2_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => MemAddr2(12)
    );
\MemAddr2_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => MemAddr2(13)
    );
\MemAddr2_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => MemAddr2(14)
    );
\MemAddr2_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => MemAddr2(15)
    );
\MemAddr2_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => MemAddr2(16)
    );
\MemAddr2_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => MemAddr2(17)
    );
\MemAddr2_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => MemAddr2(1)
    );
\MemAddr2_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => MemAddr2(2)
    );
\MemAddr2_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => MemAddr2(3)
    );
\MemAddr2_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => MemAddr2(4)
    );
\MemAddr2_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => MemAddr2(5)
    );
\MemAddr2_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => MemAddr2(6)
    );
\MemAddr2_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => MemAddr2(7)
    );
\MemAddr2_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => MemAddr2(8)
    );
\MemAddr2_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => MemAddr2(9)
    );
\MemData1_IOBUF[0]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => MemData1_OBUF(0),
      IO => MemData1(0),
      O => MemData1_IBUF(0),
      T => \MemData1_TRI[0]\
    );
\MemData1_IOBUF[1]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => MemData1_OBUF(1),
      IO => MemData1(1),
      O => MemData1_IBUF(1),
      T => \MemData1_TRI[0]\
    );
\MemData1_IOBUF[2]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => MemData1_OBUF(2),
      IO => MemData1(2),
      O => MemData1_IBUF(2),
      T => \MemData1_TRI[0]\
    );
\MemData1_IOBUF[3]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => MemData1_OBUF(3),
      IO => MemData1(3),
      O => MemData1_IBUF(3),
      T => \MemData1_TRI[0]\
    );
\MemData1_IOBUF[4]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => MemData1_OBUF(4),
      IO => MemData1(4),
      O => MemData1_IBUF(4),
      T => \MemData1_TRI[0]\
    );
\MemData1_IOBUF[5]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => MemData1_OBUF(5),
      IO => MemData1(5),
      O => MemData1_IBUF(5),
      T => \MemData1_TRI[0]\
    );
\MemData1_IOBUF[6]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => MemData1_OBUF(6),
      IO => MemData1(6),
      O => MemData1_IBUF(6),
      T => \MemData1_TRI[0]\
    );
\MemData1_IOBUF[7]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => MemData1_OBUF(7),
      IO => MemData1(7),
      O => MemData1_IBUF(7),
      T => \MemData1_TRI[0]\
    );
\MemData2_IOBUF[0]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => MemData2_OBUF(0),
      IO => MemData2(0),
      O => MemData2_IBUF(0),
      T => \MemData2_TRI[0]\
    );
\MemData2_IOBUF[10]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => MemData2_OBUF(10),
      IO => MemData2(10),
      O => MemData2_IBUF(10),
      T => \MemData2_TRI[0]\
    );
\MemData2_IOBUF[11]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => MemData2_OBUF(11),
      IO => MemData2(11),
      O => MemData2_IBUF(11),
      T => \MemData2_TRI[0]\
    );
\MemData2_IOBUF[12]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => MemData2_OBUF(12),
      IO => MemData2(12),
      O => MemData2_IBUF(12),
      T => \MemData2_TRI[0]\
    );
\MemData2_IOBUF[13]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => MemData2_OBUF(13),
      IO => MemData2(13),
      O => MemData2_IBUF(13),
      T => \MemData2_TRI[0]\
    );
\MemData2_IOBUF[14]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => MemData2_OBUF(14),
      IO => MemData2(14),
      O => MemData2_IBUF(14),
      T => \MemData2_TRI[0]\
    );
\MemData2_IOBUF[15]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => MemData2_OBUF(15),
      IO => MemData2(15),
      O => MemData2_IBUF(15),
      T => \MemData2_TRI[0]\
    );
\MemData2_IOBUF[1]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => MemData2_OBUF(1),
      IO => MemData2(1),
      O => MemData2_IBUF(1),
      T => \MemData2_TRI[0]\
    );
\MemData2_IOBUF[2]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => MemData2_OBUF(2),
      IO => MemData2(2),
      O => MemData2_IBUF(2),
      T => \MemData2_TRI[0]\
    );
\MemData2_IOBUF[3]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => MemData2_OBUF(3),
      IO => MemData2(3),
      O => MemData2_IBUF(3),
      T => \MemData2_TRI[0]\
    );
\MemData2_IOBUF[4]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => MemData2_OBUF(4),
      IO => MemData2(4),
      O => MemData2_IBUF(4),
      T => \MemData2_TRI[0]\
    );
\MemData2_IOBUF[5]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => MemData2_OBUF(5),
      IO => MemData2(5),
      O => MemData2_IBUF(5),
      T => \MemData2_TRI[0]\
    );
\MemData2_IOBUF[6]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => MemData2_OBUF(6),
      IO => MemData2(6),
      O => MemData2_IBUF(6),
      T => \MemData2_TRI[0]\
    );
\MemData2_IOBUF[7]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => MemData2_OBUF(7),
      IO => MemData2(7),
      O => MemData2_IBUF(7),
      T => \MemData2_TRI[0]\
    );
\MemData2_IOBUF[8]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => MemData2_OBUF(8),
      IO => MemData2(8),
      O => MemData2_IBUF(8),
      T => \MemData2_TRI[0]\
    );
\MemData2_IOBUF[9]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => MemData2_OBUF(9),
      IO => MemData2(9),
      O => MemData2_IBUF(9),
      T => \MemData2_TRI[0]\
    );
Vs_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Vs_OBUF,
      O => Vs
    );
clk_in1_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_in1_IBUF,
      O => clk_in1_IBUF_BUFG
    );
clk_in1_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk_in1,
      O => clk_in1_IBUF
    );
clk_in_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_in,
      O => clk_in_BUFG
    );
clk_in_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_in_BUFG,
      O => clk_in_i_1_n_1
    );
clk_in_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in1_IBUF_BUFG,
      CE => '1',
      D => clk_in_i_1_n_1,
      Q => clk_in,
      R => '0'
    );
dataready_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => dataready,
      O => dataready_IBUF
    );
en1_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => en1
    );
en2_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => en2
    );
\flash_addr_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => flash_addr_OBUF(10),
      O => flash_addr(10)
    );
\flash_addr_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => flash_addr_OBUF(11),
      O => flash_addr(11)
    );
\flash_addr_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => flash_addr_OBUF(12),
      O => flash_addr(12)
    );
\flash_addr_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => flash_addr_OBUF(13),
      O => flash_addr(13)
    );
\flash_addr_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => flash_addr_OBUF(14),
      O => flash_addr(14)
    );
\flash_addr_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => flash_addr_OBUF(15),
      O => flash_addr(15)
    );
\flash_addr_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => flash_addr_OBUF(16),
      O => flash_addr(16)
    );
\flash_addr_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => flash_addr_OBUF(17),
      O => flash_addr(17)
    );
\flash_addr_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => flash_addr(18)
    );
\flash_addr_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => flash_addr(19)
    );
\flash_addr_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => flash_addr_OBUF(1),
      O => flash_addr(1)
    );
\flash_addr_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => flash_addr(20)
    );
\flash_addr_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => flash_addr(21)
    );
\flash_addr_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => flash_addr(22)
    );
\flash_addr_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => flash_addr_OBUF(2),
      O => flash_addr(2)
    );
\flash_addr_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => flash_addr_OBUF(3),
      O => flash_addr(3)
    );
\flash_addr_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => flash_addr_OBUF(4),
      O => flash_addr(4)
    );
\flash_addr_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => flash_addr_OBUF(5),
      O => flash_addr(5)
    );
\flash_addr_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => flash_addr_OBUF(6),
      O => flash_addr(6)
    );
\flash_addr_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => flash_addr_OBUF(7),
      O => flash_addr(7)
    );
\flash_addr_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => flash_addr_OBUF(8),
      O => flash_addr(8)
    );
\flash_addr_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => flash_addr_OBUF(9),
      O => flash_addr(9)
    );
flash_byte_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => flash_byte
    );
flash_ce_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => flash_ce
    );
\flash_data_IOBUF[0]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => '1',
      IO => flash_data(0),
      O => flash_data_IBUF(0),
      T => \flash_data_TRI[0]\
    );
\flash_data_IOBUF[10]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => '0',
      IO => flash_data(10),
      O => flash_data_IBUF(10),
      T => \flash_data_TRI[0]\
    );
\flash_data_IOBUF[11]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => '0',
      IO => flash_data(11),
      O => flash_data_IBUF(11),
      T => \flash_data_TRI[0]\
    );
\flash_data_IOBUF[12]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => '0',
      IO => flash_data(12),
      O => flash_data_IBUF(12),
      T => \flash_data_TRI[0]\
    );
\flash_data_IOBUF[13]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => '0',
      IO => flash_data(13),
      O => flash_data_IBUF(13),
      T => \flash_data_TRI[0]\
    );
\flash_data_IOBUF[14]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => '0',
      IO => flash_data(14),
      O => flash_data_IBUF(14),
      T => \flash_data_TRI[0]\
    );
\flash_data_IOBUF[15]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => '0',
      IO => flash_data(15),
      O => flash_data_IBUF(15),
      T => \flash_data_TRI[0]\
    );
\flash_data_IOBUF[15]_inst_i_1\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_BUFG,
      CE => '1',
      D => local_mem_n_28,
      PRE => local_exe_mem_n_19,
      Q => \flash_data_TRI[0]\
    );
\flash_data_IOBUF[1]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => '1',
      IO => flash_data(1),
      O => flash_data_IBUF(1),
      T => \flash_data_TRI[0]\
    );
\flash_data_IOBUF[2]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => '1',
      IO => flash_data(2),
      O => flash_data_IBUF(2),
      T => \flash_data_TRI[0]\
    );
\flash_data_IOBUF[3]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => '1',
      IO => flash_data(3),
      O => flash_data_IBUF(3),
      T => \flash_data_TRI[0]\
    );
\flash_data_IOBUF[4]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => '1',
      IO => flash_data(4),
      O => flash_data_IBUF(4),
      T => \flash_data_TRI[0]\
    );
\flash_data_IOBUF[5]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => '1',
      IO => flash_data(5),
      O => flash_data_IBUF(5),
      T => \flash_data_TRI[0]\
    );
\flash_data_IOBUF[6]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => '1',
      IO => flash_data(6),
      O => flash_data_IBUF(6),
      T => \flash_data_TRI[0]\
    );
\flash_data_IOBUF[7]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => '1',
      IO => flash_data(7),
      O => flash_data_IBUF(7),
      T => \flash_data_TRI[0]\
    );
\flash_data_IOBUF[8]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => '0',
      IO => flash_data(8),
      O => flash_data_IBUF(8),
      T => \flash_data_TRI[0]\
    );
\flash_data_IOBUF[9]_inst\: unisim.vcomponents.IOBUF
     port map (
      I => '0',
      IO => flash_data(9),
      O => flash_data_IBUF(9),
      T => \flash_data_TRI[0]\
    );
flash_oe_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => flash_oe_OBUF,
      O => flash_oe
    );
flash_rp_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => flash_rp
    );
flash_vpen_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => flash_vpen
    );
flash_we_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => flash_we_OBUF,
      O => flash_we
    );
local_exe: entity work.exe
     port map (
      AR(0) => local_exe_n_27,
      D(2 downto 0) => s_instruction(7 downto 5),
      E(0) => p_0_in,
      Q(15 downto 0) => s_forward_data(15 downto 0),
      aluout_in(15 downto 0) => s_exe_alu_out(15 downto 0),
      memoryWrite_reg_0 => local_exe_n_6,
      memoryWrite_reg_1 => local_exe_n_7,
      memread_in => s_exe_memoryRead,
      memtoreg_in(0) => s_exe_wb_memory_or_alu_out(1),
      n_0_589_BUFG => n_0_589_BUFG,
      out_sw_in(15 downto 0) => s_exe_memData(15 downto 0),
      regwrite_in => s_exe_registerWrite,
      rst_IBUF => rst_IBUF,
      \s0_reg[15]\(15 downto 0) => s_id_rx(15 downto 0),
      \s0_reg[15]_0\(15 downto 0) => s_id_ry(15 downto 0),
      \s_alu_mux_ry_reg[1]_0\ => local_exe_n_44,
      \s_alu_op_reg[2]_0\ => local_exe_n_5,
      s_exe_memoryWrite => s_exe_memoryWrite,
      \s_from_pc_reg[0]\ => local_exe_n_9,
      \s_from_pc_reg[0]_0\ => local_exe_n_10,
      s_id_memoryRead => s_id_memoryRead,
      s_id_memoryWrite => s_id_memoryWrite,
      s_id_pc(0) => s_id_pc(0),
      s_id_registerWrite => s_id_registerWrite,
      s_id_wb_memory_or_alu_out(0) => s_id_wb_memory_or_alu_out(1),
      \s_instruction_reg[10]\(10) => s_id_immediate(13),
      \s_instruction_reg[10]\(9 downto 0) => s_id_immediate(9 downto 0),
      \s_instruction_reg[13]\(2 downto 0) => s_id_exe_select_goal(2 downto 0),
      \s_instruction_reg[14]\(10) => local_id_n_6,
      \s_instruction_reg[14]\(9) => local_id_n_7,
      \s_instruction_reg[14]\(8 downto 6) => s_id_r_x(2 downto 0),
      \s_instruction_reg[14]\(5 downto 3) => s_id_r_y(2 downto 0),
      \s_instruction_reg[14]\(2 downto 0) => s_id_r_z(2 downto 0),
      \s_instruction_reg[1]\ => local_id_n_27,
      \s_instruction_reg[2]\(2 downto 0) => s_id_exe_alu_rx(2 downto 0),
      \s_instruction_reg[4]\(1 downto 0) => s_id_exe_alu_ry(1 downto 0),
      \s_instruction_reg[5]\(2 downto 0) => s_id_exe_alu_op(2 downto 0),
      \s_instruction_reg[7]\(2 downto 0) => s_id_branch(2 downto 0),
      \toutput1_reg[6]_P\ => local_mem_n_24,
      \toutput1_reg[8]_P\ => local_mem_n_7
    );
local_exe_mem: entity work.exe_mem
     port map (
      D(15 downto 0) => p_0_in_0(15 downto 0),
      \DataBuf_reg[15]\(15 downto 8) => s_exe_memdata_out(15 downto 8),
      \DataBuf_reg[15]\(7 downto 0) => MemData1_OBUF(7 downto 0),
      \FSM_sequential_state_reg[2]\ => local_mem_n_25,
      MemData1_IBUF(7 downto 0) => MemData1_IBUF(7 downto 0),
      MemData2_IBUF(7 downto 0) => MemData2_IBUF(7 downto 0),
      Q(15 downto 0) => s_exe_aluout_out(15 downto 0),
      dataready_IBUF => dataready_IBUF,
      memread_in => s_exe_memoryRead,
      memread_out => s_exe_memread_out,
      memtoreg_in(0) => s_exe_wb_memory_or_alu_out(1),
      memwrite_in => s_exe_memoryWrite,
      memwrite_out => s_exe_memwrite_out,
      n_0_589_BUFG => n_0_589_BUFG,
      regwrite_in => s_exe_registerWrite,
      regwrite_out => s_exe_regwrite_out,
      rst_IBUF => rst_IBUF,
      \s_alu_mux_ry_reg[1]\(15 downto 0) => s_exe_alu_out(15 downto 0),
      s_memout_mem(15 downto 0) => s_memout_mem(15 downto 0),
      \s_ry_reg[15]\(15 downto 0) => s_exe_memData(15 downto 0),
      \t_memtoreg_out_reg[1]_0\ => local_exe_mem_n_19,
      tbre_IBUF => tbre_IBUF,
      \toutput2_reg[7]\ => local_exe_mem_n_20,
      \toutput2_reg[7]_0\ => local_exe_mem_n_38,
      \toutput2_reg[7]_1\(7) => local_exe_mem_n_39,
      \toutput2_reg[7]_1\(6) => local_exe_mem_n_40,
      \toutput2_reg[7]_1\(5) => local_exe_mem_n_41,
      \toutput2_reg[7]_1\(4) => local_exe_mem_n_42,
      \toutput2_reg[7]_1\(3) => local_exe_mem_n_43,
      \toutput2_reg[7]_1\(2) => local_exe_mem_n_44,
      \toutput2_reg[7]_1\(1) => local_exe_mem_n_45,
      \toutput2_reg[7]_1\(0) => local_exe_mem_n_46,
      tsre_IBUF => tsre_IBUF,
      wea(0) => wctrl
    );
local_forward: entity work.forward
     port map (
      D(15 downto 0) => s_exe_aluout_out(15 downto 0),
      E(0) => local_id_n_2,
      Q(15 downto 0) => s_forward_data(15 downto 0)
    );
local_id: entity work.id
     port map (
      AR(0) => local_exe_n_27,
      D(15 downto 0) => s_instruction(15 downto 0),
      E(0) => p_0_in,
      Q(10) => local_id_n_6,
      Q(9) => local_id_n_7,
      Q(8 downto 6) => s_id_r_x(2 downto 0),
      Q(5 downto 3) => s_id_r_y(2 downto 0),
      Q(2 downto 0) => s_id_r_z(2 downto 0),
      memoryRead_reg => local_exe_n_6,
      n_0_589_BUFG => n_0_589_BUFG,
      regwrite_out => s_exe_regwrite_out,
      rst_IBUF => rst_IBUF,
      \s_alu_mux_rx_reg[2]\(2 downto 0) => s_id_exe_alu_rx(2 downto 0),
      \s_alu_mux_ry_reg[1]\(1 downto 0) => s_id_exe_alu_ry(1 downto 0),
      \s_alu_op_reg[2]\(2 downto 0) => s_id_exe_alu_op(2 downto 0),
      \s_branch_reg[2]\(2 downto 0) => s_id_branch(2 downto 0),
      \s_forward_datay_reg[15]\(0) => local_id_n_2,
      s_id_memoryRead => s_id_memoryRead,
      s_id_memoryWrite => s_id_memoryWrite,
      s_id_pc(0) => s_id_pc(0),
      s_id_registerWrite => s_id_registerWrite,
      s_id_wb_memory_or_alu_out(0) => s_id_wb_memory_or_alu_out(1),
      \s_immediate_reg[0]\ => local_id_n_27,
      \s_immediate_reg[13]\(10) => s_id_immediate(13),
      \s_immediate_reg[13]\(9 downto 0) => s_id_immediate(9 downto 0),
      \s_instruction_reg[14]_0\ => local_exe_n_44,
      \s_instruction_reg[1]_0\ => local_exe_n_5,
      \s_rx_reg[15]\(15 downto 0) => s_id_rx(15 downto 0),
      \s_ry_reg[15]\(15 downto 0) => s_id_ry(15 downto 0),
      \s_select_goal_reg[2]\(2 downto 0) => s_id_exe_select_goal(2 downto 0),
      \t_wbregdata_out_reg[15]\(15 downto 0) => s_wb_writeData(15 downto 0),
      t_wbregwrite_out_reg(0) => s_wb_write
    );
local_mem: entity work.MemoryController
     port map (
      D(15 downto 0) => s_instruction(15 downto 0),
      \DataBuf_reg[7]_0\(7) => local_exe_mem_n_39,
      \DataBuf_reg[7]_0\(6) => local_exe_mem_n_40,
      \DataBuf_reg[7]_0\(5) => local_exe_mem_n_41,
      \DataBuf_reg[7]_0\(4) => local_exe_mem_n_42,
      \DataBuf_reg[7]_0\(3) => local_exe_mem_n_43,
      \DataBuf_reg[7]_0\(2) => local_exe_mem_n_44,
      \DataBuf_reg[7]_0\(1) => local_exe_mem_n_45,
      \DataBuf_reg[7]_0\(0) => local_exe_mem_n_46,
      \MemAddr1[15]\(15 downto 0) => MemAddr1_OBUF(15 downto 0),
      \MemData1_TRI[0]\ => \MemData1_TRI[0]\,
      MemData2_IBUF(15 downto 0) => MemData2_IBUF(15 downto 0),
      \MemData2_TRI[0]\ => \MemData2_TRI[0]\,
      Q(16 downto 0) => flash_addr_OBUF(17 downto 1),
      clk_in_BUFG => clk_in_BUFG,
      \flash_data_IOBUF[15]_inst_i_1\ => local_mem_n_28,
      \flash_data_IOBUF[15]_inst_i_1_0\ => \flash_data_TRI[0]\,
      \flash_data_IOBUF[15]_inst_i_1_1\(15 downto 0) => flash_data_IBUF(15 downto 0),
      flash_oe_OBUF => flash_oe_OBUF,
      flash_we_OBUF => flash_we_OBUF,
      memoryWrite_reg => local_mem_n_24,
      memread_out => s_exe_memread_out,
      memwrite_out => s_exe_memwrite_out,
      n_0_589_BUFG_inst_n_1 => n_0_589_BUFG_inst_n_1,
      oe2_OBUF => oe2_OBUF,
      \r0_reg[2]\ => local_mem_n_25,
      rdn_OBUF => rdn_OBUF,
      rst => local_exe_mem_n_19,
      rst_IBUF => rst_IBUF,
      \s_from_pc_reg[0]\ => local_mem_n_7,
      s_memout_mem(15 downto 0) => s_memout_mem(15 downto 0),
      \s_r_x_reg[0]\ => local_exe_n_7,
      \s_r_y_reg[1]\ => local_exe_n_10,
      \s_r_y_reg[2]\ => local_exe_n_9,
      \t_aluout_out_reg[10]\ => local_exe_mem_n_38,
      \t_aluout_out_reg[10]_0\ => local_exe_mem_n_20,
      \t_aluout_out_reg[15]\(15 downto 0) => s_exe_aluout_out(15 downto 0),
      \t_memdata_out_reg[15]\(15 downto 8) => s_exe_memdata_out(15 downto 8),
      \t_memdata_out_reg[15]\(7 downto 0) => MemData1_OBUF(7 downto 0),
      \toutput2_reg[15]_0\(15 downto 0) => MemData2_OBUF(15 downto 0),
      we2_OBUF => we2_OBUF,
      wrn_OBUF => wrn_OBUF
    );
local_mem_wb: entity work.mem_wb
     port map (
      D(15 downto 0) => p_0_in_0(15 downto 0),
      Q(15 downto 0) => s_wb_writeData(15 downto 0),
      n_0_589_BUFG => n_0_589_BUFG,
      regwrite_out => s_exe_regwrite_out,
      rst => local_exe_mem_n_19,
      \s0_reg[0]\(0) => s_wb_write
    );
n_0_589_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => n_0_589_BUFG_inst_n_1,
      O => n_0_589_BUFG
    );
oe1_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => oe1
    );
oe2_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => oe2_OBUF,
      O => oe2
    );
rdn_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => rdn_OBUF,
      O => rdn
    );
rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst,
      O => rst_IBUF
    );
tbre_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => tbre,
      O => tbre_IBUF
    );
tsre_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => tsre,
      O => tsre_IBUF
    );
vga: entity work.VGA_play
     port map (
      Hs_OBUF => Hs_OBUF,
      Q(10 downto 0) => s_exe_aluout_out(10 downto 0),
      Vs_OBUF => Vs_OBUF,
      clk_in_BUFG => clk_in_BUFG,
      rst => local_exe_mem_n_19,
      rst_IBUF => rst_IBUF,
      \t_memdata_out_reg[7]\(7 downto 0) => MemData1_OBUF(7 downto 0),
      video_clk_OBUF => video_clk_OBUF,
      video_color_OBUF(1 downto 0) => video_color_OBUF(1 downto 0),
      video_de_OBUF => video_de_OBUF,
      wea(0) => wctrl
    );
video_clk_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => video_clk_OBUF,
      O => video_clk
    );
\video_color_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => video_color_OBUF(0),
      O => video_color(0)
    );
\video_color_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => video_color_OBUF(1),
      O => video_color(1)
    );
\video_color_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => video_color_OBUF(0),
      O => video_color(2)
    );
\video_color_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => video_color_OBUF(1),
      O => video_color(3)
    );
\video_color_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => video_color_OBUF(1),
      O => video_color(4)
    );
\video_color_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => video_color_OBUF(1),
      O => video_color(5)
    );
\video_color_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => video_color_OBUF(1),
      O => video_color(6)
    );
\video_color_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => video_color_OBUF(1),
      O => video_color(7)
    );
video_de_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => video_de_OBUF,
      O => video_de
    );
we1_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => we1
    );
we2_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => we2_OBUF,
      O => we2
    );
wrn_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => wrn_OBUF,
      O => wrn
    );
end STRUCTURE;
