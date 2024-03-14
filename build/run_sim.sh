#!/usr/bin/sh
# ASSEMBLY/C/UNIT tests build
#--------------------------------------------
# -clean: no incremental compile,
# -debug_all: to use gui after sim, only for VCS (only for build)
# -msm_build: to use modelsim simulator
# -icv_build: to use icarus verilog simulator
# -build_id: name ref of compiled model
# -build_all: together with -gui generate output waveforms for...
# -sys:
# -log_all: to generate output wlf file for modelsim
# -sim_run_args=+vcd: to generate vcd output for icarus verilog (and modelsim?)
#--------------------------------------------

#export LD_LIBRARY_PATH=/home/makksi/etronic/openpiton/piton/tools/src/goldfinger/lib
#export LD_LIBRARY_PATH=/usr/lib/i386-linux-gnu:/home/makksi/etronic/openpiton/piton/tools/src/goldfinger/lib

# simulations tests

# ASSEMBLY TESTS (under piton/verif/diag/assembly/...)
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -msm_run -gui princeton-test-test.s -build_id=tiles_msm_1x1 
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -msm_run -gui princeton-test-test.s -build_id=tiles_msm_1x1 
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -msm_run -gui -log_all uart-hello-world.s -build_id=tiles_msm_1x1_ariane -ariane -sim_run_args=+vcd

# UNIT TESTS (under piton/verif/env/.../test_cases)
#sims -sys=ifu_esl_counter -msm_run -gui -build_id=ifu_esl_counter_msm -sim_run_args=+test_case=test_step_src 
#sims -sys=test_infrstrct  -msm_run -gui -build_id=test_infrstrct_msm -sim_run_args=+test_case=test



#VERILATOR
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -vlt_run uart-hello-world.s -build_id=tiles_1x1_vlt
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -vlt_run hello_world.c -build_id=tiles_1x1_vlt_ariane -rtl_timeout=1000000 -ariane

#MODELSIM
sims -sys=manycore -x_tiles=1 -y_tiles=1 -msm_run -gui -log_all hello_world.c -build_id=tiles_1x1_msm_ariane -ariane -sim_run_args=+vcd
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -msm_run -gui -log_all uart-hello-world.s -build_id=tiles_1x1_msm -suppress 14408
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -msm_run -gui -log_all uart-hello-world.s -build_id=tiles_1x1_msm

#ICARUS (no Ariane)
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_run princeton-test-test.s -build_id=tiles_1x1_icv -sim_run_args=+vcd
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_run uart-hello-world.s -build_id=tiles_1x1_icv 
#sims -sys=manycore -x_tiles=1 -y_tiles=1 -icv_run uart-hello-world.s -build_id=tiles_1x1_icv -sim_run_args=+vcd

