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

cd ../build
#export LD_LIBRARY_PATH=/home/makksi/etronic/openpiton/piton/tools/src/goldfinger/lib
#export LD_LIBRARY_PATH=/usr/lib/i386-linux-gnu:/home/makksi/etronic/openpiton/piton/tools/src/goldfinger/lib

# simulations tests

# ASSEMBLY TESTS (under piton/verif/diag/assembly/...)
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_run -gui princeton-test-test.s #-gui requires -build_all 
#sims -sys=manycore -x_tiles=3 -y_tiles=3 -icv_run -gui princeton-test-test.s -build_id=tiles_3x3 
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -msm_run -gui princeton-test-test.s -build_id=tiles_msm_1x1 
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -msm_run -gui princeton-test-test.s -build_id=tiles_msm_1x1 
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -msm_run -gui uart-hello-world.s -build_id=tiles_msm_1x1 
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_run princeton-test-test.s
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_run factorial.s
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_run -build_id=mymodel diag.s

# UNIT TESTS (under piton/verif/env/.../test_cases)
#sims -sys=ifu_esl_counter -msm_run -gui -build_id=ifu_esl_counter_msm -sim_run_args=+test_case=test_step_src 
sims -sys=test_infrstrct  -msm_run -gui -build_id=test_infrstrct_msm -sim_run_args=+test_case=test
