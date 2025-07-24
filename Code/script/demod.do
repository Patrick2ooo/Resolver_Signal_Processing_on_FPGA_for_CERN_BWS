#!/usr/bin/tclsh

# Main proc at the end #

#------------------------------------------------------------------------------
proc vhdl_compil {} {
    global Path_VHDL
    global Path_TB
    global Path_IP
    global QUARTUS_ROOTDIR
    global TOP_LEVEL_NAME
    
    puts "\ncompilation :"

    vcom -2008 $Path_IP/divide/division.vhd
    vcom -2008 $Path_VHDL/cic/cic_pkg.vhd
    vcom -2008 $Path_VHDL/cic/integrator.vhd
    vcom -2008 $Path_VHDL/cic/comb.vhd
    vcom -2008 $Path_VHDL/cic/cic_decimator.vhd
    vcom -2008 $Path_VHDL/quadrature_demod.vhd
    vlog $Path_TB/cic/comb_ref.sv
    vlog $Path_TB/cic/integrator_ref.sv
    vlog $Path_TB/cic/cic_decimator_ref.sv
    vlog $Path_TB/sine_wave_generator.sv
    vlog $Path_TB/RVDT_simulator.sv
    vlog $Path_TB/demod.sv
    vlog $Path_TB/quadrature_demod_tb.sv
}

proc do_all {TESTCASE ANGLE_DEG_SIM COMPILE_IP} {
    global TOP_LEVEL_NAME
    global USER_DEFINED_VERILOG_COMPILE_OPTIONS
    global USER_DEFINED_COMPILE_OPTIONS
    global USER_DEFINED_ELAB_OPTIONS
    
    if {$COMPILE_IP == 1} {
        puts "Compiling IP cores..."
        set USER_DEFINED_VERILOG_COMPILE_OPTIONS ""
        set USER_DEFINED_COMPILE_OPTIONS ""
        
        source ../processing_unit/simulation/mentor/mentor/msim_setup.tcl
        dev_com
        com
    }
    vhdl_compil
    sim_start $TESTCASE $ANGLE_DEG_SIM
}

#------------------------------------------------------------------------------
proc sim_start {TESTCASE ANGLE_DEG_SIM} {
    global TOP_LEVEL_NAME
    global USER_DEFINED_ELAB_OPTIONS

    set TOP_LEVEL_NAME quadrature_tb
    set ELAB_OPTIONS ""
    set USER_DEFINED_ELAB_OPTIONS "-voptargs=\"+acc +access+r\" -GTESTCASE=$TESTCASE -GANGLE_DEG_SIM=$ANGLE_DEG_SIM"
    elab;
    if {[file exists wave.do] == 0} {
        add wave -position insertpoint sim:/quadrature_tb/clk
        add wave -position insertpoint -radix decimal sim:/quadrature_tb/s1_in
        add wave -position insertpoint -radix decimal sim:/quadrature_tb/s1_out
        add wave -position insertpoint -radix decimal sim:/quadrature_tb/s1_out_ref


        radix signal sim:/quadrature_tb/s1_in decimal
        radix signal sim:/quadrature_tb/s1_out decimal
        radix signal sim:/quadrature_tb/s1_out_ref decimal
    } else {
	do wave.do
    }
    run -all
    wave zoom full
    wave refresh
}

## MAIN #######################################################################

# Compile folder ----------------------------------------------------
if {[file exists work] == 0} {
    vlib work
}

puts -nonewline "  Path_VHDL => "
set Path_VHDL     "../src"
set Path_TB       "../src_tb"
set Path_IP       "../ip"
set QUARTUS_ROOTDIR "/home/patrick/intelFPGA/23.1std/quartus"
set TOP_LEVEL_NAME   quadrature_tb

global Path_VHDL
global Path_TB
global Path_IP
global QUARTUS_ROOTDIR
global TOP_LEVEL_NAME

set USER_DEFINED_VERILOG_COMPILE_OPTIONS ""
set USER_DEFINED_COMPILE_OPTIONS ""

source ../processing_unit/simulation/mentor/mentor/msim_setup.tcl
#dev_com;
#com;

# start of sequence -------------------------------------------------
if {$argc > 0} {
    if {[string compare $1 "all"] == 0} {
        puts "All simulation"
        puts "Clean sim"
        do_all 0 $2 $3
        quit -sim
        puts "Noisy sim"
        do_all 1 $2 $3
        quit -sim
    } elseif {[string compare $1 "clean"] == 0} {
	    puts "Clean sim"
        do_all 0 $2 $3
    } elseif {[string compare $1 "noisy"] == 0} {
	    puts "Noisy sim"
	    do_all 1 $2 $3
    } else {
        puts "Command is: vsim -do "do ../scripts/demod.do all/clean/noisy <angle in degree> <compile the ip (1 = compile, 0 = don't compile)""
        quit -sim
    }
} else {
    puts "Default values"
    puts "Clean sim"
    do_all 0 90 $3
}