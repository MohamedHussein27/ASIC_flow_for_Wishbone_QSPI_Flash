# SCL Configs
set ::env(CLOCK_PERIOD) "6.452"
set ::env(FP_CORE_UTIL) 43
set ::env(PL_TARGET_DENSITY) [ expr ($::env(FP_CORE_UTIL)+5) / 100.0 ]
#set ::env(PL_TARGET_DENSITY) 0.50

# Synth defaults
set ::env(SYNTH_BIN) yosys
set ::env(SYNTH_SCRIPT) $::env(SCRIPTS_DIR)/yosys/synth.tcl
set ::env(SYNTH_NO_FLAT) 0
set ::env(SYNTH_CLOCK_UNCERTAINITY) 0.10
set ::env(SYNTH_CLOCK_TRANSITION) 0.10
set ::env(SYNTH_TIMING_DERATE) 0.00
set ::env(SYNTH_CAP_LOAD) 5
set ::env(SYNTH_SHARE_RESOURCES) 1
set ::env(SYNTH_BUFFERING) 1
set ::env(SYNTH_SIZING) 1
set ::env(SYNTH_MAX_FANOUT) 30
set ::env(SYNTH_STRATEGY) "AREA 3"
set ::env(SYNTH_ADDER_TYPE) "YOSYS"
set ::env(CLOCK_BUFFER_FANOUT) 16
set ::env(SYNTH_READ_BLACKBOX_LIB) 0
set ::env(SYNTH_TOP_LEVEL) 0
set ::env(SYNTH_FLAT_TOP) 0
set ::env(IO_PCT) 0.2

# floorplan
set ::env(FP_SIZING) relative
set ::env(FP_PDN_VOFFSET) 0
set ::env(FP_PDN_VPITCH) 40
set ::env(FP_PDN_HOFFSET) 0
set ::env(FP_PDN_HPITCH) 40
set ::env(FP_PDN_AUTO_ADJUST) 1
#set ::env(DIE_AREA) "0.0 0.0 210.0 210.0"


# placement (all other values are set to default)
set ::env(PL_TARGET_DENSITY) 0.46
set ::env(PL_ROUTABILITY_DRIVEN) 1
set ::env(PL_TIME_DRIVEN) 1

# cts (all other values are set to default)
set ::env(CLOCK_TREE_SYNTH) 1
set ::env(CTS_TARGET_SKEW) 200
set ::env(CTS_TOLERANCE) 100
set ::env(CTS_SINK_CLUSTERING_SIZE) 25
set ::env(CTS_SINK_CLUSTERING_MAX_DIAMETER) 50

# Routing
set ::env(DRT_OPT_ITERS) 64
