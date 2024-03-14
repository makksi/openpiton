#!/usr/bin/bash

# ASSEMBLY/C/UNIT tests build
#--------------------------------------------
# -clean: no incremental compile,
# -debug_all: to use gui after sim,only for VCS
# -msm_build: to use modelsim simulator
# -icv_build: to use icarus verilog simulator
# -build_id: name ref of compiled model
# -sys: 
#--------------------------------------------
sim="ifu_esl_counter"

suff="_msm"
build="${sim}${suff}"
#result="${sim}${suff}_res"
#sims -sys=$sim -msm_build -clean -debug_all -build_id=$build 


#VERILATOR
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -vlt_build -clean -build_id=tiles_1x1_vlt -vlt_build_args=--trace -vlt_build_args="-CFLAGS -DVERILATOR_VCD"
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -vlt_build -clean -build_id=tiles_1x1_vlt_ariane -vlt_build_args=--trace -vlt_build_args="-CFLAGS -DVERILATOR_VCD" -ariane

#MODELSIM
#sims -sys=test_infrstrct -msm_build -clean -debug_all -build_id=test_infrstrct_msm 
#sims -sys=ifu_esl_counter -msm_build -clean -debug_all -build_id=ifu_esl_counter_msm 
#sims -sys=dmbr -msm_build -clean -debug_all -build_id=dmbr_msm
#sims -sys=ifu_esl -msm_build -clean -debug_all -build_id=ifu_esl_msm
#sims -sys=memctrl_test -msm_build -clean -debug_all -build_id=memctrl_msm # ERROR
#sims -sys=jtag_testbench -msm_build -clean -debug_all -build_id=jtag_testbench_msm # ERROR
#sims -sys=sdctrl_test -msm_build -clean -debug_all -build_id=sdctrl_msm # ERROR
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -msm_build -clean -build_id=tiles_1x1_msm
sims -sys=manycore -x_tiles=1 -y_tiles=1 -msm_build -clean -build_id=tiles_1x1_msm_ariane -ariane

#ICARUS (No-ariane - vcd switch generation only in sim)
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_build -clean -build_id=tiles_1x1_icv_ariane -ariane 
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_build -clean -build_id=tiles_1x1_icv
#sims -sys=manycore -x_tiles=3 -y_tiles=3 -icv_build -clean -build_id=tiles_3x3_icv
