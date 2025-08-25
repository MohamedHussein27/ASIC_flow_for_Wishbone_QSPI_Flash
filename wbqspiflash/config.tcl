# Design

# User config
set ::env(DESIGN_NAME) wbqspiflash

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

# Fill this
set ::env(CLOCK_PERIOD) "10.000"
set ::env(CLOCK_PORT) "i_clk"
set ::env(CLOCK_NET) $::env(CLOCK_PORT)

# modified to make the length of pins 2 um
set ::env(FP_IO_HLENGTH) 2
set ::env(FP_IO_VLENGTH) 2

# modified to make The thickness of the vertical and horizontal pins is to be 1x default width 
set ::env(FP_IO_VTHICKNESS_MULT) 1
set ::env(FP_IO_HTHICKNESS_MULT) 1


# modified order for pins &  The length of the pins is 2um
set ::env(FP_IO_PIN_LENGTH) 2
set ::env(FP_PIN_ORDER_CFG) $::env(DESIGN_DIR)/pin_order.cfg

# for pdn to be visible
set ::env(FP_PDN_CORE_RING) 1 
set ::env(FP_PDN_ENABLE_RAILS) 1

# arrange pitch to make stable pdn
set ::env(FP_SIZING) relative
set ::env(FP_PDN_VOFFSET) 0
set ::env(FP_PDN_VPITCH) 40
set ::env(FP_PDN_HOFFSET) 0
set ::env(FP_PDN_HPITCH) 40
set ::env(FP_PDN_AUTO_ADJUST) 1

# placement configs
set ::env(PL_TARGET_DENSITY) 0.55
set ::env(PL_ROUTABILITY_DRIVEN) 1
set ::env(PL_TIME_DRIVEN) 1

# cts configs
set ::env(CLOCK_TREE_SYNTH) 1
set ::env(CTS_TARGET_SKEW) 200
set ::env(CTS_TOLERANCE) 100
set ::env(CTS_SINK_CLUSTERING_SIZE) 25
set ::env(CTS_SINK_CLUSTERING_MAX_DIAMETER) 50

# lower utility
set ::env(FP_CORE_UTIL) 30

set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}
