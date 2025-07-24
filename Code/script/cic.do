#!/usr/bin/tclsh

# Main proc at the end #

#------------------------------------------------------------------------------
proc vhdl_compil {} {
    global Path_VHDL
    global Path_TB
    global Path_IP
    
    puts "\ncompilation :"

    vcom -2008 $Path_IP/divide/division.vhd
    vcom -2008 $Path_VHDL/cic/cic_pkg.vhd
    vcom -2008 $Path_VHDL/cic/integrator.vhd
    vcom -2008 $Path_VHDL/cic/comb.vhd
    vcom -2008 $Path_VHDL/cic/cic_decimator.vhd
    vlog $Path_TB/sine_wave_generator.sv
    vlog $Path_TB/cic/comb_ref.sv
    vlog $Path_TB/cic/integrator_ref.sv
    vlog $Path_TB/cic/cic_decimator_ref.sv
    vlog $Path_TB/cic/cic_tb.sv
}

proc do_all {TESTCASE} {
    vhdl_compil
    sim_start $TESTCASE
}

#------------------------------------------------------------------------------
proc sim_start {TESTCASE} {

    vsim -voptargs="+acc" -t 1ns -GTESTCASE=$TESTCASE cic_tb
    if {[file exists wave.do] == 0} {
	    add wave -position insertpoint sim:/cic_tb/clk
        add wave -position insertpoint -radix decimal sim:/cic_tb/reference/Bmax
        add wave -position insertpoint -radix decimal sim:/cic_tb/dut/Bmax
        add wave -position insertpoint -radix decimal sim:/cic_tb/reference/Gain
        add wave -position insertpoint -radix decimal sim:/cic_tb/dut/gain_s
        add wave -position insertpoint -radix decimal sim:/cic_tb/x_i
        add wave -position insertpoint -radix decimal sim:/cic_tb/y_o 
        add wave -position insertpoint -radix decimal sim:/cic_tb/ref_out_signal
        
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

global Path_VHDL
global Path_TB
global Path_IP

# start of sequence -------------------------------------------------
if {$argc > 0} {
    if {[string compare $1 "all"] == 0} {
        puts "All simulation"
        puts "Clean sim"
        do_all 0
        quit -sim
        puts "Noisy sim"
        do_all 1
        quit -sim
    } elseif {[string compare $1 "clean"] == 0} {
	    puts "Clean sim"
        do_all 0
    } elseif {[string compare $1 "noisy"] == 0} {
	    puts "Noisy sim"
	    do_all 1
    } else {
        puts "Clean sim"
        do_all 0
    }
} else {
    puts "Default values"
    puts "Clean sim"
    do_all 0
}