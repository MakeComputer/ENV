-makelib ies/xil_defaultlib -sv \
  "E:/Vivado/Vivado/2017.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies/xpm \
  "E:/Vivado/Vivado/2017.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/blk_mem_gen_v8_3_6 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../project_fz.srcs/sources_1/ip/fontRom/sim/fontRom.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

