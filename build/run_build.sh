#!/usr/bin/sh
# ASSEMBLY/C/UNIT tests build
#--------------------------------------------
# -clean: no incremental compile,
# -debug_all: to use gui after sim, only for VCS
# -msm_build: to use modelsim simulator
# -icv_build: to use icarus verilog simulator
# -build_id: name ref of compiled model
# -sys:
# -ariane: to use Ariane core (RISC-V) - use ariane_setup.sh before build
#--------------------------------------------
# build
sim="ifu_esl_counter"

#suff="msm"
suff=""
build="${sim}${suff}"
#result="${sim}${suff}_res"
#sims -sys=$sim -icv_build -clean -build_id=$build 

#sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_build
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_build -clean 
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_build -clean 
#sims -sys=manycore -x_tiles=3 -y_tiles=3 -icv_build -clean 
#sims -sys=manycore -x_tiles=3 -y_tiles=3 -icv_build -clean -build_id=tiles_3x3 
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_build -clean -build_id=tiles_1x1 
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_build -clean -build_id=tiles_1x1 

#sims -sys=ifu_esl_counter -icv_build -clean -build_id=ifu_esl_counter 
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_build -clean -ariane
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_build -clean -build_id=tiles_1x1 -vcd
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -vlt_build -clean -build_id=tiles_1x1_vlt -vcd -ariane
sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_build -clean -build_id=tiles_1x1 
