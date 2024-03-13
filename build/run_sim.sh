#!/usr/bin/sh
# ASSEMBLY/C/UNIT tests build
#--------------------------------------------
# -clean: no incremental compile,
# -debug_all: to use gui after sim,only for VCS (only for build)
# -msm_build: to use modelsim simulator
# -icv_build: to use icarus verilog simulator
# -build_id: name ref of compiled model
# -sys:
# -sim_run_args=+vcd:enable vcd dump for icarus simulations
#--------------------------------------------

# simulations tests
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_run -gui princeton-test-test.s #-gui requires -build_all 
#sims -sys=manycore -x_tiles=3 -y_tiles=3 -icv_run -gui princeton-test-test.s -build_id=tiles_3x3 #-gui requires -build_all 
#sims -sys=manycore -x_tiles=3 -y_tiles=3 -icv_run -gui uart-hello-world.s -build_id=tiles_3x3 #-gui requires -build_all 
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_run uart-hello-world.s -build_id=tiles_1x1 -vcdfile=/test.vcd -vcd 
sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_run uart-hello-world.s -build_id=tiles_1x1 -sim_run_args=+vcd
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_run princeton-test-test.s
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_run factorial.s
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_run -build_id=mymodel diag.s
#sims -sys=ifu_esl_counter -icv_run -build_id=ifu_esl_counter -sim_run_args=+test_case=test_step_src

