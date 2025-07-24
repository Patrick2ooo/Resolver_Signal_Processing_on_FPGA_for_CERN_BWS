#!/usr/bin/tclsh

# Main proc at the end #

puts -nonewline "  Path_VHDL => "
set Path_VHDL     "../src"
set Path_TB       "../src_tb"
set Path_IP       "../ip"
set QUARTUS_ROOTDIR "/home/patrick/intelFPGA/23.1std/quartus"
set TOP_LEVEL_NAME   error_tb

global Path_VHDL
global Path_TB
global Path_IP
global QUARTUS_ROOTDIR
global TOP_LEVEL_NAME

source ../rdc_proj/simulation/mentor/mentor/msim_setup.tcl

#------------------------------------------------------------------------------
proc vhdl_compil {} {
    global Path_VHDL
    global Path_TB
    global Path_IP
    global QUARTUS_ROOTDIR
    global TOP_LEVEL_NAME
    
    puts "\ncompilation :"

    vcom -2008 $Path_IP/divide/division.vhd
    vcom -2008 $Path_VHDL/error.vhd
    vcom -2008 $Path_VHDL/cic/cic_pkg.vhd
    vcom -2008 $Path_VHDL/cic/integrator.vhd
    vcom -2008 $Path_VHDL/cic/comb.vhd
    vcom -2008 $Path_VHDL/cic/cic_decimator.vhd
    vcom -2008 $Path_VHDL/quadrature_demod.vhd
    vcom -2008 $Path_VHDL/rdc_top.vhd
    vlog $Path_TB/error_tb.sv
}

proc do_all {} {
    vhdl_compil
    sim_start
}

#------------------------------------------------------------------------------
proc sim_start {} {
    global TOP_LEVEL_NAME
    global USER_DEFINED_ELAB_OPTIONS

    set TOP_LEVEL_NAME error_tb
    set ELAB_OPTIONS ""
    set USER_DEFINED_ELAB_OPTIONS "-voptargs=\"+acc +access+r\""
    elab;
    if {[file exists wave.do] == 0} {
        add wave -position insertpoint -radix decimal sim:/error_tb/sin_signal
        add wave -position insertpoint -radix decimal sim:/error_tb/cos_signal
        add wave -position insertpoint -radix decimal sim:/error_tb/test_case
        add wave -position insertpoint sim:/error_tb/error_out
        add wave -position insertpoint sim:/error_tb/dut/error_inst/err_clipped
        add wave -position insertpoint sim:/error_tb/dut/error_inst/err_los
        add wave -position insertpoint sim:/error_tb/dut/error_inst/err_overrange
        add wave -position insertpoint sim:/error_tb/dut/error_inst/err_mismatch

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

# start of sequence -------------------------------------------------
if {$argc > 1} {
    puts "Command is: vsim -do ../scripts/error.do <compile_IP>"
    quit -sim

} else {
    if {$1 == 1} {
        puts "Compiling IP cores..."     
        dev_com
        com
    }
    puts "Error sim"
    do_all
}