#!/usr/bin/sh
# ASSEMBLY/C/UNIT tests build
#--------------------------------------------
# -clean: no incremental compile,
# -debug_all: to use gui after sim
# -msm_build: to use modelsim simulator
# -icv_build: to use icarus verilog simulator
# -build_id: name ref of compiled model
# -sys:
#--------------------------------------------
# build
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_build
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_build -clean #no incremental compile
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_build -clean -debug_all #no incremental compile,to use gui after sim
#sims -sys=manycore -x_tiles=3 -y_tiles=3 -icv_build -clean -debug_all #no incremental compile,to use gui after sim
#sims -sys=manycore -x_tiles=3 -y_tiles=3 -icv_build -clean -debug_all -build_id=tiles_3x3 #no incremental compile,to use gui after sim
sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_build -clean -debug_all -build_id=tiles_1x1 #no incremental compile,to use gui after sim

